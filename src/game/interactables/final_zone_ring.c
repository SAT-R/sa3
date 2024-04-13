#include "global.h"
#include "sprite.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/save.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ s16 worldX;
    /* 0x36 */ s16 worldY;
} FinalZoneRing; /* size: 0x38 */

void Task_FinalZoneRing(void);
void TaskDestructor_FinalZoneRing(struct Task *t);
void InitFinalZoneRingSprite(Sprite *s);

void CreateEntity_FinalZoneRing(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    if (gSaveGame.unlockedZones > ZONE_FINAL) {
        struct Task *t = TaskCreate(Task_FinalZoneRing, sizeof(FinalZoneRing), 0x2100, 0,
                                    TaskDestructor_FinalZoneRing);
        FinalZoneRing *ring = TASK_DATA(t);
        Sprite *s;

        ring->base.regionX = regionX;
        ring->base.regionY = regionY;
        ring->base.me = me;
        ring->base.spriteX = me->x;
        ring->base.spriteY = id;
        ring->worldX = TO_WORLD_POS(me->x, regionX);
        ring->worldY = TO_WORLD_POS(me->y, regionY);

        s = &ring->s;
        s->x = ring->worldX - gCamera.x;
        s->y = ring->worldY - gCamera.y;
        InitFinalZoneRingSprite(s);
    }

    SET_MAP_ENTITY_INITIALIZED(me);
}