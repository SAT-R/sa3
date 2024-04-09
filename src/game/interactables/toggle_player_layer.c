#include "sprite.h"
#include "task.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/stage.h"

// NOTE(Jace): PL_TYPE and Interactable-IDs do differ!
// IA000: PL_TYPE_2
// IA001: PL_TYPE_FRONT
// IA002: PL_TYPE_BACK

#define PL_TYPE_FRONT 0
#define PL_TYPE_BACK  1
#define PL_TYPE_2     2

typedef struct {
    SpriteBase base;
} TogglePlayerLayer;

void Task_Toggle_PlayerLayer(void);
void sub_802E4C8(u16 layerType, MapEntity *me, u16 regionX, u16 regionY, u8 id);

void CreateEntity_Interactable000(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    sub_802E4C8(PL_TYPE_2, me, regionX, regionY, id);
}

void CreateEntity_Interactable001(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    sub_802E4C8(PL_TYPE_FRONT, me, regionX, regionY, id);
}

void CreateEntity_Interactable002(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    sub_802E4C8(PL_TYPE_BACK, me, regionX, regionY, id);
}

void sub_802E4C8(u16 layerType, MapEntity *me, u16 regionX, u16 regionY, u8 UNUSED id)
{
    struct Task *t = TaskCreate(Task_Toggle_PlayerLayer, sizeof(TogglePlayerLayer),
                                0x2000, 0, NULL);
    TogglePlayerLayer *layer = TASK_DATA(t);

    layer->base.regionX = regionX;
    layer->base.regionY = regionY;
    layer->base.me = me;
    layer->base.unk8 = me->x;
    layer->base.unk9 = layerType;

    SET_MAP_ENTITY_INITIALIZED(me);
}