#include "global.h"
#include "malloc_vram.h"
#include "sprite.h"
#include "task.h"
#include "game/camera.h"

#include "constants/anim_sizes.h"
#include "constants/animations.h"

typedef struct {
    /* 0x00 */ u8 filler0[0x6];
    /* 0x06 */ u16 unk6; // someX
    /* 0x08 */ u16 unk8; // someY
    /* 0x0A */ u8 fillerA[0xA];
    /* 0x14 */ s32 posX;
    /* 0x18 */ s32 posY;
    /* 0x1C */ Sprite s;
} Spinner; /* size: 0x4C */

void sub_8058C74(Spinner *spinner)
{
    Sprite *s;
    void *tiles;
    s32 screenX, screenY;

    tiles = ALLOC_TILES(ANIM_SPINNER);
    s = &spinner->s;
    s->tiles = tiles;
    s->anim = ANIM_SPINNER;
    s->variant = 0;
    s->prevVariant = -1;

    // TODO: I + Q doesn't make sense!
    screenX = I(spinner->posX) + Q(spinner->unk6);
    s->x = screenX - gCamera.x;

    // TODO: I + Q doesn't make sense!
    screenY = I(spinner->posY) + Q(spinner->unk8);
    s->y = screenY - gCamera.y;

    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->animCursor = 0;
    s->timeUntilNextFrame = 0;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;

    UpdateSpriteAnimation(s);
}
