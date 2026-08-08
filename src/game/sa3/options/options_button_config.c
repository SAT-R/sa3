#include "global.h"
#include "core.h"
#include "game/player_controls.h"
#include "game/save.h"

typedef struct {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 unk4;
    u8 *initArg3;
    u16 unkC[3][3]; // TODO: Not sure whether this is a 2D array of three [3]-arrays
    s16 highlitButton;
    u16 unk20;
    u16 unk22;
    Vec2_32 unk24[2][3];
    s32 unk54;
    s32 unk58;
    s32 unk5C;
    s32 unk60;
    u16 unk64;
    u16 unk66;
    u8 *vram68;
    Sprite spr6C[3];
    Sprite sprE4[3];
    Sprite spr15C[2];
    Sprite spr1AC[2];
    Sprite spr1FC;
    Sprite spr224;
} OptionsButtonConfig; /* 0x24C */

void Options_ButtonConfig(s16 highlitButton, u8 *vramBase, s16 *arg2, u8 *arg3);

void sub_8091150(OptionsButtonConfig *config);
void Task_Options_ButtonConfig_Init(void);
void sub_8091A44(OptionsButtonConfig *config);
void sub_8091AE0(OptionsButtonConfig *config);
void sub_8091B78(OptionsButtonConfig *config);
void sub_8091BC4(OptionsButtonConfig *config);
void sub_8091C38(OptionsButtonConfig *config);
void TaskDestructor_Options_ButtonConfig(Task *t);
void sub_8091CA0(OptionsButtonConfig *config);
void sub_8091CDC(OptionsButtonConfig *config);

extern const TileInfo2 gUnknown_080D7024[6];
extern const TileInfo2 gUnknown_080D7234[6];
extern const TileInfo2 gUnknown_080D7264[23];
extern const TileInfo2 gUnknown_080D731C[3];
extern const TileInfo2 gUnknown_080D7334[6];
extern const TileInfo2 gUnknown_080D736C[2];
extern const TileInfo2 gUnknown_080D7364;
extern ColorRaw gUnknown_080D737C[16];
extern ColorRaw gUnknown_080D739C[16];
extern const ButtonConfigPacked gUnknown_080D73BC;

// (99.44%) https://decomp.me/scratch/tWAor
NONMATCH("asm/non_matching/game/sa3/options/opt__Options_ButtonConfig.inc", void Options_ButtonConfig(s16 highlitButton, u8 *vramBase, s16 *arg2, u8 *arg3))
{
    u16 sp4[3] = { LOADED_SAVE->buttonConfig.jump, LOADED_SAVE->buttonConfig.attack, LOADED_SAVE->buttonConfig.trick };
    u8 spC[3] = { 0, 1, 2 };
    u8 var_r6;
    struct Task *t
        = TaskCreate(Task_Options_ButtonConfig_Init, sizeof(OptionsButtonConfig), 0x100U, 0U, TaskDestructor_Options_ButtonConfig);
    OptionsButtonConfig *config = TASK_DATA(t);

    config->highlitButton = highlitButton;
    config->initArg3 = arg3;
    config->unk20 = 0;
    config->unk1 = 0;
    config->unk3 = 2;
    config->unk2 = 0;
    config->unk22 = 0;
    config->unk4 = 1;

    for (var_r6 = 0; var_r6 < ARRAY_COUNT(sp4); var_r6++) {
        switch (sp4[var_r6]) {
            case A_BUTTON:
                config->unkC[2][0] = spC[var_r6];
                break;

            case B_BUTTON:
                config->unkC[2][1] = spC[var_r6];
                break;

            case R_BUTTON:
                config->unkC[2][2] = spC[var_r6];
                break;
        }
    }

    config->unk20 = config->unkC[2][0];

    for (var_r6 = 0; var_r6 < ARRAY_COUNT(config->unk24[0]); var_r6++) {
        u8 argh[8];

        config->unk24[0][var_r6].x = 0x70 - gBgScrollRegs[1][0];
        config->unk24[0][var_r6].y = 0x2D - gBgScrollRegs[1][1];
        config->unk24[1][var_r6].x = config->unk24[0][var_r6].x - 0x46;
        config->unk24[1][var_r6].y = config->unk24[0][var_r6].y;
        config->unkC[0][var_r6] = config->unkC[2][var_r6];
        config->unkC[1][var_r6] = config->unkC[2][var_r6];
    }

    config->unk54 = -gBgScrollRegs[1][0];
    config->unk58 = -gBgScrollRegs[1][1];
    config->unk64 = -gBgScrollRegs[1][0] + 100;
    config->unk66 = -gBgScrollRegs[1][1];
    config->unk5C = -gBgScrollRegs[1][0];
    config->unk60 = -gBgScrollRegs[1][1];
    config->vram68 = vramBase;
    config->unk0 = LOADED_SAVE->language;
    sub_8091150(config);
}
END_NONMATCH

void sub_8091150(OptionsButtonConfig *config) {
    Vec2_32 *sp0;
    s32 *sp4;
    Sprite *temp_r0;
    Sprite *temp_r4;
    TileInfo2 *var_r0;
    TileInfo2 *var_r3_2;
    s32 temp_r3;
    u16 var_r3;
    u8 var_r7;
    void *temp_r3_2;

    {
        Sprite *s = &config->spr224;
        s->tiles = config->vram68;
        config->vram68 += gUnknown_080D7334[config->unk0].numTiles * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D7334[config->unk0].anim;
        s->variant = gUnknown_080D7334[config->unk0].variant;
        s->prevVariant = 0xFF;
        s->x = (s16) ((u16) config->unk64 >> 8);
        s->y = (s16) ((u16) config->unk66 >> 8);
        s->oamFlags = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        s->hitboxes[0].index = -1;
        UpdateSpriteAnimation(s);
    }

    for (var_r7 = 0; var_r7 < ARRAY_COUNT(config->spr6C); var_r7++)
    {
        {
            Sprite *s = &config->spr6C[var_r7];
            s->tiles = config->vram68;
            config->vram68 += gUnknown_080D7264[var_r7 + (config->unk0 * 4)].numTiles * TILE_SIZE_4BPP;
            s->anim = gUnknown_080D7264[var_r7 + (config->unk0 * 4)].anim;
            s->variant = gUnknown_080D7264[var_r7 + (config->unk0 * 4)].variant;
            s->prevVariant = -1;
            s->x = (config->unk24[0][var_r7].x >> 8);
            s->y = (config->unk24[0][var_r7].y >> 8);
            s->oamFlags = 0x40;
            s->animCursor = 0;
            s->qAnimDelay = 0;
            s->animSpeed = 0x10;
            s->palId = 0;
            s->frameFlags = 0;
            s->hitboxes[0].index = -1;
            UpdateSpriteAnimation(s);
        }

        {
            Sprite *s = &config->sprE4[var_r7];
            s->tiles = config->vram68;
            config->vram68 += gUnknown_080D731C[var_r7].numTiles * TILE_SIZE_4BPP;
            s->anim = gUnknown_080D731C[var_r7].anim;
            s->variant = gUnknown_080D731C[var_r7].variant;
            s->prevVariant = -1;
            s->x = (config->unk24[1][var_r7].x >> 8);
            s->y = (config->unk24[1][var_r7].y >> 8);
            s->oamFlags = 0x40;
            s->animCursor = 0;
            s->qAnimDelay = 0;
            s->animSpeed = 0x10;
            s->palId = 0;
            s->frameFlags = 0;
            s->hitboxes[0].index = -1;
            UpdateSpriteAnimation(s);
        }
    }

    for (var_r7 = 0; var_r7 < ARRAY_COUNT(config->spr1AC); var_r7++)
    {
        Sprite *s = &config->spr1AC[var_r7];
        s->tiles = config->vram68;
        temp_r3 = var_r7 * 8;
        config->vram68 += gUnknown_080D736C[var_r7].numTiles * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D736C[var_r7].anim;
        s->variant = gUnknown_080D736C[var_r7].variant;
        s->prevVariant = -1;
        s->x = config->unk24[0][config->highlitButton].x - 8;
        s->y = config->unk24[0][config->highlitButton].y + ((u16) config->highlitButton * 0x10) - 4;
        s->oamFlags = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        s->hitboxes[0].index = -1;
        UpdateSpriteAnimation(s);
    }

    {
        Sprite *s = &config->spr1FC;
        s->tiles = config->vram68;
        config->vram68 += gUnknown_080D7364.numTiles << 5;
        s->anim = gUnknown_080D7364.anim;
        s->variant = gUnknown_080D7364.variant;
        s->prevVariant |= ~0;
        s->x = config->unk24[0][config->highlitButton].x - 8;
        s->y = config->unk24[0][config->highlitButton].y + ((u16) config->highlitButton * 0x10) - 4;
        s->oamFlags = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        s->hitboxes[0].index = -1;
        UpdateSpriteAnimation(s);
    }

    for (var_r7 = 0; var_r7 < ARRAY_COUNT(config->spr15C); var_r7++)
    {
        Sprite *s = &config->spr15C[var_r7];
        s->tiles = config->vram68;
        if (var_r7 == 0) {
            config->vram68 += gUnknown_080D7024[config->unk0].numTiles * TILE_SIZE_4BPP;
            s->anim = gUnknown_080D7024[config->unk0].anim;
            s->variant = gUnknown_080D7024[config->unk0].variant;
        } else {
            config->vram68 += gUnknown_080D7234[config->unk0].numTiles * TILE_SIZE_4BPP;
            s->anim = gUnknown_080D7234[config->unk0].anim;
            s->variant = gUnknown_080D7234[config->unk0].variant;
        }
        s->prevVariant = -1;
        s->x = I(config->unk54);
        s->y = I(config->unk58);
        s->oamFlags = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        s->hitboxes[0].index = -1;
        UpdateSpriteAnimation(s);
    }
}

#if 0
void Task_Options_ButtonConfig_Init(OptionsButtonConfig *config) {
    ButtonConfig *var_r7;
    s16 temp_r2;
    s16 var_r0_2;
    s32 temp_r1_3;
    s32 temp_r2_3;
    u16 *temp_r1;
    u16 *temp_r1_2;
    u16 *temp_r1_4;
    u16 *temp_r2_2;
    u16 *temp_r2_4;
    u16 *temp_r6;
    u16 *temp_r6_2;
    u16 *temp_r6_3;
    u16 *temp_r6_4;
    u16 temp_r0;
    u16 temp_r0_2;
    u16 temp_r0_3;
    u16 temp_r0_4;
    u16 temp_r2_5;
    u16 temp_r2_6;
    u16 var_r0;
    u16 var_r4_3;
    u8 var_r0_3;
    u8 var_r4;
    u8 var_r4_2;
    u8 var_r4_4;
    u8 var_r4_5;

    sub_8091A44(config);
    sub_8091AE0(config);
    sub_8091CA0(config);
    sub_8091BC4(config);
    sub_8091CDC(config);
    sub_8091B78(config);
    sub_8091C38(config);
    if (((s32) gBgScrollRegs[1][0] <= -0xC8) && ((s64) (config->unk5C + gBgScrollRegs[1][0]) <= 0)) {
        config->unk4 = 1;
        *config->initArg3 = 0;
        if (0x20000 & gFlags) {
            CopyObjPaletteMasked(gUnknown_080D737C, 0U, 0x10U);
        } else {
            (void *)0x040000D4->unk0 = gUnknown_080D737C;
            (void *)0x040000D4->unk4 = gObjPalette;
            (void *)0x040000D4->unk8 = 0x80000010;
            gFlags |= 2;
        }
        TaskDestroy(gCurTask);
        return;
    }
    config->unk5C = 0 - gBgScrollRegs[1][0];
    if (gBgScrollRegs[1][0] != 0) {

    } else {
        if (!(1 & gPressedKeys)) {

        } else {
            temp_r1 = config->unkC[1];
            var_r4 = 0;
            temp_r6 = config->unkC[2];
            do {
                temp_r2 = config->highlitButton;
                if (var_r4 != temp_r2) {
                    temp_r1_2 = &temp_r1[var_r4];
                    if (temp_r1[config->highlitButton] == *temp_r1_2) {
                        *temp_r1_2 = temp_r6[temp_r2];
                    }
                }
                var_r4 += 1;
            } while ((u32) var_r4 <= 2U);
            var_r4_2 = 0;
            do {
                temp_r1_3 = var_r4_2 * 2;
                temp_r2_2 = &temp_r6[var_r4_2];
                *temp_r2_2 = temp_r1[var_r4_2];
                temp_r0 = *temp_r2_2;
                switch (temp_r0) {                  /* switch 1; irregular */
                case 0:                             /* switch 1 */
                    var_r0 = *(temp_r1_3 + &gUnknown_080D73C0);
                    var_r7 = &gLoadedSaveGame.buttonConfig;
block_25:
                    var_r7->jump = var_r0;
                    break;
                case 1:                             /* switch 1 */
                    var_r0 = *(temp_r1_3 + &gUnknown_080D73C0);
                    var_r7 = (ButtonConfig *) &gLoadedSaveGame.buttonConfig.attack;
                    goto block_25;
                case 2:                             /* switch 1 */
                    var_r0 = *(temp_r1_3 + &gUnknown_080D73C0);
                    var_r7 = (ButtonConfig *) &gLoadedSaveGame.buttonConfig.trick;
                    goto block_25;
                }
                config->unkC[0][var_r4_2] = temp_r6[var_r4_2];
                var_r4_2 += 1;
            } while ((u32) var_r4_2 <= 2U);
            config->unk20 = temp_r6[config->highlitButton];
            config->unk1 = 0;
            config->unk4 = 1;
            if (gFlags & 0x20000) {
                CopyObjPaletteMasked(gUnknown_080D737C, 0U, 0x10U);
            } else {
                (void *)0x040000D4->unk0 = gUnknown_080D737C;
                (void *)0x040000D4->unk4 = gObjPalette;
                (void *)0x040000D4->unk8 = 0x80000010;
                gFlags |= 2;
            }
        }
        if ((gBgScrollRegs[1][0] == 0) && (4 & gPressedKeys)) {
            m4aSongNumStart(0x6BU);
            var_r4_3 = 0;
            temp_r6_2 = config->unkC[2];
            do {
                temp_r2_3 = var_r4_3 * 2;
                temp_r1_4 = &temp_r6_2[var_r4_3];
                *temp_r1_4 = var_r4_3;
                config->unkC[1][var_r4_3] = var_r4_3;
                temp_r0_2 = *temp_r1_4;
                switch (temp_r0_2) {                /* switch 2; irregular */
                case 0:                             /* switch 2 */
                    gLoadedSaveGame.buttonConfig.jump = *(temp_r2_3 + &gUnknown_080D73C0);
                    break;
                case 1:                             /* switch 2 */
                    gLoadedSaveGame.buttonConfig.attack = *(temp_r2_3 + &gUnknown_080D73C0);
                    break;
                case 2:                             /* switch 2 */
                    gLoadedSaveGame.buttonConfig.trick = *(temp_r2_3 + &gUnknown_080D73C0);
                    break;
                }
                var_r4_3 = (u16) (u8) (var_r4_3 + 1);
            } while ((u32) var_r4_3 <= 2U);
            config->unk4 = 1;
            config->unk20 = temp_r6_2[config->highlitButton];
            if (0x20000 & gFlags) {
                CopyObjPaletteMasked(gUnknown_080D737C, 0U, 0x10U);
            } else {
                (void *)0x040000D4->unk0 = gUnknown_080D737C;
                (void *)0x040000D4->unk4 = gObjPalette;
                (void *)0x040000D4->unk8 = 0x80000010;
                gFlags |= 2;
            }
        }
    }
    if (2 & gPressedKeys) {
        if (config->unk1 != 0) {
            var_r4_4 = 0;
            temp_r6_3 = config->unkC[2];
            do {
                temp_r2_4 = &config->unkC[0][var_r4_4];
                temp_r6_3[var_r4_4] = *temp_r2_4;
                config->unkC[1][var_r4_4] = *temp_r2_4;
                var_r4_4 += 1;
            } while ((u32) var_r4_4 <= 2U);
            config->unk20 = temp_r6_3[config->highlitButton];
        }
        config->unk1 = 0;
        config->unk4 = 1;
        if (gFlags & 0x20000) {
            CopyObjPaletteMasked(gUnknown_080D737C, 0U, 0x10U);
        } else {
            (void *)0x040000D4->unk0 = gUnknown_080D737C;
            (void *)0x040000D4->unk4 = gObjPalette;
            (void *)0x040000D4->unk8 = 0x80000010;
            gFlags |= 2;
        }
    }
    if (gBgScrollRegs[1][0] != 0) {

    } else {
        if (0xC0 & gRepeatedKeys) {
            temp_r2_5 = 0x40 & gRepeatedKeys;
            if (temp_r2_5 != 0) {
                if (config->highlitButton == 0) {
                    var_r0_2 = 2;
                } else {
                    var_r0_2 = (u16) config->highlitButton - 1;
                }
                goto block_65;
            }
            if (0x80 & gRepeatedKeys) {
                if (config->highlitButton == 2) {
                    config->highlitButton = (s16) temp_r2_5;
                } else {
                    var_r0_2 = (u16) config->highlitButton + 1;
block_65:
                    config->highlitButton = var_r0_2;
                }
            }
            var_r4_5 = 0;
            temp_r6_4 = config->unkC[2];
            do {
                config->unkC[1][var_r4_5] = temp_r6_4[var_r4_5];
                var_r4_5 += 1;
            } while ((u32) var_r4_5 <= 2U);
            config->unk20 = temp_r6_4[config->highlitButton];
            config->unk4 = 1;
            if (gFlags & 0x20000) {
                CopyObjPaletteMasked(gUnknown_080D737C, 0U, 0x10U);
            } else {
                (void *)0x040000D4->unk0 = gUnknown_080D737C;
                (void *)0x040000D4->unk4 = gObjPalette;
                (void *)0x040000D4->unk8 = 0x80000010;
                gFlags |= 2;
            }
        }
        if ((gBgScrollRegs[1][0] == 0) && (0x30 & gRepeatedKeys)) {
            temp_r2_6 = 0x20 & gRepeatedKeys;
            if (temp_r2_6 != 0) {
                temp_r0_3 = config->unk20 - 1;
                config->unk20 = temp_r0_3;
                if ((s32) (temp_r0_3 << 0x10) < 0) {
                    config->unk20 = 2;
                }
            } else if (0x10 & gRepeatedKeys) {
                temp_r0_4 = config->unk20 + 1;
                config->unk20 = temp_r0_4;
                if ((s32) (s16) temp_r0_4 > 2) {
                    config->unk20 = temp_r2_6;
                }
            }
            config->unkC[1][config->highlitButton] = config->unk20;
            config->unk1 = 1;
            config->unk4 = 0;
        }
    }
    if (config->unk4 == 0) {
        if ((u32) config->unk22 >= (u32) config->unk3) {
            if (config->unk2 == 0) {
                if (0x20000 & gFlags) {
                    CopyObjPaletteMasked(gUnknown_080D737C, 0U, 0x10U);
                } else {
                    (void *)0x040000D4->unk0 = gUnknown_080D737C;
                    (void *)0x040000D4->unk4 = gObjPalette;
                    (void *)0x040000D4->unk8 = 0x80000010;
                    gFlags |= 2;
                }
                var_r0_3 = 1;
            } else {
                if (0x20000 & gFlags) {
                    CopyObjPaletteMasked(&gUnknown_080D739C, 0U, 0x10U);
                } else {
                    (void *)0x040000D4->unk0 = &gUnknown_080D739C;
                    (void *)0x040000D4->unk4 = gObjPalette;
                    (void *)0x040000D4->unk8 = 0x80000010;
                    gFlags |= 2;
                }
                var_r0_3 = 0;
            }
            config->unk2 = var_r0_3;
            config->unk22 = 0;
        }
        config->unk22 += 1;
    }
}

void sub_8091A44(OptionsButtonConfig *config) {
    Vec2_32 *temp_r4;
    s32 *temp_r3;
    s32 temp_r2;
    u8 var_r5;

    var_r5 = 0;
    do {
        temp_r2 = var_r5 * 8;
        temp_r4 = &config->unk24[0][var_r5];
        temp_r4->x = 0x70 - gBgScrollRegs[1][0];
        temp_r3 = &config->unk24[0][0].y + temp_r2;
        *temp_r3 = (((var_r5 * 0x10) + 0x2D) - gBgScrollRegs[1][1]) + temp_r2;
        config->unk24[1][var_r5].x = temp_r4->x - 0x46;
        *(&config->unk24[1][0].y + temp_r2) = *temp_r3;
        var_r5 += 1;
    } while ((u32) var_r5 <= 2U);
    config->unk54 = 0x78 - gBgScrollRegs[1][0];
    config->unk58 = 0x7B - gBgScrollRegs[1][1];
    config->unk64 = 0x78 - (u16) gBgScrollRegs[1][0];
    config->unk66 = 0x1E - (u16) gBgScrollRegs[1][1];
}

void sub_8091AE0(OptionsButtonConfig *config) {
    Sprite *temp_r4;
    u8 temp_r1;
    u8 var_r0;
    u8 var_r6;

    var_r6 = 0;
    do {
        temp_r4 = &config->spr6C[var_r6];
        temp_r1 = config->unkC[1][var_r6];
        temp_r4->anim = gUnknown_080D7264[temp_r1 + (config->unk0 * 4)].anim;
        temp_r4->variant = gUnknown_080D7264[temp_r1 + (config->unk0 * 4)].variant;
        temp_r4->x = (s16) config->unk24[0][var_r6].x;
        temp_r4->y = (s16) *(&config->unk24[0][0].y + (var_r6 * 8));
        if (var_r6 == config->highlitButton) {
            var_r0 = 0;
        } else {
            var_r0 = 1;
        }
        temp_r4->palId = var_r0;
        temp_r4->frameFlags |= 0x40000;
        UpdateSpriteAnimation(temp_r4);
        DisplaySprite(temp_r4);
        var_r6 += 1;
    } while ((u32) var_r6 <= 2U);
}

void sub_8091B78(OptionsButtonConfig *config) {
    Sprite *temp_r0;
    TileInfo2 *temp_r2;
    u8 var_r4;

    var_r4 = 0;
    do {
        temp_r0 = &config->sprE4[var_r4];
        temp_r2 = &gUnknown_080D731C[var_r4];
        temp_r0->anim = temp_r2->anim;
        temp_r0->variant = temp_r2->variant;
        temp_r0->x = (s16) config->unk24[1][var_r4].x;
        temp_r0->y = (s16) *(&config->unk24[1][0].y + (var_r4 * 8));
        DisplaySprite(temp_r0);
        var_r4 += 1;
    } while ((u32) var_r4 <= 2U);
}

void sub_8091BC4(OptionsButtonConfig *config) {
    Sprite *temp_r2;
    TileInfo2 *var_r0;
    u8 var_r5;

    var_r5 = 0;
    do {
        temp_r2 = &config->spr15C[var_r5];
        if (var_r5 == 0) {
            temp_r2->anim = gUnknown_080D7024[config->unk0].anim;
            var_r0 = &gUnknown_080D7024[config->unk0];
        } else {
            temp_r2->anim = gUnknown_080D7234[config->unk0].anim;
            var_r0 = &gUnknown_080D7234[config->unk0];
        }
        temp_r2->variant = var_r0->variant;
        temp_r2->x = config->unk54 + (var_r5 * 2);
        temp_r2->y = config->unk58 + (var_r5 * 8) + (var_r5 * 4);
        DisplaySprite(temp_r2);
        var_r5 += 1;
    } while ((u32) var_r5 <= 1U);
}

void sub_8091C38(OptionsButtonConfig *config) {
    Sprite *temp_r4;
    u8 var_r5;

    var_r5 = 0;
    do {
        temp_r4 = &config->spr1AC[var_r5];
        temp_r4->x = config->unk24[0][config->highlitButton].x + ((var_r5 << 6) - 0x12) + (var_r5 * 0x10) + (var_r5 * 8) + (var_r5 * 4);
        temp_r4->y = *(&config->unk24[0][0].y + (config->highlitButton * 8)) + 4;
        UpdateSpriteAnimation(temp_r4);
        DisplaySprite(temp_r4);
        var_r5 += 1;
    } while ((u32) var_r5 <= 1U);
}

void TaskDestructor_Options_ButtonConfig(Task *t) {

}

void sub_8091CA0(OptionsButtonConfig *config) {
    config->spr224.anim = gUnknown_080D7334[config->unk0].anim;
    config->spr224.variant = gUnknown_080D7334[config->unk0].variant;
    config->spr224.x = (s16) config->unk64;
    config->spr224.y = (s16) config->unk66;
    DisplaySprite(&config->spr224);
}

void sub_8091CDC(OptionsButtonConfig *config) {
    config->spr1FC.x = config->unk24[1][config->highlitButton].x - 8;
    config->spr1FC.y = *(&config->unk24[1][0].y + (config->highlitButton * 8)) - 4;
    DisplaySprite(&config->spr1FC);
}
#endif