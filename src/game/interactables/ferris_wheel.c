#include "global.h"
#include "sprite.h"
#include "task.h"
#include "trig.h"
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
    /* 0x34 */ Sprite s2;
    /* 0x5C */ u8 filler5C[0x60];
    /* 0xBC */ u16 unkBC;
    /* 0xBE */ u16 unkBE;
    /* 0xC0 */ u8 unkC0;
    /* 0xC1 */ u8 unkC1;
    /* 0xC2 */ u8 unkC2;
    /* 0xC3 */ u8 unkC3;
    /* 0xC4 */ s32 worldX;
    /* 0xC8 */ s32 worldY;
    /* 0xCC */ void *tiles;
} FerrisWheel; /* size: 0xD0 */

void Task_FerrisWheel(void);
void sub_8046E20(FerrisWheel *);
void TaskDestructor_FerrisWheel(struct Task *t);

void CreateEntity_FerrisWheel(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_FerrisWheel, sizeof(FerrisWheel), 0x2100, 0, TaskDestructor_FerrisWheel);
    FerrisWheel *wheel = TASK_DATA(t);

    wheel->base.regionX = regionX;
    wheel->base.regionY = regionY;
    wheel->base.me = me;
    wheel->base.spriteX = me->x;
    wheel->base.id = id;

    wheel->unkBC = me->d.uData[4] & 0x1;
    wheel->unkBE = 0;
    wheel->unkC2 = 0;
    wheel->unkC3 = 0;
    wheel->unkC0 = 0xFF;
    wheel->unkC1 = 0xFF;

    wheel->worldX = TO_WORLD_POS(me->x, regionX);
    wheel->worldY = TO_WORLD_POS(me->y, regionY);

    sub_8046E20(wheel);

    SET_MAP_ENTITY_INITIALIZED(me);
}

#if 0
#endif