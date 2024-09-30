#include <string.h> // memcpy
#include "global.h"
#include "trig.h"
#include "malloc_vram.h"
#include "module_unclear.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"
#include "constants/songs.h"

typedef struct {
    /* 0x00 */ MapEntity *me;
    /* 0x04 */ u16 regionX;
    /* 0x06 */ u16 regionY;
    /* 0x08 */ u8 spriteX;
    /* 0x09 */ u8 id;
    /* 0x0A */ s16 worldX;
    /* 0x0C */ s16 worldY;
    /* 0x10 */ Player *ps[NUM_SINGLE_PLAYER_CHARS];
    /* 0x18 */ Sprite s;
} AirBubbles; /* 0x40 */

typedef struct {
    /* 0x00 */ s32 qWorldX;
    /* 0x04 */ s32 qWorldY;
    /* 0x08 */ u8 unk8;
    /* 0x0C */ Player *ps[NUM_SINGLE_PLAYER_CHARS];
    /* 0x14 */ Sprite s;
} BigAirBubble; /* 0x3C */

void Task_AirBubbles(void);
void sub_8043A00(void);
void CreateBigAirBubble(s16 worldX, s16 worldY, u8 variant);
void Task_BigAirBubble(void);
void TaskDestructor_AirBubbles(struct Task *);
void sub_8043D98(void);
void TaskDestructor_BigAirBubble(struct Task *);

void CreateEntity_AirBubbles(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_AirBubbles, sizeof(AirBubbles), 0x2100, 0, TaskDestructor_AirBubbles);
    AirBubbles *bubbles = TASK_DATA(t);
    Sprite *s;

    bubbles->regionX = regionX;
    bubbles->regionY = regionY;
    bubbles->me = me;
    bubbles->spriteX = me->x;
    bubbles->id = id;
    bubbles->worldX = TO_WORLD_POS(me->x, regionX);
    bubbles->worldY = TO_WORLD_POS(me->y, regionY);
    bubbles->ps[0] = &gPlayers[gStageData.charId];
    bubbles->ps[1] = &gPlayers[bubbles->ps[0]->charFlags.partnerIndex];

    s = &bubbles->s;
    s->tiles = ALLOC_TILES_VARIANT(ANIM_AIR_BUBBLES, 1);
    s->oamFlags = SPRITE_OAM_ORDER(12);
    s->anim = ANIM_AIR_BUBBLES;
    s->variant = 1;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->x = 0;
    s->y = 0;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
    UpdateSpriteAnimation(s);

    SET_MAP_ENTITY_INITIALIZED(me);
}

void Task_AirBubbles(void)
{
    bool32 sb = FALSE;
    AirBubbles *bubbles = TASK_DATA(gCurTask);
    MapEntity *me = bubbles->me;
    s16 worldX, worldY;
    u8 i;

    worldX = bubbles->worldX;
    worldY = bubbles->worldY;

    if (!sub_802C140(worldX, worldY, worldX - gCamera.x, worldY - gCamera.y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, bubbles->spriteX);
        TaskDestroy(gCurTask);
        return;
    }

    for (i = 0; i < (s32)ARRAY_COUNT(bubbles->ps); i++) {
        Player *p = bubbles->ps[i];
        s16 playerX;

        playerX = I(p->qWorldX);

        if ((playerX - 40 < worldX) && (playerX + 40 > worldX)) {
            sb = TRUE;
        }
    }

    if (((gStageData.timer % 256u) == 0) && sb) {
        CreateBigAirBubble(worldX, worldY, 2);
    } else if ((gStageData.timer % 128u) == 0) {
        CreateBigAirBubble(worldX, worldY, 1);
    }

    sub_8043A00();
}

// (90.22%) https://decomp.me/scratch/i6oLk
NONMATCH("asm/non_matching/game/interactables/air_bubbles__sub_8043A00.inc", void sub_8043A00(void))
{
    AirBubbles *bubbles = TASK_DATA(gCurTask);
    Sprite *s = &bubbles->s;
    u16 timer7;
    u16 timer21;
    s16 screenX, screenY;
    u16 i;
    u16 j;
    u16 k;

    screenX = bubbles->worldX - gCamera.x;
    screenY = bubbles->worldY - gCamera.y;

    timer7 = gStageData.timer * 7;
    timer7 %= 1024u;

    timer21 = gStageData.timer * 21;
    timer21 %= 1024u;

    UpdateSpriteAnimation(s);

    for (k = 0, j = 0, i = 0; i < 8; i++, j += 0x80, k += 0x138) {
        s32 sx, sy;

        sx = (SIN((timer7 + j) % SIN_PERIOD));
        s->x = screenX + (sx >> 11);
        sy = (COS((timer21 + k) % SIN_PERIOD) * 5);
        s->y = screenY + (s16)(sy >> 14);
        DisplaySprite(s);
    }
}
END_NONMATCH

void CreateBigAirBubble(s16 worldX, s16 worldY, u8 variant)
{
    struct Task *t = TaskCreate(Task_BigAirBubble, sizeof(BigAirBubble), 0x2100, 0, TaskDestructor_BigAirBubble);
    BigAirBubble *bubble = TASK_DATA(t);
    Sprite *s;
    void *tiles;

    bubble->qWorldX = Q(worldX);
    bubble->qWorldY = Q(worldY);

    bubble->ps[0] = &gPlayers[gStageData.charId];
    bubble->ps[1] = &gPlayers[bubble->ps[0]->charFlags.partnerIndex];

    bubble->unk8 = 0;

    tiles = ALLOC_TILES(ANIM_AIR_BUBBLES);
    s = &bubble->s;
    s->tiles = tiles;
    s->oamFlags = SPRITE_OAM_ORDER(12);
    s->anim = ANIM_AIR_BUBBLES;
    s->variant = variant;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->x = 0;
    s->y = 0;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
    UpdateSpriteAnimation(s);
}

// (95.27%) https://decomp.me/scratch/h2YEn
NONMATCH("asm/non_matching/game/interactables/air_bubbles__Task_BigAirBubble.inc", void Task_BigAirBubble(void))
{
    BigAirBubble *bubble = TASK_DATA(gCurTask);
    Sprite *s = &bubble->s;
    u8 r8 = 0; // TODO: rename to 'variant'
    Player *p;
    u8 *ptr;
    s16 worldX, worldY;

    worldX = I(bubble->qWorldX);
    worldY = I(bubble->qWorldY);

    if (s->variant != 1) {
        if (!sub_8004E20(worldX, worldY - 8, NULL)) {
            TaskDestroy(gCurTask);
            return;
        }
        p = bubble->ps[0];

        {
            s8 sp0C[4] = { -p->unk24, -p->unk25, +p->unk24, +p->unk25 };

            if (!sub_802C080(p) && (p->moveState & MOVESTATE_IN_AIR)) {
                if (sub_8020A58(s, 0, worldX, worldY, &sp0C, p, r8)) {
                    r8 = 1;
                    sub_8016D04(p);
                }
            }
        }
        // _08043C82

        if (r8 == 0) {
            if (bubble->unk8 < 5) {
                bubble->unk8++;

                if (bubble->unk8 == 5) {
                    s->variant = r8;
                    s->prevVariant = -1;
                }
            }
            // _08043CA2

            if (gStageData.unk4 != 4) {
                // _08043CA2+0x8
                s8 timeVal = (gStageData.timer * 3);
                s32 qWorldY = bubble->qWorldY - Q(0.6875);
                bubble->qWorldY = qWorldY - timeVal;

                // goto _08043D14_sine
                bubble->qWorldX += SIN_24_8((gStageData.timer * 27) % SIN_PERIOD);
            }
        } else {
            TaskDestroy(gCurTask);
            return;
        }
    } else {
        // _08043CD4

        if (!sub_8004E20(worldX, worldY, NULL)) {
            TaskDestroy(gCurTask);
            return;
        }
        // _08043CF0

        if (gStageData.unk4 != 4) {
            // _08043CA2+0x8
            s8 timeVal = (gStageData.timer * 7);
            s32 qWorldY = bubble->qWorldY - Q(0.6875);
            bubble->qWorldY = qWorldY - timeVal;

            // goto _08043D14_sine
            bubble->qWorldX += SIN_24_8((gStageData.timer * 57) % SIN_PERIOD);
        }
    }
    // _08043D2A
    worldX = I(bubble->qWorldX);
    worldY = I(bubble->qWorldY);
    if (!sub_802C140(worldX, worldY, worldX - gCamera.x, worldY - gCamera.y)) {
        TaskDestroy(gCurTask);
        return;
    }

    sub_8043D98();
}
END_NONMATCH

void TaskDestructor_AirBubbles(struct Task *t)
{
    AirBubbles *bubbles = TASK_DATA(t);
    VramFree(bubbles->s.tiles);
}

void sub_8043D98()
{
    BigAirBubble *bubble = TASK_DATA(gCurTask);
    Sprite *s = &bubble->s;

    s->x = I(bubble->qWorldX) - gCamera.x;
    s->y = I(bubble->qWorldY) - gCamera.y;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void TaskDestructor_BigAirBubble(struct Task *t)
{
    BigAirBubble *bubble = TASK_DATA(t);
    VramFree(bubble->s.tiles);
}
