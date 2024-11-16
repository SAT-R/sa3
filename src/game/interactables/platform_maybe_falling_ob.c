#include "global.h"
#include "core.h"
#include "trig.h"
#include "sprite.h"
#include "malloc_vram.h"
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
    /* 0x34 */ u8 filler34[0x78];
    /* 0xAC */ void *tiles;
    /* 0xB0 */ u8 unkB0;
    /* 0xB1 */ u8 unkB1;
    /* 0xB2 */ s16 unkB2;
    /* 0xB4 */ s16 unkB4;
    /* 0xB6 */ s16 unkB6;
    /* 0xB8 */ s16 unkB8;
    /* 0xBA */ s16 unkBA;
    /* 0xBC */ s16 unkBC;
    /* 0xBE */ s16 unkBE;
    /* 0xBE */ s16 unkC0;
    /* 0xBE */ s16 unkC2;
} PlatformMaybeFalling; /* 0xC4 */

void Task_PlatformMaybeFalling(void);
void sub_8042EA8(PlatformMaybeFalling *platform);
void TaskDestructor_PlatformMaybeFalling(struct Task *t);

void CreateEntity_PlatformMaybeFalling(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_PlatformMaybeFalling, sizeof(PlatformMaybeFalling), 0x2100, 0, TaskDestructor_PlatformMaybeFalling);
    PlatformMaybeFalling *platform = TASK_DATA(t);

    platform->base.regionX = regionX;
    platform->base.regionY = regionY;
    platform->base.me = me;
    platform->base.spriteX = me->x;
    platform->base.id = id;

    platform->unkB0 = 2;
    platform->unkB1 = GetBit(me->d.uData[4], 7);
    platform->unkB2 = 0;
    platform->unkB4 = 40;
    platform->unkBC = 18;
    platform->unkB6 = 40;
    platform->unkBE = -24;
    platform->unkB8 = -40;
    platform->unkC0 = 18;
    platform->unkBA = -40;
    platform->unkC2 = -24;

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_8042EA8(platform);
}
