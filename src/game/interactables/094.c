#include "global.h"
#include "task.h"
#include "game/entity.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ u8 unkC;
    /* 0x0D */ u8 unkD;
    /* 0x0E */ u8 unkE;
} IA094;

void Task_Interactable094Main(void);

void CreateEntity_Interactable094(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t
        = TaskCreate(Task_Interactable094Main, sizeof(IA094), 0x2100, 0, NULL);
    IA094 *ia = TASK_DATA(t);

    ia->base.regionX = regionX;
    ia->base.regionY = regionY;
    ia->base.me = me;
    ia->base.spriteX = me->x;
    ia->base.spriteY = id;
    ia->unkC = (me->d.uData[4] > 0) ? 1 : 0;
    ia->unkD = 0;
    ia->unkE = 0;

    SET_MAP_ENTITY_INITIALIZED(me);
}