#include "global.h"
#include "core.h"
#include "color.h"
#include "trig.h"
#include "flags.h"
#include "malloc_vram.h"
#include "malloc_ewram.h"
#include "module_unclear.h"
#include "lib/m4a/m4a.h"
#include "game/code_1_3.h"
#include "game/screen_fade.h"
#include "game/shared/stage/player_callbacks.h"
#include "game/save.h"
#include "game/stage.h"
#include "constants/animations.h"
#include "constants/songs.h"

/* TODO: Merge with code_1_4 */

void TaskDestructor_805332C(Task *t);
void Task_2A4_8054EB8(void);
void sub_8055614(Strc_2A4_8053284 *strc);
void Task_10_8055DA8(void);
void Task_220_805374C(void);
void Task_220_8053B28(void);
void Task_220_8053BAC(void);
void Task_220_8053C70(void);
void Task_220_8053DEC(void);
void sub_8054514(void);

extern s16 sub_802610C(void);
extern void sub_802613C(void);
extern ColorRaw sub_80C4C0C(ColorRaw color);

extern u16 gUnknown_080D1C48[][4][2];

void sub_8053128(s16 arg0, s16 arg1)
{
    Strc_220_sub_8053128 *strc220;
    ScreenFade *fade;

    strc220 = TASK_DATA(TaskCreate(Task_220_8053904, sizeof(Strc_220_sub_8053128), 0x100U, 0U, NULL));

    if (arg0 == 1) {
        strc220->unk21C = 1;
    } else if (arg1 == 1) {
        strc220->unk21C = 2;
    } else {
        strc220->unk21C = 0;
    }

    sub_8053440(strc220);
    sub_80534DC(strc220, arg0, arg1);
    sub_805365C(strc220);

    strc220->unk164 = 0;
    strc220->unk166 = 0x8C;
    strc220->unk168 = 0;
    strc220->unk16A = 0;
    strc220->unk16C = 0;
    strc220->unk16E = 0;
    strc220->unk170 = 0x30;
    strc220->unk172 = 0x10;
    strc220->unk174 = 0xFFF0;
    strc220->unk176 = 0;
    strc220->unk178 = 0;
    strc220->unk17A = arg0;
    strc220->unk17B = arg1;

    strc220->fade.window = 0;
    strc220->fade.flags = 2;
    strc220->fade.brightness = 0;
    strc220->fade.speed = Q(0.5);
    strc220->fade.bldCnt = 0xBF;
    strc220->fade.bldAlpha = 0;
    ScreenFadeUpdateValues(&strc220->fade);

    if (gStageData.levelTimer <= gMedalTimes[gStageData.currentLevel][0]) {
        m4aSongNumStart(MUS_BOSS_CLEAR_GOLD);
    } else {
        m4aSongNumStart(MUS_BOSS_CLEAR);
    }
}

void sub_8053284(s32 unused0, s32 unused1, s32 unused2, s32 unused3)
{
    Strc_2A4_8053284 *strc = TASK_DATA(TaskCreate(Task_2A4_8054EB8, sizeof(Strc_2A4_8053284), 0x100U, 0U, TaskDestructor_805332C));
    strc->unk290 = 0;
    strc->unk292 = 300;
    strc->unk294 = 80;
    strc->someX = DISPLAY_WIDTH;
    strc->fade.window = 1;
    strc->fade.flags = 1;
    strc->fade.brightness = 0;
    strc->fade.speed = Q(4);
    strc->fade.bldCnt = 0xBF;
    strc->fade.bldAlpha = 0;
    gBgPalette[0] = sub_80C4C0C(0x7FFF);
    gFlags |= FLAGS_UPDATE_BACKGROUND_PALETTES;
    sub_8055614(strc);
    gStageData.unk85 = 1;
}

void TaskDestructor_805332C(Task *t)
{
    s16 var_r0;

    Strc_2A4_8053284 *strc2A4 = TASK_DATA(t);

    for (var_r0 = 0; var_r0 < 3; var_r0++) {
        VramFree(strc2A4->spritesC[var_r0].tiles);
    }

    for (var_r0 = 0; var_r0 < 2; var_r0++) {
        VramFree(strc2A4->sprites84[var_r0].tiles);
    }
    VramFree(strc2A4->spriteD4.tiles);

    for (var_r0 = 0; var_r0 < 7; var_r0++) {
        VramFree(strc2A4->spritesFC[var_r0].tiles);
    }

    VramFree(strc2A4->sprite214.tiles);
    VramFree(strc2A4->sprite23C.tiles);

    if (gStageData.gameMode == GAME_MODE_TIME_ATTACK || gStageData.gameMode == GAME_MODE_BOSS_TIME_ATTACK) {
        VramFree(strc2A4->sprite264.tiles);
    }
}

void sub_80533F4(u16 character)
{
    Strc_10_8055DA8 *temp_r0 = TASK_DATA(TaskCreate(Task_10_8055DA8, sizeof(Strc_10_8055DA8), 0x100U, 0U, NULL));
    temp_r0->character = character;
    temp_r0->unkE = 0;
    temp_r0->fade.window = 0;
    temp_r0->fade.flags = 1;
    temp_r0->fade.brightness = 0;
    temp_r0->fade.speed = Q(4);
    temp_r0->fade.bldCnt = 0xBF;
    temp_r0->fade.bldAlpha = 0;
}

void sub_8053440(Strc_220_sub_8053128 *strc220)
{
    Background *bg = &strc220->bg110;

    gDispCnt = 0x42;
    gBgCntRegs[1] = 0xF06;
    gBgCntRegs[2] = 0x6381;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgScrollRegs[1][0] = 0x10;
    gBgScrollRegs[1][1] = 0x74;
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;
    gBgScrollRegs[3][0] = 0;
    gBgScrollRegs[3][1] = 0;

    bg->graphics.dest = (void *)BG_VRAM;
    bg->graphics.anim = 0;
    bg->layoutVram = (u16 *)(BG_VRAM + 0x1800);
    bg->unk18 = 0;
    bg->unk1A = 0;
    bg->tilemapId = 422;
    bg->unk1E = 0;
    bg->unk20 = 0;
    bg->unk22 = 0;
    bg->unk24 = 0;
    bg->targetTilesX = 32;
    bg->targetTilesY = 32;
    bg->paletteOffset = 0;
    bg->animFrameCounter = 0;
    bg->animDelayCounter = 0;
    bg->flags = 6;
    bg->scrollX = 0;
    bg->scrollY = 0;
    DrawBackground(bg);
}

void sub_80534DC(Strc_220_sub_8053128 *strc220, s16 arg1, s16 arg2)
{
    s16 var_r1;
    s32 temp_r2;
    u32 temp_r4;
    void *temp_r5;
    Sprite *s = &strc220->sprite0;
    SpriteTransform *tf = &strc220->tf[0];

    s->tiles = (u8 *)OBJ_VRAM0;
    s->frameFlags = 0x1000;
    s->frameFlags |= 0x20;
    s->anim = gUnknown_080D1C48[arg1][0][0];
    s->x = 66;
    s->y = 140;
    s->oamFlags = 0x400;
    s->qAnimDelay = 0;
    s->prevAnim = -1;
    s->variant = gUnknown_080D1C48[arg1][0][1];
    s->prevVariant = 0xFF;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
#ifndef BUG_FIX
    // NOTE: strc220->sprite0 only has 1 hitbox...
    //       Technically this doesn't matter, since it's overwritten below,
    //       But it is important to highlight, in case code gets edited.
    s->hitboxes[1].index = -1;
#endif
    tf->rotation = 0;
    tf->qScaleX = -Q(0.25);
    tf->qScaleY = +Q(0.25);
    tf->x = s->x;
    tf->y = s->y;

    s = (Sprite *)&strc220->sprite28;
    tf = &strc220->tf[1];
    s->tiles = (u8 *)(OBJ_VRAM0 + 0x800);
    s->frameFlags = 0x1000;
    s->frameFlags |= 0x21;
    s->anim = gUnknown_080D1C48[arg2][0][0];
    s->x = 48;
    s->y = 140;
    s->oamFlags = 0x440;
    s->qAnimDelay = 0;
    s->prevAnim = -1;
    s->variant = gUnknown_080D1C48[arg2][0][1];
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 1;
    s->hitboxes[0].index = -1;
    s->hitboxes[1].index = -1;
    tf->rotation = 0;
    tf->qScaleX = -Q(0.125);
    tf->qScaleY = +Q(0.125);
    tf->x = s->x;
    tf->y = s->y;

    if (strc220->unk21C != 0) {
        s = &strc220->spriteE8;
        s->tiles = (u8 *)OBJ_VRAM1;
        s->frameFlags = 0x1000;
        s->frameFlags |= (strc220->unk21C - 1) | 0x20;
        s->anim = gUnknown_080D1C48[5][0][0];
        if (strc220->unk21C != 1) {
            var_r1 = 0x30;
        } else {
            var_r1 = 0x42;
        }
        s->x = var_r1;
        s->y = 140;
        s->oamFlags = 0x400;
        s->qAnimDelay = 0;
        s->prevAnim = -1;
        s->variant = gUnknown_080D1C48[5][0][1];
        s->prevVariant = -1;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->hitboxes[0].index = -1;
        s->hitboxes[1].index = -1;
    }
}

void sub_805365C(Strc_220_sub_8053128 *strc220)
{
    s16 temp_r4_2;
    s16 var_r5;
    u16 temp_r4;
    u32 temp_r0_2;
    void *temp_r0;
    void *var_r4;
    DmaIoData sp00 = { 0x100, 0, 0, 0x100, 0, 0, 0, 0 };
    const s32 countA = 160;
    const s32 countB = 256;

    strc220->data15C = EwramMalloc(countA * sizeof(sp00));

    var_r4 = strc220->data15C;
    for (var_r5 = 0; var_r5 < countA; var_r5++, var_r4 += sizeof(DmaIoData)) {
        CpuCopy16(&sp00, var_r4, sizeof(sp00));
    }

    strc220->data160 = EwramMalloc(countB * sizeof(u32));
    for (var_r5 = 0; var_r5 < countB; var_r5++) {
        strc220->data160[var_r5] = 0x100000 / (0x400 + (var_r5 * 0x10));
    }
}

void sub_80536F0(Strc_220_sub_8053128 *strc220)
{
    Sprite *var_r2 = &strc220->sprites17C[0];
    s16 i;
#ifdef BUG_FIX
    const u8 offsets[] = { 0, 0, 0, 12 * TILE_SIZE_4BPP };
    u8 *tiles = VramMalloc(16);
#endif

    for (i = 0; i < 4; i++, var_r2++) {
#ifndef BUG_FIX
        var_r2->tiles = NULL;
#else
        // NOTE(Jace): I know this is a debug graphic
        //             but not assigning it a VRAM pointer is weird...
        var_r2->tiles = tiles + offsets[i];
#endif
        var_r2->frameFlags |= 0x80000;
        var_r2->anim = ANIM_DEBUG_CONV_TEXT;
        var_r2->x = 0;
        var_r2->y = 0;
        var_r2->oamFlags = 0;
        var_r2->qAnimDelay = 0;
        var_r2->prevAnim = -1;
        var_r2->variant = i;
        var_r2->prevVariant = -1;
        var_r2->animSpeed = 0x10;
        var_r2->palId = 0;
        var_r2->hitboxes[0].index = -1;
#ifndef BUG_FIX
        // Only has 1 hitbox (not even, actually...)
        var_r2->hitboxes[1].index = -1;
#endif
    }
}

// TODO: Fake-match
void Task_220_805374C(void)
{
#ifndef NON_MATCHING
    register DmaIoData *ioData asm("r5");
#else
    DmaIoData *ioData;
#endif
    s16 line;
    s16 diff;
    u16 var_r4;

    Strc_220_sub_8053128 *strc = TASK_DATA(gCurTask);

    gHBlankCopySize = 0x10;
    gHBlankCopyTarget = (void *)&REG_BG2PA;

    gBgOffsetsHBlankPrimary = ioData = strc->data15C;
    gFlags |= 4;
    strc->unk168 += strc->unk16E;
    strc->unk168 &= 0xFFF;
    strc->unk16A += strc->unk170;
    strc->unk16A &= 0x7FF;
    strc->unk176 += strc->unk172;
    strc->unk178 += strc->unk174;
    gBgScrollRegs[0][0] = (strc->unk176 >> 4) & 0xFF;
    gBgScrollRegs[0][1] = (strc->unk178 >> 4) & 0xFF;

    for (line = 0; line < 160; line++, ioData++) {
        diff = ABS(line - strc->unk166);

        var_r4 = (strc->data160[diff] * diff * 2) + ((u16)strc->unk16A * 0x10);
        if (line < strc->unk166) {
            if ((s16)var_r4 < 0) {
                var_r4 -= 0x8000;
            }
        } else {
            if ((s16)var_r4 >= 0) {
                var_r4 += 0x8000;
            }
        }

        ioData->bg2pa = (s16)((u32)strc->data160[diff] / 4);
        ioData->bg2x_l = ((u32)(strc->data160[diff] * strc->unk164) / 4) + (strc->unk168 * 0x10);
        ioData->bg2y_l = (s16)var_r4;
    }
}

void Task_220_8053904(void)
{
    s16 *sp0;
    s16 temp_r0;
    s16 temp_r0_2;
    s16 temp_r0_4;
    s16 temp_r1_2;
    s16 temp_r1_4;
    s32 temp_r0_3;
    s32 temp_r1;
    s32 temp_r1_3;
    void *temp_r1_5;
    SpriteTransform *tf;

    Strc_220_sub_8053128 *strc = TASK_DATA(gCurTask);

    gDispCnt = 0x1441;
    if ((gStageData.gameMode > 4U) && (sub_802610C() != 0)) {
        sub_802613C();
        return;
    }
    Task_220_805374C();
    temp_r1 = (s32)(++strc->unk16C) >> 3;
    if (temp_r1 < 12) {
        strc->tf[0].y = strc->sprite0.y = strc->unk166 + temp_r1;
        strc->tf[1].y = strc->sprite28.y = ((strc->unk16C >> 3) + (u16)strc->unk166) - (strc->unk16C >> 4);
    }

    strc->tf[0].x = strc->sprite0.x = ((130 - ((96 - strc->unk16C) >> 1)) - ((96 - strc->unk16C) >> 2)) + ((96 - strc->unk16C) >> 3);
    strc->tf[1].x = strc->sprite28.x = 96 - ((96 - strc->unk16C) >> 2);
    strc->tf[0].qScaleX = -(((u16)strc->unk16C * 2) + Q(0.25));
    strc->tf[0].qScaleY = +(((u16)strc->unk16C * 2) + Q(0.25));
    strc->tf[1].qScaleX = -(((u16)strc->unk16C * 2) + Q(0.125));
    strc->tf[1].qScaleY = +(((u16)strc->unk16C * 2) + Q(0.125));
    sub_8054514();

    if ((UpdateScreenFade(&strc->fade) != SCREEN_FADE_RUNNING) && (strc->unk16C >= 96)) {
        strc->unk16C = 0;
        strc->unk16E = 0;
        strc->unk164 = 0;
        strc->unk166 = 0x8C;
        strc->sprite0.anim = gUnknown_080D1C48[strc->unk17A][0][0];
        strc->sprite0.variant = gUnknown_080D1C48[strc->unk17A][0][1];
        strc->sprite0.frameFlags |= SPRITE_FLAG_MASK_ROT_SCALE_ENABLE | SPRITE_FLAG(ROT_SCALE, 0);
        strc->tf[0].qScaleX = -Q(1);
        strc->tf[0].qScaleY = +Q(1);
        strc->tf[0].x = 130;
        strc->tf[0].y = 150;
        strc->sprite28.anim = gUnknown_080D1C48[strc->unk17B][0][0];
        strc->sprite28.variant = gUnknown_080D1C48[strc->unk17B][0][1];
        strc->sprite28.frameFlags |= SPRITE_FLAG_MASK_ROT_SCALE_ENABLE | SPRITE_FLAG(ROT_SCALE, 1);
        strc->tf[1].qScaleX = -Q(0.875);
        strc->tf[1].qScaleY = +Q(0.875);
        strc->tf[1].x = 96;
        strc->tf[1].y = 150;

        if (strc->unk21C != 0) {
            u32 flags;
            strc->spriteE8.anim = gUnknown_080D1C48[5][0][0];
            strc->spriteE8.variant = gUnknown_080D1C48[5][0][1];
            flags = strc->spriteE8.frameFlags;
            flags |= SPRITE_FLAG_MASK_ROT_SCALE_ENABLE;
            strc->spriteE8.frameFlags = flags | (strc->unk21C - 1);
        }

        gBldRegs.bldCnt = 0x244;
        gBldRegs.bldAlpha = 0x10;
        gBldRegs.bldY = 0;
        gCurTask->main = Task_220_8053B28;
    }
}

void Task_220_8053B28(void)
{
    Strc_220_sub_8053128 *strc = TASK_DATA(gCurTask);

    if ((gStageData.gameMode > 4U) && (sub_802610C() != 0)) {
        sub_802613C();
        return;
    }
    Task_220_805374C();

    strc->tf[0].y = strc->sprite0.y = (u16)strc->unk166 + 10;
    strc->tf[1].y = strc->sprite28.y = (u16)strc->unk166 + 5;
    sub_8054514();

    if (++strc->unk16C >= 180) {
        strc->unk16C = 0;
        gCurTask->main = Task_220_8053BAC;
    }
}

void Task_220_8053BAC(void)
{
    s16 temp_r0;
    s16 temp_r0_2;
    s16 temp_r0_3;
    Strc_220_sub_8053128 *strc = TASK_DATA(gCurTask);

    if (((u32)gStageData.gameMode > 4U) && (sub_802610C() != 0)) {
        sub_802613C();
        return;
    }
    Task_220_805374C();
    strc->unk172 = +0x10;
    strc->unk174 = -0x10 - (strc->unk16C >> 1);

    if (++strc->unk16C <= 32) {
        strc->unk166 = (SIN(strc->unk16C * 8) >> 8) + 140;
    }

    strc->tf[0].y = strc->sprite0.y = (u16)strc->unk166 + 10;
    strc->tf[1].y = strc->sprite28.y = strc->unk166 + 5;
    sub_8054514();

    if (strc->unk16C >= 64) {
        gCurTask->main = Task_220_8053C70;
    }
}

void Task_220_8053C70(void)
{
    Strc_220_sub_8053128 *strc = TASK_DATA(gCurTask);

    if (((u32)gStageData.gameMode > 4U) && ((sub_802610C() << 0x10) != 0)) {
        sub_802613C();
        return;
    }
    Task_220_805374C();

    strc->unk172 = ((s32)(strc->unk16C - 64) >> 2) + 0x10;
    strc->unk174 = ((s32)(strc->unk16C - 64) >> 1) - 0x30;
    strc->unk16C++;
    strc->unk16E = strc->unk16C - 64;
    strc->unk170 = 48 - ((strc->unk16C - 64) >> 1);
    strc->tf[0].y = strc->sprite0.y = (u16)strc->unk166 + 10;
    strc->tf[1].y = strc->sprite28.y = (u16)strc->unk166 + 5;
    sub_8054514();

    if (strc->unk16C >= 128) {
        strc->sprite0.anim = gUnknown_080D1C48[strc->unk17A][1][0];
        strc->sprite0.variant = gUnknown_080D1C48[strc->unk17A][1][1];
        strc->sprite0.frameFlags &= ~0x20;
        strc->sprite0.frameFlags |= 0x400;
        strc->sprite0.x = 0x82;
        strc->sprite0.y = 0x96;
        strc->sprite28.anim = gUnknown_080D1C48[strc->unk17B][1][0];
        strc->sprite28.variant = gUnknown_080D1C48[strc->unk17B][1][1];
        strc->sprite28.frameFlags = (strc->sprite28.frameFlags & ~0x21) | 0x400;
        strc->sprite28.x = 0x50;
        strc->sprite28.y = 0x96;

        if (strc->unk21C != 0) {
            strc->spriteE8.anim = gUnknown_080D1C48[5][1][0];
            strc->spriteE8.variant = gUnknown_080D1C48[5][1][1];
            strc->spriteE8.frameFlags &= ~((strc->unk21C - 1) | 0x20);
            strc->spriteE8.frameFlags |= 0x400;
        }

        strc->unk16E = 0x40;
        strc->unk170 = 0;
        gCurTask->main = Task_220_8053DEC;
    }
}
