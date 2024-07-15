#include "global.h"
#include "task.h"
#include "game/game.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/save.h"
#include "game/stage.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s0;
    /* 0x34 */ Sprite s1;
    /* 0x5C */ s16 worldX;
    /* 0x5E */ s16 worldY;
    /* 0x60 */ u8 unk60;
    /* 0x61 */ u8 act;
    /* 0x62 */ u8 unk62;
    /* 0x63 */ u8 unk63;
} ActRing; /* size: 0x64 */

void Task_ActRingMain(void);
void TaskDestructor_ActRing(struct Task *);
void sub_8040B34(ActRing *);

void CreateEntity_ActRing(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_ActRingMain, sizeof(ActRing), 0x2100, 0, TaskDestructor_ActRing);
    ActRing *ring = TASK_DATA(t);
    s16 act;

    ring->base.regionX = regionX;
    ring->base.regionY = regionY;
    ring->base.me = me;
    ring->base.spriteX = me->x;
    ring->base.id = id;

    for (act = 0; act < 3; act++) {
        if ((me->d.uData[4] >> act) & 0x1) {
            break;
        }
    }

    ring->worldX = TO_WORLD_POS(me->x, regionX);
    ring->worldY = TO_WORLD_POS(me->y, regionY);
    ring->act = act;
    ring->unk60 = 0;
    ring->unk62 = me->d.uData[4] >> 7;
    ring->unk63 = ((gSaveGame.unlockedStages[gStageData.zone] >> act) & 0x1);

    {
        Sprite *s = &ring->s0;
        s->x = ring->worldX - gCamera.x;
        s->y = ring->worldY - gCamera.y;
    }

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_8040B34(ring);
}
