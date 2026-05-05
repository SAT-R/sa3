#include "global.h"
#include "core.h"
#include "flags.h"
#include "trig.h"
#include "color.h"
#include "game/shared/stage/camera.h"
#include "game/shared/stage/water_effects.h"
#include "game/stage.h"
#include "constants/anim_commands.h"

/* This module is certainly based on the SA2 code, but heavily modified in SA3. */

#ifndef NON_MATCHING
// NOTE: CopyNColorsFromAnimPalette() only matches using a constant 2
#define COLOR_SIZE 2
#else
#define COLOR_SIZE sizeof(ColorRaw)
#endif

#define BG_COPY_SIZE  (16 * (PALETTE_LEN_4BPP * COLOR_SIZE))
#define OBJ_COPY_SIZE (15 * (PALETTE_LEN_4BPP * COLOR_SIZE))

void MaskPaletteWithUnderwaterColor(u32 *dst, u32 *src, u32 mask, s32 size);
void Task_StageWaterTask(void);
bool16 IsWaterVisible(Water *water);
void TaskDestructor_8052C18(Task *t);
void sub_8052C54(void);
void VCountCB_WaterEffectCopyPalettes(void);
void sub_8052D2C(Water *water);
void CopyNColorsFromAnimPalette(u16 *destPalette, AnimId anim, u16 numColors);

extern AnimId gUnknown_080D1BC4[NUM_CHARACTERS][4];
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

#if 01

void sub_80525F0(s32 arg0, u32 flags)
{
    Water *water;
    void *temp_r0;
    Sprite *s;

    gCamera.task54 = TaskCreate(Task_StageWaterTask, sizeof(Water), 0xFFFE, 0, &TaskDestructor_8052C18);
    water = TASK_DATA(gCamera.task54);
    water->currentWaterLevel = -1;
    water->targetWaterLevel = -1;
    water->SA2_LABEL(unk2) = -1;
    water->SA2_LABEL(unk1) = -1;
    water->flags = flags & 0x100;
    water->blendColors = arg0;
    sub_8052D2C(water);
    s = &water->s;
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
#endif

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
NONMATCH("asm/non_matching/game/shared/stage/we__sub_805274C.inc", void sub_805274C(s16 *arg0, u16 *arg1, u32 UNUSED arg2, s32 count))
{
    while (count-- != 0) {
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
END_NONMATCH

// (98.41%) https://decomp.me/scratch/AvNo7
NONMATCH("asm/non_matching/game/shared/stage/we__Task_StageWaterTask.inc", void Task_StageWaterTask(void))
{
    u16 sp00[6];
    u16 sp0C[16];
    Vec2_16 surfaceSpritePositions[15];
    struct Camera *sp68;
    Sprite *s;
    Water *water;
    Vec2_16 *temp_r1_5;
    Vec2_16 *var_r4;
    s16 temp_r0_3;
    s16 zone;
    s16 temp_r4_3;
    s16 var_r5;
    s32 temp_r1_3;
    s8 var_r0_2;
    u16 temp_r1_4;
    u16 temp_r4_2;
    u16 var_r0;
    u32 temp_r0;
    u32 temp_r0_4;
    u32 var_r0_3;
    s16 i;
    s16 line;
    s16 sprIdx;
    s16 var_sb;
    u8 temp_r0_2;
    u16 *var_r2;

    water = TASK_DATA(gCurTask);
    sp68 = &gCamera;
    var_sb = 0;
    if (IsWaterVisible(water)) {
        water->isActive = TRUE;
        sp68->unk69 = 1;
    } else {
        water->isActive = FALSE;
        sp68->unk69 = 0;
    }
    if (!water->isActive) {
        gFlags &= ~FLAGS_40;
        return;
    }

    {
        s16 someY = (water->currentWaterLevel - gCamera.y);
        if (gStageData.gameMode < GAME_MODE_5) {
            u32 timer = ((u32)(gStageData.timer & 0x1FF) >> 1);
            gFlags |= FLAGS_EXECUTE_HBLANK_COPY;
            gHBlankCopyTarget = (void *)&REG_BG3HOFS;
            gHBlankCopySize = 2;
            var_r2 = gBgOffsetsHBlankPrimary;

            for (line = 0; line < DISPLAY_HEIGHT; line++) {
                if (someY < line) {
                    *var_r2 = (SIN(((timer + (line * 2)) * 0x10) & ONE_CYCLE) >> 0xC) + 8;
                } else {
                    *var_r2 = (u16)gBgScrollRegs[3][0];
                }
                var_r2++;
            }
        }
    }

    zone = (gStageData.zone - 1);
    DmaCopy16(3, &gObjPalette[249], sp00, ARRAY_COUNT(sp00) * COLOR_SIZE);
    DmaCopy16(3, &gObjPalette[128], sp0C, ARRAY_COUNT(sp0C) * COLOR_SIZE);

    if (gStageData.zone == 4 && gStageData.act == 9) {
        var_sb++;
    }
    if (gStageData.gameMode != 6) {
        var_r5 = 3;
    } else {
        var_r5 = 4;
    }
    CopyNColorsFromAnimPalette(water->wd.pal[0], gUnknown_080D1BF6[zone + var_sb], 0x100U);
    for (i = 0; i < var_r5; i++) {
        CopyNColorsFromAnimPalette(&water->wd.pal[i][0], gUnknown_080D1BC4[gPlayers[i].charFlags.character][zone], PALETTE_LEN_4BPP);
    }

    if (gStageData.gameMode < 6) {
        CopyNColorsFromAnimPalette(&water->wd.pal[2][0], gUnknown_080D1BEC[gPlayers[gStageData.playerIndex].charFlags.character], 0x10U);
    }

    DmaCopy16(3, sp00, &water->wd.pal[15][9], ARRAY_COUNT(sp00) * COLOR_SIZE);
    DmaWait(3);

    DmaCopy16(3, sp0C, &water->wd.pal[8], ARRAY_COUNT(sp0C) * COLOR_SIZE);
    DmaWait(3);

    MaskPaletteWithUnderwaterColor((u32 *)&water->wd.pal[16][0], (u32 *)gBgPalette, water->blendColors, 0x100);

    gVBlankCallbacks[gNumVBlankCallbacks++] = sub_8052C54;
    gFlags |= FLAGS_EXECUTE_VBLANK_CALLBACKS;

    if (water->currentWaterLevel <= sp68->y) {
        water->SA2_LABEL(unk2) = 0;
    } else if (water->currentWaterLevel < (sp68->y + DISPLAY_HEIGHT)) {
        water->SA2_LABEL(unk2) = water->currentWaterLevel - sp68->y;
    } else {
        water->SA2_LABEL(unk2) = -1;
    }

    if ((int_vcount)(water->SA2_LABEL(unk1) - 1) < (DISPLAY_HEIGHT - 1)) {
        s32 theX;
        s32 theY;
        u16 baseX;
        u16 baseY;
        s = &water->s;
        theX = sp68->x;
        theX += (gStageData.timer >> 2);
        theX &= 7;
        theX = -theX;
        s->x = theX;
        baseX = theX;
        theY = s->y = water->SA2_LABEL(unk2) + 1;

        s->frameFlags |= (SPRITE_FLAG_MASK_19 | SPRITE_FLAG_MASK_18);
        UpdateSpriteAnimation(s);

        if (gStageData.timer & 0x2) {
            var_r4 = &surfaceSpritePositions[0];
            DisplaySprite(s);

            for (sprIdx = ARRAY_COUNT(surfaceSpritePositions); sprIdx > 0; sprIdx--, var_r4++) {
                baseX += 16;
                var_r4->x = baseX;
                var_r4->y = theY;
            }

            DisplaySprites(s, surfaceSpritePositions, ARRAY_COUNT(surfaceSpritePositions));
        }
    }

    if ((int_vcount)(water->SA2_LABEL(unk2) - 1) < (DISPLAY_HEIGHT - 1)) {
        REG_IME = 0;
        gIntrTable[3] = VCountCB_WaterEffectCopyPalettes;
        REG_IME = 1;
        sa2__gUnknown_03002874 = water->SA2_LABEL(unk2) - 1;
        gFlags |= FLAGS_40;
    } else {
        REG_IME = 0;
        gIntrTable[INTR_INDEX_VCOUNT] = gIntrTableTemplate[INTR_INDEX_VCOUNT];
        REG_IME = 1;

        gFlags &= ~FLAGS_40;
    }
}
END_NONMATCH

bool16 IsWaterVisible(Water *water)
{
    WaterRange *waterRange;
    s16 i;
    s32 count = gStageData.waterRangesCount;

    if (count == 0) {
        return FALSE;
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
                water->currentWaterLevel = waterRange->minY;
                water->targetWaterLevel = waterRange->minY;
                return TRUE;
            }
        }
    }

    return FALSE;
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
    Water *water = TASK_DATA(gCamera.task54);
    water->SA2_LABEL(unk1) = water->SA2_LABEL(unk2);
    water->flags &= ~1;

    if (water->SA2_LABEL(unk2) == 0) {
        DmaCopy32(3, &water->wd.pal[16][0], BG_PLTT, BG_COPY_SIZE);
        DmaCopy32(3, &water->wd.pal[0][0], OBJ_PLTT, OBJ_COPY_SIZE);
        gFlags |= (FLAGS_UPDATE_BACKGROUND_PALETTES | FLAGS_UPDATE_SPRITE_PALETTES);
    }
}

// DMAs the entire BG Palette and 15/16 OBJ palettes (not the last one) into internal Palette RAM
// TODO: Find out why it's not the whole thing!
void VCountCB_WaterEffectCopyPalettes(void)
{
    Water *water = TASK_DATA(gCamera.task54);
    ColorRaw *paletteOBJ = &water->wd.pal[0][0];

    DmaCopy32(3, &water->wd.pal[16][0], BG_PLTT, BG_COPY_SIZE);
    DmaCopy32(3, paletteOBJ, OBJ_PLTT, OBJ_COPY_SIZE);
    gFlags |= (FLAGS_UPDATE_BACKGROUND_PALETTES | FLAGS_UPDATE_SPRITE_PALETTES);

    REG_IF = INTR_FLAG_VCOUNT;
}

void sub_8052D2C(Water *smol) { }

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
