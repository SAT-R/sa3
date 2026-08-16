#include "global.h"
#include "core.h"
#include "lib/m4a/m4a.h"
#include "game/sa3/title_screen.h"
#include "game/save.h"
#include "constants/songs.h"

void Task_TitleScreenMainWithFade(void);
void sub_808A3D8(TitleScreenSA3 *title);
void sub_808A4EC(TitleScreenSA3 *title);
void Task_808A768(void);
void Task_808A7F0(void);
void Task_808A854(void);
void Task_808A8E4(void);
void Task_808A9D8(void);
void Task_TitleScreenMainFadeless(void);
void Task_TitleAnnouncer(void);
void Task_808ABD0(void);
void Task_808AE4C(void);
void TaskDestructor_TitleScreen(Task *t);

extern TileInfo2 gUnknown_080D6898[6];

void CreateTitleScreen(u8 fadeMode)
{
    Task *t;
    TitleScreenSA3 *title;

    gDispCnt = DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP | DISPCNT_MODE_1;

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

#if 0
void sub_808A3D8(TitleScreenSA3 *title) {
    Sprite *temp_r0;
    Sprite *temp_r0_2;
    Sprite *temp_r0_3;
    u8 *temp_r1_2;
    u8 *temp_r2;
    u8 *temp_r3;
    u8 temp_r1;
    void *temp_r2_2;

    temp_r0 = arg0 + 0x28;
    temp_r3 = arg0->unk20;
    arg0->spr28.tiles = temp_r3;
    arg0->unk20 = (u8 *) (temp_r3 + (*((arg0->unk0 * 8) + (&gUnknown_080D6898 + 4)) << 5));
    temp_r0->anim = *((arg0->unk0 * 8) + &gUnknown_080D6898);
    temp_r0->variant = ((arg0->unk0 * 8) + &gUnknown_080D6898)->unk2;
    temp_r0->prevVariant = 0xFF;
    temp_r0->x = (s16) ((u16) arg0->unk12 >> 8);
    temp_r0->y = (s16) ((u16) arg0->unk14 >> 8);
    temp_r0->oamFlags = 0;
    temp_r0->animCursor = 0;
    temp_r0->qAnimDelay = 0;
    temp_r0->animSpeed = 0x10;
    temp_r0->palId = 0;
    temp_r0->frameFlags = 0x1000;
    temp_r0->hitboxes[0].index = -1;
    UpdateSpriteAnimation(temp_r0);

    temp_r0_2 = arg0 + 0x78;
    temp_r2 = arg0->unk20;
    arg0->spr78.tiles = temp_r2;
    arg0->unk20 = (u8 *) (temp_r2 + (gUnknown_080D68C8.unk4 << 5));
    temp_r0_2->anim = gUnknown_080D68C8.unk0;
    temp_r0_2->variant = gUnknown_080D68C8.unk2;
    temp_r0_2->prevVariant = -1;
    temp_r0_2->x = (s16) ((u16) arg0->unk1A >> 8);
    temp_r0_2->y = (s16) ((u16) arg0->unk1C >> 8);
    temp_r0_2->oamFlags = 0;
    temp_r0_2->animCursor = 0;
    temp_r0_2->qAnimDelay = 0;
    temp_r0_2->animSpeed = 0x10;
    temp_r0_2->palId = 0;
    temp_r0_2->frameFlags = 0x1000;
    temp_r0_2->hitboxes[0].index = -1;
    UpdateSpriteAnimation(temp_r0_2);

    temp_r0_3 = arg0 + 0x50;
    temp_r1 = arg0->unk0;
    temp_r1_2 = arg0->unk20;
    arg0->spr50.tiles = temp_r1_2;
    arg0->unk20 = (u8 *) (temp_r1_2 + 0x1C0);
    temp_r2_2 = (((u32) ((0 - temp_r1) | temp_r1) >> 0x1F) << 5) + &gUnknown_080D6858;
    temp_r0_3->anim = temp_r2_2->unk0;
    temp_r0_3->variant = temp_r2_2->unk2;
    temp_r0_3->prevVariant = -1;
    temp_r0_3->x = (s16) ((u16) arg0->unk16 >> 8);
    temp_r0_3->y = (s16) ((u16) arg0->unk18 >> 8);
    temp_r0_3->oamFlags = 0;
    temp_r0_3->animCursor = 0;
    temp_r0_3->qAnimDelay = 0;
    temp_r0_3->animSpeed = 0x10;
    temp_r0_3->palId = 0;
    temp_r0_3->frameFlags = 0x1000;
    temp_r0_3->hitboxes[0].index = -1;
    UpdateSpriteAnimation(temp_r0_3);
}

void sub_808A4EC(TitleScreenSA3 *title) {
    Background *temp_r0_2;
    Background *temp_r0_3;
    Background *temp_r0_4;
    u32 temp_r6;
    u8 temp_r0;

    temp_r0 = arg0->unk0;
    temp_r6 = (u32) ((0 - temp_r0) | temp_r0) >> 0x1F;
    gDispCnt |= 0x100;
    gBgCntRegs->unk0 = 0x1783;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    temp_r0_2 = arg0 + 0xA0;
    temp_r0_2->graphics.dest = (void *)0x06000000;
    temp_r0_2->graphics.anim = 0;
    temp_r0_2->layoutVram = (u16 *)0x0600B800;
    temp_r0_2->unk18 = 0;
    temp_r0_2->unk1A = 0;
    temp_r0_2->tilemapId = 0x124;
    temp_r0_2->unk1E = 0;
    temp_r0_2->unk20 = 0;
    temp_r0_2->unk22 = 0;
    temp_r0_2->unk24 = 0;
    temp_r0_2->targetTilesX = 0x1E;
    temp_r0_2->targetTilesY = 0x14;
    arg0->bgA0.paletteOffset = 0;
    temp_r0_2->flags = 4;
    DrawBackground(temp_r0_2);

    gDispCnt |= 0x200;
    gBgCntRegs[1] = 0x1F8A;
    gBgScrollRegs[1][0] = -0x14;
    gBgScrollRegs[1][1] = -8;
    temp_r0_3 = arg0 + 0xE0;
    temp_r0_3->graphics.dest = (void *)0x06008000;
    temp_r0_3->graphics.anim = 0;
    temp_r0_3->layoutVram = (u16 *)0x0600F800;
    temp_r0_3->unk18 = 0;
    temp_r0_3->unk1A = 0;
    temp_r0_3->tilemapId = *((temp_r6 * 8) + &gUnknown_080D68D0);
    temp_r0_3->unk1E = 0;
    temp_r0_3->unk20 = 0;
    temp_r0_3->unk22 = 0;
    temp_r0_3->unk24 = 0;
    temp_r0_3->targetTilesX = 0x19;
    temp_r0_3->targetTilesY = 0xA;
    arg0->bgE0.paletteOffset = 0;
    temp_r0_3->flags = 5;
    DrawBackground(temp_r0_3);

    gDispCnt |= DISPCNT_BG2_ON;
    gBgCntRegs[2] = 0x5D8D;
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;
    temp_r0_4 = arg0 + 0x120;
    temp_r0_4->graphics.dest = (void *)0x0600C000;
    temp_r0_4->graphics.anim = 0;
    temp_r0_4->layoutVram = (u16 *)0x0600E800;
    temp_r0_4->unk18 = 0;
    temp_r0_4->unk1A = 0;
    temp_r0_4->tilemapId = *((((temp_r6 * 4) + 1) * 2) + &gUnknown_080D68D0);
    temp_r0_4->unk1E = 0;
    temp_r0_4->unk20 = 0;
    temp_r0_4->unk22 = 0;
    temp_r0_4->unk24 = 0;
    temp_r0_4->targetTilesX = 8;
    temp_r0_4->targetTilesY = 0xA;
    arg0->bg120.paletteOffset = 0;
    temp_r0_4->flags = 6;
    DrawBackground(temp_r0_4);
}

void Task_TitleScreenMainWithFade(TitleScreenSA3 *title) {
    u16 *var_r1;
    u16 temp_r0;
    u16 temp_r2;
    u16 var_r0;
    void (*var_r0_2)(TitleScreenSA3 *);

    gDispCnt |= 0x2000;
    var_r1 = gWinRegs;
    gWinRegs->unk0 = 0xF0;
    gWinRegs[2] = 0xA0;
    gWinRegs[4] = 0x22;
    gWinRegs[5] = 0;
    temp_r0 = title->fadeMode;
    switch (temp_r0) {                              /* irregular */
    case 0:
    case 2:
        var_r1 = &gBldRegs.bldCnt;
        var_r0 = 0x3FBF;
block_5:
        gBldRegs.bldCnt = var_r0;
        gBldRegs.bldY = 0x10;
        title->fadeMode = 3;
        title->unkA = 0x1000;
        title->unk24 = 0x40000;
        break;
    case 1:
        var_r1 = &gBldRegs.bldCnt;
        var_r0 = 0x3FFF;
        goto block_5;
    }
    sub_808AEDC(title, (struct BlendRegs *) var_r1, 0, 0);
    temp_r2 = gBldRegs.bldY;
    if (temp_r2 != 0) {
        gBldRegs.bldY = (u16) ((u16) title->unkA >> 8);
        title->unkA -= title->qUnkE;
        if (8 & gPressedKeys) {
            gBldRegs.bldY = 0;
            title->qUnkE = 0x100;
            var_r0_2 = Task_TitleScreenMainFadeless;
            goto block_12;
        }
    } else {
        gBldRegs.bldY = temp_r2;
        if ((u32) title->qUnkE > 0xFFU) {
            var_r0_2 = Task_808ABD0;
        } else {
            gWinRegs[4] = 0x26;
            gBldRegs.bldCnt = 0x2244;
            title->unk10 = temp_r2;
            gBldRegs.bldAlpha = gUnknown_080D68E0;
            var_r0_2 = Task_808A854;
        }
block_12:
        gCurTask->main = var_r0_2;
    }
}

void Task_808A768(TitleScreenSA3 *title) {
    gBldRegs.bldCnt = 0x3FFF;
    if (title->fadeMode == 0) {
        gBldRegs.bldY = 0;
        title->fadeMode = 2;
        title->unkA = 0;
    }
    if ((s32) (s16) title->unk1E > 7) {
        title->unk1E = 0;
    }
    if ((s32) (s16) title->unk1E > 1) {
        sub_808AEA4(title);
    }
    sub_808AEC0(title);
    title->unk8 -= 1;
    title->unk1E += 1;
    if ((u32) gBldRegs.bldY <= 0xEU) {
        gBldRegs.bldY = (u16) ((u16) title->unkA >> 8);
        title->unkA += 0x100;
        return;
    }
    LaunchChaoMenu(0, 1);
    TaskDestroy(gCurTask);
}

void Task_808A7F0(TitleScreenSA3 *title) {
    u16 temp_r0;

    sub_808AEC0(title);
    if ((title->fadeMode == 0) && (gBldRegs.bldY != 0)) {
        gBldRegs.bldY = (u16) ((u16) title->unkA >> 8);
        title->unkA += 0xFFFFFF00;
    }
    temp_r0 = title->unk8;
    if (temp_r0 != 0) {
        title->unk8 = temp_r0 - 1;
        return;
    }
    gCurTask->main = Task_808ABD0;
}

void Task_808A854(TitleScreenSA3 *title) {
    s32 temp_r0;
    u16 temp_r0_2;
    u16 temp_r1;
    u8 var_r5;

    var_r5 = 0;
    temp_r0 = title->unk24 + 0xFFFFE000;
    title->unk24 = temp_r0;
    if (temp_r0 <= 0xFFFF) {
        title->unk24 = 0x10000;
        var_r5 = 1;
    }
    temp_r1 = title->unk10;
    if (((u32) (temp_r1 >> 8) > 0xFU) || (temp_r0_2 = temp_r1 + 0x100, title->unk10 = temp_r0_2, ((u32) ((u32) (temp_r0_2 << 0x10) >> 0x18) > 0x10U))) {
        title->unk10 = 0x1000;
        var_r5 += 1;
    }
    gBldRegs.bldAlpha = (&gUnknown_080D68E0)[(u16) title->unk10 >> 8];
    sub_808AEDC(title);
    if ((u32) var_r5 > 1) {
        title->unk1 = 0;
        gCurTask->main = Task_808A8E4;
    }
}

void Task_808A8E4(TitleScreenSA3 *title) {
    s32 temp_r2;
    u8 temp_r0;

    gBgScrollRegs[1][0] = -0x14 - *(title->unk1 + &gUnknown_080D694C);
    gBgScrollRegs[1][1] = -8 - *(title->unk1 + &gUnknown_080D6956);
    temp_r2 = (s32) (title->unk24 << 8) >> 0x10;
    sa2__sub_8003EE4(0U, (s16) temp_r2, (s16) temp_r2, 0x20, 0x28, (s16) ((s8) *(title->unk1 + &gUnknown_080D694C) + 0xB4), (s16) ((s8) *(title->unk1 + &gUnknown_080D6956) + 0x30), gBgAffineRegs);
    temp_r0 = title->unk1 + 1;
    title->unk1 = temp_r0;
    if ((u32) temp_r0 > 9U) {
        gDispCnt |= 0x2000;
        gWinRegs->unk0 = 0xF0;
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

void Task_808A9D8(TitleScreenSA3 *title) {
    sub_808AEDC(title);
    if ((u32) gBldRegs.bldY <= 0xEU) {
        gBldRegs.bldY = (u16) ((u16) title->unkA >> 8);
        title->unkA += title->qUnkE;
        return;
    }
    gBldRegs.bldY = 0xF;
    title->unkA = 0xF00;
    gWinRegs[4] |= 0x33;
    gCurTask->main = Task_TitleScreenMainFadeless;
}

void Task_TitleScreenMainFadeless(TitleScreenSA3 *title) {
    u8 lang = title->language;
    gDispCnt = (0xFBFF & gDispCnt) | 0x200;
    gBgCntRegs[1] = 0x1F8A;
    gBgScrollRegs[1][0] = -0x14;
    gBgScrollRegs[1][1] = -8;
    title->bgE0.graphics.dest = (void *)0x06008000;
    title->bgE0.graphics.anim = 0;
    title->bgE0.layoutVram = (u16 *)0x0600F800;
    title->bgE0.unk18 = 0;
    title->bgE0.unk1A = 0;
    title->bgE0.tilemapId = *((((((u32) ((0 - lang) | lang) >> 0x1F) * 4) + 2) * 2) + &gUnknown_080D68D0);
    title->bgE0.unk1E = 0;
    title->bgE0.unk20 = 0;
    title->bgE0.unk22 = 0;
    title->bgE0.unk24 = 0;
    title->bgE0.targetTilesX = 0x19;
    title->bgE0.targetTilesY = 0xA;
    title->bgE0.paletteOffset = 0;
    title->bgE0.flags = 5;
    DrawBackground(&title->bgE0);
    gDispCnt |= 0x2000;
    gWinRegs->unk0 = 0xF0;
    gWinRegs[2] = 0xA0;
    gWinRegs[4] |= 0x26;
    gBldRegs.bldCnt = 0x3FBF;
    gBldRegs.bldY = 0xF;
    title->unkA = 0xF00;
    gWinRegs[4] |= 0x33;
    gCurTask->main = Task_TitleAnnouncer;
}

void Task_TitleAnnouncer(TitleScreenSA3 *title) {
    u16 temp_r0;
    u16 temp_r1;

    if ((u32) title->qUnkE > 0xFFU) {
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
    gBldRegs.bldY = (u16) ((u16) title->unkA >> 8);
    temp_r0 = title->unkA - title->qUnkE;
    title->unkA = temp_r0;
    if ((u32) (temp_r0 << 0x10) > 0x0F000000U) {
        title->unkA = 0;
    }
    if (8 & gPressedKeys) {
        title->unk8 = 0x3C;
        title->fadeMode = 0;
        gCurTask->main = Task_808A7F0;
    }
}

void Task_808ABD0(TitleScreenSA3 *title) {
    u16 temp_r1;
    u16 temp_r3;
    u8 temp_r0;

    sub_808AEC0(title);
    if ((s32) (s16) title->unk1E > 0x5A) {
        title->unk1E = 0;
    }
    if ((s32) (s16) title->unk1E > 0x1D) {
        sub_808AEA4(title);
    }
    sub_808AEC0(title);
    temp_r3 = 8 & gPressedKeys;
    if (temp_r3 != 0) {
        m4aSongNumStart(SE_SELECT);
        title->unk6 = 0x19;
        title->unk1E = 2;
        gCurTask->main = Task_808AE4C;
        return;
    }
    temp_r1 = title->unk6;
    if ((u32) temp_r1 > 0x257U) {
        LaunchDemoPlay();
        return;
    }
    if (((u32) temp_r1 > 0x3CU) && (0x100 & gPressedKeys)) {
        if ((u32) title->unk4 <= 0xB3U) {
            temp_r0 = gStageData.unk8 + 1;
            gStageData.unk8 = temp_r0;
            if ((u32) temp_r0 > 2U) {
                gStageData.unk8 = (u8) temp_r3;
            }
        }
        title->unk4 = 0;
        title->unk6 = 0;
        sub_808AD14(title);
        MPlayStop(gMPlayTable->info);
        m4aSongNumStop(VOICE__ANNOUNCER__SONIC_ADVANCE_3);
        m4aSongNumStart(SE_SELECT);
    }
    if ((u32) title->unk4 <= 0xB3U) {
        sub_808ACC0(title);
        title->unk4 += 1;
    }
    title->unk6 += 1;
    title->unk1E += 1;
}

void sub_808ACC0(TitleScreenSA3 *title) {
    Sprite *temp_r4;
    s32 temp_r2;
    u8 temp_r1;

    temp_r1 = arg0->unk0;
    temp_r4 = arg0 + 0x50;
    temp_r2 = ((u32) ((0 - temp_r1) | temp_r1) >> 0x1F) * 4;
    temp_r4->anim = *(((gStageData.unk8 + temp_r2) * 8) + &gUnknown_080D6858);
    temp_r4->variant = (((gStageData.unk8 + temp_r2) * 8) + &gUnknown_080D6858)->unk2;
    temp_r4->x = (s16) ((u16) arg0->unk16 >> 8);
    temp_r4->y = (s16) ((u16) arg0->unk18 >> 8);
    UpdateSpriteAnimation(temp_r4);
    DisplaySprite(temp_r4);
}

void sub_808AD14(TitleScreenSA3 *title) {
    ? sp4;
    s32 sp8;
    Background *temp_r6;

    subroutine_arg0.unk0 = (u8) *((gStageData.unk8 * 3) + &gUnknown_080D6902);
    subroutine_arg0.unk1 = (u8) *((gStageData.unk8 * 3) + (&gUnknown_080D6902 + 1));
    subroutine_arg0.unk2 = (u8) *((gStageData.unk8 * 3) + (&gUnknown_080D6902 + 2));
    sp4.unk0 = (u8) *((gStageData.unk8 * 3) + &gUnknown_080D690E);
    sp4.unk1 = (u8) *((gStageData.unk8 * 3) + (&gUnknown_080D690E + 1));
    sp4.unk2 = (u8) *((gStageData.unk8 * 3) + (&gUnknown_080D690E + 2));
    sp8 = *((gStageData.unk8 * 0xC) + &gUnknown_080D691C);
    sp8.unk4 = (s32) *((gStageData.unk8 * 0xC) + (&gUnknown_080D691C + 4));
    sp8.unk8 = (s32) *((gStageData.unk8 * 0xC) + (&gUnknown_080D691C + 8));
    sub_80C4B48();
    sub_80C47C0(&subroutine_arg0);
    sub_80C470C(&sp4);
    sub_80C492C(&sp8);
    temp_r6 = arg0 + 0xA0;
    temp_r6->flags = 0xC;
    DrawBackground(temp_r6);
    gFlags |= 0x30000;
}

void sub_808ADF0(u8 param0) {
    u8 temp_r0;
    void (*var_r0)(TitleScreenSA3 *);

    temp_r0 = param0;
    if (temp_r0 == 0) {
		sub_8001D58(sub_808AE28, 0);
		return;
    } else if (temp_r0 == 2) {
        sub_8001D58(sub_808AE40, 0);
        return;
	} else {
		sub_8001D58(sub_808AE34, 0);
	}

}

void sub_808AE28(void) {
    CreateTitleScreen(TFM_UNKNOWN);
}

void sub_808AE34(void) {
    CreateTitleScreen(TFM_NO_FADE);
}

void sub_808AE40(void) {
    CreateTitleScreen(TFM_FADEIN);
}

void Task_808AE4C(TitleScreenSA3 *title) {
    u16 temp_r1;
    u16 temp_r1_2;

    sub_808AEC0(title);
    if ((s32) (s16) title->unk1E > 7) {
        title->unk1E = 0;
    }
    if ((s32) (s16) title->unk1E > 1) {
        sub_808AEA4(title);
    }
    temp_r1 = title->unk6 - 1;
    title->unk6 = temp_r1;
    title->unk1E += 1;
    temp_r1_2 = temp_r1;
    if (temp_r1_2 == 0) {
        title->fadeMode = temp_r1_2;
        gCurTask->main = Task_808A768;
    }
}

void sub_808AEA4(TitleScreenSA3 *title) {
    Sprite *temp_r2;

    temp_r2 = arg0 + 0x28;
    temp_r2->x = (s16) ((u16) arg0->unk12 >> 8);
    temp_r2->y = (s16) ((u16) arg0->unk14 >> 8);
    DisplaySprite(temp_r2);
}

void sub_808AEC0(TitleScreenSA3 *title) {
    Sprite *temp_r2;

    temp_r2 = arg0 + 0x78;
    temp_r2->x = (s16) ((u16) arg0->unk1A >> 8);
    temp_r2->y = (s16) ((u16) arg0->unk1C >> 8);
    DisplaySprite(temp_r2);
}

void sub_808AEDC(TitleScreenSA3 *title) {
    s32 temp_r2;

    temp_r2 = (s32) (arg0->unk24 << 8) >> 0x10;
    sa2__sub_8003EE4(0U, (s16) temp_r2, (s16) temp_r2, 0x20, 0x28, 0xB4, 0x30, gBgAffineRegs);
}

void TaskDestructor_TitleScreen(Task *t) {
    if (gStageData.unk8) {
        gFlags |= 0x30000;
    } else {
        gFlags &= ~0x30000;
    }
}
#endif