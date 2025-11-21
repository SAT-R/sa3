#include "global.h"
#include "core.h"
#include "game/camera.h"
#include "malloc_vram.h"

typedef struct Yukigasen {
    /* 0x00 */ u8 filler0[0xA];
    /* 0x0A */ u16 unkA;
    /* 0x0C */ u16 unkC;
    /* 0x0E */ u8 fillerE[0xA];
    /* 0x18 */ s32 unk18;
    /* 0x1C */ s32 unk1C;
    /* 0x20 */ Sprite s;
    /* 0x00 */ u8 filler20[0x28];
} Yukigasen; /* 0x48 */

extern const TileInfo2 gUnknown_080D2024[4];

void sub_806098C(Yukigasen *enemy, u8 param1)
{
    u8 *tiles = VramMalloc(0x10U);
    Sprite *s = &enemy->s;

    s->tiles = tiles;
    s->anim = gUnknown_080D2024[0].anim;
    s->variant = gUnknown_080D2024[0].variant;
    s->prevVariant = -1;
    s->x = TO_WORLD_POS_RAW(I(enemy->unk18), enemy->unkA) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->unk1C), enemy->unkC) - gCamera.y;
    s->oamFlags = 0x480;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0x1000;

    if (param1 == 2) {
        s->frameFlags |= 0x400;
        s->frameFlags |= 0x1000;
    }

    s->hitboxes[0].index = -1;
    UpdateSpriteAnimation(s);
}
