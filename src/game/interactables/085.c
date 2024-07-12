#include "global.h"
#include "task.h"
#include "module_unclear.h"
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
    /* 0x10 */ u16 worldX;
    /* 0x12 */ u16 worldY;
    /* 0x14 */ s8 left;
    /* 0x15 */ s8 top;
    /* 0x16 */ s8 right;
    /* 0x17 */ s8 bottom;
} IA085 /* size: 0x18 */;

void Task_Interactable085(void);
void TaskDestructor_Interactable085(struct Task *t);

void CreateEntity_Interactable085(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Interactable085, sizeof(IA085), 0x2100, 0, TaskDestructor_Interactable085);
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
    ia->base.id = ((me->d.uData[4] >> 1) & 0x1);
    ia->unkC = 0;
    ia->unkD = 0;

    SET_MAP_ENTITY_INITIALIZED(me);
}

void Task_Interactable085(void)
{
    IA085 *ia = TASK_DATA(gCurTask);
    MapEntity *me = ia->base.me;
    Player *p;
    u8 rect[4];
    u8 i;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        if (i != 0) {
            p = &gPlayers[p->charFlags.partnerIndex];
        } else {
            p = &gPlayers[gStageData.charId];
        }

        if (!sub_802C080(p) && !(p->moveState & MOVESTATE_IN_AIR) && (p->callback != Player_800A438) && (p->callback != Player_8008A8C)
            && (p->callback != Player_800ED80)) {
            rect[0] = -p->unk24;
            rect[1] = -p->unk25;
            rect[2] = +p->unk24;
            rect[3] = +p->unk25;

            if (RECT_COLLISION(ia->worldX, ia->worldY, ia, I(p->qWorldX), I(p->qWorldY), (Rect8 *)&rect)) {
                bool32 isExpectedCallback = FALSE;
                void *cmpCallback;

                if (ia->base.id == 0) {
                    cmpCallback = Player_800BD88;
                } else {
                    void *callback = p->callback;
                    cmpCallback = Player_800BD88;

                    if (callback == Player_800BD88) {
                        isExpectedCallback = TRUE;
                    }

                    if (!isExpectedCallback) {
                        continue;
                    }
                }

                if (ia->base.spriteX != 0) {
                    p->moveState &= ~MOVESTATE_FACING_LEFT;
                } else {
                    p->moveState |= MOVESTATE_FACING_LEFT;
                }

                p->charFlags.unk2C_02 = 1;

                if (p->callback != cmpCallback) {
                    SetPlayerCallback(p, (void *)Player_800BCE0);
                }
            }
        }
    }

    if (!IsPointInScreenRect((u16)ia->worldX, (u16)ia->worldY)) {
        me->x = ia->base.unk8;
        TaskDestroy(gCurTask);
        return;
    }
}

void TaskDestructor_Interactable085(struct Task *t) { }