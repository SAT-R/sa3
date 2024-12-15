#include "global.h"
#include "task.h"
#include "malloc_vram.h"
#include "module_unclear.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/enemy_unknown.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"

typedef struct {
    /* 0x00 */ MapEntity *me;
    /* 0x04 */ u8 id;
    /* 0x05 */ u8 spriteX;
    /* 0x06 */ u8 unk6;
    /* 0x07 */ u8 unk7;
    /* 0x08 */ u16 unk8;
    /* 0x0A */ u16 region[2];
    /* 0x0E */ s8 direction;
    /* 0x0F */ u8 unkF;
    /* 0x18 */ s32 qUnk10;
    /* 0x1C */ s32 qUnk14;
    /* 0x18 */ s32 qUnk18;
    /* 0x1C */ s32 qUnk1C;
    /* 0x20 */ Vec2_32 qPos;
    /* 0x28 */ Vec2_32 qUnk28;
    /* 0x30 */ Sprite s;
    /* 0x58 */ Hitbox reserved;
} Jousun; /* size: 0x60 */

extern const TileInfo2 gUnknown_080D1F2C[4]; // Jousun

#define isBetween(v, min, onePastMax) (((v) >= (min)) && ((v) < onePastMax))

void sub_805B980(Jousun *enemy)
{
    void *tiles = ALLOC_TILES(ANIM_JOUSUN);
    Sprite *s = &enemy->s;
    s->tiles = tiles;

    s->anim = gUnknown_080D1F2C[0].anim;
    s->variant = gUnknown_080D1F2C[0].variant;
    s->prevVariant = -1;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;

    UpdateSpriteAnimation(s);
}