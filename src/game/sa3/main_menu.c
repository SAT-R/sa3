#include "global.h"
#include "core.h"
#include "flags.h"
#include "code_z_1.h" // CopyObjPaletteMasked
#include "game/save.h"

typedef struct {
    /* 0x00 */ u8 language;
    /* 0x04 */ void *initArg1;
    /* 0x08 */ u8 initArg0;
    /* 0x0C */ s32 qUnkC;
    /* 0x10 */ s32 qUnk10;
    /* 0x14 */ s32 unk14;
    /* 0x18 */ s32 unk18;
    /* 0x1C */ Sprite spr1C;
    /* 0x44 */ Sprite spr44;
    /* 0x6C */ Sprite spr6C;
} MMChaoMessage; /* 0x94 */

typedef struct {
    /* 0x000 */ u8 language;
    /* 0x001 */ u8 initArg1;
    /* 0x002 */ u8 unk2;
    /* 0x003 */ u8 unk3;
    /* 0x004 */ u8 unk4;
    /* 0x005 */ u8 unk5;
    /* 0x006 */ u8 unk6;
    /* 0x007 */ u8 unk7;
    /* 0x008 */ u8 unk8;
    /* 0x009 */ u8 unk9;
    /* 0x00A */ u8 unkA;
    /* 0x00B */ u8 unkB;
    /* 0x00B */ u8 unkC;
    /* 0x00B */ u8 unkD;
    /* 0x00B */ u8 unkE;
    /* 0x00B */ u8 unkF;
    /* 0x00B */ u16 highlitButton;
    /* 0x00C */ u8 filler12[0x5C];
    /* 0x070 */ u16 unk6E;
    /* 0x070 */ u16 unk70;
    /* 0x072 */ u16 unk72;
    /* 0x074 */ u16 unk74;
    /* 0x076 */ u8 filler76[0x6];
    /* 0x07C */ Sprite spr7C[2];
    /* 0x0CC */ Sprite sprCC[2];
    /* 0x11C */ Sprite spr11C[2];
    /* 0x16C */ Sprite spr16C[2];
    /* 0x1BC */ Sprite spr1BC[2];
    /* 0x20C */ Sprite spr20C[2];
    /* 0x25C */ Sprite spr25C[2];
    /* 0x2AC */ Sprite spr2AC;
    /* 0x2D4 */ Sprite spr2D4;
    /* 0x2FC */ Sprite spr2FC;
    /* 0x324 */ SpriteTransform tf324;
    /* 0x330 */ Background bg330;
    /* 0x370 */ Background bg370;
    /* 0x3A0 */ Background bg3A0;
} MainMenu; /* 0x3F0 */

void sub_808738C(MainMenu *menu);
void sub_8087498(MainMenu *menu);
void sub_8087590(MainMenu *menu);
void sub_80877F4(MainMenu *menu);
void sub_8087A48(MainMenu *menu);
void sub_8088FD4(MainMenu *menu);
s32 sub_8089028(MainMenu *menu);
void sub_80890F8(MainMenu *menu);
void sub_8089150(MainMenu *menu);
void sub_80891E4(MainMenu *menu);
s16 sub_808927C(MainMenu *menu);
void sub_8089308(MainMenu *menu);
void sub_8089398(MainMenu *menu);
void sub_8089428(MainMenu *menu);
void sub_80894BC(MainMenu *menu);
void sub_8089550(MainMenu *menu);
void sub_80895E0(MainMenu *menu);
void sub_8089670(MainMenu *menu);
void sub_8089704(MainMenu *menu);
void sub_8089B38(MMChaoMessage *msg, u8 *vram);
void sub_8089C48(MMChaoMessage *msg);
void sub_8089EF8(MainMenu *menu);
void sub_8089F08(MainMenu *menu);
void sub_8089F40(MainMenu *menu);
void Task_3F0_8087B80(void);
void Task_3F0_8087C74(void);
void Task_3F0_8087D54(void);
void Task_3F0_8087F18(void);
void Task_3F0_8088088(void);
void Task_3F0_808819C(void);
void Task_3F0_8088440(void);
void Task_3F0_80885CC(void);
void Task_3F0_8088770(void);
void Task_3F0_80888E8(void);
void Task_3F0_80889CC(void);
void Task_3F0_8088B48(void);
void Task_3F0_8088BD0(void);
void Task_3F0_8088E74(void);
void Task_3F0_80897BC(void);
void Task_3F0_8089970(void);
void Task_3F0_MainMenuInit(void);
void Task_3F0_8089FCC(void);
void Task_3F0_808A060(void);
void Task_3F0_808A0D8(void);
void Task_3F0_808A144(void);
void Task_94_808A22C(void);
void TaskDestructor_MainMenu(Task *t);

void sub_808A1B0(u8 arg0, s32 arg1, u8 *vram, u16 arg3, s32 arg4);

extern ColorRaw gUnknown_080D66D8[0x40];

#if 0 // TEMP - for M2C

void Task_3F0_8087B80(MainMenu *menu);
void Task_3F0_8087C74(MainMenu *menu);
void Task_3F0_8087D54(MainMenu *menu);
void Task_3F0_8087F18(MainMenu *menu);
void Task_3F0_8088088(MainMenu *menu);
void Task_3F0_808819C(MainMenu *menu);
void Task_3F0_8088440(MainMenu *menu);
void Task_3F0_80885CC(MainMenu *menu);
void Task_3F0_8088770(MainMenu *menu);
void Task_3F0_80888E8(MainMenu *menu);
void Task_3F0_80889CC(MainMenu *menu);
void Task_3F0_8088B48(MainMenu *menu);
void Task_3F0_8088BD0(MainMenu *menu);
void Task_3F0_8088E74(MainMenu *menu);
void Task_3F0_80897BC(MainMenu *menu);
void Task_3F0_8089970(MainMenu *menu);
// Calls the correct music playback depending on whether you are in the regular main menu or just lost the Time Attack
// Called once whenever a "Main Menu sub-menu" is created.
void Task_3F0_MainMenuInit(MainMenu *menu);
void Task_3F0_8089FCC(MainMenu *menu);
void Task_3F0_808A060(MainMenu *menu);
void Task_3F0_808A0D8(MainMenu *menu);
void Task_3F0_808A144(MainMenu *menu);
void sub_808A1B0(u8 arg0, s32 arg1, u8 *vram, u16 arg3, s32 arg4, MMChaoMessage *msg);
void Task_94_808A22C(MMChaoMessage *msg);

#endif

void CreateMainMenu(s16 highlitButton, u8 arg1)
{
    MainMenu *menu;

    gDispCnt = 0x1741;
    menu = TASK_DATA(TaskCreate(Task_3F0_MainMenuInit, sizeof(MainMenu), 0x100U, 0U, TaskDestructor_MainMenu));
    gPseudoRandom = gFrameCount;
    menu->highlitButton = highlitButton;
    menu->initArg1 = arg1;
    sub_808738C(menu);

    DmaFill32(3, 0, BG_CHAR_ADDR_FROM_BGCNT(2), 0x40);

    gBgSprites_Unknown1[2] = 0;
    gBgSprites_Unknown2[2][0] = 0;
    gBgSprites_Unknown2[2][1] = 0;
    gBgSprites_Unknown2[2][2] = -1;
    gBgSprites_Unknown2[2][3] = 0x40;
    gBgSprites_Unknown1[1] = 0;
    gBgSprites_Unknown2[1][0] = 0;
    gBgSprites_Unknown2[1][1] = 0;
    gBgSprites_Unknown2[1][2] = -1;
    gBgSprites_Unknown2[1][3] = 0x40;
    gBgSprites_Unknown1[0] = 0;
    gBgSprites_Unknown2[0][0] = 0;
    gBgSprites_Unknown2[0][1] = 0;
    gBgSprites_Unknown2[0][2] = -1;
    gBgSprites_Unknown2[0][3] = 0x40;

    gDispCnt |= DISPCNT_WIN0_ON;
    gWinRegs[0] = WIN_RANGE(0, DISPLAY_WIDTH);
    gWinRegs[2] = WIN_RANGE(0, DISPLAY_HEIGHT);
    gBldRegs.bldCnt = 0x3FFF;
    gBldRegs.bldY = 0x10;

    if (FLAGS_20000 & gFlags) {
        CopyObjPaletteMasked(gUnknown_080D66D8, 0U, ARRAY_COUNT(gUnknown_080D66D8));
        return;
    }

	DmaCopy16(3, gUnknown_080D66D8, gObjPalette, sizeof(gUnknown_080D66D8));
    gFlags |= FLAGS_UPDATE_SPRITE_PALETTES;
}

#if 0
void sub_808738C(MainMenu *menu) {
    u16 *var_r1_2;
    u16 var_r0;
    u8 temp_r0;
    u8 var_r1;

    var_r1 = 0;
    do {
        (&menu->unk7)[var_r1] = 0xC;
        var_r1 += 1;
    } while ((u32) var_r1 <= 3U);
    temp_r0 = menu->unk1;
    if ((temp_r0 == 0) || (temp_r0 == 4) || (temp_r0 == 5)) {
        var_r1_2 = &menu->unk6E;
        var_r0 = 0;
    } else {
        var_r1_2 = &menu->unk6E;
        var_r0 = 1;
    }
    *var_r1_2 = var_r0;
    menu->unk70 = 0;
    menu->unkC = 0;
    menu->unkD = 0;
    menu->unk12 = 0xFF10;
    menu->unkB = 2;
    menu->unk6C = 0;
    menu->unk4 = 0;
    menu->unk2 = 0;
    menu->unk5 = 0;
    menu->unkE = 1;
    menu->unk72 = 0;
    menu->unk74 = 0x400;
    menu->unkF = 1;
    menu->unk18 = 0x12C00;
    menu->unk1C = 0x2000;
    menu->unk20 = 0x15C00;
    menu->unk24 = 0x4000;
    menu->unk28 = 0x18C00;
    menu->unk2C = 0x6000;
    menu->unk30 = 0x1BC00;
    menu->unk34 = 0x8000;
    menu->unk58 = 0xFFFFD800;
    menu->unk5C = 0x5600;
    menu->unk60 = 0xFFFFD800;
    menu->unk64 = 0x5600;
    menu->unk38 = 0x18C00;
    menu->unk3C = 0x3A00;
    menu->unk40 = 0x18C00;
    menu->unk44 = 0x6600;
    menu->unk48 = 0x3C00;
    menu->unk4C = 0x2000;
    menu->unk6 = 0;
    menu->unk50 = 0;
    menu->unk54 = 0;
    menu->unk68 = 0x100;
    menu->unk6A = 0x100;
    menu->language = LOADED_SAVE->language;
    menu->unk14 = 0xFFFF;
    menu->unk78 = 0x06010000;
}

void sub_8087498(MainMenu *menu) {
    menu->spr2D4.tiles = menu->unk78;
    menu->unk78 = (u8 *) (menu->unk78 + (sAnimsMenuChao.unk4 << 5));
    menu->spr2D4.anim = sAnimsMenuChao.unk0;
    menu->spr2D4.variant = sAnimsMenuChao.unk2;
    menu->spr2D4.prevVariant = 0xFF;
    menu->spr2D4.x = (s16) ((s32) menu->unk58 >> 8);
    menu->spr2D4.y = (s16) ((s32) menu->unk5C >> 8);
    menu->spr2D4.oamFlags = 0x140;
    menu->spr2D4.animCursor = 0;
    menu->spr2D4.qAnimDelay = 0;
    menu->spr2D4.animSpeed = 0x10;
    menu->spr2D4.palId = 0;
    menu->spr2D4.frameFlags = 0;
    UpdateSpriteAnimation(&menu->spr2D4);
    menu->spr2FC.tiles = menu->unk78;
    menu->unk78 = (u8 *) (menu->unk78 + (sAnimsMenuChao.unkC << 5));
    menu->spr2FC.anim = sAnimsMenuChao.unk8;
    menu->spr2FC.variant = sAnimsMenuChao.unkA;
    menu->spr2FC.prevVariant = -1U;
    menu->spr2FC.x = (s16) ((s32) menu->unk60 >> 8);
    menu->spr2FC.y = (s16) ((s32) menu->unk64 >> 8);
    menu->spr2FC.oamFlags = 0x140;
    menu->spr2FC.animCursor = 0;
    menu->spr2FC.qAnimDelay = 0;
    menu->spr2FC.animSpeed = 0x10;
    menu->spr2FC.palId = 0;
    menu->spr2FC.frameFlags = 0;
    UpdateSpriteAnimation(&menu->spr2FC);
    menu->spr2AC.tiles = menu->unk78;
    menu->unk78 = (u8 *) (menu->unk78 + (gUnknown_080D6694.unk4 << 5));
    menu->spr2AC.anim = gUnknown_080D6694.unk0;
    menu->spr2AC.variant = gUnknown_080D6694.unk2;
    menu->spr2AC.prevVariant = -1U;
    menu->spr2AC.x = (s16) ((s32) menu->unk58 >> 8);
    menu->spr2AC.y = (s16) ((s32) menu->unk5C >> 8);
    menu->spr2AC.oamFlags = 0x100;
    menu->spr2AC.animCursor = 0;
    menu->spr2AC.qAnimDelay = 0;
    menu->spr2AC.animSpeed = 0x10;
    menu->spr2AC.palId = 0;
    menu->spr2AC.frameFlags = 0;
    UpdateSpriteAnimation(&menu->spr2AC);
}

void sub_8087590(MainMenu *menu) {
    Sprite *temp_r1;
    Sprite *temp_r1_2;
    Sprite *temp_r1_3;
    Sprite *temp_r1_4;
    Sprite *temp_r1_5;
    u8 var_r5;
    u8 var_r5_2;
    u8 var_r5_3;
    u8 var_r5_4;
    u8 var_r5_5;

    var_r5 = 0;
    do {
        temp_r1 = &menu->spr7C[var_r5];
        temp_r1->tiles = menu->unk78;
        menu->unk78 = (u8 *) (menu->unk78 + 0x800);
        temp_r1->anim = *(((var_r5 + (menu->language * 2)) * 8) + &gUnknown_080D6114);
        temp_r1->variant = (((var_r5 + (menu->language * 2)) * 8) + &gUnknown_080D6114)->unk2;
        temp_r1->prevVariant = 0xFF;
        temp_r1->x = (s16) ((s32) menu->unk18 >> 8);
        temp_r1->y = (s16) ((s32) menu->unk1C >> 8);
        temp_r1->oamFlags = 0;
        temp_r1->animCursor = 0;
        temp_r1->qAnimDelay = 0;
        temp_r1->animSpeed = 0x10;
        temp_r1->palId = 0;
        temp_r1->frameFlags = 0x20;
        UpdateSpriteAnimation(temp_r1);
        var_r5 += 1;
    } while ((u32) var_r5 <= 1U);
    var_r5_2 = 0;
    do {
        temp_r1_2 = &menu->sprCC[var_r5_2];
        temp_r1_2->tiles = menu->unk78;
        menu->unk78 = (u8 *) (menu->unk78 + 0x800);
        temp_r1_2->anim = *(((var_r5_2 + (menu->language * 2)) * 8) + &gUnknown_080D6174);
        temp_r1_2->variant = (((var_r5_2 + (menu->language * 2)) * 8) + &gUnknown_080D6174)->unk2;
        temp_r1_2->prevVariant = 0xFF;
        temp_r1_2->x = (s16) ((s32) menu->unk20 >> 8);
        temp_r1_2->y = (s16) ((s32) menu->unk24 >> 8);
        temp_r1_2->oamFlags = 0x40;
        temp_r1_2->animCursor = 0;
        temp_r1_2->qAnimDelay = 0;
        temp_r1_2->animSpeed = 0x10;
        temp_r1_2->palId = 0;
        temp_r1_2->frameFlags = 0;
        UpdateSpriteAnimation(temp_r1_2);
        var_r5_2 += 1;
    } while ((u32) var_r5_2 <= 1U);
    var_r5_3 = 0;
    do {
        temp_r1_3 = &menu->spr11C[var_r5_3];
        temp_r1_3->tiles = menu->unk78;
        menu->unk78 = (u8 *) (menu->unk78 + 0x800);
        temp_r1_3->anim = *(((var_r5_3 + (menu->language * 2)) * 8) + &gUnknown_080D61D4);
        temp_r1_3->variant = (((var_r5_3 + (menu->language * 2)) * 8) + &gUnknown_080D61D4)->unk2;
        temp_r1_3->prevVariant = 0xFF;
        temp_r1_3->x = (s16) ((s32) menu->unk28 >> 8);
        temp_r1_3->y = (s16) ((s32) menu->unk2C >> 8);
        temp_r1_3->oamFlags = 0x80;
        temp_r1_3->animCursor = 0;
        temp_r1_3->qAnimDelay = 0;
        temp_r1_3->animSpeed = 0x10;
        temp_r1_3->palId = 0;
        temp_r1_3->frameFlags = 0;
        UpdateSpriteAnimation(temp_r1_3);
        var_r5_3 += 1;
    } while ((u32) var_r5_3 <= 1U);
    var_r5_4 = 0;
    do {
        temp_r1_4 = &menu->spr16C[var_r5_4];
        temp_r1_4->tiles = menu->unk78;
        menu->unk78 = (u8 *) (menu->unk78 + 0x800);
        temp_r1_4->anim = *(((var_r5_4 + (menu->language * 2)) * 8) + &gUnknown_080D6234);
        temp_r1_4->variant = (((var_r5_4 + (menu->language * 2)) * 8) + &gUnknown_080D6234)->unk2;
        temp_r1_4->prevVariant = 0xFF;
        temp_r1_4->x = (s16) ((s32) menu->unk30 >> 8);
        temp_r1_4->y = (s16) ((s32) menu->unk34 >> 8);
        temp_r1_4->oamFlags = 0xC0;
        temp_r1_4->animCursor = 0;
        temp_r1_4->qAnimDelay = 0;
        temp_r1_4->animSpeed = 0x10;
        temp_r1_4->palId = 0;
        temp_r1_4->frameFlags = 0;
        UpdateSpriteAnimation(temp_r1_4);
        var_r5_4 += 1;
    } while ((u32) var_r5_4 <= 1U);
    var_r5_5 = 0;
    do {
        temp_r1_5 = &menu->spr25C[var_r5_5];
        temp_r1_5->tiles = menu->unk78;
        menu->unk78 = (u8 *) (menu->unk78 + 0x800);
        temp_r1_5->anim = *(((var_r5_5 + (menu->language * 2)) * 8) + &gUnknown_080D6354);
        temp_r1_5->variant = (((var_r5_5 + (menu->language * 2)) * 8) + &gUnknown_080D6354)->unk2;
        temp_r1_5->prevVariant = 0xFF;
        temp_r1_5->x = (s16) ((s32) menu->unk48 >> 8);
        temp_r1_5->y = (s16) ((s32) menu->unk4C >> 8);
        temp_r1_5->oamFlags = 0xC0;
        temp_r1_5->animCursor = 0;
        temp_r1_5->qAnimDelay = 0;
        temp_r1_5->animSpeed = 0x10;
        temp_r1_5->palId = 0;
        temp_r1_5->frameFlags = 0;
        UpdateSpriteAnimation(temp_r1_5);
        var_r5_5 += 1;
    } while ((u32) var_r5_5 <= 1U);
}

void sub_80877F4(MainMenu *menu) {
    ? *sp0;
    ? *var_r2;
    Sprite *temp_r1;
    Sprite *temp_r1_2;
    Sprite *temp_r1_3;
    Sprite *temp_r1_4;
    u8 *var_r0;
    u8 *var_r0_2;
    u8 *var_r0_4;
    u8 temp_r0;
    u8 var_r5;
    u8 var_r5_2;
    u8 var_r5_3;
    u8 var_r5_4;
    void *var_r0_3;

    var_r5 = 0;
    do {
        temp_r1 = &menu->spr7C[var_r5];
        temp_r1->tiles = menu->unk78;
        if (var_r5 == 0) {
            var_r0 = menu->unk78 + 0x800;
        } else {
            var_r0 = menu->unk78 + 0x800;
        }
        menu->unk78 = var_r0;
        temp_r1->anim = *(((var_r5 + (menu->language * 2)) * 8) + &gUnknown_080D63B4);
        temp_r1->variant = (((var_r5 + (menu->language * 2)) * 8) + &gUnknown_080D63B4)->unk2;
        temp_r1->prevVariant = 0xFF;
        temp_r1->x = (s16) ((s32) menu->unk18 >> 8);
        temp_r1->y = (s16) ((s32) menu->unk1C >> 8);
        temp_r1->oamFlags = 0;
        temp_r1->animCursor = 0;
        temp_r1->qAnimDelay = 0;
        temp_r1->animSpeed = 0x10;
        temp_r1->palId = 0;
        temp_r1->frameFlags = 0x20;
        UpdateSpriteAnimation(temp_r1);
        var_r5 += 1;
    } while ((u32) var_r5 <= 1U);
    var_r5_2 = 0;
    do {
        temp_r1_2 = &menu->sprCC[var_r5_2];
        temp_r1_2->tiles = menu->unk78;
        if (var_r5_2 == 0) {
            var_r0_2 = menu->unk78 + 0x800;
        } else {
            var_r0_2 = menu->unk78 + 0x800;
        }
        menu->unk78 = var_r0_2;
        temp_r1_2->anim = *(((var_r5_2 + (menu->language * 2)) * 8) + &gUnknown_080D6414);
        temp_r1_2->variant = (((var_r5_2 + (menu->language * 2)) * 8) + &gUnknown_080D6414)->unk2;
        temp_r1_2->prevVariant = 0xFF;
        temp_r1_2->x = (s16) ((s32) menu->unk20 >> 8);
        temp_r1_2->y = (s16) ((s32) menu->unk24 >> 8);
        temp_r1_2->oamFlags = 0x40;
        temp_r1_2->animCursor = 0;
        temp_r1_2->qAnimDelay = 0;
        temp_r1_2->animSpeed = 0x10;
        temp_r1_2->palId = 0;
        temp_r1_2->frameFlags = 0;
        UpdateSpriteAnimation(temp_r1_2);
        var_r5_2 += 1;
    } while ((u32) var_r5_2 <= 1U);
    var_r5_3 = 0;
    var_r2 = &gUnknown_080D6474;
    do {
        temp_r1_3 = &menu->spr11C[var_r5_3];
        temp_r1_3->tiles = menu->unk78;
        temp_r0 = menu->unk1;
        if (temp_r0 == 2) {
            menu->unk78 = (u8 *) (menu->unk78 + 0x800);
            temp_r1_3->anim = *(((var_r5_3 + (menu->language * 2)) * 8) + var_r2);
            var_r0_3 = ((var_r5_3 + (menu->language * 2)) * 8) + var_r2;
            goto block_15;
        }
        if (temp_r0 == 3) {
            menu->unk78 = (u8 *) (menu->unk78 + 0x800);
            temp_r1_3->anim = *(((var_r5_3 + (menu->language * 2)) * 8) + &gUnknown_080D64D4);
            var_r0_3 = ((var_r5_3 + (menu->language * 2)) * 8) + &gUnknown_080D64D4;
block_15:
            temp_r1_3->variant = var_r0_3->unk2;
        }
        temp_r1_3->prevVariant = 0xFF;
        temp_r1_3->x = (s16) ((s32) menu->unk28 >> 8);
        temp_r1_3->y = (s16) ((s32) menu->unk2C >> 8);
        temp_r1_3->oamFlags = 0x80;
        temp_r1_3->animCursor = 0;
        temp_r1_3->qAnimDelay = 0;
        temp_r1_3->animSpeed = 0x10;
        temp_r1_3->palId = 0;
        temp_r1_3->frameFlags = 0;
        sp0 = var_r2;
        UpdateSpriteAnimation(temp_r1_3);
        var_r5_3 += 1;
    } while ((u32) var_r5_3 <= 1U);
    var_r5_4 = 0;
    do {
        temp_r1_4 = &menu->spr16C[var_r5_4];
        temp_r1_4->tiles = menu->unk78;
        if (var_r5_4 == 0) {
            var_r0_4 = menu->unk78 + 0x800;
        } else {
            var_r0_4 = menu->unk78 + 0x800;
        }
        menu->unk78 = var_r0_4;
        temp_r1_4->anim = *(((var_r5_4 + (menu->language * 2)) * 8) + &gUnknown_080D6534);
        temp_r1_4->variant = (((var_r5_4 + (menu->language * 2)) * 8) + &gUnknown_080D6534)->unk2;
        temp_r1_4->prevVariant = 0xFF;
        temp_r1_4->x = (s16) ((s32) menu->unk30 >> 8);
        temp_r1_4->y = (s16) ((s32) menu->unk34 >> 8);
        temp_r1_4->oamFlags = 0xC0;
        temp_r1_4->animCursor = 0;
        temp_r1_4->qAnimDelay = 0;
        temp_r1_4->animSpeed = 0x10;
        temp_r1_4->palId = 0;
        temp_r1_4->frameFlags = 0;
        UpdateSpriteAnimation(temp_r1_4);
        var_r5_4 += 1;
    } while ((u32) var_r5_4 <= 1U);
}

void sub_8087A48(MainMenu *menu) {
    Background *temp_r2;
    u16 var_r0;

    gBgCntRegs->unk0 = 0x4E07;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    menu->bg330.graphics.dest = (void *)0x06004000;
    menu->bg330.graphics.anim = 0;
    menu->bg330.layoutVram = (u16 *)0x06007000;
    menu->bg330.unk18 = 0;
    menu->bg330.unk1A = 0;
    menu->bg330.tilemapId = 0x157;
    menu->bg330.unk1E = 0;
    menu->bg330.unk20 = 0;
    menu->bg330.unk22 = 0;
    menu->bg330.unk24 = 0;
    menu->bg330.targetTilesX = 0x40;
    menu->bg330.targetTilesY = 0x14;
    menu->bg330.paletteOffset = 0;
    menu->bg330.flags = 0;
    DrawBackground(&menu->bg330);
    gBgCntRegs[1] = 0x601;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    menu->bg3A0.graphics.dest = (void *)0x06000000;
    menu->bg3A0.graphics.anim = 0;
    menu->bg3A0.layoutVram = (u16 *)0x06003000;
    menu->bg3A0.unk18 = 0;
    menu->bg3A0.unk1A = 0;
    menu->bg3A0.tilemapId = 0x158;
    menu->bg3A0.unk1E = 0;
    menu->bg3A0.unk20 = 0;
    menu->bg3A0.unk22 = 0;
    menu->bg3A0.unk24 = 0;
    menu->bg3A0.targetTilesX = 0x20;
    menu->bg3A0.targetTilesY = 0x20;
    menu->bg3A0.paletteOffset = 0;
    menu->bg3A0.flags = 1;
    DrawBackground(&menu->bg3A0);
    gBgCntRegs[2] = 0x188A;
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;
    temp_r2 = &menu->bg370;
    menu->bg370.graphics.dest = (void *)0x06008000;
    menu->bg370.graphics.anim = 0;
    menu->bg370.layoutVram = (u16 *)0x0600C000;
    menu->bg370.unk18 = 0;
    menu->bg370.unk1A = 0;
    if ((u32) (u8) (menu->unk1 - 2) <= 1U) {
        var_r0 = gUnknown_080D66C4.unk4;
    } else {
        var_r0 = (&gUnknown_080D66C4)[menu->unk10];
    }
    menu->bg370.tilemapId = var_r0;
    menu->bg370.unk1E = 0;
    menu->bg370.unk20 = 0;
    menu->bg370.unk22 = 0;
    menu->bg370.unk24 = 0;
    menu->bg370.targetTilesX = 0x10;
    menu->bg370.targetTilesY = 0x10;
    temp_r2->paletteOffset = 0;
    menu->bg370.flags = 6;
    DrawBackground(temp_r2);
}

void Task_3F0_8087B80(MainMenu *menu) {
    if (menu->unk6E != 0) {
        gDispCnt |= 0x2000;
        gWinRegs->unk0 = 0xF0;
        gWinRegs[2] = 0xA0;
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FFF;
        gBldRegs.bldY = 0x10;
        menu->unk70 = 0x1000;
        menu->unk6E = 0;
    }
    sub_8089028(menu);
    sub_8089150(menu);
    sub_80891E4(menu);
    sub_8088FD4(menu);
    sub_8089EF8(menu);
    sub_8089398(menu);
    sub_80894BC(menu);
    sub_8089308(menu);
    sub_8089428(menu);
    sub_8089F08(menu);
    sub_8089F40(menu);
    sub_8089704(menu);
    sub_808927C(menu);
    if (gBldRegs.bldY != 0) {
        gBldRegs.bldY = (u16) ((u16) menu->unk70 >> 8);
        menu->unk70 += 0xFFFFFF00;
        return;
    }
    gBldRegs.bldY = gBldRegs.bldY;
    gCurTask->main = Task_3F0_8089FCC;
}

void Task_3F0_8087C74(MainMenu *menu) {
    if (menu->unk6E != 0) {
        gDispCnt |= 0x2000;
        gWinRegs->unk0 = 0xF0;
        gWinRegs[2] = 0xA0;
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FFF;
        menu->unk70 = 0;
        menu->unk6E = 0;
    }
    if (menu->unk10 == 4) {
        sub_8089028(menu);
    }
    sub_80890F8(menu);
    sub_8089150(menu);
    sub_80891E4(menu);
    sub_8088FD4(menu);
    sub_8089EF8(menu);
    sub_8089F08(menu);
    sub_8089F40(menu);
    sub_8089704(menu);
    if ((u32) gBldRegs.bldY <= 0xFU) {
        gBldRegs.bldY = (u16) ((u16) menu->unk70 >> 8);
        menu->unk70 += 0x100;
        return;
    }
    gBldRegs.bldY = 0x10;
    menu->unkD = 0xB;
    gCurTask->main = Task_3F0_8087D54;
}

void Task_3F0_8087D54(MainMenu *menu) {
    s16 temp_r0;
    u8 temp_r1;
    u8 var_r0;
    u8 var_r1;

    temp_r0 = menu->unk10;
    switch ((u32) temp_r0) {                        /* irregular */
    case 0:
        temp_r1 = menu->unkC;
        if (temp_r1 == 0) {
            gStageData.gameMode = temp_r1;
            gStageData.playerIndex = temp_r1;
block_15:
            CreateCharacterSelect(0U);
        } else {
            gStageData.gameMode = 5;
            sub_80A1A4C(0);
        }
        break;
    case 1:
        if (menu->unkC == 0) {
            if (LOADED_SAVE->playerName[0] == 0xFFFF) {
                CreateNameEntryScreen(2);
            } else {
                gStageData.gameMode = 6;
                sub_808D0F0(0);
            }
        } else {
            gStageData.gameMode = 7;
            sub_80003B8();
            sub_8000340(0);
        }
        break;
    case 2:
        var_r1 = menu->unkC;
        if (var_r1 == 0) {
            var_r0 = 3;
        } else {
            var_r1 = 0;
            var_r0 = 4;
        }
        gStageData.gameMode = var_r0;
        gStageData.playerIndex = var_r1;
        gStageData.buttonConfig.jump = LOADED_SAVE->buttonConfig.jump;
        gStageData.buttonConfig.attack = LOADED_SAVE->buttonConfig.attack;
        gStageData.buttonConfig.trick = LOADED_SAVE->buttonConfig.trick;
        goto block_15;
    case 3:
        LaunchOptionsMenu(0);
        break;
    case 4:
        CreateTitleScreen(1U);
        break;
    case 10:
        TasksDestroyInPriorityRange(0U, 0xFFFFU);
        gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;
        gBgSpritesCount = 0;
        gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;
        gStageData.buttonConfig.jump = LOADED_SAVE->buttonConfig.jump;
        gStageData.buttonConfig.attack = LOADED_SAVE->buttonConfig.attack;
        gStageData.buttonConfig.trick = LOADED_SAVE->buttonConfig.trick;
        gStageData.gameMode = 0;
        gStageData.unkD = 1;
        sub_80B1AF4(0, 0, 0U);
        break;
    case 11:
        sub_80AB120(3U);
        break;
    }
    if (menu->unk10 != 0xA) {
        TaskDestroy(gCurTask);
    }
}

void Task_3F0_8087F18(MainMenu *menu) {
    s16 temp_r0;

    if (menu->unk6E != 0) {
        gDispCnt |= 0x2000;
        gWinRegs->unk0 = 0xF0;
        gWinRegs[2] = 0xA0;
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FFF;
        menu->unk70 = 0;
        menu->unk6E = 0;
    }
    sub_8089028(menu);
    sub_80890F8(menu);
    sub_8089150(menu);
    sub_80891E4(menu);
    sub_8088FD4(menu);
    sub_8089EF8(menu);
    sub_8089F08(menu);
    sub_8089F40(menu);
    sub_8089704(menu);
    if ((u32) gBldRegs.bldY <= 0xFU) {
        gBldRegs.bldY = (u16) ((u16) menu->unk70 >> 8);
        menu->unk70 += 0x100;
        return;
    }
    gBldRegs.bldY = 0x10;
    temp_r0 = menu->unk10;
    switch (temp_r0) {
    case 0:
        sub_80003B8();
        WarpToMap((gStageData.zone * 0xA) + gStageData.act, 0);
        gStageData.difficulty = 0;
        return;
    case 1:
        gStageData.playerIndex = 0;
        CreateCharacterSelect(3U);
    default:
block_14:
        TaskDestroy(gCurTask);
        return;
    case 2:
        if (gStageData.gameMode == 3) {
            sub_80003B8();
            CreateTimeRecordScreen(3);
        } else if (gStageData.gameMode == 4) {
            sub_80003B8();
            CreateTimeRecordScreen(4);
        } else {
        case 3:
            CreateTitleScreen(1U);
        }
        goto block_14;
    case 4:
        CreateTitleScreen(1U);
        goto block_14;
    }
}

void Task_3F0_8088088(MainMenu *menu) {
    s16 temp_r0;
    void (*var_r0)(MainMenu *);

    sub_8089028(menu);
    sub_80890F8(menu);
    sub_8088FD4(menu);
    sub_8089EF8(menu);
    sub_8089150(menu);
    sub_80891E4(menu);
    sub_8089398(menu);
    sub_80894BC(menu);
    sub_8089308(menu);
    sub_8089428(menu);
    sub_8089F40(menu);
    sub_8089F08(menu);
    sub_8089704(menu);
    if (sub_8089DF4(menu) == 4) {
        if ((u32) (u8) (menu->unk1 - 2) <= 1U) {
            var_r0 = Task_3F0_8087F18;
        } else {
            temp_r0 = menu->unk10;
            switch (temp_r0) {                      /* irregular */
            case 0:
                menu->unk4 = (u8) temp_r0;
                menu->unk68 = 0x100;
                menu->unk6A = 0x100;
                var_r0 = Task_3F0_8088E74;
                break;
            case 1:
                menu->unk4 = 0;
                menu->unk68 = 0x100;
                menu->unk6A = 0x100;
                var_r0 = Task_3F0_80897BC;
                break;
            case 2:
                menu->unk4 = 0;
                menu->unk68 = 0x100;
                menu->unk6A = 0x100;
                var_r0 = Task_3F0_8089970;
                break;
            default:
                var_r0 = Task_3F0_8087C74;
                break;
            }
        }
        gCurTask->main = var_r0;
    }
}

void Task_3F0_808819C(MainMenu *menu) {
    s16 temp_r0;
    s16 temp_r1_2;
    s16 var_r0;
    u16 temp_r2;
    void *temp_r1;

    sub_8088FD4(menu);
    sub_8089EF8(menu);
    sub_8089150(menu);
    sub_80891E4(menu);
    sub_8089398(menu);
    sub_80894BC(menu);
    sub_8089308(menu);
    sub_8089428(menu);
    sub_8089F40(menu);
    sub_8089F08(menu);
    sub_8089704(menu);
    if ((menu->unk14 != 4) && (0x20 & gPressedKeys) && (4 & LOADED_SAVE->unlockFlags) && (menu->unk10 == 3)) {
        temp_r1 = (menu->language * 0x10) + &gUnknown_080D6234;
        if ((menu->spr16C[0].anim == temp_r1->unk0) && (menu->spr16C[0].variant == temp_r1->unk2)) {
            m4aSongNumStart(0x6CU);
            menu->unk10 = 0xB;
            menu->unk6E = 1;
            gCurTask->main = Task_3F0_8087C74;
            return;
        }
    }
    if ((u32) (u8) (menu->unk1 - 2) > 1U) {
        temp_r0 = sub_808927C(menu);
        if (temp_r0 == 1) {
            sub_8089670(menu);
            temp_r1_2 = menu->unk14;
            if (temp_r1_2 == 0xA) {
                menu->unk4 = 0;
                menu->unk68 = temp_r0;
                menu->unk10 = temp_r1_2;
                menu->unk14 = (s16) ((u16) menu->unk14 + 1);
            } else {
                if ((0x20 & gPressedKeys) && (menu->unk10 == 0)) {
                    m4aSongNumStart(0x6CU);
                    menu->unk10 = 0xA;
                    menu->unk4 = 0;
                    menu->unk68 = 0x100;
                    menu->unk6A = 0x100;
                }
                if ((0x10 & gPressedKeys) && (menu->unk10 == 0xA)) {
                    m4aSongNumStart(0x6CU);
                    menu->unk10 = 0;
                    menu->unk4 = 0;
                    menu->unk68 = 0x100;
                    menu->unk6A = 0x100;
                }
            }
        }
        if (((u32) (u8) (menu->unk1 - 2) > 1U) && (2 & gPressedKeys)) {
            m4aSongNumStart(0x6BU);
            menu->unk12 = 0;
            menu->unk6E = 1;
            menu->unk10 = 4;
            menu->unk6 = 3;
            menu->unkB = 2;
            goto block_22;
        }
        goto block_20;
    }
block_20:
    if (1 & gPressedKeys) {
        m4aSongNumStart(0x6AU);
        menu->unk6E = 1;
block_22:
        gCurTask->main = Task_3F0_8088088;
        return;
    }
    if (((s32) menu->unk10 <= 9) && (0xC0 & gRepeatedKeys)) {
        m4aSongNumStart(0x6CU);
        temp_r2 = 0x40 & gRepeatedKeys;
        if (temp_r2 != 0) {
            if ((s32) menu->unk10 <= 0) {
                var_r0 = 3;
            } else {
                var_r0 = (u16) menu->unk10 - 1;
            }
            goto block_33;
        }
        if (0x80 & gRepeatedKeys) {
            if ((s32) menu->unk10 > 2) {
                menu->unk10 = (s16) temp_r2;
            } else {
                var_r0 = (u16) menu->unk10 + 1;
block_33:
                menu->unk10 = var_r0;
            }
        }
        menu->unk68 = 0x100;
        menu->unk6A = 0x100;
        menu->tf324.qScaleX = 0x100;
        menu->tf324.qScaleY = 0x100;
        menu->unk2 = 0;
        menu->unk4 = 0x40;
        if ((u32) (u8) (menu->unk1 - 2) > 1U) {
            menu->bg370.tilemapId = (&gUnknown_080D66C4)[menu->unk10];
            menu->bg370.flags = 6;
            DrawBackground(&menu->bg370);
        }
    }
    sub_80890F8(menu);
    if ((s32) menu->unk10 <= 9) {
        menu->unkB = (u8) (u16) menu->unk10;
        return;
    }
    menu->unkB = 0;
}

void Task_3F0_8088440(MainMenu *menu) {
    ? *sp4;
    ? *var_r2;
    ? *var_r2_2;
    Sprite *temp_r1;
    Sprite *temp_r1_2;
    u16 temp_r0;
    u8 *var_r6;
    u8 var_r5;
    u8 var_r5_2;

    var_r5 = 0;
    var_r6 = menu->spr7C[0].tiles;
    menu->unk38 = 0xAA00;
    menu->unk40 = 0xAA00;
    menu->unk58 = 0x5000;
    menu->unk6 = 1;
    menu->unk74 = 0x180;
    menu->unk3 = 1;
    temp_r0 = menu->unk10;
    menu->unkC = (u8) temp_r0;
    menu->unk10 = 1U;
    menu->unkD = (u8) temp_r0;
    menu->unk3C = 0x6400;
    menu->unk44 = 0x8200;
    var_r2 = &gUnknown_080D6594;
    do {
        temp_r1 = &menu->spr1BC[var_r5];
        temp_r1->tiles = var_r6;
        var_r6 += 0x800;
        temp_r1->anim = *(((var_r5 + (menu->language * 2)) * 8) + var_r2);
        temp_r1->variant = (((var_r5 + (menu->language * 2)) * 8) + var_r2)->unk2;
        temp_r1->prevVariant = 0xFF;
        temp_r1->x = (s16) ((s32) menu->unk38 >> 8);
        temp_r1->y = (s16) ((s32) menu->unk3C >> 8);
        temp_r1->oamFlags = 0xC0;
        temp_r1->animCursor = 0;
        temp_r1->qAnimDelay = 0;
        temp_r1->animSpeed = 0x10;
        temp_r1->palId = 0;
        temp_r1->frameFlags = 0;
        sp4 = var_r2;
        UpdateSpriteAnimation(temp_r1);
        var_r5 += 1;
    } while ((u32) var_r5 <= 1U);
    var_r5_2 = 0;
    var_r2_2 = &gUnknown_080D65F4;
    do {
        temp_r1_2 = &menu->spr20C[var_r5_2];
        temp_r1_2->tiles = var_r6;
        var_r6 += 0x800;
        temp_r1_2->anim = *(((var_r5_2 + (menu->language * 2)) * 8) + var_r2_2);
        temp_r1_2->variant = (((var_r5_2 + (menu->language * 2)) * 8) + var_r2_2)->unk2;
        temp_r1_2->prevVariant = 0xFF;
        temp_r1_2->x = (s16) ((s32) menu->unk40 >> 8);
        temp_r1_2->y = (s16) ((s32) menu->unk44 >> 8);
        temp_r1_2->oamFlags = 0xC0;
        temp_r1_2->animCursor = 0;
        temp_r1_2->qAnimDelay = 0;
        temp_r1_2->animSpeed = 0x10;
        temp_r1_2->palId = 0;
        temp_r1_2->frameFlags = 0;
        sp4 = var_r2_2;
        UpdateSpriteAnimation(temp_r1_2);
        var_r5_2 += 1;
    } while ((u32) var_r5_2 <= 1U);
    sub_808A1B0(0U, (s32) &menu->unkD, var_r6, 0x64U, 0x26, M2C_ERROR(/* Unable to find stack arg 0x4 in block */));
    menu->unkB = 2;
    menu->bg370.tilemapId = gUnknown_080D66C4.unk2;
    menu->bg370.flags = 6;
    DrawBackground(&menu->bg370);
    gCurTask->main = Task_3F0_80888E8;
}

void Task_3F0_80885CC(MainMenu *menu) {
    s32 sp4;
    Sprite *temp_r2;
    Sprite *temp_r2_2;
    u32 temp_r0;
    u8 *var_r5;
    u8 temp_r1;
    u8 var_r6;
    u8 var_r6_2;
    void *temp_r0_2;
    void *temp_r0_3;

    var_r6 = 0;
    temp_r1 = menu->language;
    temp_r0 = (u32) ((0 - temp_r1) | temp_r1) >> 0x1F;
    var_r5 = menu->spr7C[0].tiles;
    menu->unk38 = 0xAA00;
    menu->unk40 = 0xAA00;
    menu->unk58 = 0x5000;
    menu->unk6 = 1;
    menu->unk74 = 0x180;
    menu->unk3 = 1;
    menu->unkC = (u8) menu->unk10;
    menu->unk10 = 2U;
    menu->unk3C = 0x6400;
    menu->unk44 = 0x8200;
    sp4 = temp_r0 * 2;
    do {
        temp_r2 = &menu->spr1BC[var_r6];
        temp_r2->tiles = var_r5;
        if (var_r6 == 0) {
            var_r5 += 0x800;
        } else {
            var_r5 += 0x800;
        }
        temp_r0_2 = ((var_r6 + (temp_r0 * 2)) * 8) + &gUnknown_080D6654;
        temp_r2->anim = temp_r0_2->unk0;
        temp_r2->variant = temp_r0_2->unk2;
        temp_r2->prevVariant = 0xFF;
        temp_r2->x = (s16) ((s32) menu->unk38 >> 8);
        temp_r2->y = (s16) ((s32) menu->unk3C >> 8);
        temp_r2->oamFlags = 0xC0;
        temp_r2->animCursor = 0;
        temp_r2->qAnimDelay = 0;
        temp_r2->animSpeed = 0x10;
        temp_r2->palId = 0;
        temp_r2->frameFlags = 0;
        UpdateSpriteAnimation(temp_r2);
        var_r6 += 1;
    } while ((u32) var_r6 <= 1U);
    var_r6_2 = 0;
    do {
        temp_r2_2 = &menu->spr20C[var_r6_2];
        temp_r2_2->tiles = var_r5;
        if (var_r6_2 == 0) {
            var_r5 += 0x800;
        } else {
            var_r5 += 0x800;
        }
        temp_r0_3 = ((var_r6_2 + sp4) * 8) + &gUnknown_080D6674;
        temp_r2_2->anim = temp_r0_3->unk0;
        temp_r2_2->variant = temp_r0_3->unk2;
        temp_r2_2->prevVariant = 0xFF;
        temp_r2_2->x = (s16) ((s32) menu->unk40 >> 8);
        temp_r2_2->y = (s16) ((s32) menu->unk44 >> 8);
        temp_r2_2->oamFlags = 0xC0;
        temp_r2_2->animCursor = 0;
        temp_r2_2->qAnimDelay = 0;
        temp_r2_2->animSpeed = 0x10;
        temp_r2_2->palId = 0;
        temp_r2_2->frameFlags = 0;
        UpdateSpriteAnimation(temp_r2_2);
        var_r6_2 += 1;
    } while ((u32) var_r6_2 <= 1U);
    menu->unkD = 0;
    sub_808A1B0(1U, (s32) &menu->unkD, var_r5, 0x58U, 0x22, M2C_ERROR(/* Unable to find stack arg 0x4 in block */));
    menu->unkB = 2;
    menu->bg370.tilemapId = gUnknown_080D66C4.unk4;
    menu->bg370.flags = 6;
    DrawBackground(&menu->bg370);
    gCurTask->main = Task_3F0_80888E8;
}

void Task_3F0_8088770(MainMenu *menu) {
    ? *sp0;
    ? *var_r2;
    ? *var_r2_2;
    Sprite *temp_r1;
    Sprite *temp_r1_2;
    u16 temp_r0;
    u8 *var_r6;
    u8 var_r5;
    u8 var_r5_2;

    var_r5 = 0;
    var_r6 = menu->spr7C[0].tiles;
    menu->unk38 = 0xAA00;
    menu->unk40 = 0xAA00;
    menu->unk58 = 0x5000;
    menu->unk6 = 1;
    menu->unk74 = 0x180;
    menu->unk3 = 1;
    temp_r0 = menu->unk10;
    menu->unkC = (u8) temp_r0;
    menu->unkB = temp_r0 + 1;
    menu->unk10 = 0U;
    menu->unk3C = (s32) (menu->unk1C + 0x1A00);
    menu->unk44 = (s32) (menu->unk2C + 0x600);
    var_r2 = &gUnknown_080D6294;
    do {
        temp_r1 = &menu->spr1BC[var_r5];
        temp_r1->tiles = var_r6;
        var_r6 += 0x800;
        temp_r1->anim = *(((var_r5 + (menu->language * 2)) * 8) + var_r2);
        temp_r1->variant = (((var_r5 + (menu->language * 2)) * 8) + var_r2)->unk2;
        temp_r1->prevVariant = 0xFF;
        temp_r1->x = (s16) ((s32) menu->unk38 >> 8);
        temp_r1->y = (s16) ((s32) menu->unk3C >> 8);
        temp_r1->oamFlags = 0xC0;
        temp_r1->animCursor = 0;
        temp_r1->qAnimDelay = 0;
        temp_r1->animSpeed = 0x10;
        temp_r1->palId = 0;
        temp_r1->frameFlags = 0;
        sp0 = var_r2;
        UpdateSpriteAnimation(temp_r1);
        var_r5 += 1;
    } while ((u32) var_r5 <= 1U);
    var_r5_2 = 0;
    var_r2_2 = &gUnknown_080D62F4;
    do {
        temp_r1_2 = &menu->spr20C[var_r5_2];
        temp_r1_2->tiles = var_r6;
        var_r6 += 0x800;
        temp_r1_2->anim = *(((var_r5_2 + (menu->language * 2)) * 8) + var_r2_2);
        temp_r1_2->variant = (((var_r5_2 + (menu->language * 2)) * 8) + var_r2_2)->unk2;
        temp_r1_2->prevVariant = 0xFF;
        temp_r1_2->x = (s16) ((s32) menu->unk40 >> 8);
        temp_r1_2->y = (s16) ((s32) menu->unk44 >> 8);
        temp_r1_2->oamFlags = 0xC0;
        temp_r1_2->animCursor = 0;
        temp_r1_2->qAnimDelay = 0;
        temp_r1_2->animSpeed = 0x10;
        temp_r1_2->palId = 0;
        temp_r1_2->frameFlags = 0;
        sp0 = var_r2_2;
        UpdateSpriteAnimation(temp_r1_2);
        var_r5_2 += 1;
    } while ((u32) var_r5_2 <= 1U);
    menu->bg370.tilemapId = gUnknown_080D66C4;
    menu->bg370.flags = 6;
    DrawBackground(&menu->bg370);
    gCurTask->main = Task_3F0_80888E8;
}

void Task_3F0_80888E8(MainMenu *menu) {
    if (menu->unk6E != 0) {
        gDispCnt |= 0x2000;
        gWinRegs->unk0 = 0xF0;
        gWinRegs[2] = 0xA0;
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FFF;
        gBldRegs.bldY = 0x10;
        menu->unk70 = 0x1000;
        menu->unk6E = 0;
    }
    sub_8089150(menu);
    sub_80891E4(menu);
    sub_80890F8(menu);
    sub_8088FD4(menu);
    sub_8089EF8(menu);
    sub_80895E0(menu);
    sub_8089550(menu);
    sub_8089F08(menu);
    sub_8089F40(menu);
    sub_8089704(menu);
    if (gBldRegs.bldY != 0) {
        gBldRegs.bldY = (u16) ((u16) menu->unk70 >> 8);
        menu->unk70 += 0xFFFFFF00;
        return;
    }
    gBldRegs.bldY = gBldRegs.bldY;
    gCurTask->main = Task_3F0_80889CC;
}

void Task_3F0_80889CC(MainMenu *menu) {
    s16 temp_r1;
    s16 temp_r1_3;
    u16 temp_r5;
    u8 temp_r1_2;
    u8 temp_r2;
    void (*var_r0)(MainMenu *);

    sub_8088FD4(menu);
    sub_8089EF8(menu);
    sub_8089150(menu);
    sub_80891E4(menu);
    sub_80895E0(menu);
    sub_8089550(menu);
    sub_8089F40(menu);
    sub_8089F08(menu);
    sub_8089704(menu);
    temp_r5 = 2 & gPressedKeys;
    if (temp_r5 != 0) {
        m4aSongNumStart(0x6BU);
        menu->unk12 = 0;
        menu->unk6E = 1;
        menu->unk6 = 2;
        menu->unkC = 0;
        menu->unkD = 0xB;
        var_r0 = Task_3F0_8088B48;
        goto block_22;
    }
    if (0xC0 & gRepeatedKeys) {
        m4aSongNumStart(0x6CU);
        if (menu->unkC == 1) {
            menu->unkC = (u8) temp_r5;
        } else {
            menu->unkC = 1;
        }
        temp_r1 = menu->unk10;
        switch (temp_r1) {                          /* irregular */
        case 0:
            menu->unkB = menu->unkC + 1;
            break;
        case 1:
            temp_r1_2 = menu->unkC;
            menu->unkB = temp_r1_2 + 2;
            menu->unkD = temp_r1_2;
            break;
        case 2:
            temp_r2 = menu->unkC;
            menu->unkB = temp_r2 + 2;
            if (!(temp_r1 & LOADED_SAVE->unlockFlags)) {
                menu->unkD = temp_r2;
            }
            break;
        }
        menu->unk68 = 0x100;
        menu->unk6A = 0x100;
        menu->tf324.qScaleX = 0x100;
        menu->tf324.qScaleY = 0x100;
        menu->unk2 = 0;
        menu->unk4 = 0x40;
    }
    sub_80890F8(menu);
    if (1 & gPressedKeys) {
        temp_r1_3 = menu->unk10;
        if (temp_r1_3 == 2) {
            if (!(temp_r1_3 & LOADED_SAVE->unlockFlags) && (menu->unkC == 1)) {
                m4aSongNumStart(0x69U);
                return;
            }
            m4aSongNumStart(0x6AU);
            menu->unk6E = 1;
            goto block_21;
        }
        m4aSongNumStart(0x6AU);
        menu->unk6E = 1;
block_21:
        var_r0 = Task_3F0_808A144;
block_22:
        gCurTask->main = var_r0;
    }
}

void Task_3F0_8088B48(MainMenu *menu) {
    sub_80890F8(menu);
    sub_8088FD4(menu);
    sub_8089EF8(menu);
    sub_8089150(menu);
    sub_80891E4(menu);
    sub_80895E0(menu);
    sub_8089550(menu);
    sub_8089F40(menu);
    sub_8089F08(menu);
    sub_8089704(menu);
    if (sub_8089EA0(menu) == 2) {
        menu->unk4 = 0;
        menu->unk68 = 0x100;
        menu->unk6A = 0x100;
        gCurTask->main = Task_3F0_8088BD0;
    }
}

void Task_3F0_8088BD0(MainMenu *menu) {
    ? *sp0;
    ? *var_r2;
    ? *var_r2_2;
    ? *var_r2_3;
    ? *var_r2_4;
    ? *var_r2_5;
    Sprite *temp_r1;
    Sprite *temp_r1_2;
    Sprite *temp_r1_3;
    Sprite *temp_r1_4;
    Sprite *temp_r1_5;
    u8 *var_r6;
    u8 var_r5;
    u8 var_r5_2;
    u8 var_r5_3;
    u8 var_r5_4;
    u8 var_r5_5;

    var_r5 = 0;
    sub_8088FD4(menu);
    sub_8089EF8(menu);
    sub_8089150(menu);
    sub_80891E4(menu);
    sub_8089F40(menu);
    sub_8089F08(menu);
    sub_8089704(menu);
    var_r6 = menu->spr7C[0].tiles;
    var_r2 = &gUnknown_080D6114;
    do {
        temp_r1 = &menu->spr7C[var_r5];
        temp_r1->tiles = var_r6;
        var_r6 += 0x800;
        temp_r1->anim = *(((var_r5 + (menu->language * 2)) * 8) + var_r2);
        temp_r1->variant = (((var_r5 + (menu->language * 2)) * 8) + var_r2)->unk2;
        temp_r1->prevVariant = 0xFF;
        temp_r1->x = (s16) ((s32) menu->unk18 >> 8);
        temp_r1->y = (s16) ((s32) menu->unk1C >> 8);
        temp_r1->oamFlags = 0;
        temp_r1->animCursor = 0;
        temp_r1->qAnimDelay = 0;
        temp_r1->animSpeed = 0x10;
        temp_r1->palId = 0;
        temp_r1->frameFlags = 0x20;
        sp0 = var_r2;
        UpdateSpriteAnimation(temp_r1);
        var_r5 += 1;
    } while ((u32) var_r5 <= 1U);
    var_r5_2 = 0;
    var_r2_2 = &gUnknown_080D6174;
    do {
        temp_r1_2 = &menu->sprCC[var_r5_2];
        temp_r1_2->tiles = var_r6;
        var_r6 += 0x800;
        temp_r1_2->anim = *(((var_r5_2 + (menu->language * 2)) * 8) + var_r2_2);
        temp_r1_2->variant = (((var_r5_2 + (menu->language * 2)) * 8) + var_r2_2)->unk2;
        temp_r1_2->prevVariant = 0xFF;
        temp_r1_2->x = (s16) ((s32) menu->unk20 >> 8);
        temp_r1_2->y = (s16) ((s32) menu->unk24 >> 8);
        temp_r1_2->oamFlags = 0x40;
        temp_r1_2->animCursor = 0;
        temp_r1_2->qAnimDelay = 0;
        temp_r1_2->animSpeed = 0x10;
        temp_r1_2->palId = 0;
        temp_r1_2->frameFlags = 0;
        sp0 = var_r2_2;
        UpdateSpriteAnimation(temp_r1_2);
        var_r5_2 += 1;
    } while ((u32) var_r5_2 <= 1U);
    var_r5_3 = 0;
    var_r2_3 = &gUnknown_080D61D4;
    do {
        temp_r1_3 = &menu->spr11C[var_r5_3];
        temp_r1_3->tiles = var_r6;
        var_r6 += 0x800;
        temp_r1_3->anim = *(((var_r5_3 + (menu->language * 2)) * 8) + var_r2_3);
        temp_r1_3->variant = (((var_r5_3 + (menu->language * 2)) * 8) + var_r2_3)->unk2;
        temp_r1_3->prevVariant = 0xFF;
        temp_r1_3->x = (s16) ((s32) menu->unk28 >> 8);
        temp_r1_3->y = (s16) ((s32) menu->unk2C >> 8);
        temp_r1_3->oamFlags = 0x80;
        temp_r1_3->animCursor = 0;
        temp_r1_3->qAnimDelay = 0;
        temp_r1_3->animSpeed = 0x10;
        temp_r1_3->palId = 0;
        temp_r1_3->frameFlags = 0;
        sp0 = var_r2_3;
        UpdateSpriteAnimation(temp_r1_3);
        var_r5_3 += 1;
    } while ((u32) var_r5_3 <= 1U);
    var_r5_4 = 0;
    var_r2_4 = &gUnknown_080D6234;
    do {
        temp_r1_4 = &menu->spr16C[var_r5_4];
        temp_r1_4->tiles = var_r6;
        var_r6 += 0x800;
        temp_r1_4->anim = *(((var_r5_4 + (menu->language * 2)) * 8) + var_r2_4);
        temp_r1_4->variant = (((var_r5_4 + (menu->language * 2)) * 8) + var_r2_4)->unk2;
        temp_r1_4->prevVariant = 0xFF;
        temp_r1_4->x = (s16) ((s32) menu->unk30 >> 8);
        temp_r1_4->y = (s16) ((s32) menu->unk34 >> 8);
        temp_r1_4->oamFlags = 0xC0;
        temp_r1_4->animCursor = 0;
        temp_r1_4->qAnimDelay = 0;
        temp_r1_4->animSpeed = 0x10;
        temp_r1_4->palId = 0;
        temp_r1_4->frameFlags = 0;
        sp0 = var_r2_4;
        UpdateSpriteAnimation(temp_r1_4);
        var_r5_4 += 1;
    } while ((u32) var_r5_4 <= 1U);
    var_r5_5 = 0;
    var_r2_5 = &gUnknown_080D6354;
    do {
        temp_r1_5 = &menu->spr25C[var_r5_5];
        temp_r1_5->tiles = var_r6;
        var_r6 += 0x800;
        temp_r1_5->anim = *(((var_r5_5 + (menu->language * 2)) * 8) + var_r2_5);
        temp_r1_5->variant = (((var_r5_5 + (menu->language * 2)) * 8) + var_r2_5)->unk2;
        temp_r1_5->prevVariant = 0xFF;
        temp_r1_5->x = (s16) ((s32) menu->unk48 >> 8);
        temp_r1_5->y = (s16) ((s32) menu->unk4C >> 8);
        temp_r1_5->oamFlags = 0xC0;
        temp_r1_5->animCursor = 0;
        temp_r1_5->qAnimDelay = 0;
        temp_r1_5->animSpeed = 0x10;
        temp_r1_5->palId = 0;
        temp_r1_5->frameFlags = 0;
        sp0 = var_r2_5;
        UpdateSpriteAnimation(temp_r1_5);
        var_r5_5 += 1;
    } while ((u32) var_r5_5 <= 1U);
    gCurTask->main = Task_3F0_808A060;
}

void Task_3F0_8088E74(MainMenu *menu) {
    ? *sp0;
    ? *var_r2;
    ? *var_r2_2;
    Sprite *temp_r1;
    Sprite *temp_r1_2;
    u8 *var_r5;
    u8 var_r6;
    u8 var_r6_2;

    var_r6 = 0;
    menu->unk3C = (s32) (menu->unk1C + 0x1A00);
    menu->unk44 = (s32) (menu->unk2C + 0x600);
    sub_8088FD4(menu);
    sub_8089EF8(menu);
    sub_8089150(menu);
    sub_80891E4(menu);
    sub_8089F40(menu);
    sub_8089F08(menu);
    sub_8089704(menu);
    var_r5 = menu->spr7C[0].tiles;
    var_r2 = &gUnknown_080D6294;
    do {
        temp_r1 = &menu->spr1BC[var_r6];
        temp_r1->tiles = var_r5;
        var_r5 += 0x800;
        temp_r1->anim = *(((var_r6 + (menu->language * 2)) * 8) + var_r2);
        temp_r1->variant = (((var_r6 + (menu->language * 2)) * 8) + var_r2)->unk2;
        temp_r1->prevVariant = 0xFF;
        temp_r1->x = (s16) ((s32) menu->unk38 >> 8);
        temp_r1->y = (s16) ((s32) menu->unk3C >> 8);
        temp_r1->oamFlags = 0xC0;
        temp_r1->animCursor = 0;
        temp_r1->qAnimDelay = 0;
        temp_r1->animSpeed = 0x10;
        temp_r1->palId = 0;
        temp_r1->frameFlags = 0;
        sp0 = var_r2;
        UpdateSpriteAnimation(temp_r1);
        var_r6 += 1;
    } while ((u32) var_r6 <= 1U);
    var_r6_2 = 0;
    var_r2_2 = &gUnknown_080D62F4;
    do {
        temp_r1_2 = &menu->spr20C[var_r6_2];
        temp_r1_2->tiles = var_r5;
        var_r5 += 0x800;
        temp_r1_2->anim = *(((var_r6_2 + (menu->language * 2)) * 8) + var_r2_2);
        temp_r1_2->variant = (((var_r6_2 + (menu->language * 2)) * 8) + var_r2_2)->unk2;
        temp_r1_2->prevVariant = 0xFF;
        temp_r1_2->x = (s16) ((s32) menu->unk40 >> 8);
        temp_r1_2->y = (s16) ((s32) menu->unk44 >> 8);
        temp_r1_2->oamFlags = 0xC0;
        temp_r1_2->animCursor = 0;
        temp_r1_2->qAnimDelay = 0;
        temp_r1_2->animSpeed = 0x10;
        temp_r1_2->palId = 0;
        temp_r1_2->frameFlags = 0;
        sp0 = var_r2_2;
        UpdateSpriteAnimation(temp_r1_2);
        var_r6_2 += 1;
    } while ((u32) var_r6_2 <= 1U);
    menu->unkB = 1;
    gCurTask->main = Task_3F0_808A0D8;
}

void sub_8088FD4(MainMenu *menu) {
    s32 var_r2;
    u16 *var_r1;
    u16 temp_r0;
    u16 temp_r0_2;

    if (menu->unk3 == 0) {
        var_r1 = &menu->unk72;
        var_r2 = 0xFFFFFC00;
    } else {
        var_r1 = &menu->unk72;
        var_r2 = 0xFFFFFF00;
    }
    *var_r1 += var_r2;
    temp_r0 = menu->unk74;
    if ((u32) temp_r0 > 0x180U) {
        temp_r0_2 = temp_r0 - 0x20;
        menu->unk74 = temp_r0_2;
        if ((u32) temp_r0_2 <= 0x180U) {
            menu->unk3 = 1;
        }
    } else {
        menu->unk74 = 0x180;
    }
}

s32 sub_8089028(MainMenu *menu) {
    u16 temp_r2;
    u16 var_r0;
    u16 var_r3;
    u16 var_r5;
    void *var_r1;

    var_r3 = 0;
    var_r5 = 0;
    gFlags |= 4;
    gHBlankCopyTarget = (void *)0x04000010;
    gHBlankCopySize = 2;
    var_r1 = gBgOffsetsHBlankPrimary;
    temp_r2 = menu->unk12;
    if ((u32) menu->unk6 <= 2U) {
        do {
            if (var_r5 & 1) {
                *var_r1 = (u16) (0 - temp_r2);
            } else {
                *var_r1 = temp_r2;
            }
            var_r1 += 2;
            if ((7 & var_r3) == 7) {
                var_r5 += 1;
            }
            var_r3 += 1;
        } while ((u32) var_r3 <= 0x9FU);
        if ((s32) (s16) menu->unk12 < 0) {
            var_r0 = menu->unk12 + 0xA;
            goto block_20;
        }
        goto block_18;
    }
    do {
        if (var_r5 & 1) {
            *var_r1 = (u16) (0 - temp_r2);
        } else {
            *var_r1 = temp_r2;
        }
        var_r1 += 2;
        if ((7 & var_r3) == 7) {
            var_r5 += 1;
        }
        var_r3 += 1;
    } while ((u32) var_r3 <= 0x9FU);
    if ((s32) (s16) menu->unk12 <= 0xFFFFFEFC) {
block_18:
        return 1;
    }
    var_r0 = menu->unk12 - 0xA;
block_20:
    menu->unk12 = var_r0;
    return 0;
}

void sub_80890F8(MainMenu *menu) {
    s16 temp_r0_2;
    s32 temp_r0;
    s32 temp_r0_3;

    menu->unk4 += 2;
    temp_r0 = (s32) (*((menu->unk4 * 8) + gSineTable) << 0x10) >> 0x16;
    temp_r0_2 = temp_r0 + (temp_r0 >> 1);
    menu->unk68 = temp_r0_2;
    if ((temp_r0_2 == 0) || (temp_r0_2 == 0xFF)) {
        temp_r0_3 = (s32) (*(((u8) (menu->unk4 + 3) * 8) + gSineTable) << 0x10) >> 0x16;
        menu->unk68 = (s16) (temp_r0_3 + (temp_r0_3 >> 1));
    }
    menu->unk6A = 0x180;
}

void sub_8089150(MainMenu *menu) {
    s32 temp_r0;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r1_3;
    u8 temp_r3;

    menu->unk5 += 3;
    temp_r1 = menu->unk58;
    if ((temp_r1 <= 0x5000) && (menu->unk6 == 0)) {
        temp_r1_2 = temp_r1 + 0x400;
        menu->unk58 = temp_r1_2;
        if (temp_r1_2 > 0x4FFF) {
            goto block_8;
        }
    } else {
        temp_r1_3 = menu->unk58;
        temp_r3 = menu->unk6;
        if ((temp_r1_3 > 0x4FFF) && (temp_r3 == 1)) {
            temp_r0 = temp_r1_3 + 0xFFFFFD00;
            menu->unk58 = temp_r0;
            if (temp_r0 <= 0x5000) {
                menu->unk58 = 0x5000;
block_8:
                menu->unk6 = 2;
            }
        } else if (temp_r3 == 3) {
            menu->unk58 = (s32) (temp_r1_3 + 0xFFFFFC00);
        }
    }
    menu->unk5C = (s32) ((((s32) (*((menu->unk5 * 8) + 0x200 + gSineTable) << 0x10) >> 0x16) * 4) + 0x5600);
}

void sub_80891E4(MainMenu *menu) {
    s32 var_r0;
    s32 var_r1;
    u8 temp_r0;

    menu->unk5 += 3;
    temp_r0 = menu->unk6;
    switch (temp_r0) {                              /* irregular */
    case 0:
        menu->unk60 = (s32) (menu->unk58 + 0xFFFFFD00);
        var_r0 = menu->unk5C + 0xFFFFCA00;
block_8:
        menu->unk64 = var_r0;
        break;
    case 2:
        menu->unk60 = (s32) (menu->unk58 - (*((menu->unkB * 4) + &gUnknown_080D6770) << 8));
        var_r1 = *((menu->unkB * 4) + (&gUnknown_080D6770 + 2)) << 8;
block_7:
        var_r0 = menu->unk5C + var_r1;
        goto block_8;
    case 1:
    case 3:
        menu->unk60 = (s32) (menu->unk58 + 0x300);
        var_r1 = 0xFFFFCA00;
        goto block_7;
    }
    menu->unk64 = (s32) (menu->unk64 + (((s32) (*((menu->unk5 * 8) + gSineTable) << 0x10) >> 0x16) * 2));
}

s16 sub_808927C(MainMenu *menu) {
    s16 temp_r0;
    u16 temp_r0_2;
    u16 temp_r1;
    u16 temp_r5;

    if ((0x7F & LOADED_SAVE->collectedEmeralds) == 0x7F) {
        temp_r5 = menu->unk14;
        temp_r0 = (s16) menu->unk14;
        if ((s32) temp_r0 <= 9) {
            temp_r1 = (&gUnknown_080D66CC)[temp_r0 + 1] & gPressedKeys;
            if (temp_r1 != 0) {
                temp_r0_2 = temp_r5 + 1;
                menu->unk14 = temp_r0_2;
                if ((s16) temp_r0_2 == 5) {
                    m4aSongNumStart(0x6CU);
                    menu->unk14 = 0xAU;
                    goto block_5;
                }
                goto block_12;
            }
            if (gUnknown_080D66CC & gPressedKeys) {
                menu->unk14 = temp_r1;
            } else {
                if ((gPressedKeys << 0x10) != 0) {
                    menu->unk14 = (u16) (0xFFFF | temp_r5);
                }
                if (gUnknown_080D66CC & gPressedKeys) {
                    menu->unk14 = 1U;
                }
            }
            goto block_12;
        }
block_5:
        return 1;
    }
block_12:
    return 0;
}

void sub_8089308(MainMenu *menu) {
    Sprite *temp_r4;
    u8 var_r0;
    u8 var_r7;

    var_r7 = 0;
    do {
        temp_r4 = &menu->spr7C[var_r7];
        if (menu->unk10 == 0) {
            if ((s32) menu->unk68 <= 0) {
                var_r0 = 3;
            } else {
                var_r0 = 1;
            }
        } else {
            var_r0 = 0;
        }
        temp_r4->palId = var_r0;
        temp_r4->x = (s16) ((s32) menu->unk18 >> 8);
        temp_r4->y = (s16) ((s32) menu->unk1C >> 8);
        if (menu->unk10 == 0) {
            temp_r4->frameFlags |= 0x61;
            menu->tf324.rotation = 0;
            menu->tf324.qScaleX = (s16) (u16) menu->unk68;
            menu->tf324.qScaleY = (s16) menu->unk6A;
            menu->tf324.x = (s16) (u16) temp_r4->x;
            menu->tf324.y = (s16) (u16) temp_r4->y;
            TransformSprite(temp_r4, &menu->tf324);
        } else {
            temp_r4->frameFlags = 0;
        }
        DisplaySprite(temp_r4);
        var_r7 += 1;
    } while ((u32) var_r7 <= 1U);
}

void sub_8089398(MainMenu *menu) {
    Sprite *temp_r4;
    s16 temp_r1;
    u8 var_r0;
    u8 var_r7;

    var_r7 = 0;
    do {
        temp_r4 = &menu->sprCC[var_r7];
        temp_r1 = menu->unk10;
        if (temp_r1 == 1) {
            if ((s32) menu->unk68 <= 0) {
                var_r0 = 3;
                goto block_6;
            }
            temp_r4->palId = (u8) temp_r1;
        } else {
            var_r0 = 0;
block_6:
            temp_r4->palId = var_r0;
        }
        temp_r4->x = (s16) ((s32) menu->unk20 >> 8);
        temp_r4->y = (s16) ((s32) menu->unk24 >> 8);
        if (menu->unk10 == 1) {
            temp_r4->frameFlags |= 0x61;
            menu->tf324.rotation = 0;
            menu->tf324.qScaleX = (s16) (u16) menu->unk68;
            menu->tf324.qScaleY = (s16) menu->unk6A;
            menu->tf324.x = (s16) (u16) temp_r4->x;
            menu->tf324.y = (s16) (u16) temp_r4->y;
            TransformSprite(temp_r4, &menu->tf324);
        } else {
            temp_r4->frameFlags = 0;
        }
        DisplaySprite(temp_r4);
        var_r7 += 1;
    } while ((u32) var_r7 <= 1U);
}

void sub_8089428(MainMenu *menu) {
    Sprite *temp_r4;
    u8 var_r0;
    u8 var_r7;

    var_r7 = 0;
    do {
        temp_r4 = &menu->spr11C[var_r7];
        if (menu->unk10 == 2) {
            if ((s32) menu->unk68 <= 0) {
                var_r0 = 3;
            } else {
                var_r0 = 1;
            }
        } else {
            var_r0 = 0;
        }
        temp_r4->palId = var_r0;
        temp_r4->x = (s16) ((s32) menu->unk28 >> 8);
        temp_r4->y = (s16) ((s32) menu->unk2C >> 8);
        if (menu->unk10 == 2) {
            temp_r4->frameFlags |= 0x61;
            menu->tf324.rotation = 0;
            menu->tf324.qScaleX = (s16) (u16) menu->unk68;
            menu->tf324.qScaleY = (s16) menu->unk6A;
            menu->tf324.x = (s16) (u16) temp_r4->x;
            menu->tf324.y = (s16) (u16) temp_r4->y;
            TransformSprite(temp_r4, &menu->tf324);
        } else {
            temp_r4->frameFlags = 0;
        }
        DisplaySprite(temp_r4);
        var_r7 += 1;
    } while ((u32) var_r7 <= 1U);
}

void sub_80894BC(MainMenu *menu) {
    Sprite *temp_r4;
    s16 temp_r1;
    u8 var_r0;
    u8 var_r7;

    var_r7 = 0;
    do {
        temp_r4 = &menu->spr16C[var_r7];
        temp_r1 = menu->unk10;
        if (temp_r1 == 3) {
            if ((s32) menu->unk68 <= 0) {
                temp_r4->palId = (u8) temp_r1;
            } else {
                var_r0 = 1;
                goto block_6;
            }
        } else {
            var_r0 = 0;
block_6:
            temp_r4->palId = var_r0;
        }
        temp_r4->x = (s16) ((s32) menu->unk30 >> 8);
        temp_r4->y = (s16) ((s32) menu->unk34 >> 8);
        if (menu->unk10 == 3) {
            temp_r4->frameFlags |= 0x61;
            menu->tf324.rotation = 0;
            menu->tf324.qScaleX = (s16) (u16) menu->unk68;
            menu->tf324.qScaleY = (s16) menu->unk6A;
            menu->tf324.x = (s16) (u16) temp_r4->x;
            menu->tf324.y = (s16) (u16) temp_r4->y;
            TransformSprite(temp_r4, &menu->tf324);
        } else {
            temp_r4->frameFlags = 0;
        }
        DisplaySprite(temp_r4);
        var_r7 += 1;
    } while ((u32) var_r7 <= 1U);
}

void sub_8089550(MainMenu *menu) {
    Sprite *temp_r4;
    u8 var_r0;
    u8 var_r7;

    var_r7 = 0;
    do {
        temp_r4 = &menu->spr1BC[var_r7];
        if (menu->unkC == 0) {
            if ((s32) menu->unk68 <= 0) {
                var_r0 = 3;
            } else {
                var_r0 = 1;
            }
        } else {
            var_r0 = 0;
        }
        temp_r4->palId = var_r0;
        temp_r4->x = (s16) ((s32) menu->unk38 >> 8);
        temp_r4->y = (s16) ((s32) menu->unk3C >> 8);
        if (menu->unkC == 0) {
            temp_r4->frameFlags |= 0x61;
            menu->tf324.rotation = 0;
            menu->tf324.qScaleX = (s16) (u16) menu->unk68;
            menu->tf324.qScaleY = (s16) menu->unk6A;
            menu->tf324.x = (s16) (u16) temp_r4->x;
            menu->tf324.y = (s16) (u16) temp_r4->y;
            TransformSprite(temp_r4, &menu->tf324);
        } else {
            temp_r4->frameFlags = 0;
        }
        DisplaySprite(temp_r4);
        var_r7 += 1;
    } while ((u32) var_r7 <= 1U);
}

void sub_80895E0(MainMenu *menu) {
    Sprite *temp_r4;
    u8 temp_r1;
    u8 var_r0;
    u8 var_r7;

    var_r7 = 0;
    do {
        temp_r4 = &menu->spr20C[var_r7];
        temp_r1 = menu->unkC;
        if (temp_r1 == 1) {
            if ((s32) menu->unk68 <= 0) {
                var_r0 = 3;
                goto block_6;
            }
            temp_r4->palId = temp_r1;
        } else {
            var_r0 = 0;
block_6:
            temp_r4->palId = var_r0;
        }
        temp_r4->x = (s16) ((s32) menu->unk40 >> 8);
        temp_r4->y = (s16) ((s32) menu->unk44 >> 8);
        if (menu->unkC == 1) {
            temp_r4->frameFlags |= 0x61;
            menu->tf324.rotation = 0;
            menu->tf324.qScaleX = (s16) (u16) menu->unk68;
            menu->tf324.qScaleY = (s16) menu->unk6A;
            menu->tf324.x = (s16) (u16) temp_r4->x;
            menu->tf324.y = (s16) (u16) temp_r4->y;
            TransformSprite(temp_r4, &menu->tf324);
        } else {
            temp_r4->frameFlags = 0;
        }
        DisplaySprite(temp_r4);
        var_r7 += 1;
    } while ((u32) var_r7 <= 1U);
}

void sub_8089670(MainMenu *menu) {
    Sprite *temp_r4;
    u8 var_r0;
    u8 var_r7;

    var_r7 = 0;
    do {
        temp_r4 = &menu->spr25C[var_r7];
        if ((s32) menu->unk10 > 9) {
            if ((s32) menu->unk68 <= 0) {
                var_r0 = 3;
            } else {
                var_r0 = 1;
            }
        } else {
            var_r0 = 0;
        }
        temp_r4->palId = var_r0;
        temp_r4->x = (s16) ((s32) menu->unk48 >> 8);
        temp_r4->y = (s16) ((s32) menu->unk4C >> 8);
        if ((s32) menu->unk10 > 9) {
            temp_r4->frameFlags |= 0x61;
            menu->tf324.rotation = 0;
            menu->tf324.qScaleX = (s16) (u16) menu->unk68;
            menu->tf324.qScaleY = (s16) menu->unk6A;
            menu->tf324.x = (s16) (u16) temp_r4->x;
            menu->tf324.y = (s16) (u16) temp_r4->y;
            TransformSprite(temp_r4, &menu->tf324);
        } else {
            temp_r4->frameFlags = 0;
        }
        DisplaySprite(temp_r4);
        var_r7 += 1;
    } while ((u32) var_r7 <= 1U);
}

void sub_8089704(MainMenu *menu) {
    Sprite *temp_r4;
    u32 var_r0;
    u32 var_r0_2;
    u8 temp_r0;
    u8 temp_r0_2;

    menu->spr2D4.x = (s16) ((s32) menu->unk58 >> 8);
    menu->spr2D4.y = (s16) ((s32) menu->unk5C >> 8);
    temp_r0 = menu->unk6;
    if ((temp_r0 == 1) || (temp_r0 == 3)) {
        var_r0 = menu->spr2D4.frameFlags | 0x400;
    } else {
        var_r0 = menu->spr2D4.frameFlags & 0xFFFFFBFF;
    }
    menu->spr2D4.frameFlags = var_r0;
    DisplaySprite(&menu->spr2D4);
    menu->spr2FC.x = (s16) ((s32) menu->unk60 >> 8);
    menu->spr2FC.y = (s16) ((s32) menu->unk64 >> 8);
    DisplaySprite(&menu->spr2FC);
    temp_r4 = &menu->spr2AC;
    menu->spr2AC.anim = *((menu->unkB * 8) + &gUnknown_080D6694);
    menu->spr2AC.variant = ((menu->unkB * 8) + &gUnknown_080D6694)->unk2;
    menu->spr2AC.prevVariant = 0xFF;
    menu->spr2AC.x = (s16) ((s32) menu->unk58 >> 8);
    menu->spr2AC.y = (s16) ((s32) menu->unk5C >> 8);
    temp_r0_2 = menu->unk6;
    if ((temp_r0_2 == 1) || (temp_r0_2 == 3)) {
        var_r0_2 = menu->spr2AC.frameFlags | 0x400;
    } else {
        var_r0_2 = menu->spr2AC.frameFlags & 0xFFFFFBFF;
    }
    menu->spr2AC.frameFlags = var_r0_2;
    UpdateSpriteAnimation(temp_r4);
    DisplaySprite(temp_r4);
}

void Task_3F0_80897BC(MainMenu *menu) {
    ? *sp10;
    ? *var_r2;
    ? *var_r2_2;
    Sprite *temp_r1;
    Sprite *temp_r1_2;
    s16 temp_r2;
    u8 *var_r7;
    u8 var_r6;
    u8 var_r6_2;

    var_r6 = 0;
    menu->unk3C = 0x6400;
    menu->unk44 = 0x8200;
    menu->unkD = 0;
    sub_8088FD4(menu);
    menu->unk50 = 0;
    menu->unk54 = (s32) (menu->unk54 + 0x100);
    sub_8089150(menu);
    sub_80891E4(menu);
    gBgScrollRegs[1][0] = (s16) ((s32) menu->unk50 >> 8);
    gBgScrollRegs[1][1] = (s16) ((s32) menu->unk54 >> 8);
    temp_r2 = (s16) menu->unk74;
    sa2__sub_8003EE4((u16) ((u16) menu->unk72 >> 6), temp_r2, temp_r2, 0x40, 0x40, 0x48, 0x50, gBgAffineRegs);
    sub_8089704(menu);
    var_r7 = menu->spr7C[0].tiles;
    var_r2 = &gUnknown_080D6594;
    do {
        temp_r1 = &menu->spr1BC[var_r6];
        temp_r1->tiles = var_r7;
        var_r7 += 0x800;
        temp_r1->anim = *(((var_r6 + (menu->language * 2)) * 8) + var_r2);
        temp_r1->variant = (((var_r6 + (menu->language * 2)) * 8) + var_r2)->unk2;
        temp_r1->prevVariant = 0xFF;
        temp_r1->x = (s16) ((s32) menu->unk38 >> 8);
        temp_r1->y = (s16) ((s32) menu->unk3C >> 8);
        temp_r1->oamFlags = 0xC0;
        temp_r1->animCursor = 0;
        temp_r1->qAnimDelay = 0;
        temp_r1->animSpeed = 0x10;
        temp_r1->palId = 0;
        temp_r1->frameFlags = 0;
        sp10 = var_r2;
        UpdateSpriteAnimation(temp_r1);
        var_r6 += 1;
    } while ((u32) var_r6 <= 1U);
    var_r6_2 = 0;
    var_r2_2 = &gUnknown_080D65F4;
    do {
        temp_r1_2 = &menu->spr20C[var_r6_2];
        temp_r1_2->tiles = var_r7;
        var_r7 += 0x800;
        temp_r1_2->anim = *(((var_r6_2 + (menu->language * 2)) * 8) + var_r2_2);
        temp_r1_2->variant = (((var_r6_2 + (menu->language * 2)) * 8) + var_r2_2)->unk2;
        temp_r1_2->prevVariant = 0xFF;
        temp_r1_2->x = (s16) ((s32) menu->unk40 >> 8);
        temp_r1_2->y = (s16) ((s32) menu->unk44 >> 8);
        temp_r1_2->oamFlags = 0xC0;
        temp_r1_2->animCursor = 0;
        temp_r1_2->qAnimDelay = 0;
        temp_r1_2->animSpeed = 0x10;
        temp_r1_2->palId = 0;
        temp_r1_2->frameFlags = 0;
        sp10 = var_r2_2;
        UpdateSpriteAnimation(temp_r1_2);
        var_r6_2 += 1;
    } while ((u32) var_r6_2 <= 1U);
    sub_808A1B0(0U, (s32) &menu->unkD, var_r7, 0x64U, 0x26, M2C_ERROR(/* Unable to find stack arg 0x4 in block */));
    menu->unkB = 2;
    gCurTask->main = Task_3F0_808A0D8;
}

void Task_3F0_8089970(MainMenu *menu) {
    s32 sp10;
    s32 sp14;
    Sprite *temp_r2_2;
    Sprite *temp_r2_3;
    s16 temp_r2;
    u16 var_r3;
    u32 temp_r4;
    u8 *var_r6;
    u8 temp_r1;
    u8 var_r7;
    u8 var_r7_2;
    void *temp_r0;
    void *temp_r0_2;

    var_r7 = 0;
    menu->unk3C = 0x6400;
    menu->unk44 = 0x8200;
    menu->unkD = 0;
    sub_8088FD4(menu);
    menu->unk50 = 0;
    menu->unk54 = (s32) (menu->unk54 + 0x100);
    sub_8089150(menu);
    sub_80891E4(menu);
    gBgScrollRegs[1][0] = (s16) ((s32) menu->unk50 >> 8);
    gBgScrollRegs[1][1] = (s16) ((s32) menu->unk54 >> 8);
    temp_r2 = (s16) menu->unk74;
    sa2__sub_8003EE4((u16) ((u16) menu->unk72 >> 6), temp_r2, temp_r2, 0x40, 0x40, 0x48, 0x50, gBgAffineRegs);
    sub_8089704(menu);
    var_r6 = menu->spr7C[0].tiles;
    temp_r1 = menu->language;
    temp_r4 = (u32) ((0 - temp_r1) | temp_r1) >> 0x1F;
    var_r3 = 0;
    sp10 = temp_r4 * 2;
    do {
        temp_r2_2 = &menu->spr1BC[var_r7];
        temp_r2_2->tiles = var_r6;
        if (var_r7 == 0) {
            var_r6 += 0x200;
        } else {
            var_r6 += 0x200;
        }
        temp_r0 = ((var_r7 + (temp_r4 * 2)) * 8) + &gUnknown_080D6654;
        temp_r2_2->anim = temp_r0->unk0;
        temp_r2_2->variant = temp_r0->unk2;
        temp_r2_2->prevVariant = 0xFF;
        temp_r2_2->x = (s16) ((s32) menu->unk38 >> 8);
        temp_r2_2->y = (s16) ((s32) menu->unk3C >> 8);
        temp_r2_2->oamFlags = 0xC0;
        temp_r2_2->animCursor = var_r3;
        temp_r2_2->qAnimDelay = (s16) var_r3;
        temp_r2_2->animSpeed = 0x10;
        temp_r2_2->palId = 0;
        temp_r2_2->frameFlags = (u32) var_r3;
        sp14 = (s32) var_r3;
        UpdateSpriteAnimation(temp_r2_2);
        var_r7 += 1;
    } while ((u32) var_r7 <= 1U);
    var_r7_2 = 0;
    do {
        temp_r2_3 = &menu->spr20C[var_r7_2];
        temp_r2_3->tiles = var_r6;
        if (var_r7_2 == 0) {
            var_r6 += 0x200;
        } else {
            var_r6 += 0x200;
        }
        temp_r0_2 = ((var_r7_2 + sp10) * 8) + &gUnknown_080D6674;
        temp_r2_3->anim = temp_r0_2->unk0;
        temp_r2_3->variant = temp_r0_2->unk2;
        temp_r2_3->prevVariant = 0xFF;
        temp_r2_3->x = (s16) ((s32) menu->unk40 >> 8);
        temp_r2_3->y = (s16) ((s32) menu->unk44 >> 8);
        temp_r2_3->oamFlags = 0xC0;
        temp_r2_3->animCursor = 0;
        temp_r2_3->qAnimDelay = 0;
        temp_r2_3->animSpeed = 0x10;
        temp_r2_3->palId = 0;
        temp_r2_3->frameFlags = 0;
        UpdateSpriteAnimation(temp_r2_3);
        var_r7_2 += 1;
    } while ((u32) var_r7_2 <= 1U);
    sub_808A1B0(1U, (s32) &menu->unkD, var_r6, 0x58U, 0x22, M2C_ERROR(/* Unable to find stack arg 0x4 in block */));
    menu->unkB = 2;
    gCurTask->main = Task_3F0_808A0D8;
}

void sub_8089B38(MMChaoMessage *msg, u8 *vram) {
    ? *var_r1_2;
    s32 temp_r1;
    s32 var_r1;
    u8 *temp_r6;
    u8 *temp_r6_2;
    u8 temp_r0;
    u8 temp_r0_2;
    void *temp_r1_2;

    var_r1 = 0;
    msg->spr1C.tiles = vram;
    temp_r0 = msg->initArg0;
    if ((temp_r0 != 0) && (temp_r0 == 1)) {
        var_r1 = 1;
    }
    temp_r1 = var_r1 * 8;
    temp_r6 = vram + (*(temp_r1 + (&gUnknown_080D6780 + 4)) << 5);
    temp_r1_2 = temp_r1 + &gUnknown_080D6780;
    msg->spr1C.anim = temp_r1_2->unk0;
    msg->spr1C.variant = temp_r1_2->unk2;
    msg->spr1C.prevVariant = 0xFF;
    msg->spr1C.x = (s16) ((s32) msg->qUnkC >> 8);
    msg->spr1C.y = (s16) ((s32) msg->qUnk10 >> 8);
    msg->spr1C.oamFlags = 0x40;
    msg->spr1C.animCursor = 0;
    msg->spr1C.qAnimDelay = 0;
    msg->spr1C.animSpeed = 0x10;
    msg->spr1C.palId = 0;
    msg->spr1C.frameFlags = 0;
    UpdateSpriteAnimation(&msg->spr1C);
    msg->spr6C.tiles = temp_r6;
    temp_r6_2 = temp_r6 + (gUnknown_080D6780.unk14 << 5);
    msg->spr6C.anim = gUnknown_080D6780.unk10;
    msg->spr6C.variant = gUnknown_080D6780.unk12;
    msg->spr6C.prevVariant = -1U;
    msg->spr6C.x = (s16) ((s32) msg->unk14 >> 8);
    msg->spr6C.y = (s16) ((s32) msg->unk18 >> 8);
    msg->spr6C.oamFlags = 0;
    msg->spr6C.animCursor = 0;
    msg->spr6C.qAnimDelay = 0;
    msg->spr6C.animSpeed = 0x10;
    msg->spr6C.palId = 0;
    msg->spr6C.frameFlags = 0;
    UpdateSpriteAnimation(&msg->spr6C);
    msg->spr44.tiles = temp_r6_2;
    temp_r0_2 = msg->initArg0;
    if (temp_r0_2 == 0) {
        var_r1_2 = &gUnknown_080D67F8;
        goto block_7;
    }
    if (temp_r0_2 == 1) {
        var_r1_2 = &gUnknown_080D6798;
block_7:
        msg->spr44.anim = *((msg->language * 8) + var_r1_2);
        msg->spr44.variant = ((msg->language * 8) + var_r1_2)->unk2;
    }
    msg->spr44.prevVariant = 0xFF;
    msg->spr44.x = (s16) ((s32) msg->qUnkC >> 8);
    msg->spr44.y = (s16) ((s32) msg->qUnk10 >> 8);
    msg->spr44.oamFlags = 0x40;
    msg->spr44.animCursor = 0;
    msg->spr44.qAnimDelay = 0;
    msg->spr44.animSpeed = 0x10;
    msg->spr44.palId = 0;
    msg->spr44.frameFlags = 0;
    UpdateSpriteAnimation(&msg->spr44);
}

void sub_8089C48(MMChaoMessage *msg) {
    ? *var_r1;
    Sprite *temp_r4;
    Sprite *temp_r4_2;
    Sprite *temp_r4_3;
    s16 var_r0_3;
    s32 var_r0_2;
    s32 var_r7;
    u32 var_r0;
    u8 temp_r0;
    u8 temp_r0_2;
    u8 temp_r0_3;
    u8 var_r6;
    void *temp_r1;

    var_r6 = 0;
    var_r7 = 0;
    temp_r4 = &msg->spr1C;
    do {
        temp_r0 = msg->initArg0;
        if (temp_r0 == 0) {
            var_r7 = 0;
        } else if (temp_r0 == 1) {
            var_r7 = 1;
        }
        temp_r1 = (var_r7 * 8) + &gUnknown_080D6780;
        msg->spr1C.anim = temp_r1->unk0;
        msg->spr1C.variant = temp_r1->unk2;
        msg->spr1C.prevVariant = 0xFF;
        msg->spr1C.x = (s16) ((s32) msg->qUnkC >> 8);
        msg->spr1C.y = (s16) ((s32) msg->qUnk10 >> 8);
        switch (var_r6) {                           /* irregular */
        case 0:
            var_r0 = msg->spr1C.frameFlags & 0xFFFFFBFF & 0xFFFFF7FF;
block_14:
            msg->spr1C.frameFlags = var_r0;
            break;
        case 1:
            var_r0 = (msg->spr1C.frameFlags | 0x400) & 0xFFFFF7FF;
            goto block_14;
        case 2:
            var_r0_2 = msg->spr1C.frameFlags & 0xFFFFFBFF;
block_13:
            var_r0 = var_r0_2 | 0x800;
            goto block_14;
        case 3:
            var_r0_2 = msg->spr1C.frameFlags | 0x400;
            goto block_13;
        }
        UpdateSpriteAnimation(temp_r4);
        DisplaySprite(temp_r4);
        var_r6 += 1;
    } while ((u32) var_r6 <= 3U);
    temp_r4_2 = &msg->spr6C;
    temp_r0_2 = msg->initArg0;
    if (temp_r0_2 == 0) {
        msg->spr6C.x = ((s32) msg->qUnkC >> 8) - 0x41;
        var_r0_3 = ((s32) msg->qUnk10 >> 8) + 0xC;
        goto block_20;
    }
    if (temp_r0_2 == 1) {
        msg->spr6C.x = ((s32) msg->qUnkC >> 8) - 0x2D;
        var_r0_3 = ((s32) msg->qUnk10 >> 8) + 8;
block_20:
        msg->spr6C.y = var_r0_3;
    }
    UpdateSpriteAnimation(temp_r4_2);
    DisplaySprite(temp_r4_2);
    temp_r4_3 = &msg->spr44;
    temp_r0_3 = msg->initArg0;
    if (temp_r0_3 == 0) {
        if (*msg->initArg1 == 0) {
            var_r1 = &gUnknown_080D67F8;
        } else {
            var_r1 = &gUnknown_080D6828;
        }
        goto block_29;
    }
    if (temp_r0_3 == 1) {
        if (*msg->initArg1 == 0) {
            var_r1 = &gUnknown_080D6798;
        } else {
            var_r1 = &gUnknown_080D67C8;
        }
block_29:
        msg->spr44.anim = *((msg->language * 8) + var_r1);
        msg->spr44.variant = ((msg->language * 8) + var_r1)->unk2;
    }
    msg->spr44.prevVariant = 0xFF;
    msg->spr44.x = (s16) ((s32) msg->qUnkC >> 8);
    msg->spr44.y = (s16) ((s32) msg->qUnk10 >> 8);
    UpdateSpriteAnimation(temp_r4_3);
    DisplaySprite(temp_r4_3);
}

u8 sub_8089DA0(MainMenu *arg0) {
    s32 *temp_r1;
    s32 temp_r2;
    u8 var_r3;
    u8 var_r5;

    var_r5 = 0;
    var_r3 = 0;
    do {
        temp_r1 = *((var_r3 * 4) + sp);
        temp_r2 = *temp_r1;
        if (temp_r2 <= 0xAA00) {
            *temp_r1 = 0xAA00;
            var_r5 += 1;
        } else {
            *temp_r1 = temp_r2 - (*(arg0 + 7 + var_r3) << 8);
        }
        var_r3 += 1;
    } while ((u32) var_r3 <= 3U);
    return var_r5;
}

u8 sub_8089DF4(MainMenu *arg0) {
    s32 *temp_r1;
    s32 temp_r2;
    u8 var_r3;
    u8 var_r4;

    var_r4 = 0;
    var_r3 = 0;
    do {
        temp_r1 = *((var_r3 * 4) + sp);
        temp_r2 = *temp_r1;
        if (temp_r2 > 0x12BFF) {
            *temp_r1 = 0x12C00;
            var_r4 += 1;
        } else {
            *temp_r1 = temp_r2 + (*(arg0 + 7 + var_r3) << 9);
        }
        var_r3 += 1;
    } while ((u32) var_r3 <= 3U);
    return var_r4;
}

u8 sub_8089E50(MainMenu *arg0) {
    s32 *temp_r1;
    s32 temp_r2;
    u8 var_r3;
    u8 var_r5;

    var_r5 = 0;
    var_r3 = 0;
    do {
        temp_r1 = *((var_r3 * 4) + sp);
        temp_r2 = *temp_r1;
        if (temp_r2 <= 0xAA00) {
            *temp_r1 = 0xAA00;
            var_r5 += 1;
        } else {
            *temp_r1 = temp_r2 - (*(arg0 + 7 + var_r3) << 8);
        }
        var_r3 += 1;
    } while ((u32) var_r3 <= 1U);
    return var_r5;
}

u8 sub_8089EA0(MainMenu *arg0) {
    s32 *temp_r1;
    s32 temp_r2;
    u8 var_r3;
    u8 var_r4;

    var_r4 = 0;
    var_r3 = 0;
    do {
        temp_r1 = (&subroutine_arg0)[var_r3];
        temp_r2 = *temp_r1;
        if (temp_r2 > 0x12BFF) {
            *temp_r1 = 0x12C00;
            var_r4 += 1;
        } else {
            *temp_r1 = temp_r2 + (*(arg0 + 7 + var_r3) << 9);
        }
        var_r3 += 1;
    } while ((u32) var_r3 <= 1U);
    return var_r4;
}

void sub_8089EF8(MainMenu *menu) {
    menu->unk50 = 0;
    menu->unk54 = (s32) (menu->unk54 + 0x100);
}

void sub_8089F08(MainMenu *menu) {
    s16 temp_r2;

    temp_r2 = (s16) menu->unk74;
    sa2__sub_8003EE4((u16) ((u16) menu->unk72 >> 6), temp_r2, temp_r2, 0x40, 0x40, 0x48, 0x50, gBgAffineRegs);
}

void sub_8089F40(MainMenu *menu) {
    gBgScrollRegs[1][0] = (s16) ((s32) menu->unk50 >> 8);
    gBgScrollRegs[1][1] = (s16) ((s32) menu->unk54 >> 8);
}

void Task_3F0_MainMenuInit(MainMenu *menu) {
    sub_8087A48(menu);
    if ((u32) (u8) (menu->unk1 - 2) <= 1U) {
        sub_80877F4(menu);
    } else {
        sub_8087590(menu);
    }
    sub_8087498(menu);
    if ((u32) (u8) (menu->unk1 - 2) <= 1U) {
        m4aMPlayAllStop();
        m4aSongNumStart(0x48U);
    } else {
        m4aMPlayAllStop();
        m4aSongNumStart(2U);
    }
    gCurTask->main = *((menu->unk1 * 4) + &gUnknown_080D6758);
}

void Task_3F0_8089FCC(MainMenu *menu) {
    sub_8089028(menu);
    sub_80890F8(menu);
    sub_8088FD4(menu);
    sub_8089EF8(menu);
    sub_8089150(menu);
    sub_80891E4(menu);
    sub_8089398(menu);
    sub_80894BC(menu);
    sub_8089308(menu);
    sub_8089428(menu);
    sub_8089F40(menu);
    sub_8089F08(menu);
    sub_8089704(menu);
    sub_808927C(menu);
    if ((sub_8089DA0(menu) == 4) && ((sub_8089028(menu) << 0x18) != 0)) {
        menu->unk2 = 1;
        gCurTask->main = Task_3F0_808819C;
    }
}

void Task_3F0_808A060(MainMenu *menu) {
    sub_80890F8(menu);
    sub_8088FD4(menu);
    sub_8089EF8(menu);
    sub_8089398(menu);
    sub_80894BC(menu);
    sub_8089308(menu);
    sub_8089428(menu);
    sub_8089F40(menu);
    sub_8089F08(menu);
    sub_8089704(menu);
    sub_808927C(menu);
    if (sub_8089DA0(menu) == 4) {
        menu->unk2 = 1;
        gCurTask->main = Task_3F0_808819C;
    }
}

void Task_3F0_808A0D8(MainMenu *menu) {
    sub_80890F8(menu);
    sub_8088FD4(menu);
    sub_8089EF8(menu);
    sub_8089150(menu);
    sub_80891E4(menu);
    sub_80895E0(menu);
    sub_8089550(menu);
    sub_8089F40(menu);
    sub_8089F08(menu);
    sub_8089704(menu);
    if (sub_8089E50(menu) == 2) {
        gCurTask->main = Task_3F0_80889CC;
    }
}

void Task_3F0_808A144(MainMenu *menu) {
    sub_8088FD4(menu);
    sub_8089EF8(menu);
    sub_8089150(menu);
    sub_80891E4(menu);
    sub_80895E0(menu);
    sub_8089550(menu);
    sub_8089F40(menu);
    sub_8089F08(menu);
    sub_8089704(menu);
    if (sub_8089EA0(menu) == 2) {
        gCurTask->main = Task_3F0_8087C74;
    }
}

void TaskDestructor_MainMenu(Task *arg0) {

}

void sub_808A1B0(u8 arg0, void *arg1, u8 *vram, s16 arg3, s32 arg4, MMChaoMessage *msg) 
{
    MMChaoMessage *msg = TASK_DATA(TaskCreate(Task_94_808A22C, 0x94U, 0x100U, 0U, TaskDestructor_MainMenu));
    msg->language = LOADED_SAVE->language;
    msg->initArg1 = arg1;
    msg->initArg0 = arg0;
    msg->qUnkC = arg3 << 8;
    msg->qUnk10 = (u16) arg4 << 8;
    msg->unk14 = 0;
    msg->unk18 = 0;
    sub_8089B38(msg, vram);
}

void Task_94_808A22C(MMChaoMessage *msg) {
    sub_8089C48(msg);
    if (*msg->initArg1 == 0xB) {
        TaskDestroy(gCurTask);
    }
}

void sub_808A258(void) {

}
#endif
