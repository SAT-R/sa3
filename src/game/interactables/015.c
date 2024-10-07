#include "sprite.h"
#include "task.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/stage.h"

#include "constants/move_states.h"

void Task_802E92C(void);
void TaskDestructor_Interactable015(struct Task *);

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ u8 unkC;
    /* 0x0D */ u8 unkD;
} IA_015;

void Task_802E92C(void)
{
    IA_015 *ia = TASK_DATA(gCurTask);
    MapEntity *me = ia->base.me;
    s16 worldX, worldY;
    s32 regionX, regionY;
    u8 spriteX;
    s16 i;
    Player *p;

    spriteX = ia->base.spriteX;
    regionX = ia->base.regionX;
    regionY = ia->base.regionY;

    worldX = TO_WORLD_POS(spriteX, regionX);
    worldY = TO_WORLD_POS(me->y, regionY);

    if (!IsPointInScreenRect(worldX, worldY)) {
        me->x = ia->base.spriteX;
        TaskDestroy(gCurTask);
        return;
    }

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        if ((gStageData.gameMode != GAME_MODE_MP_SINGLE_PACK) || (i == 0)) {
            p = GET_SP_PLAYER_V0(i);

            if (p->charFlags.someIndex == 1 || p->charFlags.someIndex == 2 || p->charFlags.someIndex == 4) {
                if (!sub_802C0D4(p) && (p->moveState & MOVESTATE_IN_AIR)) {
                    if ((worldX <= I(p->qWorldX)) && ((worldX + me->d.uData[2] * TILE_WIDTH) >= I(p->qWorldX)) && (worldY <= I(p->qWorldY))
                        && ((worldY + me->d.uData[3] * TILE_WIDTH) >= I(p->qWorldY))) {
                        p->moveState |= MOVESTATE_80000;

                        p->charFlags.state0_subHighBit = (ia->unkC & 0x1);
                        p->charFlags.state0_other = (ia->unkD & 0x3);
                    }
                }
            }
        }
    }
}

void CreateEntity_Interactable015(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_802E92C, sizeof(IA_015), 0x2100, 0, TaskDestructor_Interactable015);
    IA_015 *ia = TASK_DATA(t);

    ia->base.regionX = regionX;
    ia->base.regionY = regionY;
    ia->base.me = me;
    ia->base.spriteX = me->x;
    ia->base.id = id;

    ia->unkC = (me->d.uData[4] & 0x10) >> 4;
    ia->unkD = (me->d.uData[4] & 0x03);

    SET_MAP_ENTITY_INITIALIZED(me);
}

void TaskDestructor_Interactable015(struct Task *t) { }