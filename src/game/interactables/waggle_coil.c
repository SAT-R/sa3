#include "global.h"
#include "malloc_vram.h"
#include "task.h"
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

// TODO: Rename?
// The "Waggle Coil Spring thingy" from Sunset Hill

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ u8 unk34;
} WaggleCoil; /* size: 0x38 */

void Task_WaggleCoil(void);
void sub_8040140(Sprite *s);
void sub_804018C(void);
void TaskDestructor_WaggleCoil(struct Task *t);

void Task_WaggleCoil(void)
{
    WaggleCoil *coil = TASK_DATA(gCurTask);
    Sprite *s = &coil->s;
    MapEntity *me = coil->base.me;
    Player *p;
    s16 worldX, worldY;
    s16 i;

    worldX = TO_WORLD_POS(coil->base.spriteX, coil->base.regionX);
    worldY = TO_WORLD_POS(me->y, coil->base.regionY);

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        p = GET_SP_PLAYER_V0(i);

        if (!(p->moveState & MOVESTATE_20) || p->spr6C != s) {
            if (!sub_802C080(p)) {
                u32 collision = sub_8020874(s, worldX, worldY, 0, p, 0, 0);

                if (collision != 0) {
                    bool32 r1;

                    sub_8016F28(p);

                    if (coil->unk34 != 0) {
                        u32 xored = (coil->unk34 ^ 0x1);
                        r1 = (-xored | xored) >> 31;
                    } else if (collision & 0xC0000) {
                        r1 = -(collision & 0x40000) >> 31;
                    } else {
                        if (I(p->qWorldX) != worldX) {
                            r1 = FALSE;

                            if (I(p->qWorldX) < worldX) {
                                r1 = TRUE;
                            }
                        } else {
                            r1 = (p->moveState & MOVESTATE_FACING_LEFT);
                        }
                    }

                    if (r1 == FALSE) {
                        s->frameFlags |= SPRITE_FLAG_MASK_X_FLIP;
                        p->moveState &= ~MOVESTATE_FACING_LEFT;
                    } else {
#ifndef NON_MATCHING
                        asm("" ::"r"(r1));
#endif
                        s->frameFlags &= ~SPRITE_FLAG_MASK_X_FLIP;
                        p->moveState |= MOVESTATE_FACING_LEFT;
                    }

                    p->moveState |= MOVESTATE_20;
                    p->spr6C = s;
                    p->qWorldX = Q(worldX);
                    p->qWorldY = Q(worldY);

                    s->variant = 1;

                    sub_8003DF0(SE_WAGGLE_COIL);
                    SetPlayerCallback(p, Player_800A4C8);
                }
            }
        }
    }

    sub_804018C();
}

void WaggleCoil_InitSprite(Sprite *s)
{
    s->tiles = ALLOC_TILES(ANIM_WAGGLE_COIL);
    s->anim = ANIM_WAGGLE_COIL;
    s->variant = 0;
    s->oamFlags = SPRITE_OAM_ORDER(24);
    s->x = 0;
    s->y = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    UpdateSpriteAnimation(s);
}

void sub_804018C(void)
{
    WaggleCoil *coil = TASK_DATA(gCurTask);
    Sprite *s = &coil->s;
    MapEntity *me = coil->base.me;
    s32 worldX, worldY;

    worldX = TO_WORLD_POS(coil->base.spriteX, coil->base.regionX);
    worldY = TO_WORLD_POS(me->y, coil->base.regionY);

    if (!IsPointInScreenRect(worldX, worldY)) {
        me->x = coil->base.spriteX;
        TaskDestroy(gCurTask);
        return;
    }

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;
    if (UpdateSpriteAnimation(s) == ACMD_RESULT__ENDED) {
        if (s->variant == 1) {
            s->variant = 0;
        }
    }

    DisplaySprite(s);
}

void CreateEntity_Interactable093(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_WaggleCoil, sizeof(WaggleCoil), 0x2100, 0, TaskDestructor_WaggleCoil);
    WaggleCoil *coil = TASK_DATA(t);
    Sprite *s = &coil->s;

    coil->base.regionX = regionX;
    coil->base.regionY = regionY;
    coil->base.me = me;
    coil->base.spriteX = me->x;
    coil->base.id = id;
    coil->unk34 = me->d.uData[4] & 0x3;
    SET_MAP_ENTITY_INITIALIZED(me);

    WaggleCoil_InitSprite(s);
}

void TaskDestructor_WaggleCoil(struct Task *t)
{
    WaggleCoil *coil = TASK_DATA(t);
    VramFree(coil->s.tiles);
}