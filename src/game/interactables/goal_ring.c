#include "global.h"
#include "task.h"
#include "malloc_vram.h"
#include "module_unclear.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/player_callbacks.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"
#include "constants/songs.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s[2];
    /* 0x5C */ s16 unk5C;
} GoalRing; /* 0x60 */

void Task_GoalRing(void);
void TaskDestructor_GoalRing(struct Task *);
void sub_80340B4(Sprite *);
void sub_803414C(void);
void sub_803421C(void);
void sub_8034250(void);

void CreateEntity_GoalRing(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    if (gStageData.unk4 == 3) {
        struct Task *t = TaskCreate(Task_GoalRing, sizeof(GoalRing), 0x2100, 0, TaskDestructor_GoalRing);
        GoalRing *ring = TASK_DATA(t);
        Sprite *s = &ring->s[0];
        s16 i;

        ring->base.regionX = regionX;
        ring->base.regionY = regionY;
        ring->base.me = me;
        ring->base.spriteX = me->x;
        ring->base.id = id;

        for (i = 0; i < (s32)ARRAY_COUNT(ring->s); i++, s++) {
            // NOTE: Technically this is incorrect, since Sprite
            //       coordinates are usually in screen-space.
            s->x = TO_WORLD_POS(me->x, regionX);
            s->y = TO_WORLD_POS(me->y, regionY);
        }

        SET_MAP_ENTITY_INITIALIZED(me);

        sub_80340B4(ring->s);
    }
}

void Task_GoalRing(void)
{
    GoalRing *ring = TASK_DATA(gCurTask);
    Sprite *s = &ring->s[0];
    MapEntity *me = ring->base.me;
    s16 worldX, worldY;
    Player *p1, *p2;

    worldX = TO_WORLD_POS(ring->base.spriteX, ring->base.regionX);
    worldY = TO_WORLD_POS(me->y, ring->base.regionY);

    sub_803414C();

    p1 = &gPlayers[gStageData.playerIndex];
    p2 = &gPlayers[p1->charFlags.partnerIndex];

    if (gStageData.gameMode == GAME_MODE_5) {
        if ((!(p1->moveState & MOVESTATE_100) && sub_8020700(s, worldX, worldY, 0, p1, 0))
            || (!(p2->moveState & MOVESTATE_100) && sub_8020700(s, worldX, worldY, 0, p2, 0)) || (gStageData.unk4 == 5)) {
            Player_PlaySong(p1, SE_GOAL_RING);
            SetPlayerCallback(p1, Player_8005BD4);
            gStageData.unk4 = 5;
            sub_803421C();
        }
    } else if ((!(p1->moveState & (MOVESTATE_1000000 | MOVESTATE_100)) && sub_8020700(s, worldX, worldY, 0, p1, 0))
               || (gStageData.unk4 == 5)) {
        bool32 r7 = (gStageData.unk4 == 5) ? TRUE : FALSE;

        Player_PlaySong(p1, SE_GOAL_RING);
        SetPlayerCallback(p1, Player_8005BD4);

        if (GAME_MODE_IS_SINGLE_PLAYER(gStageData.gameMode) || gStageData.gameMode == GAME_MODE_5) {
            p2 = &gPlayers[p1->charFlags.partnerIndex];

            if (p2->charFlags.someIndex == 2) {
                SetPlayerCallback(p2, Player_8005BD4);
            }
        }

        gStageData.unk4 = 5;

        if ((gStageData.gameMode == GAME_MODE_MP_MULTI_PACK) && !r7) {
            s32 r3 = 0x55; // = 0b01010101;
            r3 -= (1 << gStageData.playerIndex * 2);
            r3 -= (1 << p1->charFlags.partnerIndex * 2);
            gStageData.unk5 = r3;

#ifdef BUG_FIX
            if (gStageData.task90 != NULL)
#endif
            {
                gStageData.task90->main = Task_800303C;
            }
        }

        sub_803421C();
    }
}

void Task_8033FD4(void)
{
    GoalRing *ring = TASK_DATA(gCurTask);
    Sprite *s = &ring->s[0];
    s16 i;

    if (++ring->unk5C > ZONE_TIME_TO_INT(0, 2)) {
        ring->unk5C = 0;

        for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            Player *p = GET_SP_PLAYER_V0(i);

            SetPlayerCallback(p, Player_8005E80);
        }

        SET_MAP_ENTITY_NOT_INITIALIZED(ring->base.me, ring->base.spriteX);
        TaskDestroy(gCurTask);
        return;
    } else {
        for (i = 0; i < (s32)ARRAY_COUNT(ring->s); i++, s++) {
            s->y -= (ring->unk5C >> 3);

            if (s->y < -16) {
                s->y = -16;
            }

            if (s->animSpeed < SPRITE_ANIM_SPEED(4.0)) {
                s->animSpeed += (ring->unk5C >> 1);
            }
        }

        sub_8034250();
    }
}

void sub_80340B4(Sprite *s)
{
    // Main sprite
    s->tiles = ALLOC_TILES(ANIM_GOAL_RING);
    s->anim = ANIM_GOAL_RING;
    s->variant = 0;
    s->oamFlags = SPRITE_OAM_ORDER(24);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
    UpdateSpriteAnimation(s);
    s++;

    // Sparkle effect
    s->tiles = ALLOC_TILES_VARIANT(ANIM_GOAL_RING, 8);
    s->anim = ANIM_GOAL_RING;
    s->variant = 8;
    s->oamFlags = SPRITE_OAM_ORDER(23);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(18, 1) | SPRITE_FLAG(PRIORITY, 1);
    UpdateSpriteAnimation(s);
    s++;
}

void sub_803414C(void)
{
    GoalRing *ring = TASK_DATA(gCurTask);
    Sprite *s = &ring->s[0];
    MapEntity *me = ring->base.me;
    s16 worldX, worldY;

    worldX = TO_WORLD_POS(ring->base.spriteX, ring->base.regionX);
    worldY = TO_WORLD_POS(me->y, ring->base.regionY);

    if (!IsWorldPtActive(worldX, worldY)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, ring->base.spriteX);
        TaskDestroy(gCurTask);
        return;
    } else {
        // NOTE: worldX/Y are screenX/Y after this
        worldX = worldX - gCamera.x;
        worldY = worldY - gCamera.y;

        s->x = worldX;
        s->y = worldY;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);

        s++;
        s->x = worldX;
        s->y = worldY;
        UpdateSpriteAnimation(s);

        sa2__sub_081569A0(s);
    }
}

void TaskDestructor_GoalRing(struct Task *t)
{
    GoalRing *ring = TASK_DATA(t);
    VramFree(ring->s[0].tiles);
    VramFree(ring->s[1].tiles);
}

void sub_803421C(void)
{
    GoalRing *ring = TASK_DATA(gCurTask);
    Sprite *s;

    ring->unk5C = 0;

    s = &ring->s[0];
    s->variant = 4;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    gCurTask->main = Task_8033FD4;
}

void sub_8034250(void)
{
    GoalRing *ring = TASK_DATA(gCurTask);
    Sprite *s = &ring->s[0];
    s16 x = s->x;
    s16 y = s->y;

    if (!IS_OUT_OF_CAM_RANGE(x, y)) {
        UpdateSpriteAnimation(s);
        DisplaySprite(s);

        s = &ring->s[1];
        UpdateSpriteAnimation(s);
        sa2__sub_081569A0(s);
    }
}