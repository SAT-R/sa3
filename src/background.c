#include "global.h"
#include "core.h"
#include "module_unclear.h"
#include "flags.h"
#include "sprite.h"
#include "tilemap.h"
#include "trig.h"
#include "lib/m4a/m4a.h"

#include "animation_commands.h"

static AnimCmdResult animCmd_GetTiles_BG(void *, Sprite *);
static AnimCmdResult animCmd_GetPalette_BG(void *, Sprite *);
static AnimCmdResult animCmd_JumpBack_BG(void *, Sprite *);
static AnimCmdResult animCmd_End_BG(void *, Sprite *);
static AnimCmdResult animCmd_PlaySoundEffect_BG(void *, Sprite *);
static AnimCmdResult animCmd_AddHitbox_BG(void *, Sprite *);
static AnimCmdResult animCmd_TranslateSprite_BG(void *, Sprite *);
static AnimCmdResult animCmd_8_BG(void *, Sprite *);
static AnimCmdResult animCmd_SetIdAndVariant_BG(void *, Sprite *);
static AnimCmdResult animCmd_10_BG(void *, Sprite *);
static AnimCmdResult animCmd_SetSpritePriority_BG(void *, Sprite *);
static AnimCmdResult animCmd_SetOamOrder_BG(void *, Sprite *);

const AnimationCommandFunc animCmdTable_BG[12] = {
    animCmd_GetTiles_BG,        animCmd_GetPalette_BG, animCmd_JumpBack_BG,          animCmd_End_BG,
    animCmd_PlaySoundEffect_BG, animCmd_AddHitbox_BG,  animCmd_TranslateSprite_BG,   animCmd_8_BG,
    animCmd_SetIdAndVariant_BG, animCmd_10_BG,         animCmd_SetSpritePriority_BG, animCmd_SetOamOrder_BG,
};

#define ReadInstruction(script, cursor) ((void *)(script) + (cursor * sizeof(s32)))

#define CastPointer(ptr, index) (void *)&(((u8 *)(ptr))[(index)])

void DrawBackground(Background *background)
{
    struct MapHeader *mapHeader = (struct MapHeader *)gTilemapsRef[background->tilemapId];
    const u16 *pal;
    const u8 *tiles;
    u32 palSize;
    u16 gfxSize;

    // Set tilemap (or tileset, for map chunks) dimensions and graphics
    background->xTiles = mapHeader->tileset.xTiles;
    background->yTiles = mapHeader->tileset.yTiles;
    tiles = mapHeader->tileset.tiles;
    gfxSize = mapHeader->tileset.tilesSize;

    if (!(background->flags & BACKGROUND_DISABLE_TILESET_UPDATE)) {
        ADD_TO_GRAPHICS_QUEUE(tiles, background->graphics.dest, gfxSize);
        background->flags ^= BACKGROUND_DISABLE_TILESET_UPDATE;
    }

    pal = mapHeader->tileset.palette;
    palSize = mapHeader->tileset.palLength;
    background->paletteOffset = mapHeader->tileset.palOffset;

    if (!(background->flags & BACKGROUND_DISABLE_PALETTE_UPDATE)) {
        if (gFlags & 0x10000) {
            sub_80C460C(pal, background->paletteOffset, palSize);
        } else {
            DmaCopy16(3, pal, gBgPalette + background->paletteOffset, palSize * sizeof(*pal));
            gFlags |= FLAGS_UPDATE_BACKGROUND_PALETTES;
        }

        background->flags ^= BACKGROUND_DISABLE_PALETTE_UPDATE;
    }

    background->layout = mapHeader->tileset.map;

    if (background->flags & BACKGROUND_FLAG_IS_LEVEL_MAP) {
        background->metatileMap = mapHeader->metatileMap;
        background->mapWidth = mapHeader->mapWidth;
        background->mapHeight = mapHeader->mapHeight;
    }

    ADD_TO_BACKGROUNDS_QUEUE(background);
}

// Code copy-pasted from SA2
// 2024, Nov. 7
NONMATCH("asm/non_matching/engine/sa2__sub_8002B20.inc", bool32 sa2__sub_8002B20(void))
{
    u16 sp00;
    s32 sp04 = 0;
    s32 bytesPerTileIndex;
    u16 sp0C; // line-size ?
    u16 sp10;
    u16 sp14;
    u32 affine; // -> r3
    u32 bgId; // -> r5 = (bg->flags & BACKGROUND_FLAGS_MASK_BG_ID)
    s32 sb;
    u32 dmaSize;
    s32 i;
    s32 j;
    u16 k;

    while (gBackgroundsCopyQueueCursor != gBackgroundsCopyQueueIndex) {
        Background *bg;

#if !PORTABLE
        // TODO: This #if should not be required.
        if (!(REG_DISPSTAT & DISPSTAT_VBLANK))
            return FALSE;
#endif

        // _08002B64
        REG_VCOUNT;
        {
            Background **backgrounds = &gBackgroundsCopyQueue[0];
            s32 index = gBackgroundsCopyQueueCursor;
            bg = backgrounds[index];
            gBackgroundsCopyQueueCursor = (gBackgroundsCopyQueueCursor + 1) % ARRAY_COUNT(gBackgroundsCopyQueue);

            if ((bg->flags & BACKGROUND_FLAG_20) && (bg->scrollX == bg->prevScrollX) && bg->scrollY == bg->prevScrollY)
                continue;
        }
        // NOTE: register r4 = sp00
        sp00 = bg->xTiles;

        bgId = (bg->flags & BACKGROUND_FLAGS_MASK_BG_ID);
        if (bgId > 1 && ((gDispCnt & 0x3) > DISPCNT_MODE_0)) {
            affine = (gBgCntRegs[bgId] >> 14);
            sp0C = (0x10 << affine);
            bytesPerTileIndex = 1;
        } else {
            // _08002BD8
#if WIDESCREEN_HACK
            if (bg->flags & BACKGROUND_FLAG_IS_LEVEL_MAP) {
                if (gBgCntRegs[bgId] & BGCNT_TXT512x256) {
                    sp0C = 64;
                } else {
                    sp0C = 32;
                }
            } else {
                sp0C = 32;
            }
#else
            sp0C = 32;
#endif
            affine = (gBgCntRegs[bgId] >> 14);
            if ((affine == 1) || (affine == 3)) {
                sp04 = 0x800;
            }
            bytesPerTileIndex = 2;
        }

        // _08002BF8
        sp0C = (u16)(sp0C * bytesPerTileIndex);

        if (!(bg->flags & BACKGROUND_FLAG_20)) {
            if (!(bg->flags & BACKGROUND_FLAG_IS_LEVEL_MAP)) {
                // _08002C20
                u8 *r1 = CastPointer(bg->layoutVram, bg->unk24 * sp0C);
                u16 *r7 = CastPointer(r1, bg->unk22 * bytesPerTileIndex);
                u16 r5 = bg->targetTilesY;
                u16 k;

                // r2 <- bg->flags
                // r3 <- affine
                // r4 <- sp00
                // r5 <- bg->targetTilesY
                // sb = 0x20
                if (bg->flags & BACKGROUND_FLAG_100) {
                    // _08002C46
                    if (bg->flags & BACKGROUND_FLAG_80) {
                        u32 r0Index = (((bg->unk20 + r5) - 1) * sp00) * bytesPerTileIndex;
                        void *r2Ptr = CastPointer(bg->layout, r0Index);
                        u16 *r4Ptr = CastPointer(r2Ptr, ((bg->unk1E + bg->targetTilesX) - 1) * bytesPerTileIndex);

                        // _08002C7C
                        while (r5-- != 0) {

                            // _08002C9A
                            for (k = 0; k < bg->targetTilesX; k++) {
                                r7[k] = (*(r4Ptr - k) ^ TileMask_FlipXY);
                            }

                            r7 = CastPointer(r7, sp0C);
                            r4Ptr = (void *)(((u8 *)r4Ptr) - (sp00 * bytesPerTileIndex));
                        }
                    } else {
                        // _08002CD4
                        u32 someIndex = (bg->unk20 * sp00);
                        void *r2Ptr = CastPointer(bg->layout, someIndex * bytesPerTileIndex);
                        u32 index2 = ((bg->unk1E + bg->targetTilesX) - 1);
                        u16 *r4Ptr = CastPointer(r2Ptr, index2 * bytesPerTileIndex);

                        // _08002D08
                        while (r5-- != 0) {
                            for (k = 0; k < bg->targetTilesX; k++) {
                                r7[k] = (*(r4Ptr - k) ^ TileMask_FlipX);
                            }

                            r7 = CastPointer(r7, sp0C);
                            r4Ptr = CastPointer(r4Ptr, (sp00 * bytesPerTileIndex));
                        }
                    }
                } else {
                    u16 *r4Ptr;
                    // r2 <- bg->flags
                    // r3 <- affine
                    // r4 <- sp00
                    // r5 <- r5 = bg->targetTilesY
                    // sb = 0x20
                    // _08002D50
                    if (bg->flags & BACKGROUND_FLAG_80) {
                        u32 r0Index = (((bg->unk20 + r5) - 1) * sp00);
                        void *r1Ptr = CastPointer(bg->layout, r0Index * bytesPerTileIndex);
                        r4Ptr = CastPointer(r1Ptr, bg->unk1E * bytesPerTileIndex);

                        while (r5-- != 0) {
                            u16 i;
                            sb = sp00 * bytesPerTileIndex;

                            for (i = 0; i < bg->targetTilesX; i++) {
                                r7[i] = r4Ptr[i] ^ 0x800;
                            }

                            r7 = CastPointer(r7, sp0C);

                            r4Ptr = (u16 *)(((u8 *)r4Ptr) - sb);
                        }
                    } else {
                        // _08002DD4
                        if ((affine & 1) && (bytesPerTileIndex == 2) && ((32 - bg->unk22) > 0)
                            && ((bg->targetTilesX + bg->unk22 - 32) > 0)) {
                            s32 vR2;
                            // __08002DF8
                            r4Ptr = (u16 *)(&bg->layout[bg->unk20 * sp00] + bg->unk1E);
                            sb = (32 - bg->unk22) * 2;
                            vR2 = (bg->targetTilesX + bg->unk22 - 32) * 2;

                            while (r5-- != 0) {
                                // _08002E1C
                                // r7 <- bytesPerTileIndex
                                DmaCopy16(3, r4Ptr, r7, sb);
                                DmaCopy16(3, CastPointer(r4Ptr, sb), CastPointer(r7, sp04), vR2);

                                r7 = CastPointer(r7, sp0C);
                                r4Ptr = CastPointer(r4Ptr, (sp00 * bytesPerTileIndex));
                            }

                        } else {
                            // __08002E74
                            u32 r0Index = bg->unk20 * sp00 * bytesPerTileIndex;
                            void *r1Ptr = CastPointer(bg->layout, r0Index);
                            void *r4Ptr = CastPointer(r1Ptr, bg->unk1E * bytesPerTileIndex);

                            // r0 = r0Index
                            // r1 = r1Ptr
                            // r2 = sp00
                            // r4 = r4Ptr
                            // r6 = bg
                            // r7 =
                            while (r5-- != 0) {
                                // _08002EA4
                                DmaCopy16(3, r4Ptr, r7, (s32)(bg->targetTilesX * bytesPerTileIndex));
                                r7 = CastPointer(r7, sp0C);
                                r4Ptr = CastPointer(r4Ptr, sp00 * bytesPerTileIndex);
                            }
                        }
                    }
                }
            } else {
                // ( (bg->flags & BACKGROUND_FLAG_IS_LEVEL_MAP) != 0)

                // r3 = affine
                // r6 = bg
                // _08002ED4
                s32 sp18;
                s32 sp1C;
                u32 sp20;
                s32 r1;
                sp10 = bg->unk1E;
                sp14 = bg->unk20;

                // _08002EE8
                for (i = 0; i < bg->targetTilesX; i += r1) {
                    s32 r5Res;
                    s32 r8;
                    s32 sp10_i = sp10 + i;
                    s32 temp;

                    sp18 = Div(sp10_i, bg->xTiles);
                    r1 = bg->xTiles;
                    r5Res = sp18;

                    sp1C = sp10_i - r5Res * bg->xTiles;

                    r8 = bg->targetTilesY;
                    temp = (bg->targetTilesX - i);
                    r1 -= sp1C;
                    if (r1 > temp)
                        r1 = (bg->targetTilesX - i);

                    sp20 = r1 * bytesPerTileIndex;

                    // _08002F28
                    // sb = j
                    for (j = 0; j < bg->targetTilesY;) {
                        void *dmaSrc, *dmaDest;
                        s32 r5;
#ifndef NON_MATCHING
                        register const u16 *r1Ptr asm("r1");
                        register void *r2Ptr asm("r2");
                        register void *r0Ptr asm("r0");
#else
                        const u16 *r1Ptr;
                        void *r2Ptr;
                        void *r0Ptr;
#endif
                        s32 temp2;
                        u32 v;
                        s32 r4 = sp14 + j;
                        s32 result = Div(r4, bg->yTiles);
                        r4 -= result * bg->yTiles;
                        r5 = bg->yTiles - r4;

                        result *= bg->mapWidth;
                        r2Ptr = (void *)bg->metatileMap;
                        temp2 = sp18 << 1;
                        r0Ptr = CastPointer(r2Ptr, result * 2);
                        r1Ptr = CastPointer(r0Ptr, temp2);

                        // r1 = v
                        v = *((u16 *)r1Ptr) * bg->xTiles * bg->yTiles;
                        v += r4 * bg->xTiles + sp1C;
                        v *= bytesPerTileIndex;

                        dmaSrc = ((u8 *)bg->layout) + v;

                        {
                            void *r0;
                            r0 = CastPointer(bg->layoutVram, bg->unk24);
                            r0 = CastPointer(r0, sp0C * j);
                            r0 = CastPointer(r0, bg->unk22);
                            dmaDest = CastPointer(r0, i * bytesPerTileIndex);
                        }

                        j += r5;

                        if (r5 > r8)
                            r5 = r8;

                        r8 -= r5;

                        while (r5-- != 0) {
                            DmaCopy16(3, dmaSrc, dmaDest, (s32)sp20);
                            dmaDest += sp0C;
                            dmaSrc += sp00 * bytesPerTileIndex;
                        }
                    }
                }
                // _08002FD6
            }
        } else {
            // r2 <- bg->flags
            // r3 <- bg->unk30
            // r4 <- sp00 == bg->xTiles
            // r5 <- bgId
            // _08002FE8
            if (!(bg->flags & BACKGROUND_FLAG_IS_LEVEL_MAP)) {
                // u32 vR2 = bg->xTiles;
                while (bg->scrollX >= sp00 * 8)
                    bg->scrollX -= sp00 * 8;

                while (bg->scrollY >= bg->yTiles * 8) {
                    bg->scrollY -= bg->yTiles * 8;
                }
            }
            //_08003034
            gBgScrollRegs[bgId][0] = bg->scrollX & 0x7;
            gBgScrollRegs[bgId][1] = bg->scrollY & 0x7;

            // If a new line of tiles has to be loaded on either axis...
            if ((bg->prevScrollX >> 3 != bg->scrollX >> 3) || (bg->prevScrollY >> 3 != bg->scrollY >> 3)) {
                if (!(bg->flags & BACKGROUND_FLAG_IS_LEVEL_MAP)) {
                    // _08003072
                    // TODO: Something'S wrong with the types here (r2 should be s16?)
                    u16 *r7Ptr;
                    s16 r2;
                    u16 r5;
                    u16 *sp3C;
                    u32 notherIndex;
                    sp10 = (u16)((bg->scrollX >> 3) + bg->unk1E);
                    sp14 = (u16)((bg->scrollY >> 3) + bg->unk20);

                    notherIndex = (bg->unk24 * sp0C);
                    r7Ptr = CastPointer(bg->layoutVram, notherIndex);
                    r7Ptr = CastPointer(r7Ptr, bg->unk22 * bytesPerTileIndex);

                    if (((bg->targetTilesX + sp10) + 1) > bg->xTiles) {
                        r2 = (bg->xTiles - 1);
                    } else {
                        r2 = 0;
                    }

                    r5 = bg->targetTilesY + 1;
                    if (bg->flags & BACKGROUND_FLAG_100) {
                        // _080030D4
                        if (bg->flags & BACKGROUND_FLAG_80) {
                            // _080030DC
                            u32 index = ((bg->unk20 + r5) - 1) * bg->xTiles;
                            u16 *r1Ptr = CastPointer(bg->layout, index * bytesPerTileIndex);
                            u32 index2 = ((bg->unk1E + bg->targetTilesX) - 1);
                            u16 *r4Ptr = CastPointer(r1Ptr, index2 * bytesPerTileIndex);

                            while (r5-- != 0) {
                                // _08003108
                                for (k = 0; k < bg->targetTilesX; k++) {
                                    u32 mask = TileMask_FlipXY;
                                    // _08003126
                                    sp3C = &r7Ptr[k];
                                    *sp3C = (r4Ptr[0 - k] ^ mask);
                                }
                            }
                        } else {
                            // _08003158
                            u32 index;
                            u16 *r1Ptr;
                            u32 index2;
                            u16 *r4Ptr;
                            index = bg->unk20;
                            index *= bytesPerTileIndex;
                            r1Ptr = (u16 *)&((u8 *)bg->layout)[index];
                            index2 = bg->unk1E + bg->targetTilesX - 1;
                            r4Ptr = CastPointer(r1Ptr, index2 * bytesPerTileIndex);

                            while (r5-- != 0) {
                                // _08003180
                                for (k = 0; k < bg->targetTilesX; k++) {
                                    // _0800319E
                                    sp3C = &r7Ptr[k];
                                    *sp3C = (r4Ptr[0 - k] ^ TileMask_FlipX);
                                }
                            }
                        }
                    } else {
                        // _080031D0
                        if (bg->flags & BACKGROUND_FLAG_80) {
                            // _080031D8
                            u32 index = ((sp14 + r5) - 1);
                            u16 *r0Ptr = (u16 *)&((u8 *)bg->layout)[index * bytesPerTileIndex];
                            u32 index2 = sp10;
                            u16 *r4Ptr = &r0Ptr[index2 * bytesPerTileIndex];

                            while (r5-- != 0) {
                                u16 k;

                                for (k = 0; k < bg->targetTilesX; k++) {
                                    sp3C = &r7Ptr[k];
                                    *sp3C = r4Ptr[k] ^ TileMask_FlipY;
                                }
                                r7Ptr = CastPointer(r7Ptr, sp0C);
                                r4Ptr = (void *)(((u8 *)r4Ptr) - sp00 * bytesPerTileIndex);
                            }
                        } else {
                            // _08003254
                            u32 index = (sp14 * bg->xTiles);
                            u16 *r0Ptr = CastPointer(bg->layout, index * bytesPerTileIndex);
                            u32 index2 = sp10;
                            u16 *r4Ptr = CastPointer(r0Ptr, index2 * bg->xTiles);

                            // _08003298
                            while (--r5 != 0) {
                                DmaCopy16(3, r4Ptr, r7Ptr, (s32)({
                                              dmaSize = bg->targetTilesX - (r2 - 1);
                                              dmaSize *= bytesPerTileIndex;
                                              dmaSize;
                                          }));

                                r7Ptr = CastPointer(r7Ptr, sp0C);
                                r4Ptr = CastPointer(r4Ptr, sp00 * bytesPerTileIndex);
                            }
                        }
                    }
                    // _080032C4
                    if (r2 != 0) {
                        // _080032CE
                        u8 *r1 = CastPointer(bg->layoutVram, bg->unk24 * sp0C); // <- r1
                        u32 displayTile = bg->unk22 + bg->xTiles - sp10; // <- r0
                        u16 *r7Ptr = CastPointer(r1, displayTile * bytesPerTileIndex);
                        u16 r5 = (bg->targetTilesY + 1);

                        if (bg->flags & BACKGROUND_FLAG_100) {
                            if (bg->flags & BACKGROUND_FLAG_80) {
                                // _08003306
                                u32 index = ((sp14 + r5) - 1) * bg->xTiles;
                                u16 *r1Ptr = CastPointer(bg->layout, index * bytesPerTileIndex);
                                u16 *r4Ptr = CastPointer(r1Ptr, (r2 - 1) * bytesPerTileIndex);

                                while (--r5 != (u16)-1) {
                                    for (k = 0; k < bg->targetTilesX; k++) {
                                        r7Ptr[k] = *(r4Ptr - k) ^ TileMask_FlipXY;
                                    }
                                    r7Ptr = CastPointer(r7Ptr, sp0C);
                                    r4Ptr = (u16 *)(((u8 *)r4Ptr) - sp00 * bytesPerTileIndex);
                                }
                            } else {
                                // _08003380
                                u32 index;
                                u16 *r4Ptr;
                                index = sp14 * bg->xTiles;
                                index *= bytesPerTileIndex;
                                r1 = &((u8 *)bg->layout)[index];
                                r4Ptr = (u16 *)&r1[(r2 - 1) * bytesPerTileIndex];

                                while (--r5 != (u16)-1) {
                                    for (k = 0; k < bg->targetTilesX; k++) {
                                        r7Ptr[k] = *(r4Ptr - k) ^ TileMask_FlipX;
                                    }
                                    r7Ptr = CastPointer(r7Ptr, sp0C);
                                    r4Ptr = CastPointer(r4Ptr, sp00 * bytesPerTileIndex);
                                }
                            }
                        } else {
                            // _080033F4
                            if (bg->flags & BACKGROUND_FLAG_80) {
                                // _080033FC
                                u32 index = ((sp14 + r5) - 1) * bg->xTiles;
                                u16 *r4Ptr = (u16 *)&((u8 *)bg->layout)[index * bytesPerTileIndex];

                                // u32 sp30 = r2;
                                while (--r5 != (u16)-1) {
                                    for (k = 0; k < r2; k++) {
                                        u16 *sp3C = &r7Ptr[k];
                                        *sp3C = r4Ptr[k] ^ TileMask_FlipY;
                                    }
                                    r7Ptr = CastPointer(r7Ptr, sp0C);
                                    r4Ptr = (u16 *)(((u8 *)r4Ptr) - sp00 * bytesPerTileIndex);
                                }
                            } else {
                                // _08003474
                                u32 index = (sp14 * bg->xTiles);
                                u16 *r4Ptr = CastPointer(bg->layout, index * bytesPerTileIndex);

                                while (r5-- != 0) {
                                    dmaSize = bytesPerTileIndex * r2;
                                    // _08003492
                                    DmaCopy16(3, r4Ptr, r7Ptr, (s32)dmaSize);

                                    r7Ptr = CastPointer(r7Ptr, sp0C);
                                    r4Ptr = CastPointer(r4Ptr, sp00 * bytesPerTileIndex);
                                }
                            }
                        }
                    }
                } else {
                    // Tilemap is Level Map

                    // _080034DC
                    sp10 = (bg->scrollX / 8) + bg->unk1E;
                    sp14 = (bg->scrollY / 8) + bg->unk20;

                    for (i = 0; i < bg->targetTilesX;) {
                        // _08003500
                        s32 r4 = sp10 + i;
                        s32 sp24 = Div(r4, bg->xTiles);
                        s32 r1 = bg->xTiles;
                        s32 sp28 = r4 - (sp24 * r1);
                        s32 sp2C;
                        // s32 sp34;
                        s32 r8 = bg->targetTilesY;
                        s32 remainingX = bg->targetTilesX - i;
                        r1 = r1 - sp28;

                        if (r1 > remainingX)
                            r1 = remainingX;

                        // _0800352E
                        sp2C = r1 * bytesPerTileIndex;

                        for (j = 0; j < bg->targetTilesY;) {
                            // _08003542
                            s32 divident = sp14 + j;
                            s32 yPos = Div(divident, bg->yTiles);
                            s32 new_r4 = divident - (yPos * bg->yTiles);
                            s32 r5 = bg->yTiles - new_r4;
                            yPos *= bg->mapWidth;

                            { // _0800355C
                                s32 metatileIndex = *(&bg->metatileMap[yPos] + sp24) * bg->xTiles * bg->yTiles;
                                s32 otherVal;

                                otherVal = new_r4 * bg->xTiles;
                                otherVal += sp28;
                                otherVal += metatileIndex;

                                {
                                    // r4 <- dmaSrc
                                    u8 *dmaSrc;
                                    u8 *dmaDest;
                                    u8 *destPtr;
                                    // u32 destIndex;
                                    dmaSrc = CastPointer(bg->layout, otherVal * bytesPerTileIndex);
                                    destPtr = CastPointer(bg->layoutVram, bg->unk24);
                                    destPtr += sp0C * j;
                                    destPtr += +bg->unk22;
                                    dmaDest = CastPointer(destPtr, i * bytesPerTileIndex);

                                    j += r5;

                                    if (r5 > r8)
                                        r5 = r8;
                                    r8 -= r5;

                                    // _080035A4
                                    while (r5-- != 0) {
                                        dmaSize = sp2C;
                                        DmaCopy16(3, dmaSrc, dmaDest, (s32)dmaSize);
                                        dmaDest += sp0C;
                                        dmaSrc += sp00 * bytesPerTileIndex;
                                    }
                                }
                            }
                        }

                        i += r1;
                    }
                }
            }
        }
        // _080035FA
        REG_VCOUNT;
        bg->prevScrollX = bg->scrollX;
        bg->prevScrollY = bg->scrollY;
    }

    return 1;
}
END_NONMATCH

// Matches in SA2!
// (99.89%) https://decomp.me/scratch/renVB
NONMATCH("asm/non_matching/engine/UpdateBgAnimationTiles.inc", void UpdateBgAnimationTiles(Background *bg))
{
    Tilemap *tilemap = (Tilemap *)gTilemapsRef[bg->tilemapId];
    const u8 *tiles;

    if (tilemap->animFrameCount > 0) {
        if (tilemap->animDelay <= ++bg->animDelayCounter) {
            u32 animTileSize;

            bg->animDelayCounter = 0;

            if (tilemap->animFrameCount <= ++bg->animFrameCounter)
                bg->animFrameCounter = 0;

            animTileSize = tilemap->animTileSize;

            if (!(bg->flags & BACKGROUND_UPDATE_ANIMATIONS)) {
                if (bg->animFrameCounter == 0) {
                    tiles = tilemap->tiles;
                } else {
                    u32 tilesSize;
                    const u8 *_tiles = tilemap->tiles;
                    tilesSize = tilemap->tilesSize;
                    _tiles += tilesSize;
                    tiles = _tiles + (bg->animFrameCounter - 1) * animTileSize;
                }

                ADD_TO_GRAPHICS_QUEUE(tiles, bg->graphics.dest, animTileSize);
            } else {
                u8 *_tiles = bg->graphics.dest;
                _tiles += tilemap->tilesSize;
                tiles = _tiles + (bg->animFrameCounter * animTileSize);
                ADD_TO_GRAPHICS_QUEUE(tiles, bg->graphics.dest, animTileSize);
            }
        }
    }
}
END_NONMATCH

// Differences to UpdateSpriteAnimation:
// - SPRITE_INIT_ANIM_IF_CHANGED gets executed *after* the if.
// - Uses animCmdTable_BG instead of animCmdTable
s32 sa2__sub_80036E0(Sprite *s)
{

    SPRITE_INIT_ANIM_IF_CHANGED(s);

    if (s->frameFlags & SPRITE_FLAG_MASK_ANIM_OVER) {
        return 0;
    }

    if (s->qAnimDelay > 0)
        s->qAnimDelay -= s->animSpeed * 16;
    else {
        s32 ret;
        const ACmd *cmd;
        const ACmd *script;
        const ACmd **variants;

        // Handle all the "regular" Animation commands with an ID < 0
        variants = gRefSpriteTables->animations[s->anim];
        script = variants[s->variant];
        cmd = ReadInstruction(script, s->animCursor);
        while (cmd->id < 0) {
            // TODO: Fix types to make these const
            ret = animCmdTable_BG[~cmd->id]((void *)cmd, s);
            if (ret != 1) {
#ifdef NON_MATCHING
                register const ACmd *newScript asm("r1");
#else
                ACmd *newScript;
#endif
                if (ret != -1) {
                    return ret;
                }

                // animation has changed
                variants = gRefSpriteTables->animations[s->anim];
                newScript = (ACmd *)variants[s->variant];
                // reset cursor
                s->animCursor = 0;
                // load the new script
                script = newScript;
            }
            cmd = ReadInstruction(script, s->animCursor);
        }

        // Display the image 'index' for 'delay' frames
        s->qAnimDelay += (((ACmd_ShowFrame *)cmd)->delay << 8);
        s->qAnimDelay -= s->animSpeed * 16;

#if 0
        // SA2
        {
            s32 frame = ((ACmd_ShowFrame *)cmd)->index;
            if (frame != -1) {
                const struct SpriteTables *sprTables = gRefSpriteTables;

                s->dimensions = &sprTables->dimensions[s->anim][frame];
            } else {
                s->dimensions = (void *)-1;
            }
        }
#endif

        s->frameNum = ((ACmd_ShowFrame *)cmd)->index;
        s->frameFlags |= SPRITE_FLAG_MASK_26;
        s->animCursor += 2;
    }
    return 1;
}

// (88.98%) https://decomp.me/scratch/zClIO
NONMATCH("asm/non_matching/engine/sub_80BE190.inc", s32 sub_80BE190(Sprite *s, u16 in_param1))
{
    s32 param1 = in_param1;
    s32 res;
    s32 ret = 0;
    s32 r9 = ret;

    s->prevVariant = s->variant;
    s->prevAnim = s->anim;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    SPRITE_FLAG_CLEAR(s, ANIM_OVER);

    {
        const ACmd *cmd;
        const ACmd *script;
        const ACmd **variants;

        // Handle all the "regular" Animation commands with an ID < 0
        variants = gRefSpriteTables->animations[s->anim];
        script = variants[s->variant];

        while (param1 >= 0) {
            cmd = ReadInstruction(script, s->animCursor);
            asm("");

            while (cmd->id < 0) {
                // TODO: Fix types to make these const
                if (cmd->id == -3) {
                    r9 = ret;
                }
                res = animCmdTable_BG[~cmd->id]((void *)cmd, s);
                if (res != 1) {

                    ACmd *newScript;

                    if (res != -1) {
                        return res;
                    }

                    // animation has changed
                    variants = gRefSpriteTables->animations[s->anim];
                    newScript = (ACmd *)variants[s->variant];
                    // reset cursor
                    s->animCursor = 0;
                    // load the new script
                    script = newScript;
                }

                cmd = ReadInstruction(script, s->animCursor);
            }

            // Display the image 'index' for 'delay' frames
            s->qAnimDelay = (((ACmd_ShowFrame *)cmd)->delay << 8);
            param1 = (param1 - (((ACmd_ShowFrame *)cmd)->delay));
            s->qAnimDelay = -QS(param1);

            if ((r9 != 0) && param1 > 0) {
                param1 = Mod(param1, r9);
            } else {
                ret += ((ACmd_ShowFrame *)cmd)->delay;
            }

            s->frameNum = ((ACmd_ShowFrame *)cmd)->index;
            s->frameFlags |= SPRITE_FLAG_MASK_26;
            s->animCursor += 2;
        }
    }

    return 1;
}
END_NONMATCH

// (-1)
// No differences to animCmd_GetTiles
static AnimCmdResult animCmd_GetTiles_BG(void *cursor, Sprite *s)
{
    ACmd_GetTiles *cmd = (ACmd_GetTiles *)cursor;
    s->animCursor += AnimCommandSizeInWords(*cmd);

    if ((s->frameFlags & SPRITE_FLAG_MASK_19) == 0) {
        s32 tileIndex = cmd->tileIndex;
        const void *tiles;
        u16 size;

        if (tileIndex < 0) {
#ifdef BUG_FIX
            // Compilers *should* optimize the multiplication with a '<< 6', clearing the
            // high-bit. But if they don't, it could underflow.
            tileIndex &= ~0x80000000;
#endif
            tiles = &gRefSpriteTables->tiles_8bpp[tileIndex * TILE_SIZE_8BPP];
            size = cmd->numTilesToCopy * TILE_SIZE_8BPP;
        } else {
            tiles = &gRefSpriteTables->tiles_4bpp[tileIndex * TILE_SIZE_4BPP];
            size = cmd->numTilesToCopy * TILE_SIZE_4BPP;
        }

        ADD_TO_GRAPHICS_QUEUE(tiles, s->tiles, size);
    }

    return 1;
}

// (-2)
// This is different to animCmd_GetPalette in that:
// - gBgPalette is used instead of gObjPalette
// - gFlags ->  FLAGS_UPDATE_BACKGROUND_PALETTES
//   instead of FLAGS_UPDATE_SPRITE_PALETTES
static AnimCmdResult animCmd_GetPalette_BG(void *cursor, Sprite *s)
{
    ACmd_GetPalette *cmd = (ACmd_GetPalette *)cursor;
    s->animCursor += AnimCommandSizeInWords(*cmd);

    if (!(s->frameFlags & SPRITE_FLAG_MASK_18)) {
        s32 paletteIndex = cmd->palId;

        if (gFlags & 0x10000) {
            sub_80C460C(&gRefSpriteTables->palettes[paletteIndex * 16], (u8)((s->palId * 16) + (cmd->insertOffset & 0xFF)), cmd->numColors);
        } else {
            DmaCopy16(3, &gRefSpriteTables->palettes[paletteIndex * 16], &gBgPalette[s->palId * 16 + cmd->insertOffset],
                      cmd->numColors * 2);
            gFlags |= FLAGS_UPDATE_BACKGROUND_PALETTES;
        }
    }

    return 1;
}

static AnimCmdResult animCmd_AddHitbox_BG(void *cursor, Sprite *s)
{
    ACmd_Hitbox *cmd = (ACmd_Hitbox *)cursor;
    s32 index = cmd->hitbox.index & 0xF;
    s->animCursor += AnimCommandSizeInWords(*cmd);

    DmaCopy32(3, &cmd->hitbox, &s->hitboxes[index].index, sizeof(Hitbox));

    if ((cmd->hitbox.b.left == 0) && (cmd->hitbox.b.top == 0) && (cmd->hitbox.b.right == 0) && (cmd->hitbox.b.bottom == 0)) {
        s->hitboxes[index].index = -1;
    } else {
        if (s->frameFlags & SPRITE_FLAG_MASK_Y_FLIP) {
            XOR_SWAP(s->hitboxes[index].b.top, s->hitboxes[index].b.bottom);
        }

        if (s->frameFlags & SPRITE_FLAG_MASK_X_FLIP) {
            XOR_SWAP(s->hitboxes[index].b.left, s->hitboxes[index].b.right);
        }
    }

    return 1;
}

// void sa2__sub_8003914(Sprite *s) ???
//
//  VERY UNFINISHED!
//  (31.36%) https://decomp.me/scratch/YIsVM
NONMATCH("asm/non_matching/engine/background__sub_80BE46C.inc", void sub_80BE46C(Sprite *s))
{
    const SpriteOffset *dims;

    gUnknown_030061C0[sa2__gUnknown_03005390] = s;
    sa2__gUnknown_03005390++;

    if (s->frameNum != -1) {
        u32 bgId;

        if ((u32)s->frameNum >> 28) {
            dims = &gRefSpriteTables->dimensions[s->anim][s->frameNum];
        } else {
            dims = &gRefSpriteTables->dimensions[s->anim][0];
        }

        bgId = SPRITE_FLAG_GET(s, BG_ID);
        // Potential UB:
        //     gDispCnt 'Mode' is an int, not a bitfield!
        if ((bgId > 1) && (gDispCnt & (DISPCNT_MODE_1 | DISPCNT_MODE_2))) {
            // __sa2__sub_8003954
            s32 affineX, affineY;
            s32 posX, posY;

            posX = dims->offsetX - s->x;
            affineX = Mod(posX, 16);
            gBgAffineRegs[bgId - 2].x = Q(affineX);

            posY = dims->offsetY - s->y;
            affineY = Mod(posY, 8);
            gBgAffineRegs[bgId - 2].y = Q(affineY);
        } else {
            // _080039A4
            s32 scrollX, scrollY;
            s32 posX, posY;

            posX = dims->offsetX - s->x;
            scrollX = Mod(posX, 16);
            gBgScrollRegs[bgId][0] = scrollX;

            posY = dims->offsetY - s->y;
            scrollY = Mod(posY, 8);
            gBgScrollRegs[bgId][1] = scrollY;
        }
    }
}
END_NONMATCH

// Some VBlank function
// VERY UNFINISHED !
// (17.39%) https://decomp.me/scratch/YJZrk
NONMATCH("asm/non_matching/engine/sa2__sub_80039E4.inc", bool32 sa2__sub_80039E4(void))
{
    // tilesize (could be 32 and get optimized out?)
    s32 sp28 = 5;

#if !PORTABLE
    // TODO: this might not be needed
    if (!(REG_DISPSTAT & DISPSTAT_VBLANK)) {
        return FALSE;
    }
#endif

// TODO: once function matches this can be removed
#if PORTABLE
    sa2__gUnknown_03005390 = 0;
    return TRUE;
#endif

    if (sa2__gUnknown_03005390 != 0) {
        OamDataShort oam;
        s32 r5;
        s32 sp08;
        u16 shapeAndSize;
        Sprite *s; // = sp0C
        const SpriteOffset *dims;
        u32 sp10; // bg_affine_pixelcount
        const u16 *const *oamSub;
        OamDataShort *sp1C;
        u32 tilesX; // =sp20
        u32 tilesY; // =ip
        s32 xPos; // =r8
        s32 yPos; // =r5
        u16 oamX, oamY;

        for (r5 = 0; r5 < sa2__gUnknown_03005390; r5++) {
            // _08003A1A
            s = gUnknown_030061C0[r5];
            dims = &gRefSpriteTables->dimensions[s->anim][s->frameNum];

            if (dims != (void *)-1) {
                u32 bgId = SPRITE_FLAG_GET(s, BG_ID);
                void *bgVram = (void *)BG_CHAR_ADDR((gBgCntRegs[bgId] & BGCNT_CHARBASE(3)) >> 2);
                void *bgBase = bgVram + ((gBgCntRegs[bgId] & BGCNT_SCREENBASE_MASK) << 3);

                if (gBgCntRegs[bgId] & BGCNT_256COLOR) {
                    // tilesize (could be 32 and get optimized out?)
                    sp28 = 6;
                }

                // TODO: Remove this comment if it matches without what it says
                // NOTE: This might be the following:
                //       (... && ((gDispCnt & DISPCNT_MODE_1) || (gDispCnt &
                //       DISPCNT_MODE_2))) But it would be UB in that case, since the
                //       mode is determined by 3 bits, so the value could also be
                //       DISPCNT_MODE_3 or DISPCNT_MODE_5.
                if ((bgId >= 2) && ((gDispCnt & 0x3) != DISPCNT_MODE_0)) {
                    // _08003A84
                    // u16 sp24;
                    u8 sp30;
                    s32 shrunkTileId;
                    void *r7;
                    u16 affine = (gBgCntRegs[bgId] & BGCNT_AFF1024x1024) >> 14;
                    sp10 = ((1024 * 1024) << affine) >> 16;
                    oamSub = gRefSpriteTables->oamData;

                    // OAM entry for this sub-frame
                    sp1C = (OamDataShort *)oamSub[s->anim];
                    sp1C = &sp1C[dims->oamIndex];

                    for (sp08 = 0; sp08 < dims->numSubframes; sp08++) {
                        u16 tileId;
                        // _08003ABE
                        sp30 = sp10;
                        DmaCopy16(3, sp1C, &oam, sizeof(OamDataShort));
                        sp1C++;

                        shapeAndSize = oam.shape << 2;
                        shapeAndSize |= oam.size;
                        tilesX = gOamShapesSizes[shapeAndSize][0] >> 3;
                        tilesY = gOamShapesSizes[shapeAndSize][1] >> 3;
                        yPos = s->y - dims->offsetY;
                        xPos = s->x - dims->offsetX;
                        xPos &= ~0xF;
                        r7 = bgBase + (((oam.y + yPos) >> 3) * sp10);
                        tileId = ((size_t)(((uintptr_t)s->tiles) - (uintptr_t)bgVram)) >> sp28;
                        shrunkTileId = (oam.tileNum + tileId) & 0xFF;

                        // __08003B68
                        // sp08++;
                        while (tilesY-- != 0) {
                            // _08003B74
                            //(r7 + (oam.tileNum >> 3));

                            // UNFINISHED //
                        }
                    }
                } else {
                    // _08003C2C
                    u8 bgReg = (gBgCntRegs[bgId] >> 14);
                    if (bgReg == 2 || bgReg == 3) {
                        sp10 = 0x40;
                    }
                    // _08003C46
                    sp1C = (OamDataShort *)gRefSpriteTables->oamData[s->anim];
                    sp1C = (OamDataShort *)&sp1C[dims->oamIndex];

                    // _08003C78
                    for (sp08 = 0; sp08 < dims->numSubframes; sp08++) {
                        s32 someOffsetY;
                        u32 yFlip;
                        DmaCopy16(3, sp1C, &oam, sizeof(OamDataShort));
                        sp1C++;

                        shapeAndSize = oam.shape << 2;
                        shapeAndSize |= oam.size;
                        tilesX = gOamShapesSizes[shapeAndSize][0] >> 3;
                        tilesY = gOamShapesSizes[shapeAndSize][1] >> 3;
                        oamY = oam.y;
                        oamX = oam.x;
                        oam.paletteNum += s->palId;
                        // __08003CD8

                        yFlip = s->frameFlags >> SPRITE_FLAG_SHIFT_Y_FLIP;
                        // yFlip ^= (dims->flip >> 1);

                        if (yFlip & 1) {
                            // ___08003CEE
                            // alt: oam.all.attr1 ^ 0x2000
                            oam.matrixNum ^= 0x4; // do flip Y in OAM
                            //  if (dims->flip & 0x1)
                            {
                                // __08003D04
                                someOffsetY = s->y + dims->offsetY;
                            }
                            // else
                            {
                                // _08003D2C
                                someOffsetY = s->y + (dims->height - dims->offsetY);
                            }
                            // _08003D3C
                            someOffsetY -= 8;
                            oamX = -oamX;
                        } else {
                            // _08003D4A
                            someOffsetY = s->y - dims->offsetY;
                        }

                        // if ((SPRITE_FLAG_GET(s, X_FLIP) & 0x1) != (dims->flip & 0x1))
                        {

                            //} else {
                            //_08003DB4
                        }
                    }
                }
            }
        }

        sa2__gUnknown_03005390 = 0;
    }

    return TRUE;
}

END_NONMATCH

void sa2__sub_8003EE4(u16 p0, s16 p1, s16 p2, s16 p3, s16 p4, s16 p5, s16 p6, BgAffineReg *affine)
{
    affine->pa = (COS_24_8(p0) * (s16)Div(0x10000, p1)) >> 8;
    affine->pb = (SIN_24_8(p0) * (s16)Div(0x10000, p1)) >> 8;
    affine->pc = ((-SIN(p0) >> 6) * (s16)Div(0x10000, p2)) >> 8;
    affine->pd = (COS_24_8(p0) * (s16)Div(0x10000, p2)) >> 8;

    p5 *= -1;
    p6 *= -1;
    {
        // __sa2__sub_8003FA8
        s32 r1 = (s16)affine->pa * p5;
        s32 r3 = (s16)affine->pb * p6;

        affine->x = (r1 + r3) + p3 * 256;
    }
    {
        // __sa2__sub_8003FBE
        s32 r1 = (s16)affine->pc * p5;
        s32 r3 = (s16)affine->pd * p6;

        affine->y = (r1 + r3) + p4 * 256;
    }
}

// Not in SA2
NONMATCH("asm/non_matching/engine/background__sub_80BECF8.inc", void sub_80BECF8(Sprite *s, void *maybeScreenFade, void *emptyTaskPtr)) { }
END_NONMATCH

// (54.19%) https://decomp.me/scratch/6n5R5
NONMATCH("asm/non_matching/engine/sa2__sub_8004010.inc", u32 sa2__sub_8004010(void))
{
    u8 bgIndex = 0;
    u16 sp00[2];
    u8 r4;
    u8 *spVramPtr;
    u16 bgSize_TxtOrAff;

    s32 sp08;

    for (; bgIndex < 4; bgIndex++) {

        if ((sa2__gUnknown_03002280[bgIndex][1] == sa2__gUnknown_03002280[bgIndex][3])
            && (sa2__gUnknown_03002280[bgIndex][0] == sa2__gUnknown_03002280[bgIndex][2]))
            continue;

        { // _08004056
            u16 target = gBgCntRegs[bgIndex];
            u16 *vramBgCtrl = (u16 *)VRAM;
            target &= BGCNT_SCREENBASE_MASK;
            vramBgCtrl += target * 4;

            r4 = sa2__gUnknown_03002280[bgIndex][1];

            sp08 = sa2__gUnknown_03002280[bgIndex][0];

            if ((bgIndex > 1) && (gDispCnt & (DISPCNT_MODE_2 | DISPCNT_MODE_1 | DISPCNT_MODE_0))) {
                // _0800408E
                spVramPtr = (u8 *)&vramBgCtrl[sp08];
                bgSize_TxtOrAff = (0x10 << (gBgCntRegs[bgIndex] >> 14));

                if (sa2__gUnknown_03002280[bgIndex][3] == 0xFF) {
                    // _080040A2
                    u16 v = sa2__gUnknown_03004D80[bgIndex];
                    u32 value;
                    v |= v << 8;

                    value = ((sa2__gUnknown_03002280[bgIndex][3] - r4) * bgSize_TxtOrAff);
                    DmaFill16(3, v, (void *)&spVramPtr[bgSize_TxtOrAff], (((s32)(value + (value >> 31))) >> 1));
                } else {
                    // _080040F8
                    // u8 i2 = i + 1;
                    for (; r4 < sa2__gUnknown_03002280[bgIndex][3]; r4++) {
                        u16 v = sa2__gUnknown_03004D80[bgIndex];
                        v |= v << 8;

                        DmaFill16(3, v, &spVramPtr[bgIndex * r4], (s32)(bgIndex * 4 - sa2__gUnknown_03002280[bgIndex][0] + 1));
                    }
                }
                // then -> _0800422C
            } else {
                // _08004168
                int tileSize = 32;
                u8 *p1p;

                if ((u8)((gBgCntRegs[sp08] >> 14) - 2) <= 1)
                    tileSize = 64;

                if (sa2__gUnknown_03002280[bgIndex][2] == 0xFF) {
                    u8 r1 = sa2__gUnknown_03004D80[bgIndex];
                    p1p = &sa2__gUnknown_03002280[bgIndex][tileSize];
                    sp00[0] = r1;

#if 0
                    // TODO: This crashes the game after selecting a stage right now.
                    DmaFill16(3, sp00[0], &sa2__gUnknown_03002280[bgIndex][tileSize],
                              sa2__gUnknown_03002280[bgIndex][3] - r4);
#endif
                } else {
                    // _080041D8
                    for (; r4 <= sa2__gUnknown_03002280[bgIndex][3]; r4++) {
                        // _080041F6
                        DmaFill16(3, sa2__gUnknown_03004D80[bgIndex], &sa2__gUnknown_03002280[bgIndex][tileSize],
                                  ARRAY_COUNT(sa2__gUnknown_03002280[0]));
                    }
                }
            }
            // _0800422C
            DmaFill32(3, 0, &sa2__gUnknown_03002280[bgIndex], ARRAY_COUNT(sa2__gUnknown_03002280[bgIndex]));
        }
    }

    return 1;
}
END_NONMATCH

// Copies the font to VRAM and displays the input text by using it as tileset.
s32 RenderText(void *dest, const void *font, u16 x, u16 y, u8 bg, const char *text, u8 palette)
{
    u8 i = 0;

    u16 *vramTiles = (void *)BG_CHAR_ADDR_FROM_BGCNT(bg);

    u16 layoutBase = (gBgCntRegs[bg] & BGCNT_SCREENBASE_MASK) << 3;
    u16 *vramLayout = ({ (u16 *)(VRAM + (layoutBase)); }) + y * 32 + x;

    for (; text[i] != 0; i++) {
        u16 *copyDest = dest + (i * TILE_SIZE_4BPP);
        u16 tile;
        u16 *addr;
        CpuFastCopy(font + (text[i] * TILE_SIZE_4BPP), copyDest, TILE_SIZE_4BPP);

        tile = (copyDest - vramTiles) / 16u;
#ifndef NON_MATCHING
        vramLayout++;
        vramLayout--;
#endif

        addr = &vramLayout[i];

        *addr = (palette << 12) | tile;
    }

    return i * TILE_SIZE_4BPP;
}

// (-3)
AnimCmdResult animCmd_JumpBack_BG(void *cursor, Sprite *s)
{
    ACmd_JumpBack *cmd = cursor;
    s->animCursor -= cmd->offset;

    return 1;
}

// (-4)
static AnimCmdResult animCmd_End_BG(void *cursor, Sprite *s)
{
    SPRITE_FLAG_SET(s, ANIM_OVER);

    return 0;
}

// (-5)
static AnimCmdResult animCmd_PlaySoundEffect_BG(void *cursor, Sprite *s)
{
    ACmd_PlaySoundEffect *cmd = cursor;
    s->animCursor += AnimCommandSizeInWords(*cmd);

    m4aSongNumStart(cmd->songId);

    return 1;
}

// (-7)
static AnimCmdResult animCmd_TranslateSprite_BG(void *cursor, Sprite *s)
{
    ACmd_TranslateSprite *cmd = cursor;
    s->animCursor += AnimCommandSizeInWords(*cmd);

    s->x += cmd->x;
    s->y += cmd->y;

    return 1;
}

// (-8)
static AnimCmdResult animCmd_8_BG(void *cursor, Sprite *s)
{
    ACmd_8 *cmd = cursor;
    s->animCursor += AnimCommandSizeInWords(*cmd);

    return 1;
}

static AnimCmdResult animCmd_SetIdAndVariant_BG(void *cursor, Sprite *s)
{
    ACmd_SetIdAndVariant *cmd = cursor;
    s->animCursor += AnimCommandSizeInWords(*cmd);

    s->anim = cmd->animId;
    s->prevVariant = 0xFF;
    s->variant = cmd->variant;

    return -1;
}

static AnimCmdResult animCmd_10_BG(void *cursor, Sprite *s)
{
    ACmd_10 *cmd = cursor;
    s->animCursor += AnimCommandSizeInWords(*cmd);

#ifdef BUG_FIX
    return 1; // I think this should be the correct behavior?
#else
    return (s32)cursor;
#endif
}

// This is not a NOP-instruction in the regular version
static AnimCmdResult animCmd_SetSpritePriority_BG(void *cursor, Sprite *s)
{
    ACmd_SetSpritePriority *cmd = cursor;
    s->animCursor += AnimCommandSizeInWords(*cmd);
    return 1;
}

// This is not a NOP-instruction in the regular version
static AnimCmdResult animCmd_SetOamOrder_BG(void *cursor, Sprite *s)
{
    ACmd_SetOamOrder *cmd = cursor;
    s->animCursor += AnimCommandSizeInWords(*cmd);
    return 1;
}

#if (GAME >= GAME_SA3)
NONMATCH("asm/non_matching/engine/background__unused__sub_80BF1CC.inc", void sub_80BF1CC(void *param0)) { }
END_NONMATCH
#endif
