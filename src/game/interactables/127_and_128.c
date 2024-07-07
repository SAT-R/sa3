#include "global.h"
#include "task.h"
#include "module_unclear.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/move_states.h"
#include "constants/songs.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ s32 worldX;
    /* 0x10 */ s32 worldY;
    /* 0x14 */ u8 unk14;
} IA127_128; /* size; 0x18 */

void Task_Interactable127(void);
void Task_Interactable128(void);
void TaskDestructor_Interactable127(struct Task *t);
void TaskDestructor_Interactable128(struct Task *t);

void Task_Interactable127(void)
{
    IA127_128 *ia = TASK_DATA(gCurTask);
    MapEntity *me = ia->base.me;
    s32 worldX, worldY;
    s32 qLeft, qTop;
    s32 qRight, qBottom;
    s16 i;

    worldX = ia->worldX;
    worldY = ia->worldY;

    if (!IsPointInScreenRect(worldX, worldY)) {
        me->x = ia->base.spriteX;
        TaskDestroy(gCurTask);
        return;
    }

    qTop = Q(worldY) + Q(me->d.sData[1] * TILE_WIDTH);
    qBottom = qTop + Q(me->d.uData[3] * TILE_WIDTH);

    qLeft = Q(worldX) + Q(me->d.sData[0] * TILE_WIDTH);
    qRight = qLeft + Q(me->d.uData[2] * TILE_WIDTH);

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p;

        if (i == 0) {
            p = &gPlayers[gStageData.charId];
        } else {
            p = &gPlayers[p->charFlags.partnerIndex];
        }

        if ((p->charFlags.someIndex == 1) || (p->charFlags.someIndex == 2)
            || (p->charFlags.someIndex == 4)) {
            if (!sub_802C0D4(p)) {
                if ((p->callback != Player_800E604)
                    && !(p->moveState & MOVESTATE_IN_AIR))
                    if ((p->qWorldX > qLeft) && (p->qWorldX < qRight)
                        && (p->qWorldY > qTop) && (p->qWorldY < qBottom)) {
                        if (ia->unk14) {
                            SetPlayerCallback(p, (void *)Player_800E5EC);
                        } else {
                            SetPlayerCallback(p, (void *)Player_800E5D0);
                        }
                    }
            }
        }
    }
}

void Task_Interactable128(void)
{
    IA127_128 *ia = TASK_DATA(gCurTask);
    MapEntity *me = ia->base.me;
    s32 worldX, worldY;
    s32 qLeft, qTop;
    s32 qRight, qBottom;
    s16 i;

    worldX = ia->worldX;
    worldY = ia->worldY;

    if (!IsPointInScreenRect(worldX, worldY)) {
        me->x = ia->base.spriteX;
        TaskDestroy(gCurTask);
        return;
    }

    qTop = Q(worldY) + Q(me->d.sData[1] * TILE_WIDTH);
    qBottom = qTop + Q(me->d.uData[3] * TILE_WIDTH);

    qLeft = Q(worldX) + Q(me->d.sData[0] * TILE_WIDTH);
    qRight = qLeft + Q(me->d.uData[2] * TILE_WIDTH);

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p;

        if (i == 0) {
            p = &gPlayers[gStageData.charId];
        } else {
            p = &gPlayers[p->charFlags.partnerIndex];
        }

        if (!sub_802C0D4(p)) {
            if ((p->callback == Player_800E604) && (p->qWorldX > qLeft)
                && (p->qWorldX < qRight) && (p->qWorldY > qTop)
                && (p->qWorldY < qBottom)) {
                sub_8016F28(p);
                sub_8004F10(p, SE_599);
                sub_8006824(p);
            }
        }
    }
}

void CreateEntity_Interactable127(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Interactable127, sizeof(IA127_128), 0x2100, 0,
                                TaskDestructor_Interactable127);

    IA127_128 *ia = TASK_DATA(t);
    ia->base.regionX = regionX;
    ia->base.regionY = regionY;
    ia->base.me = me;
    ia->base.spriteX = me->x;
    ia->base.spriteY = id;
    ia->worldX = TO_WORLD_POS(ia->base.spriteX, ia->base.regionX);
    ia->worldY = TO_WORLD_POS(me->y, ia->base.regionY);

    // This differentiates
    // CreateEntity_Interactable127 from 128
    ia->unk14 = (me->d.uData[4] & 0x1);

    SET_MAP_ENTITY_INITIALIZED(me);
}

void CreateEntity_Interactable128(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Interactable128, sizeof(IA127_128), 0x2100, 0,
                                TaskDestructor_Interactable128);

    IA127_128 *ia = TASK_DATA(t);
    ia->base.regionX = regionX;
    ia->base.regionY = regionY;
    ia->base.me = me;
    ia->base.spriteX = me->x;
    ia->base.spriteY = id;
    ia->worldX = TO_WORLD_POS(ia->base.spriteX, ia->base.regionX);
    ia->worldY = TO_WORLD_POS(me->y, ia->base.regionY);
    SET_MAP_ENTITY_INITIALIZED(me);
}

void TaskDestructor_Interactable127(struct Task *t) { }

void TaskDestructor_Interactable128(struct Task *t) { }