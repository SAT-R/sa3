#include "global.h"
#include "core.h"
#include "color.h"
#include "flags.h"
#include "malloc_vram.h"
#include "module_unclear.h"
#include "lib/m4a/m4a.h"
#include "game/code_1_3.h"
#include "game/screen_fade.h"
#include "game/shared/stage/player_callbacks.h"
#include "game/save.h"
#include "game/stage.h"
#include "constants/songs.h"

/* TODO: Merge with code_1_4 */

void TaskDestructor_805332C(Task *t);
void Task_2A4_8054EB8(void);
void sub_8055614(Strc_2A4_8053284 *strc);
void Task_10_8055DA8(void);
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

// (94.70%) https://decomp.me/scratch/FNw8C
NONMATCH("asm/non_matching/game/c13__sub_80534DC.inc", void sub_80534DC(Strc_220_sub_8053128 *strc220, s16 arg1, s16 arg2))
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
        s->frameFlags |= (strc220->unk21C - 1);
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
END_NONMATCH