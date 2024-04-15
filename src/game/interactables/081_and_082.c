#include "global.h"
#include "task.h"
#include "game/entity.h"

void Task_IA125_126(void);
void TaskDestructor_IA125_126(struct Task *t);
static void Create_Interactable125or126(u8 type, MapEntity *me, u16 regionX, u16 regionY,
                                        u8 id);

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ u8 type;
    /* 0x0D */ u8 unkD;
    /* 0x0E */ u8 unkE;
} IA081_082;

void CreateEntity_Interactable081(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    Create_Interactable125or126(0, me, regionX, regionY, id);
}

void CreateEntity_Interactable082(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    Create_Interactable125or126(1, me, regionX, regionY, id);
}

void TaskDestructor_IA125_126(struct Task *t) { }

static void Create_Interactable125or126(u8 type, MapEntity *me, u16 regionX, u16 regionY,
                                        u8 id)
{
    struct Task *t = TaskCreate(Task_IA125_126, sizeof(IA081_082), 0x2100, 0,
                                TaskDestructor_IA125_126);
    IA081_082 *ia = TASK_DATA(t);

    ia->base.regionX = regionX;
    ia->base.regionY = regionY;
    ia->base.me = me;
    ia->base.spriteX = me->x;
    ia->base.spriteY = id;
    SET_MAP_ENTITY_INITIALIZED(me);

    ia->type = type;
    ia->unkD = 0;
    ia->unkE = 0;
}