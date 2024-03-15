#include "sprite.h"
#include "task.h"
#include "game/camera.h"
#include "game/entity.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ u8 fillerC[0x4];
} IA_060; /* size: 0x10 */

extern bool32 sub_802C198(s32, s32);
static void DestroyInteractable060(struct Task *t);
static void Task_8035CA0(void);

void CreateEntity_Interactable060(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t
        = TaskCreate(Task_Interactable060, sizeof(IA_060), 0x2100, 0, DestroyInteractable060);
    IA_060 *ia = TASK_DATA(t);

    ia->base.regionX = regionX;
    ia->base.regionY = regionY;
    ia->base.me = me;

    ia->base.spriteX = me->x;
    ia->base.spriteY = id;
    SET_MAP_ENTITY_INITIALIZED(me);
}

void DestroyInteractable060(struct Task *t) { }

void Task_Interactable060(void)
{
    IA_060 *ia = TASK_DATA(gCurTask);
    MapEntity *me = ia->base.me;

    s16 worldX = TO_WORLD_POS(ia->base.spriteX, ia->base.regionX);
    s16 worldY = TO_WORLD_POS(me->y, ia->base.regionY);

    if (sub_802C198(worldX, worldY) == 0) {
        me->x = ia->base.spriteX;
        TaskDestroy(gCurTask);
    }
}