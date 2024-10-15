#include "global.h"
#include "malloc_vram.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/player_callbacks.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ Sprite s2;

    /* 0x5C */ u8 filler54[0x8];
    /* 0x64 */ s16 worldX;
    /* 0x66 */ s16 worldY;
    /* 0x68 */ u8 unk68;
    /* 0x69 */ bool8 unk69;
    /* 0x69 */ u16 unk6A;
} Suction; /* 0x6C */

void Task_Suction(void);
void TaskDestructor_Suction(struct Task *);
void sub_80433C8(Suction *);

void CreateEntity_Suction(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Suction, sizeof(Suction), 0x2100, 0, TaskDestructor_Suction);
    Suction *suction = TASK_DATA(t);
    Sprite *s;
    s16 i;

    suction->base.regionX = regionX;
    suction->base.regionY = regionY;
    suction->base.me = me;
    suction->base.spriteX = me->x;
    suction->base.id = id;

    suction->unk69 = (me->d.uData[4] & 0xF0) ? 1 : 0;

    for (i = 0; i < 8; i++) {
        if ((me->d.uData[4] >> i) & 0x1) {
            suction->unk68 = i;
            break;
        }
    }

    if (suction->unk68 >= 4) {
        suction->unk68 -= 4;
    }

    suction->unk6A = 0;

    suction->worldX = TO_WORLD_POS(me->x, regionX);
    suction->worldY = TO_WORLD_POS(me->y, regionY);

    s = &suction->s2;
    s->x = suction->worldX - gCamera.x;
    s->y = suction->worldY - gCamera.y;

    suction->s.tiles = NULL;

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_80433C8(suction);
}
