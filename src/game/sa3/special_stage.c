#include "global.h"
#include "core.h"
#include "trig.h"
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
    sub_80B6BB8(&strc->sprite14, 0, 0x28U, 0x460U, 0, 120, 80, 0, 0U, 0);
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
    DmaCopy16(3, &gObjPalette[15 * 16 + 9], strc2A4->pal298, sizeof(strc2A4->pal298));
    DmaCopy16(3, &gObjPalette[15 * 16 + 12], strc2A4->pal29E, sizeof(strc2A4->pal29E));

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

#if 0
void sub_80B2C98(void *arg0, s32 arg1) {
    ? *var_r5;

    var_r5 = &gUnknown_080DBF60;
    if ((arg1 << 0x18) == 0) {
        var_r5 = &gUnknown_080DBF60 - 8;
    }
    sub_80B6BB8(arg0 + 0x25C, 1, var_r5->unk4, var_r5->unk0, 0, 0x78, 0x50, 1, (u32) var_r5->unk2, 0);
    arg0->unk28C = 0x7380;
    arg0->unk28B = (u8) (arg0->unk28B + 1);
    gBldRegs.bldCnt = 0x2F40;
    gBldRegs.bldAlpha = 0x1010;
    gBldRegs.bldY = 0;
}

void sub_80B2D0C(void *arg0) {
    Sprite *temp_r6;
    s16 temp_r0;
    u16 temp_r1;

    arg0->unk28C = (u16) (arg0->unk28C + 0xC0);
    temp_r6 = arg0 + 0x25C;
    temp_r0 = (u16) ((s32) (sa3__sub_80B1560(&gUnknown_080DBF68, arg0->unk28C) << 0x10) >> 0x11) + gUnknown_080DBF94.unk2;
    temp_r6->x = temp_r0;
    if ((s32) (temp_r0 << 0x10) > 0x012C0000) {
        sub_80B2ED4(arg0);
        return;
    }
    temp_r1 = arg0->unk28C;
    if (((u32) temp_r1 > 0x733FU) && ((u32) ((temp_r1 + 0x7F40) << 0x10) > 0x23400000U)) {
        UpdateSpriteAnimation(temp_r6);
    }
    DisplaySprite(temp_r6);
}

void TaskDestructor_80B2D84(Task *arg0) {

}

void sub_80B2D88(void) {

}

void sub_80B2D8C(void) {

}

void sub_80B2D90(SpStage2A4 *strc2A4) {
    sub_80B24AC(strc2A4);
}

void sub_80B2D9C(void *arg0) {
    arg0->unk288 = 1;
    arg0->unk284 = (u16 *) gUnknown_03001EA0;
    sub_80B6BB8(arg0 + 0x144, 0, 0x14U, 0x471U, 0, 0x78, 0x50, 1, 0U, 0);
    arg0->unk28E = 0;
}

void sub_80B2DF4(void *arg0) {
    gUnknown_03001EA0 = arg0->unk284;
    arg0->unk284 = NULL;
    arg0->unk288 = 0;
    arg0->unk28E = 0;
}

void sub_80B2E1C(void **arg0) {
    s32 var_r2;
    s32 var_r4;

    if ((*arg0)->unk8D5 == 0) {
        var_r2 = 0x050003F8;
        var_r4 = 0x050003F2;
    } else {
        var_r2 = 0x050003F2;
        var_r4 = 0x050003F8;
    }
    (void *)0x040000D4->unk0 = (void *) (arg0 + 0x29E);
    (void *)0x040000D4->unk4 = var_r2;
    (void *)0x040000D4->unk8 = 0x80000003;
    (void *)0x040000D4->unk0 = (void *) (arg0 + 0x298);
    (void *)0x040000D4->unk4 = var_r4;
    (void *)0x040000D4->unk8 = 0x80000003;
    DisplaySprite(arg0 + 0x16C);
}

void sub_80B2E84(void *arg0) {
    arg0->unk289 = 0;
    gUnknown_03001E9C = NULL;
}

void sub_80B2E9C(void *arg0) {
    s8 var_r0;

    if ((s32) arg0->unk28A <= 3) {
        var_r0 = 4;
    } else {
        var_r0 = 7;
    }
    arg0->unk28A = var_r0;
    gUnknown_03001E9C = NULL;
    gBldRegs.bldCnt = 0xBF;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
}

void sub_80B2ED4(void *arg0) {
    arg0->unk28B = (u8) (arg0->unk28B + 1);
    gUnknown_03001E9C = NULL;
    gBldRegs.bldCnt = 0xBF;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
}

void sub_80B2EFC(void *arg0) {
    s16 temp_r0_7;
    s16 temp_r3;
    s16 temp_r4;
    s16 var_r4_3;
    s16 var_r5;
    s16 var_r5_2;
    s32 *temp_r0;
    s32 *temp_r0_3;
    s32 *var_r4;
    s32 *var_r4_2;
    s32 temp_r1;
    s32 temp_r2;
    s32 temp_r3_2;
    s32 temp_r6;
    s32 var_r3;
    u16 temp_r0_6;
    u32 temp_r0_2;
    u32 temp_r0_4;
    u8 temp_r1_2;
    void *temp_r0_5;
    void *temp_r7;
    void *var_r5_3;
    void *var_r5_4;

    temp_r7 = arg0->unk0;
    temp_r6 = (temp_r7->unk8DA - temp_r7->unk8DE) << 0x10;
    temp_r0 = EwramMalloc(0x400U);
    arg0->unkC = temp_r0;
    var_r5 = 0;
    var_r4 = temp_r0;
    do {
        temp_r1 = var_r5 - temp_r7->unk8DE;
        if (temp_r1 == 0) {
            *var_r4 = temp_r1;
        } else {
            *var_r4 = temp_r6 / temp_r1;
        }
        temp_r0_2 = (var_r5 << 0x10) + 0x10000;
        var_r4 += 4;
        var_r5 = (s16) (temp_r0_2 >> 0x10);
    } while ((s32) ((s32) temp_r0_2 >> 0x10) <= 0xFF);
    temp_r0_3 = EwramMalloc(0x400U);
    arg0->unk8 = temp_r0_3;
    var_r5_2 = 0;
    var_r4_2 = temp_r0_3;
    do {
        if (temp_r6 == 0) {
            *var_r4_2 = temp_r6;
        } else {
            *var_r4_2 = (s32) (var_r5_2 - temp_r7->unk8DE) / temp_r6;
        }
        temp_r0_4 = (var_r5_2 << 0x10) + 0x10000;
        var_r4_2 += 4;
        var_r5_2 = (s16) (temp_r0_4 >> 0x10);
    } while ((s32) ((s32) temp_r0_4 >> 0x10) <= 0xFF);
    temp_r1_2 = temp_r7->unk8DF;
    var_r5_3 = temp_r7 + ((temp_r1_2 * 8) + 0xB0);
    var_r3 = temp_r1_2 << 0x10;
    if ((s32) temp_r1_2 <= 0xFF) {
        temp_r4 = (s16) temp_r7->unk8DC;
        do {
            temp_r3_2 = var_r3 >> 0x10;
            temp_r2 = (s32) (temp_r4 * *((temp_r3_2 * 4) + arg0->unkC)) >> 8;
            var_r5_3->unk0 = (s32) (temp_r4 * ((s32) (0 - (temp_r2 * (0 - temp_r7->unk8D8) * 2)) >> 8));
            var_r5_3->unk4 = (s32) (temp_r4 * ((s32) (0 - ((temp_r3_2 - temp_r7->unk8DA) * temp_r2 * 4)) >> 8));
            var_r5_3 = var_r5_3 + 4 + 4;
            temp_r3 = temp_r3_2 + 1;
            var_r3 = temp_r3 << 0x10;
        } while ((s32) temp_r3 <= 0xFF);
    }
    temp_r0_5 = EwramMalloc(0x1000U);
    arg0->unk4 = temp_r0_5;
    gBgOffsetsHBlankPrimary = temp_r0_5;
    var_r5_4 = temp_r0_5;
    memset(&subroutine_arg0, 0, 0x10);
    subroutine_arg0.unk0 = 0x100;
    subroutine_arg0.unk6 = 0x100;
    var_r4_3 = 0;
    do {
        CpuSet(&subroutine_arg0, var_r5_4, 8U);
        temp_r0_7 = var_r4_3;
        var_r5_4->unkC = (s16) (temp_r0_7 << 8);
        temp_r0_6 = temp_r0_7 + 1;
        var_r5_4 += 0x10;
        var_r4_3 = (s16) temp_r0_6;
    } while ((s32) (s16) temp_r0_6 <= 0xFF);
    sub_80B33CC(arg0);
}

void Task_80B3080(void) {
    s32 sp10;
    s32 sp14;
    s32 sp18;
    s32 sp1C;
    s16 *sp20;
    s16 *sp24;
    s32 sp28;
    s32 sp2C;
    s16 temp_r0_6;
    s16 temp_r0_7;
    s16 temp_r4;
    s16 temp_r6;
    s16 var_r4_2;
    s32 temp_r0_4;
    s32 temp_r1_3;
    s32 temp_r1_4;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 temp_r3;
    s32 temp_r3_2;
    s32 temp_r5;
    s32 temp_r6_2;
    s32 temp_sl;
    s32 var_r6_3;
    u16 temp_r0;
    u16 temp_r0_5;
    u16 temp_r1;
    u16 var_r4;
    u32 temp_r0_3;
    u32 temp_r1_2;
    u32 var_r6;
    u32 var_r6_2;
    void *temp_r0_2;
    void *temp_r7;
    void *temp_r7_2;
    void *temp_r7_3;
    void *temp_r7_4;
    void *var_r7;
    void *var_r7_2;

    temp_r0 = gCurTask->data;
    temp_r0_2 = temp_r0->unk0;
    gHBlankCopySize = 0x10;
    gHBlankCopyTarget = (void *)0x04000020;
    gBgOffsetsHBlankPrimary = temp_r0->unk4;
    temp_r0->unk10 = (s32) (temp_r0->unk10 + 0x55000);
    temp_r0_3 = temp_r0_2->unkC->unk6->unk54 << 8;
    var_r6 = temp_r0_3 >> 0x10;
    temp_r0_4 = (s32) temp_r0_3 >> 0x10;
    if (temp_r0_4 <= 0x13) {
        var_r6 = 0x14;
    } else if (temp_r0_4 > 0x78) {
        var_r6 = 0x78;
    }
    var_r7 = gBgOffsetsHBlankPrimary;
    temp_r1 = temp_r0_2->unk8BC;
    sp10 = gSineTable[temp_r1] * 4;
    temp_sl = gSineTable[temp_r1 + 0x100] * 4;
    sp14 = (s32) temp_r0_2->unk8DC;
    memset(&subroutine_arg0, 0, 0x10);
    subroutine_arg0.unk0 = 0x100;
    subroutine_arg0.unk6 = 0x100;
    temp_r0_5 = ((s32) (0x78 - (s16) var_r6) >> 2) + 0x3C;
    gFlags |= 4;
    sp18 = (s32) temp_r0_5;
    temp_r0_6 = (s16) temp_r0_5;
    var_r4 = 0x5A - temp_r0_6;
    var_r6_2 = 0;
    if ((s32) temp_r0_6 > 0) {
        do {
            CpuSet(&subroutine_arg0, var_r7, 8U);
            temp_r0_7 = (s16) var_r4;
            var_r7->unkC = (s16) (temp_r0_7 << 8);
            var_r7 += 0x10;
            temp_r1_2 = (var_r6_2 << 0x10) + 0x10000;
            var_r4 = temp_r0_7 + 1;
            var_r6_2 = temp_r1_2 >> 0x10;
        } while ((s32) ((s32) temp_r1_2 >> 0x10) < (s32) temp_r0_6);
    }
    var_r4_2 = 0x3C;
    var_r7_2 = gBgOffsetsHBlankPrimary + ((s32) (sp18 << 0x10) >> 0xC);
    var_r6_3 = var_r6_2 << 0x10;
    if ((s32) (s16) var_r6_2 <= 0x9F) {
        sp1C = (s32) (s16) sp14;
        sp20 = temp_r0_2 + 0x8D8;
        temp_r3 = 0 - sp10;
        sp28 = temp_r0->unkC;
        sp24 = temp_r0_2 + 0x8DA;
        do {
            temp_r4 = var_r4_2;
            temp_r2 = sp1C * *((temp_r4 * 4) + sp28);
            temp_r1_3 = temp_r2 >> 8;
            sp2C = temp_r1_3 * (0 - *sp20);
            temp_r6_2 = var_r6_3 >> 0x10;
            temp_r2_2 = temp_r2 >> 0x10;
            temp_r1_4 = (s32) (temp_r2_2 * temp_sl) >> 0x10;
            var_r7_2->unk0 = (s16) temp_r1_4;
            temp_r7 = var_r7_2 + 2;
            var_r7_2->unk2 = (s16) ((s32) (temp_r2_2 * sp10) >> 0x10);
            temp_r7_2 = temp_r7 + 2;
            temp_r7->unk2 = (s16) ((s32) (temp_r2_2 * temp_r3) >> 0x10);
            temp_r7_3 = temp_r7_2 + 2;
            temp_r7_2->unk2 = (s16) temp_r1_4;
            temp_r7_4 = temp_r7_3 + 2;
            temp_r3_2 = (s32) (temp_r1_3 * (temp_r6_2 - *sp24) * 2) >> 0x10;
            temp_r5 = sp2C >> 0x10;
            temp_r7_3->unk2 = (s32) ((s32) ((temp_r3_2 * sp10) + (temp_r5 * temp_sl) + temp_r0_2->unk8B0) >> 8);
            temp_r7_4->unk4 = (s32) (((u32) (((temp_r5 * temp_r3) + (temp_r3_2 * temp_sl) + temp_r0->unk10) << 8) >> 0x10) | 0x20000);
            var_r7_2 = temp_r7_4 + 8;
            temp_r6 = temp_r6_2 + 1;
            var_r4_2 = (s16) (u16) (temp_r4 + 1);
            var_r6_3 = temp_r6 << 0x10;
        } while ((s32) temp_r6 <= 0x9F);
    }
}

void sub_80B3290(void) {
    s16 temp_r5_2;
    s16 var_r1;
    s32 temp_r0;
    s32 temp_r4;
    u16 temp_r1;
    u16 temp_r5;
    void *temp_r1_2;

    temp_r1 = gCurTask->data;
    temp_r1_2 = *temp_r1;
    gBgScrollRegs[1][0] = 0 - temp_r1_2->unk8BC;
    gBgScrollRegs[1][1] = 0x30;
    if (temp_r1_2->unk8C8 != 1) {
        temp_r0 = *((temp_r1_2->unk8C7 * 2) + &gUnknown_080DBFD8) << 0x10;
        var_r1 = 0;
        if (temp_r0 > 0) {
            do {
                temp_r5_2 = var_r1;
                temp_r4 = temp_r1 + ((temp_r5_2 * 0x28) + 0x94);
                UpdateSpriteAnimation_BG(temp_r4);
                sub_80BE46C(temp_r4);
                temp_r5 = temp_r5_2 + 1;
                var_r1 = (s16) temp_r5;
            } while ((s32) (temp_r5 << 0x10) < temp_r0);
        }
    }
}

Task *sub_80B3314(void *arg0) {
    ? (*sp18)(s16, s16 *);
    Task *temp_r0;
    u16 temp_r0_2;

    memcpy(&sp18, &gUnknown_080DBFEC, 0xE);
    temp_r0 = TaskCreate(Task_80B3080, 0x24CU, 0x8000U, 0U, sub_80B339C);
    temp_r0_2 = temp_r0->data;
    temp_r0_2->unk0 = arg0;
    temp_r0_2->unk4 = 0;
    temp_r0_2->unk8 = 0;
    temp_r0_2->unkC = 0;
    temp_r0_2->unk10 = 0;
    sub_80B6B3C(temp_r0_2 + 0x14, 1, 0x10, ((arg0->unk8C7 * 2) + sp)->unk18, 0x80, 0x80, 0, 2, 0, 0);
    sub_80B2EFC((void *) temp_r0_2);
    return temp_r0;
}

void sub_80B339C(Task *arg0) {
    u16 temp_r1;
    void *temp_r0;
    void *temp_r0_2;
    void *temp_r0_3;

    temp_r1 = arg0->data;
    temp_r0 = temp_r1->unk8;
    if (temp_r0 != NULL) {
        EwramFree(temp_r0);
    }
    temp_r0_2 = temp_r1->unkC;
    if (temp_r0_2 != NULL) {
        EwramFree(temp_r0_2);
    }
    temp_r0_3 = temp_r1->unk4;
    if (temp_r0_3 != NULL) {
        EwramFree(temp_r0_3);
    }
}

void sub_80B33CC(void) {

}

Task *sub_80B33D0(void *arg0) {
    ? sp18;
    s32 sp2C;
    s32 sp30;
    Task *sp34;
    u8 *sp38;
    Sprite *var_r0;
    Task *temp_r0;
    s16 temp_r0_2;
    s32 temp_r1;
    u16 *temp_r1_2;
    u16 temp_r4;
    u16 var_r3;
    u8 temp_r0_3;
    u8 temp_r6;

    sp18.unk0 = (s32) gUnknown_080DC36C.unk0;
    sp18.unk4 = (s32) gUnknown_080DC36C.unk4;
    sp18.unk8 = (s32) gUnknown_080DC36C.unk8;
    sp18.unkC = (s32) gUnknown_080DC36C.unkC;
    (&sp18 + 0xC)->unk4 = (s32) (&gUnknown_080DC36C + 0xC)->unk4;
    sp2C = gUnknown_080DC380.unk0;
    sp30 = gUnknown_080DC380.unk4;
    temp_r6 = arg0->unk8C7;
    temp_r0 = TaskCreate(Task_80B3648, 0x110U, 0x9000U, 0U, NULL);
    sp34 = temp_r0;
    temp_r4 = temp_r0->data;
    temp_r4->unk0 = arg0;
    temp_r4->unk4 = 0;
    temp_r1 = temp_r6 * 6;
    temp_r4->unk88 = (s32) (*(temp_r1 + &gUnknown_080DBE58) << 0x10);
    temp_r4->unk8C = (s32) (*(temp_r1 + (&gUnknown_080DBE58 + 2)) << 0x10);
    temp_r4->unk90 = 0;
    temp_r4->unkAC = 0;
    temp_r4->unkAE = 0;
    temp_r4->unkB3 = 0;
    sp38 = arg0 + 0x8C6;
    temp_r4->unkBC = (s32 *) ((arg0->unk8C6 * 4) + sp)->unk18;
    temp_r0_2 = sub_80B6CA4();
    temp_r1_2 = gUnknown_03001EA0;
    temp_r4->unk84 = temp_r1_2;
    gUnknown_03001EA0 = temp_r1_2 + ((s32) (temp_r0_2 << 0x10) >> 0xB);
    sub_80B4498(temp_r4 + 8, temp_r1_2, arg0->unk8DA, 9U, temp_r4->unkBC);
    sub_80B4498(temp_r4 + 0xE8, gUnknown_03001EA0, 0, 4U, &sp2C);
    gUnknown_03001EA0 += sp2C.unk4 << 5;
    temp_r4->unk94 = 0;
    temp_r4->unk98 = 0;
    temp_r4->unk9C = 0;
    temp_r4->unkA0 = 0x78;
    temp_r4->unkA4 = 0x78;
    temp_r4->unkB2 = 1;
    temp_r4->unkA8 = 0;
    temp_r4->unkB5 = 0;
    temp_r4->unkB6 = 0;
    temp_r4->unkB7 = 0;
    temp_r4->unkB4 = 0;
    temp_r4->unkB0 = 0;
    temp_r4->unkB9 = 0;
    temp_r0_3 = *sp38;
    switch ((u32) temp_r0_3) {                      /* irregular */
    case 0:
        sub_80B6BB8(temp_r4 + 0xC0, 0, 4U, 0x9AU, 0x1000, 0x14, 0x14, 8, 0U, 0);
        break;
    case 1:
        var_r0 = temp_r4 + 0xC0;
        var_r3 = 0x13D;
block_7:
        sub_80B6BB8(var_r0, 0, 4U, var_r3, 0x1000, 0x14, 0x14, 8, 0U, 0);
        break;
    case 2:
        var_r0 = temp_r4 + 0xC0;
        var_r3 = 0x1E0;
        goto block_7;
    case 3:
        var_r0 = temp_r4 + 0xC0;
        var_r3 = 0x283;
        goto block_7;
    case 4:
        sub_80B6BB8(temp_r4 + 0xC0, 0, 4U, 0x326U, 0x1000, 0x14, 0x14, 8, 0U, 0);
        break;
    }
    return sp34;
}

void Task_80B3648(void) {
    s32 temp_r0_2;
    u16 temp_r0;
    u16 temp_r4;
    u8 temp_r2_2;
    void *temp_r2;

    temp_r4 = gCurTask->data;
    temp_r2 = temp_r4->unk0;
    temp_r0 = temp_r2->unkC->unk6;
    temp_r4->unk88 = (s32) (temp_r4->unk88 + temp_r4->unk94);
    temp_r0_2 = temp_r4->unk8C + 0x1BF00;
    temp_r4->unk8C = temp_r0_2;
    temp_r2->unk8B4 = temp_r0_2;
    temp_r2_2 = temp_r2->unk8C8;
    if (temp_r2_2 == 0) {
        temp_r4->unk90 = (s32) temp_r0->unk54;
        temp_r4->unkAC = (s16) temp_r2_2;
        sub_80B39B8();
    } else {
        sub_80B46DC();
    }
    sub_80B4508(temp_r4);
    if ((u32) temp_r0->unk6C > 0x12CU) {
        temp_r0->unk6C = 0U;
        gCurTask->main = sub_80B36F4;
    }
}

void sub_80B36F4(void) {
    ? (*sp0)(s16, s16 *);
    s32 temp_r0;
    s8 *var_r1;
    s8 var_r0;
    u16 *var_r4;
    u16 temp_r1;
    u16 temp_r4;
    u16 temp_r5;
    void *temp_r6;

    temp_r4 = gCurTask->data;
    temp_r5 = temp_r4;
    temp_r6 = temp_r5->unk0;
    memcpy(&sp0, &gUnknown_080DC388, 0x60);
    temp_r4->unk88 = (s32) (temp_r4->unk88 + temp_r4->unk94);
    temp_r0 = temp_r4->unk8C + 0x1BF00;
    temp_r4->unk8C = temp_r0;
    temp_r6->unk8B4 = temp_r0;
    if (temp_r4->unkA8 != 0) {
        var_r1 = temp_r4 + 0xB2;
        var_r0 = 2;
    } else {
        var_r1 = temp_r4 + 0xB2;
        var_r0 = 1;
    }
    *var_r1 = var_r0;
    if (temp_r6->unk8C8 == 0) {
        var_r4 = temp_r5 + 0xAC;
        if (temp_r6->unk8C4 != 7) {
            *(((temp_r5->unkAC + 2) * 4) + sp)();
            sp0();
        }
        sub_80B37F0();
        if (!(2 & temp_r5->unkB4)) {
            DisplaySprite(temp_r5 + 8);
        }
    } else {
        sp4();
        sub_80B37F0();
        DisplaySprite(temp_r5 + 8);
        var_r4 = temp_r5 + 0xAC;
    }
    temp_r1 = *var_r4;
    if ((temp_r1 != 9) && (temp_r1 != 0xE)) {
        temp_r5->unkAE = temp_r1;
    }
}

void sub_80B37F0(void) {
    s32 sp4;
    u32 sp8;
    Sprite *temp_r4;
    Sprite *temp_r4_2;
    s16 temp_r6_2;
    s32 var_r0;
    u16 temp_r0;
    u16 temp_r1;
    u16 temp_r2;
    u16 temp_r6;
    u16 var_r8;
    u32 var_r0_2;
    void *var_sb;

    temp_r2 = gCurTask->data;
    temp_r6 = temp_r2->unk0->unkC->unk6;
    temp_r0 = temp_r2->unkAC;
    if ((temp_r0 == 9) || (temp_r0 == 0xE)) {
        var_sb = temp_r2->unkBC + (temp_r2->unkAE * 8);
    } else {
        var_sb = temp_r2->unkBC + (temp_r2->unkAC * 8);
    }
    temp_r1 = 0xF0 - ((s32) ((temp_r2->unk88 + 0xFE1B0000) * 0x47) >> 0x14);
    sp4 = (s32) temp_r1;
    temp_r2->unkA0 = (s32) (s16) temp_r1;
    if ((u32) (u16) (temp_r2->unkAC - 1) <= 1U) {
        var_r0 = temp_r2->unk94;
        if (var_r0 < 0) {
            var_r0 = 0 - var_r0;
        }
        var_r0_2 = (u32) (var_r0 << 6) >> 0x10;
    } else {
        var_r0_2 = 0x10;
    }
    sp8 = var_r0_2;
    if ((sub_80B47C4() << 0x18) != 0) {
        var_r8 = ((s32) (((s32) ((temp_r6->unk4C - temp_r2->unk88) * 5) >> 0x11) * gSineTable[(u32) (temp_r6->unk58 << 0xE) >> 0x16] * 4) >> 0x10) + ((s32) temp_r2->unk90 >> 8);
        if (temp_r2->unkB3 != 0) {
            temp_r2->unk23 = 0xFF;
            var_sb = temp_r2->unkBC;
        }
    } else {
        var_r8 = (u16) ((u32) (temp_r2->unk90 << 8) >> 0x10);
    }
    temp_r6_2 = (s16) var_r8;
    temp_r2->unkA4 = (s32) temp_r6_2;
    if ((s8) temp_r2->unkB9 != 0) {
        temp_r2->unkB9 = (u8) (temp_r2->unkB9 - 1);
        temp_r4 = temp_r2 + 0xE8;
        temp_r4->x = (s16) sp4 - 8;
        temp_r4->y = temp_r6_2 - 0x14;
        UpdateSpriteAnimation(temp_r4);
        DisplaySprite(temp_r4);
    }
    sub_80B47EC(temp_r2 + 8, (s16) sp8, (s16) sp4, temp_r6_2, var_sb);
    if ((u32) (u16) (temp_r2->unkAC - 5) <= 1U) {
        temp_r2->unk10 = (s32) (temp_r2->unk10 & 0xFFFFCFFF);
    }
    if ((u32) (u16) (temp_r2->unkAC - 0x11) <= 1U) {
        temp_r4_2 = temp_r2 + 0xC0;
        temp_r4_2->x = subroutine_arg0.unk4;
        temp_r4_2->y = var_r8;
        UpdateSpriteAnimation(temp_r4_2);
        DisplaySprite(temp_r4_2);
    }
}

void sub_80B39B8(void) {
    ? *var_r0;
    s32 temp_r1_2;
    u16 temp_r3;
    u16 temp_r8;
    u8 temp_r1;
    u8 temp_r4;

    temp_r3 = gCurTask->data;
    temp_r8 = temp_r3->unk0->unkC->unk6;
    temp_r3->unk94 = (s32) ((s32) (temp_r3->unk94 * 0x1D) >> 5);
    temp_r4 = temp_r3->unkB7;
    if (temp_r4 != 0) {
        temp_r3->unkB4 = 0x78U;
        temp_r3->unk23 = 0xFF;
        temp_r3->unk94 = 0;
        temp_r3->unkB5 = 0U;
        temp_r3->unkB6 = 0U;
        temp_r3->unkA8 = 0;
    } else if (temp_r3->unkB5 != 0) {
        temp_r3->unkB4 = 0x78U;
        temp_r3->unk9C = 0xFFFFFC00;
        temp_r3->unkAC = 4;
        temp_r3->unk23 = 0xFF;
        temp_r3->unk94 = (s32) temp_r4;
        temp_r3->unkB5 = 0U;
        temp_r3->unkB6 = 0U;
        temp_r3->unkA8 = (s32) temp_r4;
    }
    temp_r1 = temp_r3->unkB4;
    if (temp_r1 != 0) {
        if (temp_r3->unkB7 == 0) {
            temp_r3->unkB4 = (u8) (temp_r1 - 1);
        }
        temp_r3->unkB6 = 0U;
    }
    if ((temp_r3->unkB6 != 0) && ((sub_80B47C4() << 0x18) != 0)) {
        if (temp_r3->unkA8 == 0) {
            sub_80B4CEC(temp_r3->unk0, 1);
            temp_r1_2 = temp_r3->unk88;
            temp_r8->unk4C = temp_r1_2;
            if (temp_r1_2 <= 0x01EFFFFF) {
                var_r0 = (? *)0x01F00000;
                goto block_14;
            }
            var_r0 = &gUnknown_020F0000;
            if (temp_r1_2 > (s32) &gUnknown_020F0000) {
block_14:
                temp_r8->unk4C = (s32) var_r0;
            }
        }
        temp_r3->unkA8 = 0xC800;
        temp_r3->unkAC = 5;
        *((temp_r3 + 0xAC) - 0x89) = 0xFF;
        temp_r3->unk94 = 0;
        temp_r3->unkB6 = 0U;
    }
}

void sub_80B3B1C(void) {
    s32 temp_r0_2;
    s32 var_r4;
    s32 var_r6;
    s8 *var_r1;
    u16 temp_r0;
    u16 temp_r3;
    void *temp_r5;

    temp_r3 = gCurTask->data;
    temp_r5 = temp_r3->unk0;
    temp_r0 = temp_r5->unkC->unk6;
    var_r4 = temp_r3->unk9C + 0x30;
    var_r6 = temp_r3->unk90 + var_r4;
    temp_r3->unk94 = 0;
    temp_r3->unkA8 = 0;
    temp_r0_2 = temp_r0->unk54;
    if (var_r6 >= temp_r0_2) {
        var_r6 = temp_r0_2;
        var_r4 = 0;
        temp_r3->unkB0 = 0;
        temp_r0->unk60 = 0;
        temp_r0->unk64 = 0;
        if ((s32) temp_r5->unk8C0 >= (s32) temp_r5->unk8C2) {
            temp_r3->unkAC = 0xA;
            var_r1 = temp_r3 + 0x23;
        } else {
            var_r4 = 0xFFFFFC00;
            temp_r3->unkAC = 0xC;
            var_r1 = temp_r3 + 0x23;
        }
        *var_r1 = 0xFF;
    }
    temp_r3->unk90 = var_r6;
    (temp_r3 + 0x90)->unkC = var_r4;
}

void sub_80B3BD4(void) {
    s32 temp_r0;
    u16 temp_r0_2;
    u16 temp_r4;

    temp_r4 = gCurTask->data;
    temp_r0 = temp_r4->unk9C + 0x30;
    temp_r4->unk90 = (s32) (temp_r4->unk90 + temp_r0);
    temp_r4->unk9C = temp_r0;
    if (temp_r4->unkAC == 0xC) {
        temp_r0_2 = temp_r4->unkB0 + 1;
        temp_r4->unkB0 = temp_r0_2;
        if ((u32) temp_r0_2 > 0xB4U) {
            temp_r4->unkB0 = 0U;
            temp_r4->unkAC = 0xDU;
        }
    }
}

void sub_80B3C28(void) {
    s16 temp_r4;
    s16 temp_r4_2;
    u16 temp_r0;
    u16 temp_r0_2;
    u16 temp_r1;
    void *temp_r6;

    temp_r1 = gCurTask->data;
    temp_r6 = temp_r1->unk0;
    if (temp_r1->unkAC == 0xA) {
        temp_r1->unkB0 = (u16) (temp_r1->unkB0 + 1);
        if ((s32) (s16) temp_r6->unk8C2 < (s32) *((temp_r6->unk8C7 * 4) + &gUnknown_080DBE84)) {
            temp_r0 = temp_r6->unk8C2 + 1;
            temp_r6->unk8C2 = temp_r0;
            temp_r4 = (s16) temp_r0;
            temp_r6->unk8D1 = (s8) Div((s32) temp_r4, 0x64);
            temp_r6->unk8D2 = (s8) (Div((s32) temp_r4, 0xA) - (temp_r6->unk8D1 * 0xA));
            temp_r6->unk8D3 = (s8) Mod((s32) temp_r4, 0xA);
        }
        if ((u32) temp_r1->unkB0 > 0x168U) {
            temp_r1->unkB0 = 0U;
            temp_r1->unkAC = 0U;
            temp_r0_2 = *((temp_r6->unk8C7 * 4) + &gUnknown_080DBE84);
            temp_r6->unk8C2 = temp_r0_2;
            temp_r4_2 = (s16) temp_r0_2;
            temp_r6->unk8D1 = (s8) Div((s32) temp_r4_2, 0x64);
            temp_r6->unk8D2 = (s8) (Div((s32) temp_r4_2, 0xA) - (temp_r6->unk8D1 * 0xA));
            temp_r6->unk8D3 = (s8) Mod((s32) temp_r4_2, 0xA);
        }
    }
}

void sub_80B3D4C(void) {
    s32 temp_r0_2;
    s32 var_r4;
    s32 var_r6;
    u16 temp_r0;
    u16 temp_r3;
    void *temp_r5;

    temp_r3 = gCurTask->data;
    temp_r5 = temp_r3->unk0;
    temp_r0 = temp_r5->unkC->unk6;
    var_r4 = temp_r3->unk9C + 0x30;
    var_r6 = temp_r3->unk90 + var_r4;
    temp_r3->unk94 = 0;
    temp_r3->unkA8 = 0;
    temp_r0_2 = temp_r0->unk54;
    if (var_r6 >= temp_r0_2) {
        var_r6 = temp_r0_2;
        var_r4 = 0;
        temp_r3->unkB0 = 0;
        temp_r0->unk60 = 0;
        temp_r0->unk64 = 0;
        if ((s32) temp_r5->unk8C0 >= (s32) temp_r5->unk8C2) {
            temp_r3->unkAC = 0xF;
            temp_r3->unk23 = 0xFF;
            m4aSongNumStart(MUS_SPECIAL_STAGE_CLEAR);
        } else {
            var_r4 = 0xFFFFFC00;
            temp_r3->unkAC = 0x13;
            temp_r3->unk23 = 0xFF;
        }
    }
    temp_r3->unk90 = var_r6;
    (temp_r3 + 0x90)->unkC = var_r4;
}

void sub_80B3E14(void) {
    s32 temp_r0;
    u16 temp_r0_2;
    u16 temp_r4;

    temp_r4 = gCurTask->data;
    temp_r0 = temp_r4->unk9C + 0x30;
    temp_r4->unk90 = (s32) (temp_r4->unk90 + temp_r0);
    temp_r4->unk9C = temp_r0;
    if (temp_r4->unkAC == 0x13) {
        temp_r0_2 = temp_r4->unkB0 + 1;
        temp_r4->unkB0 = temp_r0_2;
        if ((u32) temp_r0_2 > 0xB4U) {
            temp_r4->unkB0 = 0U;
            temp_r4->unkAC = 0x14U;
        }
    }
}

void sub_80B3E68(void) {
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 temp_r1;
    s32 temp_r1_2;
    u16 temp_r0;
    u16 temp_r0_2;
    u16 temp_r4;

    temp_r4 = gCurTask->data;
    temp_r0 = temp_r4->unk0->unkC->unk6;
    if (temp_r4->unkAC == 0xF) {
        temp_r0_2 = temp_r4->unkB0 + 1;
        temp_r4->unkB0 = temp_r0_2;
        if ((u32) (temp_r0_2 << 0x10) > 0x01680000U) {
            temp_r4->unkB0 = 0U;
            temp_r4->unkAC = 0x10U;
        }
        temp_r1 = temp_r4->unk88;
        temp_r4->unk88 = (s32) (temp_r1 + ((s32) ((0x01FFC000 - temp_r1) * 8) >> 8));
        temp_r1_2 = temp_r4->unk90;
        temp_r4->unk90 = (s32) (temp_r1_2 + ((s32) (0x7800 - temp_r1_2) >> 5));
        temp_r0_3 = temp_r0->unk4C;
        temp_r0->unk4C = (s32) (temp_r0_3 + ((s32) ((0x01FFC000 - temp_r0_3) * 8) >> 8));
        temp_r0_4 = temp_r0->unk54;
        temp_r0->unk54 = (s32) (temp_r0_4 + ((s32) (0x7800 - temp_r0_4) >> 5));
        return;
    }
    temp_r4->unkB0 = 0U;
    temp_r4->unkAC = 0x11U;
    temp_r4->unk23 = 0xFF;
}

void sub_80B3F1C(void) {
    s16 *temp_r1_3;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r2_3;
    s32 temp_r2_4;
    s32 var_r2;
    s32 var_r5;
    s32 var_r7;
    u16 temp_r0;
    u16 temp_r2_2;
    u16 temp_r3;
    void *temp_r2;

    temp_r3 = gCurTask->data;
    temp_r2 = temp_r3->unk0;
    temp_r0 = temp_r2->unkC->unk6;
    temp_r2_2 = temp_r2->unk0->unk6;
    var_r5 = temp_r3->unk90;
    var_r7 = 0;
    temp_r3->unk8C = (s32) (temp_r3->unk8C + temp_r3->unkA8);
    temp_r2_2->unk10 = (s32) (temp_r2_2->unk10 + (temp_r3->unkA8 * 4));
    temp_r2_3 = temp_r3->unkA8;
    temp_r1 = temp_r2_3 - 1;
    temp_r3->unkA8 = temp_r1;
    if ((s32) (0xC800 - temp_r1) > 0xB0) {
        temp_r0_2 = temp_r2_3 + 0xFFFFFBFF;
        temp_r3->unkA8 = temp_r0_2;
        if (temp_r0_2 <= 0) {
            var_r7 = 1;
        }
    }
    temp_r1_2 = temp_r3->unk88;
    temp_r2_4 = temp_r0->unk4C;
    if (temp_r1_2 < temp_r2_4) {
        temp_r0_3 = temp_r1_2 + 0x20000;
        temp_r3->unk88 = temp_r0_3;
        if (temp_r0_3 > (s32) temp_r0->unk4C) {
            goto block_8;
        }
    } else if (temp_r1_2 > temp_r2_4) {
        temp_r0_4 = temp_r1_2 + 0xFFFE0000;
        temp_r3->unk88 = temp_r0_4;
        if (temp_r0_4 < (s32) temp_r0->unk4C) {
block_8:
            temp_r3->unk88 = temp_r0->unk4C;
        }
    }
    if (0x20 & gInput) {
        if ((s32) (temp_r0->unk4C + 0x8000) <= (s32) &gUnknown_020EFFFF) {
            var_r2 = 0x8000;
            goto block_15;
        }
    } else if ((0x10 & gInput) && ((s32) (temp_r0->unk4C + 0xFFFF8000) > 0x01F00000)) {
        var_r2 = 0xFFFF8000;
block_15:
        temp_r3->unk88 = (s32) (temp_r3->unk88 + var_r2);
        temp_r0->unk4C = (s32) (temp_r0->unk4C + var_r2);
    }
    if (0x80 & gInput) {
        var_r5 += 0x180;
        if (var_r5 > 0x7800) {
            var_r5 = 0x7800;
        }
    } else if (0x40 & gInput) {
        var_r5 += 0xFFFFFE80;
        if (var_r5 <= 0x13FF) {
            var_r5 = 0x1400;
        }
    }
    temp_r3->unk90 = var_r5;
    temp_r0->unk54 = var_r5;
    if (var_r7 != 0) {
        temp_r3->unkB8 = 0x14;
        temp_r3->unkA8 = 0;
        *((temp_r3 + 0xA8) - 0x14) = 0;
        temp_r1_3 = (temp_r3 + 0xB8) - 0xC;
        *temp_r1_3 = 6;
        *(temp_r1_3 - 0x89) = 0xFF;
    }
}

void sub_80B407C(void) {
    s32 *var_r0;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 temp_r0_5;
    s32 temp_r2_2;
    s32 var_r1;
    s32 var_r2;
    s32 var_r4;
    s32 var_r6;
    u16 temp_r0;
    u16 temp_r2;
    u8 temp_r0_2;
    void *temp_r0_6;
    void *temp_r0_7;

    temp_r2 = gCurTask->data;
    temp_r0 = temp_r2->unk0->unkC->unk6;
    var_r4 = temp_r2->unk90;
    var_r6 = 0;
    temp_r0_2 = temp_r2->unkB8 - 1;
    temp_r2->unkB8 = temp_r0_2;
    if ((s32) (temp_r0_2 << 0x18) <= 0) {
        var_r6 = 1;
    }
    temp_r0_3 = temp_r2->unk88;
    temp_r2_2 = temp_r0->unk4C;
    if (temp_r0_3 < temp_r2_2) {
        temp_r0_4 = temp_r0_3 + 0x20000;
        temp_r2->unk88 = temp_r0_4;
        if (temp_r0_4 > (s32) temp_r0->unk4C) {
            goto block_7;
        }
    } else if (temp_r0_3 > temp_r2_2) {
        temp_r0_5 = temp_r0_3 + 0xFFFE0000;
        temp_r2->unk88 = temp_r0_5;
        if (temp_r0_5 < (s32) temp_r0->unk4C) {
block_7:
            temp_r2->unk88 = temp_r0->unk4C;
        }
    }
    if (0x20 & gInput) {
        if ((s32) (temp_r0->unk4C + 0x8000) <= (s32) &gUnknown_020EFFFF) {
            var_r0 = temp_r2 + 0x88;
            var_r1 = temp_r2->unk88;
            var_r2 = 0x8000;
            goto block_14;
        }
    } else if ((0x10 & gInput) && ((s32) (temp_r0->unk4C + 0xFFFF8000) > 0x01F00000)) {
        var_r0 = temp_r2 + 0x88;
        var_r1 = temp_r2->unk88;
        var_r2 = 0xFFFF8000;
block_14:
        *var_r0 = var_r1 + var_r2;
        temp_r0->unk4C = (s32) (temp_r0->unk4C + var_r2);
    }
    if (0x80 & gInput) {
        var_r4 += 0x180;
        if (var_r4 > 0x7800) {
            var_r4 = 0x7800;
        }
    } else if (0x40 & gInput) {
        var_r4 += 0xFFFFFE80;
        if (var_r4 <= 0x13FF) {
            var_r4 = 0x1400;
        }
    }
    temp_r0_6 = temp_r2 + 0x90;
    temp_r2->unk90 = var_r4;
    temp_r0->unk54 = var_r4;
    if (var_r6 != 0) {
        temp_r0_6->unk28 = 0;
        temp_r0_7 = (temp_r0_6 + 0x28) - 0x24;
        temp_r0_7->unk0 = 0;
        temp_r0_7->unk18 = 0;
        temp_r2->unk23 = 0xFF;
    }
}

void sub_80B41B0(void) {
    s16 var_r5;
    s32 temp_r1_2;
    u16 temp_r0;
    u16 temp_r3;
    void *temp_r1;

    temp_r3 = gCurTask->data;
    temp_r1 = temp_r3->unk0;
    temp_r0 = temp_r1->unkC->unk6;
    var_r5 = 0;
    if ((u32) temp_r1->unk8C4 > 4U) {
        if (temp_r3->unkB3 == 0) {
            if (0x20 & gInput) {
                var_r5 = 1;
                goto block_11;
            }
            goto block_9;
        }
        temp_r1_2 = temp_r3->unk88;
        if (temp_r1_2 <= 0x01E50000) {
            if (0x20 & gInput) {
                var_r5 = 1;
                goto block_11;
            }
        } else if (temp_r1_2 > 0x021AFFFF) {
block_9:
            if (0x10 & gInput) {
                var_r5 = 2;
block_11:
                temp_r3->unk23 = 0xFF;
            }
        }
        if (gStageData.buttonConfig.jump & gPressedKeys) {
            var_r5 = 3;
            temp_r3->unk23 = 0xFF;
            (temp_r3 + 0x23)->unk79 = 0xFFFFFC00;
            temp_r0->unk64 = 0x300;
            m4aSongNumStart(SE_JUMP);
        }
    }
    temp_r3->unk90 = (s32) temp_r0->unk54;
    (temp_r3 + 0x90)->unk1C = var_r5;
}

void sub_80B4294(void) {
    s32 *var_r1;
    s32 temp_r0_2;
    s32 temp_r1;
    s32 var_r1_2;
    s32 var_r2;
    u16 temp_r0;
    u16 temp_r2;
    u16 var_r5;

    temp_r2 = gCurTask->data;
    temp_r0 = temp_r2->unk0->unkC->unk6;
    var_r5 = temp_r2->unkAC;
    if (0x20 & gInput) {
        var_r1 = temp_r2 + 0x94;
        var_r2 = 0xA80;
        goto block_4;
    }
    if (0x10 & gInput) {
        var_r1 = temp_r2 + 0x94;
        var_r2 = 0xFFFFF580;
block_4:
        *var_r1 = temp_r2->unk94 + var_r2;
    }
    temp_r1 = temp_r2->unk88;
    if (temp_r1 <= 0x01E50000) {
        temp_r2->unkB3 = 1;
        temp_r2->unk88 = 0x01E50000;
    } else if (temp_r1 > 0x021AFFFF) {
        temp_r2->unkB3 = 1;
        temp_r2->unk88 = 0x021B0000;
    }
    var_r1_2 = temp_r2->unk94;
    if (var_r1_2 < 0) {
        var_r1_2 = 0 - var_r1_2;
    }
    if ((var_r1_2 <= 0x4FE) && !(0x30 & gInput)) {
        var_r5 = 0;
        temp_r2->unk23 = 0xFF;
        temp_r2->unk94 = 0;
    } else {
        temp_r0_2 = temp_r2->unk94;
        if (temp_r0_2 > 0) {
            var_r5 = 2;
        } else if (temp_r0_2 < 0) {
            var_r5 = 1;
        }
    }
    if (gStageData.buttonConfig.jump & gPressedKeys) {
        var_r5 = 3;
        temp_r2->unk23 = 0xFF;
        (temp_r2 + 0x23)->unk79 = 0xFFFFFC00;
        temp_r0->unk64 = 0x300;
        m4aSongNumStart(SE_JUMP);
    }
    temp_r2->unk90 = (s32) temp_r0->unk54;
    (temp_r2 + 0x90)->unk1C = var_r5;
}

void sub_80B43B4(void) {
    s32 *var_r1;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r2;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r2;
    s32 var_r3;
    s32 var_r4;
    u16 temp_r0;
    u16 temp_r1;
    u16 var_r5;
    void *temp_r0_4;

    temp_r1 = gCurTask->data;
    temp_r0 = temp_r1->unk0->unkC->unk6;
    var_r5 = temp_r1->unkAC;
    var_r3 = temp_r1->unk9C + 0x30;
    var_r4 = temp_r1->unk90 + var_r3;
    if ((var_r3 < 0) && (gStageData.buttonConfig.jump & gInput)) {
        var_r3 -= 0x10;
    }
    if (0x20 & gInput) {
        var_r1 = temp_r1 + 0x94;
        var_r0 = temp_r1->unk94;
        var_r2 = 0xA80;
        goto block_7;
    }
    if (0x10 & gInput) {
        var_r1 = temp_r1 + 0x94;
        var_r0 = temp_r1->unk94;
        var_r2 = 0xFFFFF580;
block_7:
        *var_r1 = var_r0 + var_r2;
    }
    temp_r2 = temp_r1->unk88;
    if (temp_r2 <= 0x01E4FFFF) {
        var_r0_2 = 0x01E50000;
        goto block_11;
    }
    var_r0_2 = 0x021B0000;
    if (temp_r2 > 0x021B0000) {
block_11:
        temp_r1->unk88 = var_r0_2;
    }
    temp_r0_2 = temp_r0->unk54;
    if (var_r4 >= temp_r0_2) {
        var_r4 = temp_r0_2;
        var_r3 = 0;
        temp_r0_3 = temp_r1->unk94;
        if (temp_r0_3 == 0) {
            var_r5 = 0;
        } else if (temp_r0_3 > 0) {
            var_r5 = 2;
        } else if (temp_r0_3 < 0) {
            var_r5 = 1;
        }
        temp_r0->unk60 = 0;
        temp_r0->unk64 = 0;
    }
    temp_r0_4 = temp_r1 + 0x90;
    temp_r1->unk90 = var_r4;
    temp_r0_4->unkC = var_r3;
    (temp_r0_4 + 0xC)->unk10 = var_r5;
}

void sub_80B4498(Sprite *arg0, u16 *arg1, u16 arg2, u8 arg3, s32 *arg4) {
    u32 var_r3;
    u8 temp_r2;

    var_r3 = 0x1000;
    temp_r2 = arg4->unk7;
    if (1 & temp_r2) {
        var_r3 = 0x1000 | 0x400;
    }
    if (2 & temp_r2) {
        var_r3 |= 0x800;
    }
    arg0->tiles = arg1;
    arg0->anim = arg4->unk0;
    arg0->frameFlags = var_r3;
    arg0->x = 0x78;
    arg0->y = arg2;
    arg0->oamFlags = arg3 << 6;
    arg0->qAnimDelay = 0;
    arg0->prevAnim = 0xFFFF;
    arg0->variant = (u8) arg4->unk2;
    arg0->prevVariant = 0xFF;
    arg0->animSpeed = arg4->unk6;
    arg0->palId = 0;
    arg0->hitboxes[0].index = -1;
    UpdateSpriteAnimation(arg0);
}

void sub_80B4508(void *arg0) {
    s32 sp0;
    s32 sp4;
    Sprite *temp_r0_2;
    SpriteTransform *temp_r2;
    s16 temp_r5_2;
    s16 temp_r5_3;
    s16 temp_r6;
    s32 temp_r1;
    s32 temp_r2_2;
    s32 temp_r4;
    s32 temp_r5;
    u16 temp_r0;
    u16 temp_r1_2;
    u16 temp_r3;

    temp_r0 = arg0->unk0->unkC->unk6;
    temp_r0_2 = arg0 + 8;
    temp_r2 = arg0 + 0x38;
    temp_r1 = arg0->unk88;
    temp_r5 = (s32) ((temp_r1 + 0xFE1B0000) * 0x47) >> 0x14;
    sp0 = temp_r5;
    temp_r0_2->frameFlags = 0x1070;
    temp_r6 = ((s32) temp_r0->unk58 >> 8) & 0x3FF;
    sp4 = temp_r0->unk4C - arg0->unk88;
    temp_r2_2 = (s32) (((u32) temp_r0->unk48 >> 8) * 0x1C00) >> 0x10;
    temp_r5_2 = gSineTable[temp_r6];
    temp_r5_3 = gSineTable[temp_r6 + 0x100];
    temp_r4 = sp4 >> 0x10;
    temp_r3 = (s16) ((s16) ((0xF0 - temp_r5) + ((s32) (temp_r2_2 * temp_r5_2) >> 0xE)) + ((s32) (temp_r5_3 * temp_r4) >> 0xC)) - ((s32) (temp_r4 * 9) >> 1);
    temp_r1_2 = (s16) (((s16) (((s32) (gSineTable[((s32) temp_r0->unk58 >> 8) & 0x3FF] * ((s32) ((temp_r0->unk4C - temp_r1) * 5) >> 0x11) * 4) >> 0x10) + ((s32) arg0->unk90 >> 8)) + 0x18) - ((s32) (temp_r5_3 * temp_r2_2) >> 0xE)) + ((s32) (temp_r4 * temp_r5_2) >> 0xE);
    temp_r0_2->x = temp_r3;
    temp_r0_2->y = temp_r1_2;
    temp_r2->qScaleX = (s16) ((u32) temp_r0->unk48 >> 8);
    temp_r2->qScaleY = (s16) ((u32) temp_r0->unk48 >> 8);
    temp_r2->x = temp_r3;
    temp_r2->y = temp_r1_2;
    arg0->unk38 = temp_r6;
    UpdateSpriteAnimation(temp_r0_2);
    TransformSprite(temp_r0_2, temp_r2);
    DisplaySprite(temp_r0_2);
}

void sub_80B4654(void *arg0, u8 arg1) {
    s16 temp_r0;
    u16 temp_r2;
    u8 var_r1;

    var_r1 = arg1;
    temp_r2 = arg0->unk8->unk6;
    if ((temp_r2->unkB4 == 0) && (temp_r2->unkB5 == 0)) {
        temp_r2->unkB5 = 1U;
        temp_r0 = (s16) arg0->unk8C0;
        if (temp_r0 != 0) {
            if ((s32) temp_r0 <= 4) {
                var_r1 = (u8) arg0->unk8C0;
            }
            sub_80B4FA8(arg0, (s8) var_r1);
            m4aSongNumStart(SE_LOST_RINGS);
        }
    }
}

void sub_80B46B0(void *arg0) {
    u16 temp_r2;

    temp_r2 = arg0->unk8->unk6;
    if (!(temp_r2->unkB4 & 0xFF0000FF)) {
        temp_r2->unkB6 = 1;
    }
}

void sub_80B46DC(void) {

}

void sub_80B46E0(void) {
    s32 temp_r0;
    s32 var_r2;
    s32 var_r3;
    u16 temp_r4;
    u16 var_r1;

    temp_r4 = gCurTask->data;
    var_r1 = temp_r4->unkAC;
    var_r2 = temp_r4->unk9C + 0x40;
    var_r3 = temp_r4->unk90 + var_r2;
    temp_r0 = temp_r4->unk0->unkC->unk6->unk54;
    if (var_r3 >= temp_r0) {
        var_r3 = temp_r0;
        var_r2 = 0;
        temp_r4->unk23 = 0xFF;
        var_r1 = 0;
    }
    temp_r4->unk90 = var_r3;
    temp_r4->unk9C = var_r2;
    temp_r4->unkAC = var_r1;
}

void sub_80B4738(void) {
    s32 temp_r2;
    s32 temp_r3;
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    temp_r2 = temp_r1->unk9C + 0x30;
    temp_r3 = temp_r1->unk90 + temp_r2;
    if ((s32) (temp_r3 >> 8) > 0xC8) {
        temp_r1->unkAC = 8;
    }
    temp_r1->unk90 = temp_r3;
    temp_r1->unk9C = temp_r2;
}

void sub_80B4774(void) {

}

void sub_80B4778(void) {
    u16 temp_r1;
    u16 temp_r1_2;

    temp_r1 = gCurTask->data;
    if (temp_r1->unkAC != 0x12) {
        temp_r1_2 = temp_r1->unkB0;
        temp_r1->unkB0 = (u16) (temp_r1_2 + 1);
        if ((u32) temp_r1_2 > 0x3BU) {
            temp_r1->unkAC = 0x12U;
        }
    }
    if (temp_r1->unkB0 == 0x12) {
        m4aSongNumStart(MUS_EMERALD_GET);
    }
}

s32 sub_80B47C4(void) {
    s32 var_r1;
    u16 temp_r0;

    var_r1 = 0;
    temp_r0 = gCurTask->data->unkAC;
    if (((u32) temp_r0 <= 2U) || (temp_r0 == 5)) {
        var_r1 = 1;
    }
    return var_r1;
}

void sub_80B47EC(Sprite *arg0, u16 arg1, u16 arg2, u16 arg3, void *arg4) {
    u16 temp_r7;
    u16 var_r2_2;
    u32 var_r2;
    u8 temp_r1;

    temp_r7 = arg1;
    var_r2 = 0x1000;
    temp_r1 = arg4->unk7;
    if (1 & temp_r1) {
        var_r2 = 0x1000 | 0x400;
    }
    if (2 & temp_r1) {
        var_r2 |= 0x800;
    }
    arg0->anim = arg4->unk0;
    arg0->frameFlags = var_r2;
    arg0->x = arg2;
    arg0->y = arg3;
    arg0->variant = (u8) arg4->unk2;
    var_r2_2 = 0x10;
    if ((s16) temp_r7 != -1) {
        var_r2_2 = temp_r7;
    }
    arg0->animSpeed = (u8) var_r2_2;
    UpdateSpriteAnimation(arg0);
}

void sub_80B484C(Sprite *arg0, u16 arg1, u16 arg2, void *arg3) {
    u16 temp_r6;
    u16 var_r2_2;
    u32 var_r2;
    u8 temp_r1;

    temp_r6 = arg1;
    var_r2 = 0x1100;
    temp_r1 = arg3->unk7;
    if (1 & temp_r1) {
        var_r2 = 0x1100 | 0x400;
    }
    if (2 & temp_r1) {
        var_r2 |= 0x800;
    }
    arg0->anim = arg3->unk0;
    arg0->frameFlags = var_r2;
    arg0->y = arg2;
    arg0->variant = (u8) arg3->unk2;
    var_r2_2 = 0x10;
    if ((s16) temp_r6 != -1) {
        var_r2_2 = temp_r6;
    }
    arg0->animSpeed = (u8) var_r2_2;
    UpdateSpriteAnimation(arg0);
}

Task *sub_80B48A4(void *arg0) {
    Task *temp_r0;
    s32 temp_r1;
    u16 temp_r5;
    u8 temp_r8;

    temp_r8 = arg0->unk8C7;
    temp_r0 = TaskCreate(Task_80B494C, 0x70U, 0xA000U, 0U, NULL);
    temp_r5 = temp_r0->data;
    temp_r5->unk0 = arg0;
    temp_r5->unk4 = 0;
    temp_r1 = temp_r8 * 6;
    temp_r5->unk4C = (s32) (*(temp_r1 + &gUnknown_080DBE58) << 0x10);
    temp_r5->unk50 = (s32) (*(temp_r1 + (&gUnknown_080DBE58 + 2)) << 0x10);
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
    return temp_r0;
}

void Task_80B494C(void) {
    s16 temp_r2;
    s16 temp_r4;
    s16 temp_r7;
    s16 temp_r8;
    s32 temp_r1_2;
    s32 temp_r4_2;
    u16 temp_r0;
    u16 temp_r3;
    u16 temp_sb;
    u16 temp_sl;
    void *temp_r1;

    temp_r3 = gCurTask->data;
    temp_r1 = temp_r3->unk0;
    temp_sb = temp_r1->unk0->unk6;
    temp_sl = temp_r1->unk8->unk6;
    temp_r3->unk6E = (u8) ((temp_r3->unk6E + 1) & 3);
    temp_r8 = sa3__sub_80B1560(&gUnknown_080DC418, (u16) (temp_r3->unk6C << 6));
    temp_r4 = sa3__sub_80B1560(&gUnknown_080DC408, (u16) (temp_r3->unk6C << 6));
    temp_r7 = sa3__sub_80B1560(&gUnknown_080DC3F8, (u16) (temp_r3->unk6C << 6));
    temp_r2 = sa3__sub_80B1560(&gUnknown_080DC3E8, (u16) (temp_r3->unk6C << 6));
    temp_r4_2 = temp_r4 << 6;
    temp_r3->unk54 = temp_r4_2;
    if (temp_r4_2 <= 0x13FF) {
        temp_r3->unk54 = 0x1400;
    }
    if ((s32) temp_r3->unk54 > 0x7800) {
        temp_r3->unk54 = 0x7800;
    }
    temp_r3->unk48 = (s32) (temp_r8 << 7);
    temp_sb->unk10 = (s32) (temp_sb->unk10 + 0xFFFE0000 + (temp_r8 << 8));
    temp_r1_2 = (temp_r7 << 0xE) + 0x01F00000;
    temp_r3->unk4C = temp_r1_2;
    temp_r3->unk58 = (s32) ((0x3FF & temp_r2) << 8);
    temp_sl->unk88 = temp_r1_2;
    sub_80B4DA8(temp_r3);
    sub_80B4B68(temp_r3);
    temp_r0 = temp_r3->unk6C + 1;
    temp_r3->unk6C = temp_r0;
    if ((u32) (temp_r0 << 0x10) > 0x012C0000U) {
        temp_r3->unk48 = 0x10000;
        gCurTask->main = sub_80B4D08;
    }
}

void sub_80B4A7C(void *arg0) {
    ? *var_r0;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 temp_r1_4;
    s32 temp_r1_5;
    s32 temp_r2;
    s32 var_r1;
    s32 var_r4;
    s8 var_r5;
    u16 temp_r0;
    u16 temp_r1;

    temp_r1 = arg0->unk0->unk8->unk6;
    var_r5 = 0;
    temp_r2 = temp_r1->unk88;
    var_r4 = 1;
    temp_r0 = temp_r1->unkAC;
    if (((s32) temp_r0 >= 0xC) && (((s32) temp_r0 <= 0xD) || (((s32) temp_r0 <= 0x14) && ((s32) temp_r0 >= 0x13)))) {
        var_r4 = 0;
    }
    if (var_r4 != 0) {
        temp_r1_2 = arg0->unk4C;
        if (temp_r2 < (s32) (temp_r1_2 + 0xFFF50000)) {
            var_r1 = 0xB0000;
            goto block_10;
        }
        if (temp_r2 > (s32) (temp_r1_2 + 0xC0000)) {
            var_r1 = 0xFFF40000;
block_10:
            arg0->unk4C = (s32) (temp_r2 + var_r1);
            var_r5 = 1;
        }
        temp_r1_3 = arg0->unk4C;
        if (temp_r1_3 <= 0x01EFFFFF) {
            var_r0 = (? *)0x01F00000;
            goto block_14;
        }
        var_r0 = &gUnknown_020F0000;
        if (temp_r1_3 > (s32) &gUnknown_020F0000) {
block_14:
            arg0->unk4C = (s32) var_r0;
        }
        temp_r1_4 = (s32) temp_r1->unk94 >> 0xB;
        arg0->unk58 = (s32) (gSineTable[(0 - ((s32) (temp_r1_4 * temp_r1_4 * temp_r1_4 * 5) >> 0xB)) & 0x3FF] * 4);
        temp_r1->unkB3 = var_r5;
        return;
    }
    temp_r1_5 = arg0->unk5C + 0x80;
    arg0->unk5C = temp_r1_5;
    arg0->unk54 = (s32) (arg0->unk54 + 0x60);
    arg0->unk4C = (s32) (arg0->unk4C - temp_r1_5);
    arg0->unk48 = (s32) (arg0->unk48 + (temp_r1_5 >> 6));
    arg0->unk58 = (s32) (arg0->unk58 + 0x1000);
}

void sub_80B4B68(void *arg0) {
    s16 *var_r2;
    s16 temp_r2_2;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 var_r1;
    u16 temp_r1;
    u16 temp_r1_2;
    u16 temp_r2;
    u16 temp_r8;
    u16 var_r0_2;
    u16 var_r0_3;
    u16 var_r3;
    u32 temp_r0;
    u32 var_r0;
    u32 var_r5;
    void *temp_r7;

    temp_r7 = arg0->unk0;
    temp_r2 = temp_r7->unk8->unk6;
    temp_r8 = 0xBE - ((s32) ((arg0->unk4C + 0xFE100000) * 0x47) >> 0x14);
    var_r3 = 0;
    temp_r0 = arg0->unk68;
    switch (temp_r0) {                              /* irregular */
    default:
        var_r3 = ((u8) arg0->unk6E >> 1) + 0x1AC;
        if ((s32) temp_r2->unkA8 > 0xC750) {
            var_r0 = 1;
block_13:
            arg0->unk68 = var_r0;
            arg0->unk6C = 0U;
        }
        break;
    case 1:
        var_r2 = arg0 + 0x6C;
        temp_r1 = arg0->unk6C;
        var_r0_2 = 0x1AF;
        if ((u32) temp_r1 <= 5U) {
            var_r0_2 = 0x1AE;
        }
        var_r3 = var_r0_2;
        if ((u32) temp_r1 > 0xCU) {
            arg0->unk68 = 2U;
block_18:
            *var_r2 = 0;
        }
        break;
    case 2:
        var_r3 = ((u8) arg0->unk6E >> 1) + 0x1B0;
        if ((s32) (0xC800 - temp_r2->unkA8) > 0xB0) {
            var_r0 = 3;
            goto block_13;
        }
        break;
    case 3:
        var_r2 = arg0 + 0x6C;
        temp_r1_2 = arg0->unk6C;
        var_r0_3 = 0x1AF;
        if ((u32) temp_r1_2 > 6U) {
            var_r0_3 = 0x1AE;
        }
        var_r3 = var_r0_3;
        if ((u32) temp_r1_2 > 0xCU) {
            arg0->unk68 = 0U;
            goto block_18;
        }
        break;
    }
    var_r5 = (u32) (arg0->unk48 << 8) >> 0x10;
    temp_r0_2 = 0xC800 - temp_r2->unkA8;
    if (temp_r0_2 <= 0xAF) {
        temp_r0_3 = temp_r0_2 - 0x58;
        var_r1 = temp_r0_3;
        if (temp_r0_3 < 0) {
            var_r1 = 0 - temp_r0_3;
        }
        var_r5 = (u32) (u16) ((s16) var_r5 + ((s32) (var_r1 - 0x58) >> 1));
    }
    sub_80B6B3C(arg0 + 8, 0, 0x1C, var_r3, 0x10, 0x10, 0, 0x13, 0, 0);
    temp_r2_2 = (s16) var_r5;
    sa2__sub_8003EE4((u16) ((u32) (arg0->unk58 << 0xE) >> 0x16), temp_r2_2, temp_r2_2, 0x40, 0x40, (s16) (s32) (s16) temp_r8, (s16) (s32) (s16) (((s32) arg0->unk54 >> 8) + (((s32) arg0->unk60 >> 9) + 0x19)), &gBgAffineRegs[1]);
    temp_r7->unk8B0 = (s32) arg0->unk4C;
}

void sub_80B4CEC(void *arg0, s32 arg1) {
    u16 temp_r0;

    temp_r0 = arg0->unkC->unk6;
    temp_r0->unk6C = 0;
    temp_r0->unk68 = arg1;
}

void sub_80B4D08(void) {
    u16 temp_r2;

    temp_r2 = gCurTask->data;
    temp_r2->unk6E = (u8) ((temp_r2->unk6E + 1) & 3);
    temp_r2->unk6C = (u16) (temp_r2->unk6C + 1);
    sub_80B4D58(temp_r2);
    sub_80B4A7C((void *) temp_r2);
    sub_80B4DA8(temp_r2);
    sub_80B4B68(temp_r2);
}

void sub_80B4D58(void *arg0) {
    s32 temp_r0;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 var_r0;

    temp_r2 = arg0->unk60;
    if ((temp_r2 != 0) || (arg0->unk64 != 0)) {
        if (temp_r2 < 0) {
            var_r0 = arg0->unk64 + 0x28;
        } else {
            var_r0 = arg0->unk64 - 0x28;
        }
        arg0->unk64 = var_r0;
        temp_r2_2 = arg0->unk64;
        temp_r0 = arg0->unk60 + temp_r2_2;
        arg0->unk60 = temp_r0;
        if (temp_r2 < 0) {
            if (temp_r0 > 0) {
                goto block_9;
            }
            goto block_10;
        }
        if (temp_r0 < 0) {
block_9:
            arg0->unk64 = (s32) ((s32) (temp_r2_2 * 0x64) >> 8);
block_10:
            if ((s32) arg0->unk60 < 0) {
                arg0->unk60 = 0;
                arg0->unk64 = 0;
            }
        }
    }
}

void sub_80B4DA8(void *arg0) {
    s32 temp_r0_2;
    s32 temp_r0_3;
    void *temp_r0;

    temp_r0 = arg0->unk0;
    if (((u32) temp_r0->unk8C4 > 4U) && ((u32) temp_r0->unk8->unk6->unkAC <= 2U)) {
        if (0x80 & gInput) {
            temp_r0_2 = arg0->unk54 + 0x180;
            arg0->unk54 = temp_r0_2;
            if (temp_r0_2 > 0x7800) {
                arg0->unk54 = 0x7800;
            }
        } else if (0x40 & gInput) {
            temp_r0_3 = arg0->unk54 + 0xFFFFFE80;
            arg0->unk54 = temp_r0_3;
            if (temp_r0_3 <= 0x13FF) {
                arg0->unk54 = 0x1400;
            }
        }
    }
}

Task *sub_80B4E1C(void *arg0) {
    ? (*sp4)(s16, s16 *);
    Task *temp_r0;
    u16 temp_r1;
    u8 var_r0;
    u8 var_r0_2;
    void *var_r1;
    void *var_r1_2;

    memcpy(&sp4, &gUnknown_080DC428, 0xE);
    temp_r0 = TaskCreate(Task_80B5038, 0x8E8U, 0xB000U, 0U, NULL);
    temp_r1 = temp_r0->data;
    temp_r1->unk0 = arg0;
    temp_r1->unk8DA = (u16) ((arg0->unk8C7 * 2) + sp)->unk4;
    temp_r1->unk8DC = 0;
    temp_r1->unk8E2 = 0;
    temp_r1->unk8E4 = 0;
    temp_r1->unk8DE = 0;
    var_r1 = temp_r1 + 0x5F4;
    var_r0 = 0;
    do {
        var_r1->unk0 = 0;
        var_r1->unk4 = 0;
        var_r1->unk8 = 0;
        var_r1->unkC = 0;
        var_r1->unk10 = 0;
        var_r1->unk14 = 0;
        var_r1->unk18 = 0;
        var_r1->unk1A = 0;
        var_r1->unk1B = 0;
        var_r0 += 1;
        var_r1 += 0x1C;
    } while ((u32) var_r0 <= 7U);
    var_r1_2 = temp_r1 + 0x6D4;
    var_r0_2 = 0;
    do {
        var_r1_2->unk0 = 0;
        var_r1_2->unk4 = 0;
        var_r1_2->unk8 = 0;
        var_r1_2->unkC = 0;
        var_r1_2->unk10 = 0;
        var_r1_2->unk14 = 0;
        var_r1_2->unk18 = 0;
        var_r1_2->unk1A = 0;
        var_r1_2->unk1B = 0;
        var_r0_2 += 1;
        var_r1_2 += 0x1C;
    } while ((u32) var_r0_2 <= 3U);
    return temp_r0;
}

void sub_80B4EEC(void *arg0, u16 arg1) {
    s16 temp_r5;
    u16 temp_r1;
    u32 temp_r0;
    u32 var_r7;
    u8 temp_r0_2;
    u8 temp_r0_3;
    u8 temp_r0_4;

    temp_r1 = arg0->unk8->unk6;
    if (temp_r1->unkA8 != 0) {
        temp_r1->unkB9 = 0x3C;
    }
    temp_r5 = (s16) arg1;
    arg0->unk8C0 = (u16) (temp_r5 + arg0->unk8C0);
    m4aSongNumStart(SE_RING_OLD_2);
    if ((s32) (s16) arg0->unk8C0 > 0x3E7) {
        arg0->unk8C0 = 0x3E7U;
    }
    var_r7 = 0;
    if ((s32) temp_r5 > 0) {
        do {
            temp_r0_2 = arg0->unk8D0 + 1;
            arg0->unk8D0 = temp_r0_2;
            if ((s32) (s8) temp_r0_2 > 9) {
                arg0->unk8D0 = 0U;
                temp_r0_3 = arg0->unk8CF + 1;
                arg0->unk8CF = temp_r0_3;
                if ((s32) (s8) temp_r0_3 > 9) {
                    arg0->unk8CF = 0U;
                    temp_r0_4 = arg0->unk8CE + 1;
                    arg0->unk8CE = temp_r0_4;
                    if ((s32) (s8) temp_r0_4 > 9) {
                        arg0->unk8CE = 9U;
                        arg0->unk8CF = 9U;
                        arg0->unk8D0 = 9U;
                    }
                }
            }
            temp_r0 = (var_r7 << 0x10) + 0x10000;
            var_r7 = temp_r0 >> 0x10;
        } while ((s32) ((s32) temp_r0 >> 0x10) < (s32) temp_r5);
    }
}

void sub_80B4FA8(void *arg0, u16 arg1) {
    u16 temp_r0;
    u16 temp_r4;
    u16 var_r6;
    u32 temp_r0_2;
    u8 temp_r0_3;
    u8 temp_r0_4;
    u8 temp_r0_5;

    temp_r4 = arg1;
    sub_80B6198(arg0, -1);
    temp_r0 = arg0->unk8C0 - (s16) temp_r4;
    arg0->unk8C0 = temp_r0;
    if ((s32) (temp_r0 << 0x10) < 0) {
        arg0->unk8C0 = 0U;
    }
    var_r6 = temp_r4;
    if ((s32) (temp_r4 << 0x10) > 0) {
        do {
            temp_r0_3 = arg0->unk8D0 - 1;
            arg0->unk8D0 = temp_r0_3;
            if ((s32) (temp_r0_3 << 0x18) < 0) {
                arg0->unk8D0 = 9U;
                temp_r0_4 = arg0->unk8CF - 1;
                arg0->unk8CF = temp_r0_4;
                if ((s32) (temp_r0_4 << 0x18) < 0) {
                    arg0->unk8CF = 9U;
                    temp_r0_5 = arg0->unk8CE - 1;
                    arg0->unk8CE = temp_r0_5;
                    if ((s32) (temp_r0_5 << 0x18) < 0) {
                        arg0->unk8CE = 0U;
                        arg0->unk8CF = 0U;
                        arg0->unk8D0 = 0U;
                    }
                }
            }
            temp_r0_2 = (var_r6 << 0x10) + 0xFFFF0000;
            var_r6 = (u16) (temp_r0_2 >> 0x10);
        } while ((s32) temp_r0_2 > 0);
    }
}

void Task_80B5038(void) {
    s16 temp_r0_2;
    s16 var_r2;
    u16 temp_r0;
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    var_r2 = 0;
    do {
        temp_r0_2 = var_r2;
        *(temp_r1 + 0x7B4 + temp_r0_2) = 1;
        temp_r0 = temp_r0_2 + 1;
        var_r2 = (s16) temp_r0;
    } while ((s32) (s16) temp_r0 <= 0x125);
    temp_r1->unk8DC = 0;
    sub_80B6BB8(temp_r1 + 4, 0, 0x10U, 0x45DU, 0x3000, 0x14, 0x14, 0xE, 0U, 0);
    sub_80B6BB8(temp_r1 + 0x2C, 0, 4U, 0x45DU, 0x3000, 0x14, 0x14, 0xE, 5U, 0);
    sub_80B6BB8(temp_r1 + 0x54, 0, 4U, 0x473U, 0x3000, 0x14, 0x14, 0xE, 0U, 0);
    sub_80B6BB8(temp_r1 + 0x7C, 0, 4U, 0x475U, 0x3000, 0x14, 0x14, 0xE, 0U, 0);
    sub_80B6BB8(temp_r1 + 0xA4, 0, 0x10U, 0x476U, 0x3000, 0x14, 0x14, 0xE, 0U, 0);
    sub_80B6BB8(temp_r1 + 0xCC, 0, 4U, 0x474U, 0x3000, 0x14, 0x14, 0xE, 0U, 0);
    sub_80B6BB8(temp_r1 + 0xF4, 0, 0x10U, 0x47AU, 0x1000, 0x14, 0x14, 0xE, 0U, 0);
    sub_80B6BB8(temp_r1 + 0x11C, 0, 4U, 0x479U, 0x1000, 0x14, 0x14, 0xE, 0U, 0);
    sub_80B6BB8(temp_r1 + 0x144, 0, 4U, 0x45CU, 0x1000, 0x14, 0x14, 0xE, 0U, 0);
    sub_80B6BB8(temp_r1 + 0x16C, 0, 4U, 0x45CU, 0x1000, 0x14, 0x14, 0xE, 1U, 0);
    gCurTask->main = sub_80B524C;
}

void sub_80B51F4(void *arg0) {
    Sprite *temp_r4;

    temp_r4 = arg0 + 0x88;
    memcpy(&subroutine_arg0, &gUnknown_080DC436, 0x10);
    arg0->unk88 = 0;
    temp_r4->oamFlags = 0;
    temp_r4->anim = *((arg0->unk8C7 * 2) + sp);
    temp_r4->variant = 0;
    temp_r4->qAnimDelay = 0;
    temp_r4->prevVariant = 0xFF;
    temp_r4->animSpeed = 0x10;
    temp_r4->palId = 0;
    temp_r4->x = 0;
    temp_r4->y = 0;
    temp_r4->frameFlags = 0x80000;
    UpdateSpriteAnimation(temp_r4);
}

void sub_80B524C(void) {
    s16 temp_r2;
    s16 temp_r2_2;
    s16 temp_r2_3;
    s32 temp_r1;
    u16 temp_r4;
    u8 temp_r0;
    u8 temp_r0_2;
    u8 temp_r0_3;
    u8 temp_r0_4;
    void *temp_r6;

    temp_r4 = gCurTask->data;
    temp_r6 = temp_r4->unk0;
    if (temp_r6->unk8C8 != 0) {

    } else {
        temp_r4->unk8E2 = (u16) (temp_r4->unk8E2 + 8);
        temp_r4->unk8E4 = (u16) ((temp_r4->unk8E4 + 4) & 0x3FF);
        UpdateSpriteAnimation(temp_r4 + 4);
        UpdateSpriteAnimation(temp_r4 + 0x2C);
        UpdateSpriteAnimation(temp_r4 + 0x54);
        UpdateSpriteAnimation(temp_r4 + 0x7C);
        UpdateSpriteAnimation(temp_r4 + 0xA4);
        UpdateSpriteAnimation(temp_r4 + 0xCC);
        UpdateSpriteAnimation(temp_r4 + 0xF4);
        UpdateSpriteAnimation(temp_r4 + 0x11C);
        sub_80B51F4(temp_r6);
        sub_80B5450();
        sub_80B62FC(temp_r6);
        temp_r4->unk8DC = (u16) ((temp_r4->unk8DC + 1) & 1);
        temp_r1 = (s16) temp_r4->unk8DC * 0x1C;
        if ((temp_r4 + temp_r1)->unk60E == 1) {
            sub_80B6370(0, temp_r4 + (temp_r1 + 0x5F4));
        }
        temp_r2 = (s16) temp_r4->unk8DC;
        if ((temp_r4 + ((temp_r2 + 2) * 0x1C))->unk60E == 1) {
            sub_80B6370(1, temp_r4 + ((temp_r2 * 0x1C) + 0x62C));
        }
        temp_r2_2 = (s16) temp_r4->unk8DC;
        if ((temp_r4 + ((temp_r2_2 + 4) * 0x1C))->unk60E == 1) {
            sub_80B6370(2, temp_r4 + ((temp_r2_2 * 0x1C) + 0x664));
        }
        temp_r2_3 = (s16) temp_r4->unk8DC;
        if ((temp_r4 + ((temp_r2_3 + 6) * 0x1C))->unk60E == 1) {
            sub_80B6370(3, temp_r4 + ((temp_r2_3 * 0x1C) + 0x69C));
        }
        temp_r0 = temp_r4->unk75E;
        if (temp_r0 != 0) {
            temp_r4->unk75E = (u8) (temp_r0 - 1);
            sub_80B6464(0U, temp_r4 + 0x744);
        }
        temp_r0_2 = temp_r4->unk77A;
        if (temp_r0_2 != 0) {
            temp_r4->unk77A = (u8) (temp_r0_2 - 1);
            sub_80B6464(0U, temp_r4 + 0x760);
        }
        temp_r0_3 = temp_r4->unk796;
        if (temp_r0_3 != 0) {
            temp_r4->unk796 = (u8) (temp_r0_3 - 1);
            sub_80B6464(0U, temp_r4 + 0x77C);
        }
        temp_r0_4 = temp_r4->unk7B2;
        if (temp_r0_4 != 0) {
            temp_r4->unk7B2 = (u8) (temp_r0_4 - 1);
            sub_80B6464(0U, temp_r4 + 0x798);
        }
    }
    sub_80B59E4();
}

void sub_80B5450(void) {
    void *sp14;
    void *sp18;
    void *sp1C;
    s32 sp20;
    s32 sp24;
    u32 sp28;
    u16 *sp2C;
    s16 *var_r5;
    s16 temp_r1_10;
    s16 temp_r1_11;
    s16 temp_r1_12;
    s16 temp_r1_13;
    s16 temp_r1_14;
    s16 temp_r1_15;
    s16 temp_r1_16;
    s16 temp_r1_2;
    s16 temp_r1_3;
    s16 temp_r1_4;
    s16 temp_r1_5;
    s16 temp_r1_6;
    s16 temp_r1_7;
    s16 temp_r1_8;
    s16 temp_r1_9;
    s16 temp_sb;
    s16 var_r0_2;
    s16 var_r1;
    s32 temp_r0_10;
    s32 temp_r0_11;
    s32 temp_r0_12;
    s32 temp_r0_13;
    s32 temp_r0_14;
    s32 temp_r0_15;
    s32 temp_r0_16;
    s32 temp_r0_17;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 temp_r0_5;
    s32 temp_r0_6;
    s32 temp_r0_7;
    s32 temp_r0_8;
    s32 temp_r0_9;
    s32 temp_r8;
    s32 var_r7;
    s8 temp_r0_2;
    u16 temp_r0;
    u16 temp_r1;
    u16 temp_r2;
    u16 temp_r3;
    u16 temp_r3_2;
    u16 temp_r4;
    u16 temp_r6;
    void *var_r0;
    void *var_r1_2;

    temp_r2 = gCurTask->data;
    sp14 = (void *) temp_r2;
    sp18 = temp_r2->unk0;
    temp_r3 = sp18->unk8->unk6;
    sp1C = (void *) temp_r3;
    temp_r1 = temp_r2->unk8E4;
    sp20 = (s32) (u16) gSineTable[temp_r1];
    sp24 = (s32) (u16) ((s32) ((u16) gSineTable[temp_r1 + 0x100] << 0x10) >> 0x12);
    temp_r0 = temp_r3->unkAC;
    switch (temp_r0) {                              /* switch 1 */
    default:                                        /* switch 1 */
    case 0:                                         /* switch 1 */
    case 1:                                         /* switch 1 */
    case 2:                                         /* switch 1 */
    case 3:                                         /* switch 1 */
    case 4:                                         /* switch 1 */
    case 5:                                         /* switch 1 */
    case 6:                                         /* switch 1 */
    case 17:                                        /* switch 1 */
    case 18:                                        /* switch 1 */
        if (sp1C->unkB4 != 0) {
            return;
        }
        temp_r8 = (sp18 + 0x8B0)->unk2 + ((s32) (0x78 - sp1C->unkA0) >> 2);
        temp_sb = (sp1C + 0x8C)->unk2;
        var_r7 = (0x78 - ((s32) sp1C->unk90 >> 8)) + (0x1E - ((s32) sp18->unkC->unk6->unk54 >> 0xA));
        sp2C = sp1C + 0xAC;
        if (sp1C->unkAC == 5) {
            var_r7 -= 0x14;
        }
        var_r5 = *((sp18->unk8C7 * 4) + &gUnknown_08E2EF8C) + (sp14->unk8DE * 0x10);
        sp28 = 0;
        if (*var_r5 == -1) {
            return;
        }
loop_8:
        if (*(sp14 + 0x7B4 + var_r5->unk0) != 1) {

        } else {
            temp_r3_2 = ((s32) (var_r5->unk8 * (s16) sp20) >> 0x10) + var_r5->unk2;
            temp_r4 = var_r5->unk4;
            temp_r6 = ((s32) (var_r5->unkA * (s16) sp24) >> 0xE) + var_r5->unk6;
            temp_r0_2 = var_r5->unkC;
            if ((u32) (temp_r0_2 + 1) > 0xBU) {

            } else {
                switch (temp_r0_2) {                /* switch 2 */
                case 0:                             /* switch 2 */
                    temp_r1_2 = (s16) temp_r3_2;
                    temp_r0_3 = temp_r8 - 0xA;
                    if ((s32) temp_r1_2 <= temp_r0_3) {

                    } else if ((s32) temp_r1_2 >= (s32) (temp_r0_3 + 0x14)) {

                    } else {
                        temp_r1_3 = (s16) temp_r4;
                        temp_r0_4 = temp_sb - 0xA;
                        if ((s32) temp_r1_3 <= temp_r0_4) {

                        } else if ((s32) temp_r1_3 >= (s32) (temp_r0_4 + 0x12)) {

                        } else {
                            temp_r1_4 = (s16) temp_r6;
                            temp_r0_5 = var_r7 - 0x1A;
                            if ((s32) temp_r1_4 < temp_r0_5) {

                            } else if ((s32) temp_r1_4 > (s32) (temp_r0_5 + 0x3A)) {

                            } else {
                                sub_80B4EEC(sp18, (u16) sp1C->unkB2);
                                var_r1 = var_r5->unk0;
                                var_r0 = sp14 + 0x7B4;
block_39:
                                *(var_r0 + var_r1) = 0xB;
                            }
                        }
                    }
                    break;
                case 1:                             /* switch 2 */
                    temp_r1_5 = (s16) temp_r3_2;
                    temp_r0_6 = temp_r8 - 0xA;
                    if ((s32) temp_r1_5 <= temp_r0_6) {

                    } else if ((s32) temp_r1_5 >= (s32) (temp_r0_6 + 0x14)) {

                    } else {
                        temp_r1_6 = (s16) temp_r4;
                        temp_r0_7 = temp_sb - 0xA;
                        if ((s32) temp_r1_6 <= temp_r0_7) {

                        } else if ((s32) temp_r1_6 >= (s32) (temp_r0_7 + 0x12)) {

                        } else {
                            temp_r1_7 = (s16) temp_r6;
                            temp_r0_8 = var_r7 - 0x1A;
                            if ((s32) temp_r1_7 < temp_r0_8) {

                            } else if ((s32) temp_r1_7 > (s32) (temp_r0_8 + 0x3A)) {

                            } else {
                                sub_80B4EEC(sp18, sp1C->unkB2 * 5);
                                var_r1 = var_r5->unk0;
                                var_r0 = sp14 + 0x7B4;
                                goto block_39;
                            }
                        }
                    }
                    break;
                case 2:                             /* switch 2 */
                    temp_r1_8 = (s16) temp_r3_2;
                    temp_r0_9 = temp_r8 - 5;
                    if ((s32) temp_r1_8 <= temp_r0_9) {

                    } else if ((s32) temp_r1_8 >= (s32) (temp_r0_9 + 0xA)) {

                    } else {
                        temp_r1_9 = (s16) temp_r4;
                        temp_r0_10 = temp_sb - 0xA;
                        if ((s32) temp_r1_9 <= temp_r0_10) {

                        } else if ((s32) temp_r1_9 >= (s32) (temp_r0_10 + 0x12)) {

                        } else {
                            temp_r1_10 = (s16) temp_r6;
                            temp_r0_11 = var_r7 - 0xE;
                            if ((s32) temp_r1_10 < temp_r0_11) {

                            } else if ((s32) temp_r1_10 > (s32) (temp_r0_11 + 0x2A)) {

                            } else {
                                sub_80B4654(sp18, 5U);
                                var_r0_2 = var_r5->unk0;
                                var_r1_2 = sp14 + 0x7B4;
block_85:
                                *(var_r1_2 + var_r0_2) = 0;
                            }
                        }
                    }
                    break;
                case 3:                             /* switch 2 */
                    temp_r1_11 = (s16) temp_r3_2;
                    temp_r0_12 = temp_r8 - 0xA;
                    if ((s32) temp_r1_11 <= temp_r0_12) {

                    } else if ((s32) temp_r1_11 >= (s32) (temp_r0_12 + 0x14)) {

                    } else if ((s32) (s16) temp_r4 >= (s32) (temp_sb + 7)) {

                    } else {
                        temp_r1_12 = (s16) temp_r6;
                        temp_r0_13 = var_r7 - 0x20;
                        if ((s32) temp_r1_12 < temp_r0_13) {

                        } else if ((s32) temp_r1_12 > (s32) (temp_r0_13 + 0x40)) {

                        } else {
                            sub_80B46B0(sp18);
                            var_r0_2 = var_r5->unk0;
                            var_r1_2 = sp14 + 0x7B4;
                            goto block_85;
                        }
                    }
                    break;
                case 4:                             /* switch 2 */
                case 9:                             /* switch 2 */
                    if (*sp2C == 3) {
                        temp_r1_13 = (s16) temp_r3_2;
                        temp_r0_14 = temp_r8 - 5;
                        if ((s32) temp_r1_13 <= temp_r0_14) {

                        } else if ((s32) temp_r1_13 >= (s32) (temp_r0_14 + 0xE)) {

                        } else {
                            temp_r1_14 = (s16) temp_r4;
                            temp_r0_15 = temp_sb - 0xA;
                            if ((s32) temp_r1_14 <= temp_r0_15) {

                            } else if ((s32) temp_r1_14 >= (s32) (temp_r0_15 + 0x12)) {

                            } else {
                                temp_r1_15 = (s16) temp_r6;
                                temp_r0_16 = var_r7 - 6;
                                if ((s32) temp_r1_15 < temp_r0_16) {

                                } else if ((s32) temp_r1_15 > (s32) (temp_r0_16 + 0x2A)) {

                                } else {
                                    sp1C->unk9C = 0xFFFFFC00;
                                    sp1C->unk94 = (s32) (0 - sp1C->unk94);
                                    sub_80B4EEC(sp18, sp1C->unkB2 * 5);
                                    sub_80B6778(sp18, &subroutine_arg0, ((s16) var_r5->unk2 << 0x10) + (var_r5->unk8 * (s16) sp20), (s16) var_r5->unk4 << 0x10, ((s16) var_r5->unk6 << 0xC) + (var_r5->unkA * ((s32) ((u16) gSineTable[sp14->unk8E4 + 0x100] << 0x10) >> 0x14)));
                                    *(sp14 + 0x7B4 + var_r5->unk0) = 0;
                                }
                            }
                        }
                    } else if (((s32) (temp_r3_2 << 0x10) > (s32) ((temp_r8 - 5) << 0x10)) && ((s32) (s16) temp_r3_2 < (s32) (s16) (u16) (temp_r8 + 9))) {
                        temp_r1_16 = (s16) temp_r4;
                        temp_r0_17 = temp_sb - 0xA;
                        if (((s32) temp_r1_16 > temp_r0_17) && ((s32) temp_r1_16 < (s32) (temp_r0_17 + 0x12)) && ((s32) (temp_r6 << 0x10) >= (s32) ((u16) (var_r7 - 6) << 0x10)) && ((s32) (s16) temp_r6 <= (s32) (s16) (u16) (var_r7 + 0x24))) {
                            sub_80B4654(sp18, 5U);
                            var_r0_2 = var_r5->unk0;
                            var_r1_2 = sp14 + 0x7B4;
                            goto block_85;
                        }
                    }
                    break;
                }
            }
        }
        var_r5 += 0x10;
        sp28 = (u32) ((sp28 << 0x18) + 0x01000000) >> 0x18;
        if ((*var_r5 != -1) && ((s32) (s8) sp28 <= 0xF)) {
            goto loop_8;
        }
    case -1:                                        /* switch 1 */
    case 7:                                         /* switch 1 */
    case 8:                                         /* switch 1 */
    case 9:                                         /* switch 1 */
    case 10:                                        /* switch 1 */
    case 11:                                        /* switch 1 */
    case 12:                                        /* switch 1 */
    case 13:                                        /* switch 1 */
    case 14:                                        /* switch 1 */
    case 15:                                        /* switch 1 */
    case 16:                                        /* switch 1 */
    case 19:                                        /* switch 1 */
    case 20:                                        /* switch 1 */
        return;
    }
}

s16 sub_80B5944(u16 arg0, u16 arg1) {
    s16 *var_r1;
    u16 temp_r5;
    u16 var_r3;
    void *temp_r2;

    temp_r2 = *gCurTask->data;
    var_r3 = arg1;
    var_r1 = *((temp_r2->unk8C7 * 4) + &gUnknown_08E2EF8C) + ((s32) (arg1 << 0x10) >> 0xC);
    temp_r5 = temp_r2->unk8->unk6;
    if (*var_r1 != -1) {
loop_2:
        if ((s32) var_r1->unk4 < (s32) (s16) arg0) {
            if (var_r1->unkC == 7) {
                temp_r5->unkAC = 0xE;
                temp_r5->unk90 = (s32) temp_r2->unkC->unk6->unk54;
            }
            if (var_r1->unkC == 6) {
                temp_r5->unkAC = 9;
            }
            var_r3 = (u16) ((u32) ((var_r3 << 0x10) + 0x10000) >> 0x10);
            var_r1 += 0x10;
            if (*var_r1 != -1) {
                goto loop_2;
            }
        }
    }
    return (s16) var_r3;
}

void sub_80B59E4(void) {
    ? (*sp190)(s16, s16 *);
    s16 *var_r5;
    s16 *var_r5_2;
    s16 temp_r0_2;
    s16 temp_r4_3;
    s16 var_r1_2;
    s32 temp_r6;
    s32 temp_sb;
    u16 temp_r4;
    u16 temp_r4_2;
    u16 temp_r7;
    u16 temp_r8;
    u32 temp_r0;
    u32 var_r1;
    void *temp_r1;

    temp_r7 = gCurTask->data;
    temp_r1 = temp_r7->unk0;
    temp_r8 = temp_r1->unk8->unk6;
    temp_r4 = temp_r1->unkC->unk6;
    temp_sb = *((temp_r1->unk8C7 * 4) + &gUnknown_08E2EF8C);
    memcpy(&sp190, &gUnknown_080DC448, 0x6C);
    temp_r6 = 0x1E - ((s32) temp_r4->unk54 >> 0xA);
    var_r1 = 0;
    var_r5 = &subroutine_arg0;
    do {
        *var_r5 = 0;
        temp_r0 = (var_r1 << 0x10) + 0x10000;
        var_r5 += 0x14;
        var_r1 = temp_r0 >> 0x10;
    } while ((s32) ((s32) temp_r0 >> 0x10) <= 0x13);
    temp_r7->unk8DE = sub_80B5944((u16) (temp_r8 + 0x8C)->unk2, (u16) temp_r7->unk8DE);
    var_r1_2 = 0;
    var_r5_2 = &subroutine_arg0;
    temp_r0_2 = sub_80B5AD4(sub_80B65FC(0 >> 0x10, &subroutine_arg0, temp_r6), (temp_r7->unk8DE * 0x10) + temp_sb, &subroutine_arg0, temp_r6);
    if ((s32) temp_r0_2 > 0) {
        do {
            temp_r4_3 = var_r1_2;
            (&sp190)[*var_r5_2](temp_r4_3, var_r5_2);
            temp_r4_2 = temp_r4_3 + 1;
            var_r5_2 += 0x14;
            var_r1_2 = (s16) temp_r4_2;
        } while ((s32) (s16) temp_r4_2 < (s32) temp_r0_2);
    }
}

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
