#include "global.h"
#include "core.h"
#include "lib/m4a/m4a.h"
#include "game/sa3/title_screen.h"
#include "game/save.h"
#include "game/stage.h"
#include "code_z_1.h" // MaskingColors
#include "constants/tilemaps.h"
#include "constants/songs.h"

void Task_TitleScreenMainWithFade(void);
void sub_808A3D8(TitleScreenSA3 *title);
void sub_808A4EC(TitleScreenSA3 *title);
void Task_808A768(void);
void Task_808A7F0(void);
void Task_808A854(void);
void Task_808A8E4(void);
void Task_808A9D8(void);
void sub_808AEA4(TitleScreenSA3 *title);
void Task_TitleScreenMainFadeless(void);
void Task_TitleAnnouncer(void);
void Task_808ABD0(void);
void sub_808ACC0(TitleScreenSA3 *title);
void sub_808AD14(TitleScreenSA3 *title);
void sub_808AE28(void);
void sub_808AE34(void);
void sub_808AE40(void);
void Task_808AE4C(void);
void sub_808AEC0(TitleScreenSA3 *title);
void sub_808AEDC(TitleScreenSA3 *title);
void TaskDestructor_TitleScreen(Task *t);
extern void LaunchChaoMenu(s16 arg0, u8 arg1);
extern void LaunchDemoPlay(void);
void sub_80C470C(MaskingColors *arg0);
void sub_80C47C0(MaskingColors *arg0);
void sub_80C492C(MaskingColors *arg0);

extern void sub_8001D58(VoidFn voidFn, u16 color);

extern TileInfo2 gUnknown_080D6858[2 * 4];
extern TileInfo2 gUnknown_080D6898[6];
extern TileInfo2 gUnknown_080D68C8;
extern u16 gUnknown_080D68D0[8]; // TODO: Could be a Tilemap-ID enum, instead of u16, with -fshort-enums compiler flag!
extern u16 gUnknown_080D68E0[0x11];
extern s8 gUnknown_080D694C[10];
extern s8 gUnknown_080D6956[10];

extern void sub_80C4B48(void);
extern u8 gUnknown_080D6902[][3];
extern u8 gUnknown_080D690E[][3];
extern u8 gUnknown_080D691C[];

void CreateTitleScreen(u8 fadeMode)
{
    Task *t;
    TitleScreenSA3 *title;

    gDispCnt = DISPCNT_MODE_1 | DISPCNT_OBJ_1D_MAP | DISPCNT_OBJ_ON;

    if (fadeMode == 2) {
        t = TaskCreate(Task_TitleScreenMainWithFade, sizeof(TitleScreenSA3), 0x100U, 0U, TaskDestructor_TitleScreen);
    } else {
        t = TaskCreate(Task_TitleScreenMainFadeless, sizeof(TitleScreenSA3), 0x100U, 0U, TaskDestructor_TitleScreen);
    }

    title = TASK_DATA(t);
    title->unk160 = 0;
    title->unk1E = 0x1E;
    title->unk4 = 0xB4;
    title->unk6 = 0;
    title->fadeMode = fadeMode;
    title->language = LOADED_SAVE->language;
    title->unk8 = 0;
    title->unkA = 0;
    title->unk2 = 0;
    title->unk12 = 0x7800;
    title->unk14 = 0x6400;
    title->unk16 = 0xF000;
    title->unk18 = 0x700;
    title->unk1A = 0;
    title->unk1C = 0x8200;

    if (fadeMode == TFM_FADEIN) {
        title->qUnkE = 0x40;
    } else {
        title->qUnkE = 0x100;
    }

    if (title->fadeMode == TFM_UNKNOWN || title->fadeMode == TFM_FADEIN) {
        gBldRegs.bldCnt = 0x3FBF;
    } else if (title->fadeMode == 1) {
        gBldRegs.bldCnt = 0x3FFF;
    }
    gBldRegs.bldY = 0xF;
    title->vram20 = OBJ_VRAM0;
    title->unk24 = 0;

    DmaFill32(3, 0, (void *)BG_CHAR_ADDR_FROM_BGCNT(2), 0x40);

    gBgSprites_Unknown1[2] = 0;
    gBgSprites_Unknown2[2][0] = 0;
    gBgSprites_Unknown2[2][1] = 0;
    gBgSprites_Unknown2[2][2] = -1;
    gBgSprites_Unknown2[2][3] = 0x20;
    gBgSprites_Unknown1[1] = 0;
    gBgSprites_Unknown2[1][0] = 0;
    gBgSprites_Unknown2[1][1] = 0;
    gBgSprites_Unknown2[1][2] = -1;
    gBgSprites_Unknown2[1][3] = 0x20;
    gBgSprites_Unknown1[0] = 0;
    gBgSprites_Unknown2[0][0] = 0;
    gBgSprites_Unknown2[0][1] = 0;
    gBgSprites_Unknown2[0][2] = -1;
    gBgSprites_Unknown2[0][3] = 0x20;

    sub_808A4EC(title);
    sub_808A3D8(title);

    m4aSongNumStart(MUS_TITLE_SCREEN);
}

void sub_808A3D8(TitleScreenSA3 *title)
{
    {
        Sprite *s = &title->spr28;
        s->tiles = title->vram20;
        title->vram20 += gUnknown_080D6898[title->language].numTiles * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D6898[title->language].anim;
        s->variant = gUnknown_080D6898[title->language].variant;
        s->prevVariant = -1;
        s->x = I(title->unk12);
        s->y = I(title->unk14);
        s->oamFlags = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0x1000;
        s->hitboxes[0].index = -1;
        UpdateSpriteAnimation(s);
    }

    {
        Sprite *s = &title->spr78;
        s->tiles = title->vram20;
        title->vram20 += gUnknown_080D68C8.numTiles * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D68C8.anim;
        s->variant = gUnknown_080D68C8.variant;
        s->prevVariant = -1;
        s->x = I(title->unk1A);
        s->y = I(title->unk1C);
        s->oamFlags = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0x1000;
        s->hitboxes[0].index = -1;
        UpdateSpriteAnimation(s);
    }

    {
        Sprite *s = &title->spr50;
        u32 index = (title->language == JAPANESE) ? 0 : 1;
        s->tiles = title->vram20;
        title->vram20 += 14 * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D6858[index * 4].anim;
        s->variant = gUnknown_080D6858[index * 4].variant;
        s->prevVariant = -1;
        s->x = I(title->unk16);
        s->y = I(title->unk18);
        s->oamFlags = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0x1000;
        s->hitboxes[0].index = -1;
        UpdateSpriteAnimation(s);
    }
}

void sub_808A4EC(TitleScreenSA3 *title)
{
    Background *bg0;
    Background *bg1;
    Background *bg2;
    u32 index = (title->language == JAPANESE) ? 0 : 1;
    u32 index2;

    gDispCnt |= DISPCNT_BG0_ON;
    gBgCntRegs[0] = BGCNT_SCREENBASE(23) | BGCNT_CHARBASE(0) | BGCNT_256COLOR | BGCNT_PRIORITY(3);
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    bg0 = &title->bgA0;
    bg0->graphics.dest = (void *)BG_CHAR_ADDR(0);
    bg0->graphics.anim = 0;
    bg0->layoutVram = (u16 *)BG_SCREEN_ADDR(23);
    bg0->unk18 = 0;
    bg0->unk1A = 0;
    bg0->tilemapId = TM_UNKNOWN_292;
    bg0->unk1E = 0;
    bg0->unk20 = 0;
    bg0->unk22 = 0;
    bg0->unk24 = 0;
    bg0->targetTilesX = 240 / TILE_WIDTH;
    bg0->targetTilesY = 160 / TILE_WIDTH;
    bg0->paletteOffset = 0;
    bg0->flags = BACKGROUND_FLAG_4 | BACKGROUND_FLAGS_BG_ID(0);
    DrawBackground(bg0);

    gDispCnt |= DISPCNT_BG1_ON;
    gBgCntRegs[1] = BGCNT_SCREENBASE(31) | BGCNT_CHARBASE(2) | BGCNT_256COLOR | BGCNT_PRIORITY(2);
    gBgScrollRegs[1][0] = -20;
    gBgScrollRegs[1][1] = -8;
    bg1 = &title->bgE0;
    bg1->graphics.dest = (void *)BG_CHAR_ADDR(2);
    bg1->graphics.anim = 0;
    bg1->layoutVram = (u16 *)BG_SCREEN_ADDR(31);
    bg1->unk18 = 0;
    bg1->unk1A = 0;
    bg1->tilemapId = gUnknown_080D68D0[(index2 = index * 4) + 0]; // TODO: This has got to be fake-matched!
    bg1->unk1E = 0;
    bg1->unk20 = 0;
    bg1->unk22 = 0;
    bg1->unk24 = 0;
    bg1->targetTilesX = 200 / TILE_WIDTH;
    bg1->targetTilesY = 80 / TILE_WIDTH;
    bg1->paletteOffset = 0;
    bg1->flags = BACKGROUND_FLAG_4 | BACKGROUND_FLAGS_BG_ID(1);
    DrawBackground(bg1);

    // In DISPCNT_MODE_1 -> BG2 is affine background
    gDispCnt |= DISPCNT_BG2_ON;
    gBgCntRegs[2] = BGCNT_SCREENBASE(29) | BGCNT_CHARBASE(3) | BGCNT_AFF256x256 | BGCNT_256COLOR | 0xD | BGCNT_PRIORITY(1);
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;
    bg2 = &title->bg120;
    bg2->graphics.dest = (void *)BG_CHAR_ADDR(3);
    bg2->graphics.anim = 0;
    bg2->layoutVram = (u16 *)BG_SCREEN_ADDR(29);
    bg2->unk18 = 0;
    bg2->unk1A = 0;
    bg2->tilemapId = gUnknown_080D68D0[index * 4 + 1];
    bg2->unk1E = 0;
    bg2->unk20 = 0;
    bg2->unk22 = 0;
    bg2->unk24 = 0;
    bg2->targetTilesX = 64 / TILE_WIDTH;
    bg2->targetTilesY = 80 / TILE_WIDTH;
    bg2->paletteOffset = 0;
    bg2->flags = BACKGROUND_FLAG_4 | BACKGROUND_FLAGS_BG_ID(2);
    DrawBackground(bg2);
}

#if 01
void Task_TitleScreenMainWithFade(void)
{
    TitleScreenSA3 *title = TASK_DATA(gCurTask);

    gDispCnt |= 0x2000;
    gWinRegs[0] = WIN_RANGE(0, DISPLAY_WIDTH);
    gWinRegs[2] = WIN_RANGE(0, DISPLAY_HEIGHT);
    gWinRegs[4] = 0x22;
    gWinRegs[5] = 0;
    if (title->fadeMode == TFM_UNKNOWN || title->fadeMode == TFM_FADEIN) {
        gBldRegs.bldCnt = 0x3FBF;
        gBldRegs.bldY = 0x10;
        title->fadeMode = 3;
        title->unkA = 0x1000;
        title->unk24 = 0x40000;
    } else if (title->fadeMode == TFM_NO_FADE) {
        gBldRegs.bldCnt = 0x3FFF;
        gBldRegs.bldY = 0x10;
        title->fadeMode = 3;
        title->unkA = 0x1000;
        title->unk24 = 0x40000;
    }
    sub_808AEDC(title);

    if (gBldRegs.bldY) {
        gBldRegs.bldY = I(title->unkA);
        title->unkA -= title->qUnkE;

        if (START_BUTTON & gPressedKeys) {
            gBldRegs.bldY = 0;
            title->qUnkE = 0x100;
            gCurTask->main = Task_TitleScreenMainFadeless;
        }
    } else {
        gBldRegs.bldY = 0;
        if ((u32)title->qUnkE > 0xFFU) {
            gCurTask->main = Task_808ABD0;
        } else {
            gWinRegs[4] = 0x26;
            gBldRegs.bldCnt = 0x2244;
            title->unk10 = 0;
            gBldRegs.bldAlpha = gUnknown_080D68E0[0];
            gCurTask->main = Task_808A854;
        }
    }
}

void Task_808A768(void)
{
    TitleScreenSA3 *title = TASK_DATA(gCurTask);
    gBldRegs.bldCnt = 0x3FFF;
    if (title->fadeMode == 0) {
        gBldRegs.bldY = 0;
        title->fadeMode = 2;
        title->unkA = 0;
    }
    if ((s32)(s16)title->unk1E > 7) {
        title->unk1E = 0;
    }
    if ((s32)(s16)title->unk1E > 1) {
        sub_808AEA4(title);
    }
    sub_808AEC0(title);
    title->unk8 -= 1;
    title->unk1E += 1;
    if (gBldRegs.bldY < 0xF) {
        gBldRegs.bldY = (u16)((u16)title->unkA >> 8);
        title->unkA += 0x100;
    } else {
        LaunchChaoMenu(0, 1);
        TaskDestroy(gCurTask);
    }
}

void Task_808A7F0(void)
{
    TitleScreenSA3 *title = TASK_DATA(gCurTask);
    u16 temp_r0;

    sub_808AEC0(title);
    if ((title->fadeMode == 0) && (gBldRegs.bldY != 0)) {
        gBldRegs.bldY = (u16)((u16)title->unkA >> 8);
        title->unkA -= Q(1);
    }
    temp_r0 = title->unk8;
    if (temp_r0 != 0) {
        title->unk8 = temp_r0 - 1;
        return;
    }
    gCurTask->main = Task_808ABD0;
}

void Task_808A854(void)
{
    TitleScreenSA3 *title = TASK_DATA(gCurTask);
    s32 temp_r0;
    u16 temp_r0_2;
    u16 temp_r1;
    u8 var_r5;

    var_r5 = 0;
    temp_r0 = title->unk24 - Q(32);
    title->unk24 = temp_r0;
    if (temp_r0 < 0x10000) {
        title->unk24 = 0x10000;
        var_r5 = 1;
    }
    if (((u32)(title->unk10 >> 8) > 0xFU)) {
        title->unk10 = 0x1000;
        var_r5 += 1;
    } else {
        title->unk10 += 0x100;
        if (I(title->unk10) > 0x10U) {
            title->unk10 = 0x1000;
            var_r5 += 1;
        }
    }
    gBldRegs.bldAlpha = gUnknown_080D68E0[I(title->unk10)];
    sub_808AEDC(title);
    if ((u32)var_r5 > 1) {
        title->unk1 = 0;
        gCurTask->main = Task_808A8E4;
    }
}

void Task_808A8E4(void)
{
    TitleScreenSA3 *title = TASK_DATA(gCurTask);
    s32 temp_r2;
    u8 temp_r0;

    gBgScrollRegs[1][0] = -20 - gUnknown_080D694C[title->unk1];
    gBgScrollRegs[1][1] = -8 - gUnknown_080D6956[title->unk1];
    temp_r2 = (s32)(title->unk24 << 8) >> 0x10;
    sa2__sub_8003EE4(0U, (s16)temp_r2, (s16)temp_r2, 0x20, 0x28, (s16)(gUnknown_080D694C[title->unk1] + 0xB4),
                     (s16)(gUnknown_080D6956[title->unk1] + 0x30), gBgAffineRegs);

    if (++title->unk1 > 9U) {
        gDispCnt |= 0x2000;
        gWinRegs[0] = 0xF0;
        gWinRegs[2] = 0xA0;
        gWinRegs[4] |= 0x26;
        gBldRegs.bldCnt = 0x3FBF;
        gBldRegs.bldY = 0;
        title->fadeMode = 3;
        title->unkA = 0;
        title->qUnkE = 0x200;
        gCurTask->main = Task_808A9D8;
    }
}

void Task_808A9D8(void)
{
    TitleScreenSA3 *title = TASK_DATA(gCurTask);
    sub_808AEDC(title);
    if ((u32)gBldRegs.bldY <= 0xEU) {
        gBldRegs.bldY = (u16)((u16)title->unkA >> 8);
        title->unkA += title->qUnkE;
        return;
    }
    gBldRegs.bldY = 0xF;
    title->unkA = 0xF00;
    gWinRegs[4] |= 0x33;
    gCurTask->main = Task_TitleScreenMainFadeless;
}

void Task_TitleScreenMainFadeless(void)
{
    TitleScreenSA3 *title = TASK_DATA(gCurTask);
    u8 lang = title->language;
    u32 index = (lang == JAPANESE) ? 0 : 1;
    Background *bg1;
    gDispCnt = (0xFBFF & gDispCnt) | 0x200;
    gBgCntRegs[1] = 0x1F8A;
    gBgScrollRegs[1][0] = -0x14;
    gBgScrollRegs[1][1] = -8;

    bg1 = &title->bgE0;
    bg1->graphics.dest = (void *)0x06008000;
    bg1->graphics.anim = 0;
    bg1->layoutVram = (u16 *)0x0600F800;
    bg1->unk18 = 0;
    bg1->unk1A = 0;
    bg1->tilemapId = gUnknown_080D68D0[index * 4 + 2];
    bg1->unk1E = 0;
    bg1->unk20 = 0;
    bg1->unk22 = 0;
    bg1->unk24 = 0;
    bg1->targetTilesX = 200 / TILE_WIDTH;
    bg1->targetTilesY = 80 / TILE_WIDTH;
    bg1->paletteOffset = 0;
    bg1->flags = 5;
    DrawBackground(bg1);

    gDispCnt |= 0x2000;
    gWinRegs[0] = 0xF0;
    gWinRegs[2] = 0xA0;
    gWinRegs[4] |= 0x26;
    gBldRegs.bldCnt = 0x3FBF;
    gBldRegs.bldY = 0xF;
    title->unkA = 0xF00;
    gWinRegs[4] |= 0x33;
    gCurTask->main = Task_TitleAnnouncer;
}

void Task_TitleAnnouncer(void)
{
    TitleScreenSA3 *title = TASK_DATA(gCurTask);
    u16 temp_r0;
    u16 temp_r1;

    if ((u32)title->qUnkE > 0xFFU) {
        sub_808AEC0(title);
    }
    temp_r1 = gBldRegs.bldY;
    if (temp_r1 == 0) {
        gBldRegs.bldY = temp_r1;
        title->unk8 = 0x3C;
        title->fadeMode = temp_r1;
        gCurTask->main = Task_808A7F0;
        m4aSongNumStart(VOICE__ANNOUNCER__SONIC_ADVANCE_3);
        return;
    }
    gBldRegs.bldY = (u16)((u16)title->unkA >> 8);
    title->unkA -= title->qUnkE;
    if (title->unkA > Q(15)) {
        title->unkA = 0;
    }
    if (START_BUTTON & gPressedKeys) {
        title->unk8 = 0x3C;
        title->fadeMode = 0;
        gCurTask->main = Task_808A7F0;
    }
}

void Task_808ABD0(void)
{
    TitleScreenSA3 *title = TASK_DATA(gCurTask);
    u16 temp_r1;
    u16 temp_r3;
    u8 temp_r0;

    sub_808AEC0(title);
    if ((s32)(s16)title->unk1E > 0x5A) {
        title->unk1E = 0;
    }
    if ((s32)(s16)title->unk1E > 0x1D) {
        sub_808AEA4(title);
    }
    sub_808AEC0(title);

    if (START_BUTTON & gPressedKeys) {
        m4aSongNumStart(SE_SELECT);
        title->unk6 = 25;
        title->unk1E = 2;
        gCurTask->main = Task_808AE4C;
        return;
    }

    if (title->unk6 >= TIME(0, 10)) {
        LaunchDemoPlay();
        return;
    }

    if ((title->unk6 > TIME(0, 1)) && (R_BUTTON & gPressedKeys)) {
        if ((u32)title->unk4 <= 0xB3U) {
            if (++gStageData.unk8 > 2U) {
                gStageData.unk8 = 0;
            }
        }
        title->unk4 = 0;
        title->unk6 = 0;
        sub_808AD14(title);
        MPlayStop(gMPlayTable->info);
        m4aSongNumStop(VOICE__ANNOUNCER__SONIC_ADVANCE_3);
        m4aSongNumStart(SE_SELECT);
    }

    if ((u32)title->unk4 <= 0xB3U) {
        sub_808ACC0(title);
        title->unk4 += 1;
    }
    title->unk6 += 1;
    title->unk1E += 1;
}

void sub_808ACC0(TitleScreenSA3 *title)
{
    u32 index = (title->language == JAPANESE) ? 0 : 1;
    Sprite *s = &title->spr50;

    s->anim = gUnknown_080D6858[gStageData.unk8 + index * 0x4].anim;
    s->variant = gUnknown_080D6858[gStageData.unk8 + index * 0x4].variant;
    s->x = I(title->unk16);
    s->y = I(title->unk18);

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

// TODO: Cleanup!
void sub_808AD14(TitleScreenSA3 *title)
{
    MaskingColors rgbVals[5];
    MaskingColors *rgb = &rgbVals[0];
    MaskingColors *rgbB;
    MaskingColors *pRgb1;
    MaskingColors *pRgb2;
    u8 *src;
    s32 sp8;
    Background *bg;
    rgb->r = gUnknown_080D6902[gStageData.unk8][0];
    rgb->g = gUnknown_080D6902[gStageData.unk8][1];
    rgb->b = gUnknown_080D6902[gStageData.unk8][2];
    pRgb1 = &rgbVals[1];
    pRgb1->r = gUnknown_080D690E[gStageData.unk8][0];
    pRgb1->g = gUnknown_080D690E[gStageData.unk8][1];
    pRgb1->b = gUnknown_080D690E[gStageData.unk8][2];
    pRgb2 = &rgbVals[2];
    src = gUnknown_080D691C;
    pRgb2[0] = *(MaskingColors *)&src[gStageData.unk8 * 12 + 0];
    pRgb2[1] = *(MaskingColors *)&gUnknown_080D691C[gStageData.unk8 * 12 + 4];
    pRgb2[2] = *(MaskingColors *)&gUnknown_080D691C[gStageData.unk8 * 12 + 8];
    sub_80C4B48();
    sub_80C47C0(&rgbVals[0]);
    sub_80C470C(pRgb1);
    sub_80C492C(pRgb2);
    bg = &title->bgA0;
    bg->flags = 0xC;
    DrawBackground(bg);
    gFlags |= 0x30000;
}

void sub_808ADF0(u8 param0)
{
    if (param0 == 0) {
        sub_8001D58(sub_808AE28, 0);
        return;
    } else if (param0 == 2) {
        sub_8001D58(sub_808AE40, 0);
        return;
    } else {
        sub_8001D58(sub_808AE34, 0);
    }
}

void sub_808AE28(void) { CreateTitleScreen(TFM_UNKNOWN); }

void sub_808AE34(void) { CreateTitleScreen(TFM_NO_FADE); }

void sub_808AE40(void) { CreateTitleScreen(TFM_FADEIN); }

void Task_808AE4C(void)
{
    TitleScreenSA3 *title = TASK_DATA(gCurTask);
    u16 temp_r1;
    u16 temp_r1_2;

    sub_808AEC0(title);
    if ((s32)(s16)title->unk1E > 7) {
        title->unk1E = 0;
    }
    if ((s32)(s16)title->unk1E > 1) {
        sub_808AEA4(title);
    }

    title->unk6--;
    title->unk1E++;

    if (title->unk6 == 0) {
        title->fadeMode = 0;
        gCurTask->main = Task_808A768;
    }
}

void sub_808AEA4(TitleScreenSA3 *title)
{
    Sprite *s = &title->spr28;
    s->x = I(title->unk12);
    s->y = I(title->unk14);
    DisplaySprite(s);
}

void sub_808AEC0(TitleScreenSA3 *title)
{
    Sprite *s = &title->spr78;
    s->x = I(title->unk1A);
    s->y = I(title->unk1C);
    DisplaySprite(s);
}

void sub_808AEDC(TitleScreenSA3 *title)
{
    s32 temp_r2 = I(title->unk24);
    sa2__sub_8003EE4(0U, temp_r2, temp_r2, 0x20, 0x28, 0xB4, 0x30, gBgAffineRegs);
}

void TaskDestructor_TitleScreen(Task *t)
{
    if (gStageData.unk8) {
        gFlags |= 0x30000;
    } else {
        gFlags &= ~0x30000;
    }
}
#endif