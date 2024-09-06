#include "global.h"
#include "task.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/stage.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s[2];
    /* 0x5C */ u8 filler[0x4];
} GoalRing; /* 0x60 */

void Task_GoalRing(void);
void TaskDestructor_GoalRing(struct Task *);
void sub_80340B4(Sprite *);

void CreateEntity_GoalRing(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    if (gStageData.unk4 == 3) {
        struct Task *t = TaskCreate(Task_GoalRing, sizeof(GoalRing), 0x2100, 0, TaskDestructor_GoalRing);
        GoalRing *ring = TASK_DATA(t);
        Sprite *s = &ring->s[0];
        s16 i;

        ring->base.regionX = regionX;
        ring->base.regionY = regionY;
        ring->base.me = me;
        ring->base.spriteX = me->x;
        ring->base.id = id;

        for (i = 0; i < 2; i++, s++) {
            // NOTE: Technically this is incorrect, since Sprite
            //       coordinates are usually in screen-space.
            s->x = TO_WORLD_POS(me->x, regionX);
            s->y = TO_WORLD_POS(me->y, regionY);
        }

        SET_MAP_ENTITY_INITIALIZED(me);

        sub_80340B4(ring->s);
    }
}
