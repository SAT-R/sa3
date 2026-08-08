#include "global.h"
#include "core.h"

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

void Options_ButtonConfig(s16 highlitButton, u8 *vramBase, s16 *arg2, u8 *arg3, OptionsButtonConfig *config);

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
extern const TileInfo2 gUnknown_080D7364;

#if 0
void Options_ButtonConfig(s16 highlitButton, u8 *vramBase, s16 *arg2, u8 *arg3) {
    u16 sp4;
    u16 spC;
    u16 sp10;
    u8 *sp14;
    Vec2_32 *sp18;
    void *sp1C;
    u16 *sp20;
    u16 *sp24;
    Vec2_32 *sp28;
    s32 *sp2C;
    Vec2_32 *temp_r2;
    Vec2_32 *temp_r4;
    s32 *temp_r3;
    s32 temp_r2_2;
    u16 *temp_r2_3;
    u16 temp_r1;
    u8 var_r6;
    u8 var_r6_2;
    struct Task *t;
    OptionsButtonConfig *config;

    sp14 = vramBase;
    spC = gLoadedSaveGame.buttonConfig.jump;
    subroutine_arg0.unkE = (u16) gLoadedSaveGame.buttonConfig.attack;
    sp10 = gLoadedSaveGame.buttonConfig.trick;
    memcpy(&sp4, &spC, 6);
    memcpy(&spC, &gUnknown_080D73BC, 3);
    t = TaskCreate((void (*)()) Task_Options_ButtonConfig_Init, sizeof(OptionsButtonConfig), 0x100U, 0U, TaskDestructor_Options_ButtonConfig);
    config = TASK_DATA(t);
    config->highlitButton = highlitButton;
    config->initArg3 = arg3;
    config->unk20 = 0;
    config->unk1 = 0;
    config->unk3 = 2;
    config->unk2 = 0;
    config->unk22 = 0;
    config->unk4 = 1;
    var_r6 = 0;
    do {
        temp_r1 = ((var_r6 * 2) + sp)->unk4;
        switch (temp_r1) {                          /* irregular */
        case 0x1:
            config->unkC[2][0] = (u16) *(&spC + var_r6);
            break;
        case 0x2:
            config->unkC[2][1] = (u16) *(&spC + var_r6);
            break;
        case 0x100:
            config->unkC[2][2] = (u16) *(&spC + var_r6);
            break;
        }
        var_r6 += 1;
    } while ((u32) var_r6 <= 2U);
    config->unk20 = config->unkC[2][0];
    var_r6_2 = 0;
    temp_r2 = config->unk24[0];
    sp28 = temp_r2;
    sp2C = &config->unk24[0][0].y;
    sp18 = config->unk24[1];
    sp1C = temp_r2 + 0x1C;
    sp20 = &config->unk64;
    sp24 = &config->unk66;
    do {
        temp_r2_2 = var_r6_2 * 8;
        temp_r4 = &sp28[var_r6_2];
        temp_r4->x = 0x70 - gBgScrollRegs[1][0];
        temp_r3 = sp2C + temp_r2_2;
        *temp_r3 = 0x2D - gBgScrollRegs[1][1];
        sp18[var_r6_2].x = temp_r4->x - 0x46;
        *(sp1C + temp_r2_2) = *temp_r3;
        temp_r2_3 = &config->unkC[2][var_r6_2];
        config->unkC[0][var_r6_2] = *temp_r2_3;
        config->unkC[1][var_r6_2] = *temp_r2_3;
        var_r6_2 += 1;
    } while ((u32) var_r6_2 <= 2U);
    config->unk54 = 0 - gBgScrollRegs[1][0];
    config->unk58 = 0 - gBgScrollRegs[1][1];
    *sp20 = (0 - (u16) gBgScrollRegs[1][0]) + 0x64;
    *sp24 = 0 - (u16) gBgScrollRegs[1][1];
    config->unk5C = 0 - gBgScrollRegs[1][0];
    config->unk60 = 0 - gBgScrollRegs[1][1];
    config->vram68 = sp14;
    config->unk0 = gLoadedSaveGame.language;
    sub_8091150(config);
}

void sub_8091150(OptionsButtonConfig *config) {
    Vec2_32 *sp0;
    s32 *sp4;
    TileInfo2 *sp8;
    Sprite *temp_r0;
    Sprite *temp_r0_2;
    Sprite *temp_r2_2;
    Sprite *temp_r4;
    TileInfo2 *temp_r2;
    TileInfo2 *var_r0;
    TileInfo2 *var_r3_2;
    s32 temp_r3;
    s32 temp_r5;
    u16 var_r3;
    u8 var_r7;
    u8 var_r7_2;
    u8 var_r7_3;
    void *temp_r3_2;

    config->spr224.tiles = config->vram68;
    config->vram68 += *((config->unk0 * 8) + &gUnknown_080D7334->numTiles) << 5;
    config->spr224.anim = gUnknown_080D7334[config->unk0].anim;
    config->spr224.variant = gUnknown_080D7334[config->unk0].variant;
    config->spr224.prevVariant = 0xFF;
    config->spr224.x = (s16) ((u16) config->unk64 >> 8);
    config->spr224.y = (s16) ((u16) config->unk66 >> 8);
    config->spr224.oamFlags = 0;
    config->spr224.animCursor = 0;
    config->spr224.qAnimDelay = 0;
    config->spr224.animSpeed = 0x10;
    config->spr224.palId = 0;
    config->spr224.frameFlags = 0;
    config->spr224.hitboxes[0].index = -1;
    UpdateSpriteAnimation(&config->spr224);
    var_r7 = 0;
    var_r3 = 0;
    sp0 = config->unk24[0];
    sp4 = &config->unk24[0][0].y;
    do {
        temp_r0 = &config->spr6C[var_r7];
        temp_r0->tiles = config->vram68;
        config->vram68 += *(((var_r7 + (config->unk0 * 4)) * 8) + &gUnknown_080D7264->numTiles) << 5;
        temp_r0->anim = gUnknown_080D7264[var_r7 + (config->unk0 * 4)].anim;
        temp_r0->variant = gUnknown_080D7264[var_r7 + (config->unk0 * 4)].variant;
        temp_r0->prevVariant |= 0xFF;
        temp_r5 = var_r7 * 8;
        temp_r0->x = (s16) ((s32) config->unk24[0][var_r7].x >> 8);
        temp_r0->y = (s16) ((s32) *(&config->unk24[0][0].y + temp_r5) >> 8);
        temp_r0->oamFlags = 0x40;
        temp_r0->animCursor = var_r3;
        temp_r0->qAnimDelay = (s16) var_r3;
        temp_r0->animSpeed = 0x10;
        temp_r0->palId = 0;
        temp_r0->frameFlags = (u32) var_r3;
        temp_r0->hitboxes[0].index = -1;
        sp8 = (TileInfo2 *) var_r3;
        UpdateSpriteAnimation(temp_r0);
        temp_r4 = &config->sprE4[var_r7];
        temp_r4->tiles = config->vram68;
        config->vram68 += *(temp_r5 + &gUnknown_080D731C->numTiles) << 5;
        temp_r2 = &gUnknown_080D731C[var_r7];
        temp_r4->anim = temp_r2->anim;
        temp_r4->variant = temp_r2->variant;
        temp_r4->prevVariant |= 0xFF;
        temp_r4->x = (s16) ((s32) config->unk24[1][var_r7].x >> 8);
        temp_r4->y = (s16) ((s32) *(&config->unk24[1][0].y + temp_r5) >> 8);
        temp_r4->oamFlags = 0x40;
        temp_r4->animCursor = var_r3;
        temp_r4->qAnimDelay = (s16) var_r3;
        temp_r4->animSpeed = 0x10;
        temp_r4->palId = 0;
        temp_r4->frameFlags = (u32) var_r3;
        temp_r4->hitboxes[0].index = -1;
        sp8 = (TileInfo2 *) var_r3;
        UpdateSpriteAnimation(temp_r4);
        var_r7 += 1;
    } while ((u32) var_r7 <= 2U);
    var_r7_2 = 0;
    do {
        temp_r0_2 = &config->spr1AC[var_r7_2];
        temp_r0_2->tiles = config->vram68;
        temp_r3 = var_r7_2 * 8;
        config->vram68 += *(temp_r3 + (&gUnknown_080D736C + 4)) << 5;
        temp_r3_2 = temp_r3 + &gUnknown_080D736C;
        temp_r0_2->anim = temp_r3_2->unk0;
        temp_r0_2->variant = temp_r3_2->unk2;
        temp_r0_2->prevVariant = 0xFF;
        temp_r0_2->x = sp0[config->highlitButton].x - 8;
        temp_r0_2->y = (*(sp4 + (config->highlitButton * 8)) + ((u16) config->highlitButton * 0x10)) - 4;
        temp_r0_2->oamFlags = 0;
        temp_r0_2->animCursor = 0;
        temp_r0_2->qAnimDelay = 0;
        temp_r0_2->animSpeed = 0x10;
        temp_r0_2->palId = 0;
        temp_r0_2->frameFlags = 0;
        temp_r0_2->hitboxes[0].index = -1;
        UpdateSpriteAnimation(temp_r0_2);
        var_r7_2 += 1;
    } while ((u32) var_r7_2 <= 1U);
    config->spr1FC.tiles = config->vram68;
    config->vram68 += gUnknown_080D7364.numTiles << 5;
    config->spr1FC.anim = gUnknown_080D7364.anim;
    config->spr1FC.variant = gUnknown_080D7364.variant;
    config->spr1FC.prevVariant |= ~0;
    config->spr1FC.x = sp0[config->highlitButton].x - 8;
    config->spr1FC.y = (*(sp4 + (config->highlitButton * 8)) + ((u16) config->highlitButton * 0x10)) - 4;
    config->spr1FC.oamFlags = 0;
    config->spr1FC.animCursor = 0;
    config->spr1FC.qAnimDelay = 0;
    config->spr1FC.animSpeed = 0x10;
    config->spr1FC.palId = 0;
    config->spr1FC.frameFlags = 0;
    config->spr1FC.hitboxes[0].index = -1;
    UpdateSpriteAnimation(&config->spr1FC);
    var_r7_3 = 0;
    var_r3_2 = gUnknown_080D7024;
    do {
        temp_r2_2 = &config->spr15C[var_r7_3];
        temp_r2_2->tiles = config->vram68;
        if (var_r7_3 == 0) {
            config->vram68 += *((config->unk0 * 8) + &var_r3_2->numTiles) << 5;
            temp_r2_2->anim = var_r3_2[config->unk0].anim;
            var_r0 = &var_r3_2[config->unk0];
        } else {
            config->vram68 += *((config->unk0 * 8) + &gUnknown_080D7234->numTiles) << 5;
            temp_r2_2->anim = gUnknown_080D7234[config->unk0].anim;
            var_r0 = &gUnknown_080D7234[config->unk0];
        }
        temp_r2_2->variant = var_r0->variant;
        temp_r2_2->prevVariant = 0xFF;
        temp_r2_2->x = (s16) ((s32) config->unk54 >> 8);
        temp_r2_2->y = (s16) ((s32) config->unk58 >> 8);
        temp_r2_2->oamFlags = 0;
        temp_r2_2->animCursor = 0;
        temp_r2_2->qAnimDelay = 0;
        temp_r2_2->animSpeed = 0x10;
        temp_r2_2->palId = 0;
        temp_r2_2->frameFlags = 0;
        temp_r2_2->hitboxes[0].index = -1;
        sp8 = var_r3_2;
        UpdateSpriteAnimation(temp_r2_2);
        var_r7_3 += 1;
    } while ((u32) var_r7_3 <= 1U);
}

void Task_Options_ButtonConfig_Init(OptionsButtonConfig *config) {
    ButtonConfig *var_r7;
    s16 temp_r2;
    s16 var_r0_2;
    s32 temp_r0_3;
    s32 temp_r1_2;
    s32 temp_r1_4;
    s32 temp_r1_6;
    s32 temp_r2_3;
    s32 temp_r6;
    s32 temp_r6_2;
    s32 temp_r6_3;
    s32 temp_r6_4;
    u16 *temp_r1_3;
    u16 *temp_r1_5;
    u16 *temp_r2_2;
    u16 *temp_r2_4;
    u16 temp_r0;
    u16 temp_r0_2;
    u16 temp_r0_4;
    u16 temp_r0_5;
    u16 temp_r1;
    u16 temp_r2_5;
    u16 temp_r2_6;
    u16 var_r0;
    u16 var_r4_3;
    u8 var_r0_3;
    u8 var_r4;
    u8 var_r4_2;
    u8 var_r4_4;
    u8 var_r4_5;

    temp_r1 = gCurTask->data;
    sub_8091A44((OptionsButtonConfig *) temp_r1);
    sub_8091AE0((OptionsButtonConfig *) temp_r1);
    sub_8091CA0((OptionsButtonConfig *) temp_r1);
    sub_8091BC4((OptionsButtonConfig *) temp_r1);
    sub_8091CDC((OptionsButtonConfig *) temp_r1);
    sub_8091B78((OptionsButtonConfig *) temp_r1);
    sub_8091C38((OptionsButtonConfig *) temp_r1);
    if (((s32) gBgScrollRegs[1][0] <= -0xC8) && ((s64) (temp_r1->unk5C + gBgScrollRegs[1][0]) <= 0)) {
        temp_r1->unk4 = 1U;
        *temp_r1->unk8 = 0;
        if (0x20000 & gFlags) {
            CopyObjPaletteMasked(&gUnknown_080D737C, 0U, 0x10U);
        } else {
            (void *)0x040000D4->unk0 = &gUnknown_080D737C;
            (void *)0x040000D4->unk4 = gObjPalette;
            (void *)0x040000D4->unk8 = 0x80000010;
            gFlags |= 2;
        }
        TaskDestroy(gCurTask);
        return;
    }
    temp_r1->unk5C = (s32) (0 - gBgScrollRegs[1][0]);
    if (gBgScrollRegs[1][0] != 0) {

    } else {
        if (!(1 & gPressedKeys)) {

        } else {
            temp_r1_2 = temp_r1 + 0x12;
            var_r4 = 0;
            temp_r6 = temp_r1 + 0x18;
            do {
                temp_r2 = temp_r1->unk1E;
                if (var_r4 != temp_r2) {
                    temp_r1_3 = temp_r1_2 + (var_r4 * 2);
                    if (*(temp_r1_2 + (temp_r1->unk1E * 2)) == *temp_r1_3) {
                        *temp_r1_3 = *(temp_r6 + (temp_r2 * 2));
                    }
                }
                var_r4 += 1;
            } while ((u32) var_r4 <= 2U);
            var_r4_2 = 0;
            do {
                temp_r1_4 = var_r4_2 * 2;
                temp_r2_2 = temp_r6 + temp_r1_4;
                *temp_r2_2 = *(temp_r1_2 + temp_r1_4);
                temp_r0 = *temp_r2_2;
                switch (temp_r0) {                  /* switch 1; irregular */
                case 0:                             /* switch 1 */
                    var_r0 = *(temp_r1_4 + &gUnknown_080D73C0);
                    var_r7 = &gLoadedSaveGame.buttonConfig;
block_25:
                    var_r7->jump = var_r0;
                    break;
                case 1:                             /* switch 1 */
                    var_r0 = *(temp_r1_4 + &gUnknown_080D73C0);
                    var_r7 = (ButtonConfig *) &gLoadedSaveGame.buttonConfig.attack;
                    goto block_25;
                case 2:                             /* switch 1 */
                    var_r0 = *(temp_r1_4 + &gUnknown_080D73C0);
                    var_r7 = (ButtonConfig *) &gLoadedSaveGame.buttonConfig.trick;
                    goto block_25;
                }
                *(temp_r1 + 0xC + temp_r1_4) = *(temp_r6 + temp_r1_4);
                var_r4_2 += 1;
            } while ((u32) var_r4_2 <= 2U);
            temp_r1->unk20 = (u16) *(temp_r6 + (temp_r1->unk1E * 2));
            temp_r1->unk1 = 0U;
            temp_r1->unk4 = 1U;
            if (gFlags & 0x20000) {
                CopyObjPaletteMasked(&gUnknown_080D737C, 0U, 0x10U);
            } else {
                (void *)0x040000D4->unk0 = &gUnknown_080D737C;
                (void *)0x040000D4->unk4 = gObjPalette;
                (void *)0x040000D4->unk8 = 0x80000010;
                gFlags |= 2;
            }
        }
        if ((gBgScrollRegs[1][0] == 0) && (4 & gPressedKeys)) {
            m4aSongNumStart(0x6BU);
            var_r4_3 = 0;
            temp_r6_2 = temp_r1 + 0x18;
            do {
                temp_r2_3 = var_r4_3 * 2;
                temp_r1_5 = temp_r6_2 + temp_r2_3;
                *temp_r1_5 = var_r4_3;
                *(temp_r1 + 0x12 + temp_r2_3) = var_r4_3;
                temp_r0_2 = *temp_r1_5;
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
            temp_r1->unk4 = 1U;
            temp_r1->unk20 = (u16) *(temp_r6_2 + (temp_r1->unk1E * 2));
            if (0x20000 & gFlags) {
                CopyObjPaletteMasked(&gUnknown_080D737C, 0U, 0x10U);
            } else {
                (void *)0x040000D4->unk0 = &gUnknown_080D737C;
                (void *)0x040000D4->unk4 = gObjPalette;
                (void *)0x040000D4->unk8 = 0x80000010;
                gFlags |= 2;
            }
        }
    }
    if (2 & gPressedKeys) {
        if (temp_r1->unk1 != 0) {
            var_r4_4 = 0;
            temp_r6_3 = temp_r1 + 0x18;
            do {
                temp_r1_6 = var_r4_4 * 2;
                temp_r2_4 = temp_r1 + 0xC + temp_r1_6;
                *(temp_r6_3 + temp_r1_6) = *temp_r2_4;
                *(temp_r1 + 0x12 + temp_r1_6) = *temp_r2_4;
                var_r4_4 += 1;
            } while ((u32) var_r4_4 <= 2U);
            temp_r1->unk20 = (u16) *(temp_r6_3 + (temp_r1->unk1E * 2));
        }
        temp_r1->unk1 = 0U;
        temp_r1->unk4 = 1U;
        if (gFlags & 0x20000) {
            CopyObjPaletteMasked(&gUnknown_080D737C, 0U, 0x10U);
        } else {
            (void *)0x040000D4->unk0 = &gUnknown_080D737C;
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
                if (temp_r1->unk1E == 0) {
                    var_r0_2 = 2;
                } else {
                    var_r0_2 = (u16) temp_r1->unk1E - 1;
                }
                goto block_65;
            }
            if (0x80 & gRepeatedKeys) {
                if (temp_r1->unk1E == 2) {
                    temp_r1->unk1E = (s16) temp_r2_5;
                } else {
                    var_r0_2 = (u16) temp_r1->unk1E + 1;
block_65:
                    temp_r1->unk1E = var_r0_2;
                }
            }
            var_r4_5 = 0;
            temp_r6_4 = temp_r1 + 0x18;
            do {
                temp_r0_3 = var_r4_5 * 2;
                *(temp_r1 + 0x12 + temp_r0_3) = *(temp_r6_4 + temp_r0_3);
                var_r4_5 += 1;
            } while ((u32) var_r4_5 <= 2U);
            temp_r1->unk20 = (u16) *(temp_r6_4 + (temp_r1->unk1E * 2));
            temp_r1->unk4 = 1U;
            if (gFlags & 0x20000) {
                CopyObjPaletteMasked(&gUnknown_080D737C, 0U, 0x10U);
            } else {
                (void *)0x040000D4->unk0 = &gUnknown_080D737C;
                (void *)0x040000D4->unk4 = gObjPalette;
                (void *)0x040000D4->unk8 = 0x80000010;
                gFlags |= 2;
            }
        }
        if ((gBgScrollRegs[1][0] == 0) && (0x30 & gRepeatedKeys)) {
            temp_r2_6 = 0x20 & gRepeatedKeys;
            if (temp_r2_6 != 0) {
                temp_r0_4 = temp_r1->unk20 - 1;
                temp_r1->unk20 = temp_r0_4;
                if ((s32) (temp_r0_4 << 0x10) < 0) {
                    temp_r1->unk20 = 2U;
                }
            } else if (0x10 & gRepeatedKeys) {
                temp_r0_5 = temp_r1->unk20 + 1;
                temp_r1->unk20 = temp_r0_5;
                if ((s32) (s16) temp_r0_5 > 2) {
                    temp_r1->unk20 = temp_r2_6;
                }
            }
            *(temp_r1 + 0x12 + (temp_r1->unk1E * 2)) = temp_r1->unk20;
            temp_r1->unk1 = 1U;
            temp_r1->unk4 = 0U;
        }
    }
    if (temp_r1->unk4 == 0) {
        if ((u32) temp_r1->unk22 >= (u32) temp_r1->unk3) {
            if (temp_r1->unk2 == 0) {
                if (0x20000 & gFlags) {
                    CopyObjPaletteMasked(&gUnknown_080D737C, 0U, 0x10U);
                } else {
                    (void *)0x040000D4->unk0 = &gUnknown_080D737C;
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
            temp_r1->unk2 = var_r0_3;
            temp_r1->unk22 = 0U;
        }
        temp_r1->unk22 = (u16) (temp_r1->unk22 + 1);
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