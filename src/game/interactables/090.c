#include "sprite.h"
#include "task.h"
#include "game/camera.h"
#include "game/entity.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ s32 qWorldX;
    /* 0x10 */ s32 worldY;
    /* 0x14 */ s32 top;
    /* 0x18 */ s32 bottom;
    /* 0x1C */ s32 left;
    /* 0x20 */ s32 right;
} IA_090; /* size: 0x24 */

void Task_Interactable090Main(void);

void CreateEntity_Interactable090(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    IA_090 *ia;
    struct Task *t
        = TaskCreate(Task_Interactable090Main, sizeof(IA_090), 0x2100, 0, NULL);
    s32 qWorldX;
    s32 worldY;
    ia = TASK_DATA(t);

    ia->base.regionX = regionX;
    ia->base.regionY = regionY;
    ia->base.me = me;
    ia->base.unk8 = me->x;
    ia->base.unk9 = id;

    qWorldX = Q(TO_WORLD_POS(me->x, regionX));
    ia->qWorldX = qWorldX;
    worldY = Q(TO_WORLD_POS(me->y, regionY));
    ia->worldY = worldY;

    ia->left = qWorldX + Q(me->d.sData[0]) * TILE_WIDTH;
    ia->right = ia->left + Q(me->d.uData[2]) * TILE_WIDTH;

    ia->top = worldY + (Q(me->d.sData[1]) * TILE_WIDTH);
    ia->bottom = ia->top + (Q(me->d.uData[3]) * TILE_WIDTH);

    SET_MAP_ENTITY_INITIALIZED(me);
}
