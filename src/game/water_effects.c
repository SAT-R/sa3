#include "global.h"
#include "core.h"
#include "flags.h"
#include "color.h"
#include "game/shared/stage/camera.h"
#include "game/stage.h"
#include "constants/anim_commands.h"

#ifndef NON_MATCHING
// NOTE: CopyNColorsFromAnimPalette() only matches using a constant 2
#define COLOR_SIZE 2
#else
#define COLOR_SIZE sizeof(ColorRaw)
#endif

#define BG_COPY_SIZE  (16 * (PALETTE_LEN_4BPP * COLOR_SIZE))
#define OBJ_COPY_SIZE (15 * (PALETTE_LEN_4BPP * COLOR_SIZE))

typedef struct StrcSmall {
    /* 0x00 */ s8 unk0;
    /* 0x01 */ s8 unk1;
    /* 0x02 */ s8 unk2;
    /* 0x03 */ s8 unk3;
    /* 0x04 */ s16 unk4;
    /* 0x06 */ s16 unk6;
    /* 0x08 */ u32 flags;
    /* 0x0C */ u32 blendColors;
} StrcSmall;

// gCamera.task54 <--
typedef struct StrcCodeUnk {
    /* 0x00 */ StrcSmall unk0;
    /* 0x10 */ u8 padding10[0x4];
    /* 0x14 */ Sprite s;
    /* 00-15 : OBJ Palette -- 16-31 : BG Palette */
    /* 0x3C */ ColorRaw palette[32 * PALETTE_LEN_4BPP];
} StrcCodeUnk; /* 0x43C */

void Task_8052798(void);
s32 sub_8052B84(StrcCodeUnk *strc);
void TaskDestructor_8052C18(Task *t);
void sub_8052C54(void);
void VCountCB_WaterEffectCopyPalettes(void);
void sub_8052D2C(StrcSmall *smol);
void CopyNColorsFromAnimPalette(u16 *destPalette, AnimId anim, u16 numColors);

extern AnimId gUnknown_080D1BC4[12];
extern AnimId gUnknown_080D1BEC[5];
extern AnimId gUnknown_080D1BF6[5];

#define WATER_MASK_COLOR_A 0x7BDE
#define WATER_MASK_COLOR_B 0x739C
#define WATER_MASK_A       ((WATER_MASK_COLOR_A << 16) | WATER_MASK_COLOR_A)
#define WATER_MASK_B       ((WATER_MASK_COLOR_B << 16) | WATER_MASK_COLOR_B)

#define WATER_SURFACE_SPRITE_COUNT ((DISPLAY_WIDTH + 16) / 16)

#define WATER_MASK_PALETTE_CHUNK(in, waterMask)                                                                                            \
    ({                                                                                                                                     \
        u32 temp1, temp2;                                                                                                                  \
        temp1 = (in);                                                                                                                      \
        temp2 = temp1;                                                                                                                     \
        temp2 = ((temp2 & WATER_MASK_A) + (((temp1 & WATER_MASK_B) + (WATER_MASK_B & (waterMask))) >> 1));                                 \
        temp2 >>= 1;                                                                                                                       \
    })

#if (GAME == GAME_SA2)
static const u16 gUnknown_080D550C[NUM_CHARACTERS] = {
    SA2_ANIM_UNDERWATER_1UP_SONIC,    SA2_ANIM_UNDERWATER_1UP_CREAM, SA2_ANIM_UNDERWATER_1UP_TAILS,
    SA2_ANIM_UNDERWATER_1UP_KNUCKLES, SA2_ANIM_UNDERWATER_1UP_AMY,
};

static void inline CopyPalette(u32 *dst, u32 *src, s32 length)
{
    u32 r2 = length >> 4;

    while (r2-- > 0) {
        *dst++ = *src++;
        *dst++ = *src++;
        *dst++ = *src++;
        *dst++ = *src++;
        *dst++ = *src++;
        *dst++ = *src++;
        *dst++ = *src++;
        *dst++ = *src++;
    }
}
#endif

static inline void MaskPaletteWithUnderwaterColor_inline(u32 *dst, u32 *src, u32 mask, s32 size)
{
    u32 k = (size >> 4);
    while (k-- > 0) {
        *dst++ = WATER_MASK_PALETTE_CHUNK(*src++, mask);
        *dst++ = WATER_MASK_PALETTE_CHUNK(*src++, mask);
        *dst++ = WATER_MASK_PALETTE_CHUNK(*src++, mask);
        *dst++ = WATER_MASK_PALETTE_CHUNK(*src++, mask);
        *dst++ = WATER_MASK_PALETTE_CHUNK(*src++, mask);
        *dst++ = WATER_MASK_PALETTE_CHUNK(*src++, mask);
        *dst++ = WATER_MASK_PALETTE_CHUNK(*src++, mask);
        *dst++ = WATER_MASK_PALETTE_CHUNK(*src++, mask);
    }
}

#if 0

void sub_80525F0(s32 arg0, u32 flags) {
    StrcCodeUnk *strc;
    void* temp_r0;
    StrcSmall* smol;
    Sprite* s;

    gCamera.task54 = TaskCreate(Task_8052798, 0x43C, 0xFFFE, 0, &TaskDestructor_8052C18);
    strc = TASK_DATA(gCamera.task54);
    smol = &strc->unk0;
    smol->unk4 = -1;
    smol->unk6 = -1;
    smol->unk2 = -1;
    smol->unk1 = -1;
    smol->unk8 = flags & 0x100;
    smol->blendColors = arg0;
    sub_8052D2C(smol);
    s = &strc->s;
    s->tiles = OBJ_VRAM0 + 0x4D80;
    s->anim = 973;
    s->variant = 0;
    s->prevVariant = -1;
    s->oamFlags = 0;
    s->qAnimDelay = 0;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);
}

//void MaskPaletteWithUnderwaterColor(u32 *dst, u32 *src, u32 mask, s32 size)
void MaskPaletteWithUnderwaterColor(u32 *dst, u32 *src, u32 mask, s32 size)
{
    u32 k = (size >> 4);
    while (k-- > 0) {
        *dst++ = WATER_MASK_PALETTE_CHUNK(*src++, mask);
        *dst++ = WATER_MASK_PALETTE_CHUNK(*src++, mask);
        *dst++ = WATER_MASK_PALETTE_CHUNK(*src++, mask);
        *dst++ = WATER_MASK_PALETTE_CHUNK(*src++, mask);
        *dst++ = WATER_MASK_PALETTE_CHUNK(*src++, mask);
        *dst++ = WATER_MASK_PALETTE_CHUNK(*src++, mask);
        *dst++ = WATER_MASK_PALETTE_CHUNK(*src++, mask);
        *dst++ = WATER_MASK_PALETTE_CHUNK(*src++, mask);
    }
}

// (96.84%) https://decomp.me/scratch/XShZD
void sub_805274C(s16* arg0, u16* arg1, u32 UNUSED arg2, s32 count) {
    while (count-- != 0) 
    {
        ColorRaw r = (*arg1 >> 0x0) & 0x1F;
        u32 g = (*arg1 >> 0x5) & 0x1F;
        u32 b = (*arg1 >> 0xA) & 0x1F;

        r = (r >> 1) & 0x1F;
        g = (g >> 1) & 0x1F;
        r |= g << 5;
        b = (b >> 1) & 0x1F;
        r |= b << 10;
        
        *arg0 = r;
        arg0++;
        arg1++;
    }
}

void Task_8052798(void) {
    u16 spC;
    Vec2_16 sp2C;
    struct Camera* sp68;
    u16* sp6C;
    Sprite* temp_r5;
    StrcCodeUnk* temp_r7;
    Vec2_16* temp_r1_5;
    Vec2_16* var_r4;
    s16 temp_r0_3;
    s16 temp_r1_2;
    s16 temp_r2;
    s16 temp_r4;
    s16 temp_r4_3;
    s16 var_r1;
    s16 var_r1_2;
    s16 var_r5;
    s32 temp_r1_3;
    s8 var_r0_2;
    u16 temp_r1;
    u16 temp_r1_4;
    u16 temp_r4_2;
    u16 var_r0;
    u16 var_r6;
    u32 temp_r0;
    u32 temp_r0_4;
    u32 var_r0_3;
    u32 var_r2_2;
    u32 var_sb;
    u8 temp_r0_2;
    void* var_r2;

    temp_r1 = gCurTask->data;
    temp_r7 = temp_r1 + 0x03000000;
    sp68 = &gCamera;
    var_sb = 0;
    if ((sub_8052B84(temp_r7) << 0x10) != 0) {
        temp_r1->unk3000000 = 1U;
        sp68->unk69 = 1;
    } else {
        temp_r1->unk3000000 = 0U;
        sp68->unk69 = 0;
    }
    if (temp_r1->unk3000000 == 0) {
        gFlags &= ~0x40;
        return;
    }
    sp6C = temp_r1 + 0x0300003C;
    if ((u32) gStageData.gameMode <= 4U) {
        gFlags |= 4;
        gHBlankCopyTarget = (void* )0x0400001C;
        gHBlankCopySize = 2;
        var_r2 = gBgOffsetsHBlankPrimary;
        var_r1 = 0;
        do {
            temp_r1_2 = var_r1;
            if ((s32) (s16) (u16) ((u16) temp_r7->unk0.unk4 - gCamera.y) < (s32) temp_r1_2) {
                var_r0 = ((s32) ((u16) gSineTable[((((u32) (gStageData.timer & 0x1FF) >> 1) + (temp_r1_2 * 2)) * 0x10) & 0x3FF] << 0x10) >> 0x1C) + 8;
            } else {
                var_r0 = (u16) gBgScrollRegs[3][0];
            }
            *var_r2 = var_r0;
            var_r2 += 2;
            temp_r0 = (var_r1 << 0x10) + 0x10000;
            var_r1 = (s16) (temp_r0 >> 0x10);
        } while ((s32) ((s32) temp_r0 >> 0x10) <= 0x9F);
    }
    (void* )0x040000D4->unk0 = &gObjPalette[0xF9];
    (void* )0x040000D4->unk4 = &subroutine_arg0;
    (void* )0x040000D4->unk8 = 0x80000006;
    (void* )0x040000D4->unk0 = (u16* ) (&gObjPalette[0xF9] - 0xF2);
    (void* )0x040000D4->unk4 = &spC;
    (void* )0x040000D4->unk8 = 0x80000010;
    if ((gStageData.unk8 & 0xFFFF00) == 0x90400) {
        var_sb = 0x10000U >> 0x10;
    }
    var_r5 = 4;
    if (gStageData.gameMode != 6) {
        var_r5 = 3;
    }
    temp_r4 = (s16) (u16) (gStageData.zone - 1);
    CopyNColorsFromAnimPalette(sp6C, gUnknown_080D1BF6[temp_r4 + (s16) var_sb], 0x100U);
    var_r1_2 = 0;
    if ((s32) (var_r5 << 0x10) > 0) {
        do {
            temp_r4_3 = var_r1_2;
            CopyNColorsFromAnimPalette(temp_r7 + ((temp_r4_3 << 5) + 0x3C), *((temp_r4 * 2) + ((u32) (gPlayers[temp_r4_3].unk2A << 0x1C) >> 0x19) + gUnknown_080D1BC4), 0x10U);
            temp_r4_2 = temp_r4_3 + 1;
            var_r1_2 = (s16) temp_r4_2;
        } while ((s32) (s16) temp_r4_2 < (s32) var_r5);
    }
    if ((u32) gStageData.gameMode <= 5U) {
        CopyNColorsFromAnimPalette(temp_r1 + 0x0300007C, *(((u32) (gPlayers[gStageData.playerIndex].unk2A << 0x1C) >> 0x1B) + gUnknown_080D1BEC), 0x10U);
    }
    (void* )0x040000D4->unk0 = &subroutine_arg0;
    (void* )0x040000D4->unk4 = &temp_r7->palette[0xF9];
    (void* )0x040000D4->unk8 = 0x80000006;
    if ((s32) (void* )0x040000D4->unk8 < 0) {
        do {

        } while ((void* )0x040000D4->unk8 & 0x80000000);
    }
    (void* )0x040000D4->unk0 = &spC;
    (void* )0x040000D4->unk4 = &temp_r7->palette[0x80];
    (void* )0x040000D4->unk8 = 0x80000010;
    if ((s32) (void* )0x040000D4->unk8 < 0) {
        do {

        } while ((void* )0x040000D4->unk8 & 0x80000000);
    }
    MaskPaletteWithUnderwaterColor(&temp_r7->palette[0x100], gBgPalette, temp_r7->unk0.blendColors, 0x100);
    temp_r0_2 = gNumVBlankCallbacks;
    gNumVBlankCallbacks = temp_r0_2 + 1;
    *(((u32) (temp_r0_2 << 0x18) >> 0x16) + gVBlankCallbacks) = sub_8052C54;
    gFlags |= 0x10;
    temp_r2 = temp_r7->unk0.unk4;
    temp_r1_3 = sp68->y;
    if ((s32) temp_r2 <= temp_r1_3) {
        var_r0_2 = 0;
    } else if ((s32) temp_r2 < (s32) (temp_r1_3 + 0xA0)) {
        var_r0_2 = (u8) temp_r7->unk4 - temp_r1_3;
    } else {
        var_r0_2 = -1;
    }
    temp_r7->unk0.unk2 = var_r0_2;
    if ((u32) (u8) ((u8) temp_r7->unk0.unk1 - 1) <= 0x9EU) {
        temp_r5 = temp_r1 + 0x03000014;
        temp_r1_4 = 0 - ((sp68->x + ((u32) gStageData.timer >> 2)) & 7);
        temp_r5->x = temp_r1_4;
        var_r6 = temp_r1_4;
        temp_r0_3 = (u8) temp_r7->unk0.unk2 + 1;
        temp_r5->y = temp_r0_3;
        temp_r5->frameFlags |= 0xC0000;
        UpdateSpriteAnimation(temp_r5);
        if (gStageData.timer & 2) {
            var_r4 = &sp2C;
            DisplaySprite(temp_r5);
            var_r2_2 = 0xF;
            temp_r1_5 = var_r4;
            do {
                var_r6 = (u16) ((u32) ((var_r6 << 0x10) + 0x100000) >> 0x10);
                var_r4->x = (s16) var_r6;
                var_r4->y = temp_r0_3;
                temp_r0_4 = (var_r2_2 << 0x10) + 0xFFFF0000;
                var_r4 += 4;
                var_r2_2 = temp_r0_4 >> 0x10;
            } while ((s32) temp_r0_4 > 0);
            DisplaySprites(temp_r5, temp_r1_5, 0xFU);
        }
    }
    if ((u32) (u8) ((u8) temp_r7->unk0.unk2 - 1) <= 0x9EU) {
        *(s16* )0x04000208 = 0;
        gIntrTable[3] = VCountCB_WaterEffectCopyPalettes;
        *(s16* )0x04000208 = 1;
        sa2__gUnknown_03002874 = (u8) temp_r7->unk0.unk2 - 1;
        gFlags = gFlags | 0x40;
    } else {
        *(void* )0x04000208 = 0;
        gIntrTable[3] = gIntrTableTemplate[3];
        *(void* )0x04000208 = 1;
        gFlags = gFlags & ~0x40;
    }
}
#endif

s32 sub_8052B84(StrcCodeUnk *strc)
{
    StrcSmall *strcSmolVals = &strc->unk0;
    WaterRange *waterRange;
    s16 i;
    s32 count = gStageData.waterRangesCount;

    if (count == 0) {
        return 0;
    }

    {
        u16 camMinX, camMaxX, camMinY, camMaxY;
        u16 rMinX, rMaxX, rMinY, rMaxY;
        camMinX = gCamera.x;
        camMaxX = camMinX + DISPLAY_WIDTH;
        camMinY = gCamera.y;
        camMaxY = camMinY + DISPLAY_HEIGHT;

        for (waterRange = gStageData.waterRanges, i = 0; i < gStageData.waterRangesCount; i++, waterRange++) {
            rMinX = waterRange->minX;
            rMinY = waterRange->minY;
            rMaxX = waterRange->maxX;
            rMaxY = waterRange->maxY;

            if ((rMinX < camMaxX) && (rMinY < camMaxY) && (rMaxX > camMinX) && (rMaxY > camMinY)) {
                strcSmolVals->unk4 = rMinY;
                strcSmolVals->unk6 = waterRange->minY;
                return 1;
            }
        }
    }

    return 0;
}

void TaskDestructor_8052C18(Task *t)
{
    gFlags &= ~FLAGS_40;
    REG_IME = 0;
    gIntrTable[INTR_INDEX_VCOUNT] = gIntrTableTemplate[INTR_INDEX_VCOUNT];
    REG_IME = 1;
    gCamera.task54 = NULL;
}

void sub_8052C54(void)
{
    StrcCodeUnk *strc = TASK_DATA(gCamera.task54);
    strc->unk0.unk1 = strc->unk0.unk2;
    strc->unk0.flags &= ~1;

    if (strc->unk0.unk2 == 0) {
        DmaCopy32(3, &strc->palette[16 * PALETTE_LEN_4BPP], BG_PLTT, BG_COPY_SIZE);
        DmaCopy32(3, &strc->palette[0 * PALETTE_LEN_4BPP], OBJ_PLTT, OBJ_COPY_SIZE);
        gFlags |= (FLAGS_UPDATE_BACKGROUND_PALETTES | FLAGS_UPDATE_SPRITE_PALETTES);
    }
}

// DMAs the entire BG Palette and 15/16 OBJ palettes (not the last one) into internal Palette RAM
// TODO: Find out why it's not the whole thing!
void VCountCB_WaterEffectCopyPalettes(void)
{
    StrcCodeUnk *strc = TASK_DATA(gCamera.task54);
    ColorRaw *paletteOBJ = &strc->palette[0 * PALETTE_LEN_4BPP];

    DmaCopy32(3, &strc->palette[16 * PALETTE_LEN_4BPP], BG_PLTT, BG_COPY_SIZE);
    DmaCopy32(3, paletteOBJ, OBJ_PLTT, OBJ_COPY_SIZE);
    gFlags |= (FLAGS_UPDATE_BACKGROUND_PALETTES | FLAGS_UPDATE_SPRITE_PALETTES);

    REG_IF = INTR_FLAG_VCOUNT;
}

void sub_8052D2C(StrcSmall *smol) { }

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
