#include "global.h"
#include "module_unclear.h"
#include "sprite.h"
#include "task.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/player_callbacks.h"
#include "game/stage.h"

#include "constants/songs.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ s16 worldX;
    /* 0x0E */ s16 worldY;
    /* 0x10 */ u8 unk10;
    /* 0x11 */ u8 unk11[NUM_SINGLE_PLAYER_CHARS];
} IA_134; /* size: 0x10 */

void Task_Interactable134(void);
void TaskDestructor_Interactable134(struct Task *);

void CreateEntity_Interactable134(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Interactable134, sizeof(IA_134), 0x2100, 0, TaskDestructor_Interactable134);
    IA_134 *ia = TASK_DATA(t);

    ia->base.regionX = regionX;
    ia->base.regionY = regionY;
    ia->base.me = me;
    ia->base.spriteX = me->x;
    ia->base.id = id;
    ia->worldX = TO_WORLD_POS(me->x, regionX);
    ia->worldY = TO_WORLD_POS(me->y, regionY);
    ia->unk10 = me->d.uData[4] & 0x1;
    ia->unk11[0] = 0;
    ia->unk11[1] = 0;

    SET_MAP_ENTITY_INITIALIZED(me);
}

void Task_Interactable134(void)
{
    Player *p;
    s16 left, top, right, bottom, middle;
    s32 qWorldX, qWorldY;
    s16 worldX, worldY;
    s16 i;
    IA_134 *ia = TASK_DATA(gCurTask);
    MapEntity *me = ia->base.me;

    s32 top0 = me->d.sData[1] * TILE_WIDTH;
    s32 left0;
    qWorldY = ia->worldY;
    top = qWorldY + top0;
    bottom = top + me->d.uData[3] * TILE_WIDTH;

    left0 = me->d.sData[0] << 3;
    qWorldX = ia->worldX;
    left = qWorldX + left0;
    right = left + me->d.uData[2] * TILE_WIDTH;
    middle = top + me->d.uData[3] * (TILE_WIDTH / 2) + 4;

    if (!IsPointInScreenRect(qWorldX, qWorldY)) {
        me->x = ia->base.spriteX;
        TaskDestroy(gCurTask);
        return;
    }

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        if (i == 0) {
            p = &gPlayers[gStageData.charId];
        } else {
            p = &gPlayers[p->charFlags.partnerIndex];
        }

        if (p->charFlags.someIndex == 1 || p->charFlags.someIndex == 2 || p->charFlags.someIndex == 4) {
            if (sub_802C0D4(p)) {
                sub_8004F10(p, SE_607);
            } else if ((p->callback != Player_8008A8C) && (p->callback != Player_800ED80)) {
                worldX = I(p->qWorldX);
                worldY = I(p->qWorldY);

                if ((worldX > left) && (worldX < right) && (worldY > top) && (worldY < bottom)) {
                    if (((middle - 4) <= worldY) && ((middle + 4) >= worldY)) {
                        if ((p->callback != Player_800A724) && (p->callback != Player_800A860)) {
                            sub_8016F28(p);

                            p->qWorldY = Q(middle);
                            ia->unk11[i] = 0;

                            if (ia->unk10 == 0) {
                                p->qSpeedAirX = -Q(1.5);
                                SetPlayerCallback(p, Player_800A7CC);
                            } else {
                                p->qSpeedAirX = +Q(1.5);
                                SetPlayerCallback(p, Player_800A690);
                            }
                        }
                    } else {
                        s32 r0 = (middle > worldY) ? 0x1 : 0x2;
                        s32 r3 = r0;

                        if ((ia->unk11[i] != 0) && (ia->unk11[i] != r0)) {
                            p->qWorldY = Q(middle);
                            ia->unk11[i] = 0;

                            if (ia->unk10 != 0) {
                                p->qSpeedAirX = +Q(1.5);
                                SetPlayerCallback(p, Player_800A690);
                            } else {
                                p->qSpeedAirX = -Q(1.5);
                                SetPlayerCallback(p, Player_800A7CC);
                            }
                        } else {
                            ia->unk11[i] = r3;
                        }
                    }
                } else {
                    ia->unk11[i] = 0;
                }
            }
        }
    }
}

void TaskDestructor_Interactable134(struct Task *t) { }
