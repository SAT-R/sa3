#include "global.h"
#include "task.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"

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

void Task_Interactable117_to_119(void);
void TaskDestructor_Interactable117_to_119(struct Task *);

void CreateEntity_Interactable117_to_119(u16 type, MapEntity *me, u16 regionX,
                                         u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Interactable117_to_119, sizeof(IA117_119), 0x2100,
                                0, TaskDestructor_Interactable117_to_119);
    IA117_119 *ia = TASK_DATA(t);

    ia->base.regionX = regionX;
    ia->base.regionY = regionY;
    ia->base.me = me;
    ia->base.spriteX = me->x;
    ia->base.spriteY = id;
    ia->type = type;

    ia->worldX = TO_WORLD_POS(me->x, regionX);
    ia->worldY = TO_WORLD_POS(me->y, regionY);
    ia->left = ia->worldX + me->d.sData[0] * 8;
    ia->right = ia->left + me->d.uData[2] * 8;
    ia->top = ia->worldY + me->d.sData[1] * 8;
    ia->bottom = ia->top + me->d.uData[3] * 8;
    ia->type = type;
    ia->unk19 = 0;

    SET_MAP_ENTITY_INITIALIZED(me);
}