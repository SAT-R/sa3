#include "global.h"
#include "task.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/player_callbacks.h"
#include "game/stage.h"

#include "constants/move_states.h"

#define IA117_TYPE_0 0
#define IA117_TYPE_1 1
#define IA117_TYPE_2 2

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ s16 worldX;
    /* 0x0E */ s16 worldY;
    /* 0x10 */ s16 left;
    /* 0x12 */ s16 top;
    /* 0x14 */ s16 right;
    /* 0x16 */ s16 bottom;
    /* 0x18 */ u8 type;
    /* 0x19 */ u8 unk19;
} IA117_119; /* size: 0x1C */

static void Task_Interactable117_to_119(void);
static void TaskDestructor_Interactable117_to_119(struct Task *);

static void CreateEntity_Interactable117_to_119(u16 type, MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Interactable117_to_119, sizeof(IA117_119), 0x2100, 0, TaskDestructor_Interactable117_to_119);
    IA117_119 *ia = TASK_DATA(t);

    ia->base.regionX = regionX;
    ia->base.regionY = regionY;
    ia->base.me = me;
    ia->base.spriteX = me->x;
    ia->base.id = id;
    ia->type = type;

    ia->worldX = TO_WORLD_POS(me->x, regionX);
    ia->worldY = TO_WORLD_POS(me->y, regionY);
    ia->left = ia->worldX + me->d.sData[0] * TILE_WIDTH;
    ia->right = ia->left + me->d.uData[2] * TILE_WIDTH;
    ia->top = ia->worldY + me->d.sData[1] * TILE_WIDTH;
    ia->bottom = ia->top + me->d.uData[3] * TILE_WIDTH;
    ia->type = type;
    ia->unk19 = 0;

    SET_MAP_ENTITY_INITIALIZED(me);
}

void Task_Interactable117_to_119(void)
{
    IA117_119 *ia = TASK_DATA(gCurTask);
    MapEntity *me = ia->base.me;
    Player *p;
    s16 i;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        p = GET_SP_PLAYER_V0(i);

        if (p->charFlags.someIndex == 1 || p->charFlags.someIndex == 2 || p->charFlags.someIndex == 4) {
            if (!sub_802C0D4(p) && (p->callback != Player_800DDD0)) {
                s16 pWorldX, pWorldY;
                pWorldX = I(p->qWorldX);
                pWorldY = I(p->qWorldY);

                if ((ia->left > pWorldX) || (ia->right < pWorldX) || (ia->top > pWorldY) || (ia->bottom < pWorldY)) {
                    if (ia->type == IA117_TYPE_0) {
                        if ((ia->unk19 >> i) & 0x1) {
                            ClearBit(ia->unk19, i);

                            if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
                                p->moveState &= ~MOVESTATE_GRAVITY_SWITCHED;
                            } else {
                                p->moveState |= MOVESTATE_GRAVITY_SWITCHED;
                            }
                        }
                    }
                } else {
                    switch (ia->type) {
                        case IA117_TYPE_0: {
                            SetBit(ia->unk19, i);
                        } break;

                        case IA117_TYPE_1: {
                            p->moveState |= MOVESTATE_GRAVITY_SWITCHED;
                        } break;

                        case IA117_TYPE_2: {
                            p->moveState &= ~MOVESTATE_GRAVITY_SWITCHED;
                        } break;
                    }
                }
            }
        }
    }

    if (!IsPointInScreenRect(ia->worldX, ia->worldY)) {
        me->x = ia->base.spriteX;
        TaskDestroy(gCurTask);
        return;
    }
}

void CreateEntity_Interactable117(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    CreateEntity_Interactable117_to_119(IA117_TYPE_0, me, regionX, regionY, id);
}

void CreateEntity_Interactable118(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    CreateEntity_Interactable117_to_119(IA117_TYPE_1, me, regionX, regionY, id);
}

void CreateEntity_Interactable119(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    CreateEntity_Interactable117_to_119(IA117_TYPE_2, me, regionX, regionY, id);
}

static void TaskDestructor_Interactable117_to_119(struct Task *t) { }
