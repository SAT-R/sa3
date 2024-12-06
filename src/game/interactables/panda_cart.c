#include "global.h"
#include "module_unclear.h"
#include "core.h"
#include "sprite.h"
#include "trig.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/parameters/interactables.h"
#include "game/player.h"
#include "game/player_callbacks.h"
#include "game/stage.h"
#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"
#include "constants/songs.h"
#include "constants/zones.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"
#include "constants/songs.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ Hitbox reserved;
    /* 0x3C */ s32 qWorldX;
    /* 0x40 */ s32 qWorldY;
    /* 0x44 */ s32 unk44;
    /* 0x48 */ s32 unk48;
    /* 0x4C */ s32 unk4C;
    /* 0x50 */ s32 unk50;
    /* 0x54 */ u8 unk54;
    /* 0x55 */ u8 unk55;
    /* 0x56 */ u8 unk56;
    /* 0x57 */ u8 unk57;
    /* 0x58 */ u8 filler54[0x60];
    /* 0xB8 */ Sprite sprB8[3];
} PandaCart; /* 0x6C */

void Task_PandaCartInit(void);
void TaskDestructor_PandaCart(struct Task *t);

void sub_8048FF8(Sprite *);
void sub_8048D98(PandaCart *);

void CreateEntity_PandaCart(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_PandaCartInit, sizeof(PandaCart), 0x2100, 0, TaskDestructor_PandaCart);
    PandaCart *cart = TASK_DATA(t);
    Sprite *s;

    cart->base.regionX = regionX;
    cart->base.regionY = regionY;
    cart->base.me = me;
    cart->base.spriteX = me->x;
    cart->base.id = id;

    cart->qWorldX = Q(TO_WORLD_POS(me->x, regionX));
    cart->qWorldY = Q(TO_WORLD_POS(me->y, regionY));

    cart->unk44 = 0;
    cart->unk48 = 0;
    cart->unk4C = 0;
    cart->unk50 = 0;
    cart->unk54 = me->d.uData[4] & 0x1;
    cart->unk55 = 0;
    cart->unk56 = 0;
    cart->unk57 = 0;

    s = &cart->s;
    s->x = I(cart->qWorldX) - gCamera.x;
    s->y = I(cart->qWorldY) - gCamera.y;

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_8048FF8(s);
    sub_8048D98(cart);
}
