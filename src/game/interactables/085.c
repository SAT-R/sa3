#include "global.h"
#include "task.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/player_callbacks.h"
#include "game/stage.h"

#include "constants/move_states.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ u8 unkC;
    /* 0x0D */ u8 unkD;
    /* 0x0E */ u8 fillerE[0x2];
    /* 0x10 */ s16 worldX;
    /* 0x12 */ s16 worldY;
    /* 0x14 */ s8 left;
    /* 0x15 */ s8 top;
    /* 0x16 */ s8 right;
    /* 0x17 */ s8 bottom;
} IA085 /* size: 0x18 */;

void Task_Interactable085(void);
void TaskDestructor_Interactable085(struct Task *t);

void CreateEntity_Interactable085(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Interactable085, sizeof(IA085), 0x2100, 0,
                                TaskDestructor_Interactable085);
    IA085 *ia = TASK_DATA(t);
    s32 worldX, worldY;

    ia->base.regionX = regionX;
    ia->base.regionY = regionY;
    ia->base.me = me;
    ia->base.unk8 = me->x;
    ia->base.unk9 = id;
    ia->worldX = TO_WORLD_POS(me->x, regionX);
    ia->worldY = TO_WORLD_POS(me->y, regionY);

    ia->left = me->d.uData[0] * TILE_WIDTH;
    ia->top = me->d.uData[1] * TILE_WIDTH;
    ia->right = (me->d.uData[2] + me->d.uData[0]) << 3;
    ia->bottom = (me->d.uData[3] + me->d.uData[1]) << 3;

    ia->base.spriteX = ((me->d.uData[4] >> 0) & 0x1);
    ia->base.spriteY = ((me->d.uData[4] >> 1) & 0x1);
    ia->unkC = 0;
    ia->unkD = 0;

    SET_MAP_ENTITY_INITIALIZED(me);
}

#if 0
void Task_Interactable085(void)
{
    IA085 *ia = TASK_DATA(gCurTask);
    MapEntity *me = ia->base.me;
    Player *p;
    u8 array[4];
    u8 i;

    for(i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        if(i != 0) {
            p = &gPlayers[p->charFlags.partnerIndex];
        } else {
            p = &gPlayers[gStageData.charId];
        }

        if(!sub_802C080(p)
            && !(p->moveState & MOVESTATE_IN_AIR)
            && !(p->callback != PlayerCB_8008A8C)
            && !(p->callback != PlayerCB_800ED80)) {
            array[0] = -p->unk24;
            array[1] = -p->unk25;
            array[2] = +p->unk24;
            array[3] = +p->unk25;

            // __pre_big_cmp
            if((ia->worldX + ia->left) > (I(p->qWorldX) + ia->left)) {

            }
        }
    }
    // _0803DC96

    if(!IsPointInScreenRect(ia->worldX, ia->worldY)) {
        me->x = ia->base.unk8;
        TaskDestroy(gCurTask);
        return;
    }
}
#endif