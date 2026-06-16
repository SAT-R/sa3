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
#include "constants/songs.h"

/* TODO: WarpToMap needs to be declared like this for the call in Task_80B7470() to match to match:
 * 'void WarpToMap(s32 level, s16 warpId);'
 * but level is s16 in the implementation and most other calls... */
extern void WarpToMap(s32 level, s16 warpId);
// declare sub_8001E58() here because of the WarpToMap issue
bool32 sub_8001E58(void);

void sub_80B6774(void) { }

void sub_80B6778(UnkArg2 *arg0, s32 *arg1)
{
    s16 var_r4;
    u8 temp_r3;
    Arg2Task4 *strc = TASK_DATA(arg0->task4);

    Arg2Task4_x744 *var_r2 = &strc->unk744[0];

    for (var_r4 = 0; var_r4 < (s32)ARRAY_COUNT(strc->unk744); var_r4++, var_r2++) {
        if (var_r2->unk1A == 0) {
            var_r2->unk0 = arg1[0];
            var_r2->unk4 = arg1[1];
            var_r2->unk8 = arg1[2];
            var_r2->unkC = 0;
            var_r2->unk10 = 0;
            var_r2->unk14 = 0;
            var_r2->unk18 = 0;
            var_r2->unk1B = 0;
            var_r2->unk1A = 4;
            break;
        }
    }
}

// (58.02%) https://decomp.me/scratch/JZSdj
NONMATCH("asm/non_matching/game/sa3/spstg__sub_80B67C4.inc", s32 sub_80B67C4(UnkArg0 *arg0, UnkArg1 *arg1, UnkArg2 *arg2, s32 arg3))
{
    s32 sp0;
    Arg2Task0 *sp4;
    s32 sp8;
    s32 temp_r1_4;
    s16 temp_r2_2;
    s16 temp_r5_2;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 temp_r2;
    s32 temp_r3;
    s32 temp_r3_2;
    s32 temp_r4;
    s32 temp_r5;
    s32 temp_r5_3;
    s32 temp_r7;
    s32 var_r1;
    s32 var_r1_2;
    u16 var_r0;
    s16 var_r5;
    s16 var_r6;
    Arg2TaskC *taskC;

    sp0 = arg3;
    sp4 = TASK_DATA(arg2->task0);
    taskC = TASK_DATA(arg2->taskC);
    temp_r1 = (-arg2->unk8BC) & 0x3FF;
    temp_r2 = SIN(temp_r1) * 4;
    temp_r5 = COS_24_8(temp_r1);
    temp_r4 = (taskC->unk4C - arg1->unk0) >> 8;
    temp_r3 = (arg2->unk8B4 - arg1->unk4) >> 8;
    temp_r1_2 = ((temp_r3 * (temp_r2 >> 8)) + (temp_r4 * temp_r5)) >> 2;
    temp_r3_2 = ((temp_r4 * I(-temp_r2)) + (temp_r3 * temp_r5)) >> 1;

    if ((temp_r3_2 > arg2->unk5AC) && (temp_r3_2 < arg2->unkB0[arg2->unk8DF].y)) {
        var_r5 = arg2->unk8E0;
        var_r6 = arg2->unk8E1;
        while (var_r5 != 0) {
            if (var_r6 > 0x9F) {
                var_r6 = (u8)(u16)(var_r6 - (var_r5 >> 1));
                var_r5 >>= 1;
            } else if (var_r6 < arg2->unk8DF) {
                var_r6 = var_r6 - (var_r5 >> 1);
                var_r5 >>= 1;
            } else if (arg2->unkB0[var_r6].y > temp_r3_2) {
                var_r6 = var_r6 - (var_r5 >> 1);
                var_r5 >>= 1;
            } else if (arg2->unkB0[var_r6].y < temp_r3_2) {
                var_r6 = var_r6 - (var_r5 >> 1);
                var_r5 >>= 1;
            }
        }
        temp_r1_3 = arg2->unkB0[var_r6].x >> 1;
        temp_r7 = (temp_r1_3 * 9) >> 3;
        sp8 = var_r6 << 0x10;
        if ((temp_r1_2 > (((0 - temp_r1_3) * 9) >> 3)) && (temp_r1_2 < temp_r7)) {
            arg0->unkA = (s16)var_r6;
            temp_r5_3 = var_r6 * 4;
            arg0->unk4 = (s16)(((var_r6 - arg1->unkE) - ((arg1->unk12 << 0x10) / sp4->unkC[var_r6])) + sp0);
            temp_r1_4 = 0x78 - ((temp_r1_2 * 0x87) / temp_r7);
            arg0->unk8 = temp_r1_4;
            arg0->unk2 = (s16)(temp_r1_4 - arg1->unkC);

            if (arg1->unk8 != 0) {
                arg0->unk6 = ((((arg1->unk8 * 8) / sp4->unkC[var_r6]) * 9) >> 2);
            } else {
                arg0->unk6 = arg1->unk8;
            }
            temp_r0_3 = *((sp8 >> 0xE) + sp4->unkC) >> 8;
            arg0->unkC = (s16)temp_r0_3;
            arg0->unk12 = (s16)temp_r0_3;
            arg0->unk10 = 0;
            arg0->unkE = 0;
            return 1;
        }
    }
block_15:
    return 0;
}
END_NONMATCH

void sub_8E8_80B69B4(Sprite *s)
{
    s32 x;
    s32 y;
    OamData *temp_r0;
    const SpriteOffset *sprDims;
    const u16 *temp_r7;
    u32 temp_r2;
    u32 width, height;
    s16 var_r6;
    s16 numSubFrames;

    if ((s->frameNum >> 0x1C) == 0) {
        sprDims = &gRefSpriteTables->dimensions[s->anim][s->frameNum];
    } else {
        sprDims = (const SpriteOffset *)(((u8 *)gRefSpriteTables->dimensions[s->anim]) + s->frameNum * 16);
    }
    s->numSubFrames = sprDims->numSubframes;
    width = sprDims->width;
    height = sprDims->height;
    x = s->x - (width >> 1);
    y = s->y - (height >> 1);

    numSubFrames = sprDims->numSubframes;
    for (var_r6 = 0; var_r6 < numSubFrames; var_r6++) {
        temp_r7 = gRefSpriteTables->oamData[s->anim];
        temp_r0 = OamMalloc(GET_SPRITE_OAM_ORDER(s));
        if (temp_r0 == iwram_end) {
            break;
        }

        if (var_r6 == 0) {
            s->oamBaseIndex = gOamFreeIndex - 1;
        }
        DmaCopy16(3, (void *)(temp_r7 + ((sprDims->oamIndex + var_r6) * 3)), temp_r0, sizeof(OamDataShort));
        temp_r2 = temp_r0->all.attr1 & 0x1FF;
        temp_r0->all.attr0 = (y + (temp_r0->all.attr0 & 0xFF)) & 0xFF;
        temp_r0->all.attr0 |= 0x300;
        temp_r0->all.attr1 &= 0xFE00;
        temp_r0->all.attr1 |= (s->frameFlags & 0x1F) << 9;
        temp_r0->all.attr1 |= (x + temp_r2) & 0x1FF;
        temp_r0->all.attr2 += s->palId << 0xC;
        temp_r0->all.attr2 |= (s->frameFlags & 0x3000) >> 2;
        temp_r0->all.attr2 += ((u32) (s->tiles + 0xF9FF0000)) >> 5;
    }
}

void sub_80B6B20(void)
{
    gUnknown_03001EA0 = (u8 *)(OBJ_VRAM0);
    gUnknown_03001E9C = NULL;
}

void sub_80B6B3C(Background *bg, s32 arg1, s32 arg2, u16 arg3, u16 arg4, u16 arg5, u8 arg6, u8 arg7, u16 arg8, u16 arg9)
{
    bg->graphics.dest = (void *)BG_CHAR_ADDR(arg1);
    bg->graphics.anim = 0;
    bg->layoutVram = ((void *)BG_VRAM + (arg2 << 11));
    bg->unk18 = 0;
    bg->unk1A = 0;
    bg->tilemapId = arg3;
    bg->unk1E = 0;
    bg->unk20 = 0;
    bg->unk22 = 0;
    bg->unk24 = 0;
    bg->targetTilesX = arg4;
    bg->targetTilesY = arg5;
    bg->paletteOffset = arg6;
    bg->animFrameCounter = 0;
    bg->animDelayCounter = 0;
    bg->flags = arg7;
    bg->scrollX = arg8;
    bg->scrollY = arg9;
    DrawBackground(bg);
}

void sub_80B6BB8(Sprite *inSprite, s8 arg1, s32 tileCount, AnimId anim, u32 frameFlags, s16 x, s16 y, s16 oamOrder, u8 pattern, u8 palId)
{
    Sprite sprDummy;
    Sprite *s;
    u8 *var_r0;

    if (inSprite != NULL) {
        s = inSprite;
    } else {
        s = &sprDummy;
    }

    if (arg1 != 0) {
        if (gUnknown_03001E9C == NULL) {
            gUnknown_03001E9C = gUnknown_03001EA0;
        }
        var_r0 = gUnknown_03001E9C;
    } else {
        var_r0 = gUnknown_03001EA0;
    }

    s->tiles = var_r0;
    s->anim = anim;
    s->frameFlags = frameFlags;
    s->x = x;
    s->y = y;
    s->oamFlags = SPRITE_OAM_ORDER(oamOrder);
    s->qAnimDelay = 0;
    s->prevAnim = -1;
    s->variant = pattern;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = palId;
    s->hitboxes[0].index = -1;
    UpdateSpriteAnimation(s);

    switch (arg1) {
        case 0:
            gUnknown_03001EA0 += tileCount * TILE_SIZE_4BPP;
            gUnknown_03001E9C = NULL;
            return;
        case 1:
            gUnknown_03001E9C += tileCount * TILE_SIZE_4BPP;
            return;
    }
}

s16 sub_80B6CA4(u16 *arg0)
{
    s16 var_r3;

    var_r3 = 0;
    while (arg0[0] != (u16)-1) {
        if ((s32)var_r3 < arg0[2]) {
            var_r3 = (s16)arg0[2];
        }

        arg0 += 4;
    }

    return var_r3;
}

void sub_80B6CD8(u8 arg0, u8 arg1, u8 arg2, u8 arg3)
{
    SpStage288 *temp_r1 = TASK_DATA(TaskCreate(Task_80B6D78, sizeof(SpStage288), 0x2000U, 0U, TaskDestructor_SpStage288));
    temp_r1->unk27D = arg2;
    temp_r1->unk27C = arg1;
    temp_r1->unk27E = (arg0 == 0) ? 0 : 1;
    temp_r1->unk280 = 0;
    temp_r1->unk284 = 0;
    temp_r1->unk281 = 0x10;
    temp_r1->unk27F = arg3;

    if (temp_r1->unk27E != 0) {
        temp_r1->unk27F = (u8)((1 << arg1) | arg3);
    } else {
        temp_r1->unk284 = 0x8000;
    }
}

// (98.29%) https://decomp.me/scratch/llTC6
NONMATCH("asm/non_matching/game/sa3/spstg__Task_80B6D78.inc", void Task_80B6D78(void))
{
    s32 sp18;
    Sprite *s;
    s16 var_r5;
    u8 var_r4;
    u8 var_r6;
    TileInfo2 *temp_r1;
    TileInfo2 *temp_r1_2;

    SpStage288 *strc288 = TASK_DATA(gCurTask);

    gDispCnt = 0x1240;
    gBgCntRegs[1] = 0x703;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    sub_80B6B3C(&strc288->bgC, 0, 7, 0x1ABU, 0x1E, 0x14, 0, 1, 0, 0);
    gBldRegs.bldY = 0;
    gBldRegs.bldCnt = 0;
    gBldRegs.bldAlpha = 0;
    gUnknown_03001EA0 = (void *)OBJ_VRAM0;
    gUnknown_03001E9C = NULL;

    if (gStageData.unkD == 0) {
        if (strc288->unk27E != 0) {
            s = &strc288->sprite4C;
            temp_r1 = &gUnknown_080E3074[strc288->unk27D];
            sub_80B6BB8(s, 1, temp_r1->numTiles, temp_r1->anim, 0, 0x104, 0x14, 0, gUnknown_080E3074[strc288->unk27D].variant, 0);
            sub_80B6BB8(&strc288->sprite74, 1, 0x28U, 0x46DU, 0, 0x14A, 0x1C, 0, 1U, 0);
            m4aSongNumStart(MUS_SPECIAL_STAGE_RESULT_1);
        } else {
            sub_80B6BB8(&strc288->sprite9C, 1, 0x20U, 0x46DU, 0, 0x42, 0x1C, 0, 0, 0);
            m4aSongNumStart(MUS_SPECIAL_STAGE_RESULT_2);
        }
    } else {
        var_r6 = 0;
        sp18 = 0;
        var_r5 = 0;

        for (var_r4 = 0; var_r4 < 7; var_r4++) {
            if (GetBit(strc288->unk27F, var_r4)) {
                var_r6 += 1;
            }
        }

        if (var_r6 > 1U) {
            sp18 = 1;
        }
        if (strc288->unk27E == 0) {
            var_r5 = -16;
        }
        var_r5 += 28;
        sub_80B6BB8(&strc288->sprite74, 1, 8U, ANIM_SP_STAGE_DISCLAIMERS, 0, 0x1C, var_r5, 0, 8U, 0);
        sub_80B6BB8(&strc288->spriteC4, 1, 6U, ANIM_SP_STAGE_DISCLAIMERS, 0, 0x40, var_r5, 0, var_r6, 0);
        sub_80B6BB8(&strc288->sprite4C, 1, 12, ANIM_SP_STAGE_DISCLAIMERS, 0, 0x58, var_r5, 0, 9U, 0);
        sub_80B6BB8(&strc288->sprite9C, 1, 22, ANIM_SP_STAGE_DISCLAIMERS, 0, 0x8C, var_r5, 0, sp18 + 10, 0);

        if (strc288->unk27E != 0) {
            m4aSongNumStart(MUS_SPECIAL_STAGE_RESULT_1);
        } else {
            sub_80B6BB8(&strc288->spriteEC, 1, 0x14U, ANIM_SP_STAGE_DISCLAIMERS, 0, 0x24, 0x8C, 0, 0xCU, 0);
            sub_80B6BB8(&strc288->sprite114, 1, 8U, ANIM_SP_STAGE_DISCLAIMERS, 0, 0xAC, 0x8C, 0, 0xEU, 0);
            strc288->unk282 = 0;
            m4aSongNumStart(MUS_SPECIAL_STAGE_RESULT_2);
        }
    }

    for (var_r4 = 0; var_r4 < 8; var_r4++) {
        Sprite *s = &strc288->sprites13C[var_r4];
        temp_r1_2 = gUnknown_080E309C;
        temp_r1_2 += var_r4;
        sub_80B6BB8(s, 1, temp_r1_2->numTiles, temp_r1_2->anim, 0, 0, 0, 0, temp_r1_2->variant, 0);
    }

    gCurTask->main = Task_80B7314;
}
END_NONMATCH

// (94.71%) https://decomp.me/scratch/z7ukN
NONMATCH("asm/non_matching/game/sa3/spstg__sub_80B7074.inc", void sub_80B7074(void))
{
    s16 sp00[12];
    s16 sp18[12];
    s16 sp30;
    u16 sp34;
    Sprite *s;
    s16 temp_r5;
    s32 temp_r1;
    s32 temp_r2;
    s16 var_r5;
    s16 temp_r2_2;
    u16 temp_r4;
    s32 temp_r4_2;
    u8 var_r4;
    s16 res2;
    u8 var_r6;
    SpStage288 *strc288 = TASK_DATA(gCurTask);

    memcpy(&sp00, gUnknown_080E30DC, 0x18);
    memcpy(&sp18, gUnknown_080E30F4, 0x18);
    var_r5 = 0;
    if (gStageData.unkD == 0) {
        if (strc288->unk27E != 0) {
            DisplaySprite(&strc288->sprite4C);
            DisplaySprite(&strc288->sprite74);
        } else {
            DisplaySprite(&strc288->sprite9C);
        }
    } else {
        DisplaySprite(&strc288->sprite74);
        DisplaySprite(&strc288->sprite4C);
        DisplaySprite(&strc288->sprite9C);
        DisplaySprite(&strc288->spriteC4);
        if (strc288->unk27E == 0) {
            s = &strc288->spriteEC;
            s->variant = (1 & strc288->unk282) + 0xC;
            UpdateSpriteAnimation(s);
            DisplaySprite(s);
            s = &strc288->sprite114;
            s->variant = ((strc288->unk282 ^ 1) & 1) + 0xE;
            UpdateSpriteAnimation(s);
            DisplaySprite(s);
            var_r5 = -16;
        }
    }
    if (strc288->unk27E == 0) {
        strc288->unk284 = 0x8000 | (u16)strc288->unk284;
    }

    if ((s32)strc288->unk284 >= 0) {
        sp34 = strc288->unk284;
    } else {
        sp34 = 0x8000;
    }
    temp_r4 = (u16)strc288->unk284;
    sp30 = (u16)((s32)(temp_r4 * 10) / 84);
    temp_r4 >>= 5;

    for (var_r6 = 0; var_r6 < 7; var_r6++) {
        temp_r5 = (s16)sp30 + (0x92 * var_r6);
        for (var_r4 = 0; var_r4 < 7; var_r4++) {
            sp00[var_r4] = (s16)((s32)(SIN((temp_r5 + (var_r4 * 0x92)) & ONE_CYCLE) * (7 - var_r4)) >> 9);
            sp18[var_r4] = (s16)((s32)(COS((temp_r5 + (var_r4 * 0x46)) & ONE_CYCLE) * (7 - var_r4)) >> 9);
        }

        temp_r4_2 = (u16)sa3__sub_80B1560(sp00, (u16)sp34);
        res2 = sa3__sub_80B1560((s16 *)&sp18, (u16)sp34);
        temp_r4_2 <<= 16;
        temp_r2 = ((var_r6 * 0x91) + (s16)temp_r4) & 0x3FF;
        {
            s32 sinValue = ((SIN(temp_r2) * 5) >> 11);
            temp_r4_2 += 0x6C0000;
            temp_r4_2 >>= 16;
            temp_r4_2 = (u16)(temp_r4_2 + sinValue);
            temp_r2_2 = (((res2 + 0x5D) - ((s32)(COS(temp_r2) * 5) >> 0xB)) + var_r5);
        }
        if (GetBit(strc288->unk27F, var_r6)) {
            s = &strc288->sprites13C[var_r6];
        } else {
            s = &strc288->sprite254;
        }
        s->x = temp_r4_2;
        s->y = temp_r2_2;
        DisplaySprite(s);
    }
}
END_NONMATCH

void Task_80B7314(void)
{
    s32 var_r0;
    u16 *temp_r1;
    u8 temp_r0;
    SpStage288 *strc288;

    strc288 = TASK_DATA(gCurTask);
    if (gStageData.unkD == 0) {
        if (strc288->unk281 > 0) {
            strc288->unk281--;
            if (strc288->unk27E != 0) {
                strc288->sprite4C.x -= 0x10;
                strc288->sprite74.x -= 0x10;
            } else {
                strc288->sprite9C.x -= 0x10;
            }
        }
    }

    strc288->unk284 += 0x80;
    sub_80B7074();

    if (strc288->unk284 < 0) {
        gCurTask->main = sub_80B73A4;
    }
}

void sub_80B73A4(void)
{
    s16 var_r0;
    u8 temp_r1;
    SpStage288 *strc288;
    ScreenFade *fade;

    strc288 = TASK_DATA(gCurTask);
    fade = &strc288->fade0;
    strc288->unk284 = (u16)(strc288->unk284 + 0x80);
    sub_80B7074();

    if ((gStageData.unkD == 0) || ((0x7F & strc288->unk27F) == 0x7F)) {
        if (strc288->unk280++ > 120) {
            fade->window = 1;
            fade->flags = 1;
            fade->brightness = 0;
            fade->speed = Q(0.25);
            fade->bldAlpha = 0;
            fade->bldCnt = 0xBF;
            gCurTask->main = Task_80B75A0;
        }
    } else {
        if (A_BUTTON & gPressedKeys) {
            m4aSongNumStart(SE_SELECT);
            fade->window = 1;
            fade->flags = 1;
            fade->brightness = 0;
            fade->speed = Q(1);
            fade->bldAlpha = 0;
            fade->bldCnt = 0xBF;
            gCurTask->main = Task_80B75A0;
        } else if (DPAD_SIDEWAYS & gPressedKeys) {
            strc288->unk282 ^= 1;
            m4aSongNumStart(SE_DPAD_SELECT);
        }
    }
}

void Task_80B7470(void)
{
    SpStage288 *temp_r4 = TASK_DATA(gCurTask);
    s32 var_r5 = 0;

    if (gStageData.unkD == 0) {
        if (temp_r4->unk27E != 0) {
            if (((0x7F & temp_r4->unk27F) == 0x7F) && !(4 & LOADED_SAVE->unlockFlags)) {
                var_r5 = 1;
                LOADED_SAVE->unlockFlags |= 4;
            }
            LOADED_SAVE->collectedEmeralds = temp_r4->unk27F;
            sub_8001E58();
        }

        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();

        if (var_r5 != 0) {
            sub_80AB120(0);
        } else {
            s16 zone = gStageData.zone;
            WarpToMap(LEVEL_INDEX(zone, 2), 4);
        }
    } else {
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();

        if ((temp_r4->unk282 != 0) || (temp_r4->unk27E != 0)) {
            sub_808ADF0(1);
        } else {
            sub_80B1AF4(0U, 0U, 0U);
        }
    }
}

void TaskDestructor_SpStage288(Task *t) { }

void Task_80B75A0(void)
{
    SpStage288 *strc288 = TASK_DATA(gCurTask);
    strc288->unk284 += 0x80;
    sub_80B7074();

    if (UpdateScreenFade(&strc288->fade0) == SCREEN_FADE_COMPLETE) {
        gCurTask->main = Task_80B7470;
    }
}
