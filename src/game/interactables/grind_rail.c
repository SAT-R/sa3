#include "global.h"
#include "core.h"
#include "trig.h"
#include "sprite.h"
#include "malloc_vram.h"
#include "module_unclear.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/player_callbacks.h"
#include "game/stage.h"
#include "game/interactables/platform_shared.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"
#include "constants/songs.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ u8 unkC;
    /* 0x0D */ u8 unkD;
    /* 0x0E */ u8 unkE;
} GrindRail;

void sub_8039230(void);

void CreateGrindRail(u8 kind, MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(sub_8039230, sizeof(GrindRail), 0x2100, 0, NULL);
    GrindRail *rail = TASK_DATA(t);
    s16 i;

    rail->base.regionX = regionX;
    rail->base.regionY = regionY;
    rail->base.me = me;
    rail->base.spriteX = me->x;
    rail->base.id = id;

    rail->unkC = me->d.uData[4] >> 6;

    i = GetFirstSetBitIndex(me->d.uData[4], 6);

    rail->unkD = 1 + i;
    rail->unkE = kind;

    SET_MAP_ENTITY_INITIALIZED(me);
}