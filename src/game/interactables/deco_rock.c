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
    /* 0x34 */ Sprite s2;
    /* 0x5C */ Sprite s3;
    /* 0x84 */ u8 unk84;
    /* 0x85 */ u8 unk85;
    /* 0x86 */ u8 unk86;
    /* 0x87 */ u8 unk87;
    /* 0x88 */ Vec2_32 qPositions[4];
    /* 0x88 */ u8 fillerA8[0x10];
} DecoRock; /* 0xB8 */

void Task_DecoRockInit(void);
void TaskDestructor_DecoRock(struct Task *t);
void sub_803765C(Sprite *s, Sprite *s2, Sprite *s3);

void CreateEntity_DecoRock(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_DecoRockInit, sizeof(DecoRock), 0x2100, 0, TaskDestructor_DecoRock);
    DecoRock *deco = TASK_DATA(t);
    Sprite *s, *s2, *s3;
    u8 i;

    s = &deco->s;
    s2 = &deco->s2;
    s3 = &deco->s3;

    deco->base.regionX = regionX;
    deco->base.regionY = regionY;
    deco->base.me = me;
    deco->base.spriteX = me->x;
    deco->base.id = id;

    deco->unk86 = 0;
    deco->unk85 = me->d.uData[0];

    if (deco->unk85 == 0) {
        deco->unk85 = 1;
    }

    // NOTE: Sprite.x|y should be screen pos, not world pos!
    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);
    s2->x = s->x;
    s2->y = s->y;
    s3->x = s->x;
    s3->y = s->y;

    for (i = 0; i < 4; i++) {
        deco->qPositions[i].x = Q(s->x);
        deco->qPositions[i].y = Q(s->y);
    }

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_803765C(s, s2, s3);
}