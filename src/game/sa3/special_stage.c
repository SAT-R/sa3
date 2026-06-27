#include "global.h"
#include "core.h"
#include "trig.h"
#include "malloc_ewram.h"
#include "game/code_1_3.h" // DmaIoData
#include "lib/m4a/m4a.h"
//#include "code_0_1.h" // WarpToMap (see comment below)
#include "game/special_stage.h"
#include "game/save.h"
#include "game/screen_fade.h"
#include "game/stage.h"
#include "constants/animations.h"
#include "constants/move_states.h"
#include "constants/songs.h"

/* TODO: WarpToMap needs to be declared like this for the call in Task_80B7470() to match to match:
 * 'void WarpToMap(s32 level, s16 warpId);'
 * but level is s16 in the implementation and most other calls... */
extern void WarpToMap(s32 level, s16 warpId);
// declare sub_8001E58() here because of the WarpToMap issue
bool32 sub_8001E58(void);

extern s32 UpdateSpriteAnimation_BG(Sprite *);
extern void sub_80BE46C(Sprite *s);

void sub_80B1AF4(s16 param0, s16 param1, u8 param2)
{
    s32 *temp_r0;
    s32 temp_r0_3;
    UnkArg2 *temp_r2;
    s16 var_r2;
    u8 temp_r0_2;
    u8 temp_r1;

    gStageData.taskA0 = NULL;
    gStageData.act = 0xA;
    gStageData.unk85 = 0;
    gStageData.unk4 = 3;
    gPlayers[gStageData.playerIndex].moveState &= ~MOVESTATE_DEAD;
    sub_80B6B20();
    temp_r2 = TASK_DATA(TaskCreate(Task_8E8_80B2228, sizeof(UnkArg2), 0x2000U, 0U, TaskDestructor_80B2224));
    temp_r2->unk8B0 = 0x01000000;
    temp_r2->unk8B4 = 0x01000000;
    temp_r2->unk8B8 = 0;
    temp_r2->unk8BC = 0x200;
    if (param0 < 5) {
        temp_r2->unk8C6 = param0;
    } else {
        temp_r2->unk8C6 = 2;
    }
    temp_r2->unk8C7 = param1;
    temp_r2->unk8BE = 0;
    temp_r2->unk8CA = 1;
    temp_r2->unk8CB = 2;
    temp_r2->unk8CC = 0;
    temp_r2->unk8CD = 0;
    temp_r2->unk8C0 = 0;
    temp_r2->unk8C2 = gUnknown_080DBE82[param1][0];
    temp_r2->unk8C4 = 0;
    temp_r2->unk8C8 = 0;
    temp_r2->unk8CE = 0;
    temp_r2->unk8CF = 0;
    temp_r2->unk8D0 = 0;
    temp_r2->unk8D1 = (s8)Div(temp_r2->unk8C2, 100);
    temp_r2->unk8D2 = (s8)(Div(temp_r2->unk8C2, 10) - (temp_r2->unk8D1 * 10));
    temp_r2->unk8D3 = (s8)Mod(temp_r2->unk8C2, 10);
    temp_r2->unk8D4 = 0;
    temp_r2->unk8D5 = 0;
    temp_r2->unk8D6 = 0;
    temp_r2->unk8D7 = 0;
    temp_r2->unk8D8 = 120;
    temp_r2->unk8DA = 140;
    temp_r2->unk8DC = 64;
    temp_r2->unk8DE = 40;
    temp_r2->unk8DF = 60;
    temp_r2->unk8C9 = param2;
    temp_r2->unk8E0 = (u8)((s32)(0x9F - temp_r2->unk8DF) >> 1);

    var_r2 = 1;
    while (var_r2 < temp_r2->unk8E0) {
        var_r2 *= 2;
    }

    temp_r2->unk8E0 = (u8)var_r2;
    temp_r1 = temp_r2->unk8DF;
    temp_r2->unk8E1 = (s8)(temp_r1 + ((s32)(0x9F - temp_r1) >> 1));
}

void sub_80B1D30(void)
{
    gDispCnt = 0x1C42;
    gBgCntRegs[2] = 0xD086;
    gBgCntRegs[3] = 0x1C80;
    gBldRegs.bldCnt = 0xAF;
    gBldRegs.bldY = 0x10;
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;
    gBgScrollRegs[3][0] = 0;
    gBgScrollRegs[3][1] = 0;
    gBgSprites_Unknown1[2] = 0;
    gBgSprites_Unknown2[2][0] = 0;
    gBgSprites_Unknown2[2][1] = 0;
    gBgSprites_Unknown2[2][2] = -1;
    gBgSprites_Unknown2[2][3] = 0x80;
    gBgSprites_Unknown1[3] = 0;
    gBgSprites_Unknown2[3][0] = 0;
    gBgSprites_Unknown2[3][1] = 0;
    gBgSprites_Unknown2[3][2] = -1;
    gBgSprites_Unknown2[3][3] = 0x20;
}

void Task_8E8_80B1DA0(void)
{
    UnkArg2 *strc = TASK_DATA(gCurTask);
    ScreenFade *fade = &strc->fade7C;

    if ((gStageData.unkD == 0) || (strc->unk8C7 == 0)) {
        Sprite *s = &strc->sprite14;
        DisplaySprite(s);

        gBldRegs.bldCnt = 0xAF;

        if (++strc->unk8BE < 140) {
            return;
        }
    }

    gBldRegs.bldCnt = 0xBF;
    gBldRegs.bldY = 0x10;

    fade->window = 0;
    fade->flags = 2;
    fade->brightness = 0;
    fade->speed = 0x100;
    fade->bldAlpha = 0;
    fade->bldCnt = 0xBF;

    strc->unk8BE = 0U;
    gCurTask->main = Task_8E8_80B1E34;
}

void Task_8E8_80B1E34(void)
{
    UnkArg2 *strc = TASK_DATA(gCurTask);

    strc->unk8C4 = 2;

    switch (strc->unk8BE) {
        case 0: {
            strc->task8 = sub_80B33D0(strc);
            strc->unk8E4 = gUnknown_03001EA0;
            strc->taskC = sub_80B48A4(strc);
            strc->task4 = sub_80B4E1C(strc);
            strc->task0 = sub_80B3314(strc);
            strc->task10 = sub_80B22CC(strc);
        } break;

        case 1: {
            strc->unk8C4 = 3;
            gCurTask->main = Task_8E8_80B2284;
            return;
        } break;
    }

    strc->unk8BE++;
}

void Task_8E8_80B1EC8(void)
{
    UnkArg2 *temp_r2 = TASK_DATA(gCurTask);

    if (temp_r2->unk8C8 == 0) {
        temp_r2->unk8BE++;
    }

    temp_r2->unk8DF = 0x3C;
    temp_r2->unk8DA = 0x8C;
    temp_r2->unk8B0 = 0x02000000;
    temp_r2->unk8B4 = 0x3C0000;

    if (temp_r2->unk8BE >= 0xDC) {
        temp_r2->unk8BE = 0U;
        temp_r2->unk8C4 = 5;
        gCurTask->main = Task_8E8_80B1F4C;
    }
}

void Task_8E8_80B1F4C(void)
{
    UnkArg2 *temp_r1 = TASK_DATA(gCurTask);
    Arg2Task8 *task8 = TASK_DATA(temp_r1->task8);

    switch (task8->unkAC) {
        case -1:
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
            gStageData.unk4 = 3;
            temp_r1->unk8C4 = 5;
            break;
        case 7:
        case 9:
        case 12:
        case 14:
        case 15:
        case 16:
        case 17:
        case 19:
            gStageData.unk4 = 9;
            temp_r1->unk8C4 = 5;
            break;
        case 10:
        case 11:
            gStageData.unk4 = 9;
            temp_r1->unk8C4 = 6;
            break;
        case 8:
        case 13:
        case 18:
        case 20:
            gStageData.unk4 = 6;
            temp_r1->unk8C4 = 7;
            gCurTask->main = Task_8E8_80B205C;
            return;
    }

    if ((START_BUTTON & gPressedKeys) && (gStageData.gameMode != GAME_MODE_DEMO)) {
        sub_800341C();
    }
}

void Task_8E8_80B205C(void)
{
    UnkArg2 *strc = TASK_DATA(gCurTask);

    ScreenFade *fade = &strc->fade7C;
    fade->window = 1;
    fade->flags = 1;
    fade->brightness = 0;
    fade->speed = Q(0.25);
    fade->bldAlpha = 0;
    fade->bldCnt = 0xBF;
    UpdateScreenFade(fade);

    gDispCnt = 0x9C42;
    gWinRegs[5] = 0x103F;
    gCurTask->main = Task_SpStage8E8_Destroy;
}

void Task_SpStage8E8_Destroy(void)
{
    Task *temp_r0;
    Task *temp_r0_2;
    Task *temp_r0_3;
    Task *temp_r0_4;
    Task *temp_r0_5;
    u8 var_r4;
    UnkArg2 *strc = TASK_DATA(gCurTask);
    ScreenFade *fade = &strc->fade7C;

    if (UpdateScreenFade(fade) == SCREEN_FADE_RUNNING) {
        gDispCnt = 0x9C42;
        gWinRegs[5] = 0x103F;
        return;
    }

    gFlags &= ~4;
    if (strc->task0 != NULL) {
        TaskDestroy(strc->task0);
        strc->task0 = NULL;
    }

    if (strc->task4 != NULL) {
        TaskDestroy(strc->task4);
        strc->task4 = NULL;
    }

    if (strc->task8 != NULL) {
        TaskDestroy(strc->task8);
        strc->task8 = NULL;
    }
    temp_r0_4 = strc->taskC;
    if (temp_r0_4 != NULL) {
        TaskDestroy(temp_r0_4);
        strc->taskC = NULL;
    }
    temp_r0_5 = strc->task10;
    if (temp_r0_5 != NULL) {
        TaskDestroy(temp_r0_5);
        strc->task10 = NULL;
    }
    if (gStageData.unkD == 0) {
        var_r4 = 0;
        if ((s32)strc->unk8C2 <= (s32)strc->unk8C0) {
            var_r4 = 1;
        }
        sub_80B6CD8(var_r4, strc->unk8C7, strc->unk8C6, strc->unk8C9);
    } else if (((s8)strc->unk8D4 == 0) || (strc->unk8C7 == 6)) {
        var_r4 = 0;
        if (strc->unk8C2 <= strc->unk8C0) {
            var_r4 = 1;
        }

        sub_80B6CD8(var_r4, strc->unk8C7, strc->unk8C6, strc->unk8C9);
    } else {
        SetBit(strc->unk8C9, strc->unk8C7);
        gStageData.unkD = 1;
        sub_80B1AF4(0U, strc->unk8C7 + 1, strc->unk8C9);
    }
    TaskDestroy(gCurTask);
}

void TaskDestructor_80B2224(Task *arg0) { }

void Task_8E8_80B2228(void)
{
    UnkArg2 *strc = TASK_DATA(gCurTask);

    sub_80B1D30();
    sub_80B6BB8(&strc->sprite14, 0, 0x28U, 0x460U, 0, DISPLAY_CENTER_X, DISPLAY_CENTER_Y, 0, 0U, 0);
    strc->unk8C4 = 1;
    m4aSongNumStart(MUS_SPECIAL_STAGE);
    gCurTask->main = Task_8E8_80B1DA0;
}

void Task_8E8_80B2284(void)
{
    UnkArg2 *strc = TASK_DATA(gCurTask);
    ScreenFade *fade = &strc->fade7C;

    if (UpdateScreenFade(fade) != SCREEN_FADE_RUNNING) {
        strc->unk8BE = 0;
        strc->unk8C4 = 4;
        gCurTask->main = Task_8E8_80B1EC8;
    }
}

Task *sub_80B22CC(UnkArg2 *strc)
{
    Task *t = TaskCreate(Task_2A4_80B2358, sizeof(SpStage2A4), 0xD000U, 0U, TaskDestructor_80B2D84);
    SpStage2A4 *strc2A4 = TASK_DATA(t);

    strc2A4->unk0 = strc;
    strc2A4->unk284 = 0;
    strc2A4->unk288 = 0;
    strc2A4->unk28E = 0;
    strc2A4->unk289 = 0;
    strc2A4->unk28A = 0;
    strc2A4->unk28B = 0;
    strc2A4->unk28C = 0;
    strc2A4->unk290[0] = 0;
    strc2A4->unk290[1] = 0;
    strc2A4->unk290[2] = 0;
    sub_80B2D90(strc2A4);

    return t;
}

void Task_2A4_80B2358()
{
    s8 temp_r0;
    u16 temp_r0_2;
    u16 temp_r0_3;
    SpStage2A4 *strc2A4 = TASK_DATA(gCurTask);
    UnkArg2 *temp_r6 = strc2A4->unk0;
    Arg2Task8 *temp_r7 = TASK_DATA(temp_r6->task8);

    sub_2A4_80B2640();
    if (strc2A4->unk288 == 0) {
        if (temp_r6->unk8C4 == 4) {
            sub_80B2D9C(strc2A4);
        }
    } else {
        sub_80B28AC(strc2A4);
    }

    switch (strc2A4->unk28B) {
        case 0:
            temp_r0_2 = temp_r7->unkAC;
            if (temp_r0_2 != 0xA) {
                if (temp_r0_2 == 0xC) {
                    sub_80B2C98(strc2A4, 1);
                }
            } else {
                sub_80B2C98(strc2A4, 0);
            }
            break;

        case 1:
            sub_80B2D0C(strc2A4);
            break;

        case 2:
            temp_r0_3 = temp_r7->unkAC;
            if (temp_r0_3 == 0xF) {
                sub_80B2C98(strc2A4, 0);
            } else if (temp_r0_3 == 0x13) {
                sub_80B2C98(strc2A4, 1);
            }
            break;

        case 3:
            sub_80B2D0C(strc2A4);
            break;

        case 4:
            break;
    }

    if ((temp_r6->unk8C4 == 4) && (strc2A4->unk28A == 0)) {
        sub_80B29B4(strc2A4, 0);
    } else if ((temp_r6->unk8C4 == 6) && (strc2A4->unk28A == 4)) {
        sub_80B29B4(strc2A4, 1);
    } else if ((strc2A4->unk28A != 7) && (strc2A4->unk28A != 0) && (strc2A4->unk28A != 4)) {
        if (strc2A4->unk290[2] > Q(168)) {
            sub_80B2E9C(strc2A4);
        } else {
            sub_80B2B38(strc2A4);
        }
    }
}

void sub_80B24AC(SpStage2A4 *strc2A4)
{
    UnkArg2 *temp_r5 = strc2A4->unk0;
    TileInfo3 *tiles = &gUnknown_080DBEA0[(s8)temp_r5->unk8CE];

    sub_80B6BB8(&strc2A4->sprite4, 0, tiles->numTiles, tiles->anim, 0x1000U, 0x64, 0x10, 1, tiles->variant, 0U);
    tiles = &gUnknown_080DBEA0[(s8)temp_r5->unk8CF];
    sub_80B6BB8(&strc2A4->sprite2C, 0, tiles->numTiles, tiles->anim, 0x1000U, 0x6C, 0x10, 1, tiles->variant, 0U);

    tiles = &gUnknown_080DBEA0[(s8)temp_r5->unk8D0];
    sub_80B6BB8(&strc2A4->sprite54, 0, tiles->numTiles, tiles->anim, 0x1000U, 0x74, 0x10, 1, tiles->variant, 0U);
    sub_80B6BB8(&strc2A4->sprite7C, 0, 8, 1124, 0x1000U, 0x78, 0xE, 2, 0U, 0U);

    tiles = &gUnknown_080DBEA0[(s8)temp_r5->unk8D1];
    sub_80B6BB8(&strc2A4->spriteA4, 0, tiles->numTiles, tiles->anim, 0x1000U, 0x7C, 0x18, 1, tiles->variant, 0U);

    tiles = &gUnknown_080DBEA0[(s8)temp_r5->unk8D2];
    sub_80B6BB8(&strc2A4->spriteCC, 0, tiles->numTiles, tiles->anim, 0x1000U, 0x84, 0x18, 1, tiles->variant, 0U);

    tiles = &gUnknown_080DBEA0[(s8)temp_r5->unk8D3];
    sub_80B6BB8(&strc2A4->spriteF4, 0, tiles->numTiles, tiles->anim, 0x1000U, 0x8C, 0x18, 1, tiles->variant, 0U);
}

void sub_2A4_80B2640(void)
{
    SpStage2A4 *strc = TASK_DATA(gCurTask);
    UnkArg2 *temp_r6 = strc->unk0;
    Sprite *s;

    if (temp_r6->unk8C8 == 0) {
        sub_2A4_80B26FC();
    }
    if (temp_r6->unk8CE) {
        DisplaySprite(&strc->sprite4);
    }

    if (temp_r6->unk8CE || temp_r6->unk8CF) {
        DisplaySprite(&strc->sprite2C);
    }

    DisplaySprite(&strc->sprite54);

    DisplaySprite(&strc->sprite7C);

    if (temp_r6->unk8D1) {
        DisplaySprite(&strc->spriteA4);
    }
    if (temp_r6->unk8D1 || temp_r6->unk8D2) {
        DisplaySprite(&strc->spriteCC);
    }

    DisplaySprite(&strc->spriteF4);
}

void sub_2A4_80B26FC(void)
{
    TileInfo3 *temp_r2;
    SpStage2A4 *strc = TASK_DATA(gCurTask);
    UnkArg2 *temp_r5;
    Sprite *s;

    temp_r5 = strc->unk0;
    temp_r2 = &gUnknown_080DBEA0[(s8)(u8)temp_r5->unk8CE];
    s = &strc->sprite4;
    s->anim = temp_r2->anim;
    s->variant = *(u16 *)&temp_r2->variant;
    UpdateSpriteAnimation(s);
    temp_r2 = &gUnknown_080DBEA0[(s8)(u8)temp_r5->unk8CF];
    s = &strc->sprite2C;
    s->anim = temp_r2->anim;
    s->variant = *(u16 *)&temp_r2->variant;
    UpdateSpriteAnimation(s);
    temp_r2 = &gUnknown_080DBEA0[(s8)temp_r5->unk8D0];
    s = &strc->sprite54;
    s->anim = temp_r2->anim;
    s->variant = *(u16 *)&temp_r2->variant;
    UpdateSpriteAnimation(s);
    temp_r2 = &gUnknown_080DBEA0[(s8)(u8)temp_r5->unk8D1];
    s = &strc->spriteA4;
    s->anim = temp_r2->anim;
    s->variant = *(u16 *)&temp_r2->variant;
    UpdateSpriteAnimation(s);
    temp_r2 = &gUnknown_080DBEA0[(s8)temp_r5->unk8D2];
    s = &strc->spriteCC;
    s->anim = temp_r2->anim;
    s->variant = *(u16 *)&temp_r2->variant;
    UpdateSpriteAnimation(s);
    temp_r2 = &gUnknown_080DBEA0[(s8)temp_r5->unk8D3];
    s = &strc->spriteF4;
    s->anim = temp_r2->anim;
    s->variant = *(u16 *)&temp_r2->variant;
    UpdateSpriteAnimation(s);

    if ((s8)temp_r5->unk8D4 == 0) {
        if (temp_r5->unk8C0 >= temp_r5->unk8C2) {
            temp_r5->unk8D4 = 1;
            temp_r5->unk8D6 = 1;
            temp_r5->unk8D7 = 0x78;
            s = &strc->sprite7C;
            s->anim = 1124;
            s->variant = 1;
            UpdateSpriteAnimation(&strc->sprite7C);
        }
    } else {
        if (temp_r5->unk8C0 < temp_r5->unk8C2) {
            temp_r5->unk8D4 = 0;
            s = &strc->sprite7C;
            s->anim = 1124;
            s->variant = 0;
            UpdateSpriteAnimation(s);
        } else {
            s = &strc->sprite7C;
            UpdateSpriteAnimation(s);
        }
    }
}

void sub_80B28AC(SpStage2A4 *strc2A4)
{
    Sprite *temp_r6;
    u16 a;
    s16 temp_r0;
    u16 temp_r2;
    Sprite *s;

    temp_r6 = &strc2A4->sprite144;
    strc2A4->unk28E = (u16)strc2A4->unk28E + 0xC0;
    a = sa3__sub_80B1560(&gUnknown_080DBF68, strc2A4->unk28E) >> 1;
    s = &strc2A4->sprite144;
    s->x = gUnknown_080DBF94[0][1] + a;
    if (s->x > 0x012B) {
        sub_80B2DF4(strc2A4);
        return;
    }
    temp_r2 = (u16)strc2A4->unk28E;
    if (((u32)((temp_r2 - 30001) << 0x10) <= 0x0E0E0000U) || ((u32)temp_r2 > 0xABC0U)) {
        UpdateSpriteAnimation(temp_r6);
    }
    DisplaySprite(temp_r6);
}

// TODO: Seems to be unused?
// TODO: Fake-match!
void sub_80B292C(SpStage2A4 *strc2A4)
{
    u16 sp18[6][3];
    u8 sp1C;
    Sprite *s = &strc2A4->sprite16C;
    s32 r4 = 0;
    u16 *ptr2;
    u16 *ptr;

    // TODO: Remove memcpy
    memcpy(&sp18, &gUnknown_080DBFA8, sizeof(sp18));

    ptr = (void *)sp18;
    sub_80B6BB8(s, 1, *ptr++, *ptr++, r4, DISPLAY_CENTER_X, DISPLAY_CENTER_Y, 0, *(ptr2 = &sp18[0][2]), 0);
    DmaCopy16(3, &gObjPalette[15 * PALETTE_LEN_4BPP + 9], strc2A4->pal298, sizeof(strc2A4->pal298));
    DmaCopy16(3, &gObjPalette[15 * PALETTE_LEN_4BPP + 12], strc2A4->pal29E, sizeof(strc2A4->pal29E));

    strc2A4->unk289 = 1;
}

// (99.78%) https://decomp.me/scratch/sRoAg
NONMATCH("asm/non_matching/game/sa3/spstg__sub_80B29B4.inc", void sub_80B29B4(SpStage2A4 *strc2A4, u8 param1))
{
    s16 sp18[6];
    s32 sp24;
    s32 sp28;
    s16 temp_r4;
    s32 temp_r4_2;
    s32 temp_r6;
    u8 var_r7;
    s32 var_sb;
    TileInfo_16_2 *temp_r5;
    UnkArg2 *unk0 = strc2A4->unk0;

    temp_r4 = gUnknown_080DBE82[unk0->unk8C7][param1];
    sp18[0] = 0xA;
    sp18[4] = 0xB;
    sp18[1] = (s16)Div((s32)temp_r4, 0x64);
    sp18[2] = (s16)(Div((s32)temp_r4, 0xA) - (sp18[1] * 0xA));
    sp18[3] = (s16)Mod((s32)temp_r4, 0xA);
    if (sp18[1] != 0) {
        var_sb = 0;
    } else {
        var_sb = 1;
    }
    for (var_r7 = 0; var_r7 < 5; var_r7++) {
        temp_r5 = &gUnknown_080DBEF8[sp18[var_r7]];
        sub_80B6BB8(&strc2A4->sprites194[var_r7], 1, temp_r5->numTiles, temp_r5->anim, 0U, gUnknown_080DBF94[var_sb][var_r7],
                    gUnknown_080DBFCC[var_r7], 1, temp_r5->variant, 0U);
        strc2A4->sprites194[var_r7].animSpeed = 0x10;
    }
    if ((s8)(u8)strc2A4->unk28A != 0) {
        strc2A4->unk290[0] = 0;
        strc2A4->unk290[1] = 0;
        strc2A4->unk290[2] = 0;
    } else {
        strc2A4->unk290[0] = 0x7380;
        strc2A4->unk290[1] = 0x6C80;
        strc2A4->unk290[2] = 0x6580;
    }
    strc2A4->unk28A += ++var_sb;
}
END_NONMATCH

void sub_80B2B38(SpStage2A4 *strc2A4)
{
    s16 sp00[3];
    Sprite *s;
    s32 var_sb;
    u8 var_r0;
    u8 i;

    var_sb = 0;
    strc2A4->unk290[0] += 0xC0;
    if (strc2A4->unk290[0] > 0x700U) {
        strc2A4->unk290[1] += 0xC0;
    }
    if (strc2A4->unk290[1] > 0x700U) {
        strc2A4->unk290[2] += 0xC0;
    }

    var_r0 = (strc2A4->unk28A <= 3) ? strc2A4->unk28A : strc2A4->unk28A - 4;

    for (i = 0; i < 3; i++) {
        sp00[i] = sa3__sub_80B1560(&gUnknown_080DBF68, strc2A4->unk290[i]) >> 1;
    }

    for (i = 0; i < 5; i++) {
        switch (i) {
            case 0:
                var_sb = 0;
                break;
            case 1:
            case 2:
            case 3:
                var_sb = 1;
                break;
            case 4:
                var_sb = 2;
                break;
        }

        s = &strc2A4->sprites194[i];
        if ((var_r0 != 2) || (i != 1)) {
            s->x = sp00[var_sb] + gUnknown_080DBF94[var_r0 - 1][i];
            if (strc2A4->unk290[var_sb] >= 0x7340 && ((u32)(u16)(strc2A4->unk290[var_sb] + 0x7F40) > 0x2340U)) {
                UpdateSpriteAnimation(s);
            }
            DisplaySprite(s);
        }
    }

    gBldRegs.bldCnt = 0x2F40;
    gBldRegs.bldAlpha = 0x1010;
}

void sub_80B2C98(SpStage2A4 *strc2A4, u8 arg1)
{
    TileInfo_16_2 *var_r5;

    if (arg1 == 0) {
        var_r5 = &gUnknown_080DBF58[0];
    } else {
        var_r5 = &gUnknown_080DBF58[1];
    }

    sub_80B6BB8(&strc2A4->sprite25C, 1, var_r5->numTiles, var_r5->anim, 0, DISPLAY_CENTER_X, DISPLAY_CENTER_Y, 1, var_r5->variant, 0);
    strc2A4->unk28C = 0x7380;
    strc2A4->unk28B++;

    gBldRegs.bldCnt = 0x2F40;
    gBldRegs.bldAlpha = 0x1010;
    gBldRegs.bldY = 0;
}

void sub_80B2D0C(SpStage2A4 *strc2A4)
{
    Sprite *s;
    s16 x;
    strc2A4->unk28C += 0xC0;
    x = (sa3__sub_80B1560(&gUnknown_080DBF68, strc2A4->unk28C) >> 1);
    s = &strc2A4->sprite25C;
    s->x = x;
    s->x += (u16)gUnknown_080DBF94[0][1];
    if (s->x > 0x012C) {
        sub_80B2ED4(strc2A4);
        return;
    }

    // TODO: These casts are off...
    if ((strc2A4->unk28C >= 0x7340) && (u16)(strc2A4->unk28C + 0x7F40) > 0x2340) {
        UpdateSpriteAnimation(s);
    }
    DisplaySprite(s);
}

void TaskDestructor_80B2D84(Task *t) { }

void sub_80B2D88(void) { }

void sub_80B2D8C(void) { }

void sub_80B2D90(SpStage2A4 *strc2A4) { sub_80B24AC(strc2A4); }

void sub_80B2D9C(SpStage2A4 *strc2A4)
{
    Sprite *s = &strc2A4->sprite144;
    strc2A4->unk288 = 1;
    strc2A4->unk284 = gUnknown_03001EA0;
    sub_80B6BB8(s, 0, 0x14, 0x471U, 0U, DISPLAY_CENTER_X, DISPLAY_CENTER_Y, 1, 0U, 0U);
    strc2A4->unk28E = 0;
}

void sub_80B2DF4(SpStage2A4 *strc2A4)
{
    gUnknown_03001EA0 = strc2A4->unk284;
    strc2A4->unk284 = 0;
    strc2A4->unk288 = 0;
    strc2A4->unk28E = 0;
}

void sub_80B2E1C(SpStage2A4 *strc2A4)
{
    Sprite *s = &strc2A4->sprite16C;
    ColorRaw *palA;
    ColorRaw *palB;

    if (strc2A4->unk0->unk8D5 == 0) {
        palA = &OBJ_PLTT[15 * PALETTE_LEN_4BPP + 12];
        palB = &OBJ_PLTT[15 * PALETTE_LEN_4BPP + 9];
    } else {
        palA = &OBJ_PLTT[15 * PALETTE_LEN_4BPP + 9];
        palB = &OBJ_PLTT[15 * PALETTE_LEN_4BPP + 12];
    }

    DmaCopy16(3, strc2A4->pal29E, palA, 6);
    DmaCopy16(3, strc2A4->pal298, palB, 6);

    DisplaySprite(s);
}

void sub_80B2E84(SpStage2A4 *strc2A4)
{
    strc2A4->unk289 = 0;
    gUnknown_03001E9C = NULL;
}

void sub_80B2E9C(SpStage2A4 *strc2A4)
{
    if (strc2A4->unk28A < 4) {
        strc2A4->unk28A = 4;
    } else {
        strc2A4->unk28A = 7;
    }

    gUnknown_03001E9C = NULL;
    gBldRegs.bldCnt = 0xBF;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
}

void sub_80B2ED4(SpStage2A4 *strc2A4)
{
    strc2A4->unk28B += 1;
    gUnknown_03001E9C = NULL;
    gBldRegs.bldCnt = 0xBF;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
}

void sub_80B2EFC(Arg2Task0 *strc)
{
    s16 *ptr;
    s16 sp00[2][4]; // TODO: Possibly DmaIoData[2] ?
    UnkArg2 *temp_r7;
    s32 *var_r5_3;
    s16 temp_r4;
    s16 k;
    s16 i;
    s32 temp_r2;
    s32 temp_r6;
    s16 j;
    u8 temp_r1_2;
    void *buffer4;
    s32 *buffer8;
    s32 *bufferC;
    s32 *buffer8_cursor;
    s32 *bufferC_cursor;
    s16 *buffer4_cursor;
    s32 v00, v0, v;

    temp_r7 = strc->unk0;
    temp_r6 = (temp_r7->unk8DA - temp_r7->unk8DE) << 0x10;
    bufferC = EwramMalloc(0x400U);
    strc->unkC = bufferC;

    for (i = 0, bufferC_cursor = bufferC; i < 256; i++, bufferC_cursor++) {
        s32 v = i - temp_r7->unk8DE;
        if (v == 0) {
            *bufferC_cursor = 0;
        } else {
            *bufferC_cursor = temp_r6 / v;
        }
    }

    buffer8 = EwramMalloc(0x400U);
    strc->unk8 = buffer8;

    for (i = 0, buffer8_cursor = buffer8; i < 256; i++, buffer8_cursor++) {
        s32 v = (i - temp_r7->unk8DE);
        if (temp_r6 == 0) {
            *buffer8_cursor = 0;
        } else {
            *buffer8_cursor = v / temp_r6;
        }
    }

    temp_r1_2 = temp_r7->unk8DF;
    var_r5_3 = (s32 *)&temp_r7->unkB0[temp_r1_2];

    for (j = temp_r1_2, temp_r4 = (s16)temp_r7->unk8DC; j < 256; j++) {
        temp_r2 = (s32)(strc->unkC[j] * temp_r4) >> 8;
        v00 = -temp_r7->unk8D8;
        v0 = v00;
        v0 *= temp_r2;
        v = -(temp_r7->unk8DA - j);
        temp_r2 *= v;
        *var_r5_3++ = ((-(v0 * 2)) >> 8) * temp_r4;
        *var_r5_3++ = ((-(temp_r2 * 4)) >> 8) * temp_r4;
    }

    buffer4 = EwramMalloc(0x1000U);
    strc->unk4 = buffer4;
    gBgOffsetsHBlankPrimary = buffer4;
    buffer4_cursor = buffer4;
    ptr = (s16 *)sp00;
    memset(sp00, 0, sizeof(sp00));
    v00 = 0x100;
    ptr[0] = v00;
    ptr[3] = v00;

    for (k = 0; k < 256; k++, buffer4_cursor += 8) {
        CpuSet(sp00[0], buffer4_cursor, sizeof(sp00[0]));
        buffer4_cursor[6] = (k << 8);
    }

    sub_80B33CC(strc);
}

void Task_80B3080(void)
{
    s32 sp10;
    s32 sp14;
    s16 var_r4;
    s16 temp_r0_4;
    s32 sp1C;
    s16 *sp20;
    s16 *sp24;
    s32 *sp28;
    s32 sp2C;
    s16 var_r4_2;
    s32 temp_r1_3;
    s32 temp_r1_4;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 temp_r3;
    s32 temp_r3_2;
    s32 temp_r5;
    s32 temp_sl;
    u16 temp_r1;
    s16 var_r6;
    void *ioData;
    Arg2Task0 *strc = TASK_DATA(gCurTask);
    UnkArg2 *ctx = strc->unk0;
    Arg2TaskC *taskC = TASK_DATA(ctx->taskC);

    gHBlankCopySize = sizeof(DmaIoData);
    gHBlankCopyTarget = (void *)&REG_BG2PA;
    gBgOffsetsHBlankPrimary = strc->unk4;
    strc->unk10 += 0x55000;

    // TODO: CLAMP macro to match?
    var_r6 = I(taskC->unk54);
    if (var_r6 < 20) {
        var_r6 = 20;
    } else if (var_r6 > 120) {
        var_r6 = 120;
    }

    ioData = (DmaIoData *)gBgOffsetsHBlankPrimary;
    temp_r1 = ctx->unk8BC;
    sp10 = SIN(temp_r1) * 4;
    temp_sl = COS(temp_r1) * 4;
    sp14 = (s32)(u16)ctx->unk8DC;
    {
        DmaIoData bgAffine;
        DmaIoData *pBgAffine = &bgAffine;
        memset(&bgAffine, 0, sizeof(bgAffine));
        pBgAffine->bg2pa = 0x100;
        pBgAffine->bg2pd = 0x100;
        temp_r0_4 = ((s32)(120 - var_r6) >> 2) + 60;
        gFlags |= 4;

        var_r4 = 90 - temp_r0_4;
        var_r6 = 0;
        while ((var_r6 < temp_r0_4)) {
            CpuSet(&bgAffine, ioData, 8U);
            ((DmaIoData *)ioData)->bg2y_l = (s16)(var_r4 << 8);
            ((DmaIoData *)ioData)++;
            var_r6++;
            var_r4++;
        }
    }

    ioData = gBgOffsetsHBlankPrimary;
    var_r4_2 = 0x3C;
    ioData = (void *)&((DmaIoData *)ioData)[temp_r0_4];
    while (var_r6 < DISPLAY_HEIGHT) {
        s32 vx, vy;
        s32 v;
        sp1C = (s32)(s16)sp14;
        sp20 = &ctx->unk8D8;
        temp_r3 = 0 - sp10;

        temp_r2 = strc->unkC[var_r4_2] * sp1C;
        temp_r1_3 = temp_r2 >> 8;
        sp2C = -sp20[0] * temp_r1_3;
        v = ((var_r6 - ctx->unk8DA) * temp_r1_3) * 2;
        temp_r2_2 = temp_r2 >> 0x10;
        temp_r1_4 = (s32)(temp_r2_2 * temp_sl) >> 0x10;
        /* bg2pa */ *((s16 *)ioData)++ = (s16)temp_r1_4;
        /* bg2pb */ *((s16 *)ioData)++ = (s16)((s32)(sp10 * temp_r2_2) >> 0x10);
        /* bg2pc */ *((s16 *)ioData)++ = (s16)((s32)(temp_r2_2 * temp_r3) >> 0x10);
        /* bg2pd */ *((s16 *)ioData)++ = (s16)temp_r1_4;
        temp_r3_2 = (s32)(v) >> 0x10;
        vx = sp10 * temp_r3_2;
        temp_r5 = sp2C >> 0x10;
        vx += temp_r5 * temp_sl;
        vx += ctx->unk8B0;
        vy = temp_r5 * temp_r3;
        vy += temp_r3_2 * temp_sl;
        vy += strc->unk10;
        /* bg2px */ ((Vec2_32 *)ioData)->x = vx >> 8;
        /* bg2py */ ((Vec2_32 *)ioData)->y = (((u32)vy << 8) >> 16) | 0x20000;
        ioData += sizeof(Vec2_32);
        var_r6++;
        var_r4_2++;
    }
}

void sub_80B3290(void)
{
    s16 i;

    Arg2Task0 *strc = TASK_DATA(gCurTask);
    UnkArg2 *temp_r1_2 = strc->unk0;
    u8 *index = &temp_r1_2->unk8C7;
    s16 temp_r0 = gUnknown_080DBFD8[*index];

    u8 *unk8BC = (u8 *)&temp_r1_2->unk8BC;
    gBgScrollRegs[1][0] = -(*unk8BC);
    gBgScrollRegs[1][1] = 0x30;

    if (temp_r1_2->unk8C8 != 1) {
        for (i = 0; i < temp_r0; i++) {
            Sprite *s = &strc->sprites94[i];
            UpdateSpriteAnimation_BG(s);
            sub_80BE46C(s);
        }
    }
}

Task *sub_80B3314(UnkArg2 *strc)
{
    AnimId sp18[7];
    Task *t;
    Arg2Task0 *task0;

    memcpy(&sp18, &gUnknown_080DBFEC, sizeof(sp18));
    t = TaskCreate(Task_80B3080, sizeof(Arg2Task0), 0x8000U, 0U, TaskDestructor_80B339C);
    task0 = TASK_DATA(t);
    task0->unk0 = strc;
    task0->unk4 = 0;
    task0->unk8 = 0;
    task0->unkC = 0;
    task0->unk10 = 0;
    sub_80B6B3C(&task0->bg14, 1, 0x10, sp18[strc->unk8C7], 0x80, 0x80, 0, 2, 0, 0);
    sub_80B2EFC(task0);
    return t;
}

void TaskDestructor_80B339C(Task *t)
{
    Arg2Task0 *temp_r1 = TASK_DATA(t);

    if (temp_r1->unk8 != NULL) {
        EwramFree(temp_r1->unk8);
    }

    if (temp_r1->unkC != NULL) {
        EwramFree(temp_r1->unkC);
    }

    if (temp_r1->unk4 != NULL) {
        EwramFree(temp_r1->unk4);
    }
}

void sub_80B33CC(Arg2Task0 *strc) { }

extern s16 gUnknown_080DBE58[][3];

Task *sub_80B33D0(UnkArg2 *ctx)
{
    Arg4_80B4498 sp2C;
    Arg2Task8 *sp34;
    u8 *sp38;
    Sprite *var_r0;
    s16 temp_r0;
    s32 temp_r1;
    u16 var_r3;
    u8 *temp_r1_2;
    u8 temp_r0_2;
    u8 temp_r6;
    Arg2Task8 *strc;
    struct Task *t;
#if 0
    // TODO: Do this, once data is split off from assembly.
    Arg4_80B4498 *sp18[5] = {
        gUnknown_080DBFFC,
        gUnknown_080DC20C,
        gUnknown_080DC15C,
        gUnknown_080DC2BC,
        gUnknown_080DC0AC
    };
#else
    Arg4_80B4498 *sp18[5];
    memcpy(sp18, gUnknown_080DC36C, sizeof(sp18));
#endif

    sp2C = gUnknown_080DC380;

    temp_r6 = ctx->unk8C7;
    t = TaskCreate(Task_80B3648, sizeof(Arg2Task8), 0x9000U, 0U, NULL);
    strc = TASK_DATA(t);
    strc->unk0 = ctx;
    strc->unk4 = 0;
    strc->unk88 = gUnknown_080DBE58[temp_r6][0] << 16;
    strc->unk8C = gUnknown_080DBE58[temp_r6][1] << 16;
    strc->unk90 = 0;
    strc->unkAC = 0;
    strc->unkAE = 0;
    strc->unkB3 = 0;
    strc->unkBC = sp18[ctx->unk8C6];
    sp38 = &ctx->unk8C6;
    temp_r0 = sub_80B6CA4(strc->unkBC);
    strc->vram84 = gUnknown_03001EA0;
    gUnknown_03001EA0 += temp_r0 * TILE_SIZE_4BPP;
    sub_80B4498(&strc->sprite8, strc->vram84, ctx->unk8DA, 9U, strc->unkBC);
    sub_80B4498(&strc->spriteE8, gUnknown_03001EA0, 0, 4U, &sp2C);
    gUnknown_03001EA0 += (sp2C.unk4 * TILE_SIZE_4BPP);
    strc->unk94 = 0;
    strc->unk98 = 0;
    strc->unk9C = 0;
    strc->unkA0 = 0x78;
    strc->unkA4 = 0x78;
    strc->unkB2 = 1;
    strc->unkA8 = 0;
    strc->unkB5 = 0;
    strc->unkB6 = 0;
    strc->unkB7 = 0;
    strc->unkB4 = 0;
    strc->unkB0 = 0;
    strc->unkB9 = 0;

    switch (*sp38) {
        case 0:
            sub_80B6BB8(&strc->spriteC0, 0, 4, 154, 0x1000U, 0x14, 0x14, 8, 0U, 0U);
            break;
        case 1:
            sub_80B6BB8(&strc->spriteC0, 0, 4, 317, 0x1000U, 0x14, 0x14, 8, 0U, 0U);
            break;
        case 2:
            sub_80B6BB8(&strc->spriteC0, 0, 4, 480, 0x1000U, 0x14, 0x14, 8, 0U, 0U);
            break;
        case 3:
            sub_80B6BB8(&strc->spriteC0, 0, 4, 643, 0x1000U, 0x14, 0x14, 8, 0U, 0U);
            break;
        case 4:
            sub_80B6BB8(&strc->spriteC0, 0, 4, 806, 0x1000U, 0x14, 0x14, 8, 0U, 0U);
            break;
    }
    return t;
}

void Task_80B3648(void)
{
    s32 temp_r0_2;
    u8 temp_r2_2;

    Arg2Task8 *task8 = TASK_DATA(gCurTask);
    UnkArg2 *ctx = task8->unk0;
    Arg2TaskC *taskC = TASK_DATA(ctx->taskC);
    task8->unk88 += task8->unk94;
    task8->unk8C += 0x1BF00;
    ctx->unk8B4 = task8->unk8C;

    if (ctx->unk8C8 == 0) {
        task8->unk90 = taskC->unk54;
        task8->unkAC = 0;

        sub_80B39B8();
    } else {
        sub_80B46DC();
    }

    sub_80B4508(task8);

    if (taskC->unk6C > 300) {
        taskC->unk6C = 0U;
        gCurTask->main = Task_80B36F4;
    }
}

void Task_80B36F4(void)
{
    TaskMain sp0[24];
    UnkArg2 *temp_r6;
    u16 temp_r1;
    u8 var_r0;

    Arg2Task8 *task8 = TASK_DATA(gCurTask);
    temp_r6 = task8->unk0;
    memcpy(sp0, &gUnknown_080DC388, sizeof(sp0));
    task8->unk88 += task8->unk94;
    task8->unk8C += 0x1BF00;
    temp_r6->unk8B4 = task8->unk8C;

    if (task8->unkA8 != 0) {
        task8->unkB2 = 2;
    } else {
        task8->unkB2 = 1;
    }

    if (temp_r6->unk8C8 == 0) {
        if (temp_r6->unk8C4 != 7) {
            sp0[task8->unkAC + 2]();
            sp0[0]();
        }

        sub_80B37F0();

        if (!(2 & task8->unkB4)) {
            DisplaySprite(&task8->sprite8);
        }
    } else {
        sp0[1]();
        sub_80B37F0();
        DisplaySprite(&task8->sprite8);
    }

    if ((task8->unkAC != 9) && (task8->unkAC != 0xE)) {
        task8->unkAE = task8->unkAC;
    }
}

void sub_80B37F0(void)
{
    s16 sp4;
    u32 sp8;
    Sprite *s;
    s16 temp_r6_2;
    s32 var_r0;
    Arg4_80B4498 *var_sb;
    u16 temp_r0;
    u16 temp_r1;
    Arg2TaskC *taskC;
    s16 var_r8;
    u32 var_r0_2;
    Arg2Task8 *task8 = TASK_DATA(gCurTask);

    taskC = TASK_DATA(task8->unk0->taskC);

    if ((task8->unkAC == 9) || (task8->unkAC == 0xE)) {
        var_sb = &task8->unkBC[task8->unkAE];
    } else {
        var_sb = &task8->unkBC[task8->unkAC];
    }
    temp_r1 = 240 - ((s32)((task8->unk88 + 0xFE1B0000) * 0x47) >> 0x14);
    sp4 = (s32)temp_r1;
    task8->unkA0 = sp4;
    if ((u32)(u16)(task8->unkAC - 1) <= 1U) {
        var_r0 = task8->unk94;
        if (var_r0 < 0) {
            var_r0 = 0 - var_r0;
        }
        var_r0_2 = (u32)(var_r0 << 6) >> 0x10;
    } else {
        var_r0_2 = 0x10;
    }
    sp8 = var_r0_2;
    if (sub_80B47C4()) {
#ifndef NON_MATCHING
        register s32 a asm("r1");
        register s32 b asm("r0");
#else
        s32 a;
        s32 b;
#endif
        b = taskC->unk4C;
        a = task8->unk88;
        b -= a;
        a = b * 5;
        b = SIN((u32)(taskC->unk58 << 14) >> 22);
        a >>= 0x11;
        b *= a;
        b <<= 2;
        a = I(task8->unk90);
        b >>= 16;
        var_r8 = b + a;

        if (task8->unkB3 != 0) {
            task8->sprite8.prevVariant = -1;
            var_sb = task8->unkBC;
        }
    } else {
        var_r8 = (task8->unk90 >> 8);
    }

    task8->unkA4 = var_r8;
    if (task8->unkB9 != 0) {
        task8->unkB9 -= 1;
        s = &task8->spriteE8;
        s->x = sp4 - 8;
        s->y = var_r8 - 20;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
    sub_80B47EC(&task8->sprite8, (s16)sp8, (s16)sp4, var_r8, var_sb);
    if (task8->unkAC == 5 || task8->unkAC == 6) {
        task8->sprite8.frameFlags &= 0xFFFFCFFF;
    }

    if (task8->unkAC == 17 || task8->unkAC == 18) {
        s = &task8->spriteC0;
        s->x = (s16)sp4;
        s->y = (s16)var_r8;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void sub_80B39B8(void)
{
    Arg2Task8 *task8 = TASK_DATA(gCurTask);
    Arg2TaskC *taskC = TASK_DATA(task8->unk0->taskC);
    task8->unk94 = (task8->unk94 * 29) >> 5;

    if (task8->unkB7 != 0) {
        task8->unkB4 = 0x78;
        task8->sprite8.prevVariant = 0xFF;
        task8->unk94 = 0;
        task8->unkB5 = 0;
        task8->unkB6 = 0;
        task8->unkA8 = 0;
    } else if (task8->unkB5 != 0) {
        task8->unkB4 = 0x78;
        task8->unk9C = -0x400;
        task8->unkAC = 4;
        task8->sprite8.prevVariant = 0xFF;
        task8->unk94 = 0;
        task8->unkB5 = 0;
        task8->unkB6 = 0;
        task8->unkA8 = 0;
    }

    if (task8->unkB4 != 0) {
        if (task8->unkB7 == 0) {
            task8->unkB4--;
        }

        task8->unkB6 = 0;
    }

    if ((task8->unkB6 != 0) && sub_80B47C4()) {
        if (task8->unkA8 == 0) {
            SpStage_InitializeBoost(task8->unk0, 1);
            taskC->unk4C = task8->unk88;

            if (taskC->unk4C < 0x01F00000) {
                taskC->unk4C = 0x01F00000;
            } else if (taskC->unk4C > 0x020F0000) {
                taskC->unk4C = 0x020F0000;
            }
        }

        task8->unkA8 = 0xC800;
        task8->unkAC = 5;
        task8->sprite8.prevVariant = -1;
        task8->unk94 = 0;
        task8->unkB6 = 0;
    }
}

void sub_80B3B1C(void)
{
    s32 temp_r0_2;
    s32 var_r4;
    s32 var_r6;
    s8 *var_r1;
    Arg2TaskC *taskC;
    UnkArg2 *temp_r5;

    Arg2Task8 *task8 = TASK_DATA(gCurTask);
    temp_r5 = task8->unk0;
    taskC = TASK_DATA(temp_r5->taskC);
    var_r6 = task8->unk90;
    var_r4 = task8->unk9C;
    var_r4 += 0x30;
    var_r6 += var_r4;
    task8->unk94 = 0;
    task8->unkA8 = 0;

    if (var_r6 >= taskC->unk54) {
        var_r6 = taskC->unk54;
        var_r4 = 0;
        task8->unkB0 = 0;
        taskC->unk60 = 0;
        taskC->unk64 = 0;
        if (temp_r5->unk8C0 >= temp_r5->unk8C2) {
            task8->unkAC = 0xA;
            task8->sprite8.prevVariant = 0xFF;
        } else {
            var_r4 = -Q(4);
            task8->unkAC = 0xC;
            task8->sprite8.prevVariant = 0xFF;
        }
    }
    task8->unk90 = var_r6;
    task8->unk9C = var_r4;
}

void sub_80B3BD4()
{
    s32 temp_r0;
    u16 temp_r0_2;
    Arg2Task8 *task8 = TASK_DATA(gCurTask);
    u16 *unkAC = &task8->unkAC;
    s32 *unk90 = &task8->unk90;
    s32 r1 = *unk90;

    temp_r0 = task8->unk9C;
    temp_r0 += 0x30;
    r1 += temp_r0;
    *unk90 = r1;
    task8->unk9C = temp_r0;

    if (*unkAC == 0xC) {
        if (++task8->unkB0 > 0xB4U) {
            task8->unkB0 = 0;
            task8->unkAC = 0xD;
        }
    }
}

// (98.70%) https://decomp.me/scratch/QXQT8
NONMATCH("asm/non_matching/game/sa3/spstg__sub_80B3C28.inc", void sub_80B3C28(void))
{
    UnkArg2 *temp_r6;
    s32 temp_r4;
    s32 temp_r0_2;
    u16 temp_r0;
    Arg2Task8 *task8 = TASK_DATA(gCurTask);

    temp_r6 = task8->unk0;
    if (task8->unkAC == 0xA) {
        s32 a, b;
        task8->unkB0 += 1;
        if (temp_r6->unk8C2 < gUnknown_080DBE82[temp_r6->unk8C7][1]) {
            s32 temp_r4_2;
            temp_r0 = (u16)temp_r6->unk8C2 + 1;
            temp_r6->unk8C2 = (s16)temp_r0;
            temp_r4_2 = (s16)temp_r0;
            temp_r6->unk8D1 = Div(temp_r4_2, 100);
            temp_r6->unk8D2 = Div(temp_r4_2, 10) - (temp_r6->unk8D1 * 10);
            temp_r6->unk8D3 = Mod(temp_r4_2, 10);
        }
        if (task8->unkB0 > 0x168U) {
            temp_r4 = 0;
            task8->unkB0 = temp_r4;
            task8->unkAC = temp_r4;
            temp_r0_2 = (u16)gUnknown_080DBE82[temp_r6->unk8C7][1];
            temp_r6->unk8C2 = (s16)temp_r0_2;
            temp_r4 = temp_r0_2 << 16;
            temp_r4 >>= 16;
            temp_r6->unk8D1 = (s8)Div(temp_r4, 100);
            temp_r6->unk8D2 = Div(temp_r4, 10) - (temp_r6->unk8D1 * 10);
            temp_r6->unk8D3 = (u8)Mod(temp_r4, 10);
        }
    }
}
END_NONMATCH

void sub_80B3D4C()
{
    s32 var_r4;
    Arg2Task8 *task8 = TASK_DATA(gCurTask);
    UnkArg2 *temp_r5 = task8->unk0;
    Arg2TaskC *temp_r2 = TASK_DATA(temp_r5->taskC);
    s32 var_r6 = task8->unk90;
    var_r4 = task8->unk9C;
    var_r4 += 0x30;
    var_r6 += var_r4;
    task8->unk94 = 0;
    task8->unkA8 = 0;

    if (var_r6 >= temp_r2->unk54) {
        var_r6 = temp_r2->unk54;
        var_r4 = 0;
        task8->unkB0 = 0;
        temp_r2->unk60 = 0;
        temp_r2->unk64 = 0;
        if (temp_r5->unk8C0 >= temp_r5->unk8C2) {
            task8->unkAC = 0xF;
            task8->sprite8.prevVariant = 0xFF;
            m4aSongNumStart(MUS_SPECIAL_STAGE_CLEAR);
        } else {
            var_r4 = -0x400;
            task8->unkAC = 0x13;
            task8->sprite8.prevVariant = 0xFF;
        }
    }
    task8->unk90 = var_r6;
    task8->unk9C = var_r4;
}

void sub_80B3E14()
{
    s32 temp_r0;
    Arg2Task8 *task8 = TASK_DATA(gCurTask);
    u16 *unkAC = &task8->unkAC;
    s32 *unk90 = &task8->unk90;
    s32 unk90Val = *unk90;

    temp_r0 = task8->unk9C;
    temp_r0 += 0x30;
    *unk90 = unk90Val + temp_r0;
    task8->unk9C = temp_r0;

    if (*unkAC == 0x13) {
        if (++task8->unkB0 > 0xB4U) {
            task8->unkB0 = 0;
            task8->unkAC = 0x14;
        }
    }
}

void sub_80B3E68(void)
{
    Arg2Task8 *task8 = TASK_DATA(gCurTask);

    Arg2TaskC *taskC = TASK_DATA(task8->unk0->taskC);
    if (task8->unkAC == 0xF) {
        if (++task8->unkB0 > 0x0168) {
            task8->unkB0 = 0U;
            task8->unkAC = 0x10U;
        }
        task8->unk88 += ((0x01FFC000 - task8->unk88) * 8) >> 8;
        task8->unk90 += (0x7800 - task8->unk90) >> 5;
        taskC->unk4C += ((0x01FFC000 - taskC->unk4C) * 8) >> 8;
        taskC->unk54 += (0x7800 - taskC->unk54) >> 5;
    } else {
        task8->unkB0 = 0U;
        task8->unkAC = 0x11U;
        task8->sprite8.prevVariant = -1;
    }
}

void sub_80B3F1C(void)
{
    s16 *temp_r1_3;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r2_4;
    s32 var_r2;
    s32 var_r5;
    s32 var_r7;

    Arg2Task8 *task8 = TASK_DATA(gCurTask);
    UnkArg2 *ctx = task8->unk0;
    Arg2TaskC *temp_r0 = TASK_DATA(ctx->taskC);
    Arg2Task0 *temp_r2_2 = TASK_DATA(ctx->task0);
    var_r5 = task8->unk90;
    var_r7 = 0;
    task8->unk8C += task8->unkA8;
    temp_r2_2->unk10 += task8->unkA8 * 4;
    task8->unkA8--;
    if ((s32)(0xC800 - task8->unkA8) > 0xB0) {
        task8->unkA8 -= 0x400;
        if (task8->unkA8 <= 0) {
            var_r7 = 1;
        }
    }
    temp_r1_2 = task8->unk88;
    temp_r2_4 = temp_r0->unk4C;
    if (temp_r1_2 < temp_r2_4) {
        temp_r0_3 = temp_r1_2 + 0x20000;
        task8->unk88 = temp_r0_3;
        if (temp_r0_3 > (s32)temp_r0->unk4C) {
            task8->unk88 = temp_r0->unk4C;
        }
    } else if (temp_r1_2 > temp_r2_4) {
        temp_r0_4 = temp_r1_2 - 0x20000;
        task8->unk88 = temp_r0_4;
        if (temp_r0_4 < (s32)temp_r0->unk4C) {
            task8->unk88 = temp_r0->unk4C;
        }
    }

    if (DPAD_LEFT & gInput) {
        if ((temp_r0->unk4C + 0x8000) < 0x020F0000) {
            task8->unk88 += 0x8000;
            temp_r0->unk4C += 0x8000;
        }
    } else if (DPAD_RIGHT & gInput) {
        if ((temp_r0->unk4C - 0x8000) > 0x01F00000) {
            task8->unk88 -= 0x8000;
            temp_r0->unk4C -= 0x8000;
        }
    }

    if (DPAD_DOWN & gInput) {
        var_r5 += 0x180;
        if (var_r5 > 0x7800) {
            var_r5 = 0x7800;
        }
    } else if (DPAD_UP & gInput) {
        var_r5 -= 0x180;
        if (var_r5 < 0x1400) {
            var_r5 = 0x1400;
        }
    }
    task8->unk90 = var_r5;
    temp_r0->unk54 = var_r5;

    if (var_r7 != 0) {
        task8->unkB8 = 0x14;
        task8->unkA8 = 0;
        task8->unk94 = 0;
        task8->unkAC = 6;
        task8->sprite8.prevVariant = -1;
    }
}

void sub_80B407C(void)
{
    Arg2Task8 *task8 = TASK_DATA(gCurTask);
    UnkArg2 *ctx = task8->unk0;
    Arg2TaskC *temp_r0 = TASK_DATA(ctx->taskC);
    Arg2Task0 *temp_r2_2 = TASK_DATA(ctx->task0);
    s32 var_r4 = task8->unk90;
    s32 var_r7 = 0;

    if (--task8->unkB8 <= 0) {
        var_r7 = 1;
    }

    if (task8->unk88 < temp_r0->unk4C) {
        task8->unk88 += 0x20000;
        if (task8->unk88 > temp_r0->unk4C) {
            task8->unk88 = temp_r0->unk4C;
        }
    } else if (task8->unk88 > temp_r0->unk4C) {
        task8->unk88 -= 0x20000;
        if (task8->unk88 < temp_r0->unk4C) {
            task8->unk88 = temp_r0->unk4C;
        }
    }

    if (DPAD_LEFT & gInput) {
        if ((temp_r0->unk4C + 0x8000) < 0x020F0000) {
            task8->unk88 += 0x8000;
            temp_r0->unk4C += 0x8000;
        }
    } else if (DPAD_RIGHT & gInput) {
        if ((temp_r0->unk4C - 0x8000) > 0x01F00000) {
            task8->unk88 -= 0x8000;
            temp_r0->unk4C -= 0x8000;
        }
    }

    if (DPAD_DOWN & gInput) {
        var_r4 += 0x180;
        if (var_r4 > 0x7800) {
            var_r4 = 0x7800;
        }
    } else if (DPAD_UP & gInput) {
        var_r4 -= 0x180;
        if (var_r4 < 0x1400) {
            var_r4 = 0x1400;
        }
    }
    task8->unk90 = var_r4;
    temp_r0->unk54 = var_r4;

    if (var_r7 != 0) {
        task8->unkB8 = 0;
        task8->unk94 = 0;
        task8->unkAC = 0;
        task8->sprite8.prevVariant = -1;
    }
}

void sub_80B41B0(void)
{
    Arg2Task8 *task8 = TASK_DATA(gCurTask);
    UnkArg2 *temp_r1 = task8->unk0;
    Arg2TaskC *temp_r0 = TASK_DATA(temp_r1->taskC);
    u16 var_r5 = 0;

    if (temp_r1->unk8C4 > 4U) {
        if (task8->unkB3 == 0) {
            if (0x20 & gInput) {
                var_r5 = 1;
                task8->sprite8.prevVariant = 0xFF;
            } else if (0x10 & gInput) {
                var_r5 = 2;
                task8->sprite8.prevVariant = 0xFF;
            }
        } else if (task8->unk88 <= 0x01E50000) {
            if (0x20 & gInput) {
                var_r5 = 1;
                task8->sprite8.prevVariant = 0xFF;
            }
        } else if (task8->unk88 >= 0x021B0000) {
            if (0x10 & gInput) {
                var_r5 = 2;
                task8->sprite8.prevVariant = 0xFF;
            }
        }
        if (gPressedKeys & gStageData.buttonConfig.jump) {
            var_r5 = 3;
            task8->sprite8.prevVariant = 0xFF;
            task8->unk9C = -0x400;
            temp_r0->unk64 = 0x300;
            m4aSongNumStart(SE_JUMP);
        }
    }
    task8->unk90 = temp_r0->unk54;
    task8->unkAC = var_r5;
}

void sub_80B4294(void)
{
    s32 temp_r0_2;
    s32 temp_r1;
    s32 var_r1;
    s32 var_r2;
    u16 var_r5;
    Arg2Task8 *task8 = TASK_DATA(gCurTask);
    Arg2TaskC *taskC = TASK_DATA(task8->unk0->taskC);

    var_r5 = task8->unkAC;
    if (DPAD_LEFT & gInput) {
        task8->unk94 += 0xA80;
    } else if (DPAD_RIGHT & gInput) {
        task8->unk94 -= 0xA80;
    }

    if (task8->unk88 <= 0x01E50000) {
        task8->unkB3 = 1;
        task8->unk88 = 0x01E50000;
    } else if (task8->unk88 >= 0x021B0000) {
        task8->unkB3 = 1;
        task8->unk88 = 0x021B0000;
    }

    var_r1 = task8->unk94;
    if (var_r1 < 0) {
        var_r1 = 0 - var_r1;
    }
    if ((var_r1 <= 0x4FE) && !(0x30 & gInput)) {
        var_r5 = 0;
        task8->sprite8.prevVariant = 0xFF;
        task8->unk94 = 0;
    } else {
        temp_r0_2 = task8->unk94;
        if (temp_r0_2 > 0) {
            var_r5 = 2;
        } else if (temp_r0_2 < 0) {
            var_r5 = 1;
        }
    }

    if (gPressedKeys & gStageData.buttonConfig.jump) {
        var_r5 = 3;
        task8->sprite8.prevVariant = 0xFF;
        task8->unk9C = -0x400;
        taskC->unk64 = 0x300;
        m4aSongNumStart(SE_JUMP);
    }
    task8->unk90 = taskC->unk54;
    task8->unkAC = var_r5;
}

void sub_80B43B4(void)
{
    u16 var_r5;
    s32 unk90;
    s32 unk9C;

    Arg2Task8 *task8 = TASK_DATA(gCurTask);
    Arg2TaskC *taskC = TASK_DATA(task8->unk0->taskC);

    var_r5 = task8->unkAC;
    unk90 = task8->unk90;
    unk9C = task8->unk9C;
    unk9C += 0x30;
    unk90 += unk9C;

    if (unk9C < 0) {
        if (gInput & gStageData.buttonConfig.jump) {
            unk9C -= 0x10;
        }
    }

    if (0x20 & gInput) {
        task8->unk94 += 0xA80;
    } else if (0x10 & gInput) {
        task8->unk94 -= 0xA80;
    }

    if (task8->unk88 < 0x01E50000) {
        task8->unk88 = 0x01E50000;
    } else if (task8->unk88 > 0x021B0000) {
        task8->unk88 = 0x021B0000;
    }

    if (unk90 >= taskC->unk54) {
        unk90 = taskC->unk54;
        unk9C = 0;

        if (task8->unk94 == 0) {
            var_r5 = 0;
        } else if (task8->unk94 > 0) {
            var_r5 = 2;
        } else if (task8->unk94 < 0) {
            var_r5 = 1;
        }
        taskC->unk60 = 0;
        taskC->unk64 = 0;
    }

    task8->unk90 = unk90;
    task8->unk9C = unk9C;
    task8->unkAC = var_r5;
}

void sub_80B4498(Sprite *s, u16 *vram, s16 yPos, u8 arg3, Arg4_80B4498 *arg4)
{
    u32 var_r3;
    u8 temp_r2;

    var_r3 = 0x1000;
    if (1 & arg4->unk7) {
        var_r3 |= 0x400;
    }
    if (2 & arg4->unk7) {
        var_r3 |= 0x800;
    }
    s->tiles = (u8 *)vram;
    s->anim = arg4->anim;
    s->frameFlags = var_r3;
    s->x = DISPLAY_CENTER_X;
    s->y = yPos;
    s->oamFlags = arg3 << 6;
    s->qAnimDelay = 0;
    s->prevAnim = -1;
    s->variant = (u8)arg4->variant;
    s->prevVariant = -1;
    s->animSpeed = arg4->animSpeed;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    UpdateSpriteAnimation(s);
}

// (43.90%) https://decomp.me/scratch/y40ZZ
NONMATCH("asm/non_matching/game/sa3/spstg__sub_80B4508.inc", void sub_80B4508(Arg2Task8 *task8))
{
    s32 sp0;
    s32 sp4;
    s16 temp_r5_2;
    s16 temp_r5_3;
    s16 temp_r1;
    s32 temp_r2;
    s32 temp_r4;
    s32 temp_r5;
    s16 temp_r1_2;
    u16 temp_r3;
    u16 temp_r6;
    s32 var_r3;
    Arg2TaskC *temp_r0 = TASK_DATA(task8->unk0->taskC);
    Sprite *s = &task8->sprite8;
    SpriteTransform *tf = &task8->tf38;
    temp_r1 = task8->unk88;
    temp_r5 = 0xFE1B0000;
    temp_r5 = (s32)((temp_r1 + temp_r5) * 0x47) >> 0x14;
    var_r3 = 240;
    s->frameFlags = 0x1070;
    temp_r6 = ((s32)temp_r0->unk58 >> 8) & 0x3FF;
    sp4 = temp_r0->unk4C - task8->unk88;
    temp_r2 = (s32)(((u32)temp_r0->unk48 >> 8) * 0x1C00) >> 0x10;
    temp_r5_2 = SIN(temp_r6);
    temp_r5_3 = COS(temp_r6);
    temp_r4 = sp4 >> 0x10;
    temp_r3 = (s16)((s16)((0xF0 - temp_r5) + ((s32)(temp_r2 * temp_r5_2) >> 0xE)) + ((s32)(temp_r5_3 * temp_r4) >> 0xC))
        - ((s32)(temp_r4 * 9) >> 1);
    temp_r1 = (s16)(((s16)(((s32)(SIN(((s32)temp_r0->unk58 >> 8) & 0x3FF) * ((s32)((temp_r0->unk4C - temp_r1) * 5) >> 0x11) * 4) >> 0x10)
                           + ((s32)task8->unk90 >> 8))
                     + 0x18)
                    - ((s32)(temp_r5_3 * temp_r2) >> 0xE))
        + ((s32)(temp_r4 * temp_r5_2) >> 0xE);
    s->x = (s16)temp_r3;
    s->y = (s16)temp_r1;
    tf->qScaleX = (s16)((u32)temp_r0->unk48 >> 8);
    tf->qScaleY = (s16)((u32)temp_r0->unk48 >> 8);
    tf->x = (s16)temp_r3;
    tf->y = (s16)temp_r1;
    tf->rotation = temp_r6;
    UpdateSpriteAnimation(s);
    TransformSprite(s, tf);
    DisplaySprite(s);
}
END_NONMATCH

void sub_80B4654(UnkArg2 *arg0, s8 arg1)
{
    s16 temp_r0;

    Arg2Task8 *temp_r2 = TASK_DATA(arg0->task8);
    if (temp_r2->unkB4 == 0) {
        if (temp_r2->unkB5 == 0) {
            temp_r2->unkB5 = 1U;

            if (arg0->unk8C0 != 0) {
                if (arg0->unk8C0 < 5) {
                    arg1 = (u8)arg0->unk8C0;
                }
                sub_80B4FA8(arg0, arg1);
                m4aSongNumStart(SE_LOST_RINGS);
            }
        }
    }
}

void sub_80B46B0(UnkArg2 *arg0)
{
    Arg2Task8 *temp_r2 = TASK_DATA(arg0->task8);

    if (temp_r2->unkB4 == 0 && temp_r2->unkB7 == 0) {
        temp_r2->unkB6 = 1;
    }
}

void sub_80B46DC(void) { }

void sub_80B46E0()
{
    s32 temp_r0;
    s32 var_r2;
    s32 var_r3;
    u16 var_r1;
    Arg2Task8 *task8 = TASK_DATA(gCurTask);
    Arg2TaskC *taskC = TASK_DATA(task8->unk0->taskC);
    var_r1 = task8->unkAC;
    var_r3 = task8->unk90;
    var_r2 = task8->unk9C;
    var_r2 += 0x40;
    var_r3 += var_r2;

    if (var_r3 >= taskC->unk54) {
        var_r3 = taskC->unk54;
        var_r2 = 0;
        task8->sprite8.prevVariant = 0xFF;
        var_r1 = 0;
    }

    task8->unk90 = var_r3;
    task8->unk9C = var_r2;
    task8->unkAC = var_r1;
}

void sub_80B4738()
{
    Arg2Task8 *task8 = TASK_DATA(gCurTask);
    s32 temp_r2;
    s32 temp_r3;

    temp_r3 = task8->unk90;
    temp_r2 = task8->unk9C;
    temp_r2 += 0x30;
    temp_r3 += temp_r2;
    if ((s32)(temp_r3 >> 8) > 0xC8) {
        task8->unkAC = 8;
    }
    task8->unk90 = temp_r3;
    task8->unk9C = temp_r2;
}

void sub_80B4774(void) { }

void sub_80B4778(void)
{
    Arg2Task8 *task8 = TASK_DATA(gCurTask);
    u16 temp_r1;

    if (task8->unkAC != 0x12) {
        if (task8->unkB0++ > 0x3BU) {
            task8->unkAC = 0x12;
        }
    }

    if (task8->unkB0 == 0x12) {
        m4aSongNumStart(MUS_EMERALD_GET);
    }
}

bool8 sub_80B47C4(void)
{
    Arg2Task8 *task8 = TASK_DATA(gCurTask);
    u16 temp_r0;
    u8 var_r1;

    var_r1 = 0;
    temp_r0 = task8->unkAC;
    if (((u32)temp_r0 <= 2U) || (temp_r0 == 5)) {
        var_r1 = 1;
    }
    return var_r1;
}

void sub_80B47EC(Sprite *s, s16 animSpeed, s16 arg2, s16 arg3, Arg4_80B4498 *arg4)
{
    u32 frameFlags;

    frameFlags = 0x1000;
    if (1 & arg4->unk7) {
        frameFlags |= 0x400;
    }
    if (2 & arg4->unk7) {
        frameFlags |= 0x800;
    }
    s->anim = arg4->anim;
    s->frameFlags = frameFlags;
    s->x = (s16)(u16)arg2;
    s->y = (s16)(u16)arg3;
    s->variant = (u8)arg4->variant;
    s->animSpeed = (animSpeed != -1) ? animSpeed : SPRITE_ANIM_SPEED(1.0);
    UpdateSpriteAnimation(s);
}

void sub_80B484C(Sprite *s, s16 animSpeed, s16 posY, Arg4_80B4498 *arg4)
{
    u32 frameFlags = 0x1100;

    if (1 & arg4->unk7) {
        frameFlags |= 0x400;
    }
    if (2 & arg4->unk7) {
        frameFlags |= 0x800;
    }
    s->anim = arg4->anim;
    s->frameFlags = frameFlags;
    s->y = posY;
    s->variant = (u8)arg4->variant;
    s->animSpeed = (animSpeed != -1) ? animSpeed : SPRITE_ANIM_SPEED(1.0);
    UpdateSpriteAnimation(s);
}

// -> taskC
Task *sub_80B48A4(UnkArg2 *ctx)
{
    u8 index = ctx->unk8C7;
    Task *t = TaskCreate(Task_80B494C, sizeof(Arg2TaskC), 0xA000U, 0U, NULL);
    Arg2TaskC *temp_r5 = TASK_DATA(t);
    temp_r5->ctx = ctx;
    temp_r5->unk4 = 0;
    temp_r5->unk4C = (gUnknown_080DBE58[index][0] << 0x10);
    temp_r5->unk50 = (gUnknown_080DBE58[index][1] << 0x10);
    temp_r5->unk54 = 0x7800;
    temp_r5->unk58 = 0;
    temp_r5->unk6C = 0;
    temp_r5->unk48 = 0x18000;
    temp_r5->unk68 = 0;
    temp_r5->unk5C = 0;
    temp_r5->unk64 = 0;
    temp_r5->unk60 = 0;
    temp_r5->unk6E = 1;

    m4aSongNumStart(SE_526);

    return t;
}

void Task_80B494C(void)
{
    s32 temp_r2;
    s32 temp_r4;
    s32 temp_r7;
    s32 temp_r8;
    s32 temp_r1_2;
    u16 temp_r0;
    s16 temp_r0_2;
    s32 temp_r0_3;

    Arg2TaskC *temp_r3 = TASK_DATA(gCurTask);
    UnkArg2 *temp_r1 = temp_r3->ctx;
    Arg2Task0 *temp_sb = TASK_DATA(temp_r1->task0);
    Arg2Task8 *temp_sl = TASK_DATA(temp_r1->task8);
    temp_r3->unk6E = ((temp_r3->unk6E + 1) & 3);
    temp_r8 = sa3__sub_80B1560(&gUnknown_080DC418[0], (u16)(temp_r3->unk6C << 6));
    temp_r4 = sa3__sub_80B1560(&gUnknown_080DC408[0], (u16)(temp_r3->unk6C << 6));
    temp_r7 = sa3__sub_80B1560(&gUnknown_080DC3F8[0], (u16)(temp_r3->unk6C << 6));
    temp_r2 = sa3__sub_80B1560(&gUnknown_080DC3E8[0], (u16)(temp_r3->unk6C << 6));

    temp_r3->unk54 = temp_r4 << 6;

    if (temp_r3->unk54 < 0x1400) {
        temp_r3->unk54 = 0x1400;
    }
    if (temp_r3->unk54 > 0x7800) {
        temp_r3->unk54 = 0x7800;
    }

    temp_r3->unk48 = (temp_r8 << 7);
    temp_r0_3 = temp_sb->unk10 - 0x20000;
    temp_r0_3 += (temp_r8 << 8);
    temp_sb->unk10 = temp_r0_3;
    temp_r1_2 = (temp_r7 << 0xE);
    temp_r1_2 += 0x1F00000;
    temp_r3->unk4C = temp_r1_2;
    temp_r0_2 = 0x3FF;
    temp_r0_2 &= temp_r2;
    temp_r3->unk58 = (temp_r0_2 << 8);
    temp_sl->unk88 = temp_r1_2;
    sub_80B4DA8(temp_r3);
    sub_80B4B68(temp_r3);

    if (++temp_r3->unk6C > 300) {
        temp_r3->unk48 = 0x10000;
        gCurTask->main = Task_80B4D08;
    }
}

void sub_80B4A7C(Arg2TaskC *temp_r3)
{
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 temp_r1_4;
    Arg2Task8 *task8 = TASK_DATA(temp_r3->ctx->task8);
    u8 var_r5 = 0;
    s32 temp_r2 = task8->unk88;

    s32 var_r4 = 1;
    switch (task8->unkAC) {
        case 12:
        case 13:
        case 19:
        case 20: {
            var_r4 = 0;
        } break;
    }

    if (var_r4 != 0) {
        if (temp_r2 < (temp_r3->unk4C - 0xB0000)) {
            temp_r3->unk4C = temp_r2 + 0xB0000;
            var_r5 = 1;
        } else if (temp_r2 > (temp_r3->unk4C + 0xC0000)) {
            temp_r3->unk4C = temp_r2 - 0xC0000;
            var_r5 = 1;
        }

        if (temp_r3->unk4C < 0x01F00000) {
            temp_r3->unk4C = 0x01F00000;
        } else if (temp_r3->unk4C > 0x020F0000) {
            temp_r3->unk4C = 0x020F0000;
        }
        temp_r1_3 = task8->unk94 >> 11;
        temp_r1_3 = temp_r1_3 * temp_r1_3 * temp_r1_3;
        temp_r1_3 *= 5;
        temp_r1_3 >>= 11;
        temp_r3->unk58 = SIN((-temp_r1_3) & ONE_CYCLE) * 4;
        task8->unkB3 = var_r5;
    } else {
        temp_r1_4 = temp_r3->unk5C + 0x80;
        temp_r3->unk5C = temp_r1_4;
        temp_r3->unk54 += 0x60;
        temp_r3->unk4C -= temp_r1_4;
        temp_r3->unk48 += temp_r1_4 >> 6;
        temp_r3->unk58 += 0x1000;
    }
}

void sub_80B4B68(Arg2TaskC *arg0)
{
    s16 *var_r2;
    s16 temp_r2_2;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 var_r1;
    u16 temp_r1;
    u16 temp_r1_2;
    u16 var_r0_2;
    u16 var_r0_3;
    s16 var_r3;
    u32 var_r0;
    s16 var_r5;
    UnkArg2 *temp_r7 = arg0->ctx;
    Arg2Task8 *temp_r2 = TASK_DATA(temp_r7->task8);
    u16 temp_r8 = 0xBE - ((s32)((arg0->unk4C + 0xFE100000) * 0x47) >> 0x14);

    var_r3 = 0;
    switch (arg0->unk68) {
        case 0:
            var_r3 = ((u8)arg0->unk6E >> 1) + 0x1AC;
            if (temp_r2->unkA8 > 0xC750) {
                var_r0 = 1;
                arg0->unk68 = var_r0;
                arg0->unk6C = 0U;
            }
            break;
        case 1:
            var_r3 = (arg0->unk6C < 6) ? 0x1AE : 0x1AF;
            if (arg0->unk6C > 0xCU) {
                arg0->unk68 = 2U;
                arg0->unk6C = 0;
            }
            break;
        case 2:
            var_r3 = ((u8)arg0->unk6E >> 1) + 0x1B0;
            if ((0xC800 - temp_r2->unkA8) > 0xB0) {
                var_r0 = 3;
                arg0->unk68 = var_r0;
                arg0->unk6C = 0U;
            }
            break;
        case 3:
            var_r3 = (arg0->unk6C > 6) ? 0x1AE : 0x1AF;
            if (arg0->unk6C > 0xCU) {
                arg0->unk68 = 0U;
                arg0->unk6C = 0;
            }
            break;
    }
    var_r5 = (u32)(arg0->unk48 << 8) >> 0x10;
    temp_r0_2 = 0xC800 - temp_r2->unkA8;
    if (temp_r0_2 < 0xB0) {
        temp_r0_3 = temp_r0_2 - 0x58;
        var_r1 = ABS(temp_r0_3);
        temp_r0_3 = var_r1;
        temp_r0_3 -= 0x58;
        var_r5 += (temp_r0_3) >> 1;
    }

    sub_80B6B3C(&arg0->bg8, 0, 0x1C, var_r3, 0x10, 0x10, 0, 0x13, 0, 0);

    temp_r2_2 = (s16)var_r5;
    sa2__sub_8003EE4((u16)((u32)(arg0->unk58 << 0xE) >> 0x16), temp_r2_2, temp_r2_2, 0x40, 0x40, (s16)(s32)(s16)temp_r8,
                     (s16)(s32)(s16)(((s32)arg0->unk54 >> 8) + (((s32)arg0->unk60 >> 9) + 0x19)), &gBgAffineRegs[1]);
    temp_r7->unk8B0 = (s32)arg0->unk4C;
}

void SpStage_InitializeBoost(UnkArg2 *ctx, s32 arg1)
{
    Arg2TaskC *taskC = TASK_DATA(ctx->taskC);
    taskC->unk6C = 0;
    taskC->unk68 = arg1;
}

void Task_80B4D08(void)
{
    Arg2TaskC *taskC = TASK_DATA(gCurTask);

    taskC->unk6E = ((taskC->unk6E + 1) & 3);
    taskC->unk6C = (taskC->unk6C + 1);
    sub_80B4D58(taskC);
    sub_80B4A7C(taskC);
    sub_80B4DA8(taskC);
    sub_80B4B68(taskC);
}

void sub_80B4D58(Arg2TaskC *taskC)
{

    if ((taskC->unk60 != 0) || (taskC->unk64 != 0)) {
        s32 prevUnk60 = taskC->unk60;

        if (taskC->unk60 < 0) {
            taskC->unk64 += 0x28;
        } else {
            taskC->unk64 -= 0x28;
        }

        taskC->unk60 += taskC->unk64;
        if (prevUnk60 < 0) {
            if (taskC->unk60 > 0) {
                taskC->unk64 = (taskC->unk64 * 100) >> 8;
            }

        } else {
            if (taskC->unk60 < 0) {
                taskC->unk64 = (taskC->unk64 * 100) >> 8;
            }
        }

        if (taskC->unk60 < 0) {
            taskC->unk60 = 0;
            taskC->unk64 = 0;
        }
    }
}

void sub_80B4DA8(Arg2TaskC *taskC)
{
    UnkArg2 *ctx = taskC->ctx;
    Arg2Task8 *task8 = TASK_DATA(ctx->task8);

    if ((ctx->unk8C4 > 4U) && (task8->unkAC <= 2U)) {
        if (DPAD_DOWN & gInput) {
            taskC->unk54 += 0x180;
            if (taskC->unk54 > 0x7800) {
                taskC->unk54 = 0x7800;
            }
        } else if (DPAD_UP & gInput) {
            taskC->unk54 -= 0x180;
            if (taskC->unk54 < 0x1400) {
                taskC->unk54 = 0x1400;
            }
        }
    }
}

Task *sub_80B4E1C(UnkArg2 *ctx)
{
    s16 sp4[7];
    u8 var_r0;
    u8 var_r0_2;
    Arg2Task4_x744 *var_r1;
    Task *t;
    Arg2Task4 *temp_r1;

    memcpy(&sp4, gUnknown_080DC428, sizeof(sp4));
    t = TaskCreate(Task_80B5038, sizeof(Arg2Task4), 0xB000U, 0U, NULL);
    temp_r1 = TASK_DATA(t);
    temp_r1->unk0 = ctx;
    temp_r1->unk8DA = sp4[ctx->unk8C7];
    temp_r1->unk8DC = 0;
    temp_r1->unk8E2 = 0;
    temp_r1->unk8E4 = 0;
    temp_r1->unk8DE = 0;

    for (var_r1 = &temp_r1->unk5F4[0], var_r0 = 0; var_r0 < (s32)ARRAY_COUNT(temp_r1->unk5F4); var_r0++, var_r1++) {

        var_r1->unk0 = 0;
        var_r1->unk4 = 0;
        var_r1->unk8 = 0;
        var_r1->unkC = 0;
        var_r1->unk10 = 0;
        var_r1->unk14 = 0;
        var_r1->unk18 = 0;
        var_r1->unk1A = 0;
        var_r1->unk1B = 0;
    }

    for (var_r1 = &temp_r1->unk6D4[0], var_r0 = 0; var_r0 < (s32)ARRAY_COUNT(temp_r1->unk6D4); var_r0++, var_r1++) {
        var_r1->unk0 = 0;
        var_r1->unk4 = 0;
        var_r1->unk8 = 0;
        var_r1->unkC = 0;
        var_r1->unk10 = 0;
        var_r1->unk14 = 0;
        var_r1->unk18 = 0;
        var_r1->unk1A = 0;
        var_r1->unk1B = 0;
    }

    return t;
}

void sub_80B4EEC(UnkArg2 *arg0, s16 arg1)
{
    Arg2Task8 *temp_r1 = TASK_DATA(arg0->task8);
    s16 i;

    if (temp_r1->unkA8 != 0) {
        temp_r1->unkB9 = 0x3C;
    }
    arg0->unk8C0 += arg1;
    m4aSongNumStart(SE_RING_OLD_2);
    if (arg0->unk8C0 > 999) {
        arg0->unk8C0 = 999;
    }

    for (i = 0; i < arg1; i++) {
        if (++arg0->unk8D0 > 9) {
            arg0->unk8D0 = 0;

            if (++arg0->unk8CF > 9) {
                arg0->unk8CF = 0;

                if (++arg0->unk8CE > 9) {
                    arg0->unk8CE = 9;
                    arg0->unk8CF = 9;
                    arg0->unk8D0 = 9;
                }
            }
        }
    }
}

void sub_80B4FA8(UnkArg2 *arg0, s16 arg1)
{
    s16 i;

    sub_80B6198(arg0, -1);

    arg0->unk8C0 -= arg1;
    if (arg0->unk8C0 < 0) {
        arg0->unk8C0 = 0;
    }

    for (i = arg1; i > 0; i--) {
        if (--arg0->unk8D0 < 0) {
            arg0->unk8D0 = 9;

            if (--arg0->unk8CF < 0) {
                arg0->unk8CF = 9;

                if (--arg0->unk8CE < 0) {
                    arg0->unk8CE = 0;
                    arg0->unk8CF = 0;
                    arg0->unk8D0 = 0;
                }
            }
        }
    }
}

void Task_80B5038(void)
{
    Arg2Task4 *temp_r1 = TASK_DATA(gCurTask);
    s16 i;

    for (i = 0; i < (s32)ARRAY_COUNT(temp_r1->unk7B4); i++) {
        temp_r1->unk7B4[i] = 1;
    }

    temp_r1->unk8DC = 0;

    // TODO: Add tile-sizes instead of magic nums!
    sub_80B6BB8(&temp_r1->sprite4, 0, 16, ANIM_SP_STAGE_RING, 0x3000, 0x14, 0x14, 0xE, 0U, 0);
    sub_80B6BB8(&temp_r1->sprite2C, 0, 4U, ANIM_SP_STAGE_RING, 0x3000, 0x14, 0x14, 0xE, 5U, 0);
    sub_80B6BB8(&temp_r1->sprite54, 0, 4U, ANIM_SP_STAGE_IRON_BALL, 0x3000, 0x14, 0x14, 0xE, 0U, 0);
    sub_80B6BB8(&temp_r1->sprite7C, 0, 4U, ANIM_SP_STAGE_RING_BOOSTER, 0x3000, 0x14, 0x14, 0xE, 0U, 0);
    sub_80B6BB8(&temp_r1->spriteA4, 0, 16, ANIM_SP_STAGE_MISSILE_BADNIK, 0x3000, 0x14, 0x14, 0xE, 0U, 0);
    sub_80B6BB8(&temp_r1->spriteCC, 0, 4U, ANIM_SP_STAGE_MISSILE_BADNIK_PROJ, 0x3000, 0x14, 0x14, 0xE, 0U, 0);
    sub_80B6BB8(&temp_r1->spriteF4, 0, 16, ANIM_SP_STAGE_EXPLOSION, 0x1000, 0x14, 0x14, 0xE, 0U, 0);
    sub_80B6BB8(&temp_r1->sprite11C, 0, 4U, ANIM_SP_STAGE_EMERALD, 0x1000, 0x14, 0x14, 0xE, 0U, 0);
    sub_80B6BB8(&temp_r1->sprite144, 0, 4U, ANIM_SP_STAGE_RING_COLLECT_EFFECT, 0x1000, 0x14, 0x14, 0xE, 0U, 0);
    sub_80B6BB8(&temp_r1->sprite16C, 0, 4U, ANIM_SP_STAGE_RING_COLLECT_EFFECT, 0x1000, 0x14, 0x14, 0xE, 1U, 0);

    gCurTask->main = sub_80B524C;
}

void sub_80B51F4(UnkArg2 *arg0)
{
    s16 sp[8];
    Sprite *s = &arg0->sprite88;
    memcpy(sp, &gUnknown_080DC436, sizeof(sp));
    s->tiles = NULL;
    s->oamFlags = 0;
    s->anim = sp[arg0->unk8C7];
    s->variant = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->x = 0;
    s->y = 0;
    s->frameFlags = 0x80000;
    UpdateSpriteAnimation(s);
}

void sub_80B524C()
{
    Arg2Task4 *strc4 = TASK_DATA(gCurTask);
    UnkArg2 *temp_r6 = strc4->unk0;

    if (temp_r6->unk8C8 == 0) {
        strc4->unk8E2 += 8;
        strc4->unk8E4 = (strc4->unk8E4 + 4) & 0x3FF;

        UpdateSpriteAnimation(&strc4->sprite4);
        UpdateSpriteAnimation(&strc4->sprite2C);
        UpdateSpriteAnimation(&strc4->sprite54);
        UpdateSpriteAnimation(&strc4->sprite7C);
        UpdateSpriteAnimation(&strc4->spriteA4);
        UpdateSpriteAnimation(&strc4->spriteCC);
        UpdateSpriteAnimation(&strc4->spriteF4);
        UpdateSpriteAnimation(&strc4->sprite11C);
        sub_80B51F4(temp_r6);
        sub_80B5450();
        sub_80B62FC(temp_r6);

        strc4->unk8DC = (strc4->unk8DC + 1) & 1;

        if (strc4->unk5F4[strc4->unk8DC + 0].unk1A == 1) {
            sub_80B6370(0, &strc4->unk5F4[strc4->unk8DC + 0]);
        }

        if (strc4->unk5F4[strc4->unk8DC + 2].unk1A == 1) {
            sub_80B6370(1, &strc4->unk5F4[strc4->unk8DC + 2]);
        }

        if (strc4->unk5F4[strc4->unk8DC + 4].unk1A == 1) {
            sub_80B6370(2, &strc4->unk5F4[strc4->unk8DC + 4]);
        }

        if (strc4->unk5F4[strc4->unk8DC + 6].unk1A == 1) {
            sub_80B6370(3, &strc4->unk5F4[strc4->unk8DC + 6]);
        }

        if (strc4->unk744[0].unk1A > 0) {
            strc4->unk744[0].unk1A--;
            sub_80B6464(0U, strc4->unk744);
        }
        if (strc4->unk744[1].unk1A > 0) {
            strc4->unk744[1].unk1A--;
            sub_80B6464(0U, &strc4->unk744[1]);
        }
        if (strc4->unk744[2].unk1A > 0) {
            strc4->unk744[2].unk1A--;
            sub_80B6464(0U, &strc4->unk744[2]);
        }
        if (strc4->unk744[3].unk1A > 0) {
            strc4->unk744[3].unk1A--;
            sub_80B6464(0U, &strc4->unk744[3]);
        }
    }
    sub_80B59E4();
}

void sub_80B5450(void)
{
    s32 sp[5];
    Arg2Task4 *strc4 = TASK_DATA(gCurTask);
    UnkArg2 *ctx = strc4->unk0;
    Strc_8E2EF8C *array = gUnknown_08E2EF8C[ctx->unk8C7];
    Arg2Task8 *strc8 = TASK_DATA(ctx->task8);
    Arg2TaskC *strcC = TASK_DATA(ctx->taskC);
    s16 sp20;
    s16 sp24;
    u16 *sp2C;
    s32 temp_sb;
    s32 temp_r8;
    s32 var_r7;
    u16 temp_r0;
    s16 temp_r3;
    s16 temp_r4;
    s16 temp_r6;
    u8 *var_r1_2;
    s32 var, var2;
    s8 i;

    sp20 = SIN(strc4->unk8E4);
    sp24 = COS(strc4->unk8E4) >> 2;
    temp_r0 = strc8->unkAC;
    switch (temp_r0 + 1) {
        case 0:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
        case 15:
        case 16:
        case 17:
        case 20:
        case 21: {
            break;
        }

        default:
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 18:
        case 19:
            if (strc8->unkB4 != 0) {
                break;
            }
            temp_r8 = (ctx->unk8B0 >> 16);
            temp_r8 += ((120 - strc8->unkA0) >> 2);
            temp_sb = (strc8->unk8C >> 16);
            var_r7 = (120 - (strc8->unk90 >> 8));
            var = strcC->unk54 >> 10;
            var2 = 30;
            var2 -= var;
            var_r7 += var2;
            if (strc8->unkAC == 5) {
                var_r7 -= 0x14;
            }

            for (array = &array[strc4->unk8DE], i = 0; (array->unk0 != -1) && i < 16; array++, i++) {
                if ((s8)strc4->unk7B4[array->unk0] == 1) {
                    temp_r3 = ((array->unk8 * sp20) >> 0x10) + array->unk2;
                    temp_r4 = array->unk4;
                    temp_r6 = ((array->unkA * sp24) >> 0xE) + array->unk6;

                    switch ((s8)array->unkC + 1) {
                        case 0:
                            break;
                        case 1:
                            if ((temp_r3 > temp_r8 - 10) && (temp_r3 < temp_r8 + 10)) {
                                if ((temp_r4 > temp_sb - 10) && (temp_r4 < temp_sb + 8)) {
                                    if ((temp_r6 >= var_r7 - 26) && (temp_r6 <= var_r7 + 32)) {
                                        sub_80B4EEC(ctx, strc8->unkB2);
                                        strc4->unk7B4[array->unk0] = 0xB;
                                    }
                                }
                            }
                            break;
                        case 2:
                            if ((temp_r3 > temp_r8 - 10) && (temp_r3 < temp_r8 + 10)) {
                                if ((temp_r4 > temp_sb - 10) && (temp_r4 < temp_sb + 8)) {
                                    if ((temp_r6 >= var_r7 - 26) && (temp_r6 <= var_r7 + 32)) {
                                        sub_80B4EEC(ctx, strc8->unkB2 * 5);
                                        strc4->unk7B4[array->unk0] = 0xB;
                                    }
                                }
                            }
                            break;
                        case 3:
                            if (((temp_r3 > temp_r8 - 5) && temp_r3 < (temp_r8 + 5))
                                && ((temp_r4 > temp_sb - 10) && (temp_r4 < temp_sb + 8))
                                && ((temp_r6 >= var_r7 - 14) && (temp_r6 <= var_r7 + 28))) {
                                sub_80B4654(ctx, 5);
                                strc4->unk7B4[array->unk0] = 0;
                            }
                            break;
                        case 4:
                            if (((temp_r3 > temp_r8 - 10) && (temp_r3 < temp_r8 + 10)) && ((s16)temp_r4 < (temp_sb + 7))
                                && ((temp_r6 >= var_r7 - 32) && (temp_r6 <= var_r7 + 32))) {
                                sub_80B46B0(ctx);
                                strc4->unk7B4[array->unk0] = 0;
                            }

                            break;
                        case 5:
                        case 10:
                            if (strc8->unkAC == 3) {
                                if ((temp_r3 > temp_r8 - 5) && (temp_r3 < temp_r8 + 9)) {
                                    if ((temp_r4 > temp_sb - 10) && (temp_r4 < temp_sb + 8)) {
                                        if ((temp_r6 >= var_r7 - 6) && temp_r6 <= (var_r7 - 6 + 0x2A)) {
                                            strc8->unk9C = -0x400;
                                            strc8->unk94 = 0 - strc8->unk94;
                                            sub_80B4EEC(ctx, strc8->unkB2 * 5);
                                            sp[0] = (array->unk2 << 0x10) + (array->unk8 * sp20);
                                            sp[1] = ((s16)array->unk4 << 0x10);
                                            sp[2] = (((s16)array->unk6 << 12) + (array->unkA * (COS(strc4->unk8E4) >> 4)));
                                            sub_80B6778(ctx, sp);
                                            strc4->unk7B4[array->unk0] = 0;
                                        }
                                    }
                                }
                            } else {
                                s16 var_ip = var_r7 - 6;
                                s16 var_sl = var_r7 + 36;
                                s16 idk = temp_r8 - 5;
                                s16 idk2 = (temp_r8 + 9);
                                if ((temp_r3 > idk) && (temp_r3 < idk2)) {
                                    if ((temp_r4 > temp_sb - 0xA) && (temp_r4 < (temp_sb - 0xA + 0x12))) {
                                        if ((temp_r6 >= var_ip) && (temp_r6 <= var_sl)) {
                                            sub_80B4654(ctx, 5);
                                            strc4->unk7B4[array->unk0] = 0;
                                        }
                                    }
                                }
                            }
                            break;
                        case 11:
                            break;
                    }
                }
            }
            break;
    }
}

// TODO: Fake-match
s16 sub_80B5944(s16 param0, s16 param1_)
{
    s32 fakematch = param1_ << 16;
    Arg2Task4 *strc4 = TASK_DATA(gCurTask);
    UnkArg2 *ctx = strc4->unk0;
    Strc_8E2EF8C *array0 = gUnknown_08E2EF8C[ctx->unk8C7];
    s16 max = param1_;
    Strc_8E2EF8C *array = &array0[max];
    Arg2Task8 *temp_r5 = TASK_DATA(ctx->task8);
    Arg2TaskC *taskC = TASK_DATA(ctx->taskC);

    while (array->unk0 != -1) {
        if (array->unk4 < param0) {
            if (array->unkC == 7) {
                temp_r5->unkAC = 0xE;
                temp_r5->unk90 = taskC->unk54;
            }
            if (array->unkC == 6) {
                temp_r5->unkAC = 9;
            }
            max++;
            array++;
        } else {
            break;
        }
    }

    return max;
}

// TODO: Fake-match
void sub_80B59E4(void)
{
    Strc_8E2EF8C_2 sp00[20];
    SpStgFunc funcs[27];
    Strc_8E2EF8C *temp_sb;
    Strc_8E2EF8C_2 *var_r5;
    s16 temp_r0_2;
    s32 temp_r6;
    s16 var_r1;
    Arg2Task4 *strc4 = TASK_DATA(gCurTask);
    UnkArg2 *temp_r1 = strc4->unk0;
    Arg2Task8 *temp_r8 = TASK_DATA(temp_r1->task8);
    Arg2TaskC *temp_r4 = TASK_DATA(temp_r1->taskC);

    temp_sb = gUnknown_08E2EF8C[temp_r1->unk8C7];
    memcpy(funcs, gUnknown_080DC448, sizeof(funcs));
    temp_r6 = 30 - ((s32)temp_r4->unk54 >> 10);
    for (var_r1 = 0, var_r5 = &sp00[0]; var_r1 < 20; var_r1++, var_r5++) {
        var_r5->unk0 = 0;
    }
    strc4->unk8DE = sub_80B5944((temp_r8->unk8C >> 16), strc4->unk8DE);

    {
#ifndef NON_MATCHING
        register s32 var_r0 asm("r0");
        var_r0 = 0;
        asm("" : "=r"(var_r0) : "r"(var_r0));
#else
        s32 var_r0 = 0;
#endif
        temp_r0_2 = sub_80B5AD4(sub_80B65FC(var_r0, sp00, temp_r6), &temp_sb[strc4->unk8DE], sp00, temp_r6);
    }
    for (var_r1 = 0, var_r5 = sp00; var_r1 < temp_r0_2; var_r1++, var_r5++) {

        funcs[var_r5->unk0](var_r1, var_r5);
    }
}

#if 0
s16 sub_80B5AD4(u16 arg0, s16 *arg1, ? *arg2, s32 arg3) {
    ? sp14;
    ? *sp28;
    s32 sp2C;
    void *sp30;
    s32 sp34;
    s32 sp38;
    s32 sp3C;
    s16 *var_r5;
    s16 temp_r0_3;
    s16 temp_r1;
    s16 var_r0;
    s32 temp_r0;
    s32 temp_r1_2;
    s32 var_r8;
    s8 temp_r0_2;
    u16 temp_r2;
    u16 temp_r3;
    u16 var_sb;
    u16 var_sl;
    void *temp_r4;

    sp28 = arg2;
    sp2C = arg3;
    temp_r3 = gCurTask->data;
    sp30 = (void *) temp_r3;
    var_r5 = arg1;
    temp_r2 = temp_r3->unk8E4;
    sp34 = (s32) (u16) gSineTable[temp_r2];
    sp38 = (s32) (u16) ((s32) ((u16) gSineTable[temp_r2 + 0x100] << 0x10) >> 0x14);
    var_sl = arg0;
    var_sb = temp_r3->unk8DE;
    if (*var_r5 == -1) {
        goto block_28;
    }
    temp_r1_2 = (u16) (var_sb + 0x14) << 0x10;
    var_r8 = var_sb << 0x10;
    sp3C = temp_r1_2;
    if (var_r8 >= temp_r1_2) {
        goto block_28;
    }
loop_5:
    if (*(sp30 + 0x7B4 + var_r5->unk0) == 0) {
        goto block_25;
    }
    temp_r0 = var_r5->unkC + 1;
    if (temp_r0 != 5) {
        if ((temp_r0 >= 5) && (temp_r0 <= 8) && (temp_r0 >= 7)) {
            goto block_25;
        }
        var_r0 = 8;
        goto block_14;
    }
    var_r0 = 0x10;
block_14:
    subroutine_arg0.unkC = var_r0;
    subroutine_arg0.unkE = var_r0;
    subroutine_arg0.unk10 = 0;
    subroutine_arg0.unk12 = 5;
    if ((sub_80B67C4(&sp14, &subroutine_arg0, sp30->unk0, sp2C, (var_r5->unk2 << 0x10) + (var_r5->unk8 * (s16) sp34), var_r5->unk4 << 0x10, (var_r5->unk6 << 0xC) + (var_r5->unkA * (s16) sp38)) << 0x10) != 0) {
        temp_r1 = (s16) var_sl;
        if ((s32) temp_r1 <= 0x13) {
            temp_r4 = sp28 + (temp_r1 * 0x14);
            CpuSet(&sp14, temp_r4, 0x04000005U);
            temp_r0_2 = *(sp30 + 0x7B4 + var_r5->unk0);
            if ((s32) temp_r0_2 > 0xA) {
                temp_r4->unk0 = (s16) temp_r0_2;
            } else {
                temp_r0_3 = var_r5->unkC + 1;
                temp_r4->unk0 = temp_r0_3;
                if (temp_r0_3 == 4) {
                    temp_r4->unk8 = var_sb;
                } else if ((temp_r0_3 == 5) && !(((var_r8 >> 0xA) + sp30->unk8E2) & 0x1FF)) {
                    sub_80B6538(&subroutine_arg0);
                    m4aSongNumStart(SE_527);
                }
            }
            var_sl = (u16) ((u32) ((var_sl << 0x10) + 0x10000) >> 0x10);
            goto block_25;
        }
        return temp_r1;
    }
block_25:
    var_r5 += 0x10;
    var_sb = (u16) ((u32) (var_r8 + 0x10000) >> 0x10);
    if (*var_r5 != -1) {
        var_r8 = var_sb << 0x10;
        if (var_r8 < sp3C) {
            goto loop_5;
        }
    }
block_28:
    return (s16) var_sl;
}

void sub_80B5CC4(u16 arg0, void *arg1) {
    s16 temp_r0;
    s16 temp_r5;
    s16 var_r2;
    u16 temp_r2;
    u16 temp_r4;
    u16 temp_r8;
    void *temp_r0_2;
    void *temp_r0_3;
    void *temp_r7;
    void *temp_sl;
    void *var_r3;

    temp_r2 = gCurTask->data;
    temp_sl = *temp_r2;
    temp_r7 = temp_r2 + (((s16) arg0 * 0x28) + 0x194);
    var_r3 = NULL;
    temp_r0 = arg1->unk0 - 1;
    switch (temp_r0) {
    case 0:
        var_r3 = temp_r2 + 4;
        break;
    case 1:
        var_r3 = temp_r2 + 0x2C;
        break;
    case 2:
        var_r3 = temp_r2 + 0x54;
        break;
    case 5:
        var_r3 = temp_r2 + 0xCC;
        break;
    case 8:
        var_r3 = temp_r2 + 0x11C;
        break;
    case 4:
    case 9:
        var_r3 = temp_r2 + 0xA4;
        break;
    }
    temp_r8 = arg1->unk2;
    temp_r4 = arg1->unk4 - arg1->unk6;
    CpuSet(var_r3, temp_r7, 0x0400000AU);
    temp_r5 = (s16) arg0;
    temp_r7->unk8 = (s32) (temp_r5 | 0xC1060);
    temp_r7->unk10 = temp_r8;
    temp_r7->unk12 = temp_r4;
    var_r2 = 0x180;
    if ((s32) (s16) arg1->unk4 < (s32) (temp_sl->unk8DA - 0xF)) {
        var_r2 = 0x340;
    }
    temp_r7->unk14 = var_r2;
    sub_8E8_80B69B4(temp_r7);
    temp_r0_2 = (temp_r5 << 5) + &gOamBuffer->all.affineParam;
    temp_r0_2->unk0 = (u16) arg1->unkC;
    temp_r0_3 = temp_r0_2 + 8;
    temp_r0_2->unk8 = (u16) arg1->unkE;
    temp_r0_3->unk8 = (u16) arg1->unk10;
    (temp_r0_3 + 8)->unk8 = (u16) arg1->unk12;
}

void sub_80B5DF4(u16 arg0, void *arg1) {
    s16 temp_r5;
    u16 temp_r0;
    u16 temp_r0_2;
    u16 temp_r4;
    u16 temp_r8;
    u16 temp_sb;
    void *temp_r0_3;
    void *temp_r0_4;
    void *temp_r7;

    temp_r0 = gCurTask->data;
    temp_sb = (*temp_r0)->unk8->unk6;
    temp_r5 = (s16) arg0;
    temp_r7 = temp_r0 + ((temp_r5 * 0x28) + 0x194);
    temp_r8 = arg1->unk2;
    temp_r4 = arg1->unk4 - arg1->unk6;
    CpuSet(temp_r0 + 0x11C, temp_r7, 0x0400000AU);
    temp_r7->unk8 = (s32) (temp_r5 | 0xC1060);
    temp_r7->unk10 = temp_r8;
    temp_r7->unk12 = temp_r4;
    temp_r7->unk14 = 0x340;
    temp_r0_2 = temp_sb->unkAC;
    if (((s32) temp_r0_2 > 0x14) || ((s32) temp_r0_2 < 0x13)) {
        sub_8E8_80B69B4(temp_r7);
    }
    temp_r0_3 = ((s32) (arg0 << 0x10) >> 0xB) + &gOamBuffer->all.affineParam;
    temp_r0_3->unk0 = (u16) arg1->unkC;
    temp_r0_4 = temp_r0_3 + 8;
    temp_r0_3->unk8 = (u16) arg1->unkE;
    temp_r0_4->unk8 = (u16) arg1->unk10;
    (temp_r0_4 + 8)->unk8 = (u16) arg1->unk12;
}

void sub_80B5EBC(s16 arg0, void *arg1) {
    ? sp14;
    void *sp28;
    void *sp2C;
    s32 sp30;
    s32 sp34;
    s32 sp38;
    s32 sp3C;
    s32 sp40;
    s16 temp_r4;
    s16 temp_r5_2;
    s16 var_r1;
    s16 var_r3;
    s32 temp_r2_2;
    s32 temp_r3;
    u16 temp_r0;
    u16 temp_r0_3;
    u16 temp_r2;
    u16 temp_sl;
    u16 var_r3_2;
    u32 temp_r0_2;
    u32 var_r2;
    void *temp_r0_4;
    void *temp_r0_5;
    void *temp_r5;
    void *temp_r6;
    void *temp_r7;

    sp28 = arg1;
    temp_r0 = gCurTask->data;
    temp_r5 = temp_r0->unk0;
    sp2C = (void *) temp_r5->unkC->unk6;
    sp30 = arg0 << 0x10;
    temp_r4 = arg0;
    temp_r7 = temp_r0 + ((temp_r4 * 0x28) + 0x194);
    temp_r6 = *((temp_r5->unk8C7 * 4) + &gUnknown_08E2EF8C) + (sp28->unk8 * 0x10);
    temp_r2 = temp_r0->unk8E4;
    sp38 = (s32) (u16) gSineTable[temp_r2];
    temp_sl = (u16) ((s32) ((u16) gSineTable[temp_r2 + 0x100] << 0x10) >> 0x14);
    CpuSet(temp_r0 + 0x7C, temp_r7, 0x0400000AU);
    temp_r7->unk8 = (s32) (temp_r4 | 0xC1060);
    var_r3 = 0x180;
    if ((s32) sp28->unk4 < (s32) (temp_r5->unk8DA - 0xF)) {
        var_r3 = 0x340;
    }
    temp_r7->unk14 = var_r3;
    sp34 = 0x1E - ((s32) sp2C->unk54 >> 0xA);
    subroutine_arg0.unkC = 8;
    subroutine_arg0.unkE = 8;
    subroutine_arg0.unk10 = 0;
    subroutine_arg0.unk12 = 5;
    var_r2 = 0;
    sp3C = sp30;
    sp40 = sp38 << 0x10;
    do {
        var_r1 = 0;
        temp_r2_2 = var_r2 << 0x10;
loop_4:
        if (temp_r2_2 != 0) {
            var_r3_2 = 0 - temp_r0->unk8E2;
        } else {
            var_r3_2 = temp_r0->unk8E2;
        }
        temp_r5_2 = var_r1;
        temp_r3 = (var_r3_2 + (temp_r5_2 * 0x154)) & 0x3FF;
        if ((sub_80B67C4(&sp14, &subroutine_arg0, temp_r0->unk0, sp34, (temp_r6->unk2 << 0x10) + ((sp40 >> 0x10) * temp_r6->unk8) + (gSineTable[temp_r3] << 5), (temp_r6->unk6 << 0xC) + ((s16) temp_sl * temp_r6->unkA) + (gSineTable[temp_r3 + 0x100] * 8)) << 0x10) != 0) {
            temp_r7->unk10 = (u16) sp14.unk2;
            temp_r7->unk12 = (s16) (sp14.unk4 - sp14.unk6);
            sub_8E8_80B69B4(temp_r7);
        }
        temp_r0_3 = temp_r5_2 + 1;
        var_r1 = (s16) temp_r0_3;
        if ((s32) (s16) temp_r0_3 <= 2) {
            goto loop_4;
        }
        temp_r0_2 = temp_r2_2 + 0x10000;
        var_r2 = temp_r0_2 >> 0x10;
    } while ((s32) ((s32) temp_r0_2 >> 0x10) <= 1);
    temp_r0_4 = (sp3C >> 0xB) + &gOamBuffer->all.affineParam;
    temp_r0_4->unk0 = (u16) sp28->unkC;
    temp_r0_5 = temp_r0_4 + 8;
    temp_r0_4->unk8 = (u16) sp28->unkE;
    temp_r0_5->unk8 = (u16) sp28->unk10;
    (temp_r0_5 + 8)->unk8 = (u16) sp28->unk12;
}

void sub_80B60E0(s16 arg0, void *arg1) {
    s16 temp_r7;
    s16 var_r2;
    u16 temp_r0;
    void *temp_r0_2;
    void *temp_r0_3;
    void *temp_r4;
    void *temp_r6;

    temp_r0 = gCurTask->data;
    temp_r4 = *temp_r0;
    temp_r7 = arg0;
    temp_r6 = temp_r0 + ((temp_r7 * 0x28) + 0x194);
    CpuSet(temp_r0 + ((((s32) ((arg1->unk0 - 0xB) << 0x10) >> 0x13) * 0x28) + 0x144), temp_r6, 0x0400000AU);
    temp_r6->unk8 = (s32) (temp_r7 | 0xC1060);
    temp_r6->unk10 = (u16) arg1->unk2;
    temp_r6->unk12 = (s16) (arg1->unk4 - arg1->unk6);
    var_r2 = 0x180;
    if ((s32) (s16) arg1->unk4 < (s32) (temp_r4->unk8DA - 0xF)) {
        var_r2 = 0x340;
    }
    temp_r6->unk14 = var_r2;
    sub_8E8_80B69B4(temp_r6);
    temp_r0_2 = (temp_r7 << 5) + &gOamBuffer->all.affineParam;
    temp_r0_2->unk0 = (u16) arg1->unkC;
    temp_r0_3 = temp_r0_2 + 8;
    temp_r0_2->unk8 = (u16) arg1->unkE;
    temp_r0_3->unk8 = (u16) arg1->unk10;
    (temp_r0_3 + 8)->unk8 = (u16) arg1->unk12;
}

void sub_80B6198(void *arg0, s16 arg1) {
    s32 sp0;
    s32 sp4;
    s16 temp_r0;
    s16 temp_r0_4;
    s16 temp_r4_2;
    s16 var_r2;
    s32 temp_r0_3;
    s32 temp_r0_5;
    s32 temp_r5;
    s32 var_r1_2;
    u16 temp_r0_2;
    u16 temp_r4;
    u16 temp_r6;
    u16 var_r0;
    u16 var_r1;
    void *temp_r2;

    temp_r6 = arg0->unk4->unk6;
    temp_r4 = arg0->unk8->unk6;
    sp0 = temp_r4->unk8C;
    temp_r5 = temp_r4->unk90;
    temp_r6->unk8E0 = (s16) ((s32) ((arg0->unkC->unk6->unk54 - temp_r5) << 0x10) >> 0x18);
    if (arg1 == -1) {
        var_r1 = arg0->unk8C0;
        if ((s32) (s16) arg0->unk8C0 > 8) {
            var_r1 = 8;
        }
        var_r0 = var_r1;
    } else {
        var_r0 = (u16) arg1;
    }
    var_r2 = 0;
    temp_r0 = (s16) var_r0;
    if ((s32) temp_r0 > 0) {
        sp4 = (s32) temp_r0;
        do {
            temp_r4_2 = var_r2;
            temp_r2 = temp_r6 + ((temp_r4_2 * 0x1C) + 0x5F4);
            temp_r2->unk0 = (s32) (arg0->unk8B0 + ((0x78 - temp_r4->unkA0) << 0xE));
            temp_r2->unk4 = sp0;
            temp_r2->unk8 = (s32) (0x7900 - ((temp_r5 + 0xFFFFEC00) * 2));
            temp_r0_3 = ((temp_r4_2 << 7) + temp_r6->unk8E2) & 0x3FF;
            temp_r2->unkC = (s32) ((s16) gSineTable[temp_r0_3] >> 7);
            temp_r2->unk10 = 0xA0;
            temp_r2->unk14 = (s32) (temp_r0_3 + 0x500);
            temp_r2->unk18 = 0xFF60;
            temp_r2->unk1A = 1;
            temp_r2->unk1B = 0;
            temp_r0_2 = temp_r4_2 + 1;
            var_r2 = (s16) temp_r0_2;
        } while ((s32) (s16) temp_r0_2 < sp4);
    }
    var_r1_2 = var_r2 << 0x10;
    if ((s32) var_r2 <= 7) {
        do {
            temp_r0_5 = var_r1_2 >> 0x10;
            ((temp_r0_5 * 0x1C) + 0x5F4 + temp_r6)->unk1A = 0;
            temp_r0_4 = temp_r0_5 + 1;
            var_r1_2 = temp_r0_4 << 0x10;
        } while ((s32) temp_r0_4 <= 7);
    }
}

void sub_80B62FC(void *arg0) {
    s16 var_r2;
    s32 temp_r1;
    u32 temp_r0;
    u8 temp_r0_2;
    void *temp_r3;

    var_r2 = 0;
    do {
        temp_r3 = arg0->unk4->unk6 + ((var_r2 * 0x1C) + 0x5F4);
        if (temp_r3->unk1A != 0) {
            temp_r3->unk0 = (s32) (temp_r3->unk0 + (temp_r3->unkC << 8));
            temp_r3->unk4 = (s32) (temp_r3->unk4 + (temp_r3->unk10 << 8));
            temp_r1 = temp_r3->unk14;
            temp_r3->unk8 = (s32) (temp_r3->unk8 + temp_r1);
            temp_r3->unk14 = (s32) (temp_r1 + temp_r3->unk18);
            temp_r0_2 = temp_r3->unk1B + 1;
            temp_r3->unk1B = temp_r0_2;
            if ((u32) temp_r0_2 > 0x1DU) {
                temp_r3->unk1A = 0U;
            }
        }
        temp_r0 = (var_r2 << 0x10) + 0x10000;
        var_r2 = (s16) (temp_r0 >> 0x10);
    } while ((s32) ((s32) temp_r0 >> 0x10) <= 7);
}

void sub_80B6370(s16 arg0, void *arg1) {
    ? sp14;
    s16 temp_r0;
    s16 temp_r6;
    s32 temp_r4;
    s32 temp_r5;
    u16 temp_r2;
    void *temp_r0_2;
    void *temp_r4_2;
    void *temp_r4_3;

    temp_r2 = gCurTask->data;
    temp_r0 = arg0;
    temp_r0_2 = (temp_r0 * 0x28) + 0x4B4 + temp_r2;
    subroutine_arg0.unkC = 8;
    subroutine_arg0.unkE = 8;
    subroutine_arg0.unk10 = 0;
    subroutine_arg0.unk12 = 5;
    if ((sub_80B67C4(&sp14, &subroutine_arg0, temp_r2->unk0, 0x1E - ((s32) temp_r2->unk0->unkC->unk6->unk54 >> 8), arg1->unk0, arg1->unk4, arg1->unk8 * 0x10) << 0x10) != 0) {
        temp_r6 = sp14.unk2;
        temp_r5 = sp14.unk4 - sp14.unk6;
        CpuSet(temp_r2 + 4, temp_r0_2, 0x0400000AU);
        temp_r4 = temp_r0 + 0x18;
        temp_r0_2->unk8 = (s32) (0xC0060 | temp_r4);
        temp_r0_2->unk10 = temp_r6;
        temp_r0_2->unk12 = (s16) (temp_r2->unk8E0 + temp_r5);
        temp_r0_2->unk14 = 0x180;
        sub_8E8_80B69B4(temp_r0_2);
        temp_r4_2 = (temp_r4 << 5) + &gOamBuffer->all.affineParam;
        temp_r4_2->unk0 = (u16) sp14.unkC;
        temp_r4_3 = temp_r4_2 + 8;
        temp_r4_2->unk8 = (u16) sp14.unkE;
        temp_r4_3->unk8 = (u16) sp14.unk10;
        (temp_r4_3 + 8)->unk8 = (u16) sp14.unk12;
    }
}

void sub_80B6464(u16 arg0, void *arg1) {
    ? sp14;
    s16 temp_r5;
    s16 temp_r8;
    s32 temp_r4;
    u16 temp_r2;
    void *temp_r4_2;
    void *temp_r4_3;
    void *temp_r6;

    temp_r2 = gCurTask->data;
    temp_r6 = temp_r2 + 0xF4;
    subroutine_arg0.unkC = 8;
    subroutine_arg0.unkE = 8;
    subroutine_arg0.unk10 = 0;
    subroutine_arg0.unk12 = 5;
    if ((sub_80B67C4(&sp14, &subroutine_arg0, *temp_r2, 0x1E - ((s32) (*temp_r2)->unkC->unk6->unk54 >> 0xA), arg1->unk0, arg1->unk4, arg1->unk8) << 0x10) != 0) {
        temp_r8 = sp14.unk2;
        temp_r5 = sp14.unk4 - sp14.unk6;
        CpuSet(temp_r6, temp_r6, 0x0400000AU);
        temp_r4 = (s16) arg0 + 0x14;
        temp_r6->unk8 = (s32) (0xC0060 | temp_r4);
        temp_r6->unk10 = temp_r8;
        temp_r6->unk12 = temp_r5;
        temp_r6->unk14 = 0xC0;
        sub_8E8_80B69B4(temp_r6);
        temp_r4_2 = (temp_r4 << 5) + &gOamBuffer->all.affineParam;
        temp_r4_2->unk0 = (u16) sp14.unkC;
        temp_r4_3 = temp_r4_2 + 8;
        temp_r4_2->unk8 = (u16) sp14.unkE;
        temp_r4_3->unk8 = (u16) sp14.unk10;
        (temp_r4_3 + 8)->unk8 = (u16) sp14.unk12;
    }
}

void sub_80B6538(? *arg0) {
    u16 temp_r0;
    u16 temp_r2;
    u8 temp_r2_2;
    u8 var_r1;
    void *temp_r0_2;
    void *temp_r3;

    temp_r0 = gCurTask->data;
    temp_r0_2 = *temp_r0;
    temp_r2 = temp_r0_2->unk8->unk6;
    var_r1 = 0;
loop_1:
    temp_r3 = temp_r0 + ((var_r1 * 0x1C) + 0x6D4);
    temp_r2_2 = temp_r3->unk1A;
    if (temp_r2_2 == 0) {
        temp_r3->unk0 = (s32) arg0->unk0;
        temp_r3->unk4 = (s32) arg0->unk4;
        temp_r3->unk8 = (s32) arg0->unk8;
        temp_r3->unkC = (s32) ((s32) (((temp_r0_2->unk8B0 + ((0x78 - temp_r2->unkA0) << 0xE)) - arg0->unk0) * 0x23) >> 0xB);
        temp_r3->unk10 = (s32) ((s32) (temp_r2->unk8C - (arg0->unk4 - Q(0x68C4))) >> 6);
        temp_r3->unk14 = (s32) ((s32) ((0x8C00 - ((s32) arg0->unk8 >> 4)) - temp_r2->unk90) >> 2);
        temp_r3->unk18 = (s16) temp_r2_2;
        temp_r3->unk1A = 1U;
        temp_r3->unk1B = 0;
        return;
    }
    var_r1 += 1;
    if ((u32) var_r1 > 3U) {
        return;
    }
    goto loop_1;
}

s16 sub_80B65FC(u16 arg0, ? *arg1) {
    ? sp14;
    ? *sp28;
    s32 sp2C;
    void **sp30;
    void *sp34;
    s32 sp38;
    s32 sp3C;
    s16 *temp_r5_2;
    s16 temp_r4;
    s16 var_r2;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r1_3;
    s32 temp_r1_4;
    s32 temp_r1_5;
    s32 temp_r2_2;
    s32 temp_r2_3;
    s32 temp_r3;
    s32 temp_r3_2;
    s32 temp_r8;
    s32 temp_sb;
    u16 temp_r1;
    u16 temp_r2;
    u16 var_sl;
    u32 temp_r0;
    void *temp_r1_2;
    void *temp_r5;

    sp28 = arg1;
    temp_r1 = gCurTask->data;
    sp30 = (void **) temp_r1;
    temp_r1_2 = *temp_r1;
    sp34 = temp_r1_2;
    temp_r2 = temp_r1_2->unk8->unk6;
    var_sl = arg0;
    temp_sb = (sp34 + 0x8B0)->unk2 + ((s32) (120 - temp_r2->unkA0) >> 2);
    sp38 = (s32) (temp_r2 + 0x8C)->unk2;
    temp_r1_3 = 0x1E - ((s32) sp34->unkC->unk6->unk54 >> 0xA);
    sp2C = temp_r1_3;
    temp_r8 = (120 - ((s32) temp_r2->unk90 >> 8)) + temp_r1_3;
    var_r2 = 0;
    do {
        temp_r5 = sp30 + ((var_r2 * 0x1C) + 0x6D4);
        sp3C = var_r2 << 0x10;
        if (temp_r5->unk1A != 0) {
            temp_r3 = temp_r5->unk0 + temp_r5->unkC;
            temp_r5->unk0 = temp_r3;
            temp_r2_2 = temp_r5->unk4 + temp_r5->unk10;
            temp_r5->unk4 = temp_r2_2;
            temp_r1_4 = temp_r5->unk8 + temp_r5->unk14;
            temp_r5->unk8 = temp_r1_4;
            temp_r3_2 = temp_r3 >> 0x10;
            temp_r2_3 = temp_r2_2 >> 0x10;
            temp_r1_5 = temp_r1_4 >> 0xC;
            temp_r0_2 = temp_sb - 0xA;
            if ((temp_r3_2 > temp_r0_2) && (temp_r3_2 < (s32) (temp_r0_2 + 0x14)) && (temp_r2_3 > (s32) (sp38 - 0xA)) && (temp_r2_3 < (s32) (sp38 + 8))) {
                temp_r0_3 = temp_r8 - 0x11;
                if ((temp_r1_5 >= temp_r0_3) && (temp_r1_5 <= (s32) (temp_r0_3 + 0x25))) {
                    sub_80B4654(sp34, 5U);
                }
            }
            if ((sub_80B67C4(&sp14, &subroutine_arg0, *sp30, sp2C, temp_r5->unk0, temp_r5->unk4, temp_r5->unk8, 8, 8, 0, 5) << 0x10) == 0) {
                temp_r5->unk1A = 0U;
            } else {
                temp_r4 = (s16) var_sl;
                temp_r5_2 = sp28 + (temp_r4 * 0x14);
                CpuSet(&sp14, temp_r5_2, 0x04000005U);
                *temp_r5_2 = 6;
                var_sl = temp_r4 + 1;
            }
        }
        temp_r0 = sp3C + 0x10000;
        var_r2 = (s16) (temp_r0 >> 0x10);
    } while ((s32) ((s32) temp_r0 >> 0x10) <= 3);
    return (s16) var_sl;
}
#endif
