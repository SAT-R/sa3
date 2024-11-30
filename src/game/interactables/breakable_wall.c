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
    /* 0x00 */ SpriteBase2 base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ s16 worldX;
    /* 0x36 */ s16 worldY;
    /* 0x38 */ u8 unk38;
    /* 0x39 */ u8 unk39;
    /* 0x3A */ u8 unk3A;
} BreakableWall; /* 0x3C */

void Task_BreakableWall(void);
void sub_803516C(Sprite *s, u8 param1);
void TaskDestructor_BreakableWall(struct Task *t);

void CreateEntity_BreakableWall(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_BreakableWall, sizeof(BreakableWall), 0x2100, 0, TaskDestructor_BreakableWall);
    BreakableWall *wall = TASK_DATA(t);
    Sprite *s;
    s16 i;

    wall->base.regionX = regionX;
    wall->base.regionY = regionY;
    wall->base.me = me;
    wall->base.spriteX = me->x;
    wall->base.id = id;
    wall->base.unk8 = 0;

    wall->worldX = TO_WORLD_POS(me->x, regionX);
    wall->worldY = TO_WORLD_POS(me->y, regionY);

    for (i = 0; i < 3; i++) {
        if (GetBit(me->d.uData[4], i)) {
            break;
        }
    }

    wall->unk39 = i;
    wall->unk38 = me->d.uData[4] >> 7;
    wall->unk3A = me->d.sData[0];

    s = &wall->s;
    s->x = wall->worldX - gCamera.x;
    s->y = wall->worldY - gCamera.y;

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_803516C(s, wall->unk38);
}
