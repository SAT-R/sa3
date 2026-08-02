#include <math.h> // powf
#include <limits.h> // UINT_MAX, USHRT_MAX
#include "global.h"
#include "flags.h"
#include "malloc_vram.h"
#include "core.h"
#include "color.h"
#include "code_z_1.h"

// Copy colors (srcPalette -> gObjPalette) and mask them using gRgbMap
void CopyObjPaletteMasked(const ColorRaw *srcPalette, u8 destObjPaletteColorOffset, u16 numColors)
{
    u16 i;

    for (i = 0; i < numColors; srcPalette++, i++) {
        gObjPalette[destObjPaletteColorOffset + i] = //
            gRgbMap[R_CHANNEL][R_GET(*srcPalette)] | //
            gRgbMap[G_CHANNEL][G_GET(*srcPalette)] | //
            gRgbMap[B_CHANNEL][B_GET(*srcPalette)]; //
    }

    if (gUnknown_03003C08 != NULL) {
        gUnknown_03003C08(gObjPalette, destObjPaletteColorOffset, numColors);
    }

    gFlags |= FLAGS_UPDATE_SPRITE_PALETTES;
}

// Copy colors (srcPalette -> gBgPalette) and mask them using gRgbMap
void CopyBgPaletteMasked(const ColorRaw *srcPalette, u8 destBgPaletteColorOffset, u16 numColors)
{
    u16 i;

    for (i = 0; i < numColors; srcPalette++, i++) {
        gBgPalette[destBgPaletteColorOffset + i] = //
            gRgbMap[0][(R_MASK & *srcPalette) >> R_SHIFT] | //
            gRgbMap[1][(G_MASK & *srcPalette) >> G_SHIFT] | //
            gRgbMap[2][(B_MASK & *srcPalette) >> B_SHIFT];
    }

    if (gUnknown_03003C08 != NULL) {
        gUnknown_03003C08(gBgPalette, destBgPaletteColorOffset, numColors);
    }

    gFlags |= FLAGS_UPDATE_BACKGROUND_PALETTES;
}

// Inverts the colors in gRgbMap
void InvertRgbMap(void)
{
    u8 i;

    for (i = 0; i < ARRAY_COUNT(gRgbMap[R_CHANNEL]); i++) {
        gRgbMap[R_CHANNEL][i] = R_MASK - gRgbMap[R_CHANNEL][i];
        gRgbMap[G_CHANNEL][i] = G_MASK - gRgbMap[G_CHANNEL][i];
        gRgbMap[B_CHANNEL][i] = B_MASK - gRgbMap[B_CHANNEL][i];
    }
}

void sub_80C470C(MaskingColors *arg0)
{
    u8 i;

    // NOTE(Jace): For 32bit RGBA, these could just simply be set without shifts + masking!
    for (i = 0; i < ARRAY_COUNT(gRgbMap[0]); i++) {
        s32 color = (gRgbMap[R_CHANNEL][i] >> R_SHIFT) + arg0->r;
        if (color < 0) {
            gRgbMap[R_CHANNEL][i] = 0;
        } else if (color > COLOR_MASK) {
            gRgbMap[R_CHANNEL][i] = R_MASK;
        } else {
#if USING_ABGR_1555_COLORS
            gRgbMap[R_CHANNEL][i] = color;
#else
            gRgbMap[R_CHANNEL][i] = (color << R_SHIFT) & R_MASK;
#endif
        }

        color = (gRgbMap[G_CHANNEL][i] >> G_SHIFT) + arg0->g;
        if (color < 0) {
            gRgbMap[G_CHANNEL][i] = 0;
        } else if (color > COLOR_MASK) {
            gRgbMap[G_CHANNEL][i] = G_MASK;
        } else {
            gRgbMap[G_CHANNEL][i] = (color << G_SHIFT) & G_MASK;
        }

        color = (gRgbMap[B_CHANNEL][i] >> B_SHIFT) + arg0->b;
        if (color < 0) {
            gRgbMap[B_CHANNEL][i] = 0;
        } else if (color > COLOR_MASK) {
            gRgbMap[B_CHANNEL][i] = B_MASK;
        } else {
            gRgbMap[B_CHANNEL][i] = (color << B_SHIFT) & B_MASK;
        }
    }
}

void sub_80C47C0(MaskingColors *arg0)
{
    s32 sp0;
    ColorRawSigned signedFullColor;
    float temp_r0;
#if USING_ABGR_1555_COLORS
    float color;
#else
    double color;
#endif
    float colorG;
    float colorB;
    s32 newColor;
    u8 i;

    for (i = 0; i < ARRAY_COUNT(gRgbMap[R_CHANNEL]); i++) {
        signedFullColor = gRgbMap[R_CHANNEL][i];
        color = signedFullColor;
        if (signedFullColor < 0) {
#if USING_ABGR_1555_COLORS
            color += (float)(USHRT_MAX + 1);
#else
            // TODO: This should only be run on platforms using 32bit RGBA colors, to prevent overflows.
            color = (float)((double)color + (double)(UINT_MAX + 1));
#endif
        }

        newColor = ((color * ((arg0->r + 16.0f) / 16.f)) - (float)arg0->r);
        if (newColor < 0) {
            gRgbMap[R_CHANNEL][i] = 0;
        } else if (newColor > COLOR_MASK) {
            gRgbMap[R_CHANNEL][i] = R_MASK;
        } else {
            gRgbMap[R_CHANNEL][i] = newColor;
        }

        colorG = (gRgbMap[G_CHANNEL][i] >> G_SHIFT);
        newColor = ((colorG * ((arg0->g + 16.0f) / 16.f)) - (float)arg0->g);
        if (newColor < 0) {
            gRgbMap[G_CHANNEL][i] = 0;
        } else if (newColor > COLOR_MASK) {
            gRgbMap[G_CHANNEL][i] = G_MASK;
        } else {
            gRgbMap[G_CHANNEL][i] = (newColor << G_SHIFT) & G_MASK;
        }

        colorB = (gRgbMap[B_CHANNEL][i] >> B_SHIFT);
        newColor = ((colorB * ((arg0->b + 16.0f) / 16.f)) - (float)arg0->b);
        if (newColor < 0) {
            gRgbMap[B_CHANNEL][i] = 0;
        } else if (newColor > COLOR_MASK) {
            gRgbMap[B_CHANNEL][i] = B_MASK;
        } else {
            gRgbMap[B_CHANNEL][i] = (newColor << B_SHIFT) & B_MASK;
        }
    }
}

void sub_80C492C(MaskingColorsFloat *arg0)
{
    s16 *temp_r6;
    s16 temp_r4;
    s32 temp_r0_2;
    s32 temp_r0_3;
    float color;
    s32 var_r0_2;
    u8 temp_r0;
    u8 i;
    const float chanMax = (float)COLOR_MASK;

    for (i = 0; i < ARRAY_COUNT(gRgbMap[R_CHANNEL]); i++) {
        temp_r4 = gRgbMap[R_CHANNEL][i];
        color = (temp_r4);
        if (temp_r4 < 0) {
#if USING_ABGR_1555_COLORS
            color += (float)(USHRT_MAX + 1);
#else
            // TODO: This should only be run on platforms using 32bit RGBA colors, to prevent overflows.
            color = (float)((double)color + (double)(UINT_MAX + 1));
#endif
        }

        var_r0_2 = powf((color / chanMax), arg0->r) * chanMax;
        if (var_r0_2 < 0) {
            gRgbMap[R_CHANNEL][i] = 0;
        } else if (var_r0_2 > COLOR_MASK) {
            gRgbMap[R_CHANNEL][i] = R_MASK;
        } else {
            gRgbMap[R_CHANNEL][i] = var_r0_2;
        }

        temp_r0_2 = powf((gRgbMap[G_CHANNEL][i] >> G_SHIFT) / chanMax, arg0->g) * chanMax;
        if (temp_r0_2 < 0) {
            gRgbMap[G_CHANNEL][i] = 0;
        } else if (temp_r0_2 > R_MASK) {
            gRgbMap[G_CHANNEL][i] = G_MASK;
        } else {
            gRgbMap[G_CHANNEL][i] = temp_r0_2 << G_SHIFT;
        }

        temp_r0_3 = (powf((gRgbMap[B_CHANNEL][i] >> B_SHIFT) / chanMax, arg0->b) * chanMax);
        if (temp_r0_3 < 0) {
            gRgbMap[B_CHANNEL][i] = 0;
        } else if (temp_r0_3 > COLOR_MASK) {
            gRgbMap[B_CHANNEL][i] = B_MASK;
        } else {
            gRgbMap[B_CHANNEL][i] = temp_r0_3 << B_SHIFT;
        }
    }
}

void sub_80C4A30(ColorRaw *palette, u8 colorOffset, u16 numColors)
{
    u16 i;

    for (i = 0; i < numColors; i++) {
        {
            ColorRaw color;
            color = I((77 * ((R_MASK & palette[colorOffset + i]) >> R_SHIFT)) //
                      + (150 * ((G_MASK & palette[colorOffset + i]) >> G_SHIFT)) //
                      + (29 * ((B_MASK & palette[colorOffset + i]) >> B_SHIFT)));
            if (color > COLOR_MASK) {
                palette[colorOffset + i] = RGB_WHITE;
            } else {
                palette[colorOffset + i] = (color << R_SHIFT) | (color << G_SHIFT) | (color << B_SHIFT);
            }
        }
    }
}

void sub_80C4AB8(ColorRaw *palette, u8 colorOffset, u16 numColors)
{
    u16 i;

    for (i = 0; i < numColors; i++) {
        {
            ColorRaw color;
            color = I((77 * ((R_MASK & palette[colorOffset + i]) >> R_SHIFT)) + (150 * ((G_MASK & palette[colorOffset + i]) >> G_SHIFT))
                      + (29 * ((B_MASK & palette[colorOffset + i]) >> B_SHIFT)));
            if (color > COLOR_MASK) {
                palette[colorOffset + i] = 0x1BF;
            } else {
                palette[colorOffset + i] = color | (((s32)(color * 109) / 255) << G_SHIFT);
            }
        }
    }
}

void sub_80C4B48(void)
{
    u8 i;

    for (i = 0; i < ARRAY_COUNT(gRgbMap[R_CHANNEL]); i++) {
        gRgbMap[R_CHANNEL][i] = i << R_SHIFT;
        gRgbMap[G_CHANNEL][i] = i << G_SHIFT;
        gRgbMap[B_CHANNEL][i] = i << B_SHIFT;
    }

    gUnknown_03003C08 = NULL;
}

void sub_80C4B88(ColorRaw *palette, u8 colorOffset, u16 numColors)
{
    u16 i;

    for (i = 0; i < numColors; i++) {
        {
            s8 color;
            color = I((77 * ((R_MASK & palette[colorOffset + i]) >> R_SHIFT)) //
                      + (150 * ((G_MASK & palette[colorOffset + i]) >> G_SHIFT)) //
                      + (29 * ((B_MASK & palette[colorOffset + i]) >> B_SHIFT)));
            if (color >= 0 && color < 16) {
                palette[colorOffset + i] = 0;
            } else {
                palette[colorOffset + i] = RGB_WHITE;
            }
        }
    }
}

ColorRaw sub_80C4C0C(ColorRaw color)
{
    ColorRaw outColor = color;
    if (gFlags & FLAGS_10000) {
        outColor = (gRgbMap[R_CHANNEL][(color & R_MASK) >> R_SHIFT] //
                    | gRgbMap[G_CHANNEL][(color & G_MASK) >> G_SHIFT] //
                    | gRgbMap[B_CHANNEL][(color & B_MASK) >> B_SHIFT]);
    }

    return outColor;
}

void *sub_80C4C60(const UnknownColorStruct **param0, u8 hitboxCount)
{
    const UnknownColorStruct *temp_r1_2;
    const UnknownColorStruct *temp_r5;
    s32 temp_r1_3;
    u32 var_sl;
    u8 var_r1_2;
    u8 var_r5_2;
    UnknownIwramData *iwramDat;
    UnknownIwramDataB *iwramB;

    temp_r1_2 = *param0;
    if (temp_r1_2->anim == 0 && temp_r1_2->variant == 0 && temp_r1_2->unk3 == 0) {
        var_sl = temp_r1_2->unk14;
    } else {
        var_sl = temp_r1_2->unk18;
    }
    iwramDat = IwramMalloc(((var_sl * 4) + 0x30));
    iwramDat->unk8 = 0;
    iwramDat->unk2C = 0;
    temp_r5 = *param0;
    if (temp_r5->anim == 0 && temp_r5->variant == 0 && temp_r5->unk3 == 0) {
        iwramDat->unk24 = NULL;
        iwramDat->unk20 = NULL;
        iwramDat->spr14 = NULL;
        *param0 = (UnknownColorStruct *)&temp_r5->unk4;
    } else {
        iwramB = IwramMalloc((sizeof(Sprite) - sizeof(Hitbox)) + (hitboxCount * sizeof(Hitbox)));
        iwramDat->spr14 = (void *)iwramB;
        iwramDat->unk24 = (s32 *)temp_r5;
        iwramDat->unk20 = (s32 *)temp_r5;
        temp_r1_3 = temp_r5->unk4;

#if PLATFORM_GBA
        if ((0xF0000000 & temp_r5->unk4)) {
            iwramB->s.tiles = (void *)(temp_r5->unk4 & 0x0FFFFFFF);
            iwramB->s.oamFlags = (s16)(((u32)(iwramDat->unk4 << 10) >> 0x17) << 6);
            iwramDat->spr14->anim = (u16)temp_r5->anim;
            iwramDat->spr14->variant = (u8)temp_r5->variant;
            iwramDat->spr14->qAnimDelay = 0;
            iwramDat->spr14->prevVariant = 0xFF;
            iwramDat->spr14->animSpeed = 0x10;
            iwramDat->spr14->palId = 0;
            iwramDat->spr14->x = 0;
            iwramDat->spr14->y = 0;
            iwramDat->spr14->frameFlags = (((u32)(iwramDat->unk4 & 0xC00000) >> 10) | ((((u32)iwramDat->unk20[1] >> 28) - 1) << 15));
        } else
#endif
        {
            if (temp_r5->unk4 == 0) {
                iwramDat->spr14->tiles = VramMalloc(temp_r5->unk3);
                iwramDat->spr14->oamFlags = (s16)(((u32)(iwramDat->unk4 << 10) >> 0x17) << 6);

                iwramDat->spr14->anim = temp_r5->anim;
                iwramDat->spr14->variant = temp_r5->variant;
                iwramDat->spr14->qAnimDelay = 0;
                iwramDat->spr14->prevVariant = 0xFF;
                iwramDat->spr14->animSpeed = 0x10;
                iwramDat->spr14->palId = 0;
                iwramDat->spr14->x = 0;
                iwramDat->spr14->y = 0;
                iwramDat->spr14->frameFlags = (iwramDat->unk4 & 0xC00000) >> 10;
            } else {
#if PLATFORM_GBA
                iwramB->s.tiles = (void *)temp_r5->unk4;
#else
                iwramDat->spr14->tiles = VramMalloc(temp_r5->unk3);
#endif
                iwramB->s.oamFlags = (s16)(((u32)(iwramDat->unk4 << 10) >> 0x17) << 6);

                // TODO: Is iwramDat actually the correct base poiter here?
                iwramDat->spr14->anim = temp_r5->anim;
                iwramDat->spr14->variant = temp_r5->variant;
                iwramDat->spr14->qAnimDelay = 0;
                iwramDat->spr14->prevVariant = 0xFF;
                iwramDat->spr14->animSpeed = 0x10;
                iwramDat->spr14->palId = 0;
                iwramDat->spr14->x = 0;
                iwramDat->spr14->y = 0;
                iwramDat->spr14->frameFlags = (iwramDat->unk4 & 0xC00000) >> 10;
            }
        }

        for (var_r1_2 = 0; var_r1_2 < hitboxCount; var_r1_2++) {
            iwramDat->spr14->hitboxes[var_r1_2].index = -1;
        }
        *param0 = (void *)(((u8 *)(*param0)) + 8);
    }

    iwramDat->unk18 = *param0;
    DmaCopy32(3, iwramDat->unk18, &iwramDat->unk4, 0x10);
    *param0 = (void *)(((u8 *)iwramDat->unk18) + 0x14);
    iwramDat->unk2 = var_sl;
    if (iwramDat->unk2 != 0) {
        for (var_r5_2 = 0; var_r5_2 < iwramDat->unk2; var_r5_2++) {
            iwramDat->unk30[var_r5_2] = sub_80C4C60(param0, hitboxCount);
        }
    }
    return iwramDat;
}

void sub_80C4E24(UnknownIwramData **param0, u8 param1, s32 **param2)
{
    UnknownIwramData *iwramDat;
    s16 i;
    u16 temp_r0;
    u32 *temp_r1_2;

    for (i = 0; i < param1; i++) {
        s32 *ptr0;
        s32 *ptr;
        s32 val;
        iwramDat = param0[i];
        ptr0 = *param2;
        val = *ptr0;
        ptr = ptr0 + 1;
        *param2 += 1;
        ptr += val;
        iwramDat->unk0 = ptr0[1];
        iwramDat->unk1 = 0;
        *param2 += 1;
        iwramDat->unk1C = *param2;
        iwramDat->unk3 = iwramDat->unk1C[iwramDat->unk0 * 4];
        iwramDat->unk8 = 0xFFFF;
        DmaCopy32(3, iwramDat->unk1C, &iwramDat->unk4, 0x10);

        *param2 = ptr;
        if (iwramDat->unk2 != 0) {
            sub_80C4E24(iwramDat->unk30, iwramDat->unk2, param2);
        }
    }
}

#if 0
void sub_80C4EB0(UnknownIwramData **param0, u8 param1, u32 mask) {
    s32 spC;
    s32 sp14;
    s32 sp18;
    s32 sp1C;
    s32 sp20;
    s32 sp24;
    s32 sp28;
    s32 sp2C;
    void *sp30;
    s32 sp34;
    u32 sp38;
    s32 sp3C;
    Sprite *temp_r2_7;
    s16 temp_r2_5;
    s16 temp_r2_6;
    s16 temp_r3_3;
    s16 temp_r4_2;
    s16 var_r2_2;
    s16 var_sb;
    s32 temp_r0;
    s32 temp_r0_13;
    s32 temp_r2;
    s32 temp_r2_4;
    s32 temp_r3_2;
    s32 temp_r3_4;
    s32 temp_r7_2;
    u16 temp_r0_2;
    u16 temp_r0_3;
    u16 temp_r0_6;
    u16 temp_r2_3;
    u16 var_r0;
    u16 var_r4;
    u32 temp_r0_15;
    u32 temp_r0_8;
    u16 i;
    u8 temp_r0_10;
    u8 temp_r0_11;
    u8 temp_r0_12;
    u8 temp_r0_14;
    u8 temp_r0_4;
    u8 temp_r0_5;
    u8 temp_r0_7;
    u8 temp_r0_9;
    u8 temp_r4;
    u8 var_r6;
    u8 var_r6_2;
    u8 var_r7;
    u8 var_sl;
    void *temp_r1;
    void *temp_r2_2;
    void *temp_r3;
    UnknownIwramData *temp_r5;
    void *temp_r7;
    void *var_r2;

    spC = (s32) param1;
    var_sl = 0;
    sp2C = 0;
    for(i = 0; i < spC; i++)
    {
        temp_r5 = param0[i];
        if (temp_r5->unk2 != 0) {
            sub_80C4EB0(temp_r5 + 0x30, temp_r5->unk2, mask);
        }
        temp_r2 = temp_r5->unk1C;
        temp_r0_2 = temp_r5->unk8 + 1;
        temp_r5->unk8 = temp_r0_2;
        var_r4 = temp_r0_2;
        temp_r0_3 = (((temp_r5->unk0 * 0x10) + temp_r2) - 0x10)->unk4;
        if ((u32) var_r4 > (u32) temp_r0_3) {
            var_r4 = 0;
            temp_r5->unk1 = 0U;
        } else if (var_r4 == temp_r0_3) {
            sp2C = -1;
        }
        temp_r0_4 = temp_r5->unk1;
        var_r2 = temp_r2 + (temp_r0_4 * 0x10);
        var_r6 = temp_r0_4;
        temp_r0_5 = temp_r5->unk0;
        for (var_r6 = temp_r0_4; var_r6 < temp_r0_5; var_r6++) 
        {
            temp_r7 = temp_r5 + 4;
loop_10:
            temp_r0_6 = var_r2->unk4;
            if (temp_r0_6 == var_r4) {
                DmaCopy32(3, var_r2, temp_r7, 0x10);
                temp_r5->unk1 = var_r6;
                temp_r5->unk28 = (s32) ((temp_r5->unk0 * 0x10) + temp_r2 + (var_r6 * temp_r5->unk3 * 4) + 4);
                if (temp_r5->unk14 == NULL) {

                } else {
                    sub_80C5294(temp_r5);
                }
            } else {
                if ((u32) temp_r0_6 > (u32) var_r4) {
                    if (var_r6 != 0) {
                        DmaCopy32(3, var_r2 - 0x10, temp_r7, 0x10);
                        temp_r5->unk8 = var_r4;
                    }
                    break;
                }
                var_r2 += 0x10;
                temp_r0_7 = var_r6 + 1;
                temp_r0_8 = temp_r0_7 << 0x18;
                var_r6 = temp_r0_7;
                if (temp_r0_8 >= (u32) (temp_r0_5 << 0x18)) {
                    break;
                }
                goto loop_10;
            }
        } 
        {
block_18:
            if (sp2C == 0) {
                temp_r0_9 = var_r6 - 1;
                sp14 = (s32) temp_r0_9;
                temp_r5->unk1 = temp_r0_9;
                temp_r5->unk28 = (s32) ((temp_r5->unk0 * 0x10) + temp_r2 + (sp14 * temp_r5->unk3 * 4) + 4);
                temp_r0_10 = sp14 + 1;
                subroutine_arg0.unk0 = temp_r0_10;
                if ((u32) temp_r0_10 < (u32) temp_r5->unk0) {
                    temp_r7_2 = sp14 + 3;
                    if ((s32) subroutine_arg0.unk0 < temp_r7_2) {
loop_23:
                        temp_r4 = subroutine_arg0.unk0;
                        temp_r2_2 = (temp_r4 * 0x10) + temp_r5->unk1C;
                        temp_r3 = temp_r2_2 - 0x10;
                        if (temp_r3->unk8 != temp_r2_2->unk8) {
                            var_sl |= 2;
                        }
                        if (temp_r3->unkC != temp_r2_2->unkC) {
                            var_sl |= 4;
                        }
                        if (temp_r3->unk6 != temp_r2_2->unk6) {
                            var_sl |= 1;
                        }
                        temp_r0_11 = temp_r4 + 1;
                        subroutine_arg0.unk0 = temp_r0_11;
                        if (((u32) temp_r0_11 < (u32) temp_r5->unk0) && ((s32) subroutine_arg0.unk0 < temp_r7_2)) {
                            goto loop_23;
                        }
                    }
                }
                if (var_sl == 0) {

                } else {
                    var_r6_2 = 0;
                    if (4 & var_sl) {
                        temp_r5->unk12 = 0U;
                        temp_r5->unk10 = 0U;
                    }
                    if (2 & var_sl) {
                        sp20 = 0;
                        sp1C = 0;
                    }
                    if (1 & var_sl) {
                        temp_r5->unkA = 0U;
                    }
                    subroutine_arg0.unk0 = (u8) subroutine_arg0.unk14;
                    sp38 = sp14 << 0x18;
                    if ((u32) (u8) sp14 >= (u32) temp_r5->unk0) {

                    } else {
                        sp30 = &subroutine_arg0 + 4;
loop_42:
                        var_sb = 0x100;
                        var_r7 = 0;
                        subroutine_arg0.unk1 = (u8) subroutine_arg0.unk14;
                        sp34 = var_r6_2 + 1;
                        if ((u32) (sp38 >> 0x18) < (u32) temp_r5->unk0) {
loop_44:
                            if (subroutine_arg0.unk0 != subroutine_arg0.unk1) {
                                temp_r3_2 = temp_r5->unk1C;
                                temp_r2_3 = ((subroutine_arg0.unk1 * 0x10) + temp_r3_2)->unk4;
                                var_sb = (s16) ((u32) ((var_sb * (s16) Div((temp_r5->unk8 - temp_r2_3) << 0x10, (((subroutine_arg0.unk0 * 0x10) + temp_r3_2)->unk4 - temp_r2_3) << 8)) << 8) >> 0x10);
                            }
                            var_r7 += 1;
                            if (var_r7 != 3) {
                                temp_r0_12 = subroutine_arg0.unk1 + 1;
                                subroutine_arg0.unk1 = temp_r0_12;
                                if ((u32) temp_r0_12 < (u32) temp_r5->unk0) {
                                    goto loop_44;
                                }
                            }
                        }
                        if (1 & var_sl) {
                            var_r2_2 = 0x3FF & ((subroutine_arg0.unk0 * 0x10) + temp_r5->unk1C)->unk6;
                            if (var_r6_2 != 0) {
                                temp_r4_2 = var_r2_2;
                                temp_r3_3 = (s16) sp18;
                                temp_r2_4 = (temp_r4_2 - temp_r3_3) & 0x3FF;
                                if ((s32) gSineTable[temp_r2_4] >= 0) {
                                    var_r0 = temp_r3_3 + temp_r2_4;
                                } else {
                                    var_r0 = temp_r3_3 - ((temp_r3_3 - temp_r4_2) & 0x3FF);
                                }
                                var_r2_2 = (s16) var_r0;
                            }
                            temp_r5->unkA = (u16) (((s32) (((s16) (u16) var_r2_2 * var_sb) << 8) >> 0x10) + temp_r5->unkA);
                            sp18 = (s32) (u16) var_r2_2;
                        }
                        if (4 & var_sl) {
                            temp_r2_5 = var_sb;
                            temp_r3_4 = (s32) (temp_r2_5 * ((subroutine_arg0.unk0 * 0x10) + temp_r5->unk1C)->unkC) >> 8;
                            sp30->unk0 = (s16) temp_r3_4;
                            sp30->unk2 = (u16) ((s32) (temp_r2_5 * ((subroutine_arg0.unk0 * 0x10) + temp_r5->unk1C)->unkE) >> 8);
                            temp_r5->unk10 = (u16) (temp_r5->unk10 + temp_r3_4);
                            temp_r5->unk12 = (u16) (sp30->unk2 + temp_r5->unk12);
                        }
                        if (2 & var_sl) {
                            temp_r1 = (subroutine_arg0.unk0 * 0x10) + temp_r5->unk1C;
                            temp_r2_6 = var_sb;
                            temp_r0_13 = (s32) (temp_r2_6 * (temp_r1->unk8 << 8)) >> 8;
                            sp24 = temp_r0_13;
                            sp28 = (s32) (temp_r2_6 * (temp_r1->unkA << 8)) >> 8;
                            sp1C += temp_r0_13;
                            sp20 += sp28;
                        }
                        var_r6_2 = (u8) sp34;
                        if (var_r6_2 != 3) {
                            temp_r0_14 = subroutine_arg0.unk0 + 1;
                            subroutine_arg0.unk0 = temp_r0_14;
                            if ((u32) temp_r0_14 < (u32) temp_r5->unk0) {
                                goto loop_42;
                            }
                        }
                    }
                }
                if (2 & var_sl) {
                    temp_r5->unkC = (s16) (sp1C >> 8);
                    temp_r5->unkE = (s16) (sp20 >> 8);
                }
                temp_r2_7 = temp_r5->unk14;
                if ((temp_r2_7 != NULL) && !(temp_r5->unk4 & 4) && !(1 & mask)) {
                    if (temp_r2_7->frameFlags & 0x18000) {
                        UpdateSpriteAnimation_BG(temp_r2_7);
                    } else {
                        UpdateSpriteAnimation(temp_r2_7);
                    }
                }
            }
        }
    }
}
#endif

#if 0
void sub_80C5294(void *arg0) {
    s32 temp_r1_3;
    s32 temp_r1_4;
    u16 temp_r2_2;
    u32 temp_r1_2;
    u8 temp_r2;
    u8 temp_r3;
    void *temp_r1;
    void *temp_r2_3;
    void *temp_r3_2;
    void *var_r5;

    temp_r3 = arg0->unk7;
    if (temp_r3 == 0) {
        var_r5 = arg0->unk24;
    } else {
        temp_r2 = arg0->unk0;
        var_r5 = arg0->unk1C + (temp_r2 * 0x10) + (((temp_r2 * arg0->unk3) + 1) * 4) + ((temp_r3 * 8) - 8);
    }
    temp_r1 = arg0->unk14;
    temp_r2_2 = var_r5->unk0;
    if ((temp_r1->unkC != temp_r2_2) || (temp_r1->unk1A != var_r5->unk2)) {
        temp_r1->unkC = temp_r2_2;
        arg0->unk14->unk1A = (u8) var_r5->unk2;
        temp_r3_2 = arg0->unk20;
        temp_r1_2 = temp_r3_2->unk4;
        if (0xF0000000 & temp_r1_2) {
            temp_r2_3 = arg0->unk14;
            temp_r2_3->unk0 = (s32) (temp_r1_2 & 0x0FFFFFFF);
            temp_r1_3 = temp_r2_3->unk8 & 0xFFFE7FFF;
            temp_r2_3->unk8 = temp_r1_3;
            temp_r2_3->unk8 = (s32) (temp_r1_3 | ((((u32) temp_r3_2->unk4 >> 0x1C) - 1) << 0xF));
        } else {
            if (temp_r1_2 == 0) {
                VramFree((void *) arg0->unk14->unk0);
            }
            temp_r1_4 = var_r5->unk4;
            if (temp_r1_4 == 0) {
                arg0->unk14->unk0 = (s32) VramMalloc((u32) var_r5->unk3);
            } else {
                arg0->unk14->unk0 = temp_r1_4;
            }
        }
        arg0->unk20 = var_r5;
    }
}

s32 sub_80C5334(void *arg0, u8 arg1, s32 arg2, u16 arg3) {
    void *sp8;
    s32 spC;
    s32 sp10;
    u32 sp14;
    s32 sp18;
    s32 sp1C;
    s32 sp20;
    s32 sp24;
    s32 sp28;
    s32 sp2C;
    s32 sp30;
    void *sp34;
    s32 sp38;
    u32 sp3C;
    s32 sp40;
    s16 temp_r2_4;
    s16 temp_r2_5;
    s16 temp_r3_3;
    s16 temp_r4_3;
    s16 var_r2_2;
    s16 var_sb;
    s32 temp_r0;
    s32 temp_r0_11;
    s32 temp_r2_3;
    s32 temp_r2_6;
    s32 temp_r3_4;
    s32 temp_r7;
    u16 temp_r0_2;
    u16 temp_r0_4;
    u16 temp_r2_2;
    u16 var_r0;
    u32 temp_r0_13;
    u32 temp_r0_6;
    u32 var_r1;
    u8 temp_r0_10;
    u8 temp_r0_12;
    u8 temp_r0_3;
    u8 temp_r0_5;
    u8 temp_r0_7;
    u8 temp_r0_8;
    u8 temp_r0_9;
    u8 temp_r4_2;
    u8 var_r6;
    u8 var_r7;
    u8 var_r7_2;
    u8 var_sl;
    void *temp_r1;
    void *temp_r2;
    void *temp_r3;
    void *temp_r3_2;
    void *temp_r4;
    void *temp_r5;
    void *temp_r8;
    void *var_r2;

    sp8 = arg0;
    sp10 = arg2;
    spC = (s32) arg1;
    sp14 = (u32) arg3;
    var_sl = 0;
    var_r1 = 0;
    sp30 = 0;
    if (spC <= 0) {

    } else {
loop_2:
        temp_r0 = var_r1 << 0x10;
        temp_r5 = *((temp_r0 >> 0xE) + sp8);
        sp40 = temp_r0;
        if (temp_r5->unk2 != 0) {
            sub_80C5334(temp_r5 + 0x30, temp_r5->unk2, sp10, sp14);
        }
        var_r2 = temp_r5->unk1C;
        temp_r5->unk8 = (u16) subroutine_arg0.unk14;
        temp_r0_2 = (((temp_r5->unk0 * 0x10) + var_r2) - 0x10)->unk4;
        temp_r8 = var_r2;
        if (sp14 > (u32) temp_r0_2) {
            sp14 = 0;
            temp_r5->unk1 = 0U;
        } else if (sp14 == temp_r0_2) {
            sp30 = -1;
        }
        var_r7 = 0;
        temp_r0_3 = temp_r5->unk0;
        if ((u32) temp_r0_3 > 0U) {
            temp_r4 = temp_r5 + 4;
loop_10:
            temp_r0_4 = var_r2->unk4;
            if (temp_r0_4 == sp14) {
                (void *)0x040000D4->unk0 = var_r2;
                (void *)0x040000D4->unk4 = temp_r4;
                (void *)0x040000D4->unk8 = 0x84000004;
                temp_r5->unk1 = var_r7;
                temp_r5->unk28 = (void *) ((temp_r5->unk0 * 0x10) + temp_r8 + (var_r7 * temp_r5->unk3 * 4) + 4);
                if (temp_r5->unk14 == 0) {

                } else {
                    sub_80C5294(temp_r5);
                }
            } else {
                if ((u32) temp_r0_4 > sp14) {
                    if (var_r7 != 0) {
                        (void *)0x040000D4->unk0 = (void *) (var_r2 - 0x10);
                        (void *)0x040000D4->unk4 = temp_r4;
                        (void *)0x040000D4->unk8 = 0x84000004;
                        temp_r5->unk8 = (u16) sp14;
                    }
                    goto block_18;
                }
                var_r2 += 0x10;
                temp_r0_5 = var_r7 + 1;
                temp_r0_6 = temp_r0_5 << 0x18;
                var_r7 = temp_r0_5;
                if (temp_r0_6 >= (u32) (temp_r0_3 << 0x18)) {
                    goto block_18;
                }
                goto loop_10;
            }
        } else {
block_18:
            if (0 != 0) {

            } else {
                temp_r0_7 = var_r7 - 1;
                sp18 = (s32) temp_r0_7;
                temp_r5->unk1 = temp_r0_7;
                temp_r5->unk28 = (void *) ((temp_r5->unk0 * 0x10) + temp_r8 + (sp18 * temp_r5->unk3 * 4) + 4);
                temp_r0_8 = sp18 + 1;
                subroutine_arg0.unk0 = temp_r0_8;
                if ((u32) temp_r0_8 < (u32) temp_r5->unk0) {
                    temp_r7 = sp18 + 3;
                    if ((s32) subroutine_arg0.unk0 < temp_r7) {
loop_23:
                        temp_r4_2 = subroutine_arg0.unk0;
                        temp_r2 = (temp_r4_2 * 0x10) + temp_r5->unk1C;
                        temp_r3 = temp_r2 - 0x10;
                        if (temp_r3->unk8 != temp_r2->unk8) {
                            var_sl |= 2;
                        }
                        if (temp_r3->unkC != temp_r2->unkC) {
                            var_sl |= 4;
                        }
                        if (temp_r3->unk6 != temp_r2->unk6) {
                            var_sl |= 1;
                        }
                        temp_r0_9 = temp_r4_2 + 1;
                        subroutine_arg0.unk0 = temp_r0_9;
                        if (((u32) temp_r0_9 < (u32) temp_r5->unk0) && ((s32) subroutine_arg0.unk0 < temp_r7)) {
                            goto loop_23;
                        }
                    }
                }
                if (var_sl == 0) {

                } else {
                    var_r7_2 = 0;
                    if (4 & var_sl) {
                        temp_r5->unk12 = 0U;
                        temp_r5->unk10 = 0U;
                    }
                    if (2 & var_sl) {
                        sp24 = 0;
                        sp20 = 0;
                    }
                    if (1 & var_sl) {
                        temp_r5->unkA = 0U;
                    }
                    subroutine_arg0.unk0 = (u8) subroutine_arg0.unk18;
                    sp3C = sp18 << 0x18;
                    if ((u32) (u8) sp18 >= (u32) temp_r5->unk0) {

                    } else {
                        sp34 = &subroutine_arg0 + 4;
loop_42:
                        var_sb = 0x100;
                        var_r6 = 0;
                        subroutine_arg0.unk1 = (u8) subroutine_arg0.unk18;
                        sp38 = var_r7_2 + 1;
                        if ((u32) (sp3C >> 0x18) < (u32) temp_r5->unk0) {
loop_44:
                            if (subroutine_arg0.unk0 != subroutine_arg0.unk1) {
                                temp_r3_2 = temp_r5->unk1C;
                                temp_r2_2 = ((subroutine_arg0.unk1 * 0x10) + temp_r3_2)->unk4;
                                var_sb = (s16) ((u32) ((var_sb * (s16) Div((temp_r5->unk8 - temp_r2_2) << 0x10, (((subroutine_arg0.unk0 * 0x10) + temp_r3_2)->unk4 - temp_r2_2) << 8)) << 8) >> 0x10);
                            }
                            var_r6 += 1;
                            if (var_r6 != 3) {
                                temp_r0_10 = subroutine_arg0.unk1 + 1;
                                subroutine_arg0.unk1 = temp_r0_10;
                                if ((u32) temp_r0_10 < (u32) temp_r5->unk0) {
                                    goto loop_44;
                                }
                            }
                        }
                        if (1 & var_sl) {
                            var_r2_2 = 0x3FF & ((subroutine_arg0.unk0 * 0x10) + temp_r5->unk1C)->unk6;
                            if (var_r7_2 != 0) {
                                temp_r4_3 = var_r2_2;
                                temp_r3_3 = (s16) sp1C;
                                temp_r2_3 = (temp_r4_3 - temp_r3_3) & 0x3FF;
                                if ((s32) gSineTable[temp_r2_3] >= 0) {
                                    var_r0 = temp_r3_3 + temp_r2_3;
                                } else {
                                    var_r0 = temp_r3_3 - ((temp_r3_3 - temp_r4_3) & 0x3FF);
                                }
                                var_r2_2 = (s16) var_r0;
                            }
                            temp_r5->unkA = (u16) (((s32) (((s16) (u16) var_r2_2 * var_sb) << 8) >> 0x10) + temp_r5->unkA);
                            sp1C = (s32) (u16) var_r2_2;
                        }
                        if (4 & var_sl) {
                            temp_r2_4 = var_sb;
                            temp_r3_4 = (s32) (temp_r2_4 * ((subroutine_arg0.unk0 * 0x10) + temp_r5->unk1C)->unkC) >> 8;
                            sp34->unk0 = (s16) temp_r3_4;
                            sp34->unk2 = (u16) ((s32) (temp_r2_4 * ((subroutine_arg0.unk0 * 0x10) + temp_r5->unk1C)->unkE) >> 8);
                            temp_r5->unk10 = (u16) (temp_r5->unk10 + temp_r3_4);
                            temp_r5->unk12 = (u16) (sp34->unk2 + temp_r5->unk12);
                        }
                        if (2 & var_sl) {
                            temp_r1 = (subroutine_arg0.unk0 * 0x10) + temp_r5->unk1C;
                            temp_r2_5 = var_sb;
                            temp_r0_11 = (s32) (temp_r2_5 * (temp_r1->unk8 << 8)) >> 8;
                            sp28 = temp_r0_11;
                            sp2C = (s32) (temp_r2_5 * (temp_r1->unkA << 8)) >> 8;
                            sp20 += temp_r0_11;
                            sp24 += sp2C;
                        }
                        var_r7_2 = (u8) sp38;
                        if (var_r7_2 != 3) {
                            temp_r0_12 = subroutine_arg0.unk0 + 1;
                            subroutine_arg0.unk0 = temp_r0_12;
                            if ((u32) temp_r0_12 < (u32) temp_r5->unk0) {
                                goto loop_42;
                            }
                        }
                    }
                }
                if (2 & var_sl) {
                    temp_r5->unkC = (s16) (sp20 >> 8);
                    temp_r5->unkE = (s16) (sp24 >> 8);
                }
                if (temp_r5->unk14 != 0) {
                    sub_80C5294(temp_r5);
                    temp_r2_6 = temp_r5->unk14;
                    if ((temp_r2_6 != 0) && !((temp_r5->unk4 | sp10) & 4) && !(1 & sp10)) {
                        sub_80BF540(temp_r2_6, sp14);
                    }
                }
            }
        }
        temp_r0_13 = sp40 + 0x10000;
        var_r1 = temp_r0_13 >> 0x10;
        if ((s32) ((s32) temp_r0_13 >> 0x10) < spC) {
            goto loop_2;
        }
    }
    return sp30;
}

s32 sub_80C571C(s32 arg0, u8 arg1, s32 arg2) {
    s32 sp0;
    s32 sp4;
    s32 sp8;
    s32 spC;
    Sprite *temp_r2_7;
    s32 temp_r2;
    s32 temp_r2_6;
    s32 temp_r3_4;
    s32 temp_r4;
    s32 temp_r6;
    s32 temp_r6_2;
    s32 temp_r7_2;
    u16 temp_ip;
    u16 temp_r0;
    u16 temp_r0_2;
    u16 temp_r0_5;
    u16 temp_r2_3;
    u16 var_r0;
    u16 var_r6;
    u32 temp_r0_7;
    u32 temp_r0_9;
    u8 temp_r0_3;
    u8 temp_r0_4;
    u8 temp_r0_6;
    u8 temp_r2_2;
    u8 var_r1;
    u8 var_r4;
    u8 var_sb;
    void *temp_r0_8;
    void *temp_r1;
    void *temp_r1_2;
    void *temp_r2_4;
    void *temp_r2_5;
    void *temp_r3;
    void *temp_r3_2;
    void *temp_r3_3;
    void *temp_r5;
    void *temp_r7;
    void *var_r2;

    sp0 = arg0;
    sp4 = (s32) arg1;
    var_sb = 0;
    var_r1 = 0;
    sp8 = 0;
    if (sp4 <= 0) {

    } else {
loop_2:
        temp_r4 = var_r1 << 0x10;
        temp_r5 = *((temp_r4 >> 0xE) + sp0);
        sub_80C571C(temp_r5 + 0x30, var_r1, arg2);
        temp_r2 = temp_r5->unk1C;
        temp_r0 = temp_r5->unk8 + 1;
        temp_r5->unk8 = temp_r0;
        var_r6 = temp_r0;
        temp_r0_2 = (((temp_r5->unk0 * 0x10) + temp_r2) - 0x10)->unk4;
        spC = temp_r4;
        if ((u32) var_r6 > (u32) temp_r0_2) {
            var_r6 = 0;
            temp_r5->unk1 = 0U;
        } else if (var_r6 == temp_r0_2) {
            sp8 = -1;
        }
        temp_r0_3 = temp_r5->unk1;
        var_r2 = temp_r2 + (temp_r0_3 * 0x10);
        var_r4 = temp_r0_3;
        temp_r0_4 = temp_r5->unk0;
        if ((u32) var_r4 < (u32) temp_r0_4) {
            temp_r7 = temp_r5 + 4;
loop_8:
            temp_r0_5 = var_r2->unk4;
            if (temp_r0_5 == var_r6) {
                (void *)0x040000D4->unk0 = var_r2;
                (void *)0x040000D4->unk4 = temp_r7;
                (void *)0x040000D4->unk8 = 0x84000004;
                temp_r5->unk1 = var_r4;
                temp_r5->unk28 = (s32) (temp_r5->unk1C + (temp_r5->unk0 * 0x10) + (var_r4 * temp_r5->unk3 * 4) + 4);
                if (temp_r5->unk14 == NULL) {

                } else {
                    sub_80C5294(temp_r5);
                }
            } else {
                if ((u32) temp_r0_5 > (u32) var_r6) {
                    if (var_r4 != 0) {
                        (void *)0x040000D4->unk0 = (void *) (var_r2 - 0x10);
                        (void *)0x040000D4->unk4 = temp_r7;
                        (void *)0x040000D4->unk8 = 0x84000004;
                        temp_r5->unk8 = var_r6;
                    }
                    goto block_16;
                }
                var_r2 += 0x10;
                temp_r0_6 = var_r4 + 1;
                temp_r0_7 = temp_r0_6 << 0x18;
                var_r4 = temp_r0_6;
                if (temp_r0_7 >= (u32) (temp_r0_4 << 0x18)) {
                    goto block_16;
                }
                goto loop_8;
            }
        } else {
block_16:
            if (0 != 0) {

            } else {
                temp_r2_2 = var_r4 - 1;
                temp_r5->unk1 = temp_r2_2;
                temp_r6 = temp_r5->unk1C;
                temp_r5->unk28 = (s32) (temp_r6 + (temp_r5->unk0 * 0x10) + (temp_r2_2 * temp_r5->unk3 * 4) + 4);
                temp_r3 = (var_r4 * 0x10) + temp_r6;
                temp_r1 = temp_r3 - 0x10;
                if (temp_r1->unk8 != temp_r3->unk8) {
                    var_sb |= 2;
                }
                if (temp_r1->unkC != temp_r3->unkC) {
                    var_sb |= 4;
                }
                if (temp_r1->unk6 != temp_r3->unk6) {
                    var_sb |= 1;
                }
                if (var_sb == 0) {

                } else {
                    temp_r7_2 = temp_r2_2 * 0x10;
                    temp_r1_2 = temp_r7_2 + temp_r6;
                    temp_r2_3 = temp_r1_2->unk4;
                    temp_ip = (u16) Div((temp_r5->unk8 - temp_r2_3) << 0x10, (temp_r1_2->unk14 - temp_r2_3) << 8);
                    if (4 & var_sb) {
                        temp_r2_4 = temp_r7_2 + temp_r5->unk1C;
                        temp_r3_2 = temp_r2_4 + 0x10;
                        temp_r5->unk10 = (s16) (((s32) ((temp_r3_2->unkC - temp_r2_4->unkC) * temp_ip) >> 8) + (u16) temp_r2_4->unkC);
                        temp_r5->unk12 = (s16) (((s32) ((temp_r3_2->unkE - temp_r2_4->unkE) * temp_ip) >> 8) + (u16) temp_r2_4->unkE);
                    }
                    if (2 & var_sb) {
                        temp_r2_5 = temp_r7_2 + temp_r5->unk1C;
                        temp_r3_3 = temp_r2_5 + 0x10;
                        temp_r5->unkC = (s16) (((s32) ((temp_r3_3->unk8 - temp_r2_5->unk8) * temp_ip) >> 8) + (u16) temp_r2_5->unk8);
                        temp_r5->unkE = (s16) (((s32) ((temp_r3_3->unkA - temp_r2_5->unkA) * temp_ip) >> 8) + (u16) temp_r2_5->unkA);
                    }
                    if (1 & var_sb) {
                        temp_r0_8 = temp_r7_2 + temp_r5->unk1C;
                        temp_r6_2 = 0x3FF & temp_r0_8->unk6;
                        temp_r3_4 = 0x3FF & temp_r0_8->unk16;
                        temp_r2_6 = temp_r3_4 - temp_r6_2;
                        if ((s32) gSineTable[temp_r2_6 & 0x3FF] >= 0) {
                            var_r0 = temp_r6_2 + (temp_r2_6 & 0x3FF);
                        } else {
                            var_r0 = temp_r6_2 - ((temp_r6_2 - temp_r3_4) & 0x3FF);
                        }
                        temp_r5->unkA = (s16) ((temp_r6_2 + ((s32) (((s16) var_r0 - temp_r6_2) * temp_ip) >> 8)) & 0x3FF);
                    }
                }
                temp_r2_7 = temp_r5->unk14;
                if ((temp_r2_7 != NULL) && !((temp_r5->unk4 | arg2) & 4) && !(1 & arg2)) {
                    if (temp_r2_7->frameFlags & 0x18000) {
                        UpdateSpriteAnimation_BG(temp_r2_7);
                    } else {
                        UpdateSpriteAnimation(temp_r2_7);
                    }
                }
            }
        }
        temp_r0_9 = spC + 0x10000;
        var_r1 = (u8) (temp_r0_9 >> 0x10);
        if ((s32) ((s32) temp_r0_9 >> 0x10) < sp4) {
            goto loop_2;
        }
    }
    return sp8;
}

void sub_80C59E8(void *param0, u8 param1, s32 *screenPos, u8 *arr4, s16 param4) {
    u8 sp4;
    SpriteTransform sp8;
    s16 sp14;
    s32 sp18;
    s32 sp1C;
    void *sp20;
    s32 *sp24;
    s32 sp28;
    s32 sp2C;
    s32 sp30;
    Sprite *temp_r0_2;
    Sprite *temp_r0_3;
    Sprite *temp_r2_7;
    Sprite *temp_r3_2;
    Sprite *temp_r3_3;
    Sprite *temp_r4;
    s16 *temp_r2_2;
    s16 temp_r0;
    s16 temp_r1_3;
    s16 temp_r2;
    s16 temp_r2_3;
    s16 temp_r3;
    s32 *temp_r6;
    s32 temp_r2_5;
    s32 var_r1;
    s32 var_r4;
    s32 var_r6;
    u32 temp_r1;
    u32 temp_r1_2;
    u32 temp_r2_4;
    u32 temp_r2_6;
    u32 var_r1_2;
    u32 var_r7;
    u8 var_r3;
    void *temp_r5;

    sp20 = param0;
    sp24 = screenPos;
    var_r7 = (u32) (((u32) (param1 << 0x18) >> 8) + 0xFFFF0000) >> 0x10;
    var_r1 = var_r7 << 0x10;
    if (var_r1 < 0) {
        return;
    }
    temp_r0 = (s16) (u16) (s32) param4;
    sp28 = (s32) temp_r0;
    sp2C = temp_r0 * 2;
loop_3:
    temp_r5 = *((var_r1 >> 0xE) + sp20);
    (void *)0x040000D4->unk0 = (s32) (temp_r5 + 0x10);
    (void *)0x040000D4->unk4 = &sp4;
    (void *)0x040000D4->unk8 = 0x84000001;
    if (sp28 != 0) {
        temp_r3 = gSineTable[sp28 + 0x100];
        temp_r2 = *(sp2C + gSineTable);
        sp18 = ((s32) (temp_r5->unkC * temp_r3) >> 6) - ((s32) (temp_r2 * temp_r5->unkE) >> 6);
        sp18.unk4 = (s32) (((s32) (temp_r5->unkC * temp_r2) >> 6) + ((s32) (temp_r3 * temp_r5->unkE) >> 6));
    } else {
        sp18 = temp_r5->unkC << 8;
        sp18.unk4 = (s32) (temp_r5->unkE << 8);
    }
    if ((arr4->unk0 != 0x100) || (sp30 = var_r7 << 0x10, var_r4 = sp24->unk0, var_r6 = sp24->unk4, (arr4->unk2 != 0x100))) {
        sp18 = (s32) (arr4->unk0 * sp18) >> 8;
        sp1C = (s32) (arr4->unk2 * sp1C) >> 8;
        var_r3 = 0;
        sp30 = var_r7 << 0x10;
        var_r4 = sp24->unk0;
        var_r6 = sp24->unk4;
        do {
            temp_r2_2 = &(&subroutine_arg0)[var_r3];
            temp_r2_2->unk4 = (s16) ((s32) (*((var_r3 * 2) + arr4) * temp_r2_2->unk4) >> 8);
            var_r3 += 1;
        } while ((u32) var_r3 <= 1U);
    }
    sp18 += var_r4;
    sp1C += var_r6;
    temp_r2_3 = (sp28 + temp_r5->unkA) & 0x3FF;
    sp14 = temp_r2_3;
    temp_r5->unk2C = (s16) sp14;
    if (temp_r5->unk2 != 0) {
        sub_80C59E8(temp_r5 + 0x30, temp_r5->unk2, &sp18, &sp4, (s16) (s32) temp_r2_3);
    }
    temp_r4 = temp_r5->unk14;
    if (temp_r4 == NULL) {

    } else if (temp_r5->unk4 & 4) {

    } else {
        temp_r6 = temp_r5->unk18;
        temp_r1 = temp_r4->frameFlags;
        if ((*temp_r6 & 4) && (0x4000 & temp_r1)) {

        } else {
            temp_r2_4 = 0xFFFFCFFF & temp_r1;
            temp_r4->frameFlags = temp_r2_4;
            temp_r4->frameFlags = temp_r2_4 | ((((u32) (temp_r5->unk4 & 0xC00000) >> 0x16) + ((u32) (*temp_r6 & 0xC00000) >> 0x16)) << 0xC);
            temp_r4->oamFlags = (((u32) (temp_r5->unk4 & 0x3FE000) >> 0xD) + ((u32) (*temp_r6 & 0x3FE000) >> 0xD)) << 6;
            if (!(*temp_r5->unk18 & 8)) {
                goto block_37;
            }
            if ((sp14 != 0) || (arr4->unk0 != 0x100) || (arr4->unk2 != 0x100) || (((u32) ((u32) (temp_r5->unk14->frameFlags & 0x18000) >> 0xF) > 1U) && (3 & gDispCnt))) {
                temp_r3_2 = temp_r5->unk14;
                temp_r1_2 = temp_r3_2->frameFlags & ~0x1F;
                temp_r3_2->frameFlags = temp_r1_2;
                temp_r3_2->frameFlags = temp_r1_2 | (0x20 | gNextFreeAffineIndex);
                if ((sp14 != 0) || (temp_r1_3 = sp4.unk0, (temp_r1_3 != 0x100)) || ((s16) sp4.unk2 != temp_r1_3)) {
                    gNextFreeAffineIndex += 1;
                }
                sp8.rotation = (u16) sp14;
                temp_r2_5 = 0x01000000 >> 0x10;
                if (((s32) sp4.unk0 > temp_r2_5) || ((s32) (s16) sp4.unk2 > temp_r2_5)) {
                    var_r1_2 = temp_r5->unk14->frameFlags | 0x40;
                } else {
                    var_r1_2 = temp_r5->unk14->frameFlags & ~0x40;
                }
                temp_r5->unk14->frameFlags = var_r1_2;
                sp8.qScaleX = (s16) (u16) sp4.unk0;
                sp8.qScaleY = (s16) sp4.unk2;
                sp8.x = (s16) (sp18 >> 8);
                sp8.y = (s16) (sp1C >> 8);
                if (temp_r5->unk20->unk4 & 0xF0000000) {
                    temp_r0_2 = temp_r5->unk14;
                    sub_80BECF8(temp_r0_2, &sp8, (((u32) temp_r0_2->frameFlags >> 0xF) * 0x10) + &gEmptyTask);
                } else {
                    TransformSprite(temp_r5->unk14, &sp8);
                }
            } else {
block_37:
                temp_r5->unk14->x = (s16) (sp18 >> 8);
                temp_r5->unk14->y = (s16) (sp1C >> 8);
                temp_r3_3 = temp_r5->unk14;
                temp_r2_6 = temp_r3_3->frameFlags & ~0x20;
                temp_r3_3->frameFlags = temp_r2_6;
                if (temp_r5->unk4 & 1) {
                    temp_r3_3->frameFlags = temp_r2_6 | 0x400;
                }
                if (temp_r5->unk4 & 2) {
                    temp_r0_3 = temp_r5->unk14;
                    temp_r0_3->frameFlags |= 0x800;
                }
            }
            temp_r2_7 = temp_r5->unk14;
            if (temp_r2_7->frameFlags & 0x18000) {
                sub_80BE46C(temp_r2_7);
            } else {
                DisplaySprite(temp_r2_7);
            }
        }
    }
    var_r7 = (u32) (sp30 + 0xFFFF0000) >> 0x10;
    var_r1 = var_r7 << 0x10;
    if (var_r1 >= 0) {
        goto loop_3;
    }
}

void sub_80C5D58(void *arg0, u8 arg1, s32 *arg2, ? arg3) {
    s32 sp0;
    Sprite *temp_r0;
    Sprite *temp_r2;
    Sprite *temp_r2_3;
    Sprite *temp_r4;
    s32 *temp_r5;
    s32 var_r0;
    u32 temp_r2_2;
    u32 var_r7;
    void *temp_r6;

    var_r7 = (u32) (((u32) (arg1 << 0x18) >> 8) + 0xFFFF0000) >> 0x10;
    var_r0 = var_r7 << 0x10;
    if (var_r0 < 0) {
        return;
    }
loop_3:
    temp_r6 = *((var_r0 >> 0xE) + arg0);
    sp0 = arg2->unk0 + (temp_r6->unkC << 8);
    sp0.unk4 = (s32) (arg2->unk4 + (temp_r6->unkE << 8));
    temp_r2 = temp_r6->unk14;
    if ((temp_r2 != NULL) && !(temp_r6->unk4 & 4) && (!(*temp_r6->unk18 & 4) || !(temp_r2->frameFlags & 0x4000))) {
        temp_r2->x = (s16) (sp0 >> 8);
        temp_r6->unk14->y = (s16) ((s32) sp0.unk4 >> 8);
        temp_r4 = temp_r6->unk14;
        temp_r2_2 = temp_r4->frameFlags & ~0x20 & 0xFFFFCFFF;
        temp_r4->frameFlags = temp_r2_2;
        temp_r5 = temp_r6->unk18;
        temp_r4->frameFlags = temp_r2_2 | ((((u32) (temp_r6->unk4 & 0xC00000) >> 0x16) + ((u32) (*temp_r5 & 0xC00000) >> 0x16)) << 0xC);
        temp_r4->oamFlags = (((u32) (temp_r6->unk4 & 0x3FE000) >> 0xD) + ((u32) (*temp_r5 & 0x3FE000) >> 0xD)) << 6;
        if (temp_r6->unk4 & 1) {
            temp_r0 = temp_r6->unk14;
            temp_r0->frameFlags |= 0x400;
        }
        temp_r2_3 = temp_r6->unk14;
        if (temp_r6->unk4 & 2) {
            temp_r2_3->frameFlags |= 0x800;
        }
        if (temp_r2_3->frameFlags & 0x18000) {
            sub_80BE46C(temp_r2_3);
        } else {
            DisplaySprite(temp_r2_3);
        }
    }
    if (temp_r6->unk2 != 0) {
        sub_80C5D58(temp_r6 + 0x30, temp_r6->unk2, &sp0);
    }
    var_r7 = (u32) ((var_r7 << 0x10) + 0xFFFF0000) >> 0x10;
    var_r0 = var_r7 << 0x10;
    if (var_r0 >= 0) {
        goto loop_3;
    }
}

s32 sub_80C5E9C(void *arg0, u8 arg1, u8 arg2, void *arg3, s32 arg4, s32 arg5) {
    void *sp8;
    s32 spC;
    s32 sp10;
    s32 sp14;
    s32 sp18;
    s16 temp_r0;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 temp_r2_3;
    s32 temp_r5;
    s8 temp_r3_3;
    s8 temp_r4;
    s8 temp_r5_2;
    s8 temp_r5_3;
    u32 temp_r0_2;
    u32 var_r2;
    void *temp_r0_3;
    void *temp_r3;
    void *temp_r3_2;
    void *temp_r4_2;
    void *temp_r6;

    sp8 = arg0;
    spC = (s32) arg1;
    sp10 = (s32) arg2;
    sp14 = 0;
    var_r2 = 0;
    if (spC > 0) {
        temp_r5 = sp10 * 8;
        sp18 = (s32) (s16) (u16) arg4;
        temp_r0 = (s16) (u16) arg5;
        do {
            temp_r2 = var_r2 << 0x10;
            temp_r6 = *((temp_r2 >> 0xE) + sp8);
            temp_r3 = temp_r6->unk14;
            if (*(temp_r3 + 0x20 + temp_r5) != -1) {
                temp_r4 = arg3->unk0;
                temp_r2_2 = sp18 + temp_r4;
                temp_r3_2 = temp_r3 + temp_r5;
                temp_r5_2 = temp_r3_2->unk24;
                temp_r1 = temp_r3->unk10 + temp_r5_2;
                if (temp_r2_2 <= temp_r1) {
                    if ((s32) (temp_r2_2 + (arg3->unk2 - temp_r4)) < temp_r1) {
                        if (temp_r2_2 >= temp_r1) {
                            goto block_6;
                        }
                    } else {
                        goto block_7;
                    }
                } else {
block_6:
                    if ((s32) (temp_r1 + ((s8) temp_r3_2->unk26 - temp_r5_2)) >= temp_r2_2) {
block_7:
                        temp_r3_3 = arg3->unk1;
                        temp_r2_3 = temp_r0 + temp_r3_3;
                        temp_r0_3 = temp_r6->unk14;
                        temp_r4_2 = temp_r0_3 + temp_r5;
                        temp_r5_3 = temp_r4_2->unk25;
                        temp_r1_2 = temp_r0_3->unk12 + temp_r5_3;
                        if (temp_r2_3 <= temp_r1_2) {
                            if ((s32) (temp_r2_3 + (arg3->unk3 - temp_r3_3)) < temp_r1_2) {
                                if (temp_r2_3 >= temp_r1_2) {
                                    goto block_10;
                                }
                            } else {
                                goto block_11;
                            }
                        } else {
block_10:
                            if ((s32) (temp_r1_2 + ((s8) temp_r4_2->unk27 - temp_r5_3)) >= temp_r2_3) {
block_11:
                                sp14 = 1;
                            }
                        }
                    }
                }
            }
            if ((temp_r6->unk2 != 0) && (sub_80C5E9C(temp_r6 + 0x30, temp_r6->unk2, sp10, arg3, sp18, (s32) temp_r0) != 0)) {
                sp14 = 1;
            }
            temp_r0_2 = temp_r2 + 0x10000;
            var_r2 = temp_r0_2 >> 0x10;
        } while ((s32) ((s32) temp_r0_2 >> 0x10) < spC);
    }
    return sp14;
}

s32 sub_80C5FCC(void *arg0, u8 arg1, u8 arg2, u16 arg3, s32 arg4) {
    void *sp4;
    s32 sp8;
    s32 spC;
    s32 temp_r2;
    s32 temp_r6;
    s32 var_sb;
    u32 temp_r0;
    u32 var_r2;
    u8 temp_r1;
    void *temp_r2_2;
    void *temp_r3;
    void *temp_r4;

    sp4 = arg0;
    temp_r1 = arg1;
    spC = (s32) arg2;
    sp8 = (s32) (u16) arg4;
    var_sb = 0;
    var_r2 = 0;
    if ((s32) temp_r1 > 0) {
        temp_r6 = spC * 8;
        do {
            temp_r2 = var_r2 << 0x10;
            temp_r4 = *((temp_r2 >> 0xE) + sp4);
            temp_r3 = temp_r4->unk14;
            if (*(temp_r3 + 0x20 + temp_r6) != -1) {
                temp_r2_2 = temp_r3 + temp_r6;
                if (((s32) temp_r2_2->unk24 <= (s32) temp_r3->unk10) && ((s32) temp_r2_2->unk26 >= (s32) temp_r3->unk10) && ((s32) temp_r2_2->unk25 <= (s32) temp_r3->unk12) && ((s32) temp_r2_2->unk27 >= (s32) temp_r3->unk12)) {
                    var_sb = 1;
                }
            }
            if ((temp_r4->unk2 != 0) && (sub_80C5FCC(temp_r4 + 0x30, temp_r4->unk2, spC, (s16) arg3, (s32) (s16) sp8) != 0)) {
                var_sb = 1;
            }
            temp_r0 = temp_r2 + 0x10000;
            var_r2 = temp_r0 >> 0x10;
        } while ((s32) ((s32) temp_r0 >> 0x10) < (s32) temp_r1);
    }
    return var_sb;
}

void sub_80C60B0(void **param0, u8 param1) {
    s32 temp_r0_2;
    u32 temp_r0;
    u32 var_r1;
    u8 temp_r1;
    u8 temp_r6;
    void **temp_r1_2;
    void *temp_r4;

    temp_r6 = param1;
    var_r1 = 0;
    if ((s32) temp_r6 > 0) {
        do {
            temp_r0_2 = var_r1 << 0x10;
            temp_r4 = *((temp_r0_2 >> 0xE) + param0);
            temp_r1 = temp_r4->unk2;
            if (temp_r1 != 0) {
                sub_80C60B0(temp_r4 + 0x30, temp_r1);
            }
            temp_r1_2 = temp_r4->unk14;
            if (temp_r1_2 != NULL) {
                if (temp_r4->unk20->unk4 == 0) {
                    VramFree(*temp_r1_2);
                }
                IwramFree(temp_r4->unk14);
            }
            IwramFree(temp_r4);
            temp_r0 = temp_r0_2 + 0x10000;
            var_r1 = temp_r0 >> 0x10;
        } while ((s32) ((s32) temp_r0 >> 0x10) < (s32) temp_r6);
    }
}

void sub_80C610C(void *param0, u8 param1) {
    Sprite *temp_r2;
    s32 temp_r1;
    u32 temp_r0;
    u32 var_r1;
    u8 temp_r6;
    void *temp_r4;

    temp_r6 = param1;
    var_r1 = 0;
    if ((s32) temp_r6 > 0) {
        do {
            temp_r1 = var_r1 << 0x10;
            temp_r4 = *((temp_r1 >> 0xE) + param0);
            temp_r2 = temp_r4->unk14;
            if (temp_r2 != NULL) {
                if (temp_r2->frameFlags & 0x18000) {
                    UpdateSpriteAnimation_BG(temp_r2);
                } else {
                    UpdateSpriteAnimation(temp_r2);
                }
            }
            if (temp_r4->unk2 != 0) {
                sub_80C610C(temp_r4 + 0x30, temp_r4->unk2);
            }
            temp_r0 = temp_r1 + 0x10000;
            var_r1 = temp_r0 >> 0x10;
        } while ((s32) ((s32) temp_r0 >> 0x10) < (s32) temp_r6);
    }
}
#endif
