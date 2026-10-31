#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/shared/stage/player.h"
#include "game/bosses.h"
#include "game/shared/stage/player_callbacks.h" // sub_80105F0
#include "game/save.h"
#include "game/stage.h"
#include "game/sa3/bosses/boss_extra.h"
#include "game/sa3/bosses/eggman_escape.h" // SetFixedRandomIfTimeAttackMode
#include "constants/animations.h"

// TEMP

void CreateUltimateGemerlBoss(void)
{
    Task *t = TaskCreate(Task_878_8081E74, sizeof(UltimateGemerl), 0x3100U, 0U, TaskDestructor_878_8081D64);
    UltimateGemerl *boss = TASK_DATA(t);
    gStageData.taskBoss = t;

    if (gStageData.difficulty == DIFFICULTY_NORMAL) {
        boss->lives = 12;
    } else {
        boss->lives = 10;
    }

    boss->unk10 = 1;
    boss->unk12 = 0;
    boss->unk4 = 1;
    boss->unk8 = 0;
    boss->unk1 = 0;
    boss->unkA = 0;
    boss->unkC = 0;
    boss->unkD = 0;
    boss->vram6C = NULL;
    boss->unk17 = 0;
    boss->unk18 = 0;
    gBgScrollRegs[0][0] = 104;
    gBgScrollRegs[0][1] = 48;
    gCamera.SA2_LABEL(unk50) |= 1;
    boss->spr38C.tiles = NULL;
    boss->spr3B4[0].tiles = NULL;
    boss->spr454[0][0].tiles = NULL;
    boss->spr814.tiles = NULL;
    boss->vram1C = NULL;
    boss->vram20 = NULL;
    boss->vram24 = NULL;
    boss->vram6C = NULL;
    boss->spr74.tiles = NULL;
    SetFixedRandomIfTimeAttackMode();
    boss->players[ENAP_SONIC] = &gPlayers[PLAYER_1];
    boss->players[ENAP_EGGMAN] = &gPlayers[PLAYER_2];
    boss->players[ENAP_SONIC]->unk148.ptr = (PlayerUnk148 *)&boss->filler34[0x24];
    boss->players[ENAP_EGGMAN]->unk148.ptr = (PlayerUnk148 *)&boss->filler34[0x34];
    boss->unk70 = 0;
    sub_878_80853D8(boss);
}

void TaskDestructor_878_8081D64(Task *t)
{
    UltimateGemerl *boss = TASK_DATA(t);

    if (boss->spr38C.tiles != NULL) {
        VramFree(boss->spr38C.tiles);
    }
    if (boss->spr3B4[0].tiles != NULL) {
        VramFree(boss->spr3B4[0].tiles);
    }
    if (boss->spr454[0][0].tiles != NULL) {
        VramFree(boss->spr454[0][0].tiles);
    }
    if (boss->spr814.tiles != NULL) {
        VramFree(boss->spr814.tiles);
    }

    if (boss->unk1 != 6) {
        if (boss->vram1C != NULL) {
            VramFree(boss->vram1C);
        }
        if (boss->vram20 != NULL) {
            VramFree(boss->vram20);
        }
        if (boss->vram24 != NULL) {
            VramFree(boss->vram24);
        }
        if (boss->vram6C != NULL) {
            VramFree(boss->vram6C);
        }
        if (boss->spr74.tiles != NULL) {
            VramFree(boss->spr74.tiles);
        }
    }
}

void CreateUltimateGemerlForCutscene(Task *taskCutscene)
{
    UltimateGemerl *boss;

    boss = TASK_DATA(TaskCreate(Task_878_8086FA4, sizeof(UltimateGemerl), 0x2100U, 0U, TaskDestructor_878_8086ED8));
    boss->taskCutscene = taskCutscene; // -> (AltarEmeraldCutsceneEggmanEscape *)
    boss->unk4 = 1;
    boss->unk8 = 0;
    boss->unk1 = 6;
    boss->unkA = 0;
    boss->unkC = 0;
    boss->unkD = 0;
    boss->unk17 = 0;
    boss->unk18 = 0;
    boss->vram6C = NULL;
    boss->players[ENAP_SONIC] = &gPlayers[PLAYER_1];
    boss->players[ENAP_EGGMAN] = &gPlayers[PLAYER_2];
    boss->spr38C.tiles = NULL;
    boss->spr454[0][0].tiles = NULL;
    sub_878_8081FBC(boss);
    sub_878_8082A4C(boss);
}

void Task_878_8081E74(void)
{
    UltimateGemerl *boss = TASK_DATA(gCurTask);
    if (gStageData.unk4 == 3) {
        gDispCnt &= ~(DISPCNT_WIN0_ON | DISPCNT_WIN1_ON);
        gDispCnt &= ~DISPCNT_BG0_ON;
        gCamera.SA2_LABEL(unk50) &= ~1;
        boss->unk4 = 1;
        boss->unk8 = 0;
        boss->ringCountdownDelay = TIME(0, 1);
        sub_878_8081FBC(boss);
        sub_878_80824F4(boss);
        boss->vram1C = VramMalloc(16);
        boss->vram20 = VramMalloc(16);
        boss->vram24 = NULL;
        gCurTask->main = Task_878_8086F08;
    }
}

// TODO: Fake-match! (sorta, just very confusingy done)
void sub_878_8081EFC(UltimateGemerl *boss)
{
    Player *temp_r2;
    Player *temp_r2_2;
    Player *temp_r2_3;
    u16 temp_r0;
    u16 temp_r0_2;
    u8 temp_r0_3;

    if (gStageData.rings != 0) {
        if (boss->lives != 0) {
            goto else_block;
        }
    } else {
        {
            if (gStageData.unk4 != 7) {
                if (!(boss->players[ENAP_SONIC]->moveState & 0x100)) {
                    SetPlayerCallback(boss->players[ENAP_SONIC], sub_80105F0);
                }
                if (!(boss->players[ENAP_EGGMAN]->moveState & 0x100)) {
                    SetPlayerCallback(boss->players[ENAP_EGGMAN], sub_80105F0);
                }
            }
            if (boss->unk5F == 1) {
                boss->unk5F++;
                boss->unk4 = 1;
                boss->unk8 = 0;
                boss->unk1 = 7;
                boss->unkD = boss->unkC;
            }
            return;
        }

    else_block:
        if (gStageData.unk4 == 7) {
            boss->unk1 = gStageData.unk4;
            return;
        }
        if (!(boss->players[ENAP_SONIC]->moveState & 0x100)) {
            if (--boss->ringCountdownDelay == 0) {
                boss->ringCountdownDelay = TIME(0, 1);
                gStageData.rings--;
                if (gStageData.rings == 0) {
                    SetPlayerCallback(boss->players[ENAP_SONIC], sub_80105F0);
                    SetPlayerCallback(boss->players[ENAP_EGGMAN], sub_80105F0);
                }
            }
        }
    }
}

void sub_878_8081FBC(UltimateGemerl *boss)
{
    if (boss->unk1 != 6) {
        boss->qUnk9C = Q(gCamera.x + 200);
        boss->qUnkA0 = Q(120);
        boss->qUnkF4 = Q(gCamera.x + DISPLAY_CENTER_X);
        boss->qUnkF8 = Q(120);
        boss->qUnkB0 = Q(120);
        boss->qUnkB4 = 0;
        boss->unk108 = 1;
    } else {
        boss->qUnk9C = Q(gCamera.x + DISPLAY_CENTER_X);
        boss->qUnkA0 = Q(gCamera.y + DISPLAY_CENTER_Y);
        boss->qUnkF4 = Q(gCamera.x + DISPLAY_CENTER_X);
        boss->qUnkF8 = Q(gCamera.y + DISPLAY_CENTER_Y);
        boss->qUnkB0 = 0;
        boss->qUnkB4 = 0;
        boss->unk108 = 2;
    }
    boss->unkFC = 0;
    boss->rotation = 0;
    boss->unkA4 = 0x400;
    boss->unkEE = 0;
    boss->unkEF = 0;
    boss->unkF0 = 0;
    sub_8086FF8(boss, 0U);
    {
        Sprite *s = &boss->spr38C;
        SpriteTransform *tf = &boss->tf83C;
        s->tiles = VramMalloc(0x80U);
        s->anim = ANIM_BOSS_EXTRA_BODY;
        s->variant = 0;
        s->oamFlags = 0x280;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->prevVariant = 0xFF;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->hitboxes[0].index = -1;
        s->frameFlags = 0x1000;
        if (boss->unk1 != 6) {
            s->frameFlags |= 0x2A;
            s->frameFlags |= 0x1000;
        }
        s->x = I(boss->qUnk9C) - gCamera.x;
        s->y = I(boss->qUnkA0) - gCamera.y;
        tf->rotation = boss->rotation;
        tf->x = s->x;
        tf->y = s->y;
        tf->qScaleX = Q(1);
        tf->qScaleY = Q(1);
        UpdateSpriteAnimation(&boss->spr38C);
    }
}

#if 01
#else
void sub_878_808211C(UltimateGemerl *boss)
{
    s32 *var_r3;
    s32 *var_r4;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 temp_r1_4;
    s32 temp_r1_5;
    s32 temp_r3;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 var_r1;
    u8 temp_r0;
    u8 temp_r2;

    temp_r1 = ((((s32)boss->players[0]->qWorldX >> 8) + (gCamera.unk6A * 2)) - gCamera.x) - 0xB4;
    if (temp_r1 <= 0) {
        var_r1 = 0;
    } else {
        var_r1 = 0 - temp_r1;
    }
    if ((gStageData.gameMode == 5) && (var_r1 == 0)) {
        temp_r1_2 = ((((s32)boss->players[1]->qWorldX >> 8) + (gCamera.unk6A * 2)) - gCamera.x) - 0xB4;
        if (temp_r1_2 <= 0) {
            var_r1 = 0;
        } else {
            var_r1 = 0 - temp_r1_2;
        }
    }
    if (boss->unk1 == 7) {
        var_r1 = 0;
    }
    temp_r2 = boss->unk17;
    if ((gCamera.unk6A != 0) || (temp_r2 != 0)) {
        if (temp_r2 != 0) {
            boss->unk17 = temp_r2 - 1;
        }
        if (gCamera.unk6A != 0) {
            boss->unk17 = 1;
        }
        var_r1 = boss->unk18;
    }
    boss->unk18 = var_r1;
    boss->qUnkF4 = (gCamera.x + (var_r1 + 0x78)) << 8;
    boss->unkEE = 0;
    temp_r0 = boss->fillerBA[0x33];
    var_r3 = &boss->qUnkB0;
    var_r4 = &boss->qUnkB4;
    switch ((u32)temp_r0) { /* irregular */
        case 1:
            temp_r1_3 = boss->qUnkB0 + 0xFFFFFE00;
            boss->qUnkB0 = temp_r1_3;
            var_r3 = &boss->qUnkB0;
            var_r4 = &boss->qUnkB4;
            if (temp_r1_3 > 0) {

            } else {
                boss->qUnkB0 = 0;
            block_41:
                boss->unkEE = 1;
            }
            break;
        case 2:
            temp_r1_4 = boss->qUnkB0 + 0x200;
            boss->qUnkB0 = temp_r1_4;
            var_r3 = &boss->qUnkB0;
            var_r4 = &boss->qUnkB4;
            if (temp_r1_4 <= 0x77FF) {

            } else {
                boss->qUnkB0 = 0x7800;
                goto block_41;
            }
            break;
        case 3:
            var_r0 = gSineTable[boss->unkE0 + 0x100] * boss->unkFC;
            var_r3 = &boss->qUnkB0;
            if (var_r0 < 0) {
                var_r0 += 0x3F;
            }
            boss->qUnkB0 = var_r0 >> 6;
            var_r0_2 = gSineTable[boss->unkE0] * boss->unkFC;
            var_r4 = &boss->qUnkB4;
            if (var_r0_2 < 0) {
                var_r0_2 += 0x3F;
            }
            boss->qUnkB4 = var_r0_2 >> 6;
            break;
        case 4:
            temp_r3 = boss->qUnkB4;
            var_r4 = &boss->qUnkB4;
            if (temp_r3 < 0) {
                temp_r0_2 = temp_r3 + 0x80;
                boss->qUnkB4 = temp_r0_2;
                var_r3 = &boss->qUnkB0;
                if (temp_r0_2 >= 0) {
                    var_r0_3 = 0;
                    goto block_40;
                }
            } else {
                temp_r0_3 = temp_r3 - 0x80;
                boss->qUnkB4 = temp_r0_3;
                var_r3 = &boss->qUnkB0;
                if (temp_r0_3 <= 0) {
                    var_r0_3 = 0;
                block_40:
                    *var_r4 = var_r0_3;
                    goto block_41;
                }
            }
            break;
        case 5:
            temp_r0_4 = boss->qUnkB4 - 0x80;
            boss->qUnkB4 = temp_r0_4;
            var_r3 = &boss->qUnkB0;
            var_r4 = &boss->qUnkB4;
            if (temp_r0_4 <= 0xFFFFA000) {
                boss->qUnkB4 = -0x6000;
                goto block_41;
            }
            break;
        case 6:
            temp_r1_5 = boss->qUnkB4 + 0x80;
            boss->qUnkB4 = temp_r1_5;
            var_r3 = &boss->qUnkB0;
            var_r4 = &boss->qUnkB4;
            if (temp_r1_5 > 0x5FFF) {
                var_r0_3 = 0x6000;
                goto block_40;
            }
            break;
        case 8:
            boss->unkA8 = (s32)(boss->unkA8 + 4);
            var_r3 = &boss->qUnkB0;
            boss->qUnkB0 += boss->unkA4;
            boss->qUnkB4 += boss->unkA8;
            var_r4 = &boss->qUnkB4;
            break;
    }
    boss->qUnk9C = boss->qUnkF4 + *var_r3;
    boss->qUnkA0 = boss->qUnkF8 + *var_r4;
    sub_878_8082E2C(boss, 0U);
}

void sub_878_8082388(UltimateGemerl *boss)
{
    Sprite *temp_r4;
    u8 temp_r0;

    temp_r4 = &boss->spr38C;
    temp_r0 = boss->unk108;
    switch (temp_r0) { /* irregular */
        case 1:
            boss->spr38C.x = ((s32)boss->qUnk9C >> 8) - gCamera.x;
            boss->spr38C.y = ((s32)boss->qUnkA0 >> 8) - gCamera.y;
            boss->tf83C.rotation = boss->rotation;
            boss->tf83C.x = (s16)(u16)boss->spr38C.x;
            boss->tf83C.y = (s16)(u16)boss->spr38C.y;
            TransformSprite(temp_r4, &boss->tf83C);
            UpdateSpriteAnimation(temp_r4);
            DisplaySprite(temp_r4);
            return;
        case 2:
            boss->spr38C.x = ((s32)boss->qUnk9C >> 8) - gCamera.x;
            boss->spr38C.y = ((s32)boss->qUnkA0 >> 8) - gCamera.y;
            UpdateSpriteAnimation(temp_r4);
            DisplaySprite(temp_r4);
            return;
    }
}

void sub_878_8082428(UltimateGemerl *boss)
{
    u16 temp_r0_2;
    u16 temp_r0_3;
    u8 temp_r0;
    u8 var_r0;

    temp_r0 = boss->unkEF;
    switch (temp_r0) { /* irregular */
        case 0x32:
            boss->unkF0 = 6;
            boss->spr38C.anim = 0x4FD;
            boss->spr38C.variant = 1;
        block_20:
            var_r0 = boss->unkEF + 1;
        block_21:
            boss->unkEF = var_r0;
            return;
        case 0x33:
            temp_r0_2 = boss->unkF0 - 1;
            boss->unkF0 = temp_r0_2;
            if ((temp_r0_2 << 0x10) == 0) {
                boss->spr38C.anim = 0x4FD;
                boss->spr38C.variant = 2;
                goto block_20;
            }
            break;
        case 0x64:
            boss->unkF0 = 6;
            boss->spr38C.anim = 0x4FD;
            boss->spr38C.variant = 1;
            goto block_20;
        case 0x65:
            temp_r0_3 = boss->unkF0 - 1;
            boss->unkF0 = temp_r0_3;
            if ((temp_r0_3 << 0x10) == 0) {
                boss->spr38C.anim = 0x4FD;
                boss->spr38C.variant = 0;
                goto block_20;
            }
            break;
        case 0x66:
            var_r0 = 0;
            goto block_21;
        case 0x96:
            boss->unk108 = 2;
            boss->spr38C.anim = 0x507;
            boss->spr38C.variant = 0;
            boss->spr38C.oamFlags = 0x4C0;
            boss->spr38C.frameFlags = 0x1000;
            goto block_20;
    }
}

void sub_878_80824F4(UltimateGemerl *boss)
{
    s32 sp0;
    u8 *sp4;
    u8 *sp8;
    void *spC;
    s32 sp10;
    s32 *sp14;
    s32 *sp18;
    Sprite *temp_r6;
    Sprite *temp_r6_2;
    SpriteTransform *temp_r3;
    UltimateGemerlSub10C *temp_r0;
    s32 *temp_r0_2;
    s32 *temp_r3_2;
    s32 *temp_r4;
    s32 temp_r2;
    s32 var_r0;
    s32 var_r0_2;
    u32 temp_r1;
    u8 var_r5;
    u8 var_r8;

    sp4 = VramMalloc(0x10U);
    sp8 = VramMalloc(1U);
    var_r8 = 0;
    sp0 = 0x80;
loop_1:
    var_r0 = gSineTable[sp0 + 0x100] * 0x1C;
    if (var_r0 < 0) {
        var_r0 += 0x3F;
    }
    var_r0_2 = gSineTable[sp0] * 0x1C;
    if (var_r0_2 < 0) {
        var_r0_2 += 0x3F;
    }
    temp_r0 = &boss->strc10C[var_r8];
    temp_r0->qOffsetX = boss->qUnk9C + (var_r0 >> 6);
    temp_r0_2 = &boss->strc10C[0].qOffsetY + (var_r8 * 0x18);
    *temp_r0_2 = boss->qUnkA0 + (var_r0_2 >> 6);
    boss->strc10C[var_r8].unk14 = (u16)sp0;
    temp_r6 = &boss->spr3B4[var_r8];
    temp_r3 = &boss->tf848[var_r8];
    temp_r6->tiles = sp4;
    temp_r6->anim = 0x4FE;
    temp_r6->variant = 1;
    temp_r6->oamFlags = 0x280;
    temp_r6->animCursor = 0;
    temp_r6->qAnimDelay = 0;
    temp_r6->prevVariant = 0xFF;
    temp_r6->animSpeed = 0x10;
    temp_r6->palId = 0;
    temp_r6->hitboxes[0].index = -1;
    temp_r1 = (var_r8 + 0xB) | (0x20 | 0x1000);
    temp_r6->frameFlags = temp_r1;
    sp14 = &boss->qUnk9C;
    sp18 = &boss->qUnkA0;
    if (var_r8 != 0) {
        temp_r6->frameFlags = temp_r1 | 0x80000;
    }
    temp_r6->x = ((s32)temp_r0->qOffsetX >> 8) - gCamera.x;
    temp_r6->y = ((s32)*temp_r0_2 >> 8) - gCamera.y;
    temp_r3->rotation = (boss->strc10C[var_r8].unk14 + 0xFFFFFD80) & 0x3FF;
    temp_r3->x = (s16)(u16)temp_r6->x;
    temp_r3->y = (s16)(u16)temp_r6->y;
    temp_r3->qScaleX = 0x100;
    temp_r3->qScaleY = 0x100;
    UpdateSpriteAnimation(temp_r6);
    var_r5 = 0;
    sp10 = var_r8 + 1;
    spC = boss + ((var_r8 * 0xF0) + 0x454);
    do {
        temp_r2 = (var_r5 * 0x14) + (var_r8 * 0x78);
        temp_r3_2 = boss->strc16C[0] + temp_r2;
        *temp_r3_2 = *sp14;
        temp_r4 = &boss->strc16C[0][0].qWorldY + temp_r2;
        *temp_r4 = *sp18;
        temp_r6_2 = spC + (var_r5 * 0x28);
        temp_r6_2->tiles = sp8;
        temp_r6_2->anim = 0x4FF;
        temp_r6_2->variant = 0;
        temp_r6_2->oamFlags = 0x4C0;
        temp_r6_2->animCursor = 0;
        temp_r6_2->qAnimDelay = 0;
        temp_r6_2->prevVariant = 0xFF;
        temp_r6_2->animSpeed = 0x10;
        temp_r6_2->palId = 0;
        temp_r6_2->hitboxes[0].index = -1;
        temp_r6_2->frameFlags = 0x1000;
        temp_r6_2->x = ((s32)*temp_r3_2 >> 8) - gCamera.x;
        temp_r6_2->y = ((s32)*temp_r4 >> 8) - gCamera.y;
        if ((var_r8 != 0) || (var_r5 != 0)) {
            temp_r6_2->frameFlags = 0x81000;
        }
        UpdateSpriteAnimation(temp_r6_2);
        var_r5 += 1;
    } while ((u32)var_r5 <= 5U);
    var_r8 = (u8)sp10;
    sp0 = (s32)(u16)(sp0 + 0x100);
    if ((u32)var_r8 <= 3U) {
        goto loop_1;
    }
    boss->spr814.tiles = VramMalloc(0x10U);
    boss->spr814.anim = 0x504;
    boss->spr814.variant = 0;
    boss->spr814.oamFlags = 0x240;
    boss->spr814.animCursor = 0;
    boss->spr814.qAnimDelay = 0;
    boss->spr814.prevVariant = 0xFF;
    boss->spr814.animSpeed = 0x10;
    boss->spr814.palId = 0;
    boss->spr814.hitboxes[0].index = -1;
    boss->spr814.frameFlags = 0x1000;
    boss->spr814.x = ((s32)boss->strc10C[0].qOffsetX >> 8) - gCamera.x;
    boss->spr814.y = ((s32)boss->strc10C[0].qOffsetY >> 8) - gCamera.y;
    boss->fillerE[1] = 0;
}

void sub_878_8082794(UltimateGemerl *boss)
{
    void *sp0;
    Sprite *temp_r5;
    Sprite *temp_r5_2;
    Sprite *temp_r5_3;
    Sprite *temp_r5_4;
    Sprite *temp_r5_5;
    SpriteTransform *temp_r3;
    SpriteTransform *temp_r3_3;
    s32 temp_r2;
    s32 temp_r3_2;
    u8 var_r4;
    u8 var_r4_2;
    u8 var_r7;
    u8 var_r7_2;
    void *var_r3;

    if (boss->lives == 0) {
        var_r7 = 0;
        do {
            if (boss->strc10C[var_r7].unk10 != 0) {
                temp_r5 = &boss->spr3B4[var_r7];
                temp_r3 = &boss->tf848[var_r7];
                temp_r5->x = ((s32)boss->strc10C[var_r7].qOffsetX >> 8) - gCamera.x;
                temp_r5->y = ((s32) * (&boss->strc10C[0].qOffsetY + (var_r7 * 0x18)) >> 8) - gCamera.y;
                temp_r3->rotation = (boss->strc10C[var_r7].unk14 + 0xFFFFFD80) & 0x3FF;
                temp_r3->x = (s16)(u16)temp_r5->x;
                temp_r3->y = (s16)(u16)temp_r5->y;
                TransformSprite(temp_r5, temp_r3);
                UpdateSpriteAnimation(temp_r5);
                DisplaySprite(temp_r5);
            }
            var_r4 = 0;
        loop_13:
            temp_r3_2 = (var_r4 * 0x14) + (var_r7 * 0x78);
            if ((boss + temp_r3_2)->unk17C != 0) {
                temp_r5_2 = (var_r7 * 0xF0) + 0x454 + boss + (var_r4 * 0x28);
                temp_r5_2->x = ((s32) * (boss->strc16C[0] + temp_r3_2) >> 8) - gCamera.x;
                temp_r5_2->y = ((s32) * (&boss->strc16C[0][0].qWorldY + temp_r3_2) >> 8) - gCamera.y;
                DisplaySprite(temp_r5_2);
            }
            var_r4 += 1;
            if ((u32)var_r4 <= 5U) {
                goto loop_13;
            }
            var_r7 += 1;
        } while ((u32)var_r7 <= 3U);
        return;
    }
    var_r7_2 = 0;
    do {
        temp_r5_3 = &boss->spr3B4[var_r7_2];
        temp_r3_3 = &boss->tf848[var_r7_2];
        temp_r5_3->x = ((s32)boss->strc10C[var_r7_2].qOffsetX >> 8) - gCamera.x;
        temp_r5_3->y = ((s32) * (&boss->strc10C[0].qOffsetY + (var_r7_2 * 0x18)) >> 8) - gCamera.y;
        temp_r3_3->rotation = (boss->strc10C[var_r7_2].unk14 + 0xFFFFFD80) & 0x3FF;
        temp_r3_3->x = (s16)(u16)temp_r5_3->x;
        temp_r3_3->y = (s16)(u16)temp_r5_3->y;
        TransformSprite(temp_r5_3, temp_r3_3);
        UpdateSpriteAnimation(temp_r5_3);
        DisplaySprite(temp_r5_3);
        var_r4_2 = 0;
        var_r3 = boss + ((var_r7_2 * 0xF0) + 0x454);
    loop_4:
        temp_r5_4 = var_r3 + (var_r4_2 * 0x28);
        temp_r2 = (var_r4_2 * 0x14) + (var_r7_2 * 0x78);
        temp_r5_4->x = ((s32) * (boss->strc16C[0] + temp_r2) >> 8) - gCamera.x;
        temp_r5_4->y = ((s32) * (&boss->strc16C[0][0].qWorldY + temp_r2) >> 8) - gCamera.y;
        sp0 = var_r3;
        DisplaySprite(temp_r5_4);
        var_r4_2 += 1;
        if ((u32)var_r4_2 <= 5U) {
            goto loop_4;
        }
        var_r7_2 += 1;
    } while ((u32)var_r7_2 <= 3U);
    if (boss->fillerE[1] == 0) {
        return;
    }
    temp_r5_5 = &boss->spr814;
    UpdateSpriteAnimation(temp_r5_5);
    boss->spr814.x = (((s32)boss->strc10C[3].qOffsetX >> 8) - gCamera.x) - 0x10;
    boss->spr814.y = (((s32)boss->strc10C[3].qOffsetY >> 8) - gCamera.y) + 4;
    boss->spr814.frameFlags &= 0xFFFFF7FF;
    DisplaySprite(temp_r5_5);
    boss->spr814.x = (((s32)boss->strc10C[0].qOffsetX >> 8) - gCamera.x) - 0x10;
    boss->spr814.y = (((s32)boss->strc10C[0].qOffsetY >> 8) - gCamera.y) - 4;
    boss->spr814.frameFlags |= 0x800;
    DisplaySprite(temp_r5_5);
}

void sub_878_8082A4C(UltimateGemerl *boss)
{
    s32 sp0;
    u8 *sp4;
    u8 *sp8;
    void *spC;
    s32 sp10;
    s32 *sp14;
    s32 *sp18;
    Sprite *temp_r7;
    Sprite *temp_r7_2;
    SpriteTransform *temp_r3;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 temp_r4;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_sl;
    u8 var_r0_3;
    u8 var_r5;

    sp4 = (u8 *)0x06012800;
    sp8 = VramMalloc(1U);
    var_sl = 0;
    sp0 = 0x80;
loop_1:
    var_r0 = gSineTable[sp0 + 0x100] * 0x1C;
    if (var_r0 < 0) {
        var_r0 += 0x3F;
    }
    var_r0_2 = gSineTable[sp0] * 0x1C;
    if (var_r0_2 < 0) {
        var_r0_2 += 0x3F;
    }
    boss->strc10C[var_sl].qOffsetX = boss->qUnk9C + (var_r0 >> 6);
    *(&boss->strc10C[0].qOffsetY + (var_sl * 0x18)) = boss->qUnkA0 + (var_r0_2 >> 6);
    boss->strc10C[var_sl].unk14 = (u16)sp0;
    temp_r7 = &boss->spr3B4[var_sl];
    temp_r3 = &boss->tf848[var_sl];
    temp_r7->tiles = sp4;
    temp_r7->oamFlags = 0x280;
    temp_r7->animCursor = 0;
    temp_r7->qAnimDelay = 0;
    temp_r7->prevVariant = 0xFF;
    temp_r7->animSpeed = 0x10;
    temp_r7->palId = 0;
    temp_r7->hitboxes[0].index = -1;
    temp_r7->frameFlags = 0x1000;
    sp14 = &boss->qUnk9C;
    sp18 = &boss->qUnkA0;
    switch (var_sl) { /* irregular */
        case 0:
            temp_r7->anim = 0x4FE;
            var_r0_3 = 4;
        block_16:
            temp_r7->variant = var_r0_3;
            break;
        case 1:
            temp_r7->anim = 0x4FE;
            var_r0_3 = 2;
            goto block_16;
        case 2:
            temp_r7->anim = 0x4FE;
            temp_r7->variant = 0;
            temp_r7->frameFlags = 0x20 | 0x100D;
            break;
        case 3:
            temp_r7->anim = 0x4FE;
            var_r0_3 = 6;
            goto block_16;
    }
    temp_r7->x = ((s32)boss->strc10C[var_sl].qOffsetX >> 8) - gCamera.x;
    temp_r7->y = ((s32) * (&boss->strc10C[0].qOffsetY + (var_sl * 0x18)) >> 8) - gCamera.y;
    temp_r3->rotation = (boss->strc10C[var_sl].unk14 + 0xFFFFFD80) & 0x3FF;
    temp_r3->x = (s16)(u16)temp_r7->x;
    temp_r3->y = (s16)(u16)temp_r7->y;
    temp_r3->qScaleX = 0x100;
    temp_r3->qScaleY = 0x100;
    UpdateSpriteAnimation(temp_r7);
    sp4 += 0x200;
    var_r5 = 0;
    sp10 = var_sl + 1;
    spC = (var_sl * 0xF0) + 0x454 + boss;
    do {
        temp_r4 = var_r5 * 4;
        temp_r2 = (var_r5 * 0x14) + (var_sl * 0x78);
        *(boss->strc16C[0] + temp_r2) = *sp14;
        *(&boss->strc16C[0][0].qWorldY + temp_r2) = *sp18;
        temp_r7_2 = spC + (var_r5 * 0x28);
        temp_r7_2->tiles = sp8;
        temp_r7_2->anim = 0x4FF;
        temp_r7_2->variant = 0;
        temp_r7_2->oamFlags = 0x4C0;
        temp_r7_2->animCursor = 0;
        temp_r7_2->qAnimDelay = 0;
        temp_r7_2->prevVariant = 0xFF;
        temp_r7_2->animSpeed = 0x10;
        temp_r7_2->palId = 0;
        temp_r7_2->hitboxes[0].index = -1;
        temp_r7_2->frameFlags = 0x1000;
        if ((var_sl != 0) || (var_r5 != 0)) {
            temp_r7_2->frameFlags = 0x81000;
        }
        temp_r2_2 = (var_r5 * 0x14) + (var_sl * 0x78);
        temp_r7_2->x = ((s32) * (boss->strc16C[0] + temp_r2_2) >> 8) - gCamera.x;
        temp_r7_2->y = ((s32) * (&boss->strc16C[0][0].qWorldY + temp_r2_2) >> 8) - gCamera.y;
        UpdateSpriteAnimation(temp_r7_2);
        var_r5 += 1;
    } while ((u32)var_r5 <= 5U);
    var_sl = (s32)(u8)sp10;
    sp0 = (s32)(u16)(sp0 + 0x100);
    if ((u32)var_sl <= 3U) {
        goto loop_1;
    }
    boss->spr814.tiles = NULL;
    boss->fillerE[1] = 0;
}

void sub_878_8082D08(UltimateGemerl *boss)
{
    s32 sp0;
    Sprite *temp_r4;
    Sprite *temp_r4_2;
    SpriteTransform *temp_r3;
    s32 temp_r2;
    s32 var_r3;
    u8 var_r5;
    u8 var_r5_2;
    u8 var_sb;

    var_r5 = 0;
loop_1:
    temp_r4 = &boss->spr3B4[var_r5];
    temp_r3 = &boss->tf848[var_r5];
    temp_r4->x = ((s32)boss->strc10C[var_r5].qOffsetX >> 8) - gCamera.x;
    temp_r4->y = ((s32) * (&boss->strc10C[0].qOffsetY + (var_r5 * 0x18)) >> 8) - gCamera.y;
    if (var_r5 == 2) {
        temp_r3->rotation = (boss->unk150 + 0xFFFFFD80) & 0x3FF;
        temp_r3->x = (s16)(u16)temp_r4->x;
        temp_r3->y = (s16)(u16)temp_r4->y;
        TransformSprite(temp_r4, temp_r3);
        UpdateSpriteAnimation(temp_r4);
        DisplaySprite(temp_r4);
        var_r5_2 = 0;
        var_sb = 3;
        var_r3 = 0xF0;
        do {
            temp_r4_2 = &boss->spr454[2][var_r5_2];
            temp_r2 = (var_r5_2 * 0x14) + var_r3;
            temp_r4_2->x = ((s32) * (boss->strc16C[0] + temp_r2) >> 8) - gCamera.x;
            temp_r4_2->y = ((s32) * (&boss->strc16C[0][0].qWorldY + temp_r2) >> 8) - gCamera.y;
            sp0 = var_r3;
            DisplaySprite(temp_r4_2);
            var_r5_2 += 1;
        } while ((u32)var_r5_2 <= 5U);
    } else {
        UpdateSpriteAnimation(temp_r4);
        DisplaySprite(temp_r4);
        var_sb = var_r5 + 1;
    }
    var_r5 = var_sb;
    if ((u32)var_r5 <= 3U) {
        goto loop_1;
    }
}

s32 sub_878_8082E2C(UltimateGemerl *boss, u8 param1)
{
    u32 sp20;
    u32 sp24;
    s32 sp28;
    UltimateGemerlSub10C *sp2C;
    s32 *sp30;
    u8 *sp34;
    UltimateGemerlSub10C *sp38;
    s32 sp3C;
    UltimateGemerlSub16C *sp40;
    s32 *sp44;
    u8 *sp48;
    s32 sp4C;
    UltimateGemerlSub16C *sp50;
    s32 *sp54;
    u32 sp58;
    u32 sp5C;
    u8 *sp60;
    s32 sp64;
    UltimateGemerlSub16C *sp68;
    UltimateGemerlSub16C *sp6C;
    s32 *sp70;
    s32 *sp74;
    s32 *sp78;
    u8 *sp7C;
    u8 *sp80;
    u8 *sp84;
    u8 *sp88;
    void *sp8C;
    s32 sp90;
    s32 sp94;
    s16 var_r3;
    s16 var_r7_2;
    s16 var_r7_3;
    s32 temp_r0_10;
    s32 temp_r0_11;
    s32 temp_r0_12;
    s32 temp_r0_13;
    s32 temp_r0_16;
    s32 temp_r0_19;
    s32 temp_r0_21;
    s32 temp_r0_23;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 temp_r0_6;
    s32 temp_r0_8;
    s32 temp_r1_11;
    s32 temp_r1_15;
    s32 temp_r1_4;
    s32 temp_r1_7;
    s32 temp_r1_8;
    s32 temp_r1_9;
    s32 temp_r2_3;
    s32 temp_r2_5;
    s32 temp_r2_7;
    s32 temp_r2_8;
    s32 temp_r3;
    s32 temp_r3_2;
    s32 temp_r3_3;
    s32 temp_r7;
    s32 temp_r7_2;
    s32 var_r0;
    s32 var_r0_10;
    s32 var_r0_11;
    s32 var_r0_12;
    s32 var_r0_13;
    s32 var_r0_14;
    s32 var_r0_16;
    s32 var_r0_17;
    s32 var_r0_18;
    s32 var_r0_19;
    s32 var_r0_20;
    s32 var_r0_21;
    s32 var_r0_22;
    s32 var_r0_23;
    s32 var_r0_24;
    s32 var_r0_25;
    s32 var_r0_26;
    s32 var_r0_27;
    s32 var_r0_28;
    s32 var_r0_29;
    s32 var_r0_2;
    s32 var_r0_30;
    s32 var_r0_3;
    s32 var_r0_4;
    s32 var_r0_5;
    s32 var_r0_6;
    s32 var_r0_7;
    s32 var_r0_8;
    s32 var_r0_9;
    s32 var_r1;
    s32 var_r4;
    s32 var_r4_2;
    s32 var_r4_3;
    s32 var_r4_4;
    s32 var_r5;
    s32 var_r5_2;
    s32 var_r5_3;
    s32 var_r5_4;
    s32 var_r6_4;
    s32 var_r6_5;
    s32 var_sb;
    s32 var_sb_2;
    s32 var_sb_3;
    s32 var_sb_4;
    s32 var_sl;
    s32 var_sl_2;
    s32 var_sl_3;
    s32 var_sl_4;
    u16 temp_r1_10;
    u16 temp_r2_4;
    u16 var_r7;
    u32 var_r7_4;
    u8 *temp_r1_12;
    u8 *var_r6_7;
    u8 temp_r0_14;
    u8 temp_r0_15;
    u8 temp_r0_17;
    u8 temp_r0_18;
    u8 temp_r0_20;
    u8 temp_r0_22;
    u8 temp_r0_5;
    u8 temp_r0_7;
    u8 temp_r0_9;
    u8 temp_r1_13;
    u8 temp_r1_14;
    u8 temp_r1_2;
    u8 temp_r1_3;
    u8 temp_r1_5;
    u8 temp_r1_6;
    u8 temp_r2;
    u8 temp_r2_2;
    u8 temp_r2_6;
    u8 temp_r2_9;
    u8 var_r6;
    u8 var_r6_10;
    u8 var_r6_2;
    u8 var_r6_3;
    u8 var_r6_6;
    u8 var_r6_8;
    u8 var_r6_9;
    void *temp_r0;
    void *temp_r1;
    void *var_r0_15;

    sp20 = (u32)param1;
    temp_r0 = &gUnknown_080D5E64 + 0xC;
    subroutine_arg0.unk0 = (s32)gUnknown_080D5E64.unk0;
    subroutine_arg0.unk4 = (s32)gUnknown_080D5E64.unk4;
    subroutine_arg0.unk8 = (s32)gUnknown_080D5E64.unk8;
    temp_r1 = &subroutine_arg0 + 0xC;
    subroutine_arg0.unkC = (s32)gUnknown_080D5E64.unkC;
    temp_r1->unk4 = (s32)temp_r0->unk4;
    temp_r1->unk8 = (s32)temp_r0->unk8;
    temp_r1->unkC = (s32)temp_r0->unkC;
    (temp_r1 + 0xC)->unk4 = (s32)(temp_r0 + 0xC)->unk4;
    switch (sp20) {
        case 0:
            sp24 = 0;
            var_r7 = 0x80;
            sp8C = &subroutine_arg0 + 4;
            sp2C = boss->strc10C;
            sp30 = &boss->strc10C[0].qOffsetY;
            do {
                temp_r3 = sp24 * 8;
                sp2C[sp24].qOffsetX = boss->qUnk9C + (*(&subroutine_arg0 + temp_r3) << 8);
                *(sp30 + (sp24 * 0x18)) = boss->qUnkA0 + (*(sp8C + temp_r3) << 8);
                boss->strc10C[sp24].unk14 = var_r7;
                var_r6 = 0;
                sp90 = sp24 + 1;
            loop_4:
                temp_r0_2 = (var_r6 * 0x14) + (sp24 * 0x78);
                *(boss->strc16C[0] + temp_r0_2) = boss->qUnk9C;
                *(temp_r0_2 + &boss->strc16C[0][0].qWorldY) = boss->qUnkA0;
                var_r6 += 1;
                if ((u32)var_r6 <= 5U) {
                    goto loop_4;
                }
                sp24 = (u32)(u8)sp90;
                var_r7 += 0x100;
            } while (sp24 <= 3U);
            break;
        case 3:
            sp24 = 0;
            sp34 = &boss->strc10C[2].filler8[0xC];
            sp38 = boss->strc10C;
            sp48 = &boss->strc10C[1].filler8[0xC];
        loop_8:
            sp28 = 0;
            temp_r7 = (sp24 << 8) | 0x80;
            var_r0 = gSineTable[temp_r7 + 0x100] * 0x1C;
            if (var_r0 < 0) {
                var_r0 += 0x3F;
            }
            temp_r0_3 = var_r0 >> 6;
            var_r0_2 = gSineTable[temp_r7] * 0x1C;
            if (var_r0_2 < 0) {
                var_r0_2 += 0x3F;
            }
            temp_r0_4 = var_r0_2 >> 6;
            if (sp24 == 1) {
                if (boss->fillerBA[0x28] == 0) {
                    temp_r1_2 = boss->fillerBA[2];
                    var_r5 = 0 - (*(temp_r1_2 + &gUnknown_080D5D64) << 8);
                    var_r4 = *(temp_r1_2 + &gUnknown_080D5DE4) << 8;
                    sp80 = &boss->fillerBA[2];
                    if ((u32)temp_r1_2 <= 0xCU) {
                        *sp48 = 0x180;
                    } else {
                        *sp48 = 0x200;
                    }
                } else {
                    temp_r1_3 = boss->fillerBA[0xB];
                    var_r5 = 0 - (*(temp_r1_3 + &gUnknown_080D5D64) << 8);
                    var_r4 = *(temp_r1_3 + &gUnknown_080D5DE4) << 8;
                    *sp48 = 0x300;
                    sp80 = &boss->fillerBA[2];
                }
                sp38[sp24].qOffsetX = boss->qUnk9C + temp_r0_3 + var_r5;
                *(&boss->strc10C[0].qOffsetY + (sp24 * 0x18)) = boss->qUnkA0 + temp_r0_4 + var_r4;
                sp28 = (s32)(u8)(sp28 + 1);
                var_r6_2 = 0;
                sp90 = sp24 + 1;
                sp4C = sp24 * 0x78;
                sp50 = boss->strc16C[0];
                sp54 = &boss->strc16C[0][0].qWorldY;
                do {
                    temp_r0_5 = sp80[sp28];
                    if (temp_r0_5 != 0) {
                        temp_r1_4 = (var_r6_2 * 0x14) + sp4C;
                        *(sp50 + temp_r1_4) = (boss->qUnk9C + temp_r0_3) - (*(temp_r0_5 + &gUnknown_080D5D64) << 8);
                        *(sp54 + temp_r1_4) = boss->qUnkA0 + temp_r0_4 + (*(temp_r0_5 + &gUnknown_080D5DE4) << 8);
                    } else {
                        temp_r0_6 = (var_r6_2 * 0x14) + sp4C;
                        *(sp50 + temp_r0_6) = boss->qUnk9C;
                        *(sp54 + temp_r0_6) = boss->qUnkA0;
                    }
                    var_r6_2 += 1;
                    sp28 = (s32)(u8)(sp28 + 1);
                } while ((u32)var_r6_2 <= 5U);
            } else {
                sp90 = sp24 + 1;
                if (sp24 != 2) {

                } else {
                    if (boss->fillerBA[0x28] == 0) {
                        temp_r1_5 = boss->fillerBA[2];
                        var_r5_2 = 0 - (*(temp_r1_5 + &gUnknown_080D5D64) << 8);
                        var_r4_2 = 0 - (*(temp_r1_5 + &gUnknown_080D5DE4) << 8);
                        sp80 = &boss->fillerBA[2];
                        if ((u32)temp_r1_5 <= 0xCU) {
                            *sp34 = 0x280;
                        } else {
                            *sp34 = 0x200;
                        }
                    } else {
                        temp_r1_6 = boss->fillerBA[0xC];
                        var_r5_2 = 0 - (*(temp_r1_6 + &gUnknown_080D5D64) << 8);
                        var_r4_2 = 0 - (*(temp_r1_6 + &gUnknown_080D5DE4) << 8);
                        *sp34 = 0x100;
                        sp80 = &boss->fillerBA[2];
                    }
                    sp38[sp24].qOffsetX = boss->qUnk9C + temp_r0_3 + var_r5_2;
                    *(&boss->strc10C[0].qOffsetY + (sp24 * 0x18)) = boss->qUnkA0 + temp_r0_4 + var_r4_2;
                    sp28 = (s32)(u8)(sp28 + 1);
                    var_r6_3 = 0;
                    sp90 = sp24 + 1;
                    sp3C = sp24 * 0x78;
                    sp40 = boss->strc16C[0];
                    sp44 = &boss->strc16C[0][0].qWorldY;
                    do {
                        temp_r0_7 = sp80[sp28];
                        if (temp_r0_7 != 0) {
                            temp_r1_7 = (var_r6_3 * 0x14) + sp3C;
                            *(sp40 + temp_r1_7) = (boss->qUnk9C + temp_r0_3) - (*(temp_r0_7 + &gUnknown_080D5D64) << 8);
                            *(sp44 + temp_r1_7) = (boss->qUnkA0 + temp_r0_4) - (*(temp_r0_7 + &gUnknown_080D5DE4) << 8);
                        } else {
                            temp_r0_8 = (var_r6_3 * 0x14) + sp3C;
                            *(sp40 + temp_r0_8) = boss->qUnk9C;
                            *(sp44 + temp_r0_8) = boss->qUnkA0;
                        }
                        var_r6_3 += 1;
                        sp28 = (s32)(u8)(sp28 + 1);
                    } while ((u32)var_r6_3 <= 5U);
                }
            }
            temp_r0_9 = (u8)sp90;
            sp24 = (u32)temp_r0_9;
            if ((u32)temp_r0_9 <= 3U) {
                goto loop_8;
            }
            break;
        case 4:
            sp24 = 0;
        loop_41:
            temp_r7_2 = (sp24 << 8) | 0x80;
            if (sp24 == 0) {
                temp_r3_2 = boss->unkD8;
                sp90 = 1;
                if (temp_r3_2 == 0) {

                } else {
                    var_r0_3 = gSineTable[temp_r7_2 + 0x100] * 0x1C;
                    if (var_r0_3 < 0) {
                        var_r0_3 += 0x3F;
                    }
                    var_r0_4 = gSineTable[temp_r7_2] * 0x1C;
                    if (var_r0_4 < 0) {
                        var_r0_4 += 0x3F;
                    }
                    var_sl = (var_r0_3 >> 6) + boss->qUnk9C;
                    var_sb = (var_r0_4 >> 6) + boss->qUnkA0;
                    temp_r0_10 = temp_r3_2 / 6;
                    var_r7_2 = 0x140;
                    temp_r0_11 = (s32)boss->unkE8 >> 8;
                    var_r6_4 = 6;
                    sp94 = 0;
                    sp5C = (u32)(temp_r0_11 << 0x10) >> 0x12;
                    do {
                        temp_r2 = var_r6_4 - 1;
                        boss->strc16C[0][temp_r2].qWorldX = var_sl;
                        *(&boss->strc16C[0][0].qWorldY + (temp_r2 * 0x14)) = var_sb;
                        var_r0_5 = gSineTable[var_r7_2 + 0x100] * temp_r0_10;
                        if (var_r0_5 < 0) {
                            var_r0_5 += 0x3FFF;
                        }
                        var_r0_6 = gSineTable[var_r7_2] * temp_r0_10;
                        if (var_r0_6 < 0) {
                            var_r0_6 += 0x3FFF;
                        }
                        var_sl += var_r0_5 >> 0xE;
                        var_sb += var_r0_6 >> 0xE;
                        if (var_r6_4 == 1) {
                            var_r7_2 = (var_r7_2 + sp5C) & 0x3FF;
                        } else if ((var_r6_4 >= 1) && (var_r6_4 <= 3)) {
                            var_r7_2 = (var_r7_2 - sp5C) & 0x3FF;
                        } else {
                            var_r7_2 = (var_r7_2 + (u16)temp_r0_11) & 0x3FF;
                        }
                        var_r6_4 = (s32)temp_r2;
                    } while (var_r6_4 != 0);
                    goto block_82;
                }
            } else {
                sp90 = sp24 + 1;
                if (sp24 != 3) {

                } else {
                    temp_r3_3 = boss->unkD4;
                    if (temp_r3_3 == 0) {

                    } else {
                        var_r0_7 = gSineTable[temp_r7_2 + 0x100] * 0x1C;
                        if (var_r0_7 < 0) {
                            var_r0_7 += 0x3F;
                        }
                        var_r0_8 = gSineTable[temp_r7_2] * 0x1C;
                        if (var_r0_8 < 0) {
                            var_r0_8 += 0x3F;
                        }
                        var_sl = (var_r0_7 >> 6) + boss->qUnk9C;
                        var_sb = (var_r0_8 >> 6) + boss->qUnkA0;
                        temp_r0_12 = temp_r3_3 / 6;
                        var_r7_2 = 0x2C0;
                        temp_r0_13 = (s32)boss->unkE4 >> 8;
                        var_r6_5 = 6;
                        sp94 = 6;
                        sp58 = (u32)(temp_r0_13 << 0x10) >> 0x12;
                        do {
                            temp_r2_2 = var_r6_5 - 1;
                            boss->strc16C[0][temp_r2_2].unk168 = var_sl;
                            *(&boss->strc16C[0][0].qWorldY + ((temp_r2_2 * 0x14) + 0x168)) = var_sb;
                            var_r0_9 = gSineTable[var_r7_2 + 0x100] * temp_r0_12;
                            if (var_r0_9 < 0) {
                                var_r0_9 += 0x3FFF;
                            }
                            var_r0_10 = gSineTable[var_r7_2] * temp_r0_12;
                            if (var_r0_10 < 0) {
                                var_r0_10 += 0x3FFF;
                            }
                            var_sl += var_r0_9 >> 0xE;
                            var_sb += var_r0_10 >> 0xE;
                            if (var_r6_5 == 1) {
                                var_r7_2 = (var_r7_2 - sp58) & 0x3FF;
                            } else if ((var_r6_5 >= 1) && (var_r6_5 <= 3)) {
                                var_r7_2 = (var_r7_2 + sp58) & 0x3FF;
                            } else {
                                var_r7_2 = (var_r7_2 - (u16)temp_r0_13) & 0x3FF;
                            }
                            var_r6_5 = (s32)temp_r2_2;
                        } while (var_r6_5 != 0);
                    block_82:
                        temp_r1_8 = (sp94 + sp24) * 8;
                        (boss + temp_r1_8)->unk120 = var_r7_2;
                        *(boss->strc10C + temp_r1_8) = var_sl;
                        *(&boss->strc10C[0].qOffsetY + temp_r1_8) = var_sb;
                    }
                }
            }
            temp_r0_14 = (u8)sp90;
            sp24 = (u32)temp_r0_14;
            if ((u32)temp_r0_14 <= 3U) {
                goto loop_41;
            }
            break;
        case 1:
            temp_r0_15 = boss->fillerBA[0x29];
            sp24 = (u32)temp_r0_15;
            temp_r2_3 = temp_r0_15 << 8;
            var_r0_11 = gSineTable[temp_r2_3 + 0x180] * 0x1C;
            if (var_r0_11 < 0) {
                var_r0_11 += 0x3F;
            }
            var_r0_12 = gSineTable[temp_r2_3 + 0x80] * 0x1C;
            if (var_r0_12 < 0) {
                var_r0_12 += 0x3F;
            }
            var_sl_2 = (var_r0_11 >> 6) + boss->qUnk9C;
            var_sb_2 = (var_r0_12 >> 6) + boss->qUnkA0;
            temp_r0_16 = (s32)boss->unkD4 / 6;
            temp_r2_4 = boss->unkCC;
            var_r0_13 = gSineTable[temp_r2_4 + 0x100] * temp_r0_16;
            sp84 = &boss->fillerBA[0x12];
            if (var_r0_13 < 0) {
                var_r0_13 += 0x3FFF;
            }
            var_r0_14 = gSineTable[temp_r2_4] * temp_r0_16;
            if (var_r0_14 < 0) {
                var_r0_14 += 0x3FFF;
            }
            var_r6_6 = 6;
            sp94 = sp24 * 2;
            do {
                temp_r0_17 = var_r6_6 - 1;
                temp_r1_9 = (temp_r0_17 * 0x14) + (sp24 * 0x78);
                *(boss->strc16C[0] + temp_r1_9) = var_sl_2;
                *(&boss->strc16C[0][0].qWorldY + temp_r1_9) = var_sb_2;
                var_sl_2 += var_r0_13 >> 0xE;
                var_sb_2 += var_r0_14 >> 0xE;
                var_r6_6 = temp_r0_17;
            } while (var_r6_6 != 0);
            var_r1 = (sp94 + sp24) * 8;
            var_r0_15 = boss + var_r1;
            var_r6_7 = sp84;
        block_108:
            var_r0_15->unk120 = (u16)*var_r6_7;
            *(boss->strc10C + var_r1) = var_sl_2;
            *(&boss->strc10C[0].qOffsetY + var_r1) = var_sb_2;
            break;
        case 2:
            temp_r0_18 = boss->fillerBA[0x29];
            sp24 = (u32)temp_r0_18;
            temp_r2_5 = temp_r0_18 << 8;
            var_r0_16 = gSineTable[temp_r2_5 + 0x180] * 0x1C;
            if (var_r0_16 < 0) {
                var_r0_16 += 0x3F;
            }
            var_r0_17 = gSineTable[temp_r2_5 + 0x80] * 0x1C;
            if (var_r0_17 < 0) {
                var_r0_17 += 0x3F;
            }
            var_sl_2 = (var_r0_16 >> 6) + boss->qUnk9C;
            var_sb_2 = (var_r0_17 >> 6) + boss->qUnkA0;
            temp_r0_19 = (s32)boss->unkD4 / 6;
            temp_r1_10 = boss->unkCC;
            var_r0_18 = gSineTable[temp_r1_10 + 0x100] * temp_r0_19;
            if (var_r0_18 < 0) {
                var_r0_18 += 0x3FFF;
            }
            var_r0_19 = gSineTable[temp_r1_10] * temp_r0_19;
            if (var_r0_19 < 0) {
                var_r0_19 += 0x3FFF;
            }
            var_r6_8 = 6;
            sp94 = sp24 * 2;
            sp88 = &boss->fillerBA[0x14];
            do {
                temp_r0_20 = var_r6_8 - 1;
                temp_r1_11 = (temp_r0_20 * 0x14) + (sp24 * 0x78);
                *(boss->strc16C[0] + temp_r1_11) = var_sl_2;
                *(&boss->strc16C[0][0].qWorldY + temp_r1_11) = var_sb_2;
                var_sl_2 += var_r0_18 >> 0xE;
                var_sb_2 += var_r0_19 >> 0xE;
                var_r6_8 = temp_r0_20;
            } while (var_r6_8 != 0);
            var_r1 = (sp94 + sp24) * 8;
            var_r0_15 = boss + var_r1;
            var_r6_7 = sp88;
            goto block_108;
        case 5:
            var_r7_3 = (boss->rotation + 0x80) & 0x3FF;
            sp24 = 0;
            sp74 = &boss->qUnk9C;
            sp78 = &boss->qUnkA0;
            sp7C = &boss->fillerBA[1];
            sp60 = &boss->fillerBA[2];
        loop_110:
            var_r0_20 = gSineTable[var_r7_3 + 0x100] * 0x1C;
            if (var_r0_20 < 0) {
                var_r0_20 += 0x3F;
            }
            var_r0_21 = gSineTable[var_r7_3] * 0x1C;
            if (var_r0_21 < 0) {
                var_r0_21 += 0x3F;
            }
            var_sl_3 = (var_r0_20 >> 6) + *sp74;
            var_sb_3 = (var_r0_21 >> 6) + *sp78;
            var_r6_9 = 6;
            var_r3 = var_r7_3;
            sp94 = sp24 * 2;
            sp90 = sp24 + 1;
            sp64 = sp24 * 0x78;
            sp68 = boss->strc16C[0];
            do {
                temp_r1_12 = &sp60[var_r6_9];
                if (*temp_r1_12 != 0) {
                    temp_r1_13 = *temp_r1_12;
                    var_r0_22 = temp_r1_13 * gSineTable[var_r3 + 0x100];
                    if (var_r0_22 < 0) {
                        var_r0_22 += 0x3F;
                    }
                    var_r5_3 = var_r0_22 >> 6;
                    var_r0_23 = temp_r1_13 * gSineTable[var_r3];
                    if (var_r0_23 < 0) {
                        var_r0_23 += 0x3F;
                    }
                    var_r4_3 = var_r0_23 >> 6;
                } else {
                    var_r5_3 = 0;
                    var_r4_3 = 0;
                }
                var_sl_3 += var_r5_3;
                var_sb_3 += var_r4_3;
                temp_r2_6 = var_r6_9 - 1;
                temp_r0_21 = (temp_r2_6 * 0x14) + sp64;
                *(sp68 + temp_r0_21) = var_sl_3;
                *(temp_r0_21 + &boss->strc16C[0][0].qWorldY) = var_sb_3;
                var_r3 = (var_r3 + 0x20) & 0x3FF;
                var_r6_9 = temp_r2_6;
            } while (var_r6_9 != 0);
            if (*sp60 != 0) {
                temp_r1_14 = *sp60;
                var_r0_24 = temp_r1_14 * gSineTable[var_r3 + 0x100];
                if (var_r0_24 < 0) {
                    var_r0_24 += 0x3F;
                }
                var_r5_4 = var_r0_24 >> 6;
                var_r0_25 = temp_r1_14 * gSineTable[var_r3];
                if (var_r0_25 < 0) {
                    var_r0_25 += 0x3F;
                }
                var_r4_4 = var_r0_25 >> 6;
            } else {
                var_r5_4 = 0;
                var_r4_4 = 0;
            }
            if ((*sp7C == 0) && (*sp60 == 0)) {
                (((sp94 + sp24) * 8) + boss)->unk120 = var_r7_3;
            } else {
                (((sp94 + sp24) * 8) + boss)->unk120 = var_r3;
            }
            temp_r2_7 = (sp94 + sp24) * 8;
            *(boss->strc10C + temp_r2_7) = var_sl_3 + var_r5_4;
            *(&boss->strc10C[0].qOffsetY + temp_r2_7) = var_sb_3 + var_r4_4;
            var_r7_3 = (var_r7_3 + 0x100) & 0x3FF;
            temp_r0_22 = (u8)sp90;
            sp24 = (u32)temp_r0_22;
            if ((u32)temp_r0_22 <= 3U) {
                goto loop_110;
            }
            break;
        case 6:
            sp24 = 2;
            temp_r2_8 = boss->unkD4;
            if (temp_r2_8 == 0) {

            } else {
                var_r0_26 = gSineTable[0x380] * 0x1C;
                if (var_r0_26 < 0) {
                    var_r0_26 += 0x3F;
                }
                var_r0_27 = gSineTable[0x280] * 0x1C;
                if (var_r0_27 < 0) {
                    var_r0_27 += 0x3F;
                }
                var_sl_4 = (var_r0_26 >> 6) + boss->qUnk9C;
                var_sb_4 = (var_r0_27 >> 6) + boss->qUnkA0;
                temp_r0_23 = temp_r2_8 / 6;
                var_r7_4 = (u32)(boss->unkE8 << 8) >> 0x10;
                var_r0_28 = boss->unkE4;
                if (var_r0_28 < 0) {
                    var_r0_28 += 0xFF;
                }
                var_r6_10 = 6;
                sp94 = 4;
                sp6C = boss->strc16C[0];
                sp70 = &boss->strc16C[0][0].qWorldY;
                do {
                    temp_r2_9 = var_r6_10 - 1;
                    sp6C[temp_r2_9].unkF0 = var_sl_4;
                    *(sp70 + ((temp_r2_9 * 0x14) + 0xF0)) = var_sb_4;
                    var_r0_29 = gSineTable[var_r7_4 + 0x100] * temp_r0_23;
                    if (var_r0_29 < 0) {
                        var_r0_29 += 0x3FFF;
                    }
                    var_r0_30 = gSineTable[var_r7_4] * temp_r0_23;
                    if (var_r0_30 < 0) {
                        var_r0_30 += 0x3FFF;
                    }
                    var_sl_4 += var_r0_29 >> 0xE;
                    var_sb_4 += var_r0_30 >> 0xE;
                    var_r7_4 = (var_r7_4 + ((u32)(var_r0_28 << 8) >> 0x10)) & 0x3FF;
                    var_r6_10 = temp_r2_9;
                } while (var_r6_10 != 0);
                temp_r1_15 = (sp94 + sp24) * 8;
                (boss + temp_r1_15)->unk120 = (s16)var_r7_4;
                *(boss->strc10C + temp_r1_15) = var_sl_4;
                *(&boss->strc10C[0].qOffsetY + temp_r1_15) = var_sb_4;
            }
            break;
    }
    boss->unkC = sp20;
    return 0;
}

void sub_878_8083A44(UltimateGemerl *boss, u8 param1)
{
    Player *temp_r2;
    s16 temp_r0_3;
    s16 temp_r1_3;
    s32 *temp_r4_3;
    s32 *temp_r5_2;
    s32 temp_r0_2;
    s32 temp_r1_2;
    s32 temp_r1_4;
    s32 temp_r3;
    s32 temp_r4;
    s32 temp_r4_2;
    s32 temp_r5;
    s32 temp_r6;
    s32 var_r2;
    u16 var_r1;
    u32 var_r0;
    u32 var_r0_2;
    u8 temp_r0;
    u8 temp_r1;
    u8 var_sl;

    temp_r1 = param1;
    temp_r2 = boss->players[0];
    switch (temp_r1) { /* irregular */
        case 1:
            temp_r0 = boss->fillerBA[0x29];
            boss->unkCE = sa2__sub_8004418(
                (s16)(((s32)temp_r2->qWorldY >> 8) - ((s32) * (&boss->strc10C[0].qOffsetY + (temp_r0 * 0x18)) >> 8)),
                (s16)((s16)(((s32)temp_r2->qWorldX >> 8) + (u16)gCamera.unk6A) - ((s32)boss->strc10C[temp_r0].qOffsetX >> 8)));
            return;
        case 0:
            temp_r4 = temp_r2->qWorldX + (gCamera.unk6A << 8);
            temp_r5 = temp_r2->qWorldY;
            var_sl = 1;
            if (temp_r5 <= (s32)boss->qUnkA0) {
                var_sl = 2;
            }
            temp_r1_2 = boss->qUnk9C;
            if (temp_r4 <= (s32)(temp_r1_2 + 0xFFFF5800)) {
                var_r1 = (temp_r1_2 >> 8) - 0xA8;
                var_r2 = var_sl * 2;
            } else {
                var_r2 = var_sl * 2;
                temp_r0_2 = boss->strc10C[var_sl].qOffsetX;
                if (temp_r4 >= temp_r0_2) {
                    var_r0 = temp_r0_2 << 8;
                } else {
                    var_r0 = temp_r4 << 8;
                }
                var_r1 = (u16)(var_r0 >> 0x10);
            }
            temp_r4_2 = boss->qUnkA0;
            if (temp_r5 <= (s32)(temp_r4_2 + 0xFFFFE000)) {
                var_r0_2 = ((temp_r4_2 >> 8) - 0x20) << 0x10;
            } else if (temp_r5 >= (s32)(temp_r4_2 + 0x2000)) {
                var_r0_2 = ((temp_r4_2 >> 8) + 0x20) << 0x10;
            } else {
                var_r0_2 = temp_r5 << 8;
            }
            temp_r1_3 = (s16)var_r1;
            temp_r0_3 = (s16)(var_r0_2 >> 0x10);
            temp_r3 = (var_r2 + var_sl) * 8;
            temp_r5_2 = boss->strc10C + temp_r3;
            temp_r4_3 = &boss->strc10C[0].qOffsetY + temp_r3;
            boss->unkCC = sa2__sub_8004418((s16)(temp_r0_3 - ((s32)*temp_r4_3 >> 8)), (s16)(temp_r1_3 - ((s32)*temp_r5_2 >> 8)));
            temp_r1_4 = (temp_r1_3 << 8) - *temp_r5_2;
            temp_r6 = (temp_r0_3 << 8) - *temp_r4_3;
            boss->unkD0 = (s32)Sqrt((temp_r1_4 * temp_r1_4) + (temp_r6 * temp_r6));
            boss->unkD4 = 0;
            boss->unk144 = 0x800;
            boss->fillerBA[0x29] = var_sl;
            return;
    }
}

void sub_878_8083BE4(UltimateGemerl *boss)
{
    Sprite *temp_r0_11;
    Sprite *temp_r0_9;
    s16 temp_r0_10;
    s16 temp_r0_2;
    s16 temp_r0_3;
    s16 temp_r0_4;
    s16 temp_r0_5;
    s16 temp_r0_6;
    s16 temp_r0_7;
    s16 var_r0_2;
    s16 var_r0_5;
    s32 temp_r0_8;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 temp_r1_4;
    s32 var_r0;
    s32 var_r0_4;
    u16 temp_r1;
    u8 *var_r1;
    u8 temp_r0;
    u8 temp_r1_5;
    u8 var_r0_3;
    u8 var_r1_2;
    u8 var_r1_3;

    temp_r1 = (u16)boss->unk8;
    switch (temp_r1) { /* switch 1; irregular */
        case 0x136: /* switch 1 */
        block_67:
            sub_878_8082E2C(boss, 2U);
            temp_r0 = boss->fillerBA[0x29];
            sub_808587C((u16)(s16)(((s32)boss->strc10C[temp_r0].qOffsetX >> 8) - gCamera.x),
                        (u16)(s16)(((s32) * (&boss->strc10C[0].qOffsetY + (temp_r0 * 0x18)) >> 8) - gCamera.y), (s16)boss->unkCE);
            if (boss->unk2 == 0) {
                temp_r0_2 = (u16)boss->unk4 - 1;
                boss->unk4 = temp_r0_2;
                if ((temp_r0_2 << 0x10) == 0) {
                    goto block_74;
                }
            } else {
                if (boss->unkE4 != 0) {
                    var_r0 = boss->unkCE + 8;
                } else {
                    var_r0 = boss->unkCE - 8;
                }
                boss->unkCE = (u16)(var_r0 & 0x3FF);
                temp_r1_2 = boss->unkE8 + 8;
                boss->unkE8 = temp_r1_2;
                if (temp_r1_2 > 0x5FF) {
                block_74:
                    boss->unk8 = 0x140;
                }
            }
            sub_808717C(boss);
            return;
        case 0x14: /* switch 1 */
            sub_878_8082E2C(boss, 1U);
            temp_r0_3 = (u16)boss->unk4 - 1;
            boss->unk4 = temp_r0_3;
            temp_r0_4 = temp_r0_3;
            switch (temp_r0_4) { /* switch 2; irregular */
                case 0: /* switch 2 */
                    var_r0_2 = 0xC8;
                block_84:
                    boss->unk8 = var_r0_2;
                    return;
                case 10: /* switch 2 */
                    sub_878_8083A44(boss, 1U);
                    return;
            }
            break;
        case 0xA: /* switch 1 */
            temp_r0_5 = (u16)boss->unk4 - 1;
            boss->unk4 = temp_r0_5;
            temp_r0_6 = temp_r0_5;
            if (temp_r0_6 == 0) {
                boss->unk8 = 0x64;
                m4aSongNumStart(0x240U);
            } else if (temp_r0_6 == 0xA) {
                sub_878_8083A44(boss, 0U);
            }
            sub_878_8082E2C(boss, 0U);
            return;
        case 0xC8: /* switch 1 */
            boss->unk8 = 0x12C;
            if ((u32)boss->lives > 2U) {
                boss->unk4 = 0x78;
                var_r0_3 = 0;
            } else {
                if ((u32)boss->unkCE <= 0x1FFU) {
                    var_r1 = &boss->fillerBA[0x2A];
                    var_r0_4 = 1;
                } else {
                    var_r1 = &boss->fillerBA[0x2A];
                    var_r0_4 = 0;
                }
                *var_r1 = var_r0_4;
                boss->unkE8 = 0;
                var_r0_3 = 1;
            }
            boss->unk2 = var_r0_3;
            m4aSongNumStart(0x241U);
            sub_80870E4(0U);
            sub_878_8082E2C(boss, 2U);
            return;
        case 0x64: /* switch 1 */
            temp_r1_3 = boss->unkD4;
            if ((s32)boss->unkD0 > temp_r1_3) {
                boss->unkD4 = (s32)(temp_r1_3 + boss->unk144);
            } else {
                boss->unk4 = 0x3C;
                var_r0_5 = 0x14;
            block_80:
                boss->unk8 = var_r0_5;
            }
        block_81:
            sub_878_8082E2C(boss, 1U);
            return;
        case 0x12C: /* switch 1 */
            gDispCnt |= 0x2000;
            gWinRegs->unk0 = 0xA0;
            gWinRegs[2] = 0xF0;
            gWinRegs[4] = 0x3F;
            gWinRegs[5] = 0x18;
            gBldRegs.bldCnt = 0x3FBF;
            gBldRegs.bldAlpha = 8;
            gBldRegs.bldY = 8;
            boss->unk8 = 0x136;
            goto block_67;
        case 0x140: /* switch 1 */
            gDispCnt &= 0xDFFF;
            gWinRegs[4] = 0;
            gWinRegs[5] = 0;
            gBldRegs.bldCnt = 0;
            gBldRegs.bldAlpha = 0;
            gBldRegs.bldY = 0;
            gFlags &= ~4;
            var_r0_5 = 0x1F4;
            goto block_80;
        case 0x1F4: /* switch 1 */
            temp_r1_4 = boss->unkD4;
            if (temp_r1_4 != 0) {
                boss->unkD4 = (s32)(temp_r1_4 - boss->unk144);
            } else {
                var_r0_5 = 0x3F2;
                goto block_80;
            }
            goto block_81;
        case 0x7D0: /* switch 1 */
            boss->unk1 = 0;
            return;
        case 0x1770: /* switch 1 */
            temp_r0_7 = (u16)boss->unk4 - 1;
            boss->unk4 = temp_r0_7;
            var_r0_2 = temp_r0_7;
            if (var_r0_2 == 0) {
                goto block_84;
            }
            break;
        case 0x0: /* switch 1 */
            boss->fillerBA[0x28] = (u8)temp_r1;
            boss->fillerBA[0x29] = (u8)temp_r1;
            temp_r0_8 = (gPseudoRandom * 0x196225) + 0x3C6EF35F;
            gPseudoRandom = temp_r0_8;
            boss->unkF2 = (u16)temp_r0_8;
            boss->unk2 = 0;
            /* fallthrough */
        case 0x3F2: /* switch 1 */
            boss->unk8 = 0x3E8;
            boss->unk4 = 0x3C;
            var_r1_2 = 0;
            do {
                temp_r0_9 = &boss->spr3B4[var_r1_2];
                temp_r0_9->anim = 0x4FE;
                temp_r0_9->variant = 1;
                var_r1_2 += 1;
            } while ((u32)var_r1_2 <= 3U);
            /* fallthrough */
        case 0x3E8: /* switch 1 */
            temp_r0_10 = (u16)boss->unk4 - 1;
            boss->unk4 = temp_r0_10;
            if ((temp_r0_10 << 0x10) != 0) {
                return;
            }
            temp_r1_5 = boss->fillerBA[0x28];
            if ((((u32)temp_r1_5 <= 4U) && ((1 << temp_r1_5) & boss->unkF2)) || (temp_r1_5 == 0)) {
                boss->fillerBA[0x28] += 1;
                boss->unk4 = 0x3C;
                var_r1_3 = 0;
                do {
                    temp_r0_11 = &boss->spr3B4[var_r1_3];
                    temp_r0_11->anim = 0x4FE;
                    temp_r0_11->variant = 0;
                    var_r1_3 += 1;
                } while ((u32)var_r1_3 <= 3U);
                var_r0_2 = 0xA;
            } else {
                var_r0_2 = 0x7D0;
            }
            goto block_84;
    }
}

void sub_878_8083F8C(UltimateGemerl *boss)
{
    s32 sp0;
    u32 sp4;
    Sprite *temp_r0_10;
    Sprite *temp_r0_14;
    s16 temp_r0_12;
    s16 temp_r0_13;
    s16 temp_r0_15;
    s16 temp_r0_19;
    s16 temp_r0_7;
    s16 temp_r2;
    s16 var_r0;
    s32 temp_r0_20;
    s32 temp_r1_4;
    s32 temp_r4_2;
    u16 temp_r0;
    u16 temp_r0_2;
    u16 temp_r0_5;
    u16 temp_r0_6;
    u16 temp_r1;
    u32 var_r3;
    u32 var_r3_6;
    u8 *temp_r0_18;
    u8 *temp_r1_2;
    u8 *temp_r1_3;
    u8 *temp_r1_5;
    u8 *temp_r1_6;
    u8 *temp_r4;
    u8 *temp_sb;
    u8 *var_r1_3;
    u8 temp_r0_11;
    u8 temp_r0_16;
    u8 temp_r0_17;
    u8 temp_r0_3;
    u8 temp_r0_4;
    u8 temp_r0_8;
    u8 temp_r0_9;
    u8 var_r1;
    u8 var_r1_2;
    u8 var_r3_2;
    u8 var_r3_3;
    u8 var_r3_4;
    u8 var_r3_5;

    temp_r1 = (u16)boss->unk8;
    switch (temp_r1) { /* switch 1; irregular */
        case 0xC8: /* switch 1 */
            sub_878_8082E2C(boss, 3U);
            var_r3 = 1;
        loop_42:
            temp_sb = &boss->strc10C[var_r3].filler8[0xA];
            temp_r0 = boss->strc10C[var_r3].unk12;
            switch (temp_r0) { /* switch 2; irregular */
                case 0: /* switch 2 */
                    temp_r0_2 = boss->strc10C[var_r3].unk10 - 1;
                    boss->strc10C[var_r3].unk10 = temp_r0_2;
                    if ((temp_r0_2 << 0x10) == 0) {
                        boss->strc10C[var_r3].unk10 = 0x1EU;
                        boss->strc10C[var_r3].unk12 = 0xAU;
                    } else if (boss->strc10C[var_r3].filler8[0xE] == 0) {
                        temp_r1_2 = &(&boss->fillerBA[0xA])[var_r3];
                        temp_r0_3 = *temp_r1_2 + 1;
                        *temp_r1_2 = temp_r0_3;
                        if ((u32)temp_r0_3 > 0x69U) {
                            goto block_54;
                        }
                    } else {
                        temp_r1_3 = &(&boss->fillerBA[0xA])[var_r3];
                        temp_r0_4 = *temp_r1_3 - 1;
                        *temp_r1_3 = temp_r0_4;
                        if ((u32)temp_r0_4 <= 0x14U) {
                        block_54:
                            boss->strc10C[var_r3].filler8[0xE] ^= 1;
                        }
                    }
                    break;
                case 10: /* switch 2 */
                    temp_r4 = &boss->strc10C[var_r3].filler8[8];
                    temp_r0_5 = boss->strc10C[var_r3].unk10 - 1;
                    boss->strc10C[var_r3].unk10 = temp_r0_5;
                    if ((temp_r0_5 << 0x10) == 0) {
                        if ((boss + var_r3)->unk1 != 0) {
                            boss->strc10C[var_r3].unk10 = 1U;
                        } else {
                            sp4 = var_r3;
                            ExtraBoss_CreateMissile(boss, var_r3);
                            *temp_r4 = 0x1E;
                            *temp_sb = 0x14;
                        block_61:
                            var_r3 = sp4;
                        }
                    }
                    break;
                case 20: /* switch 2 */
                    temp_r0_6 = boss->strc10C[var_r3].unk10 - 1;
                    boss->strc10C[var_r3].unk10 = temp_r0_6;
                    temp_r2 = (s16)temp_r0_6;
                    if (temp_r2 == 0) {
                        temp_r4_2 = (0x196225 * gPseudoRandom) + 0x3C6EF35F;
                        gPseudoRandom = temp_r4_2;
                        sp0 = (s32)temp_r2;
                        sp4 = var_r3;
                        boss->strc10C[var_r3].unk10 = (u16) * ((((u32)temp_r4_2 % 10U) * 2) + &gUnknown_080D5D50);
                        temp_r1_4 = (0x196225 * temp_r4_2) + 0x3C6EF35F;
                        gPseudoRandom = temp_r1_4;
                        boss->strc10C[var_r3].filler8[0xE] = temp_r1_4 & 1;
                        boss->strc10C[var_r3].unk12 = (u16)temp_r2;
                        goto block_61;
                    }
                    break;
            }
            var_r3 = (u32)(u8)(var_r3 + 1);
            if (var_r3 <= 2U) {
                goto loop_42;
            }
            if (((boss->unk4 == 0) || (temp_r0_7 = (u16)boss->unk4 - 1, boss->unk4 = temp_r0_7, ((temp_r0_7 << 0x10) == 0)))
                && (boss->unk2 == 0)) {
                boss->unk8 = 0xD2;
                return;
            }
            return;
        case 0x1F4: /* switch 1 */
            var_r3_2 = 0;
            if ((u32)boss->fillerBA[1] > 0U) {
                do {
                    temp_r1_5 = &(&boss->fillerBA[2])[var_r3_2];
                    temp_r0_8 = *temp_r1_5;
                    if (temp_r0_8 != 0) {
                        *temp_r1_5 = temp_r0_8 - 1;
                    }
                    var_r3_2 += 1;
                } while ((u32)var_r3_2 < (u32)boss->fillerBA[1]);
            }
            temp_r0_9 = boss->fillerBA[2];
            if (temp_r0_9 == 0) {
                boss->unk1 = temp_r0_9;
                var_r1 = 0;
                do {
                    temp_r0_10 = &boss->spr3B4[var_r1];
                    temp_r0_10->anim = 0x4FE;
                    temp_r0_10->variant = 1;
                    var_r1 += 1;
                } while ((u32)var_r1 <= 3U);
            }
        block_82:
            sub_878_8082E2C(boss, 3U);
            return;
        case 0xD2: /* switch 1 */
            var_r3_3 = 1;
            do {
                temp_r1_6 = &(&boss->fillerBA[0xA])[var_r3_3];
                temp_r0_11 = *temp_r1_6;
                if ((u32)temp_r0_11 <= 0x77U) {
                    *temp_r1_6 = temp_r0_11 + 1;
                }
                var_r3_3 += 1;
            } while ((u32)var_r3_3 <= 2U);
            if ((boss->unkC4 & 0xFFFF00) == 0x787800) {
                boss->fillerBA[0x28] = 0;
                boss->unk8 = 0x1F4;
            }
            goto block_82;
        case 0x1FE: /* switch 1 */
            temp_r0_12 = (u16)boss->unk4 - 1;
            boss->unk4 = temp_r0_12;
            temp_r0_13 = temp_r0_12;
            if (temp_r0_13 == 0) {
                boss->unk8 = temp_r0_13;
            }
            sub_878_8082E2C(boss, 3U);
            break;
        case 0x0: /* switch 1 */
            boss->fillerBA[1] = (u8)temp_r1;
            var_r3_4 = 0;
            do {
                (&boss->fillerBA[2])[var_r3_4] = 0;
                (&boss->fillerBA[0xA])[var_r3_4] = 0;
                var_r3_4 += 1;
            } while ((u32)var_r3_4 <= 6U);
            boss->fillerBA[0x28] = 0;
            boss->unk3 = 0;
            boss->unk2 = 0;
            boss->unk4 = 1;
            boss->unk8 = 0x64;
            m4aSongNumStart(0x240U);
            var_r1_2 = 0;
            do {
                temp_r0_14 = &boss->spr3B4[var_r1_2];
                temp_r0_14->anim = 0x4FE;
                temp_r0_14->variant = 0;
                var_r1_2 += 1;
            } while ((u32)var_r1_2 <= 3U);
            sub_878_8082E2C(boss, 0U);
            return;
        case 0x64: /* switch 1 */
            temp_r0_15 = (u16)boss->unk4 - 1;
            boss->unk4 = temp_r0_15;
            if ((temp_r0_15 << 0x10) == 0) {
                boss->unk4 = 0x14;
                temp_r0_16 = boss->fillerBA[1];
                if ((u32)temp_r0_16 <= 6U) {
                    temp_r0_17 = temp_r0_16 + 1;
                    boss->fillerBA[1] = temp_r0_17;
                    if (temp_r0_17 == 6) {
                        boss->unk4 = (u16)boss->unk4 - 4;
                    }
                }
            }
            var_r3_5 = 0;
            if ((u32)boss->fillerBA[1] > 0U) {
                do {
                    temp_r0_18 = &(&boss->fillerBA[2])[var_r3_5];
                    *temp_r0_18 += 1;
                    var_r3_5 += 1;
                } while ((u32)var_r3_5 < (u32)boss->fillerBA[1]);
            }
            if ((u32)boss->fillerBA[2] <= 0x77U) {

            } else {
                boss->unk4 = 0x3C;
                boss->unk8 = 0x6E;
            }
            goto block_82;
        case 0x6E: /* switch 1 */
            temp_r0_19 = (u16)boss->unk4 - 1;
            boss->unk4 = temp_r0_19;
            if ((temp_r0_19 << 0x10) != 0) {

            } else {
                boss->fillerBA[0x28] = 1;
                var_r3_6 = 1;
                do {
                    (&boss->fillerBA[0xA])[var_r3_6] = 0x78;
                    temp_r0_20 = (gPseudoRandom * 0x196225) + 0x3C6EF35F;
                    gPseudoRandom = temp_r0_20;
                    sp4 = var_r3_6;
                    boss->strc10C[var_r3_6].unk10 = (u16) * ((((u32)temp_r0_20 % 10U) * 2) + &gUnknown_080D5D50);
                    if (var_r3_6 == 2) {
                        var_r1_3 = &boss->strc10C[2].filler8[0xC];
                        var_r0 = 0x100;
                    } else {
                        var_r1_3 = &boss->strc10C[var_r3_6].filler8[0xC];
                        var_r0 = 0x300;
                    }
                    *var_r1_3 = var_r0;
                    boss->strc10C[var_r3_6].filler8[0xE] = 1;
                    boss->strc10C[var_r3_6].unk12 = 0;
                    var_r3_6 = (u32)(u8)(var_r3_6 + 1);
                } while (var_r3_6 <= 2U);
                boss->unk4 = 0x258;
                boss->unk8 = 0xC8;
            }
            goto block_82;
    }
}

void sub_878_808439C(UltimateGemerl *boss)
{
    Sprite *temp_r0_5;
    Sprite *temp_r0_7;
    s16 temp_r0_3;
    s16 temp_r0_8;
    s16 temp_r4_2;
    s16 temp_r5;
    s16 var_r0_3;
    s16 var_r5;
    s16 var_r6;
    s32 *temp_r1_2;
    s32 *temp_r1_4;
    s32 *temp_r2;
    s32 *temp_r2_3;
    s32 temp_r0_6;
    s32 temp_r1;
    s32 temp_r1_3;
    s32 temp_r2_2;
    s32 temp_r4;
    s32 temp_r4_3;
    s32 temp_r4_4;
    s32 temp_r6;
    s32 temp_r6_2;
    s32 var_r0_2;
    s32 var_r0_4;
    s32 var_r1_2;
    s32 var_r1_5;
    u16 temp_r0;
    u16 temp_r0_2;
    u16 temp_r0_4;
    u16 temp_r3;
    u16 temp_r3_2;
    u16 var_r8;
    u16 var_sb;
    u8 *var_r1;
    u8 *var_r2;
    u8 *var_r3;
    u8 var_r0;
    u8 var_r1_3;
    u8 var_r1_4;

    var_r8 = saved_reg_r8;
    var_sb = saved_reg_r9;
    temp_r3 = (u16)boss->unk8;
    switch (temp_r3) { /* irregular */
        case 0x12C:
            gDispCnt |= 0x2100;
            gWinRegs->unk0 = 0xF0;
            gWinRegs[2] = 0xA0;
            gWinRegs[4] = 0x3F;
            gWinRegs[5] = 0x18;
            gBldRegs.bldCnt = 0x3841;
            gBldRegs.bldAlpha = 0xC0C;
            gBldRegs.bldY = 0xC;
            boss->fillerE[1] = 1;
            boss->spr814.anim = gUnknown_080D5D0C.unk0;
            boss->spr814.variant = (u8)gUnknown_080D5D0C.unk2;
            boss->spr814.prevVariant = 0xFF;
            boss->unkCC = 0U;
            m4aSongNumStart(0x23EU);
            boss->unk8 = 0x14A;
        block_48:
            temp_r0 = boss->unkCC + 4;
            boss->unkCC = temp_r0;
            if ((u32)temp_r0 > 0xFFU) {
                if (boss->fillerBA[0x28] == 0) {
                    var_r0 = 5;
                    var_r1 = &boss->fillerBA[0x12] + 0x21;
                } else {
                    var_r0 = 6;
                    var_r1 = &boss->fillerBA[0x33];
                }
                *var_r1 = var_r0;
                boss->unk4 = 0xB4;
                boss->spr814.anim = gUnknown_080D5D0C.unk4;
                boss->spr814.variant = (u8)gUnknown_080D5D0C.unk6;
                boss->spr814.prevVariant = 0xFF;
                boss->unk8 = 0x154;
            }
            temp_r0_2 = ((s32)boss->qUnk9C >> 8) - gCamera.x;
            var_r0_2 = gSineTable[boss->unkCC] * 0x18;
            if (var_r0_2 < 0) {
                var_r0_2 += 0x3FFF;
            }
            temp_r4 = (s32)((temp_r0_2 << 0x10) + 0xFFA80000) >> 0x10;
            var_r5 = (s16)(u16)(((s32)boss->qUnkA0 >> 8) - gCamera.y);
            temp_r6 = var_r0_2 >> 0xE;
            sub_8085618((u16)temp_r4, (u16)var_r5, (s16)temp_r6);
            sub_8087188(boss, temp_r4, var_r5, temp_r6);
            sub_878_8082E2C(boss, 4U);
            var_r6 = (s16)temp_r0_2;
        block_62:
            gBgScrollRegs[0][0] = 0x158 - var_r6;
            gBgScrollRegs[0][1] = 0x18 - var_r5;
            return;
        case 0x6E:
            var_r1_2 = 2;
            if (boss->fillerBA[0x28] != 0) {
                var_r1_2 = 1;
            }
            temp_r2 = &boss->fillerBA[0x16] + (var_r1_2 * 4);
            temp_r1 = *temp_r2;
            if ((s32)boss->unkD0 > temp_r1) {
                *temp_r2 = temp_r1 + boss->unk144;
            } else {
                boss->unk4 = 0x3C;
                boss->unk8 = 0xC8;
            }
            temp_r1_2 = &boss->fillerBA[0x2A] + ((var_r1_2 - 1) * 4);
            *temp_r1_2 += 0x180;
        block_46:
            sub_878_8082E2C(boss, 4U);
            return;
        case 0xC8:
            temp_r0_3 = (u16)boss->unk4 - 1;
            boss->unk4 = temp_r0_3;
            if ((temp_r0_3 << 0x10) == 0) {
                sub_8078DB0(0x505, 0, 0x21C, 1U);
                boss->unk8 = 0x12C;
            }
            goto block_46;
        case 0x15E:
            if (boss->unkEE != 0) {
                boss->fillerBA[0x33] = 0;
                boss->spr814.anim = gUnknown_080D5D0C.unk0;
                boss->spr814.variant = (u8)gUnknown_080D5D0C.unk2;
                boss->spr814.prevVariant = 0xFF;
                var_r0_3 = 0x168;
            block_60:
                boss->unk8 = var_r0_3;
            }
        block_61:
            temp_r4_2 = ((s32)boss->qUnk9C >> 8) - gCamera.x;
            var_r6 = temp_r4_2;
            temp_r4_3 = (s32)((temp_r4_2 << 0x10) + 0xFFA80000) >> 0x10;
            var_r5 = ((s32)boss->qUnkA0 >> 8) - gCamera.y;
            sub_8085618((u16)temp_r4_3, (u16)var_r5, 0x18);
            sub_8087188(boss, temp_r4_3, var_r5, 0x18);
            sub_878_8082E2C(boss, 4U);
            goto block_62;
        case 0x14A:
            goto block_48;
        case 0x154:
            if (boss->unkEE != 0) {
                boss->fillerBA[0x33] = 4;
                var_r0_3 = 0x15E;
                goto block_60;
            }
            goto block_61;
        case 0x168:
            temp_r0_4 = boss->unkCC - 4;
            boss->unkCC = temp_r0_4;
            temp_r3_2 = temp_r0_4;
            if (temp_r3_2 == 0) {
                gDispCnt &= 0xDEFF;
                gWinRegs[4] = temp_r3_2;
                gWinRegs[5] = temp_r3_2;
                gBldRegs.bldCnt = temp_r3_2;
                gBldRegs.bldAlpha = temp_r3_2;
                gBldRegs.bldY = temp_r3_2;
                gFlags &= ~4;
                boss->spr814.anim = gUnknown_080D5D0C.unk8;
                boss->spr814.variant = (u8)gUnknown_080D5D0C.unkA;
                boss->spr814.prevVariant = 0xFF;
                boss->unk8 = 0x1F4;
            }
            if (boss->unkCC != 0) {
                var_r8 = ((s32)boss->qUnk9C >> 8) - gCamera.x;
                var_sb = ((s32)boss->qUnkA0 >> 8) - gCamera.y;
                var_r0_4 = gSineTable[boss->unkCC] * 0x18;
                if (var_r0_4 < 0) {
                    var_r0_4 += 0x3FFF;
                }
                temp_r4_4 = (s32)((var_r8 << 0x10) + 0xFFA80000) >> 0x10;
                temp_r5 = (s16)var_sb;
                temp_r6_2 = var_r0_4 >> 0xE;
                sub_8085618((u16)temp_r4_4, (u16)temp_r5, (s16)temp_r6_2);
                sub_8087188(boss, temp_r4_4, temp_r5, temp_r6_2);
            }
            sub_878_8082E2C(boss, 4U);
            gBgScrollRegs[0][0] = 0x158 - (s16)var_r8;
            gBgScrollRegs[0][1] = 0x18 - (s16)var_sb;
            return;
        case 0x1F4:
            temp_r2_2 = boss->unkD4;
            if (temp_r2_2 != 0) {
                boss->unkD4 = (s32)(temp_r2_2 - boss->unk144);
                boss->unkD8 = (s32)(boss->unkD8 - boss->unk144);
                var_r2 = &boss->fillerBA[0x1E] + 0xC;
                var_r3 = &boss->fillerBA[0x1A] + 0x14;
            } else {
                boss->fillerE[1] = (u8)temp_r2_2;
                boss->unk1 = (u8)temp_r2_2;
                var_r1_3 = 0;
                var_r2 = &boss->fillerBA[0x2A];
                var_r3 = &boss->fillerBA[0x2E];
                do {
                    temp_r0_5 = &boss->spr3B4[var_r1_3];
                    temp_r0_5->anim = 0x4FE;
                    temp_r0_5->variant = 1;
                    var_r1_3 += 1;
                } while ((u32)var_r1_3 <= 3U);
            }
            *var_r2 = (s32)(*var_r2 + 0xFFFFFE80);
            *var_r3 = (s32)(*var_r3 + 0xFFFFFE80);
            sub_878_8082E2C(boss, 4U);
            return;
        case 0x0:
            temp_r0_6 = (gPseudoRandom * 0x196225) + 0x3C6EF35F;
            gPseudoRandom = temp_r0_6;
            boss->fillerBA[0x28] = temp_r0_6 & 1;
            *(&boss->fillerBA[0x28] - 0x12) = 0x7800;
            boss->unkD4 = (s32)temp_r3;
            boss->unkD8 = (s32)temp_r3;
            boss->unk144 = 0x200;
            boss->unkE4 = (s32)temp_r3;
            boss->unkE8 = (s32)temp_r3;
            boss->unk4 = (s16)temp_r3;
            boss->unk8 = 0x64;
            m4aSongNumStart(0x239U);
            var_r1_4 = 0;
            do {
                temp_r0_7 = &boss->spr3B4[var_r1_4];
                temp_r0_7->anim = 0x4FE;
                temp_r0_7->variant = 0;
                var_r1_4 += 1;
            } while ((u32)var_r1_4 <= 3U);
            return;
        case 0xA:
            temp_r0_8 = (u16)boss->unk4 - 1;
            boss->unk4 = temp_r0_8;
            if ((temp_r0_8 << 0x10) != 0) {
                return;
            }
            boss->fillerBA[0x28] ^= 1;
            boss->unk8 = 0x64;
            return;
        case 0x64:
            var_r1_5 = 1;
            if (boss->fillerBA[0x28] != 0) {
                var_r1_5 = 2;
            }
            temp_r2_3 = &boss->fillerBA[0x16] + (var_r1_5 * 4);
            temp_r1_3 = *temp_r2_3;
            if ((s32)boss->unkD0 > temp_r1_3) {
                *temp_r2_3 = temp_r1_3 + boss->unk144;
            } else {
                m4aSongNumStart(0x239U);
                boss->unk8 = 0x6E;
            }
            temp_r1_4 = &boss->fillerBA[0x2A] + ((var_r1_5 - 1) * 4);
            *temp_r1_4 += 0x180;
            goto block_46;
    }
}

void sub_878_808491C(UltimateGemerl *boss)
{
    Sprite *temp_r0_5;
    Sprite *temp_r0_6;
    s16 var_r0;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 temp_r1_3;
    s32 temp_r1_4;
    s32 temp_r3;
    s32 var_r0_2;
    u16 temp_r2;
    u8 *temp_r1_2;
    u8 temp_r0;
    u8 temp_r0_2;
    u8 temp_r0_7;
    u8 var_r1;
    u8 var_r1_2;
    u8 var_r1_3;
    void *temp_r1;

    temp_r2 = (u16)boss->unk8;
    switch (temp_r2) { /* irregular */
        case 0xC8:
            boss->fillerBA[0x33] = 2;
            boss->unk8 = 0xD2;
            return;
        case 0x6E:
            temp_r0 = boss->fillerBA[1];
            if (temp_r0 != 0) {
                temp_r1 = boss + temp_r0;
                temp_r0_2 = temp_r1->unkBB - 1;
                temp_r1->unkBB = temp_r0_2;
                if ((temp_r0_2 << 0x18) == 0) {
                    boss->fillerBA[1] -= 1;
                }
            }
            temp_r0_3 = (boss->unk100 - gUnknown_080D5D20.unk8) & 0x3FFFF;
            boss->unk100 = temp_r0_3;
            boss->rotation = (u16)(temp_r0_3 >> 8);
            temp_r0_4 = boss->unk104 - gUnknown_080D5D20.unk8;
            boss->unk104 = temp_r0_4;
            if (temp_r0_4 <= 0) {
                boss->rotation = 0;
                m4aSongNumStop(0x214U);
                var_r1 = 0;
                do {
                    temp_r0_5 = &boss->spr3B4[var_r1];
                    temp_r0_5->anim = 0x4FE;
                    temp_r0_5->variant = 1;
                    var_r1 += 1;
                } while ((u32)var_r1 <= 3U);
                var_r0 = 0xC8;
            block_36:
                boss->unk8 = var_r0;
            }
        block_37:
            sub_878_8082E2C(boss, 5U);
            return;
        case 0xD2:
            if (boss->unkEE != 0) {
                boss->fillerBA[0x33] = 0;
                boss->unk1 = 0;
            }
            return;
        case 0x0:
            boss->rotation = temp_r2;
            boss->fillerBA[0] = 0;
            (&boss->rotation + 2)->unk1 = 0;
            var_r1_2 = 0;
            do {
                (&boss->fillerBA[2])[var_r1_2] = 0;
                var_r1_2 += 1;
            } while ((u32)var_r1_2 <= 6U);
            boss->fillerBA[0x33] = 1;
            boss->unk4 = 0;
            boss->unk8 = 0xA;
            return;
        case 0xA:
            if (boss->unkEE == 0) {
                return;
            }
            boss->fillerBA[0x33] = 0;
            boss->unk100 = 0;
            boss->unk104 = 0;
            m4aSongNumStart(0x214U);
            var_r1_3 = 0;
            do {
                temp_r0_6 = &boss->spr3B4[var_r1_3];
                temp_r0_6->anim = 0x4FE;
                temp_r0_6->variant = 0;
                var_r1_3 += 1;
            } while ((u32)var_r1_3 <= 3U);
            boss->unk8 = 0x64;
            return;
        case 0x64:
            if ((u32)boss->fillerBA[1] <= 5U) {
                temp_r1_2 = &(&boss->fillerBA[2])[boss->fillerBA[1]];
                temp_r0_7 = *temp_r1_2 + 1;
                *temp_r1_2 = temp_r0_7;
                if ((u32)temp_r0_7 > 0x17U) {
                    boss->fillerBA[1] += 1;
                }
            }
            boss->unk4 = (u16)boss->unk4 + 1;
            var_r0_2 = (s32)boss->unk104 >> 8;
            if (var_r0_2 < 0) {
                var_r0_2 += 0x3FF;
            }
            temp_r3 = *(((u32)((var_r0_2 >> 0xA) << 0x18) >> 0x16) + &gUnknown_080D5D20);
            temp_r1_3 = (boss->unk100 - temp_r3) & 0x3FFFF;
            boss->unk100 = temp_r1_3;
            boss->rotation = (u16)(temp_r1_3 >> 8);
            temp_r1_4 = boss->unk104 + temp_r3;
            boss->unk104 = temp_r1_4;
            if (temp_r1_4 > 0xBFFFF) {
                boss->unk104 = (s32)(temp_r1_4 + 0xFFF80000);
                var_r0 = 0x6E;
                goto block_36;
            }
            goto block_37;
    }
}

void sub_878_8084B2C(UltimateGemerl *boss)
{
    s16 temp_r0_2;
    s16 temp_r0_3;
    s16 temp_r0_4;
    s16 var_r0;
    u16 temp_r0;
    void *temp_r1;

    temp_r0 = (u16)boss->unk8;
    switch (temp_r0) { /* irregular */
        case 0x0:
            boss->unk4 = 0xF0;
            var_r0 = 0xA;
        block_16:
            boss->unk8 = var_r0;
            break;
        case 0xA:
            temp_r0_2 = (u16)boss->unk4 - 1;
            boss->unk4 = temp_r0_2;
            if ((temp_r0_2 << 0x10) == 0) {
                boss->unk4 = 0x78;
                var_r0 = 0x64;
                goto block_16;
            }
            break;
        case 0x64:
            if (1 & (u16)boss->unk4) {
                boss->unk108 ^= 1;
            }
            temp_r0_3 = (u16)boss->unk4 - 1;
            boss->unk4 = temp_r0_3;
            if ((temp_r0_3 << 0x10) == 0) {
                boss->unk4 = 0xB4;
                boss->fillerBA[0x33] = 8;
                temp_r1 = &boss->fillerBA[0x33] - 0x49;
                temp_r1->unk0 = 0xFFFFFE00;
                temp_r1->unk4 = 0xFFFFFF00;
                (temp_r1 + 4)->unk47 = 0x96;
                var_r0 = 0xC8;
                goto block_16;
            }
            break;
        case 0xC8:
            temp_r0_4 = (u16)boss->unk4 - 1;
            boss->unk4 = temp_r0_4;
            if ((temp_r0_4 << 0x10) == 0) {
                boss->unk108 = 0;
                boss->fillerBA[0x33] = 0;
                boss->unk12 = 0xBB8;
                var_r0 = 0x12C;
                goto block_16;
            }
            break;
    }
    sub_878_8082E2C(boss, boss->unkD);
}

void sub_878_8084BEC(UltimateGemerl *boss)
{
    u16 temp_r1;

    temp_r1 = (u16)boss->unk8;
    if (temp_r1 == 0) {
        boss->unk4 = 1;
        boss->unk8 = 0x3E8;
        if (0x2000 & gDispCnt) {
            gDispCnt &= 0xDEFF;
            gWinRegs[4] = temp_r1;
            gWinRegs[5] = temp_r1;
            gBldRegs.bldCnt = temp_r1;
            gBldRegs.bldAlpha = temp_r1;
            gBldRegs.bldY = temp_r1;
            gFlags &= ~4;
        }
    }
    sub_878_8082E2C(boss, boss->unkD);
}

void sub_878_8084C50(UltimateGemerl *boss)
{
    s16 temp_r0_4;
    s16 temp_r0_6;
    s16 temp_r0_7;
    s16 temp_r0_8;
    s16 temp_r5;
    s16 var_r0;
    s16 var_r0_2;
    s16 var_r0_3;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_5;
    s32 temp_r0_9;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 temp_r1_4;
    s32 temp_r1_5;
    s32 temp_r1_6;
    s32 temp_r1_7;
    s32 temp_r2;
    u16 temp_r0;
    u16 temp_r1;

    temp_r1 = boss->taskCutscene->data;
    temp_r0 = (u16)boss->unk8;
    switch (temp_r0) { /* irregular */
        case 0xA0:
            temp_r0_2 = boss->unkE4;
            if (temp_r0_2 != 0) {
                temp_r0_3 = temp_r0_2 + 0x400;
                boss->unkE4 = temp_r0_3;
                if (temp_r0_3 >= 0) {
                    boss->unkE4 = 0;
                }
            }
            temp_r2 = boss->unkE8;
            if ((temp_r2 >> 8) != 0x2C0) {
                boss->unkE8 = (s32)(temp_r2 + 0xFFFFFF00);
            }
            temp_r1_2 = boss->unkD4 + boss->unk144;
            boss->unkD4 = temp_r1_2;
            if (temp_r1_2 <= 0) {
                boss->unkD4 = 0;
                boss->unk4 = 0x3C;
                var_r0 = 0xC8;
            block_52:
                boss->unk8 = var_r0;
            }
        block_53:
            sub_878_8082E2C(boss, 6U);
            return;
        case 0x96:
            temp_r0_4 = (u16)boss->unk4 - 1;
            boss->unk4 = temp_r0_4;
            if ((temp_r0_4 << 0x10) == 0) {
                boss->unk144 = 0xFFFFFC00;
                var_r0 = 0xA0;
                goto block_52;
            }
            goto block_53;
        case 0xD2:
            temp_r1_3 = boss->unkA4 + 0x80;
            boss->unkA4 = temp_r1_3;
            temp_r0_5 = boss->unkFC + (temp_r1_3 >> 8);
            boss->unkFC = temp_r0_5;
            if (temp_r0_5 > 0xC7) {
                var_r0_2 = 0xDC;
            block_59:
                boss->unk8 = var_r0_2;
            }
            return;
        case 0xC8:
            temp_r0_6 = (u16)boss->unk4 - 1;
            boss->unk4 = temp_r0_6;
            temp_r5 = temp_r0_6;
            if (temp_r5 == 0) {
                boss->unkE0 = sa2__sub_8004418(-0x50, 0x78);
                boss->unkFC = (s32)temp_r5;
                *(&boss->unkFC - 0x58) = (s32)temp_r5;
                boss->fillerBA[0x33] = 3;
                var_r0_2 = 0xD2;
                goto block_59;
            }
            break;
        case 0xDC:
            gCurTask->main = (void (*)())Task_878_CallDestroy;
            var_r0_2 = 0x3E8;
            goto block_59;
        case 0x0:
            boss->unk4 = 0x78;
            var_r0_2 = 0xA;
            goto block_59;
        case 0xA:
            temp_r0_7 = (u16)boss->unk4 - 1;
            boss->unk4 = temp_r0_7;
            if ((temp_r0_7 << 0x10) != 0) {
                return;
            }
            var_r0_2 = 0x64;
            goto block_59;
        case 0x64:
            boss->unkD0 = 0x8C00;
            boss->unkD4 = 0;
            boss->unk144 = 0x400;
            boss->unkE4 = 0;
            boss->unkE8 = 0x36000;
            m4aSongNumStart(0x240U);
            var_r0_2 = 0x6E;
            goto block_59;
        case 0x6E:
            temp_r1_4 = boss->unkD4;
            if ((s32)boss->unkD0 > temp_r1_4) {
                boss->unkD4 = (s32)(temp_r1_4 + boss->unk144);
            } else {
                temp_r1->unk2C = 0x42E;
                boss->unk4 = 0x3C;
                boss->unk8 = 0x78;
            }
            boss->unkE4 = (s32)(boss->unkE4 + 0x180);
            goto block_53;
        case 0x78:
            temp_r0_8 = (u16)boss->unk4 - 1;
            boss->unk4 = temp_r0_8;
            if ((temp_r0_8 << 0x10) == 0) {
                var_r0 = 0x82;
                goto block_52;
            }
            goto block_53;
        case 0x82:
            temp_r1_5 = boss->unkE8 + 0xFFFFFE00;
            boss->unkE8 = temp_r1_5;
            if ((s32)(temp_r1_5 >> 8) <= 0x2E0) {
                temp_r1->unk2C = 0x438;
                var_r0_3 = 0x8C;
            block_41:
                boss->unk8 = var_r0_3;
            }
        block_42:
            sub_878_8082E2C(boss, 6U);
            temp_r1_6 = boss->strc10C[2].qOffsetX;
            temp_r1->unk14 = temp_r1_6;
            temp_r0_9 = boss->strc10C[2].qOffsetY;
            temp_r1->unk18 = temp_r0_9;
            temp_r1->unk30 = temp_r1_6;
            temp_r1->unk34 = temp_r0_9;
            return;
        case 0x8C:
            temp_r1_7 = boss->unkE4 + 0xFFFFF800;
            boss->unkE4 = temp_r1_7;
            if (temp_r1_7 <= 0xFFFF9600) {
                temp_r1->unk2C = 0x44C;
                boss->unk4 = 0x78;
                var_r0_3 = 0x96;
                goto block_41;
            }
            goto block_42;
    }
}

void sub_878_8084EB4(UltimateGemerl *boss)
{
    Player *temp_r1_3;
    Player *temp_r1_4;
    s16 temp_r0;
    s16 temp_r0_11;
    s16 temp_r0_13;
    s16 temp_r0_3;
    s16 temp_r0_4;
    s16 temp_r0_8;
    s16 temp_r0_9;
    s16 temp_r1_2;
    s16 temp_r2;
    s16 temp_r4;
    s16 var_r0;
    s16 var_r0_2;
    s32 temp_r0_5;
    s32 temp_r0_6;
    u16 temp_r0_10;
    u16 temp_r0_12;
    u16 temp_r1;
    u16 temp_r4_2;
    u32 temp_r0_7;
    u8 temp_r0_2;

    temp_r1 = (u16)boss->unk12;
    switch (temp_r1) { /* irregular */
        case 0x3F2:
            temp_r0 = (u16)boss->unk10 - 1;
            boss->unk10 = temp_r0;
            if ((temp_r0 << 0x10) != 0) {
                return;
            }
            sub_878_80851FC(boss, (u8)(boss->fillerE[0] + 0xA));
            m4aSongNumStart(0x221U);
            temp_r0_2 = boss->fillerE[0] + 1;
            boss->fillerE[0] = temp_r0_2;
            if ((u32)temp_r0_2 <= 5U) {
                boss->unk10 = 0xF;
                return;
            }
            boss->unk10 = 0x78;
            var_r0 = 0x3FC;
        block_70:
            boss->unk12 = var_r0;
            return;
            return;
        case 0x3E8:
            temp_r0_3 = (u16)boss->unk10 - 1;
            boss->unk10 = temp_r0_3;
            temp_r4 = temp_r0_3;
            if (temp_r4 != 0) {
                return;
            }
            VramFree(boss->vram1C);
            VramFree(boss->vram20);
            boss->vram1C = (u8 *)temp_r4;
            boss->vram20 = (u8 *)temp_r4;
            boss->vram24 = VramMalloc(0x74U);
            sub_878_80851FC(boss, 1U);
            m4aSongNumStart(0x221U);
            boss->unk10 = 0xF;
            boss->unk12 = 0x3F2;
            return;
        case 0xBB8:
            gBldRegs.bldCnt = 0x3FBF;
            gBldRegs.bldAlpha = 8;
            gBldRegs.bldY = 0;
            boss->unk10 = 8;
            boss->unk12 = 0xBC2;
            gPlayers->moveState |= 0x08000000;
            gPlayers[1].moveState |= 0x08000000;
            gMusicManagerState.fadeoutSpeed = 0x140;
            return;
        case 0x3FC:
            temp_r0_4 = (u16)boss->unk10 - 1;
            boss->unk10 = temp_r0_4;
            if ((temp_r0_4 << 0x10) != 0) {
                return;
            }
            m4aSongNumStart(0x221U);
            var_r0 = 0x7D0;
            goto block_70;
        case 0x7D0:
            if (gStageData.timer & 1) {
                temp_r0_5 = (0x196225 * gPseudoRandom) + 0x3C6EF35F;
                temp_r4_2 = 0x3FF & temp_r0_5;
                temp_r0_6 = (0x196225 * temp_r0_5) + 0x3C6EF35F;
                gPseudoRandom = temp_r0_6;
                temp_r0_7 = (u32)temp_r0_6 % 48U;
                BossExtra_CreateExplosion((s32)((boss->qUnk9C + ((u32)(temp_r0_7 * gSineTable[temp_r4_2 + 0x100]) >> 6)) << 8) >> 0x10,
                                          (s32)((boss->qUnkA0 + ((u32)(temp_r0_7 * gSineTable[temp_r4_2]) >> 6)) << 8) >> 0x10, 0x300U,
                                          temp_r4_2, 0x1E, boss->vram24);
            }
            temp_r0_8 = (u16)boss->unk10 + 1;
            boss->unk10 = temp_r0_8;
            if (!(temp_r0_8 & 0x3F)) {
                m4aSongNumStart(0x221U);
                return;
            }
            break;
        case 0xBC2:
            temp_r0_9 = (u16)boss->unk10 - 1;
            boss->unk10 = temp_r0_9;
            if ((temp_r0_9 << 0x10) == 0) {
                temp_r0_10 = gBldRegs.bldY + 1;
                gBldRegs.bldY = temp_r0_10;
                if (temp_r0_10 == 0x10) {
                    boss->unk12 = 0x1388;
                    boss->unk10 = 0x78;
                    return;
                }
                boss->unk10 = 8;
                return;
            }
            break;
        case 0x1388:
            sub_805602C();
            var_r0 = 0x1392;
            goto block_70;
        case 0x0:
            if ((sub_878_80867FC(boss, 0U) << 0x18) == 0) {
                return;
            }
            sub_878_80854B8(boss, 0U);
            return;
        case 0xA:
            temp_r0_11 = (u16)boss->unk10 - 1;
            boss->unk10 = temp_r0_11;
            temp_r2 = temp_r0_11;
            if (temp_r2 != 0) {
                if ((sub_878_80867FC(boss, 1U) << 0x18) == 0) {
                    return;
                }
                sub_878_80854B8(boss, 1U);
                return;
            }
            boss->unkEF = 0x64;
            boss->unk12 = temp_r2;
            return;
        case 0x64:
            temp_r0_12 = boss->unk14 - 1;
            boss->unk14 = temp_r0_12;
            temp_r1_2 = (s16)temp_r0_12;
            if (temp_r1_2 != 0) {
                return;
            }
            if (boss->lives != 0) {
                temp_r0_13 = (u16)boss->unk10 - 0x78;
                boss->unk10 = temp_r0_13;
                if ((s32)(temp_r0_13 << 0x10) <= 0) {
                    boss->unk10 = temp_r1_2;
                    boss->unk12 = temp_r1_2;
                } else {
                    boss->unk12 = 0xA;
                }
            } else {
                if (gStageData.gameMode == 5) {
                    if (gStageData.playerIndex != 0) {
                        var_r0_2 = 0x6E;
                    } else {
                        sub_8027674(1U, 0U);
                        goto block_44;
                    }
                } else {
                block_44:
                    sub_878_8085458(boss);
                    boss->unk10 = 0x78;
                    var_r0_2 = 0x3E8;
                }
                boss->unk12 = var_r0_2;
                boss->players[0]->unk48 = 1;
                boss->players[1]->unk48 = 1;
                temp_r1_3 = boss->players[0];
                temp_r1_3->moveState |= 0x08000000;
                temp_r1_4 = boss->players[1];
                temp_r1_4->moveState |= 0x08000000;
            }
            if ((u16)boss->unk12 == 0xA) {
                return;
            }
            boss->unkEF = 0x64;
            return;
    }
}

void sub_878_80851FC(UltimateGemerl *boss, u8 param1)
{
    s32 sp8;
    s32 spC;
    s32 sp10;
    s32 *sp14;
    s32 *temp_r0;
    s32 *temp_r3;
    s32 temp_r1_2;
    s32 temp_r4;
    s32 temp_r4_2;
    s32 temp_r5_2;
    s32 var_r0;
    s32 var_r0_2;
    u8 *temp_r4_3;
    u8 temp_r0_2;
    u8 temp_r0_3;
    u8 temp_r1;
    u8 temp_r5;
    u8 temp_r7;
    u8 var_r7;
    u8 var_sb;
    u8 var_sb_2;
    u8 var_sb_3;

    temp_r1 = param1;
    if (temp_r1 != 0) {
        if (temp_r1 != 1) {
            var_sb = 0;
            sp8 = 0x80;
            sp10 = temp_r1 - 0xA;
            sp14 = &boss->qUnk9C;
            do {
                temp_r7 = (u8)sp10;
                var_r0 = gSineTable[sp8 + 0x100] * 0x1C;
                if (var_r0 < 0) {
                    var_r0 += 0x3F;
                }
                spC = var_r0 >> 6;
                var_r0_2 = gSineTable[sp8] * 0x1C;
                if (var_r0_2 < 0) {
                    var_r0_2 += 0x3F;
                }
                temp_r1_2 = (temp_r7 * 0x14) + (var_sb * 0x78);
                temp_r0 = boss->strc16C[0] + temp_r1_2;
                temp_r4 = *temp_r0;
                if (temp_r4 == *sp14) {
                    temp_r3 = &boss->strc16C[0][0].qWorldY + temp_r1_2;
                    if (*temp_r3 == boss->qUnkA0) {
                        *temp_r0 = temp_r4 + spC;
                        *temp_r3 = boss->qUnkA0 + (var_r0_2 >> 6);
                    }
                }
                temp_r4_2 = (temp_r7 * 0x14) + (var_sb * 0x78);
                BossExtra_CreateExplosion((s32)(*(boss->strc16C[0] + temp_r4_2) << 8) >> 0x10,
                                          (s32)(*(&boss->strc16C[0][0].qWorldY + temp_r4_2) << 8) >> 0x10, 0x200U, 0U, 0x1E, boss->vram24);
                (boss + temp_r4_2)->unk17C = 0;
                var_sb += 1;
                sp8 = (s32)(u16)(sp8 + 0x100);
            } while ((u32)var_sb <= 3U);
            return;
        }
        var_sb_2 = 0;
        do {
            temp_r5 = var_sb_2;
            BossExtra_CreateExplosion((s32)(boss->strc10C[temp_r5].qOffsetX << 8) >> 0x10,
                                      (s32)(*(&boss->strc10C[0].qOffsetY + (temp_r5 * 0x18)) << 8) >> 0x10, 0x200U, 0U, 0x1E, boss->vram24);
            temp_r4_3 = &boss->strc10C[temp_r5].filler8[8];
            boss->strc10C[temp_r5].unk10 = 0;
            temp_r0_2 = var_sb_2 + 1;
            var_sb_2 = temp_r0_2;
        } while ((u32)temp_r0_2 <= 3U);
        return;
    }
    boss->unkD = boss->unkC;
    boss->fillerE[0] = temp_r1;
    var_sb_3 = 0;
    do {
        boss->strc10C[var_sb_3].unk10 = 1;
        var_r7 = 0;
        temp_r5_2 = var_sb_3 * 0x10;
    loop_5:
        (boss + ((var_r7 * 0x14) + (var_sb_3 * 0x78)))->unk17C = 1;
        var_r7 += 1;
        if ((u32)var_r7 <= 5U) {
            goto loop_5;
        }
        temp_r0_3 = var_sb_3 + 1;
        var_sb_3 = temp_r0_3;
    } while ((u32)temp_r0_3 <= 3U);
}

void sub_878_80853D8(UltimateGemerl *boss)
{
    Player *temp_r8;

    temp_r8 = boss->players[1];
    boss->vram6C = VramMalloc(0x40U);
    boss->unk72 = 0x12C;
    boss->spr74.tiles = VramMalloc(0x10U);
    boss->spr74.anim = 0x4F8;
    boss->spr74.variant = 0;
    boss->spr74.oamFlags = 0x440;
    boss->spr74.animCursor = 0;
    boss->spr74.qAnimDelay = 0;
    boss->spr74.prevVariant = 0xFF;
    boss->spr74.animSpeed = 0x10;
    boss->spr74.palId = 0;
    boss->spr74.hitboxes[0].index = -1;
    boss->spr74.frameFlags = 0x1400;
    boss->spr74.x = ((s32)temp_r8->qWorldX >> 8) - gCamera.x;
    boss->spr74.y = ((s32)temp_r8->qWorldY >> 8) - gCamera.y;
    UpdateSpriteAnimation(&boss->spr74);
}

void sub_878_8085458(UltimateGemerl *boss)
{
    boss->unk1 = 5;
    boss->unk4 = 1;
    boss->unk8 = 0;
    if (0x2000 & gDispCnt) {
        gDispCnt &= 0xDEFF;
        gWinRegs[4] = 0;
        gWinRegs[5] = 0;
        gBldRegs.bldCnt = 0;
        gBldRegs.bldAlpha = 0;
        gBldRegs.bldY = 0;
        gFlags &= ~4;
    }
    gStageData.unk4 = 6;
}

void sub_878_80854B8(UltimateGemerl *boss, u8 param1)
{
    u8 temp_r0;
    u8 temp_r0_2;
    u8 var_r0;

    if ((param1 << 0x18) == 0) {
        boss->unk10 = (s16)boss->unk5A;
        boss->unkEF = 0x32;
        boss->unk12 = 0xA;
        m4aSongNumStart(0x244U);
        if (gStageData.gameMode == 5) {
            if (gStageData.playerIndex == 0) {
                var_r0 = 5;
            } else {
                var_r0 = 6;
            }
            sub_8027674(var_r0, 0U);
        }
    } else {
        boss->unk14 = 0x78;
        sub_8078DB0(0x502, 0, 0x78, 0U);
        boss->unk12 = 0x64;
        m4aSongNumStart(0xEBU);
        temp_r0 = boss->lives;
        if ((temp_r0 == 0) || (temp_r0_2 = temp_r0 - 1, boss->lives = temp_r0_2, ((temp_r0_2 << 0x18) == 0))) {
            sub_878_80851FC(boss, 0U);
        }
        if (gStageData.difficulty == 0) {
            if (boss->lives == 6) {
                sub_80299D4(0x39U);
            }
        } else if (boss->lives == 5) {
            sub_80299D4(0x39U);
        }
        if (gStageData.gameMode == 5) {
            if (gStageData.playerIndex == 0) {
                sub_8027674(3U, (u16)boss->lives);
                return;
            }
            sub_8027674(4U, (u16)boss->lives);
        }
    }
}

void sub_8085588(u8 *param0, s16 param1, UltimateGemerl *boss)
{
    u32 temp_r0;

    *NULL = &gStageData.taskBoss;
    temp_r0 = (0x7F & param0->unk2) - 1;
    switch (temp_r0) {
        case 0:
            boss->lives = 0;
            sub_878_8085458(boss);
            boss->unk10 = 0x78;
            boss->unk12 = 0x3E8;
            return;
        case 2:
        case 3:
            if (boss->lives != (u8)(param0->unk3 | (param0->unk4 << 8))) {
                sub_878_80854B8(boss, 1U);
                return;
            }
        default:
            return;
        case 4:
        case 5:
            if ((u16)boss->unk12 == 0) {
                sub_878_80854B8(boss, 0U);
            }
            break;
    }
}

void sub_8085618(u16 param0, u16 param1, s16 param2)
{
    s16 sp4;
    s16 temp_r1;
    s16 temp_r3;
    u16 temp_r0;
    u16 temp_r0_2;
    u16 var_r1;
    u16 var_r2;
    u16 var_r4;

    var_r4 = (u16)param2;
    if (gBgOffsetsHBlankPrimary == gBgOffsetsBuffer) {
        sp4 = 0;
        (void *)0x040000D4->unk0 = &sp4;
        (void *)0x040000D4->unk4 = gBgOffsetsBuffer;
        (void *)0x040000D4->unk8 = 0x81000140;
    } else {
        sp4 = 0;
        (void *)0x040000D4->unk0 = &sp4;
        (void *)0x040000D4->unk4 = (u8(*)[0xA0][4])gBgOffsetsBuffer[1][0];
        (void *)0x040000D4->unk8 = 0x81000140;
    }
    if (var_r4 == 0) {
        var_r4 = 1;
    }
    temp_r3 = (s16)param1;
    temp_r1 = (s16)var_r4;
    temp_r0 = temp_r3 - temp_r1;
    var_r2 = temp_r0;
    if ((s32)(temp_r0 << 0x10) < 0) {
        var_r2 = 0;
    }
    temp_r0_2 = temp_r3 + temp_r1;
    var_r1 = temp_r0_2;
    if ((s32)(s16)temp_r0_2 > 0xA0) {
        var_r1 = 0xA0;
    }
    if (((s32)(s16)var_r2 > 0x9F) || ((s32)(var_r1 << 0x10) <= 0)) {
        gFlags |= 4;
        return;
    }
    sa2__sub_8007A08(0, 0U, (u8)var_r2, (u8)param0, (s32)(u8)var_r1);
}

void unused_80856DC(u16 param0, u16 param1, s16 param2)
{
    s16 sp8;
    s16 temp_r2;
    s16 temp_r4;
    u16 temp_r0;
    u16 temp_r0_2;
    u16 var_r1;
    u16 var_r2;
    u16 var_r2_2;

    var_r2 = (u16)param2;
    if (gBgOffsetsHBlankPrimary == gBgOffsetsBuffer) {
        sp8 = 0;
        (void *)0x040000D4->unk0 = &sp8;
        (void *)0x040000D4->unk4 = gBgOffsetsBuffer;
        (void *)0x040000D4->unk8 = 0x81000140;
    } else {
        sp8 = 0;
        (void *)0x040000D4->unk0 = &sp8;
        (void *)0x040000D4->unk4 = (u8(*)[0xA0][4])gBgOffsetsBuffer[1][0];
        (void *)0x040000D4->unk8 = 0x81000140;
    }
    if (var_r2 == 0) {
        var_r2 = 1;
    }
    temp_r4 = (s16)param1;
    temp_r2 = (s16)var_r2;
    temp_r0 = temp_r4 - temp_r2;
    var_r1 = temp_r0;
    if ((s32)(temp_r0 << 0x10) < 0) {
        var_r1 = 0;
    }
    temp_r0_2 = temp_r4 + temp_r2;
    var_r2_2 = temp_r0_2;
    if ((s32)(s16)temp_r0_2 > 0xA0) {
        var_r2_2 = 0xA0;
    }
    sa2__sub_80075D0(0U, (u8)var_r1, (u8)var_r2_2, (s16)param0, (u16)(s32)temp_r4, (u16)(s32)var_r2);
}

void sub_8085784(void)
{
    s16 sp4;

    if (gBgOffsetsHBlankPrimary == gBgOffsetsBuffer) {
        sp4 = 0;
        (void *)0x040000D4->unk0 = &sp4;
        (void *)0x040000D4->unk4 = gBgOffsetsBuffer;
        (void *)0x040000D4->unk8 = 0x81000140;
    } else {
        sp4 = 0;
        (void *)0x040000D4->unk0 = &sp4;
        (void *)0x040000D4->unk4 = (u8(*)[0xA0][4])gBgOffsetsBuffer[1][0];
        (void *)0x040000D4->unk8 = 0x81000140;
    }
    sa2__sub_8005FB4(0, 0, 0, 0x42, 0xA0);
    if (gBgOffsetsHBlankPrimary == gBgOffsetsBuffer) {
        sp4 = 0;
        (void *)0x040000D4->unk0 = &sp4;
        (void *)0x040000D4->unk4 = gBgOffsetsBuffer;
        (void *)0x040000D4->unk8 = 0x81000140;
    } else {
        sp4 = 0;
        (void *)0x040000D4->unk0 = &sp4;
        (void *)0x040000D4->unk4 = (u8(*)[0xA0][4])gBgOffsetsBuffer[1][0];
        (void *)0x040000D4->unk8 = 0x81000140;
    }
    sa2__sub_8005FB4(0, 0, 0, 0xE, 6);
}

void sub_808587C(u16 param0, u16 param1, s16 param2)
{
    ? sp4;
    s16 sp8;
    s16 temp_r0_10;
    s16 temp_r0_14;
    s16 temp_r0_21;
    s16 temp_r0_27;
    s16 temp_r1;
    s16 temp_r1_2;
    s16 temp_r1_3;
    s16 temp_r5;
    s16 temp_r5_2;
    s16 var_r8_3;
    s16 var_r8_4;
    s16 var_r8_5;
    s16 var_r8_6;
    s16 var_r8_7;
    s16 var_r8_8;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 var_r8;
    s32 var_r8_2;
    s8 *temp_r3_4;
    s8 *temp_r3_6;
    u16 temp_r0_12;
    u16 temp_r0_13;
    u16 temp_r0_16;
    u16 temp_r0_17;
    u16 temp_r0_19;
    u16 temp_r0_23;
    u16 temp_r0_24;
    u16 temp_r0_29;
    u16 temp_r0_30;
    u16 temp_r0_32;
    u16 temp_r0_33;
    u16 temp_r0_36;
    u16 temp_r0_37;
    u16 temp_r0_5;
    u16 temp_r0_6;
    u16 temp_r0_7;
    u16 temp_r0_8;
    u16 temp_r0_9;
    u16 temp_r6;
    u16 temp_r7;
    u16 var_r2_2;
    u16 var_r2_4;
    u16 var_r4;
    u16 var_r4_4;
    u32 temp_r0_18;
    u32 temp_r0_20;
    u32 temp_r0_25;
    u32 temp_r0_26;
    u32 temp_r0_31;
    u32 temp_r0_34;
    u32 temp_r0_35;
    u32 temp_r0_4;
    u32 var_r2;
    u32 var_r2_3;
    u32 var_r4_2;
    u32 var_r4_3;
    u32 var_r5;
    u32 var_r5_2;
    u32 var_r6;
    u32 var_r6_10;
    u32 var_r6_11;
    u32 var_r6_12;
    u32 var_r6_2;
    u32 var_r6_3;
    u32 var_r6_4;
    u32 var_r6_5;
    u32 var_r6_6;
    u32 var_r6_7;
    u32 var_r6_8;
    u32 var_r6_9;
    u8 *temp_r3_3;
    u8 *temp_r3_5;
    u8 *var_r3_10;
    u8 *var_r3_11;
    u8 *var_r3_4;
    u8 *var_r3_5;
    u8 *var_r3_7;
    u8 *var_r3_8;
    u8 *var_r3_9;
    u8 temp_r0_11;
    u8 temp_r0_15;
    u8 temp_r0_22;
    u8 temp_r0_28;
    u8 temp_r0_3;
    u8 temp_r1_4;
    u8 temp_r1_5;
    u8 temp_r1_6;
    u8 temp_r1_7;
    u8 var_r4_5;
    u8 var_r4_6;
    u8 var_r5_3;
    u8 var_r5_4;
    u8 var_r7;
    u8 var_r7_10;
    u8 var_r7_11;
    u8 var_r7_12;
    u8 var_r7_2;
    u8 var_r7_3;
    u8 var_r7_4;
    u8 var_r7_5;
    u8 var_r7_6;
    u8 var_r7_7;
    u8 var_r7_8;
    u8 var_r7_9;
    void *temp_r3;
    void *temp_r3_2;
    void *var_r3;
    void *var_r3_2;
    void *var_r3_3;
    void *var_r3_6;

    temp_r6 = param0;
    temp_r7 = param1;
    if (gBgOffsetsHBlankPrimary == gBgOffsetsBuffer) {
        sp8 = 0;
        (void *)0x040000D4->unk0 = &sp8;
        (void *)0x040000D4->unk4 = gBgOffsetsBuffer;
        (void *)0x040000D4->unk8 = 0x81000140;
    } else {
        sp8 = 0;
        (void *)0x040000D4->unk0 = &sp8;
        (void *)0x040000D4->unk4 = (u8(*)[0xA0][4])gBgOffsetsBuffer[1][0];
        (void *)0x040000D4->unk8 = 0x81000140;
    }
    gFlags |= 4;
    temp_r0 = temp_r6 << 0x10;
    if (((u32)temp_r6 <= 0xEFU) && (temp_r0_2 = temp_r7 << 0x10, temp_r1 = (s16)temp_r7, ((s32)temp_r1 <= 0x9F)) && ((s32)temp_r1 >= 0)) {
        temp_r0_3 = *((u8)((u16)param2 >> 5) + &gUnknown_080D5D30);
        if (3 & temp_r0_3) {
            gHBlankCopySize = 2;
            gHBlankCopyTarget = (void *)0x04000040;
        }
        switch (temp_r0_3) {
            case 0:
                temp_r0_4 = temp_r0_2 + 0xFFF80000;
                var_r2 = temp_r0_4 >> 0x10;
                if ((s32)temp_r0_4 < 0) {
                    var_r2 = 0;
                }
                temp_r0_5 = (s16)temp_r7 + 8;
                var_r4 = temp_r0_5;
                if ((s32)(s16)temp_r0_5 > 0xA0) {
                    var_r4 = 0xA0;
                }
                sa2__sub_8007A08(0, (u8)temp_r6, (u8)var_r2, 0xF0U, (s32)(u8)var_r4);
                return;
            case 1:
                var_r6 = (u32)((temp_r0_2 + 0xFFF90000) << 8) >> 0x18;
                var_r3 = M2C_ERROR(/* Read from unset register $r3 */) + (var_r6 * gHBlankCopySize);
                sp4.unk1 = 0U;
                sp4.unk0 = 0U;
                var_r7 = 0;
                var_r8 = 0;
                if (var_r6 <= 0x9FU) {
                    temp_r1_2 = (s16)((u32)(temp_r0 + 0x30000) >> 0x10);
                    do {
                        if (sp4.unk0 != 0) {
                            var_r3->unk0 = 0xF0;
                        } else {
                            temp_r0_6 = temp_r1_2 + *(((var_r7 + 0xE) * 2) + &gUnknown_080D5E84);
                            if ((s32)(s16)temp_r0_6 > 0xEF) {
                                sp4.unk0 = 1U;
                            }
                            var_r3->unk0 = (s8)temp_r0_6;
                        }
                        temp_r3 = var_r3 + 1;
                        if (sp4.unk1 != 0) {
                            var_r3->unk1 = 0xF0;
                            goto block_27;
                        }
                        temp_r0_7 = temp_r1_2 + *((var_r7 * 2) + &gUnknown_080D5E84);
                        if ((s32)(s16)temp_r0_7 > 0xEF) {
                            var_r3->unk1 = 0xF0;
                            var_r3 = temp_r3 + 1;
                            sp4.unk1 = 1U;
                        } else {
                            var_r3->unk1 = (s8)(temp_r0_7 + var_r8);
                        block_27:
                            var_r3 = temp_r3 + 1;
                        }
                        if (var_r7 == 0xD) {
                            var_r8 = 0xFFFA;
                        }
                        var_r6 = (u32)(u8)(var_r6 + 1);
                        var_r7 += 1;
                    } while (var_r6 <= 0x9FU);
                    return;
                }
                break;
            case 2:
                var_r6_2 = (u32)((temp_r0_2 + 0xFFFA0000) << 8) >> 0x18;
                var_r3_2 = M2C_ERROR(/* Read from unset register $r3 */) + (var_r6_2 * gHBlankCopySize);
                var_r4_2 = (u32)((temp_r0 + 0x60000) << 8) >> 0x18;
                var_r5 = var_r4_2;
                sp4.unk1 = 0U;
                sp4.unk0 = 0U;
                var_r7_2 = 0;
                if (var_r6_2 <= 0x9FU) {
                    do {
                        var_r3_2->unk0 = (s8)var_r5;
                        var_r3_2->unk1 = (s8)var_r4_2;
                        var_r3_2 = var_r3_2 + 1 + 1;
                        if (var_r5 <= 0xEFU) {
                            var_r5 = (u32)(u8)(var_r5 + 1);
                        }
                        if (sp4.unk0 != 0) {
                            if (var_r4_2 <= 0xEFU) {
                                var_r4_2 = (u32)(u8)(var_r4_2 + 1);
                            }
                        } else {
                            var_r4_2 = (u32)(u8)(var_r4_2 - 1);
                            var_r7_2 += 1;
                            if ((u32)var_r7_2 > 0xAU) {
                                sp4.unk0 = 1U;
                            }
                        }
                        var_r6_2 = (u32)(u8)(var_r6_2 + 1);
                    } while (var_r6_2 <= 0x9FU);
                    return;
                }
                break;
            case 3:
                var_r6_3 = (u32)((temp_r0_2 + 0xFFFD0000) << 8) >> 0x18;
                var_r3_3 = M2C_ERROR(/* Read from unset register $r3 */) + (var_r6_3 * gHBlankCopySize);
                sp4.unk1 = 0U;
                sp4.unk0 = 0U;
                var_r7_3 = 0;
                var_r8_2 = 0;
                if (var_r6_3 > 0x9FU) {
                    return;
                }
                temp_r1_3 = (s16)((u32)(temp_r0 + 0x70000) >> 0x10);
                do {
                    if (sp4.unk0 != 0) {
                        var_r3_3->unk0 = 0xF0;
                    } else {
                        temp_r0_8 = temp_r1_3 + *(((var_r7_3 + 7) * 2) + &gUnknown_080D5FC4);
                        if ((s32)(s16)temp_r0_8 > 0xEF) {
                            sp4.unk0 = 1U;
                        }
                        var_r3_3->unk0 = (s8)temp_r0_8;
                    }
                    temp_r3_2 = var_r3_3 + 1;
                    if (sp4.unk1 != 0) {
                        var_r3_3->unk1 = 0xF0;
                        goto block_55;
                    }
                    temp_r0_9 = temp_r1_3 + *((var_r7_3 * 2) + &gUnknown_080D5FC4);
                    if ((s32)(s16)temp_r0_9 > 0xEF) {
                        var_r3_3->unk1 = 0xF0;
                        var_r3_3 = temp_r3_2 + 1;
                        sp4.unk1 = 1U;
                    } else {
                        var_r3_3->unk1 = (s8)(temp_r0_9 + var_r8_2);
                    block_55:
                        var_r3_3 = temp_r3_2 + 1;
                    }
                    if (var_r7_3 == 6) {
                        var_r8_2 = 0xFFF2;
                    }
                    var_r6_3 = (u32)(u8)(var_r6_3 + 1);
                    var_r7_3 += 1;
                } while (var_r6_3 <= 0x9FU);
                return;
            case 4:
                var_r2_2 = temp_r7;
                if (temp_r0_2 < 0) {
                    var_r2_2 = 0;
                }
                sa2__sub_8007A08(0, (u8)(temp_r6 - 8), (u8)var_r2_2, (u8)(temp_r6 + 8), 0xA0);
                return;
            case 5:
                var_r6_4 = (u32)((temp_r0_2 + 0xFFFD0000) << 8) >> 0x18;
                var_r3_4 = M2C_ERROR(/* Read from unset register $r3 */) + (var_r6_4 * gHBlankCopySize);
                sp4.unk1 = 0U;
                sp4.unk0 = 0U;
                var_r7_4 = 0;
                var_r8_3 = 0;
                if (var_r6_4 > 0x9FU) {
                    return;
                }
                temp_r0_10 = (s16)((u32)(temp_r0 + 0xFFF90000) >> 0x10);
                do {
                    temp_r0_11 = sp4.unk1;
                    if (temp_r0_11 != 0) {
                        *var_r3_4 = 0;
                        goto block_71;
                    }
                    temp_r0_12 = var_r8_3 + (temp_r0_10 - *((var_r7_4 * 2) + &gUnknown_080D5FC4));
                    if ((s32)(temp_r0_12 << 0x10) < 0) {
                        *var_r3_4 = temp_r0_11;
                        var_r3_5 = var_r3_4 + 1;
                        sp4.unk1 = 1U;
                    } else {
                        *var_r3_4 = (u8)temp_r0_12;
                    block_71:
                        var_r3_5 = var_r3_4 + 1;
                    }
                    temp_r1_4 = sp4.unk0;
                    if (temp_r1_4 != 0) {
                        *var_r3_5 = 0;
                        goto block_77;
                    }
                    temp_r0_13 = temp_r0_10 - *(((var_r7_4 + 7) * 2) + &gUnknown_080D5FC4);
                    if ((s32)(temp_r0_13 << 0x10) < 0) {
                        *var_r3_5 = temp_r1_4;
                        var_r3_4 = var_r3_5 + 1;
                        sp4.unk0 = 1U;
                    } else {
                        *var_r3_5 = (u8)temp_r0_13;
                    block_77:
                        var_r3_4 = var_r3_5 + 1;
                    }
                    if (var_r7_4 == 6) {
                        var_r8_3 = 0xE;
                    }
                    var_r6_4 = (u32)(u8)(var_r6_4 + 1);
                    var_r7_4 += 1;
                } while (var_r6_4 <= 0x9FU);
                return;
            case 6:
                var_r6_5 = (u32)((temp_r0_2 + 0xFFFA0000) << 8) >> 0x18;
                var_r3_6 = M2C_ERROR(/* Read from unset register $r3 */) + (var_r6_5 * gHBlankCopySize);
                var_r4_3 = (u32)((temp_r0 + 0xFFFA0000) << 8) >> 0x18;
                var_r5_2 = var_r4_3;
                sp4.unk1 = 0U;
                sp4.unk0 = 0U;
                var_r7_5 = 0;
                if (var_r6_5 > 0x9FU) {
                    return;
                }
                do {
                    var_r3_6->unk0 = (s8)var_r5_2;
                    var_r3_6->unk1 = (s8)var_r4_3;
                    var_r3_6 = var_r3_6 + 1 + 1;
                    if (var_r4_3 != 0) {
                        var_r4_3 = (u32)(u8)(var_r4_3 - 1);
                    }
                    if (sp4.unk1 != 0) {
                        if (var_r5_2 != 0) {
                            var_r5_2 = (u32)(u8)(var_r5_2 - 1);
                        }
                    } else {
                        var_r5_2 = (u32)(u8)(var_r5_2 + 1);
                        var_r7_5 += 1;
                        if ((u32)var_r7_5 > 0xAU) {
                            sp4.unk1 = 1U;
                        }
                    }
                    var_r6_5 = (u32)(u8)(var_r6_5 + 1);
                } while (var_r6_5 <= 0x9FU);
                return;
            case 7:
                var_r6_6 = (u32)((temp_r0_2 + 0xFFF90000) << 8) >> 0x18;
                var_r3_7 = M2C_ERROR(/* Read from unset register $r3 */) + (var_r6_6 * gHBlankCopySize);
                sp4.unk1 = 0U;
                sp4.unk0 = 0U;
                var_r7_6 = 0;
                var_r8_4 = 0;
                if (var_r6_6 > 0x9FU) {
                    return;
                }
                temp_r0_14 = (s16)((u32)(temp_r0 + 0xFFFD0000) >> 0x10);
                do {
                    temp_r0_15 = sp4.unk1;
                    if (temp_r0_15 != 0) {
                        *var_r3_7 = 0;
                        goto block_101;
                    }
                    temp_r0_16 = var_r8_4 + (temp_r0_14 - *((var_r7_6 * 2) + &gUnknown_080D5E84));
                    if ((s32)(temp_r0_16 << 0x10) < 0) {
                        *var_r3_7 = temp_r0_15;
                        var_r3_8 = var_r3_7 + 1;
                        sp4.unk1 = 1U;
                    } else {
                        *var_r3_7 = (u8)temp_r0_16;
                    block_101:
                        var_r3_8 = var_r3_7 + 1;
                    }
                    temp_r1_5 = sp4.unk0;
                    if (temp_r1_5 != 0) {
                        *var_r3_8 = 0;
                        goto block_107;
                    }
                    temp_r0_17 = temp_r0_14 - *(((var_r7_6 + 0xE) * 2) + &gUnknown_080D5E84);
                    if ((s32)(temp_r0_17 << 0x10) < 0) {
                        *var_r3_8 = temp_r1_5;
                        var_r3_7 = var_r3_8 + 1;
                        sp4.unk0 = 1U;
                    } else {
                        *var_r3_8 = (u8)temp_r0_17;
                    block_107:
                        var_r3_7 = var_r3_8 + 1;
                    }
                    if (var_r7_6 == 0xD) {
                        var_r8_4 = 6;
                    }
                    var_r6_6 = (u32)(u8)(var_r6_6 + 1);
                    var_r7_6 += 1;
                } while (var_r6_6 <= 0x9FU);
                return;
            case 8:
                temp_r0_18 = temp_r0_2 + 0xFFF80000;
                var_r2_3 = temp_r0_18 >> 0x10;
                if ((s32)temp_r0_18 < 0) {
                    var_r2_3 = 0;
                }
                temp_r0_19 = (s16)temp_r7 + 8;
                var_r4_4 = temp_r0_19;
                if ((s32)(s16)temp_r0_19 > 0xA0) {
                    var_r4_4 = 0xA0;
                }
                sa2__sub_8007A08(0, 0U, (u8)var_r2_3, (u8)temp_r6, (s32)(u8)var_r4_4);
                return;
            case 9:
                temp_r0_20 = (u32)(temp_r0 + 0xFFFD0000) >> 0x10;
                var_r6_7 = (u32)((temp_r0_2 + 0x70000) << 8) >> 0x18;
                var_r3_9 = M2C_ERROR(/* Read from unset register $r3 */) + (var_r6_7 * gHBlankCopySize);
                var_r3_9->unk1 = (s8)temp_r0_20;
                sp4.unk1 = 0U;
                sp4.unk0 = 0U;
                var_r7_7 = 0;
                var_r8_5 = 0;
                if (var_r6_7 == 0) {

                } else {
                    temp_r0_21 = (s16)temp_r0_20;
                    do {
                        temp_r0_22 = sp4.unk1;
                        if (temp_r0_22 != 0) {
                            *var_r3_9 = 0;
                            goto block_125;
                        }
                        temp_r0_23 = var_r8_5 + (temp_r0_21 - *((var_r7_7 * 2) + &gUnknown_080D5E84));
                        if ((s32)(temp_r0_23 << 0x10) < 0) {
                            *var_r3_9 = temp_r0_22;
                            var_r3_10 = var_r3_9 - 1;
                            sp4.unk1 = 1U;
                        } else {
                            *var_r3_9 = (u8)temp_r0_23;
                        block_125:
                            var_r3_10 = var_r3_9 - 1;
                        }
                        temp_r1_6 = sp4.unk0;
                        if (temp_r1_6 != 0) {
                            *var_r3_10 = 0;
                            goto block_131;
                        }
                        temp_r0_24 = temp_r0_21 - *(((var_r7_7 + 0xE) * 2) + &gUnknown_080D5E84);
                        if ((s32)(temp_r0_24 << 0x10) < 0) {
                            *var_r3_10 = temp_r1_6;
                            var_r3_9 = var_r3_10 - 1;
                            sp4.unk0 = 1U;
                        } else {
                            *var_r3_10 = (u8)temp_r0_24;
                        block_131:
                            var_r3_9 = var_r3_10 - 1;
                        }
                        if (var_r7_7 == 0xD) {
                            var_r8_5 = 6;
                        }
                        var_r6_7 = (u32)(u8)(var_r6_7 - 1);
                        var_r7_7 += 1;
                    } while (var_r6_7 != 0);
                }
            block_211:
                var_r3_9->unk1 = 0;
                break;
            case 10:
                temp_r0_25 = (u32)(temp_r0 + 0xFFFA0000) >> 0x10;
                var_r6_8 = (u32)((temp_r0_2 + 0x60000) << 8) >> 0x18;
                var_r3_9 = M2C_ERROR(/* Read from unset register $r3 */) + (var_r6_8 * gHBlankCopySize);
                var_r3_9->unk1 = (s8)temp_r0_25;
                var_r4_5 = (u8)temp_r0_25;
                var_r5_3 = var_r4_5;
                sp4.unk1 = 0U;
                sp4.unk0 = 0U;
                var_r7_8 = 0;
                if (var_r6_8 == 0) {

                } else {
                    do {
                        *var_r3_9 = var_r5_3;
                        temp_r3_3 = var_r3_9 - 1;
                        *temp_r3_3 = var_r4_5;
                        var_r3_9 = temp_r3_3 - 1;
                        if (var_r4_5 != 0) {
                            var_r4_5 -= 1;
                        }
                        if (sp4.unk1 != 0) {
                            if (var_r5_3 != 0) {
                                var_r5_3 -= 1;
                            }
                        } else {
                            var_r5_3 += 1;
                            var_r7_8 += 1;
                            if ((u32)var_r7_8 > 0xAU) {
                                sp4.unk1 = 1U;
                            }
                        }
                        var_r6_8 = (u32)(u8)(var_r6_8 - 1);
                    } while (var_r6_8 != 0);
                }
                goto block_211;
            case 11:
                temp_r0_26 = (u32)(temp_r0 + 0xFFF90000) >> 0x10;
                var_r6_9 = (u32)((temp_r0_2 + 0x30000) << 8) >> 0x18;
                var_r3_9 = M2C_ERROR(/* Read from unset register $r3 */) + (var_r6_9 * gHBlankCopySize);
                var_r3_9->unk1 = (s8)temp_r0_26;
                sp4.unk1 = 0U;
                sp4.unk0 = 0U;
                var_r7_9 = 0;
                var_r8_6 = 0;
                if (var_r6_9 == 0) {

                } else {
                    temp_r0_27 = (s16)temp_r0_26;
                    do {
                        temp_r0_28 = sp4.unk1;
                        if (temp_r0_28 != 0) {
                            *var_r3_9 = 0;
                            goto block_155;
                        }
                        temp_r0_29 = var_r8_6 + (temp_r0_27 - *((var_r7_9 * 2) + &gUnknown_080D5FC4));
                        if ((s32)(temp_r0_29 << 0x10) < 0) {
                            *var_r3_9 = temp_r0_28;
                            var_r3_11 = var_r3_9 - 1;
                            sp4.unk1 = 1U;
                        } else {
                            *var_r3_9 = (u8)temp_r0_29;
                        block_155:
                            var_r3_11 = var_r3_9 - 1;
                        }
                        temp_r1_7 = sp4.unk0;
                        if (temp_r1_7 != 0) {
                            *var_r3_11 = 0;
                            goto block_161;
                        }
                        temp_r0_30 = temp_r0_27 - *(((var_r7_9 + 7) * 2) + &gUnknown_080D5FC4);
                        if ((s32)(temp_r0_30 << 0x10) < 0) {
                            *var_r3_11 = temp_r1_7;
                            var_r3_9 = var_r3_11 - 1;
                            sp4.unk0 = 1U;
                        } else {
                            *var_r3_11 = (u8)temp_r0_30;
                        block_161:
                            var_r3_9 = var_r3_11 - 1;
                        }
                        if (var_r7_9 == 6) {
                            var_r8_6 = 0xE;
                        }
                        var_r6_9 = (u32)(u8)(var_r6_9 - 1);
                        var_r7_9 += 1;
                    } while (var_r6_9 != 0);
                }
                goto block_211;
            case 12:
                sa2__sub_8007A08(0, (u8)(temp_r6 - 8), 0U, (u8)(temp_r6 + 8), (s32)(u8)temp_r7);
                return;
            case 13:
                temp_r0_31 = (u32)(temp_r0 + 0x70000) >> 0x10;
                var_r6_10 = (u32)((temp_r0_2 + 0x30000) << 8) >> 0x18;
                var_r3_9 = M2C_ERROR(/* Read from unset register $r3 */) + (var_r6_10 * gHBlankCopySize);
                var_r3_9->unk1 = (s8)temp_r0_31;
                sp4.unk1 = 0U;
                sp4.unk0 = 0U;
                var_r7_10 = 0;
                var_r8_7 = 0;
                if (var_r6_10 == 0) {

                } else {
                    temp_r5 = (s16)temp_r0_31;
                    do {
                        if (sp4.unk0 != 0) {
                            *var_r3_9 = 0xF0;
                        } else {
                            temp_r0_32 = temp_r5 + *(((var_r7_10 + 7) * 2) + &gUnknown_080D5FC4);
                            if ((s32)(s16)temp_r0_32 > 0xEF) {
                                sp4.unk0 = 1U;
                            }
                            *var_r3_9 = (u8)temp_r0_32;
                        }
                        temp_r3_4 = var_r3_9 - 1;
                        if (sp4.unk1 == 0) {
                            temp_r0_33 = var_r8_7 + (temp_r5 + *((var_r7_10 * 2) + &gUnknown_080D5FC4));
                            var_r2_4 = temp_r0_33;
                            if ((s32)(s16)temp_r0_33 > 0xEF) {
                                *temp_r3_4 = 0xF0;
                                var_r3_9 = temp_r3_4 - 1;
                                sp4.unk1 = 1U;
                            } else {
                                goto block_179;
                            }
                        } else {
                            var_r2_4 = 0xF0;
                        block_179:
                            *temp_r3_4 = (s8)var_r2_4;
                            var_r3_9 = temp_r3_4 - 1;
                        }
                        if (var_r7_10 == 6) {
                            var_r8_7 = -0xE;
                        }
                        var_r6_10 = (u32)(u8)(var_r6_10 - 1);
                        var_r7_10 += 1;
                    } while (var_r6_10 != 0);
                }
                goto block_211;
            case 14:
                temp_r0_34 = (u32)(temp_r0 + 0x60000) >> 0x10;
                var_r6_11 = (u32)((temp_r0_2 + 0x60000) << 8) >> 0x18;
                var_r3_9 = M2C_ERROR(/* Read from unset register $r3 */) + (var_r6_11 * gHBlankCopySize);
                var_r3_9->unk1 = (s8)temp_r0_34;
                var_r4_6 = (u8)temp_r0_34;
                var_r5_4 = var_r4_6;
                sp4.unk1 = 0U;
                sp4.unk0 = 0U;
                var_r7_11 = 0;
                if (var_r6_11 == 0) {

                } else {
                    do {
                        *var_r3_9 = var_r5_4;
                        temp_r3_5 = var_r3_9 - 1;
                        *temp_r3_5 = var_r4_6;
                        var_r3_9 = temp_r3_5 - 1;
                        if ((u32)var_r5_4 <= 0xEFU) {
                            var_r5_4 += 1;
                        }
                        if (sp4.unk0 != 0) {
                            if ((u32)var_r4_6 <= 0xEFU) {
                                var_r4_6 += 1;
                            }
                        } else {
                            var_r4_6 -= 1;
                            var_r7_11 += 1;
                            if ((u32)var_r7_11 > 0xAU) {
                                sp4.unk0 = 1U;
                            }
                        }
                        var_r6_11 = (u32)(u8)(var_r6_11 - 1);
                    } while (var_r6_11 != 0);
                }
                goto block_211;
            case 15:
                temp_r0_35 = (u32)(temp_r0 + 0x30000) >> 0x10;
                var_r6_12 = (u32)((temp_r0_2 + 0x70000) << 8) >> 0x18;
                var_r3_9 = M2C_ERROR(/* Read from unset register $r3 */) + (var_r6_12 * gHBlankCopySize);
                var_r3_9->unk1 = (s8)temp_r0_35;
                sp4.unk1 = 0U;
                sp4.unk0 = 0U;
                var_r7_12 = 0;
                var_r8_8 = 0;
                if (var_r6_12 != 0) {
                    temp_r5_2 = (s16)temp_r0_35;
                    do {
                        if (sp4.unk0 != 0) {
                            *var_r3_9 = 0xF0;
                        } else {
                            temp_r0_36 = temp_r5_2 + *(((var_r7_12 + 0xE) * 2) + &gUnknown_080D5E84);
                            if ((s32)(s16)temp_r0_36 > 0xEF) {
                                sp4.unk0 = 1U;
                            }
                            *var_r3_9 = (u8)temp_r0_36;
                        }
                        temp_r3_6 = var_r3_9 - 1;
                        if (sp4.unk1 != 0) {
                            *temp_r3_6 = 0xF0;
                            goto block_207;
                        }
                        temp_r0_37 = var_r8_8 + (temp_r5_2 + *((var_r7_12 * 2) + &gUnknown_080D5E84));
                        if ((s32)(s16)temp_r0_37 > 0xEF) {
                            *temp_r3_6 = 0xF0;
                            var_r3_9 = temp_r3_6 - 1;
                            sp4.unk1 = 1U;
                        } else {
                            *temp_r3_6 = (s8)temp_r0_37;
                        block_207:
                            var_r3_9 = temp_r3_6 - 1;
                        }
                        if (var_r7_12 == 0xD) {
                            var_r8_8 = -6;
                        }
                        var_r6_12 = (u32)(u8)(var_r6_12 - 1);
                        var_r7_12 += 1;
                    } while (var_r6_12 != 0);
                }
                goto block_211;
        }
    } else {
        default:
    }
}

void sub_878_80862D8(UltimateGemerl *boss)
{
    Player *temp_r1;
    Player *temp_r4;

    if (boss->lives == 0) {
        return;
    }
    temp_r1 = boss->players[0];
    if (!(temp_r1->moveState & 0x100) && !(boss->players[1]->moveState & 0x100)) {
        if (!(2 & temp_r1->unk14C.arr_u8[0])
            && ((sub_878_80863FC(boss, temp_r1) != 0) || (sub_878_80865B0(boss, temp_r1) != 0) || (sub_80871CC(boss, temp_r1) != 0)
                || (sub_878_8086774(boss, temp_r1) != 0))) {
            sub_801038C(temp_r1);
        }
        temp_r4 = boss->players[1];
        if (boss->unk70 != 0) {
            if (((sub_878_80865B0(boss, temp_r4) << 0x18) != 0) || ((sub_80871CC(boss, temp_r4) << 0x18) != 0)
                || ((sub_878_8086774(boss, temp_r4) << 0x18) != 0)) {
                sub_8010C58(temp_r4);
            }
        } else if ((gStageData.gameMode == 5) && !(2 & temp_r4->unk14C.arr_u8[0])
                   && ((sub_878_80863FC(boss, temp_r4) != 0) || (sub_878_80865B0(boss, temp_r4) != 0) || (sub_80871CC(boss, temp_r4) != 0)
                       || (sub_878_8086774(boss, temp_r4) != 0))) {
            sub_801038C(temp_r4);
        }
    }
}

u8 sub_878_80863FC(UltimateGemerl *arg0, Player *arg1)
{
    PlayerSpriteInfo *temp_r6;
    s16 temp_r0;
    s16 temp_r4;
    s16 temp_r5;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 temp_r1_4;
    s32 temp_r1_5;
    s32 temp_r1_6;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 temp_r3;
    s32 temp_r8;
    s8 temp_r3_2;
    s8 temp_r4_2;
    s8 temp_r4_3;
    s8 temp_r5_2;
    u16 temp_r6_2;
    u8 var_sb;
    void *temp_r1;

    var_sb = 0;
    temp_r6 = arg1->spriteInfoBody;
    temp_r1 = temp_r6 + 0xC;
    if ((arg1->moveState & 0x100) || (temp_r1->unk20 == -1)) {
        return 0U;
    }
    temp_r1_2 = arg0->unk34;
    if (1 & temp_r1_2) {
        temp_r1_3 = arg0->fillerBA[0x29] * 0x18;
        temp_r4 = ((s32)arg1->qWorldY >> 8) - ((s32) * (arg0 + 0x110 + temp_r1_3) >> 8);
        temp_r5 = (((s32)arg1->qWorldX >> 8) + (u16)gCamera.unk6A) - (((s32) * (arg0 + 0x10C + temp_r1_3) >> 8) - 4);
        temp_r6_2 = (u16)sa2__sub_8004418(temp_r4, temp_r5);
        temp_r8 = *(((u16)arg0->unkCE >> 5) + &gUnknown_080D5D30) << 6;
        temp_r1_4 = 0x20 - ((s32)Sqrt((temp_r5 * temp_r5) + (temp_r4 * temp_r4)) / 12);
        temp_r0 = (s16)temp_r6_2;
        temp_r2 = temp_r8 - temp_r0;
        if (temp_r2 >= 0) {
            if (temp_r2 > temp_r1_4) {

            } else {
                goto block_8;
            }
        } else if ((s32)(temp_r0 - temp_r8) <= temp_r1_4) {
        block_8:
            var_sb = 2;
        }
    } else if (temp_r1_2 & 2) {
        temp_r4_2 = arg0->filler34[8];
        temp_r3 = arg0->unk48 + temp_r4_2;
        temp_r5_2 = temp_r6->s.hitboxes[0].b.left;
        temp_r1_5 = ((((s32)arg1->qWorldX >> 8) + gCamera.unk6A) - gCamera.x) + temp_r5_2;
        if (temp_r3 <= temp_r1_5) {
            if ((s32)(temp_r3 + ((s8)arg0->filler34[0xA] - temp_r4_2)) < temp_r1_5) {
                if (temp_r3 >= temp_r1_5) {
                    goto block_13;
                }
            } else {
                goto block_14;
            }
        } else {
        block_13:
            if ((s32)(temp_r1_5 + ((s8)temp_r6->s.hitboxes[0].b.right - temp_r5_2)) >= temp_r3) {
            block_14:
                temp_r3_2 = arg0->filler34[9];
                temp_r2_2 = arg0->unk4C + temp_r3_2;
                temp_r4_3 = temp_r1->unk25;
                temp_r1_6 = (((s32)arg1->qWorldY >> 8) - gCamera.y) + temp_r4_3;
                if (temp_r2_2 <= temp_r1_6) {
                    if ((s32)(temp_r2_2 + ((s8)arg0->filler34[0xB] - temp_r3_2)) < temp_r1_6) {
                        if (temp_r2_2 >= temp_r1_6) {
                            goto block_17;
                        }
                    } else {
                        goto block_18;
                    }
                } else {
                block_17:
                    if ((s32)(temp_r1_6 + ((s8)temp_r1->unk27 - temp_r4_3)) >= temp_r2_2) {
                    block_18:
                        var_sb = 1;
                    }
                }
            }
        }
    }
    return var_sb;
}

u8 sub_878_80865B0(UltimateGemerl *arg0, Player *arg1)
{
    PlayerSpriteInfo *temp_r0;
    s32 temp_r1_2;
    s32 temp_r1_4;
    s32 temp_r1_6;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 var_r1;
    s32 var_r3;
    s8 temp_r1_3;
    s8 temp_r1_5;
    s8 temp_r4;
    s8 temp_r4_2;
    s8 temp_r4_3;
    s8 temp_r4_4;
    s8 var_r2;
    u8 *var_r0;
    u8 var_sb;
    void *temp_r1;
    void *temp_r7;

    var_sb = 0;
    temp_r1 = arg0 + 0x38C;
    temp_r0 = arg1->spriteInfoBody;
    temp_r7 = temp_r0 + 0xC;
    if ((arg1->moveState & 0x100) || (temp_r1->unk20 == -1)) {
        return 0U;
    }
    temp_r1_2 = temp_r7->unk20;
    if (temp_r1_2 != -1) {
        temp_r1_3 = (s8)arg0->spr38C.hitboxes[0].b.left;
        temp_r2 = ((s32)arg0->qUnk9C >> 8) + temp_r1_3;
        temp_r4 = temp_r0->s.hitboxes[0].b.left;
        temp_r1_4 = ((s32)arg1->qWorldX >> 8) + gCamera.unk6A + temp_r4;
        if (temp_r2 <= temp_r1_4) {
            if ((s32)(temp_r2 + ((s8)arg0->spr38C.hitboxes[0].b.right - temp_r1_3)) < temp_r1_4) {
                if (temp_r2 < temp_r1_4) {

                } else {
                    goto block_8;
                }
            } else {
                goto block_10;
            }
        } else {
        block_8:
            if ((s32)(temp_r1_4 + ((s8)temp_r0->s.hitboxes[0].b.right - temp_r4)) < temp_r2) {

            } else {
            block_10:
                temp_r4_2 = temp_r1->unk25;
                var_r3 = ((s32)arg0->qUnkA0 >> 8) + temp_r4_2;
                var_r2 = (s8)temp_r7->unk25;
                var_r1 = ((s32)arg1->qWorldY >> 8) + var_r2;
                if (var_r3 <= var_r1) {
                    if ((s32)(var_r3 + ((s8)temp_r1->unk27 - temp_r4_2)) < var_r1) {
                        if (var_r3 >= var_r1) {
                            goto block_13;
                        }
                    } else {
                        goto block_24;
                    }
                } else {
                block_13:
                    var_r0 = temp_r7 + 0x27;
                    goto block_23;
                }
            }
        }
    } else if (temp_r7->unk28 != temp_r1_2) {
        temp_r1_5 = (s8)arg0->spr38C.hitboxes[0].b.left;
        temp_r2_2 = ((s32)arg0->qUnk9C >> 8) + temp_r1_5;
        temp_r4_3 = temp_r0->s.hitboxes[1].b.left;
        temp_r1_6 = ((s32)arg1->qWorldX >> 8) + gCamera.unk6A + temp_r4_3;
        if (temp_r2_2 <= temp_r1_6) {
            if ((s32)(temp_r2_2 + ((s8)arg0->spr38C.hitboxes[0].b.right - temp_r1_5)) < temp_r1_6) {
                if (temp_r2_2 >= temp_r1_6) {
                    goto block_18;
                }
            } else {
                goto block_19;
            }
        } else {
        block_18:
            if ((s32)(temp_r1_6 + ((s8)temp_r0->s.hitboxes[1].b.right - temp_r4_3)) >= temp_r2_2) {
            block_19:
                temp_r4_4 = temp_r1->unk25;
                var_r3 = ((s32)arg0->qUnkA0 >> 8) + temp_r4_4;
                var_r2 = (s8)temp_r7->unk2D;
                var_r1 = ((s32)arg1->qWorldY >> 8) + var_r2;
                if (var_r3 <= var_r1) {
                    if ((s32)(var_r3 + ((s8)temp_r1->unk27 - temp_r4_4)) < var_r1) {
                        if (var_r3 >= var_r1) {
                            goto block_22;
                        }
                    } else {
                        goto block_24;
                    }
                } else {
                block_22:
                    var_r0 = temp_r7 + 0x2F;
                block_23:
                    if ((s32)(var_r1 + ((s8)*var_r0 - var_r2)) >= var_r3) {
                    block_24:
                        var_sb = 1;
                    }
                }
            }
        }
    }
    return var_sb;
}

u8 sub_878_8086774(UltimateGemerl *arg0, Player *arg1)
{
    s32 temp_r3;
    u8 var_r4;
    u8 var_r5;
    u8 var_r8;

    var_r8 = 0;
    var_r5 = 0;
    do {
        var_r4 = 0;
    loop_2:
        temp_r3 = (var_r4 * 0x14) + (var_r5 * 0x78);
        if (sub_8010184(arg0 + ((var_r5 * 0xF0) + 0x454) + (var_r4 * 0x28), (s32) * (arg0 + 0x16C + temp_r3) >> 8,
                        (s32) * (arg0 + 0x170 + temp_r3) >> 8, 0, arg1)
            == 1) {
            var_r8 = 1;
            var_r5 = 4;
            var_r4 = 6;
        }
        var_r4 += 1;
        if ((u32)var_r4 <= 5U) {
            goto loop_2;
        }
        var_r5 += 1;
    } while ((u32)var_r5 <= 3U);
    return var_r8;
}

s32 sub_878_80867FC(UltimateGemerl *arg0, u8 arg1)
{
    s32 sp0;
    Player *sp4;
    s32 sp8;
    Player *temp_r2;
    PlayerSpriteInfo *temp_r3;
    PlayerSpriteInfo *temp_r3_3;
    Sprite2 *temp_r6_4;
    s16 temp_r0;
    s16 temp_r0_2;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 temp_r1_4;
    s32 temp_r1_5;
    s32 temp_r1_6;
    s32 temp_r2_2;
    s32 temp_r2_3;
    s32 temp_r2_4;
    s32 temp_r2_5;
    s32 temp_r2_6;
    s32 temp_r3_2;
    s32 temp_r3_4;
    s32 temp_sb;
    s8 temp_r0_3;
    s8 temp_r0_4;
    s8 temp_r1;
    s8 temp_r5;
    s8 temp_r5_2;
    s8 temp_r6_3;
    s8 temp_r6_5;
    u8 temp_r6;
    void *temp_r6_2;

    temp_r6 = arg1;
    sp0 = 0;
    sp4 = arg0->players[0];
    temp_r2 = arg0->players[1];
    temp_r1 = (0xFFFFFF & ((0xFF00FFFF & ((0xFFFF00FF & ((0xFFFFFF00 & saved_reg_r8) | 0xF8)) | 0xF800)) | 0x80000)) | 0x08000000;
    temp_r1_2 = (arg0->rotation + 0x200) & 0x3FF;
    temp_r0 = gSineTable[temp_r1_2 + 0x100];
    temp_r0_2 = gSineTable[temp_r1_2];
    temp_r2_2 = ((s32)(temp_r0 + ((u32)temp_r0 >> 0x1F)) >> 1) + arg0->qUnk9C;
    temp_sb = ((s32)(temp_r0_2 + ((u32)temp_r0_2 >> 0x1F)) >> 1) + arg0->qUnkA0;
    switch (temp_r6) { /* irregular */
        case 0:
            if (arg0->unk70 == 0) {

            } else {
                temp_r3 = temp_r2->spriteInfoBody;
                temp_r6_2 = temp_r3 + 0xC;
                temp_r0_3 = temp_r1;
                sp8 = (s32)temp_r0_3;
                temp_r2_3 = (temp_r2_2 >> 8) + temp_r0_3;
                temp_r6_3 = temp_r3->s.hitboxes[1].b.left;
                temp_r1_3 = ((s32)temp_r2->qWorldX >> 8) + gCamera.unk6A + temp_r6_3;
                if (temp_r2_3 <= temp_r1_3) {
                    if ((s32)(temp_r2_3 + ((s8)((s32)(temp_r1 << 8) >> 0x18) - sp8)) < temp_r1_3) {
                        if (temp_r2_3 < temp_r1_3) {

                        } else {
                            goto block_9;
                        }
                    } else {
                        goto block_11;
                    }
                } else {
                block_9:
                    if ((s32)(temp_r1_3 + ((s8)temp_r3->s.hitboxes[1].b.right - temp_r6_3)) < temp_r2_3) {

                    } else {
                    block_11:
                        temp_r1_4 = (s32)(temp_r1 << 0x10) >> 0x18;
                        temp_r3_2 = (temp_sb >> 8) + temp_r1_4;
                        temp_r5 = temp_r6_2->unk2D;
                        temp_r2_4 = ((s32)temp_r2->qWorldY >> 8) + temp_r5;
                        if (temp_r3_2 <= temp_r2_4) {
                            if ((s32)(temp_r3_2 + ((temp_r1 >> 0x18) - temp_r1_4)) < temp_r2_4) {
                                if (temp_r3_2 >= temp_r2_4) {
                                    goto block_14;
                                }
                            } else {
                                goto block_15;
                            }
                        } else {
                        block_14:
                            if ((s32)(temp_r2_4 + ((s8)temp_r6_2->unk2F - temp_r5)) >= temp_r3_2) {
                            block_15:
                                sub_8010C58(temp_r2);
                            block_26:
                                sp0 = 1;
                            }
                        }
                    }
                }
            }
            break;
        case 1:
            temp_r3_3 = sp4->spriteInfoBody;
            temp_r6_4 = &temp_r3_3->s;
            if (temp_r3_3->s.hitboxes[1].index != -1) {
                temp_r0_4 = temp_r1;
                temp_r2_5 = (temp_r2_2 >> 8) + temp_r0_4;
                temp_r6_5 = temp_r3_3->s.hitboxes[1].b.left;
                temp_r1_5 = ((s32)sp4->qWorldX >> 8) + gCamera.unk6A + temp_r6_5;
                if (temp_r2_5 <= temp_r1_5) {
                    if ((s32)(temp_r2_5 + ((s8)((s32)(temp_r1 << 8) >> 0x18) - temp_r0_4)) < temp_r1_5) {
                        if (temp_r2_5 >= temp_r1_5) {
                            goto block_20;
                        }
                    } else {
                        goto block_21;
                    }
                } else {
                block_20:
                    if ((s32)(temp_r1_5 + ((s8)(u8)temp_r3_3->s.hitboxes[1].b.right - temp_r6_5)) >= temp_r2_5) {
                    block_21:
                        temp_r1_6 = (s32)(temp_r1 << 0x10) >> 0x18;
                        temp_r3_4 = (temp_sb >> 8) + temp_r1_6;
                        temp_r5_2 = temp_r6_4->hitboxes[1].b.top;
                        temp_r2_6 = ((s32)sp4->qWorldY >> 8) + temp_r5_2;
                        if (temp_r3_4 <= temp_r2_6) {
                            if ((s32)(temp_r3_4 + ((temp_r1 >> 0x18) - temp_r1_6)) < temp_r2_6) {
                                if (temp_r3_4 >= temp_r2_6) {
                                    goto block_24;
                                }
                            } else {
                                goto block_25;
                            }
                        } else {
                        block_24:
                            if ((s32)(temp_r2_6 + ((s8)(u8)temp_r6_4->hitboxes[1].b.bottom - temp_r5_2)) >= temp_r3_4) {
                            block_25:
                                sub_8010C88(sp4);
                                goto block_26;
                            }
                        }
                    }
                }
            }
            break;
    }
    return sp0;
}

void ExtraBoss_CreateMissile(UltimateGemerl *arg0, u8 arg1, ? arg3)
{
    s32 temp_r0;
    s32 temp_r1_2;
    s32 var_r0;
    u16 temp_r1;
    u8 temp_r4;
    void *temp_r3;
    void *temp_r5;

    temp_r4 = arg1;
    if (arg0->unk4 == 0) {
        return;
    }
    temp_r1 = TaskCreate((void (*)())Task_Missile_8086B94, 0x50U, 0x2100U, 0U, TaskDestructor_50_80870AC)->data;
    temp_r1->unk4C = arg0;
    temp_r1->unk16 = temp_r4;
    temp_r0 = (gPseudoRandom * 0x196225) + 0x3C6EF35F;
    gPseudoRandom = temp_r0;
    if (temp_r0 & 1) {
        var_r0 = 0x200;
    } else {
        var_r0 = 0x100;
    }
    temp_r1->unkC = var_r0;
    if (temp_r1->unk16 == 2) {
        temp_r1->unk8 = (s32)arg0->strc10C[1].qOffsetY;
        temp_r1->unk14 = 0U;
        arg0->unk3 = 1;
    } else {
        temp_r1->unkC = (s32)(0 - temp_r1->unkC);
        temp_r1->unk8 = (s32)arg0->strc10C[2].qOffsetY;
        temp_r1->unk14 = 0U;
        arg0->unk2 = 1;
    }
    temp_r1_2 = temp_r4 * 0x18;
    temp_r1->unk0 = (s32) * (arg0 + 0x10C + temp_r1_2);
    temp_r1->unk4 = (s32) * (arg0 + 0x110 + temp_r1_2);
    temp_r1->unk10 = 1;
    temp_r1->unk12 = 0;
    m4aSongNumStart(0x258U);
    temp_r3 = temp_r1 + 0x18;
    temp_r5 = temp_r1 + 0x40;
    temp_r3->unkC = 0x500;
    temp_r3->unk1A = 0;
    temp_r3->unk14 = 0x2C0;
    temp_r3->unkE = 0;
    temp_r3->unk16 = 0;
    temp_r3->unk1B = 0xFF;
    temp_r3->unk1C = 0x10;
    temp_r3->unk1F = 0;
    temp_r3->unk20 = -1;
    temp_r3->unk8 = 0x1000;
    if (temp_r1->unk16 == 2) {
        temp_r1->unk18 = (s32)arg0->vram1C;
        temp_r3->unk8 = (s32)(temp_r3->unk8 | 0x800);
    } else {
        temp_r1->unk18 = (u8 *)arg0->vram20;
    }
    temp_r3->unk10 = (u16)(((s32)temp_r1->unk0 >> 8) - gCamera.x);
    temp_r3->unk12 = (u16)(((s32)temp_r1->unk4 >> 8) - gCamera.y);
    temp_r1->unk40 = (u16)temp_r1->unk14;
    temp_r5->unk6 = (u16)temp_r3->unk10;
    temp_r5->unk8 = (u16)temp_r3->unk12;
    temp_r5->unk2 = 0x100;
    temp_r5->unk4 = 0x100;
}

void Task_Missile_8086B94(UltimateGemerlMissile *missile)
{
    Player *temp_r5;
    Player *temp_r5_2;
    Sprite *temp_r6;
    UltimateGemerl *temp_r7;
    s32 temp_r1;
    s32 temp_r2;
    s32 var_sb;
    u16 temp_r0;
    u16 temp_r0_2;

    temp_r7 = missile->boss;
    temp_r6 = &missile->spr18;
    var_sb = 0;
    if ((temp_r7->lives == 0) && (missile->unk12 == 0)) {
        missile->unk12 = 0x64U;
    }
    temp_r0 = missile->unk12;
    switch (temp_r0) { /* irregular */
        case 0x0:
            temp_r1 = missile->qWorldY + missile->unkC;
            missile->qWorldY = temp_r1;
            if (missile->filler16[0] == 2) {
                if (temp_r1 >= (s32)missile->unk8) {
                    goto block_13;
                }
            } else if (temp_r1 <= (s32)missile->unk8) {
            block_13:
                missile->unk12 = 0x64U;
            }
            break;
        case 0x64:
            missile->spr18.anim = 0x501;
            missile->spr18.variant = 0;
            m4aSongNumStart(0x90U);
            missile->unk10 = 0x15U;
            missile->unk12 = 0x6EU;
            break;
        case 0x6E:
            temp_r0_2 = missile->unk10 - 1;
            missile->unk10 = temp_r0_2;
            if ((temp_r0_2 << 0x10) == 0) {
                var_sb = 1;
            }
            break;
    }
    temp_r2 = missile->qWorldX + (gCamera.unk6A << 8) + 0x400;
    missile->qWorldX = temp_r2;
    temp_r5 = temp_r7->players[0];
    if (!(temp_r5->moveState & 0x100)) {
        if (sub_8010184(temp_r6, temp_r2 >> 8, (s32)missile->qWorldY >> 8, 0, temp_r5) != 0) {
            sub_801038C(temp_r5, 1);
        } else if (sub_8010288(temp_r6, (s32)missile->qWorldX >> 8, (s32)missile->qWorldY >> 8, 0, temp_r5) != 0) {
            if (missile->unk12 == 0) {
                missile->unk12 = 0x64U;
            }
            sub_8010C88(temp_r5);
        }
    }
    temp_r5_2 = temp_r7->players[1];
    if ((gStageData.gameMode == 5) && !(temp_r5_2->moveState & 0x100)
        && (sub_8010184(temp_r6, (s32)missile->qWorldX >> 8, (s32)missile->qWorldY >> 8, 0, temp_r5_2) != 0)) {
        if (temp_r7->unk70 != 0) {
            if (missile->unk12 == 0) {
                missile->unk12 = 0x64U;
            }
            sub_8010C58(temp_r5_2);
        } else {
            sub_801038C(temp_r5_2, 1);
        }
    }
    if (var_sb != 0) {
        if (missile->filler16[0] == 2) {
            temp_r7->unk3 = 0;
        } else {
            temp_r7->unk2 = 0;
        }
        TaskDestroy(gCurTask);
        return;
    }
    missile->spr18.x = ((s32)missile->qWorldX >> 8) - gCamera.x;
    missile->spr18.y = ((s32)missile->qWorldY >> 8) - gCamera.y;
    missile->tf40.rotation = missile->rotation;
    missile->tf40.x = (s16)(u16)missile->spr18.x;
    missile->tf40.y = (s16)(u16)missile->spr18.y;
    UpdateSpriteAnimation(temp_r6);
    DisplaySprite(temp_r6);
}

void BossExtra_CreateExplosion(u16 arg0, u16 arg1, u16 arg2, u16 arg3, s32 arg4, u8 *arg5)
{
    s16 temp_r4;
    s32 temp_r1;
    u16 temp_r2;
    void *temp_r2_2;

    temp_r2 = TaskCreate(Task_38_8086E58, 0x38U, 0x2100U, 0U, TaskDestructor_38_8087234)->data;
    temp_r2_2 = temp_r2 + 0x10;
    temp_r2->unkE = (u8)arg4;
    temp_r2->unkC = 0;
    temp_r1 = 0x3FF & arg3;
    temp_r4 = (s16)arg2;
    temp_r2->unk8 = (s16)((s32)(temp_r4 * gSineTable[temp_r1 + 0x100]) >> 0xE);
    temp_r2->unkA = (s16)((s32)(temp_r4 * gSineTable[temp_r1]) >> 0xE);
    temp_r2->unk10 = arg5;
    temp_r2_2->unkC = 0x4F9;
    temp_r2_2->unk1A = 0;
    temp_r2_2->unk14 = 0x200;
    temp_r2_2->unkE = 0;
    temp_r2_2->unk16 = 0;
    temp_r2_2->unk1B = 0xFF;
    temp_r2_2->unk1C = 0x10;
    temp_r2_2->unk1F = 0;
    temp_r2_2->unk20 = -1;
    temp_r2_2->unk8 = 0x1000;
    temp_r2->unk0 = (s32)((s32)(arg0 << 0x10) >> 8);
    temp_r2->unk4 = (s32)((s32)(arg1 << 0x10) >> 8);
}

void Task_38_8086E58(void)
{
    Sprite *temp_r5;
    s32 temp_r1_2;
    u16 temp_r1;
    u8 temp_r0;

    temp_r1 = gCurTask->data;
    temp_r5 = temp_r1 + 0x10;
    temp_r0 = temp_r1->unkE - 1;
    temp_r1->unkE = temp_r0;
    if ((temp_r0 << 0x18) == 0) {
        TaskDestroy(gCurTask);
        return;
    }
    temp_r1_2 = temp_r1->unk0 + (gCamera.unk6A << 8) + temp_r1->unk8;
    temp_r1->unk0 = temp_r1_2;
    temp_r1->unkA = (u16)(temp_r1->unkC + temp_r1->unkA);
    temp_r1->unk4 = (s32)(temp_r1->unk4 + (s16)temp_r1->unkA);
    temp_r5->x = (temp_r1_2 >> 8) - gCamera.x;
    temp_r5->y = ((s32)temp_r1->unk4 >> 8) - gCamera.y;
    UpdateSpriteAnimation(temp_r5);
    DisplaySprite(temp_r5);
}

void TaskDestructor_878_8086ED8(Task *t)
{
    u16 temp_r4;
    void *temp_r0;
    void *temp_r0_2;

    temp_r4 = t->data;
    temp_r0 = temp_r4->unk38C;
    if (temp_r0 != NULL) {
        VramFree(temp_r0);
    }
    temp_r0_2 = temp_r4->unk454;
    if (temp_r0_2 != NULL) {
        VramFree(temp_r0_2);
    }
}

void Task_878_8086F08(UltimateGemerl *boss)
{
    m4aSongNumStart(0x23FU);
    sub_878_808211C(boss);
    sub_878_8082388(boss);
    sub_878_8082794(boss);
    gCurTask->main = (void (*)())Task_878_8086F48;
}

void Task_878_8086F48(UltimateGemerl *boss)
{
    sub_878_8087174(boss);
    sub_878_808211C(boss);
    *((boss->unk1 * 4) + &gUnknown_08E2ED50)(boss);
    sub_878_80862D8(boss);
    sub_878_8084EB4(boss);
    sub_878_8082428(boss);
    sub_878_8082388(boss);
    sub_878_8082794(boss);
    sub_878_8081EFC(boss);
}

void Task_878_8086FA4(UltimateGemerl *boss)
{
    sub_878_808211C(boss);
    *((boss->unk1 * 4) + &gUnknown_08E2ED50)(boss);
    sub_878_8082388(boss);
    sub_878_8082D08(boss);
}

void Task_878_CallDestroy(Task *t) { TaskDestroy(gCurTask); }

void sub_8086FF8(UltimateGemerl *boss, u8 param1)
{
    s32 *var_r1;
    s32 var_r0;
    u8 temp_r0;

    boss->fillerBA[0x33] = param1;
    temp_r0 = boss->fillerBA[0x33];
    switch (temp_r0) { /* irregular */
        case 7:
            boss->qUnkB0 = 0x7800;
            var_r1 = &boss->qUnkB0 + 4;
            var_r0 = 0;
        block_5:
            *var_r1 = var_r0;
            return;
        case 8:
            boss->unkA4 = -0x200;
            var_r1 = &boss->unkA4 + 4;
            var_r0 = -0x100;
            goto block_5;
    }
}

void sub_8087038(void *arg0, s8 arg1) { arg0->unkEF = arg1; }

void sub_8087040(void) { }

void sub_8087044(s32 arg0, s32 arg1)
{
    u32 temp_r1;
    void *temp_r0;

    temp_r0 = arg0 + 0x814;
    temp_r1 = (u32)(arg1 << 0x18) >> 0x16;
    temp_r0->unkC = (u16) * (temp_r1 + &gUnknown_080D5D0C);
    temp_r0->unk1A = (s8) * (temp_r1 + (&gUnknown_080D5D0C + 2));
    temp_r0->unk1B = 0xFF;
}

void sub_808706C(UltimateGemerl *boss, u8 param1)
{
    Sprite *temp_r0;
    u8 var_r2;

    var_r2 = 0;
    do {
        temp_r0 = &boss->spr3B4[var_r2];
        if (param1 == 0) {
            temp_r0->anim = 0x4FE;
            temp_r0->variant = 1;
        } else {
            temp_r0->anim = 0x4FE;
            temp_r0->variant = 0;
        }
        var_r2 += 1;
    } while ((u32)var_r2 <= 3U);
}

void TaskDestructor_50_80870AC(Task *t) { }

void sub_878_80870B0(UltimateGemerl *boss)
{
    u8 temp_r0;

    boss->unk1 = *(boss->unkA + &gUnknown_080D5D18);
    temp_r0 = boss->unkA + 1;
    boss->unkA = temp_r0;
    if ((u32)temp_r0 > 4U) {
        boss->unkA = 0;
    }
    boss->unk4 = 1;
    boss->unk8 = 0;
}

s32 sub_80870E0(void) { return 0; }

s32 sub_80870E4(u16 arg0)
{
    u16 temp_r1;

    temp_r1 = arg0;
    if (gBgOffsetsHBlankPrimary == gBgOffsetsBuffer) {
        subroutine_arg0 = temp_r1;
        (void *)0x040000D4->unk0 = &subroutine_arg0;
        (void *)0x040000D4->unk4 = gBgOffsetsBuffer;
        (void *)0x040000D4->unk8 = 0x81000140;
        return (void *)0x040000D4->unk8;
    }
    subroutine_arg0 = temp_r1;
    (void *)0x040000D4->unk0 = &subroutine_arg0;
    (void *)0x040000D4->unk4 = (u8(*)[0xA0][4])gBgOffsetsBuffer[1][0];
    (void *)0x040000D4->unk8 = 0x81000140;
    return (void *)0x040000D4->unk8;
}

void sub_8087140(u16 arg0, u8 arg1, u8 arg2)
{
    u16 *var_r3;
    u8 temp_r2;
    u8 var_r1;

    var_r1 = arg1;
    temp_r2 = arg2;
    var_r3 = gBgOffsetsHBlankPrimary + (var_r1 * 2);
    if ((u32)var_r1 < (u32)temp_r2) {
        do {
            *var_r3 = arg0;
            var_r3 += 2;
            var_r1 += 1;
        } while ((u32)var_r1 < (u32)temp_r2);
    }
}

void sub_878_8087174(UltimateGemerl *arg0) { arg0->unk34 = 0; }

void sub_808717C(UltimateGemerl *arg0) { arg0->unk34 = (s32)(arg0->unk34 | 1); }

void sub_8087188(UltimateGemerl *arg0, s16 arg1, s16 arg2, u16 arg3)
{
    s32 temp_r4;
    u16 temp_r3;

    temp_r3 = arg3;
    arg0->unk34 = (s32)(arg0->unk34 | 2);
    temp_r4 = (s32)(arg1 + ((u32)(arg1 << 0x10) >> 0x1F)) >> 1;
    arg0->unk48 = temp_r4;
    arg0->unk4C = (s32)arg2;
    arg0->filler34[8] = 0 - temp_r4;
    arg0->filler34[9] = 0 - temp_r3;
    arg0->filler34[0xA] = (u8)temp_r4;
    (arg0 + 0x3E)->unk1 = (s8)temp_r3;
}

u8 sub_80871CC(UltimateGemerl *boss, Player *p)
{
    u8 var_r4;
    u8 var_r6;

    var_r6 = 0;
    var_r4 = 0;
loop_1:
    if (sub_8010184(&boss->spr3B4[var_r4], (s32)boss->strc10C[var_r4].qOffsetX >> 8,
                    (s32) * (&boss->strc10C[0].qOffsetY + (var_r4 * 0x18)) >> 8, 0, p)
        == 1) {
        var_r6 = 1;
    } else {
        var_r4 += 1;
        if ((u32)var_r4 <= 3U) {
            goto loop_1;
        }
    }
    return var_r6;
}

void TaskDestructor_38_8087234(Task *t) { }

void sub_8087238(void) { }
#endif
