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
} IA_135; /* size: 0x10 */

void Task_Interactable135(void);
void TaskDestructor_Interactable135(struct Task *);

void Task_Interactable135(void)
{
    IA_135 *ia = TASK_DATA(gCurTask);
    MapEntity *me = ia->base.me;
    Player *p;
    s32 worldX, worldY;
    s16 left, right, top, bottom, middleY;
    s16 i;

    worldX = ia->worldX;
    worldY = ia->worldY;
    if (!IsPointInScreenRect(worldX, worldY)) {
        sub_8003E28(SE_610);
        me->x = ia->base.spriteX;
        TaskDestroy(gCurTask);
        return;
    }
    // _0804C9F0

    top = worldY + (me->d.sData[1] * TILE_WIDTH);
    bottom = top + (me->d.uData[3] * TILE_WIDTH);
    left = worldX + (me->d.sData[0] * TILE_WIDTH);
    right = left + (me->d.uData[2] * TILE_WIDTH);
    middleY = top + (me->d.uData[3] * (TILE_WIDTH / 2));

    // __loopy
    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        if (i == 0) {
            p = &gPlayers[gStageData.charId];
        } else {
            p = &gPlayers[p->charFlags.partnerIndex];
        }

        if ((p->callback != Player_8008A8C) && (p->callback != Player_800ED80)) {
            if (!sub_802C080(p)) {
                s16 qPlayerX = I(p->qWorldX);
                s16 qPlayerY = I(p->qWorldY);

                if ((qPlayerX > left) && (qPlayerX < right) && (qPlayerY > top) && (qPlayerY < bottom)) {
                    if (qPlayerY < middleY) {
                        if (p->qSpeedAirY < 0)
                            continue;
                    } else {
                        if (p->qSpeedAirY > 0)
                            continue;
                    }

                    if (p->callback != Player_800A98C) {
                        p->qUnk74 = Q(middleY);

                        if (qPlayerY < (middleY)) {
                            p->unk26 = 0x80;
                        } else {
                            p->unk26 = 0x00;
                        }

                        p->idleAndCamCounter = 0;
                        p->qWorldY = Q(middleY);
                        Player_800A90C(p);
                    }
                }
            }
        }
    }
}

void CreateEntity_Interactable135(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Interactable135, sizeof(IA_135), 0x2100, 0, TaskDestructor_Interactable135);
    IA_135 *ia = TASK_DATA(t);

    ia->base.regionX = regionX;
    ia->base.regionY = regionY;
    ia->base.me = me;
    ia->base.spriteX = me->x;
    ia->base.id = id;
    ia->worldX = TO_WORLD_POS(me->x, regionX);
    ia->worldY = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);
}

void TaskDestructor_Interactable135(struct Task *t) { }