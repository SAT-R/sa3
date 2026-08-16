#include "global.h"
#include "core.h"
#include "flags.h"
#include "lib/m4a/m4a.h"
#include "game/player_controls.h"
#include "game/save.h"
#include "code_z_1.h"
#include "constants/songs.h"

typedef struct {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 unk4;
    u8 *initArg3;
    u16 unkC[3][3]; // TODO: Not sure whether this is a 2D array of three [3]-arrays
    s16 highlitButton;
    s16 unk20;
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
extern u16 gUnknown_080D73C0[3];
extern const TileInfo2 gUnknown_080D73C8;

// (99.44%) https://decomp.me/scratch/tWAor
NONMATCH("asm/non_matching/game/sa3/options/opt__Options_ButtonConfig.inc",
         void Options_ButtonConfig(s16 highlitButton, u8 *vramBase, s16 *arg2, u8 *arg3))
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

void sub_8091150(OptionsButtonConfig *config)
{
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
        s->x = (s16)((u16)config->unk64 >> 8);
        s->y = (s16)((u16)config->unk66 >> 8);
        s->oamFlags = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        s->hitboxes[0].index = -1;
        UpdateSpriteAnimation(s);
    }

    for (var_r7 = 0; var_r7 < ARRAY_COUNT(config->spr6C); var_r7++) {
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

    for (var_r7 = 0; var_r7 < ARRAY_COUNT(config->spr1AC); var_r7++) {
        Sprite *s = &config->spr1AC[var_r7];
        s->tiles = config->vram68;
        temp_r3 = var_r7 * 8;
        config->vram68 += gUnknown_080D736C[var_r7].numTiles * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D736C[var_r7].anim;
        s->variant = gUnknown_080D736C[var_r7].variant;
        s->prevVariant = -1;
        s->x = config->unk24[0][config->highlitButton].x - 8;
        s->y = config->unk24[0][config->highlitButton].y + ((u16)config->highlitButton * 0x10) - 4;
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
        s->y = config->unk24[0][config->highlitButton].y + ((u16)config->highlitButton * 0x10) - 4;
        s->oamFlags = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        s->hitboxes[0].index = -1;
        UpdateSpriteAnimation(s);
    }

    for (var_r7 = 0; var_r7 < ARRAY_COUNT(config->spr15C); var_r7++) {
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

void Task_Options_ButtonConfig_Init(void)
{
    OptionsButtonConfig *config = TASK_DATA(gCurTask);
    u8 i;

    sub_8091A44(config);
    sub_8091AE0(config);
    sub_8091CA0(config);
    sub_8091BC4(config);
    sub_8091CDC(config);
    sub_8091B78(config);
    sub_8091C38(config);

    if (((s32)gBgScrollRegs[1][0] <= -200) && ((s64)(config->unk5C) <= -gBgScrollRegs[1][0])) {
        config->unk4 = 1;
        *config->initArg3 = 0;
        if (0x20000 & gFlags) {
            CopyObjPaletteMasked(gUnknown_080D737C, 0U, 0x10U);
        } else {
            DmaCopy16(3, gUnknown_080D737C, gObjPalette, 0x20);
            gFlags |= FLAGS_UPDATE_SPRITE_PALETTES;
        }
        TaskDestroy(gCurTask);
        return;
    }

    config->unk5C = -gBgScrollRegs[1][0];

    if (gBgScrollRegs[1][0] == 0) {
        if (A_BUTTON & gPressedKeys) {
            u8 a = config->unkC[1][config->highlitButton];

            for (i = 0; i < 3; i++) {
                if (i != config->highlitButton) {
                    if (a == config->unkC[1][i]) {
                        config->unkC[1][i] = config->unkC[2][config->highlitButton];
                    }
                }
            }

            for (i = 0; i < 3; i++) {
                config->unkC[2][i] = config->unkC[1][i];

                switch (config->unkC[2][i]) {
                    case 0:
                        LOADED_SAVE->buttonConfig.jump = gUnknown_080D73C0[i];
                        break;
                    case 1:
                        LOADED_SAVE->buttonConfig.attack = gUnknown_080D73C0[i];
                        break;
                    case 2:
                        LOADED_SAVE->buttonConfig.trick = gUnknown_080D73C0[i];
                        break;
                }

                config->unkC[0][i] = config->unkC[2][i];
            }

            config->unk20 = config->unkC[2][config->highlitButton];
            config->unk1 = 0;
            config->unk4 = 1;
            if (gFlags & 0x20000) {
                CopyObjPaletteMasked(gUnknown_080D737C, 0U, 0x10U);
            } else {
                DmaCopy16(3, gUnknown_080D737C, gObjPalette, 0x20);
                gFlags |= FLAGS_UPDATE_SPRITE_PALETTES;
            }
        }
        if ((gBgScrollRegs[1][0] == 0) && (SELECT_BUTTON & gPressedKeys)) {
            m4aSongNumStart(SE_ABORT);

            for (i = 0; i < 3; i++) {
                config->unkC[2][i] = i;
                config->unkC[1][i] = i;

                switch (config->unkC[2][i]) {
                    case 0:
                        LOADED_SAVE->buttonConfig.jump = gUnknown_080D73C0[i];
                        break;
                    case 1:
                        LOADED_SAVE->buttonConfig.attack = gUnknown_080D73C0[i];
                        break;
                    case 2:
                        LOADED_SAVE->buttonConfig.trick = gUnknown_080D73C0[i];
                        break;
                }
            }

            config->unk4 = 1;
            config->unk20 = config->unkC[2][config->highlitButton];
            if (0x20000 & gFlags) {
                CopyObjPaletteMasked(gUnknown_080D737C, 0U, 0x10U);
            } else {
                DmaCopy16(3, gUnknown_080D737C, gObjPalette, 0x20);
                gFlags |= FLAGS_UPDATE_SPRITE_PALETTES;
            }
        }
    }
    if (2 & gPressedKeys) {
        if (config->unk1 != 0) {
            for (i = 0; i < 3; i++) {
                config->unkC[2][i] = config->unkC[0][i];
                config->unkC[1][i] = config->unkC[0][i];
            }

            config->unk20 = config->unkC[2][config->highlitButton];
        }
        config->unk1 = 0;
        config->unk4 = 1;

        if (gFlags & 0x20000) {
            CopyObjPaletteMasked(gUnknown_080D737C, 0U, 0x10U);
        } else {
            DmaCopy16(3, gUnknown_080D737C, gObjPalette, 0x20);
            gFlags |= FLAGS_UPDATE_SPRITE_PALETTES;
        }
    }

    if (gBgScrollRegs[1][0] == 0) {
        if (0xC0 & gRepeatedKeys) {
            if (0x40 & gRepeatedKeys) {
                if (config->highlitButton == 0) {
                    config->highlitButton = 2;
                } else {
                    config->highlitButton -= 1;
                }
            } else if (0x80 & gRepeatedKeys) {
                if (config->highlitButton == 2) {
                    config->highlitButton = 0;
                } else {
                    config->highlitButton += 1;
                }
            }

            for (i = 0; i < 3; i++) {
                config->unkC[1][i] = config->unkC[2][i];
            }

            config->unk20 = config->unkC[2][config->highlitButton];
            config->unk4 = 1;
            if (gFlags & 0x20000) {
                CopyObjPaletteMasked(gUnknown_080D737C, 0U, 0x10U);
            } else {
                DmaCopy16(3, gUnknown_080D737C, gObjPalette, 0x20);
                gFlags |= FLAGS_UPDATE_SPRITE_PALETTES;
            }
        }
        if ((gBgScrollRegs[1][0] == 0) && (0x30 & gRepeatedKeys)) {
            if (0x20 & gRepeatedKeys) {
                if (--config->unk20 < 0) {
                    config->unk20 = 2;
                }
            } else if (0x10 & gRepeatedKeys) {
                if (++config->unk20 > 2) {
                    config->unk20 = 0;
                }
            }
            config->unkC[1][config->highlitButton] = config->unk20;
            config->unk1 = 1;
            config->unk4 = 0;
        }
    }
    if (config->unk4 == 0) {
        if (config->unk22 >= config->unk3) {
            if (config->unk2 == 0) {
                if (0x20000 & gFlags) {
                    CopyObjPaletteMasked(gUnknown_080D737C, 0U, 0x10U);
                } else {
                    DmaCopy16(3, gUnknown_080D737C, gObjPalette, 0x20);
                    gFlags |= FLAGS_UPDATE_SPRITE_PALETTES;
                }
                config->unk2 = 1;
            } else {
                if (0x20000 & gFlags) {
                    CopyObjPaletteMasked(gUnknown_080D739C, 0U, 0x10U);
                } else {
                    DmaCopy16(3, gUnknown_080D739C, gObjPalette, 0x20);
                    gFlags |= FLAGS_UPDATE_SPRITE_PALETTES;
                }
                config->unk2 = 0;
            }

            config->unk22 = 0;
        }
        config->unk22 += 1;
    }
}

void sub_8091A44(OptionsButtonConfig *config)
{
    u8 i;

    for (i = 0; i < 3; i++) {
        s32 var0;
        config->unk24[0][i].x = 112 - gBgScrollRegs[1][0];
        config->unk24[0][i].y = 45 - gBgScrollRegs[1][1] + (i * 0x10) + i * 8;
        config->unk24[1][i].x = config->unk24[0][i].x - 70;
        config->unk24[1][i].y = config->unk24[0][i].y;
    }

    config->unk54 = 120 - gBgScrollRegs[1][0];
    config->unk58 = 123 - gBgScrollRegs[1][1];
    config->unk64 = 120 - gBgScrollRegs[1][0];
    config->unk66 = 30 - gBgScrollRegs[1][1];
}

void sub_8091AE0(OptionsButtonConfig *config)
{
    u8 temp_r1;
    u8 var_r6;

    for (var_r6 = 0; var_r6 < 3; var_r6++) {
        Sprite *s;
        s = &config->spr6C[var_r6];
        temp_r1 = config->unkC[1][var_r6];
        s->anim = gUnknown_080D7264[temp_r1 + (config->unk0 * 4)].anim;
        s->variant = gUnknown_080D7264[temp_r1 + (config->unk0 * 4)].variant;
        s->x = config->unk24[0][var_r6].x;
        s->y = config->unk24[0][var_r6].y;

        if (var_r6 == config->highlitButton) {
            s->palId = 0;
        } else {
            s->palId = 1;
        }
        s->frameFlags |= 0x40000;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void sub_8091B78(OptionsButtonConfig *config)
{
    u8 i;

    for (i = 0; i < 3; i++) {
        Sprite *s = &config->sprE4[i];
        s->anim = gUnknown_080D731C[i].anim;
        s->variant = gUnknown_080D731C[i].variant;
        s->x = config->unk24[1][i].x;
        s->y = config->unk24[1][i].y;
        DisplaySprite(s);
    }
}

void sub_8091BC4(OptionsButtonConfig *config)
{
    TileInfo2 *var_r0;
    u8 var_r5;

    for (var_r5 = 0; var_r5 < 2; var_r5++) {
        Sprite *s = &config->spr15C[var_r5];
        if (var_r5 == 0) {
            s->anim = gUnknown_080D7024[config->unk0].anim;
            s->variant = gUnknown_080D7024[config->unk0].variant;
        } else {
            s->anim = gUnknown_080D7234[config->unk0].anim;
            s->variant = gUnknown_080D7234[config->unk0].variant;
        }
        s->x = config->unk54 + (var_r5 * 2);
        s->y = config->unk58 + (var_r5 * 8) + (var_r5 * 4);
        DisplaySprite(s);
    }
}

void sub_8091C38(OptionsButtonConfig *config)
{
    u8 var_r5;

    for (var_r5 = 0; var_r5 < ARRAY_COUNT(config->spr1AC); var_r5++) {
        Sprite *s = &config->spr1AC[var_r5];
        s->x = config->unk24[0][config->highlitButton].x - 0x12 + (var_r5 * 64) + (var_r5 * 0x10) + (var_r5 * 8) + (var_r5 * 4);
        s->y = config->unk24[0][config->highlitButton].y + 4;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void TaskDestructor_Options_ButtonConfig(Task *t) { }

void sub_8091CA0(OptionsButtonConfig *config)
{
    Sprite *s = &config->spr224;
    s->anim = gUnknown_080D7334[config->unk0].anim;
    s->variant = gUnknown_080D7334[config->unk0].variant;
    s->x = (s16)config->unk64;
    s->y = (s16)config->unk66;
    DisplaySprite(s);
}

void sub_8091CDC(OptionsButtonConfig *config)
{
    Sprite *s = &config->spr1FC;
    s->x = config->unk24[1][config->highlitButton].x - 8;
    s->y = config->unk24[1][config->highlitButton].y - 4;
    DisplaySprite(s);
}
