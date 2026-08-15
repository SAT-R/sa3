#include "global.h"
#include "core.h"
#include "constants/songs.h"

typedef struct {
    /* 0x000 */ u8 lang0;
    /* 0x000 */ u8 unk1;
    /* 0x000 */ u8 unk2;
    /* 0x003 */ u8 unk3;
    /* 0x004 */ u8 unk4;
    /* 0x005 */ u8 unk5;
    /* 0x006 */ u8 unk6;
    /* 0x007 */ u8 unk7;
    /* 0x008 */ s16 unk8;
    /* 0x00A */ s16 unkA;
    /* 0x00C */ u16 unkC;
    /* 0x00E */ u16 unkE;
    /* 0x010 */ u16 unk10;
    /* 0x010 */ u16 unk12;
    /* 0x012 */ bool32 unk14[7];
    /* 0x090 */ Vec2_32 unk30;
    /* 0x038 */ Vec2_32 unk38[8];
    /* 0x078 */ Vec2_32 unk78[3];
    /* 0x090 */ Vec2_32 unk90;
    /* 0x098 */ Vec2_32 unk98;
    /* 0x0A0 */ Vec2_32 unkA0;
    /* 0x0A8 */ u8 *vramA8;
    /* 0x0AC */ Background bgAC;
    /* 0x0EC */ Background bgEC;
    /* 0x12C */ Background bg12C;
    /* 0x12C */ Sprite spr16C[8];
    /* 0x12C */ Sprite spr2AC;
    /* 0x12C */ Sprite spr2D4;
    /* 0x12C */ Sprite spr2FC;
    /* 0x12C */ Sprite spr324;
    /* 0x12C */ Sprite spr34C;
    /* 0x12C */ Sprite spr374[6];
} OptionsMenu; /* 0x464 */

void CreateOptions(u16 arg0, OptionsMenu *options);
void sub_808B0A4(OptionsMenu *options);
void sub_808B1B0(OptionsMenu *options);
void Task_808B294(void);
void Task_808B398(void);
void sub_808B4EC(OptionsMenu *options);
void Task_OptionsInit(void);
void sub_808B664(OptionsMenu *options, u8 arg1);
void Task_808B9B4(void);
void Task_808BAA8(void);
void Task_808BB34(void);
void Task_808BBBC(void);
void Task_808BCD8(void);
void Task_808BD90(void);
void sub_808BEEC(OptionsMenu *options);
bool32 sub_808BFA0(OptionsMenu *options);
void Options_LoadSelectedMenu(OptionsMenu *options);
u8 sub_808C008(OptionsMenu *options);
u8 sub_808C08C(OptionsMenu *options);
s32 sub_808C1BC(OptionsMenu *options);
s32 sub_808C2E4(OptionsMenu *options);
s32 sub_808C390(OptionsMenu *options);
s32 sub_808C424(OptionsMenu *options);
s32 sub_808C514(OptionsMenu *options);
s32 sub_808C5D4(OptionsMenu *options);
s32 sub_808C704(OptionsMenu *options);
void Task_808C8DC(void);
void Task_808CA9C(void);
void sub_808CB74(OptionsMenu *options);
void sub_808CC48(OptionsMenu *options);
void sub_808CCA0(OptionsMenu *options);
void sub_808CD14(OptionsMenu *options);
void sub_808CD88(OptionsMenu *options);
void Task_808CE00(void);
s32 sub_808CE88(OptionsMenu *options);
void sub_808CED0(OptionsMenu *options);
void sub_808CF00(OptionsMenu *options);
void sub_808CF4C(OptionsMenu *options);
void Task_808CF74(void);
void sub_808CFC4(OptionsMenu *options);
void TaskDestructor_Options(Task *t);

extern const TileInfo2 gUnknown_080D6BD8[6];
extern const TileInfo2 gUnknown_080D6AE8[12];
extern const TileInfo2 gUnknown_080D6B48[12];
extern const TileInfo2 gUnknown_080D6BA8[6];

#if 0
void CreateOptions(u16 arg0, OptionsMenu *options) {
    s32 sp4;
    u16 temp_r4;

    temp_r4 = arg0;
    gDispCnt = 0x1341;
    TaskCreate(Task_OptionsInit, 0x464U, 0x100U, 0U, TaskDestructor_Options);
    options->unk1 = (u8) temp_r4;
    if (temp_r4 == 0) {
        sub_808B1B0(options);
    } else {
        sub_808B0A4(options);
    }
    options->lang0 = LOADED_SAVE->language;
    options->unk5 = 0;
    options->unk4 = 0;
    options->unk10 = 0;
    options->unk6 = 0;
    options->unk3 = 0;
    options->unk14[6] = 1;
    options->unk14[1] = (u32) LOADED_SAVE->difficulty;
    options->unk14[2] = (u32) LOADED_SAVE->disableTimeLimit;
    options->unk14[3] = (u32) LOADED_SAVE->language;
    options->vramA8 = (u8 *)0x06010000;
	DmaFill32(3, 0, (void*)BG_CHAR_ADDR_FROM_BGCNT(2), 0x40);
    gBgSprites_Unknown1->unk0 = 0;
    gBgSprites_Unknown2[0][0] = 0;
    gBgSprites_Unknown2[0][1] = 0;
    gBgSprites_Unknown2[0][2] = 0xFF;
    gBgSprites_Unknown2[0][3] = 0x40;
    gBgSprites_Unknown1[1] = 0;
    gBgSprites_Unknown2[1][0] = 0;
    gBgSprites_Unknown2[1][1] = 0;
    gBgSprites_Unknown2[1][2] = -1U;
    gBgSprites_Unknown2[1][3] = 0x40;
    gBgSprites_Unknown1[2] = 0;
    gBgSprites_Unknown2[2][0] = 0;
    gBgSprites_Unknown2[2][1] = 0;
    gBgSprites_Unknown2[2][2] = -1U;
    gBgSprites_Unknown2[2][3] = 0x40;
    sub_808B4EC(options);
    if (FLAGS_20000 & gFlags) {
        CopyObjPaletteMasked(&gOptionsBgPalette, 0U, 0x100U);
    } else {
		DmaCopy16(3, gOptionsBgPalette, gObjPalette, 0x100 * sizeof(ColorRaw));
        gFlags |= FLAGS_UPDATE_SPRITE_PALETTES;
    }
    m4aSongNumStart(MUS_OPTIONS_COPY);
    gStageData.playerIndex = 0;
}

void sub_808B0A4(OptionsMenu *options) {
    Vec2_32 *sp0;
    s32 *sp4;
    u32 *temp_r1;
    u8 var_r2;
    u8 var_r2_2;
    u8 var_r2_3;

    options->unk8 = 0;
    options->unk10 = 0;
    options->unkE = 0;
    options->unkC = 2;
    options->unkA = options->unk1 - 8;
    options->unk2 = 2;
    var_r2 = 0;
    temp_r1 = options->unk14;
    do {
        temp_r1[var_r2] = 0;
        var_r2 += 1;
    } while ((u32) var_r2 <= 6U);
    temp_r1[options->unk8] = (u32) options->unkA;
    var_r2_2 = 0;
    sp0 = &options->unkA0;
    sp4 = &options->unkA0.y;
    do {
        if (var_r2_2 == 0) {
            options->unk38[0].x = -0xB400;
        } else {
            options->unk38[var_r2_2].x = 0x2B00;
        }
        *(&options->unk38[0].y + (var_r2_2 * 8)) = (var_r2_2 << 0xC) + 0x1D00;
        var_r2_2 += 1;
    } while ((u32) var_r2_2 <= 7U);
    options->unk12 = 0;
    var_r2_3 = 0;
    do {
        options->unk78[var_r2_3].x = 0xA500;
        *(&options->unk78[0].y + (var_r2_3 * 8)) = 0x1D00;
        var_r2_3 += 1;
    } while ((u32) var_r2_3 <= 2U);
    options->unk90.x = options->unk38[0].x + 0x6B00;
    options->unk90.y = 0x1D00;
    sp0->x = 0;
    *sp4 = 0x1000;
    options->unk30.x = 0;
    options->unk30.y = 0xA00;
}

void sub_808B1B0(OptionsMenu *options) {
    Vec2_32 *sp0;
    s32 *sp4;
    u8 var_r2;
    u8 var_r2_2;
    u8 var_r2_3;

    options->unk8 = 0;
    options->unk10 = 0;
    options->unkE = 0;
    options->unkC = 0;
    options->unkA = 0;
    options->unk2 = 0;
    var_r2 = 0;
    do {
        options->unk14[var_r2] = 0;
        var_r2 += 1;
    } while ((u32) var_r2 <= 6U);
    var_r2_2 = 0;
    sp0 = &options->unkA0;
    sp4 = &options->unkA0.y;
    do {
        options->unk38[var_r2_2].x = 0xAC00;
        *(&options->unk38[0].y + (var_r2_2 * 8)) = 0x1D00;
        var_r2_2 += 1;
    } while ((u32) var_r2_2 <= 7U);
    options->unk12 = 0;
    var_r2_3 = 0;
    do {
        options->unk78[var_r2_3].x = 0xA500;
        *(&options->unk78[0].y + (var_r2_3 * 8)) = 0x1D00;
        var_r2_3 += 1;
    } while ((u32) var_r2_3 <= 2U);
    options->unk90.x = 0xA500;
    options->unk90.y = 0x1D00;
    sp0->x = -0x7800;
    *sp4 = 0x1000;
    options->unk30.x = 0xDF00;
    options->unk30.y = 0xA00;
}

void Task_808B294(OptionsMenu *options) {
    s32 temp_r0;
    void (*var_r0)(OptionsMenu *);

    if (options->unk10 == 0) {
        gDispCnt |= 0x2000;
        gWinRegs->unk0 = 0xF0;
        gWinRegs[2] = 0xA0;
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldY = 0x10;
        options->unkE = 0x1000;
        options->unk10 = 1;
    }
    gBldRegs.bldCnt = 0x3EFF;
    sub_808BEEC(options);
    if (options->unk1 == 0) {
        sub_808C008(options);
    }
    sub_808CED0(options);
    sub_808CB74(options);
    sub_808CF4C(options);
    sub_808CC48(options);
    sub_808CF00(options);
    sub_808CCA0(options);
    sub_808CD14(options);
    sub_808CD88(options);
    temp_r0 = (s32) options->unk30.x >> 8;
    if (temp_r0 > 0x59) {
        gBgScrollRegs[1][0] = 0 - temp_r0;
    }
    if (gBldRegs.bldY != 0) {
        gBldRegs.bldY = (u16) ((u16) options->unkE >> 8);
        options->unkE += 0xFFFFFF00;
        return;
    }
    gBldRegs.bldY = gBldRegs.bldY;
    gBldRegs.bldCnt = 0x3FFF;
    if (options->unk1 == 0) {
        var_r0 = Task_808BAA8;
    } else {
        var_r0 = Task_808BCD8;
    }
    gCurTask->main = var_r0;
}

void Task_808B398(OptionsMenu *options) {
    u32 temp_r0;

    if (options->unk10 != 0) {
        gDispCnt |= 0x2000;
        gWinRegs->unk0 = 0xF0;
        gWinRegs[2] = 0xA0;
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3EFF;
        options->unkE = 0;
        options->unk10 = 0;
    }
    if (options->unk3 == 0) {
        sub_808C08C(options);
    }
    sub_808CED0(options);
    sub_808CB74(options);
    sub_808CF4C(options);
    sub_808CC48(options);
    sub_808CF00(options);
    sub_808CCA0(options);
    sub_808CD14(options);
    sub_808CD88(options);
    if ((u32) gBldRegs.bldY <= 0xFU) {
        gBldRegs.bldY = (u16) ((u16) options->unkE >> 8);
        options->unkE += 0x100;
        return;
    }
    gBldRegs.bldY = 0x10;
    gBldRegs.bldCnt = 0x3FFF;
    if (options->unk3 != 0) {
        temp_r0 = options->unk14[options->unk8];
        switch (temp_r0) {                          /* irregular */
        case 0:
            CreateNameEntryScreen(1);
block_16:
            TaskDestroy(gCurTask);
            return;
        case 1:
            CreateTimeRecordScreen(0);
            goto block_16;
        case 2:
            CreateVsRecordScreen();
            goto block_16;
        }
    } else {
        sub_8001E58();
        TasksDestroyInPriorityRange(0U, 0xFFFFU);
        gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;
        gBgSpritesCount = 0;
        gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;
        LaunchChaoMenu(3, 1);
    }
}

void sub_808B4EC(OptionsMenu *options) {
    gBgCntRegs->unk0 = 0x603;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    options->bg12C.graphics.dest = (void *)0x06000000;
    options->bg12C.graphics.anim = 0;
    options->bg12C.layoutVram = (u16 *)0x06003000;
    options->bg12C.unk18 = 0;
    options->bg12C.unk1A = 0;
    options->bg12C.tilemapId = 0x15D;
    options->bg12C.unk1E = 0;
    options->bg12C.unk20 = 0;
    options->bg12C.unk22 = 0;
    options->bg12C.unk24 = 0;
    options->bg12C.targetTilesX = 0x20;
    options->bg12C.targetTilesY = 0x20;
    options->bg12C.paletteOffset = 0;
    options->bg12C.flags = 0;
    DrawBackground(&options->bg12C);
    gBgCntRegs[1] = 0x5E06;
    gBgScrollRegs[1][0] = 0 - ((s32) options->unk30.x >> 8);
    gBgScrollRegs[1][1] = 0 - ((s32) options->unk30.y >> 8);
    options->bgEC.graphics.dest = (void *)0x06004000;
    options->bgEC.graphics.anim = 0;
    options->bgEC.layoutVram = (u16 *)0x0600F000;
    options->bgEC.unk18 = 0;
    options->bgEC.unk1A = 0;
    options->bgEC.tilemapId = 0x15E;
    options->bgEC.unk1E = 0;
    options->bgEC.unk20 = 0;
    options->bgEC.unk22 = 0;
    options->bgEC.unk24 = 0;
    options->bgEC.targetTilesX = 0x1E;
    options->bgEC.targetTilesY = 0x14;
    options->bgEC.paletteOffset = 0;
    options->bgEC.flags = 1;
    DrawBackground(&options->bgEC);
}

void Task_OptionsInit(OptionsMenu *options) {
    gBgCntRegs[2] = 0x1C8D;
    options->bgAC.graphics.dest = (void *)0x0600C000;
    options->bgAC.graphics.anim = 0;
    options->bgAC.layoutVram = (u16 *)0x0600E000;
    options->bgAC.unk18 = 0;
    options->bgAC.unk1A = 0;
    options->bgAC.tilemapId = 0x166;
    options->bgAC.unk1E = 0;
    options->bgAC.unk20 = 0;
    options->bgAC.unk22 = 0;
    options->bgAC.unk24 = 0;
    options->bgAC.targetTilesX = 0x10;
    options->bgAC.targetTilesY = 0x10;
    options->bgAC.paletteOffset = 0;
    options->bgAC.flags = 6;
    DrawBackground(&options->bgAC);
    sa2__sub_8003EE4(0U, 0x100, 0x100, 0x40, 0x40, 0x2150, (s16) (s32) (s16) ((0 - (u16) gBgScrollRegs[1][1]) + 0x5C), gBgAffineRegs);
    gCurTask->main = Task_808B9B4;
}

void sub_808B664(OptionsMenu *options, u8 arg1) {
    s32 *sp0;
    s32 *sp4;
    s32 *sp8;
    s32 *spC;
    Vec2_32 *sp10;
    s32 *sp14;
    Vec2_32 *sp18;
    s32 *sp1C;
    Vec2_32 *sp20;
    s32 *sp24;
    ? *sp28;
    u8 *sp2C;
    ? *var_r3;
    Sprite *temp_r2_2;
    Sprite *var_r0;
    Vec2_32 *temp_r0;
    Vec2_32 *temp_r2;
    Vec2_32 *temp_r3;
    s16 var_r0_2;
    s32 *temp_r1;
    s32 *temp_r6;
    s32 temp_r1_2;
    u8 temp_r7;
    u8 var_r5;

    temp_r7 = arg1;
    options->lang0 = LOADED_SAVE->language;
    options->unk14[options->unk8] = (u32) LOADED_SAVE->language;
    if (temp_r7 != 0) {
        var_r0 = options->spr16C;
    } else {
        var_r0 = (Sprite *) &options->vramA8;
    }
    sp2C = var_r0->tiles;
    var_r5 = 0;
    temp_r3 = options->unk38;
    sp20 = temp_r3;
    temp_r6 = &options->unk38[0].y;
    sp24 = temp_r6;
    temp_r0 = &options->unkA0;
    sp18 = temp_r0;
    temp_r1 = &options->unkA0.y;
    sp1C = temp_r1;
    temp_r2 = &options->unk90;
    sp10 = temp_r2;
    sp14 = temp_r3 + 0x5C;
    sp0 = temp_r6 + 0x44;
    sp4 = temp_r0 - 0x1C;
    sp8 = temp_r1 - 0x1C;
    spC = temp_r2 - 4;
    var_r3 = &gUnknown_080D6960;
    do {
        temp_r2_2 = &options->spr16C[var_r5];
        temp_r2_2->tiles = sp2C;
        temp_r1_2 = (var_r5 + (options->lang0 * 8)) * 8;
        sp2C += *(temp_r1_2 + (var_r3 + 4)) << 5;
        temp_r2_2->anim = *(temp_r1_2 + var_r3);
        temp_r2_2->variant = (((var_r5 + (options->lang0 * 8)) * 8) + var_r3)->unk2;
        temp_r2_2->prevVariant = 0xFF;
        if (var_r5 == 0) {
            var_r0_2 = 0x100;
        } else {
            var_r0_2 = 0x180;
        }
        temp_r2_2->oamFlags = var_r0_2;
        temp_r2_2->animCursor = 0;
        temp_r2_2->qAnimDelay = 0;
        temp_r2_2->animSpeed = 0x10;
        temp_r2_2->palId = 0;
        temp_r2_2->frameFlags = 0x43080;
        temp_r2_2->hitboxes[0].index = -1;
        temp_r2_2->x = (s16) ((s32) sp20[var_r5].x >> 8);
        temp_r2_2->y = (s16) ((s32) *(sp24 + (var_r5 * 8)) >> 8);
        sp28 = var_r3;
        UpdateSpriteAnimation(temp_r2_2);
        var_r5 += 1;
    } while ((u32) var_r5 <= 7U);
    if (temp_r7 == 0) {
        options->vramA8 += 0x3200;
    }
    if (temp_r7 == 0) {
        options->spr34C.tiles = options->vramA8;
        options->vramA8 += 0x380;
        options->spr34C.oamFlags = 0x140;
        options->spr34C.animCursor = (u16) temp_r7;
        options->spr34C.qAnimDelay = (s16) temp_r7;
        options->spr34C.animSpeed = 0x10;
        options->spr34C.palId = 0;
        options->spr34C.frameFlags = 0x43000;
        options->spr34C.hitboxes[0].index = -1;
    }
    options->spr34C.anim = gUnknown_080D6BD8[options->lang0].anim;
    options->spr34C.variant = gUnknown_080D6BD8[options->lang0].variant;
    options->spr34C.prevVariant = 0xFF;
    options->spr34C.x = (s16) ((s32) sp18->x >> 8);
    options->spr34C.y = (s16) ((s32) *sp1C >> 8);
    UpdateSpriteAnimation(&options->spr34C);
    if (temp_r7 == 0) {
        options->spr2AC.tiles = options->vramA8;
        options->vramA8 += gUnknown_080D6AE0.unk4 << 5;
        options->spr2AC.oamFlags = 0xC0;
        options->spr2AC.animCursor = (u16) temp_r7;
        options->spr2AC.qAnimDelay = (s16) temp_r7;
        options->spr2AC.animSpeed = 0x10;
        options->spr2AC.palId = 0;
        options->spr2AC.frameFlags = 0x43080;
        options->spr2AC.hitboxes[0].index = -1;
    }
    options->spr2AC.anim = gUnknown_080D6AE0.unk0;
    options->spr2AC.variant = gUnknown_080D6AE0.unk2;
    options->spr2AC.prevVariant |= ~0;
    options->spr2AC.x = (s16) ((s32) sp10->x >> 8);
    options->spr2AC.y = (s16) ((s32) *sp14 >> 8);
    UpdateSpriteAnimation(&options->spr2AC);
    if (temp_r7 == 0) {
        options->spr2D4.tiles = options->vramA8;
        options->vramA8 += 0x200;
        options->spr2D4.oamFlags = 0x140;
        options->spr2D4.animCursor = (u16) temp_r7;
        options->spr2D4.qAnimDelay = (s16) temp_r7;
        options->spr2D4.animSpeed = 0x10;
        options->spr2D4.palId = 0;
        options->spr2D4.frameFlags = 0x43080;
        options->spr2D4.hitboxes[0].index = -1;
    }
    options->spr2D4.anim = *((options->lang0 * 0x10) + gUnknown_080D6AE8);
    options->spr2D4.variant = ((options->lang0 * 0x10) + gUnknown_080D6AE8)->unk2;
    options->spr2D4.prevVariant |= ~0;
    options->spr2D4.x = (s16) ((s32) options->unk78[0].x >> 8);
    options->spr2D4.y = (s16) ((s32) options->unk78[0].y >> 8);
    UpdateSpriteAnimation(&options->spr2D4);
    if (temp_r7 == 0) {
        options->spr2FC.tiles = options->vramA8;
        options->vramA8 += 0x200;
        options->spr2FC.oamFlags = 0x140;
        options->spr2FC.animCursor = (u16) temp_r7;
        options->spr2FC.qAnimDelay = (s16) temp_r7;
        options->spr2FC.animSpeed = 0x10;
        options->spr2FC.palId = 0;
        options->spr2FC.frameFlags = 0x43080;
        options->spr2FC.hitboxes[0].index = -1;
    }
    options->spr2FC.anim = *((options->lang0 * 0x10) + gUnknown_080D6B48);
    options->spr2FC.variant = ((options->lang0 * 0x10) + gUnknown_080D6B48)->unk2;
    options->spr2FC.prevVariant |= ~0;
    options->spr2FC.x = (s16) ((s32) *sp0 >> 8);
    options->spr2FC.y = (s16) ((s32) *sp4 >> 8);
    UpdateSpriteAnimation(&options->spr2FC);
    if (temp_r7 == 0) {
        options->spr324.tiles = options->vramA8;
        options->vramA8 += 0x200;
        options->spr324.oamFlags = 0x140;
        options->spr324.animCursor = (u16) temp_r7;
        options->spr324.qAnimDelay = (s16) temp_r7;
        options->spr324.animSpeed = 0x10;
        options->spr324.palId = 0;
        options->spr324.frameFlags = 0x43080;
        options->spr324.hitboxes[0].index = -1;
    }
    options->spr324.anim = gUnknown_080D6BA8[options->lang0].anim;
    options->spr324.variant = gUnknown_080D6BA8[options->lang0].variant;
    options->spr324.prevVariant |= ~0;
    options->spr324.x = (s16) ((s32) *sp8 >> 8);
    options->spr324.y = (s16) ((s32) *spC >> 8);
    UpdateSpriteAnimation(&options->spr324);
}

void Task_808B9B4(OptionsMenu *options) {
    Sprite *temp_r2;
    u16 temp_r1;
    u16 var_r0;
    u8 var_r5;

    var_r5 = 0;
    do {
        temp_r2 = &options->spr374[var_r5];
        temp_r2->tiles = options->vramA8;
        options->vramA8 += gUnknown_080D7458.unk4 << 5;
        temp_r1 = LOADED_SAVE->playerName[var_r5];
        if (temp_r1 != 0xFFFF) {
            if ((u32) temp_r1 > 0xFFU) {
                temp_r2->variant = (u8) temp_r1;
                var_r0 = gUnknown_080D7460;
            } else {
                temp_r2->variant = (u8) temp_r1;
                var_r0 = gUnknown_080D7458.unk0;
            }
            temp_r2->anim = var_r0;
            options->unk4 += 1;
        } else {
            temp_r2->anim = gUnknown_080D7458.unk0;
            temp_r2->variant = 0;
        }
        temp_r2->prevVariant = 0xFF;
        temp_r2->x = (s16) ((s32) options->unk78[2].x >> 8);
        temp_r2->y = (s16) ((s32) options->unk78[2].y >> 8);
        temp_r2->oamFlags = 0x80;
        temp_r2->animCursor = 0;
        temp_r2->qAnimDelay = 0;
        temp_r2->animSpeed = 0x10;
        temp_r2->palId = 9;
        temp_r2->frameFlags = 0x43080;
        temp_r2->hitboxes[0].index = -1;
        UpdateSpriteAnimation(temp_r2);
        var_r5 += 1;
    } while ((u32) var_r5 <= 5U);
    sub_808B664(options, 0U);
    if (options->unk1 != 0) {
        Options_LoadSelectedMenu(options);
    }
    gCurTask->main = Task_808B294;
}

void Task_808BAA8(OptionsMenu *options) {
    s32 temp_r0;

    sub_808BEEC(options);
    sub_808CED0(options);
    sub_808CB74(options);
    sub_808CF4C(options);
    sub_808CC48(options);
    sub_808CF00(options);
    sub_808CCA0(options);
    sub_808CD14(options);
    sub_808CD88(options);
    if (sub_808C008(options) == 8) {
        options->unkC = 1;
        gBldRegs.bldCnt = 0x3F40;
        gBldRegs.bldAlpha = 1;
        gCurTask->main = Task_808BD90;
        return;
    }
    temp_r0 = (s32) options->unk30.x >> 8;
    if (temp_r0 > 0x59) {
        gBgScrollRegs[1][0] = 0 - temp_r0;
    }
}

void Task_808BB34(OptionsMenu *options) {
    s32 temp_r0;

    gBldRegs.bldAlpha = 0xF;
    sub_808CED0(options);
    sub_808CB74(options);
    sub_808CF4C(options);
    sub_808CC48(options);
    sub_808CCA0(options);
    sub_808CD14(options);
    sub_808CD88(options);
    if ((u32) sub_808C08C(options) > 3U) {
        options->unkC = 1;
        gBldRegs.bldCnt = 0x3F40;
        gBldRegs.bldAlpha = 1;
        options->unk3 = 0;
        gCurTask->main = Task_808B398;
        return;
    }
    temp_r0 = (s32) options->unk30.x >> 8;
    if (temp_r0 > 0x6E) {
        gBgScrollRegs[1][0] = 0 - temp_r0;
    }
}

void Task_808BBBC(OptionsMenu *options) {
    sub_808BEEC(options);
    sub_808CED0(options);
    sub_808CB74(options);
    sub_808CF4C(options);
    if ((s32) gBgScrollRegs[1][0] <= -0x28) {
        sub_808CC48(options);
        sub_808CCA0(options);
        sub_808CD14(options);
        sub_808CD88(options);
    }
    if ((sub_808C1BC(options) << 0x18) != 0) {
        options->unkC = 0;
        if (options->unk8 == 5) {
            gDispCnt &= 0xFBFF;
            gBgCntRegs[1] = 0x5E06;
            options->bgEC.graphics.dest = (void *)0x06004000;
            options->bgEC.graphics.anim = 0;
            options->bgEC.layoutVram = (u16 *)0x0600F000;
            options->bgEC.unk18 = 0;
            options->bgEC.unk1A = 0;
            options->bgEC.tilemapId = 0x15E;
            options->bgEC.unk1E = 0;
            options->bgEC.unk20 = 0;
            options->bgEC.unk22 = 0;
            options->bgEC.unk24 = 0;
            options->bgEC.targetTilesX = 0x1E;
            options->bgEC.targetTilesY = 0x14;
            options->bgEC.paletteOffset = 0;
            options->bgEC.flags = 1;
            DrawBackground(&options->bgEC);
        }
        if (options->unk8 == 6) {
            if (options->unk3 != 0) {
                gCurTask->main = Task_808CA9C;
                return;
            }
            options->unk3 = 0;
            goto block_9;
        }
block_9:
        gCurTask->main = Task_808BD90;
        return;
    }
    gBgScrollRegs[1][0] = 0 - ((s32) options->unk30.x >> 8);
}

void Task_808BCD8(OptionsMenu *options) {
    sub_808BEEC(options);
    sub_808CED0(options);
    sub_808CB74(options);
    sub_808CF4C(options);
    sub_808CC48(options);
    sub_808CCA0(options);
    sub_808CD14(options);
    sub_808CD88(options);
    if (sub_808BFA0(options) == 1) {
        options->unkA0.x = 0;
    }
    if ((options->unk6 == 0) && ((s32) gBgScrollRegs[1][0] <= -0xC8)) {
        options->unk14[6] = 1;
        Options_LoadSelectedMenu(options);
        return;
    }
    if (*((options->unk8 * 4) + &gUnknown_080D6E38)(options) != 1) {
        if ((s32) options->unk8 <= 6) {
            sub_808C250(options);
        }
        gBgScrollRegs[1][0] = 0 - ((s32) options->unk30.x >> 8);
    }
}

void Task_808BD90(OptionsMenu *options) {
    s16 temp_r0;
    s16 temp_r2_3;
    s16 var_r0;
    u16 temp_r2;
    u16 temp_r2_2;

    sub_808BEEC(options);
    sub_808C2E4(options);
    sub_808CED0(options);
    sub_808CB74(options);
    sub_808CF4C(options);
    sub_808CC48(options);
    sub_808CF00(options);
    sub_808CCA0(options);
    sub_808CD14(options);
    sub_808CD88(options);
    if (sub_808BFA0(options) == 1) {
        options->unkA0.x = 0;
    }
    if (1 & gPressedKeys) {
        m4aSongNumStart(SE_SELECT);
        options->unkC = 0;
        if (options->unk8 != 7) {
            gCurTask->main = Task_808BCD8;
            return;
        }
        goto block_7;
    }
    if (2 & gPressedKeys) {
        m4aSongNumStart(SE_ABORT);
block_7:
        sub_808CFC4(options);
        gCurTask->main = Task_808BB34;
        return;
    }
    if (0xC0 & gRepeatedKeys) {
        m4aSongNumStart(0x6CU);
        temp_r2 = 0x40 & gRepeatedKeys;
        if (temp_r2 != 0) {
            temp_r2_2 = (u16) options->unk8;
            if (options->unk8 == 0) {
                var_r0 = 7;
                goto block_21;
            }
            temp_r0 = temp_r2_2 - 1;
            options->unk8 = temp_r0;
            if ((temp_r0 == 5) && !(1 & LOADED_SAVE->unlockFlags)) {
                var_r0 = temp_r2_2 - 2;
                goto block_21;
            }
        } else if (0x80 & gRepeatedKeys) {
            if (options->unk8 == 7) {
                options->unk8 = (s16) temp_r2;
            } else {
                temp_r2_3 = (u16) options->unk8 + 1;
                options->unk8 = temp_r2_3;
                if ((temp_r2_3 == 5) && !(1 & LOADED_SAVE->unlockFlags)) {
                    var_r0 = temp_r2_3 + 1;
block_21:
                    options->unk8 = var_r0;
                }
            }
        }
        options->unkC = 0;
    }
    gBgScrollRegs[1][0] = 0 - ((s32) options->unk30.x >> 8);
}

void sub_808BEEC(OptionsMenu *options) {
    s32 temp_r0;
    s32 var_r4;
    u8 var_r1;
    u8 var_r5;
    void *var_r2;

    var_r5 = 0;
    gFlags |= FLAGS_EXECUTE_HBLANK_COPY;
    gHBlankCopyTarget = (void *)&REG_BLDALPHA;
    gHBlankCopySize = sizef(REG_BLDALPHA);
    var_r2 = gBgOffsetsHBlankPrimary;
    options->unk12 = 0;
    var_r4 = 0;
    do {
        temp_r0 = (s32) *(&options->unk38[0].y + (var_r5 * 8)) >> 8;
        if ((var_r4 >= temp_r0) && (var_r4 < (s32) (temp_r0 + 0x10))) {
            var_r1 = 0;
            do {
                *var_r2 = (u16) *((options->unk12 * 2) + (options->unk8 * 0x10) + &gUnknown_080D6E54);
                var_r2 += 2;
                var_r1 += 1;
                var_r4 = (s32) (u8) (var_r4 + 1);
            } while ((u32) var_r1 <= 0xFU);
            options->unk12 += 1;
            var_r5 += 1;
        } else {
            *var_r2 = (s16) &gUnknown_080D6E54;
            var_r2 += 2;
        }
        var_r4 = (s32) (u8) (var_r4 + 1);
    } while ((u32) var_r4 <= 0x9FU);
}

u32 sub_808BFA0(OptionsMenu *options) {
    s32 temp_r1;
    u8 temp_r4;

    temp_r4 = options->unk2;
    temp_r1 = options->unkA0.x + *((temp_r4 * 4) + &gUnknown_080D6ED4);
    options->unkA0.x = temp_r1;
    switch (temp_r4) {                              /* irregular */
    case 0:
        if (temp_r1 <= 0x9FF) {
            if ((temp_r4 == 1) && ((s32) options->unkA0.x <= 0xFFFFF600)) {
                goto block_4;
            }
            if ((temp_r4 == 2) && ((s32) options->unkA0.x > 0)) {
                options->unkA0.x = 0;
                return 1U;
            }
            goto block_8;
        }
block_4:
        options->unk2 += 1;
block_8:
    default:
        return 0U;
    }
}

u8 sub_808C008(OptionsMenu *options) {
    Vec2_32 *temp_r0;
    Vec2_32 *temp_r1;
    s32 *temp_r2_2;
    s32 temp_r0_2;
    s32 temp_r1_2;
    s32 temp_r3;
    s32 var_r2;
    u32 temp_r2;
    u8 var_r5;
    u8 var_r6;

    var_r6 = 0;
    var_r5 = 0;
    do {
        var_r2 = 0x2B;
        if (var_r5 == options->unk8) {
            var_r2 = 0x21;
        }
        temp_r0 = options->unk38;
        temp_r1 = &temp_r0[var_r5];
        temp_r2 = var_r2 << 8;
        temp_r3 = temp_r1->x;
        if ((u32) temp_r3 > temp_r2) {
            temp_r1->x = temp_r3 + 0xFFFFF800;
        } else {
            temp_r1->x = (s32) temp_r2;
            temp_r2_2 = &options->unk38[0].y + (var_r5 * 8);
            temp_r0_2 = (var_r5 << 0xC) + 0x1D00;
            temp_r1_2 = *temp_r2_2;
            if (temp_r1_2 < temp_r0_2) {
                *temp_r2_2 = temp_r1_2 + 0x800;
            } else {
                *temp_r2_2 = temp_r0_2;
                var_r6 += 1;
            }
        }
        var_r5 += 1;
    } while ((u32) var_r5 <= 7U);
    options->unk30.x = temp_r0[options->unk8].x + 0xB400;
    return var_r6;
}

u8 sub_808C08C(OptionsMenu *options) {
    Vec2_32 *temp_r1_4;
    Vec2_32 *temp_r3_2;
    s32 *temp_r2_2;
    s32 *temp_r3;
    s32 *temp_r4;
    s32 *temp_r6;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 temp_r2;
    s32 temp_r2_3;
    u8 var_r5;
    u8 var_r5_2;
    u8 var_r8;
    u8 var_sb;

    var_sb = 0;
    if (((s32) options->unk8 > 5) && !(1 & LOADED_SAVE->unlockFlags)) {
        var_r8 = (u16) options->unk8 - 1;
    } else {
        var_r8 = (u8) options->unk8;
    }
    var_r5 = 0;
    temp_r6 = &options->unk38[0].y;
    temp_r4 = temp_r6 + (var_r8 * 8);
    do {
        temp_r0 = var_r5 * 8;
        temp_r3 = temp_r6 + temp_r0;
        temp_r1 = *temp_r3;
        temp_r2 = *temp_r4;
        if (temp_r1 <= temp_r2) {
            if ((temp_r1 == temp_r2) || (temp_r0_2 = temp_r1 + ((var_r8 - var_r5) << 9), *temp_r3 = temp_r0_2, (temp_r0_2 >= (s32) *temp_r4))) {
                temp_r1_2 = *temp_r4;
                *temp_r3 = temp_r1_2;
                var_sb += 1;
                temp_r0_3 = *temp_r4;
                if (temp_r1_2 >= temp_r0_3) {
                    if (temp_r1_2 != temp_r0_3) {
                        goto block_10;
                    }
                    goto block_11;
                }
            }
        } else {
block_10:
            temp_r2_2 = temp_r6 + temp_r0;
            temp_r1_3 = *temp_r2_2 - ((var_r5 - var_r8) << 9);
            *temp_r2_2 = temp_r1_3;
            if (temp_r1_3 <= (s32) *temp_r4) {
block_11:
                *(temp_r6 + temp_r0) = *temp_r4;
                var_sb += 1;
            }
        }
        var_r5 += 1;
    } while ((u32) var_r5 <= 7U);
    if (var_sb == 0x10) {
        temp_r3_2 = options->unk38;
        temp_r1_4 = &temp_r3_2[var_r8];
        temp_r2_3 = temp_r1_4->x;
        if (temp_r2_3 <= 0xB3FF) {
            temp_r1_4->x = temp_r2_3 + 0x1000;
            var_sb = 0xF;
        }
        var_r5_2 = 0;
        do {
            temp_r3_2[var_r5_2].x = temp_r1_4->x;
            var_r5_2 += 1;
        } while ((u32) var_r5_2 <= 7U);
    }
    if ((s32) options->unk30.x <= 0xDEFF) {
        options->unk30.x = options->unk38[var_r8].x + 0xB400;
    }
    gBgScrollRegs[1][0] = 0 - ((s32) options->unk30.x >> 8);
    return (u8) (var_sb >> 1);
}

s32 sub_808C1BC(OptionsMenu *options) {
    Vec2_32 *temp_r1;
    Vec2_32 *temp_r1_2;
    Vec2_32 *temp_r1_3;
    Vec2_32 *temp_r2_2;
    Vec2_32 *temp_r4;
    Vec2_32 *var_r5;
    s32 temp_r2;
    s32 var_r1;
    s32 var_r6;

    var_r6 = 0;
    if (options->unkC == 0) {
        temp_r1 = options->unk38;
        temp_r4 = &temp_r1[options->unk8];
        temp_r2 = temp_r4->x;
        var_r5 = temp_r1;
        if (temp_r2 <= 0x25FF) {
            var_r1 = 0x1400;
            goto block_5;
        }
        if (temp_r2 <= 0x2EFF) {
            var_r1 = 0x800;
block_5:
            temp_r4->x = temp_r2 + var_r1;
        } else {
            goto block_6;
        }
    } else {
block_6:
        temp_r1_2 = options->unk38;
        temp_r2_2 = &temp_r1_2[options->unk8];
        var_r5 = temp_r1_2;
        if ((s32) temp_r2_2->x > 0x2B00) {
            options->unkC = 1;
            temp_r1_3 = &var_r5[options->unk8];
            temp_r1_3->x += 0xFFFFF800;
        } else {
            var_r6 = 1;
            temp_r2_2->x = 0x2B00;
        }
    }
    options->unk30.x = var_r5[options->unk8].x + 0xB400;
    return var_r6;
}

void sub_808C250(Task **arg0) {
    s32 *temp_r1_3;
    s32 *var_r3;
    s32 var_r0;
    s32 var_r1;
    s32 var_r2;
    void *temp_r1;
    void *temp_r1_2;
    void *var_r4;

    if (arg0->unkC == 0) {
        temp_r1 = arg0 + 0x38;
        var_r3 = temp_r1 + (arg0->unk8 * 8);
        var_r2 = *var_r3;
        var_r4 = temp_r1;
        if (var_r2 > 0xFFFF4600) {
            var_r1 = 0xFFFFEC00;
            goto block_7;
        }
    }
    temp_r1_2 = arg0 + 0x38;
    var_r3 = temp_r1_2 + (arg0->unk8 * 8);
    var_r2 = *var_r3;
    var_r4 = temp_r1_2;
    if (var_r2 <= 0xFFFF4F00) {
        var_r0 = -0xB400;
        if (var_r2 < 0xFFFF4C00) {
            arg0->unkC = 1U;
            temp_r1_3 = var_r4 + (arg0->unk8 * 8);
            *temp_r1_3 += 0x600;
        } else {
            goto block_8;
        }
    } else {
        var_r1 = 0xFFFFFF00;
block_7:
        var_r0 = var_r2 + var_r1;
block_8:
        *var_r3 = var_r0;
    }
    arg0->unk30 = (s32) (*(var_r4 + (arg0->unk8 * 8)) + 0xB400);
}

s32 sub_808C2E4(OptionsMenu *options) {
    Vec2_32 *temp_r1;
    Vec2_32 *temp_r1_2;
    Vec2_32 *temp_r1_3;
    Vec2_32 *temp_r1_4;
    Vec2_32 *var_r4;
    Vec2_32 *var_r5;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r2;
    s32 var_r0;
    u8 var_r2;

    if (options->unkC == 0) {
        temp_r1 = options->unk38;
        var_r4 = &temp_r1[options->unk8];
        temp_r2 = var_r4->x;
        var_r5 = temp_r1;
        if (temp_r2 > 0x1C00) {
            var_r0 = temp_r2 + 0xFFFFFD00;
            goto block_6;
        }
    }
    temp_r1_2 = options->unk38;
    var_r4 = &temp_r1_2[options->unk8];
    var_r5 = temp_r1_2;
    if ((s32) var_r4->x <= 0x20FF) {
        options->unkC = 1;
        temp_r1_3 = &var_r5[options->unk8];
        temp_r1_3->x += 0x400;
    } else {
        var_r0 = 0x2100;
block_6:
        var_r4->x = var_r0;
    }
    var_r2 = 0;
    do {
        if (var_r2 != options->unk8) {
            temp_r1_4 = &var_r5[var_r2];
            temp_r0_2 = temp_r1_4->x;
            if (temp_r0_2 <= 0x2AFF) {
                temp_r1_4->x = temp_r0_2 + 0x200;
            }
        }
        var_r2 += 1;
    } while ((u32) var_r2 <= 7U);
    temp_r0 = var_r5[options->unk8].x + 0xB400;
    options->unk30.x = temp_r0;
    return temp_r0;
}

s32 sub_808C390(OptionsMenu *options) {
    s16 temp_r5;
    u8 temp_r0;
    void (*var_r0)(OptionsMenu *);

    temp_r0 = options->unk6;
    if (temp_r0 == 0) {
        options->unk8 = (s16) temp_r0;
        options->unkC = (u16) temp_r0;
        goto block_7;
    }
    temp_r5 = gBgScrollRegs[1][0];
    if ((temp_r5 == 0) && (1 & gPressedKeys)) {
        m4aSongNumStart(SE_SELECT);
        if ((s32) options->unk14[options->unk8] <= 2) {
            options->unk3 = 1;
            gBldRegs.bldCnt = 0x3F40;
            gBldRegs.bldAlpha = 1;
            var_r0 = Task_808B398;
        } else {
            options->unk8 = temp_r5;
            options->unkC = (u16) temp_r5;
block_7:
            var_r0 = Task_808BBBC;
        }
        gCurTask->main = var_r0;
        return 1;
    }
    gBgScrollRegs[1][0] = 0 - ((s32) options->unk30.x >> 8);
    return 0;
}

s32 sub_808C424(OptionsMenu *options) {
    s16 temp_r1;
    s16 temp_r3_2;
    s16 temp_r5;
    u16 temp_r3;
    u16 var_r0;
    u32 *var_r2;
    u32 temp_r0;
    u32 temp_r0_2;

    if (2 & gPressedKeys) {
        m4aSongNumStart(SE_ABORT);
        options->unk14[options->unk8] = (u32) options->unkA;
        options->unkC = 0;
        goto block_5;
    }
    temp_r5 = gBgScrollRegs[1][0];
    if (temp_r5 == 0) {
        if (1 & gPressedKeys) {
            m4aSongNumStart(SE_SELECT);
            options->unkC = (u16) temp_r5;
block_5:
            gCurTask->main = Task_808BBBC;
            return 1;
        }
        if (0x30 & gRepeatedKeys) {
            m4aSongNumStart(0x6CU);
            temp_r3 = 0x10 & gRepeatedKeys;
            if (temp_r3 != 0) {
                temp_r3_2 = options->unk8;
                var_r2 = &options->unk14[temp_r3_2];
                temp_r0 = *var_r2;
                if (temp_r0 == 0) {
                    var_r0 = *((temp_r3_2 * 2) + &gUnknown_080D6C08);
                } else {
                    var_r0 = temp_r0 - 1;
                }
                goto block_15;
            }
            if (0x20 & gRepeatedKeys) {
                temp_r1 = options->unk8;
                var_r2 = &options->unk14[temp_r1];
                temp_r0_2 = *var_r2;
                if (temp_r0_2 == *((temp_r1 * 2) + &gUnknown_080D6C08)) {
                    *var_r2 = (u32) temp_r3;
                } else {
                    var_r0 = temp_r0_2 + 1;
block_15:
                    *var_r2 = (u32) var_r0;
                }
            }
        }
        goto block_16;
    }
block_16:
    gBgScrollRegs[1][0] = 0 - ((s32) options->unk30.x >> 8);
    return 0;
}

s32 sub_808C514(OptionsMenu *options) {
    s16 temp_r5;
    u32 *temp_r3;
    u32 temp_r2;

    temp_r5 = gBgScrollRegs[1][0];
    if ((temp_r5 == 0) && (options->unk6 != 0) && (1 & gPressedKeys)) {
        m4aSongNumStart(SE_SELECT);
        options->unkC = (u16) temp_r5;
        temp_r3 = options->unk14;
        temp_r2 = temp_r3[options->unk8];
        if (LOADED_SAVE->language != temp_r2) {
            LOADED_SAVE->language = (u8) temp_r2;
            options->unkA = (s16) temp_r3[options->unk8];
            options->lang0 = (u8) temp_r2;
            sub_808B664(options, 1U);
        }
        options->unk6 = 0;
    } else {
		if (!(2 & gPressedKeys)) {
			gBgScrollRegs[1][0] = 0 - ((s32) options->unk30.x >> 8);
			return 0;
		}
		m4aSongNumStart(SE_ABORT);
		options->unk14[options->unk8] = (u32) options->unkA;
		options->unkC = 0;
	}

    gCurTask->main = Task_808BBBC;
    return 1;
}

s32 sub_808C5D4(OptionsMenu *options) {
    s16 temp_r1;
    s16 temp_r3_2;
    s16 temp_r5;
    u16 temp_r3;
    u16 var_r0;
    u32 *var_r2;
    u32 temp_r0;
    u32 temp_r0_2;
    u8 temp_r2;

    if (2 & gPressedKeys) {
        m4aSongNumStart(SE_ABORT);
        temp_r2 = options->unk3;
        if (temp_r2 == 0) {
            options->unk14[options->unk8] = (u32) options->unkA;
            options->unkC = (u16) temp_r2;
            gCurTask->main = Task_808BBBC;
            return 1;
        }
        options->unk3 = 0;
        goto block_4;
    }
block_4:
    temp_r5 = gBgScrollRegs[1][0];
    if (temp_r5 == 0) {
        if (1 & gPressedKeys) {
            m4aSongNumStart(SE_SELECT);
            options->unk3 = (u8) temp_r5;
        }
        if (gBgScrollRegs[1][0] == 0) {
            if (0xC0 & gRepeatedKeys) {
                m4aSongNumStart(0x6CU);
                temp_r3 = 0x40 & gRepeatedKeys;
                if (temp_r3 != 0) {
                    temp_r3_2 = options->unk8;
                    var_r2 = &options->unk14[temp_r3_2];
                    temp_r0 = *var_r2;
                    if (temp_r0 == 0) {
                        var_r0 = *((temp_r3_2 * 2) + &gUnknown_080D6C08);
                    } else {
                        var_r0 = temp_r0 - 1;
                    }
                    goto block_17;
                }
                if (0x80 & gRepeatedKeys) {
                    temp_r1 = options->unk8;
                    var_r2 = &options->unk14[temp_r1];
                    temp_r0_2 = *var_r2;
                    if (temp_r0_2 == *((temp_r1 * 2) + &gUnknown_080D6C08)) {
                        *var_r2 = (u32) temp_r3;
                    } else {
                        var_r0 = temp_r0_2 + 1;
block_17:
                        *var_r2 = (u32) var_r0;
                    }
                }
            }
            if ((gBgScrollRegs[1][0] == 0) && (0x30 & gRepeatedKeys)) {
                m4aSongNumStart(0x6CU);
                options->unk3 = 1;
            }
        }
    }
    gBgScrollRegs[1][0] = 0 - ((s32) options->unk30.x >> 8);
    return 0;
}

s32 sub_808C704(OptionsMenu *options) {
    s16 temp_r5;
    u32 *temp_r1;
    u8 temp_r0;
    void (*var_r0)(OptionsMenu *);

    if (2 & gPressedKeys) {
        m4aSongNumStart(SE_ABORT);
        options->unk3 = 0;
        options->unk14[options->unk8] = (u32) options->unkA;
        options->unkC = 0;
        var_r0 = Task_808BBBC;
        goto block_11;
    }
    temp_r5 = gBgScrollRegs[1][0];
    if ((temp_r5 == 0) && (1 & gPressedKeys)) {
        m4aSongNumStart(SE_SELECT);
        temp_r1 = options->unk14;
        if (temp_r1[options->unk8] != 0) {
            options->unk3 = (u8) temp_r5;
            temp_r1[options->unk8] = (u32) options->unkA;
            options->unkC = (u16) temp_r5;
            var_r0 = Task_808BBBC;
            goto block_11;
        }
        temp_r0 = options->unk3 + 1;
        options->unk3 = temp_r0;
        if (temp_r0 == 2) {
            options->unk5 = 1;
        }
        goto block_8;
    }
block_8:
    if (options->unk5 == 0) {
        gBgScrollRegs[1][0] = 0 - ((s32) options->unk30.x >> 8);
        return 0;
    }
    var_r0 = sub_808C9B0;
block_11:
    gCurTask->main = var_r0;
    return 1;
}

void Options_LoadSelectedMenu(OptionsMenu *options) {
    Sprite *temp_r1_2;
    s16 temp_r1;
    s16 temp_r2;
    s16 temp_r6;
    s16 var_r0;
    u32 *temp_r7;
    u8 temp_r4;
    u8 var_r4;

    temp_r4 = options->unk6;
    if (temp_r4 == 0) {
        temp_r6 = options->unk8;
        if ((s32) temp_r6 <= 6) {
            options->unk3 = temp_r4;
            temp_r7 = options->unk14;
            options->unkA = (s16) temp_r7[temp_r6];
            if (temp_r6 == 5) {
                gDispCnt |= 0x400;
                gBgCntRegs[1] = 0x5E86;
                options->bgEC.graphics.dest = (void *)0x06004000;
                options->bgEC.graphics.anim = (u16) temp_r4;
                options->bgEC.layoutVram = (u16 *)0x0600F000;
                options->bgEC.unk18 = (u16) temp_r4;
                options->bgEC.unk1A = (u16) temp_r4;
                options->bgEC.tilemapId = 0x165;
                options->bgEC.unk1E = (u16) temp_r4;
                options->bgEC.unk20 = (u16) temp_r4;
                options->bgEC.unk22 = (u16) temp_r4;
                options->bgEC.unk24 = (u16) temp_r4;
                options->bgEC.targetTilesX = 0x1E;
                options->bgEC.targetTilesY = 0x14;
                options->bgEC.paletteOffset = 0;
                options->bgEC.flags = (u16) temp_r6;
                DrawBackground(&options->bgEC);
            }
            temp_r1 = options->unk8;
            if (temp_r1 == 0) {
                temp_r7[temp_r1] = (u32) temp_r1;
            }
            temp_r2 = options->unk8;
            *((temp_r2 * 4) + &sOptionsSlideInits)(temp_r7[temp_r2], options->vramA8, &options->unk14[temp_r2], &options->unk6);
            options->unk6 = 1;
            return;
        }
        var_r4 = 0;
        do {
            temp_r1_2 = &options->spr16C[var_r4];
            if (var_r4 == options->unk8) {
                var_r0 = 0;
            } else {
                var_r0 = 0x100;
            }
            temp_r1_2->oamFlags = var_r0;
            UpdateSpriteAnimation(temp_r1_2);
            var_r4 += 1;
        } while ((u32) var_r4 <= 7U);
    }
}

void Task_808C8DC(OptionsMenu *options) {
    if (options->unk10 == 0) {
        gDispCnt |= 0x2000;
        gWinRegs->unk0 = 0xF0;
        gWinRegs[2] = 0xA0;
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldY = 0x10;
        options->unkE = 0x1000;
        options->unk10 = 1;
    }
    gBldRegs.bldCnt = 0x3EFF;
    sub_808BEEC(options);
    sub_808CED0(options);
    sub_808CB74(options);
    sub_808CF4C(options);
    sub_808CC48(options);
    sub_808CF00(options);
    sub_808CCA0(options);
    sub_808CD14(options);
    sub_808CD88(options);
    if (gBldRegs.bldY != 0) {
        gBldRegs.bldY = (u16) ((u16) options->unkE >> 8);
        options->unkE += 0xFFFFFF00;
        return;
    }
    gBldRegs.bldY = gBldRegs.bldY;
    gBldRegs.bldCnt = 0x3FFF;
    gCurTask->main = Task_808BD90;
}

void sub_808C9B0(OptionsMenu *options) {
    if (options->unk10 != 0) {
        gDispCnt |= 0x2000;
        gWinRegs->unk0 = 0xF0;
        gWinRegs[2] = 0xA0;
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3EFF;
        options->unkE = 0;
        options->unk10 = 0;
    }
    sub_808CED0(options);
    sub_808CB74(options);
    sub_808CF4C(options);
    sub_808CC48(options);
    sub_808CF00(options);
    sub_808CCA0(options);
    sub_808CD14(options);
    sub_808CD88(options);
    if ((u32) gBldRegs.bldY <= 0xFU) {
        gBldRegs.bldY = (u16) ((u16) options->unkE >> 8);
        options->unkE += 0x100;
        return;
    }
    gBldRegs.bldY = 0x10;
    options->unk4 = 0;
    sub_8001DDC(LOADED_SAVE->playerId);
    sub_8001E0C();
    options->unk14[options->unk8] = (u32) options->unkA;
    options->unkC = 0;
    gCurTask->main = Task_808BBBC;
}

void Task_808CA9C(void) {
    Sprite *temp_r2;
    u16 temp_r0;
    u16 var_r0;
    u8 var_r4;
    void *temp_r1;

    temp_r1 = M2C_ERROR(/* Read from unset register $r0 */);
    var_r4 = 0;
    do {
        temp_r2 = temp_r1 + ((var_r4 * 0x28) + 0x374);
        temp_r0 = LOADED_SAVE->playerName[var_r4];
        if (temp_r0 != 0xFFFF) {
            if ((u32) temp_r0 > 0xFFU) {
                temp_r2->variant = temp_r0 + 1;
                var_r0 = gUnknown_080D7460;
            } else {
                temp_r2->variant = (u8) temp_r0;
                var_r0 = gUnknown_080D7458;
            }
            temp_r2->anim = var_r0;
            temp_r1->unk4 = (u8) (temp_r1->unk4 + 1);
        } else {
            temp_r2->anim = gUnknown_080D7458;
            temp_r2->variant = 0;
        }
        UpdateSpriteAnimation(temp_r2);
        var_r4 += 1;
    } while ((u32) var_r4 <= 5U);
    temp_r1->unk5 = 0;
    temp_r1->unk3 = 0;
    temp_r1->unk2C = 1;
    temp_r1->unk18 = (s32) LOADED_SAVE->difficulty;
    temp_r1->unk1C = (s32) LOADED_SAVE->disableTimeLimit;
    temp_r1->unk20 = (s32) LOADED_SAVE->language;
    temp_r1->unkA = 1;
    CreateOptions(0U, SECOND_REG(sub_8001E58()));
    gWinRegs[4] = 0;
    TaskDestroy(gCurTask);
}

void sub_808CB74(OptionsMenu *options) {
    Sprite *temp_r4;
    u32 var_r0_2;
    u32 var_r5;
    u8 var_r0;

    var_r5 = 0;
    do {
        if ((var_r5 != 5) || (1 & LOADED_SAVE->unlockFlags)) {
            temp_r4 = &options->spr16C[var_r5];
            temp_r4->anim = *(((var_r5 + (options->lang0 * 8)) * 8) + &gUnknown_080D6960);
            temp_r4->variant = (((var_r5 + (options->lang0 * 8)) * 8) + &gUnknown_080D6960)->unk2;
            temp_r4->x = (s16) ((s32) options->unk38[var_r5].x >> 8);
            if ((var_r5 > 5U) && !(1 & LOADED_SAVE->unlockFlags)) {
                var_r0 = var_r5 - 1;
            } else {
                var_r0 = (u8) var_r5;
            }
            temp_r4->y = (s16) ((s32) *(&options->unk38[0].y + (var_r0 * 8)) >> 8);
            if (var_r5 != options->unk8) {
                temp_r4->palId = 1;
                var_r0_2 = temp_r4->frameFlags | 0x80;
            } else {
                temp_r4->palId = 0;
                var_r0_2 = temp_r4->frameFlags & ~0x80;
            }
            temp_r4->frameFlags = var_r0_2;
            UpdateSpriteAnimation(temp_r4);
            DisplaySprite(temp_r4);
        }
        var_r5 = (u32) (u8) (var_r5 + 1);
    } while (var_r5 <= 7U);
}

void sub_808CC48(OptionsMenu *options) {
    u32 var_r0;

    options->spr2AC.anim = gUnknown_080D6AE0.unk0;
    options->spr2AC.variant = gUnknown_080D6AE0.unk2;
    options->spr2AC.x = (s16) ((s32) (options->unk38[0].x + 0x6B00) >> 8);
    options->spr2AC.y = (s16) ((s32) options->unk38[0].y >> 8);
    if (options->unk8 == 0) {
        options->spr2AC.palId = 0;
        var_r0 = options->spr2AC.frameFlags & ~0x80;
    } else {
        options->spr2AC.palId = 4;
        var_r0 = options->spr2AC.frameFlags | 0x80;
    }
    options->spr2AC.frameFlags = var_r0;
    DisplaySprite(&options->spr2AC);
}

void sub_808CCA0(OptionsMenu *options) {
    Sprite *temp_r4;
    u32 var_r0;
    u8 temp_r2;

    temp_r2 = options->unk18;
    temp_r4 = &options->spr2D4;
    options->spr2D4.anim = gUnknown_080D6AE8[temp_r2 + (options->lang0 * 2)].anim;
    options->spr2D4.variant = gUnknown_080D6AE8[temp_r2 + (options->lang0 * 2)].variant;
    options->spr2D4.x = (s16) ((s32) (options->unk38[1].x + 0x7300) >> 8);
    options->spr2D4.y = (s16) ((s32) options->unk38[1].y >> 8);
    if (options->unk8 == 1) {
        options->spr2D4.palId = 0;
        var_r0 = options->spr2D4.frameFlags & ~0x80;
    } else {
        options->spr2D4.palId = 4;
        var_r0 = options->spr2D4.frameFlags | 0x80;
    }
    options->spr2D4.frameFlags = var_r0;
    UpdateSpriteAnimation(temp_r4);
    DisplaySprite(temp_r4);
}

void sub_808CD14(OptionsMenu *options) {
    Sprite *temp_r4;
    u32 var_r0;
    u8 temp_r2;

    temp_r2 = options->unk1C;
    temp_r4 = &options->spr2FC;
    options->spr2FC.anim = gUnknown_080D6B48[temp_r2 + (options->lang0 * 2)].anim;
    options->spr2FC.variant = gUnknown_080D6B48[temp_r2 + (options->lang0 * 2)].variant;
    options->spr2FC.x = (s16) ((s32) (options->unk38[2].x + 0x7300) >> 8);
    options->spr2FC.y = (s16) ((s32) options->unk38[2].y >> 8);
    if (options->unk8 == 2) {
        options->spr2FC.palId = 0;
        var_r0 = options->spr2FC.frameFlags & ~0x80;
    } else {
        options->spr2FC.palId = 4;
        var_r0 = options->spr2FC.frameFlags | 0x80;
    }
    options->spr2FC.frameFlags = var_r0;
    UpdateSpriteAnimation(temp_r4);
    DisplaySprite(temp_r4);
}

void sub_808CD88(OptionsMenu *options) {
    Sprite *temp_r4;
    u32 var_r0;

    temp_r4 = &options->spr324;
    options->spr324.anim = gUnknown_080D6BA8[options->lang0].anim;
    options->spr324.variant = gUnknown_080D6BA8[options->lang0].variant;
    options->spr324.x = (s16) ((s32) (options->unk38[3].x + 0x7300) >> 8);
    options->spr324.y = (s16) ((s32) options->unk38[3].y >> 8);
    if (options->unk8 == 3) {
        options->spr324.palId = 0;
        var_r0 = options->spr324.frameFlags & ~0x80;
    } else {
        options->spr324.palId = 4;
        var_r0 = options->spr324.frameFlags | 0x80;
    }
    options->spr324.frameFlags = var_r0;
    UpdateSpriteAnimation(temp_r4);
    DisplaySprite(temp_r4);
}

void sub_808CDF4(OptionsMenu *arg1) {
    CreateOptions(0U, arg1);
}

void Task_808CE00(OptionsMenu *options) {
    sub_808BEEC(options);
    sub_808C250((Task **) options);
    sub_808CED0(options);
    sub_808CB74(options);
    sub_808CF4C(options);
    sub_808CC48(options);
    sub_808CCA0(options);
    sub_808CD14(options);
    sub_808CD88(options);
    if (sub_808BFA0(options) == 1) {
        options->unkA0.x = 0;
    }
    *((options->unk8 * 4) + &gUnknown_080D6E38)(options);
    gBgScrollRegs[1][0] = 0 - ((s32) options->unk30.x >> 8);
}

s32 sub_808CE88(OptionsMenu *options) {
    u32 *temp_r1;

    temp_r1 = &options->unk14[options->unk8];
    if (*temp_r1 != 0x7B) {
        gBgScrollRegs[1][0] = 0 - ((s32) options->unk30.x >> 8);
        return 0;
    }
    *temp_r1 = (u32) options->unkA;
    options->unkC = 0;
    gCurTask->main = Task_808BBBC;
    return 1;
}

void sub_808CED0(OptionsMenu *options) {
    s32 temp_r1;

    options->unk98.x += 0x180;
    temp_r1 = options->unk98.y + 0xFFFFFE80;
    options->unk98.y = temp_r1;
    gBgScrollRegs[0][0] = (s16) ((s32) options->unk98.x >> 8);
    gBgScrollRegs[0][1] = (s16) (temp_r1 >> 8);
}

void sub_808CF00(OptionsMenu *options) {
    Sprite *temp_r0;
    u32 var_r4;

    var_r4 = 0;
loop_2:
    if (var_r4 < (u32) options->unk4) {
        temp_r0 = &options->spr374[var_r4];
        temp_r0->x = ((s32) (options->unk38[0].x + 0x6B00) >> 8) + (var_r4 * 8) + (var_r4 * 2) + 0xA;
        temp_r0->y = ((s32) options->unk38[0].y >> 8) + 8;
        DisplaySprite(temp_r0);
        var_r4 = (u32) (u8) (var_r4 + 1);
        goto loop_2;
    }
}

void sub_808CF4C(OptionsMenu *options) {
    options->spr34C.x = (s16) ((s32) options->unkA0.x >> 8);
    options->spr34C.y = (s16) ((s32) options->unkA0.y >> 8);
    DisplaySprite(&options->spr34C);
}

void Task_808CF74(OptionsMenu *options) {
    sub_808CED0(options);
    sub_808CB74(options);
    sub_808CF4C(options);
    sub_808CC48(options);
    sub_808CF00(options);
    sub_808CCA0(options);
    sub_808CD14(options);
    sub_808CD88(options);
    TaskDestroy(gCurTask);
}

void sub_808CFC4(OptionsMenu *options) {
    Sprite *temp_r1;
    s16 var_r0;
    u8 var_r4;

    var_r4 = 0;
    do {
        temp_r1 = &options->spr16C[var_r4];
        if (var_r4 == options->unk8) {
            var_r0 = 0;
        } else {
            var_r0 = 0x100;
        }
        temp_r1->oamFlags = var_r0;
        UpdateSpriteAnimation(temp_r1);
        var_r4 += 1;
    } while ((u32) var_r4 <= 7U);
}

void TaskDestructor_Options(Task *t) {
    gWinRegs[4] = 0;
}
#endif
