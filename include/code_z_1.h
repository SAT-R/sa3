#ifndef GUARD_CODE_Z_1_H
#define GUARD_CODE_Z_1_H

#include "color.h"

// TODO: Better name
typedef struct {
    s8 r;
    s8 g;
    s8 b;
} MaskingColors;

// TODO: Better name
typedef struct {
    float r;
    float g;
    float b;
} MaskingColorsFloat;

// Copy colors (srcPalette -> gObjPalette) and mask them using gRgbMap
void CopyObjPaletteMasked(const ColorRaw *srcPalette, u8 destObjPaletteColorOffset, u16 numColors);
// Copy colors (srcPalette -> gBgPalette) and mask them using gRgbMap
void CopyBgPaletteMasked(const ColorRaw *srcPalette, u8 destBgPaletteOffset, u16 numColors);

void *sub_80C4C60(void *param0, u8 param1);
void sub_80C4E24(void *param0, u8 param1, u32 *param2);
void sub_80C4EB0(void *param0, u8 param1, u32 mask);
void sub_80C59E8(void *param0, u8 param1, s32 *screenPos, u8 *arr4, s16 param4);
void sub_80C60B0(void **param0, u8 param1);
void sub_80C610C(void *param0, u8 param1);

typedef struct {
    u16 unk0;
    u8 unk2;
    s32 unk4;
    u16 unk8;
    u16 unkA;
    /* 0x04 */ u8 fillerC[8];
    Sprite *spr14;
} UnknownIwramData;

typedef struct {
    u8 *vram0;
    u8 unk2;
    s32 unk4;
    u16 unk8;
    u16 unkA;
    /* 0x04 */ u8 fillerC[8];
    Sprite *spr14;
} UnknownIwramDataB;

void *sub_80C4C60(UnknownColorStruct **param0, u8 hitboxCount);

#endif // GUARD_CODE_Z_1_H