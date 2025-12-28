#include "global.h"
#include "module_unclear.h"
#include "sprite.h"
#include "task.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/player_callbacks.h"
#include "game/stage.h"

#include "constants/move_states.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ s16 worldX;
    /* 0x0E */ s16 worldY;
    /* 0x10 */ s16 left;
    /* 0x12 */ s16 top;
    /* 0x14 */ s16 right;
    /* 0x16 */ s16 bottom;
    /* 0x18 */ u8 unk18;
} IA_116; /* size: 0x1C */

void Task_Interactable116(void);
void TaskDestructor_Interactable116(struct Task *t);

void CreateEntity_Interactable116(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Interactable116, sizeof(IA_116), 0x2100, 0, TaskDestructor_Interactable116);
    IA_116 *ia = TASK_DATA(t);

    ia->base.regionX = regionX;
    ia->base.regionY = regionY;
    ia->base.me = me;
    ia->base.meX = me->x;
    ia->base.id = id;
    ia->worldX = TO_WORLD_POS(me->x, regionX);
    ia->worldY = TO_WORLD_POS(me->y, regionY);
    ia->left = ia->worldX + (me->d.sData[0] * TILE_WIDTH);
    ia->right = ia->left + (me->d.uData[2] * TILE_WIDTH);
    ia->top = ia->worldY + (me->d.sData[1] * TILE_WIDTH);
    ia->bottom = ia->top + (me->d.uData[3] * TILE_WIDTH);

    ia->unk18 = (me->d.uData[4] & 0x1);

    SET_MAP_ENTITY_INITIALIZED(me);
}

void Task_Interactable116(void)
{
    IA_116 *ia = TASK_DATA(gCurTask);
    MapEntity *me = ia->base.me;
    s16 i;
    u8 sp00;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p = GET_SP_PLAYER_V0(i);

        if (p->charFlags.someIndex == 1 || p->charFlags.someIndex == 2 || p->charFlags.someIndex == 4) {
            if (!sub_802C0D4(p) && (p->callback != Player_8008A8C) && (p->callback != Player_800ED80)) {
                s8 unk24;
                s16 unk25;
                s16 worldX, worldY;
                s32 qSpeedY;

                worldX = I(p->qWorldX);
                worldY = I(p->qWorldY);

                unk24 = p->spriteOffsetX;
                unk25 = p->spriteOffsetY;
                if (((ia->left <= (worldX + unk24)) && (ia->right >= (worldX - unk24)))
                    && ((ia->top <= (worldY + unk25)) && (ia->bottom >= (worldY - unk25)))) {
                    s32 res;
                    bool32 collided = 0;

                    if ((p->moveState & MOVESTATE_IN_AIR) || ((p->callback != Player_800B240) && (p->callback != Player_800B3FC))) {
                        if (p->qSpeedAirX <= 0) {
                            res = sub_80110E8(0, p, &sp00, NULL);
                            if (res < 8) {
                                collided = TRUE;
                                p->qWorldX -= res;
                                p->unk26 = sp00;
                            }
                        }

                        if (!collided && (p->qSpeedAirX >= 0)) {
                            res = sub_80110E8(1, p, &sp00, NULL);
                            if (res < 8) {
                                collided = TRUE;
                                p->qWorldX += res;
                                p->unk26 = sp00;
                            }
                        }

                        qSpeedY = p->qSpeedAirY;
                        if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
                            qSpeedY = -qSpeedY;
                        }

                        if ((!collided) && (qSpeedY <= 0)) {
                            res = sub_80110E8(2, p, &sp00, NULL);
                            if (res < 8) {
                                collided = TRUE;
                                p->qWorldY -= res;
                                p->unk26 = sp00;
                            }
                        }

                        if ((!collided) && (qSpeedY >= 0)) {
                            res = sub_80110E8(3, p, &sp00, NULL);
                            if (res < 8) {
                                collided = TRUE;
                                p->qWorldY += res;
                                p->unk26 = sp00;
                            }
                        }
#ifndef NON_MATCHING
                        asm("" : "=r"(collided) : "r"(collided));
#endif

                        if (collided) {
                            p->moveState &= ~MOVESTATE_IN_AIR;

                            if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
                                p->unk26 = (-(p->unk26 + 0x80) & ~0x1);
                            }

                            sub_8016F28(p);
                            p->qUnk70 = Q(ia->worldX);
                            p->qUnk74 = Q(ia->worldY);

                            if (ia->unk18 != 0) {
                                SetPlayerCallback(p, Player_800B374);
                            } else {
                                SetPlayerCallback(p, Player_800B1B8);
                            }
                        }
                    }
                }
            }
        }
    }

    if (!IsWorldPtActive(ia->worldX, ia->worldY)) {
        me->x = ia->base.meX;
        TaskDestroy(gCurTask);
        return;
    }
}

void TaskDestructor_Interactable116(struct Task *t) { }
