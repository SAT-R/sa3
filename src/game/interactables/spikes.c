#include "global.h"
#include "module_unclear.h"
#include "core.h"
#include "sprite.h"
#include "trig.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/player_callbacks.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"
#include "constants/songs.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ u8 kind;
} Spikes;

void Task_Spikes7(void);
void Task_Spikes_4_6(void);
void sub_8030D30(s16 param0, Sprite *s);
void sub_8030EC8(s16 param0, Sprite *s);
void TaskDestructor_Spikes(struct Task *t);

void CreateSpikes(u8 kind, MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t;
    Spikes *spikes;
    Sprite *s;

    if (gStageData.gameMode != GAME_MODE_MP_SINGLE_PACK) {
        if (kind < 4) {
            t = TaskCreate(Task_Spikes7, sizeof(Spikes), 0x2100, 0, TaskDestructor_Spikes);
        } else {
            t = TaskCreate(Task_Spikes_4_6, sizeof(Spikes), 0x2100, 0, TaskDestructor_Spikes);
        }
    } else {
        t = TaskCreate(Task_Spikes7, sizeof(Spikes), 0x2100, 0, TaskDestructor_Spikes);
    }

    spikes = TASK_DATA(t);
    s = &spikes->s;

    spikes->base.regionX = regionX;
    spikes->base.regionY = regionY;
    spikes->base.me = me;
    spikes->base.spriteX = me->x;
    spikes->base.id = id;
    spikes->kind = kind;

    // NOTE: Sprite pos set to World pos, instead of screen pos
    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    if (gStageData.gameMode != GAME_MODE_MP_SINGLE_PACK) {
        if (kind < 4) {
            sub_8030D30(spikes->kind, s);
        } else {
            sub_8030EC8(spikes->kind, s);
        }
    } else {
        sub_8030D30(spikes->kind, s);
    }
}
