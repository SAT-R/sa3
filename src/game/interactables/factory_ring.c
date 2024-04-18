#include "global.h"
#include "malloc_vram.h"
#include "sprite.h"
#include "game/camera.h"
#include "game/entity.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"

typedef struct {
    SpriteBase base;
    Sprite s;
} FactoryRing; /* size: 0x34 */

void Task_FactoryRingMain(void);
void TaskDestructor_FactoryRing(struct Task *t);
void sub_8041368(Sprite *s);

void sub_8041248(void)
{
    FactoryRing *ring = TASK_DATA(gCurTask);
    Sprite *s = &ring->s;
    MapEntity *me = ring->base.me;
    s16 worldX, worldY;

    worldX = TO_WORLD_POS(ring->base.spriteX, ring->base.regionX);
    worldY = TO_WORLD_POS(me->y, ring->base.regionY);

    if (!IsPointInScreenRect(worldX, worldY)) {
        me->x = ring->base.spriteX;
        TaskDestroy(gCurTask);
        return;
    }

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void CreateEntity_FactoryRing(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_FactoryRingMain, sizeof(FactoryRing), 0x2100, 0,
                                TaskDestructor_FactoryRing);
    FactoryRing *ring = TASK_DATA(t);
    Sprite *s;

    ring->base.regionX = regionX;
    ring->base.regionY = regionY;
    ring->base.me = me;
    ring->base.spriteX = me->x;
    ring->base.spriteY = id;

    s = &ring->s;
    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);
    SET_MAP_ENTITY_INITIALIZED(me);

    sub_8041368(s);
}

void TaskDestructor_FactoryRing(struct Task *t)
{
    FactoryRing *ring = TASK_DATA(t);
    VramFree(ring->s.tiles);
}

void sub_8041368(Sprite *s)
{
    s->tiles = ALLOC_TILES(ANIM_FACTORY_RING);
    s->anim = ANIM_FACTORY_RING;
    s->variant = 0;
    s->oamFlags = SPRITE_OAM_ORDER(24);
    s->animCursor = 0;
    s->timeUntilNextFrame = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
    UpdateSpriteAnimation(s);
}