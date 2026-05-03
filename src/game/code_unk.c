#include "global.h"
#include "core.h"
#include "flags.h"
#include "constants/anim_commands.h"

#ifndef NON_MATCHING
#define COLOR_SIZE 2
#else
#define COLOR_SIZE sizeof(ColorRaw)
#endif

// gCamera.task54 <--
typedef struct StrcCodeUnk {
    /* 0x00 */ u8 padding0[0x14];
    /* 0x14 */ Sprite s;
    /* 0x3C */ u16 palette[32 * PALETTE_LEN_4BPP];
} StrcCodeUnk; /* 0x43C */

void sub_8052D2C(StrcCodeUnk *strc) { }

void CopyNColorsFromAnimPalette(u16 *destPalette, AnimId anim, u16 numColors)
{
    const ACmd **animData;
    s32 *animDataPattern0;

    animData = gAnimations[anim];
    animDataPattern0 = (s32 *)*animData;
    if (*animDataPattern0++ == ANIM_CMD__PALETTE) {
        s32 paletteId = *animDataPattern0;
        DmaCopy32(3, &gRefSpriteTables->palettes[paletteId * PALETTE_LEN_4BPP], destPalette, numColors * COLOR_SIZE);
        gFlags |= FLAGS_UPDATE_SPRITE_PALETTES;
    }
}
