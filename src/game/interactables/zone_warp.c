#include "global.h"
#include "module_unclear.h"
#include "core.h"
#include "sprite.h"
#include "trig.h"
#include "malloc_vram.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/player_callbacks.h"
#include "game/save.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ u8 kind;
} ZoneWarp; /* size: 0x38 */

void Task_ZoneWarpInit(void);
void TaskDestructor_ZoneWarp(struct Task *);
void sub_802DC20(s16, Sprite *);

void CreateEntity_ZoneWarp(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    s16 i;

    for (i = 0; i < 6; i++) {
        if (GetBit(me->d.uData[4], i)) {
            break;
        }
    }

    if (gStageData.zone <= i) {
        i++;
    }

    if (gSaveGame.unlockedZones - 1 >= i) {
        struct Task *t = TaskCreate(Task_ZoneWarpInit, sizeof(ZoneWarp), 0x2100, 0, TaskDestructor_ZoneWarp);
        ZoneWarp *warp = TASK_DATA(t);
        Sprite *s = &warp->s;

        warp->base.regionX = regionX;
        warp->base.regionY = regionY;
        warp->base.me = me;
        warp->base.spriteX = me->x;
        warp->base.id = id;
        warp->kind = i;

        s->x = TO_WORLD_POS(me->x, regionX);
        s->y = TO_WORLD_POS(me->y, regionY);

        SET_MAP_ENTITY_INITIALIZED(me);
        sub_802DC20(i, s);
    }
}