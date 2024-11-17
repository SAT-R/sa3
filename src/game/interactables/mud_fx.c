#include "global.h"
#include "malloc_vram.h"
#include "module_unclear.h"
#include "sprite.h"
#include "task.h"
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
    /* 0x0C */ s32 qWorldX;
    /* 0x10 */ s32 qWorldY;
    /* 0x14 */ s32 unk14;
    /* 0x18 */ s32 unk18;
    /* 0x1C */ s32 unk1C;
    /* 0x20 */ s32 unk20;
    /* 0x24 */ u8 unk24;
    /* 0x28 */ Player *chars[NUM_SINGLE_PLAYER_CHARS];
    /* 0x30 */ Sprite s;
} IA_095; /* size: 0x58 */

void Task_Interactable095(void);
void TaskDestructor_Interactable095(struct Task *t);
void sub_80407AC(Sprite *s);
void sub_8040814(void);

void CreateEntity_WaterfallResist(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Interactable095, sizeof(IA_095), 0x2100, 0, TaskDestructor_Interactable095);
    IA_095 *ia = TASK_DATA(t);
    Sprite *s = &ia->s;
    Player *p;

    ia->base.regionX = regionX;
    ia->base.regionY = regionY;
    ia->base.me = me;
    ia->base.unk8 = me->x;
    ia->base.unk9 = id;

    ia->qWorldX = Q(TO_WORLD_POS(me->x, regionX));
    ia->qWorldY = Q(TO_WORLD_POS(me->y, regionY));

    ia->unk1C = ia->qWorldX + Q(me->d.sData[0] * TILE_WIDTH);
    ia->unk20 = ia->unk1C + Q(me->d.uData[2] * TILE_WIDTH);
    ia->unk14 = ia->qWorldY + Q(me->d.sData[1] * TILE_WIDTH);
    ia->unk18 = ia->unk14 + Q(me->d.uData[3] * TILE_WIDTH);

    ia->unk24 = 0;

    p = &gPlayers[gStageData.playerIndex];
    ia->chars[0] = p;
    ia->chars[1] = &gPlayers[p->charFlags.partnerIndex];

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_80407AC(s);
}

// TODO: Remove goto
void Task_Interactable095(void)
{
    IA_095 *ia = TASK_DATA(gCurTask);
    MapEntity *me = ia->base.me;
    u8 i;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p = ia->chars[i];
        if (p->charFlags.someIndex == 1 || p->charFlags.someIndex == 2 || p->charFlags.someIndex == 4) {

            if (!sub_802C080(p)) {
                if ((p->callback != Player_8008A8C) && (p->callback != Player_800ED80)) {
                    if ((ia->unk1C < p->qWorldX) && (ia->unk20 > p->qWorldX) && (ia->unk14 < p->qWorldY) && (ia->unk18 > p->qWorldY)) {
                        p->qSpeedAirX = (p->qSpeedAirX * 15) >> 4;
                        p->qSpeedAirY = (p->qSpeedAirY * 15) >> 4;

                        if ((p->moveState & MOVESTATE_IN_AIR) && (p->callback != Player_800EB5C)) {
                            p->charFlags.anim0 = 11;
                            SetPlayerCallback(p, Player_800EB5C);
                        }

                        if (p->qSpeedAirY > 0) {
                            if (p->keyInput2 & gStageData.buttonConfig.jump) {
                                Player_8006CF0(p);
                                Player_PlaySong(p, SE_JUMP);
                            }
                        }
                        ia->unk24 |= (1 << i);
                    } else {
                    clear_bit:
                        ia->unk24 &= ~(1 << i);
                    }
                }
            } else {
#ifndef NON_MATCHING
                goto clear_bit;
#else
                ia->unk24 &= ~(1 << i);
#endif
            }
        }
    }

    if (ia->unk24 == 0) {
        s16 worldX, worldY;
        worldX = I(ia->qWorldX);
        worldY = I(ia->qWorldY);

        if (!IsPointInScreenRect(worldX, worldY)) {
            me->x = ia->base.unk8;
            TaskDestroy(gCurTask);
            return;
        }
    } else {
        sub_8040814();
    }
}

void sub_80407AC(Sprite *s)
{
    if (gStageData.zone == ZONE_7) {
        s->tiles = ALLOC_TILES(ANIM_MUD_FX_CHAOS_ANGEL);
        s->anim = ANIM_MUD_FX_CHAOS_ANGEL;
        s->variant = 0;
    } else {
        s->tiles = ALLOC_TILES(ANIM_MUD_FX);
        s->anim = ANIM_MUD_FX;
        s->variant = 0;
    }

    s->oamFlags = SPRITE_OAM_ORDER(12);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    UpdateSpriteAnimation(s);
}

void sub_8040814(void)
{
    IA_095 *ia = TASK_DATA(gCurTask);
    Sprite *s = &ia->s;
    u8 i;

    UpdateSpriteAnimation(s);

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p = ia->chars[i];

        if ((ia->unk24 >> i) & 0x1) {
            s->x = I(p->qWorldX) - gCamera.x;
            s->y = I(p->qWorldY) - gCamera.y;
            DisplaySprite(s);
        }
    }
}

void TaskDestructor_Interactable095(struct Task *t)
{
    IA_095 *ia = TASK_DATA(t);
    VramFree(ia->s.tiles);
}