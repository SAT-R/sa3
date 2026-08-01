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

typedef struct {
    u16 anim;
    u8 variant;
    u8 unk3;
    u32 unk4;
    u8 filler8[0xC];
    s32 unk14;
    s32 unk18;
} UnknownColorStruct;

typedef struct {
    u16 unk0;
    u8 unk2;
    u32 unk4;
    u16 unk8;
    u16 unkA;
    u8 fillerC[8];
    Sprite *spr14;
    const UnknownColorStruct *unk18;
    u8 filler1C[0x4];
    s32 *unk20;
    s32 *unk24;
    s32 unk28;
    u16 unk2C;
    void *unk30[2]; // TODO: array-count unknown!
} UnknownIwramData;
typedef struct {
    Sprite s;
} UnknownIwramDataB;

// Copy colors (srcPalette -> gObjPalette) and mask them using gRgbMap
void CopyObjPaletteMasked(const ColorRaw *srcPalette, u8 destObjPaletteColorOffset, u16 numColors);
// Copy colors (srcPalette -> gBgPalette) and mask them using gRgbMap
void CopyBgPaletteMasked(const ColorRaw *srcPalette, u8 destBgPaletteOffset, u16 numColors);

void *sub_80C4C60(const UnknownColorStruct **param0, u8 hitboxCount);
void sub_80C4E24(void *param0, u8 param1, u32 *param2);
void sub_80C4EB0(void *param0, u8 param1, u32 mask);
void sub_80C59E8(void *param0, u8 param1, s32 *screenPos, u8 *arr4, s16 param4);
void sub_80C60B0(void **param0, u8 param1);
void sub_80C610C(void *param0, u8 param1);


#endif // GUARD_CODE_Z_1_H