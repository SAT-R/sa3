#include "global.h"
#include "core.h"
#include "trig.h"
#include "flags.h"
#include "bg_triangles.h"
#include "lib/m4a/m4a.h"
#include "malloc_vram.h"
#include "game/bosses.h"
#include "game/shared/stage/music_manager.h"
#include "game/shared/stage/player.h"
#include "game/shared/stage/player_callbacks.h" // sub_80105F0
#include "game/save.h"
#include "game/stage.h"
#include "multi_sio_stuff.h" // sub_8027674
#include "game/sa3/bosses/boss_extra.h"
#include "game/sa3/bosses/eggman_escape.h" // SetFixedRandomIfTimeAttackMode(), AltarEmeraldCutsceneEggmanEscape
#include "constants/animations.h"
#include "constants/songs.h"

#define WINDOW_INCREMENT(window, wordCount) (int_vcount *)(((u8 *)window) + ((wordCount)*gHBlankCopySize))

u8 sub_878_80863FC(UltimateGemerl *arg0, Player *arg1);
u8 sub_878_80865B0(UltimateGemerl *arg0, Player *arg1);
u8 sub_878_8086774(UltimateGemerl *arg0, Player *arg1);
void sub_8010C58(Player *p);

void sub_80870E4(u16);
void sub_808717C(UltimateGemerl *boss);
void ExtraBoss_CreateMissile(UltimateGemerl *boss, u8 arg1);
bool8 sub_878_80867FC(UltimateGemerl *boss, u8 arg1);
void sub_8087188(UltimateGemerl *arg0, s16 arg1, s16 arg2, s16 arg3);
void BossExtra_CreateExplosion(s16 arg0, s16 arg1, s16 arg2, u16 arg3, u8 arg4, u8 *vram);
void Task_38_8086E58(void);
void TaskDestructor_38_8087234(Task *t);

extern const u16 gUnknown_080D5D50[10];
extern u8 gUnknown_080D5D64[0x80];
extern u8 gUnknown_080D5DE4[0x80];
extern const Vec2_32 gUnknown_080D5E64[4];
extern const s32 gUnknown_080D5D20[4];
extern void sa2__sub_8005FB4(u8 bg, u8 param1, u8 param2, u8 param3, u8 param4);
extern void sa2__sub_8007A08(u8 bg, u8 param1, u8 param2, u8 param3, u8 param4);

extern void sub_805602C(void);

typedef void (*ExtraBossFunc0)(UltimateGemerl *boss);
extern bool32 sub_8010184(Sprite *s, s32 offsetX, s32 offsetY, s16 hbIndex, Player *p);
void sub_8010C88(Player *p);

extern const u16 gAnimPatternBossExtraElectricSpark[3][2]; // 0x080D5D0C
extern u8 gUnknown_080D5D18[5];
extern u8 gUnknown_080D5D30[0x20]; // TODO: Might be [0x1F]?
extern const s16 gUnknown_080D5FC4[0xA8];
extern const ExtraBossFunc0 gUnknown_08E2ED50[16];

extern winreg_t gUnknown_080D5E84[DISPLAY_HEIGHT];

static inline void sub_808706C_inline(UltimateGemerl *boss, u8 handType)
{
    Sprite *s;
    u8 i;

    for (i = 0; i < ARRAY_COUNT(boss->spr3B4); i++) {
        s = &boss->spr3B4[i];
        if (handType == 0) {
            s->anim = ANIM_BOSS_EXTRA_CLAW;
            s->variant = 1;
        } else {
            s->anim = ANIM_BOSS_EXTRA_CLAW;
            s->variant = 0;
        }
    }
}

static inline void sub_8087038_inline(UltimateGemerl *boss, u8 value) { boss->unkEF = value; }

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
    boss->unk1[0] = 0;
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
    boss->players[NAP_SONIC] = &gPlayers[PLAYER_1];
    boss->players[NAP_EGGMAN] = &gPlayers[PLAYER_2];
    boss->players[NAP_SONIC]->unk148.ptr = (PlayerUnk148 *)&boss->filler58[0];
    boss->players[NAP_EGGMAN]->unk148.ptr = (PlayerUnk148 *)&boss->filler68[0];
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

    if (boss->unk1[0] != 6) {
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
    boss->unk1[0] = 6;
    boss->unkA = 0;
    boss->unkC = 0;
    boss->unkD = 0;
    boss->unk17 = 0;
    boss->unk18 = 0;
    boss->vram6C = NULL;
    boss->players[NAP_SONIC] = &gPlayers[PLAYER_1];
    boss->players[NAP_EGGMAN] = &gPlayers[PLAYER_2];
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
                if (!(boss->players[NAP_SONIC]->moveState & 0x100)) {
                    SetPlayerCallback(boss->players[NAP_SONIC], sub_80105F0);
                }
                if (!(boss->players[NAP_EGGMAN]->moveState & 0x100)) {
                    SetPlayerCallback(boss->players[NAP_EGGMAN], sub_80105F0);
                }
            }
            if (boss->unk5F == 1) {
                boss->unk5F++;
                boss->unk4 = 1;
                boss->unk8 = 0;
                boss->unk1[0] = 7;
                boss->unkD = boss->unkC;
            }
            return;
        }

    else_block:
        if (gStageData.unk4 == 7) {
            boss->unk1[0] = gStageData.unk4;
            return;
        }
        if (!(boss->players[NAP_SONIC]->moveState & 0x100)) {
            if (--boss->ringCountdownDelay == 0) {
                boss->ringCountdownDelay = TIME(0, 1);
                gStageData.rings--;
                if (gStageData.rings == 0) {
                    SetPlayerCallback(boss->players[NAP_SONIC], sub_80105F0);
                    SetPlayerCallback(boss->players[NAP_EGGMAN], sub_80105F0);
                }
            }
        }
    }
}

void sub_878_8081FBC(UltimateGemerl *boss)
{
    if (boss->unk1[0] != 6) {
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
        if (boss->unk1[0] != 6) {
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

// TODO: Fake-match!
void sub_878_808211C(UltimateGemerl *boss)
{
#ifndef NON_MATCHING
    register s32 x asm("r0") = I(boss->players[0]->qWorldX);
    register s32 var_r1 asm("r1");
#else
    s32 x = I(boss->players[0]->qWorldX);
    s32 var_r1;
#endif
    x = (((x + (gCamera.unk6A * 2)) - gCamera.x));
    var_r1 = x - 0xB4;

    if (var_r1 <= 0) {
        var_r1 = 0;
    } else {
        var_r1 = -var_r1;
    }
    if ((CURRENT_GAME_MODE == GAME_MODE_MP_STORY_COOP) && (var_r1 == 0)) {
        s32 x = (I(boss->players[1]->qWorldX));
        var_r1 = (gCamera.unk6A * 2);
        var_r1 = (x + var_r1);
        x = (var_r1 - gCamera.x);
        var_r1 = x - 180;
        if (var_r1 <= 0) {
            var_r1 = 0;
        } else {
            var_r1 = -var_r1;
        }
    }
    if (boss->unk1[0] == 7) {
        var_r1 = 0;
    }
    if ((gCamera.unk6A != 0) || (boss->unk17 != 0)) {
        if (boss->unk17 != 0) {
            boss->unk17--;
        }
        if (gCamera.unk6A != 0) {
            boss->unk17 = 1;
        }
        var_r1 = boss->unk18;
    }
    boss->unk18 = var_r1;
    boss->qUnkF4 = Q(gCamera.x + (var_r1 += DISPLAY_CENTER_X));
    boss->unkEE = 0;
    switch (boss->unkED) {
        case 0:
            break;
        case 1:
            boss->qUnkB0 -= Q(2);
            if (boss->qUnkB0 <= 0) {
                boss->qUnkB0 = 0;
                boss->unkEE = 1;
            }
            break;
        case 2:
            boss->qUnkB0 += Q(2);
            if (boss->qUnkB0 >= Q(120)) {
                boss->qUnkB0 = Q(120);
                boss->unkEE = 1;
            }
            break;
        case 3:
            boss->qUnkB0 = ((COS(boss->unkE0) * boss->unkFC) / 0x40);
            boss->qUnkB4 = ((SIN(boss->unkE0) * boss->unkFC) / 0x40);
            break;
        case 4:
            if (boss->qUnkB4 < 0) {
                boss->qUnkB4 += Q(0.5);
                if (boss->qUnkB4 >= 0) {
                    boss->qUnkB4 = 0;
                    boss->unkEE = 1;
                }
            } else {
                boss->qUnkB4 -= Q(0.5);
                if (boss->qUnkB4 <= 0) {
                    boss->qUnkB4 = 0;
                    boss->unkEE = 1;
                }
            }
            break;
        case 5:
            boss->qUnkB4 -= 0x80;
            if (boss->qUnkB4 <= -Q(96)) {
                boss->qUnkB4 = -Q(96);
                boss->unkEE = 1;
            }
            break;
        case 6:
            boss->qUnkB4 += Q(0.5);
            if (boss->qUnkB4 >= Q(96)) {
                boss->qUnkB4 = Q(96);
                boss->unkEE = 1;
            }
            break;
        case 8:
            boss->unkA8 = (s32)(boss->unkA8 + 4);
            boss->qUnkB0 += boss->unkA4;
            boss->qUnkB4 += boss->unkA8;
            break;
    }
    boss->qUnk9C = boss->qUnkF4 + boss->qUnkB0;
    boss->qUnkA0 = boss->qUnkF8 + boss->qUnkB4;
    sub_878_8082E2C(boss, 0U);
}

void sub_878_8082388(UltimateGemerl *boss)
{
    Sprite *s = &boss->spr38C;
    SpriteTransform *tf = &boss->tf83C;

    switch (boss->unk108) {
        case 1:
            s->x = I(boss->qUnk9C) - gCamera.x;
            s->y = I(boss->qUnkA0) - gCamera.y;
            tf->rotation = boss->rotation;
            tf->x = s->x;
            tf->y = s->y;
            TransformSprite(s, &boss->tf83C);
            UpdateSpriteAnimation(s);
            DisplaySprite(s);
            break;
        case 2:
            s->x = I(boss->qUnk9C) - gCamera.x;
            s->y = I(boss->qUnkA0) - gCamera.y;
            UpdateSpriteAnimation(s);
            DisplaySprite(s);
            break;
    }
}

void sub_878_8082428(UltimateGemerl *boss)
{
    Sprite *s = &boss->spr38C;

    switch (boss->unkEF) {
        case 0:
            break;
        case 50:
            boss->unkF0 = 6;
            s->anim = ANIM_BOSS_EXTRA_BODY;
            s->variant = 1;
            boss->unkEF++;
            break;
        case 51:
            if (--boss->unkF0 == 0) {
                s->anim = ANIM_BOSS_EXTRA_BODY;
                s->variant = 2;
                boss->unkEF++;
                break;
            }
            break;
        case 52:
            break;
        case 100:
            boss->unkF0 = 6;
            s->anim = ANIM_BOSS_EXTRA_BODY;
            s->variant = 1;
            boss->unkEF++;
            break;
        case 101:
            if (--boss->unkF0 == 0) {
                s->anim = ANIM_BOSS_EXTRA_BODY;
                s->variant = 0;
                boss->unkEF++;
                break;
            }
            break;
        case 102:
            boss->unkEF = 0;
            break;
        case 150:
            boss->unk108 = 2;
            s->anim = ANIM_GEMERL_DEFEATED;
            s->variant = 0;
            s->oamFlags = 0x4C0;
            s->frameFlags = 0x1000;
            boss->unkEF++;
            break;
    }
}

void sub_878_80824F4(UltimateGemerl *boss)
{
    u16 sp0;
    u8 *vram;
    u8 *vram2;
    Sprite *s;
    SpriteTransform *tf;
    s32 var_r0;
    s32 var_r0_2;
    u8 var_r5;
    u8 var_r8;

    vram = VramMalloc(0x10U);
    vram2 = VramMalloc(1U);
    for (var_r8 = 0, sp0 = 0x80; var_r8 < 4; var_r8++, sp0 += 0x100) {
        var_r0 = (COS(sp0) * 0x1C) / 0x40;
        var_r0_2 = (SIN(sp0) * 0x1C) / 0x40;
        boss->strc10C[var_r8].qWorldX = boss->qUnk9C + (var_r0);
        boss->strc10C[var_r8].qWorldY = boss->qUnkA0 + (var_r0_2);
        boss->strc10C[var_r8].unk14 = sp0;
        s = &boss->spr3B4[var_r8];
        tf = &boss->tf848[var_r8];
        s->tiles = vram;
        s->anim = ANIM_BOSS_EXTRA_CLAW;
        s->variant = 1;
        s->oamFlags = 0x280;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->prevVariant = -1;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->hitboxes[0].index = -1;

        s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
        s->frameFlags |= SPRITE_FLAG_MASK_ROT_SCALE_ENABLE | (11 + var_r8);
        if (var_r8 != 0) {
            SPRITE_FLAG_SET(s, 19);
        }
        s->x = (boss->strc10C[var_r8].qWorldX >> 8) - gCamera.x;
        s->y = (boss->strc10C[var_r8].qWorldY >> 8) - gCamera.y;
        tf->rotation = (boss->strc10C[var_r8].unk14 - 640) & 0x3FF;
        tf->x = s->x;
        tf->y = s->y;
        tf->qScaleX = Q(1);
        tf->qScaleY = Q(1);
        UpdateSpriteAnimation(s);

        for (var_r5 = 0; var_r5 < ARRAY_COUNT(boss->strc16C[0]); var_r5++) {
            boss->strc16C[var_r8][var_r5].qWorldX = boss->qUnk9C;
            boss->strc16C[var_r8][var_r5].qWorldY = boss->qUnkA0;
            s = &boss->spr454[var_r8][var_r5];
            s->tiles = vram2;
            s->anim = ANIM_BOSS_EXTRA_ARM_NODE;
            s->variant = 0;
            s->oamFlags = 0x4C0;
            s->animCursor = 0;
            s->qAnimDelay = 0;
            s->prevVariant = -1;
            s->animSpeed = 0x10;
            s->palId = 0;
            s->hitboxes[0].index = -1;
            s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
            s->x = I(boss->strc16C[var_r8][var_r5].qWorldX) - gCamera.x;
            s->y = I(boss->strc16C[var_r8][var_r5].qWorldY) - gCamera.y;

            if ((var_r8 != 0) || (var_r5 != 0)) {
                SPRITE_FLAG_SET(s, 19);
            }
            UpdateSpriteAnimation(s);
        }
    }
    s = &boss->spr814;
    s->tiles = VramMalloc(0x10U);
    s->anim = 0x504;
    s->variant = 0;
    s->oamFlags = 0x240;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = 0xFF;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x1000;
    s->x = I(boss->strc10C[0].qWorldX) - gCamera.x;
    s->y = I(boss->strc10C[0].qWorldY) - gCamera.y;
    boss->unkF = 0;
}

void sub_878_8082794(UltimateGemerl *boss)
{
    Sprite *s;
    SpriteTransform *tf;
    u8 i, j;

    if (boss->lives != 0) {
        for (j = 0; j < ARRAY_COUNT(boss->spr3B4); j++) {
            s = &boss->spr3B4[j];
            tf = &boss->tf848[j];
            s->x = I(boss->strc10C[j].qWorldX) - gCamera.x;
            s->y = I(boss->strc10C[j].qWorldY) - gCamera.y;
            tf->rotation = (boss->strc10C[j].unk14 - 0x280) & 0x3FF;
            tf->x = s->x;
            tf->y = s->y;
            TransformSprite(s, tf);
            UpdateSpriteAnimation(s);
            DisplaySprite(s);
            for (i = 0; i < ARRAY_COUNT(boss->spr454[j]); i++) {
                s = &boss->spr454[j][i];
                s->x = I(boss->strc16C[j][i].qWorldX) - gCamera.x;
                s->y = I(boss->strc16C[j][i].qWorldY) - gCamera.y;
                DisplaySprite(s);
            }
        }

        if (boss->unkF != 0) {
            s = &boss->spr814;
            UpdateSpriteAnimation(s);
            s->x = (I(boss->strc10C[3].qWorldX) - gCamera.x) - 0x10;
            s->y = (I(boss->strc10C[3].qWorldY) - gCamera.y) + 4;
            s->frameFlags &= ~0x800;
            DisplaySprite(s);
            s->x = (I(boss->strc10C[0].qWorldX) - gCamera.x) - 0x10;
            s->y = (I(boss->strc10C[0].qWorldY) - gCamera.y) - 4;
            s->frameFlags |= 0x800;
            DisplaySprite(s);
        }
    } else {
        for (j = 0; j < ARRAY_COUNT(boss->strc10C); j++) {
            if (boss->strc10C[j].unk10 != 0) {
                s = &boss->spr3B4[j];
                tf = &boss->tf848[j];
                s->x = I(boss->strc10C[j].qWorldX) - gCamera.x;
                s->y = I(boss->strc10C[j].qWorldY) - gCamera.y;
                tf->rotation = (boss->strc10C[j].unk14 - 0x280) & 0x3FF;
                tf->x = s->x;
                tf->y = s->y;
                TransformSprite(s, tf);
                UpdateSpriteAnimation(s);
                DisplaySprite(s);
            }
            for (i = 0; i < ARRAY_COUNT(boss->strc16C[j]); i++) {
                if (boss->strc16C[j][i].unk10 != 0) {
                    s = &boss->spr454[j][i];
                    s->x = I(boss->strc16C[j][i].qWorldX) - gCamera.x;
                    s->y = I(boss->strc16C[j][i].qWorldY) - gCamera.y;
                    DisplaySprite(s);
                }
            }
        }
    }
}

void sub_878_8082A4C(UltimateGemerl *boss)
{
    u16 angle;
    u8 *vram;
    u8 *vramTilesArmNode;
    Sprite *s;
    SpriteTransform *tf;
    s32 qVelX;
    s32 qVelY;
    u8 i, j;

    vram = (u8 *)OBJ_VRAM0 + 0x2800;
    vramTilesArmNode = VramMalloc(1);
    for (j = 0, angle = 0x80; j < ARRAY_COUNT(boss->strc10C); j++, angle += 0x100) {
        qVelX = (COS(angle) * 0x1C) / 0x40;
        qVelY = (SIN(angle) * 0x1C) / 0x40;
        boss->strc10C[j].qWorldX = boss->qUnk9C + (qVelX);
        boss->strc10C[j].qWorldY = boss->qUnkA0 + (qVelY);
        boss->strc10C[j].unk14 = angle;
        s = &boss->spr3B4[j];
        tf = &boss->tf848[j];
        s->tiles = vram;
        s->oamFlags = 0x280;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->prevVariant = -1;
        s->animSpeed = SPRITE_ANIM_SPEED(1.0);
        s->palId = 0;
        s->hitboxes[0].index = -1;
        s->frameFlags = 0x1000;
        switch (j) {
            case 0:
                s->anim = ANIM_BOSS_EXTRA_CLAW;
                s->variant = 4;
                break;
            case 1:
                s->anim = ANIM_BOSS_EXTRA_CLAW;
                s->variant = 2;
                break;
            case 2:
                s->anim = ANIM_BOSS_EXTRA_CLAW;
                s->variant = 0;
                s->frameFlags |= 0x20;
                s->frameFlags |= 0xD;
                break;
            case 3:
                s->anim = ANIM_BOSS_EXTRA_CLAW;
                s->variant = 6;
                break;
        }
        s->x = I(boss->strc10C[j].qWorldX) - gCamera.x;
        s->y = I(boss->strc10C[j].qWorldY) - gCamera.y;
        tf->rotation = (boss->strc10C[j].unk14 - 0x280) & 0x3FF;
        tf->x = s->x;
        tf->y = s->y;
        tf->qScaleX = Q(1);
        tf->qScaleY = Q(1);
        UpdateSpriteAnimation(s);
        vram += 0x200;
        for (i = 0; i < ARRAY_COUNT(boss->strc16C[j]); i++) {
            boss->strc16C[j][i].qWorldX = boss->qUnk9C;
            boss->strc16C[j][i].qWorldY = boss->qUnkA0;
            s = &boss->spr454[j][i];
            s->tiles = vramTilesArmNode;
            s->anim = ANIM_BOSS_EXTRA_ARM_NODE;
            s->variant = 0;
            s->oamFlags = 0x4C0;
            s->animCursor = 0;
            s->qAnimDelay = 0;
            s->prevVariant = -1;
            s->animSpeed = 0x10;
            s->palId = 0;
            s->hitboxes[0].index = -1;
            s->frameFlags = 0x1000;
            if ((j != 0) || (i != 0)) {
                s->frameFlags |= 0x80000;
            }
            s->x = I(boss->strc16C[j][i].qWorldX) - gCamera.x;
            s->y = I(boss->strc16C[j][i].qWorldY) - gCamera.y;
            UpdateSpriteAnimation(s);
        }
    }

    s = &boss->spr814;
    s->tiles = NULL;
    boss->unkF = 0;
}

void sub_878_8082D08(UltimateGemerl *boss)
{
    Sprite *s;
    SpriteTransform *tf;
    u8 j;
    u8 i;

    for (j = 0; j < ARRAY_COUNT(boss->spr3B4); j++) {
        s = &boss->spr3B4[j];
        tf = &boss->tf848[j];
        s->x = I(boss->strc10C[j].qWorldX) - gCamera.x;
        s->y = I(boss->strc10C[j].qWorldY) - gCamera.y;

        if (j == 2) {
            tf->rotation = (boss->strc10C[j].unk14 - 0x280) & 0x3FF;
            tf->x = s->x;
            tf->y = s->y;
            TransformSprite(s, tf);
            UpdateSpriteAnimation(s);
            DisplaySprite(s);

            for (i = 0; i < ARRAY_COUNT(boss->spr454[2]); i++) {
                s = &boss->spr454[j][i];
                s->x = I(boss->strc16C[j][i].qWorldX) - gCamera.x;
                s->y = I(boss->strc16C[j][i].qWorldY) - gCamera.y;
                DisplaySprite(s);
            }
        } else {
            UpdateSpriteAnimation(s);
            DisplaySprite(s);
        }
    }
}

s32 sub_878_8082E2C(UltimateGemerl *boss, u8 param1)
{
    Vec2_32 sp0[4];
    u8 sp24;
    u8 sp28;
    u16 temp_r3;
    s32 temp_ip;
    s32 var_r4;
    s32 var_r5;
    u16 var_r7;
    u8 var_r6;
    s32 var_sb;
    s32 var_sl;

    // TODO: Inline the rodata!
    memcpy(sp0, gUnknown_080D5E64, sizeof(sp0));

    switch (param1) {
        case 0:
            for (sp24 = 0, var_r7 = 0x80; sp24 < 4; sp24++, var_r7 += 0x100) {
                boss->strc10C[sp24].qWorldX = boss->qUnk9C + Q(sp0[sp24].x);
                boss->strc10C[sp24].qWorldY = boss->qUnkA0 + Q(sp0[sp24].y);
                boss->strc10C[sp24].unk14 = var_r7;
                for (var_r6 = 0; var_r6 < 6; var_r6++) {
                    boss->strc16C[sp24][var_r6].qWorldX = boss->qUnk9C;
                    boss->strc16C[sp24][var_r6].qWorldY = boss->qUnkA0;
                }
            }
            break;
        case 3:
            for (sp24 = 0; sp24 < 4; sp24++) {
                sp28 = 0;
                var_r7 = (sp24 * 0x100) + 0x80;
                var_sl = (COS(var_r7) * 0x1C) / 0x40;
                var_sb = (SIN(var_r7) * 0x1C) / 0x40;
                switch (sp24) {
                    case 2:
                        if (boss->unkE2 == 0) {
                            var_r5 = gUnknown_080D5D64[boss->unkBC[0]];
                            var_r5 = -Q(var_r5);
                            var_r4 = gUnknown_080D5DE4[boss->unkBC[0]];
                            var_r4 = -Q(var_r4);
                            if (boss->unkBC[0] <= 0xCU) {
                                boss->strc10C[sp24].unk14 = 0x280;
                            } else {
                                boss->strc10C[sp24].unk14 = 0x200;
                            }
                        } else {
                            var_r5 = gUnknown_080D5D64[boss->unkC4[2]];
                            var_r5 = -Q(var_r5);
                            var_r4 = gUnknown_080D5DE4[boss->unkC4[2]];
                            var_r4 = -Q(var_r4);
                            boss->strc10C[sp24].unk14 = 0x100;
                        }
                        boss->strc10C[sp24].qWorldX = boss->qUnk9C + var_sl + var_r5;
                        boss->strc10C[sp24].qWorldY = boss->qUnkA0 + var_sb + var_r4;
                        sp28++;
                        for (var_r6 = 0; var_r6 < ARRAY_COUNT(boss->strc16C[sp24]); var_r6++, sp28++) {
                            if (boss->unkBC[sp28] != 0) {
                                var_r5 = gUnknown_080D5D64[boss->unkBC[sp28]];
                                temp_r3 = Q(var_r5);
                                var_r4 = gUnknown_080D5DE4[boss->unkBC[sp28]];
                                var_r4 = Q(var_r4);
                                boss->strc16C[sp24][var_r6].qWorldX = (boss->qUnk9C + var_sl) - temp_r3;
                                boss->strc16C[sp24][var_r6].qWorldY = (boss->qUnkA0 + var_sb) - var_r4;
                            } else {
                                boss->strc16C[sp24][var_r6].qWorldX = boss->qUnk9C;
                                boss->strc16C[sp24][var_r6].qWorldY = boss->qUnkA0;
                            }
                        }
                        break;

                    case 1:
                        if (boss->unkE2 == 0) {
                            var_r5 = gUnknown_080D5D64[boss->unkBC[0]];
                            var_r5 = -Q(var_r5);
                            var_r4 = gUnknown_080D5DE4[boss->unkBC[0]];
                            var_r4 = +Q(var_r4);
                            if (boss->unkBC[0] <= 12) {
                                boss->strc10C[sp24].unk14 = 0x180;
                            } else {
                                boss->strc10C[sp24].unk14 = 0x200;
                            }
                        } else {
                            var_r5 = gUnknown_080D5D64[boss->unkC4[1]];
                            var_r5 = -Q(var_r5);
                            var_r4 = gUnknown_080D5DE4[boss->unkC4[1]];
                            var_r4 = +Q(var_r4);
                            boss->strc10C[sp24].unk14 = 0x300;
                        }
                        boss->strc10C[sp24].qWorldX = boss->qUnk9C + var_sl + var_r5;
                        boss->strc10C[sp24].qWorldY = boss->qUnkA0 + var_sb + var_r4;
                        sp28++;
                        for (var_r6 = 0; var_r6 < 6; var_r6++, sp28++) {
                            if (boss->unkBC[sp28] != 0) {
                                var_r5 = gUnknown_080D5D64[boss->unkBC[sp28]];
                                temp_r3 = Q(var_r5);
                                var_r4 = gUnknown_080D5DE4[boss->unkBC[sp28]];
                                var_r4 = Q(var_r4);
                                boss->strc16C[sp24][var_r6].qWorldX = (boss->qUnk9C + var_sl) - temp_r3;
                                boss->strc16C[sp24][var_r6].qWorldY = (boss->qUnkA0 + var_sb) + var_r4;
                            } else {
                                boss->strc16C[sp24][var_r6].qWorldX = boss->qUnk9C;
                                boss->strc16C[sp24][var_r6].qWorldY = boss->qUnkA0;
                            }
                        }
                        break;
                }
            }
            break;
        case 4:
            for (sp24 = 0; sp24 < 4; sp24++) {
                var_r7 = (sp24 << 8) | 0x80;
                switch (sp24) {
                    case 3:
                        if (boss->unkD0[1] != 0) {
                            var_sl = (COS(var_r7) * 0x1C) / 0x40;
                            var_sb = (SIN(var_r7) * 0x1C) / 0x40;
                            var_sl = (var_sl) + boss->qUnk9C;
                            var_sb = (var_sb) + boss->qUnkA0;
                            temp_ip = boss->unkD0[1] / 6;
                            var_r7 = 0x2C0;
                            temp_r3 = I(boss->unkE4[0]);
                            for (var_r6 = 6; var_r6 != 0; var_r6--) {
                                boss->strc16C[sp24][var_r6 - 1].qWorldX = var_sl;
                                boss->strc16C[sp24][var_r6 - 1].qWorldY = var_sb;
                                var_r5 = (COS(var_r7) * temp_ip) / 0x4000;
                                var_r4 = (SIN(var_r7) * temp_ip) / 0x4000;
                                var_sl += var_r5;
                                var_sb += var_r4;
                                // if (var_r6 == 1) {
                                //     var_r7 = (var_r7 - (temp_r3 >> 2)) & 0x3FF;
                                // } else if ((var_r6 >= 1) && (var_r6 <= 3)) {
                                //     var_r7 = (var_r7 + (temp_r3 >> 2)) & 0x3FF;
                                // } else {
                                //     var_r7 = (var_r7 - (u16)temp_r3) & 0x3FF;
                                // }
                                switch (var_r6) {
                                    case 1:
                                        var_r7 = (var_r7 - (temp_r3 >> 2)) & 0x3FF;
                                        break;
                                    case 2:
                                    case 3:
                                        var_r7 = (var_r7 + (temp_r3 >> 2)) & 0x3FF;
                                        break;
                                    default:
                                        var_r7 = (var_r7 - (u16)temp_r3) & 0x3FF;
                                        break;
                                }
                            }

                            //                            boss->strc10C[sp24].unk14 = var_r7;
                            //                            boss->strc10C[sp24].qWorldX = var_sl;
                            //                            boss->strc10C[sp24].qWorldY = var_sb;
                            // goto set_strc10C;
                            boss->strc10C[sp24].unk14 = var_r7;
                            boss->strc10C[sp24].qWorldX = var_sl;
                            boss->strc10C[sp24].qWorldY = var_sb;
                        }
                        break;

                    case 0:
                        if (boss->unkD0[2] != 0) {
                            var_sl = (COS(var_r7) * 0x1C) / 0x40;
                            var_sb = (SIN(var_r7) * 0x1C) / 0x40;
                            var_sl = (var_sl) + boss->qUnk9C;
                            var_sb = (var_sb) + boss->qUnkA0;
                            temp_ip = boss->unkD0[2] / 6;
                            var_r7 = 0x140;
                            temp_r3 = I(boss->unkE4[1]);

                            for (var_r6 = 6; var_r6 != 0; var_r6--) {
                                boss->strc16C[sp24][var_r6 - 1].qWorldX = var_sl;
                                boss->strc16C[sp24][var_r6 - 1].qWorldY = var_sb;
                                var_r5 = (COS(var_r7) * temp_ip) / 0x4000;
                                var_r4 = (SIN(var_r7) * temp_ip) / 0x4000;
                                var_sl += var_r5;
                                var_sb += var_r4;
                                switch (var_r6) {
                                    case 1:
                                        var_r7 = (var_r7 + (temp_r3 >> 2)) & 0x3FF;
                                        break;
                                    case 2:
                                    case 3:
                                        var_r7 = (var_r7 - (temp_r3 >> 2)) & 0x3FF;
                                        break;
                                    default:
                                        var_r7 = (var_r7 + temp_r3) & 0x3FF;
                                        break;
                                }
                            }
                            {
                            set_strc10C:
                                boss->strc10C[sp24].unk14 = var_r7;
                                boss->strc10C[sp24].qWorldX = var_sl;
                                boss->strc10C[sp24].qWorldY = var_sb;
                            }
                        }
                        break;
                }
            }
            break;
        case 1:
            sp24 = (u32)boss->unkE3;
            var_sl = (COS((boss->unkE3 << 8) + 0x80) * 0x1C) / 0x40;
            var_sb = (SIN((boss->unkE3 << 8) + 0x80) * 0x1C) / 0x40;
            var_sl = (var_sl) + boss->qUnk9C;
            var_sb = (var_sb) + boss->qUnkA0;
            temp_ip = (s32)boss->unkD0[1] / 6;
            var_r5 = (COS(boss->unkCC) * temp_ip) / 0x4000;
            var_r4 = (SIN(boss->unkCC) * temp_ip) / 0x4000;
            for (var_r6 = 6; var_r6 != 0; var_r6--) {
                boss->strc16C[sp24][var_r6 - 1].qWorldX = var_sl;
                boss->strc16C[sp24][var_r6 - 1].qWorldY = var_sb;
                var_sl += var_r5;
                var_sb += var_r4;
            }

            boss->strc10C[sp24].unk14 = boss->unkCC;
            boss->strc10C[sp24].qWorldX = var_sl;
            boss->strc10C[sp24].qWorldY = var_sb;
            break;
        case 2:
            sp24 = (u32)boss->unkE3;
            var_sl = (COS((boss->unkE3 << 8) + 0x80) * 0x1C) / 0x40;
            var_sb = (SIN((boss->unkE3 << 8) + 0x80) * 0x1C) / 0x40;
            var_sl = (var_sl) + boss->qUnk9C;
            var_sb = (var_sb) + boss->qUnkA0;
            temp_ip = (s32)boss->unkD0[1] / 6;
            var_r5 = (COS(boss->unkCC) * temp_ip) / 0x4000;
            var_r4 = (SIN(boss->unkCC) * temp_ip) / 0x4000;
            for (var_r6 = 6; var_r6 != 0; var_r6--) {
                boss->strc16C[sp24][var_r6 - 1].qWorldX = var_sl;
                boss->strc16C[sp24][var_r6 - 1].qWorldY = var_sb;
                var_sl += var_r5;
                var_sb += var_r4;
            }

            boss->strc10C[sp24].unk14 = boss->unkCE;
            boss->strc10C[sp24].qWorldX = var_sl;
            boss->strc10C[sp24].qWorldY = var_sb;
            break;
        case 5: {
            var_r7 = boss->rotation;
            var_r7 = (var_r7 + 0x80) & 0x3FF;
            for (sp24 = 0; sp24 < 4; sp24++) {
                var_sl = (COS(var_r7) * 0x1C) / 0x40;
                var_sb = (SIN(var_r7) * 0x1C) / 0x40;
                var_sl += boss->qUnk9C;
                var_sb += boss->qUnkA0;

                for (var_r6 = 6, temp_r3 = var_r7; var_r6 != 0; var_r6--) {
                    if (boss->unkBC[var_r6] != 0) {
                        var_r5 = (COS(temp_r3) * boss->unkBC[var_r6]) / 0x40;
                        var_r4 = (SIN(temp_r3) * boss->unkBC[var_r6]) / 0x40;
                    } else {
                        var_r5 = 0;
                        var_r4 = 0;
                    }
                    var_sl += var_r5;
                    var_sb += var_r4;
                    boss->strc16C[sp24][var_r6 - 1].qWorldX = var_sl;
                    boss->strc16C[sp24][var_r6 - 1].qWorldY = var_sb;
                    temp_r3 = (temp_r3 + 0x20) & 0x3FF;
                }

                if (boss->unkBC[var_r6] != 0) {
                    var_r5 = (COS(temp_r3) * boss->unkBC[var_r6]) / 0x40;
                    var_r4 = (SIN(temp_r3) * boss->unkBC[var_r6]) / 0x40;
                } else {
                    var_r5 = 0;
                    var_r4 = 0;
                }
                if ((boss->unkBB == 0) && (boss->unkBC[0] == 0)) {
                    boss->strc10C[sp24].unk14 = var_r7;
                } else {
                    boss->strc10C[sp24].unk14 = temp_r3;
                }
                boss->strc10C[sp24].qWorldX = var_sl + var_r5;
                boss->strc10C[sp24].qWorldY = var_sb + var_r4;
                var_r7 = (var_r7 + 0x100) & 0x3FF;
            }
        } break;
        case 6: {
            sp24 = 2;
            var_r7 = (sp24 * 0x100) + 0x80;
            if (boss->unkD0[1] != 0) {
                var_sl = (COS(var_r7) * 0x1C) / 0x40;
                var_sb = (SIN(var_r7) * 0x1C) / 0x40;
                var_sl = (var_sl) + boss->qUnk9C;
                var_sb = (var_sb) + boss->qUnkA0;
                temp_ip = boss->unkD0[1] / 6;
                var_r7 = (u16)(boss->unkE4[1] >> 8);
                temp_r3 = boss->unkE4[0] / 0x100;
                for (var_r6 = 6; var_r6 != 0; var_r6--) {
                    s32 jIndex = 2;
                    boss->strc16C[jIndex][var_r6 - 1].qWorldX = var_sl;
                    boss->strc16C[jIndex][var_r6 - 1].qWorldY = var_sb;
                    var_r5 = (COS(var_r7) * temp_ip) / 0x4000;
                    var_r4 = (SIN(var_r7) * temp_ip) / 0x4000;
                    var_sl += var_r5;
                    var_sb += var_r4;
                    var_r7 = (var_r7 + temp_r3) & 0x3FF;
                }
                boss->strc10C[sp24].unk14 = var_r7;
                boss->strc10C[sp24].qWorldX = var_sl;
                boss->strc10C[sp24].qWorldY = var_sb;
            }
            break;
        }
    }
    boss->unkC = param1;
    return 0;
}

void sub_878_8083A44(UltimateGemerl *boss, u8 param1)
{
    s32 qWorldX, qWorldY;
    s16 var_r0_2;
    Player *p = boss->players[0];
    u32 len;
    s16 x, y;
    s32 var_sl;
    s32 r6;
    s32 r8;

    switch (param1) {
        case 0:
            qWorldX = p->qWorldX + Q(gCamera.unk6A);
            qWorldY = p->qWorldY;
            if (qWorldY <= boss->qUnkA0) {
                var_sl = 2;
            } else {
                var_sl = 1;
            }

            if (qWorldX <= (boss->qUnk9C - Q(168))) {
                x = I(boss->qUnk9C) - 168;
            } else {
                if (qWorldX >= boss->strc10C[var_sl].qWorldX) {
                    x = I(boss->strc10C[var_sl].qWorldX);
                } else {
                    x = I(qWorldX);
                }
            }

            if (qWorldY <= boss->qUnkA0 - Q(32)) {
                var_r0_2 = (I(boss->qUnkA0) - 32);
            } else if (qWorldY >= (s32)(boss->qUnkA0 + Q(32))) {
                var_r0_2 = (I(boss->qUnkA0) + 32);
            } else {
                var_r0_2 = I(qWorldY);
            }
            r8 = Q(x);
            {
                u32 r0 = var_r0_2;
                r6 = Q(var_r0_2);
                x -= I(boss->strc10C[var_sl].qWorldX);
                y = (var_r0_2 - I(boss->strc10C[var_sl].qWorldY));
                boss->unkCC = SA2_LABEL(sub_8004418)(y, x);
            }
            r8 -= boss->strc10C[var_sl].qWorldX;
            r6 = r6 - boss->strc10C[var_sl].qWorldY;
            len = Sqrt(SQUARE(r8) + SQUARE(r6));
            boss->unkD0[0] = len;
            boss->unkD0[1] = 0;
            boss->strc10C[2].unk8 = 0x800;
            boss->unkE3 = var_sl;
            break;
        case 1:
            var_sl = boss->unkE3;
            {
                x = I(p->qWorldX) + gCamera.unk6A;
                x -= I(boss->strc10C[var_sl].qWorldX);
                y = I(p->qWorldY) - I(boss->strc10C[var_sl].qWorldY);
                boss->unkCE = (u16)SA2_LABEL(sub_8004418)(y, x);
            }
            break;
    }
}

void sub_878_8083BE4(UltimateGemerl *boss)
{
    Sprite *s;

    switch (boss->unk8) {
        case 0:
            boss->unkE2 = 0;
            boss->unkE3 = 0;
            boss->unkF2 = PseudoRandom32();
            boss->unk1[1] = 0;
            /* fallthrough */
        case 1010:
            boss->unk8 = 1000;
            boss->unk4 = 0x3C;
            sub_808706C_inline(boss, 0);
            /* fallthrough */
        case 1000: {
            if (--boss->unk4 == 0) {
                u16 *pUnkF2 = &boss->unkF2;
                u32 flag = (1 << boss->unkE2) & *pUnkF2;
                if ((((u32)boss->unkE2 <= 4U) && flag) || (boss->unkE2 == 0)) {
                    boss->unkE2 += 1;
                    boss->unk4 = 0x3C;
                    sub_808706C_inline(boss, 1);
                    boss->unk8 = 10;
                } else {
                    boss->unk8 = 2000;
                }
            }
        } break;
        case 10:
            if (--boss->unk4 == 0) {
                boss->unk8 = 100;
                m4aSongNumStart(SE_576);
            } else if (boss->unk4 == 0xA) {
                sub_878_8083A44(boss, 0U);
            }
            sub_878_8082E2C(boss, 0U);
            break;
        case 100:
            if (boss->unkD0[0] > boss->unkD0[1]) {
                boss->unkD0[1] += boss->strc10C[2].unk8;
            } else {
                boss->unk4 = 60;
                boss->unk8 = 20;
            }

            sub_878_8082E2C(boss, 1U);
            break;
        case 20:
            sub_878_8082E2C(boss, 1U);
            if (--boss->unk4 == 0) {
                boss->unk8 = 200;
            } else if (boss->unk4 == 10) {
                sub_878_8083A44(boss, 1U);
            }
            break;
        case 200:
            boss->unk8 = 300;
            if (boss->lives > 2U) {
                boss->unk4 = 0x78;
                boss->unk1[1] = 0;
            } else {
                if (boss->unkCE < 0x200) {
                    boss->unkE4[0] = 1;
                } else {
                    boss->unkE4[0] = 0;
                }
                boss->unkE4[1] = 0;
                boss->unk1[1] = 1;
            }
            m4aSongNumStart(SE_577);
            sub_80870E4(0);
            sub_878_8082E2C(boss, 2U);
            break;
        case 300:
            gDispCnt |= DISPCNT_WIN0_ON;
            gWinRegs[0] = WIN_RANGE(0, 160);
            gWinRegs[2] = WIN_RANGE(0, 240);
            gWinRegs[4] = 0x3F;
            gWinRegs[5] = 0x18;
            gBldRegs.bldCnt = 0x3FBF;
            gBldRegs.bldAlpha = 8;
            gBldRegs.bldY = 8;
            boss->unk8 = 310;
            /* fallthrough */
        case 310: {
            s32 x, y;
            sub_878_8082E2C(boss, 2U);
            x = I(boss->strc10C[boss->unkE3].qWorldX) - gCamera.x;
            y = I(boss->strc10C[boss->unkE3].qWorldY) - gCamera.y;
            sub_808587C(x, y, boss->unkCE);
            if (boss->unk1[1] == 0) {
                if (--boss->unk4 == 0) {
                    boss->unk8 = 320;
                }
            } else {
                if (boss->unkE4[0] != 0) {
                    boss->unkCE = (boss->unkCE + 8) & 0x3FF;
                } else {
                    boss->unkCE = (boss->unkCE - 8) & 0x3FF;
                }
                boss->unkE4[1] += 8;
                if (boss->unkE4[1] >= 0x600) {
                    boss->unk8 = 320;
                }
            }
            sub_808717C(boss);
        } break;

        case 320:
            gDispCnt &= ~DISPCNT_WIN0_ON;
            gWinRegs[4] = 0;
            gWinRegs[5] = 0;
            gBldRegs.bldCnt = 0;
            gBldRegs.bldAlpha = 0;
            gBldRegs.bldY = 0;
            gFlags &= ~4;
            boss->unk8 = 500;
            sub_878_8082E2C(boss, 1U);
            break;

        case 500:
            if (boss->unkD0[1] != 0) {
                boss->unkD0[1] -= boss->strc10C[2].unk8;
            } else {
                boss->unk8 = 1010;
            }
            sub_878_8082E2C(boss, 1U);
            break;
        case 2000:
            boss->unk1[0] = 0;
            break;

        case 6000:
            if (--boss->unk4 == 0) {
                boss->unk8 = 0;
            }
            break;
    }
}

// (97.78%) https://decomp.me/scratch/qwYhX
NONMATCH("asm/non_matching/game/sa3/bosses/boss_e__sub_878_8083F8C.inc", void sub_878_8083F8C(UltimateGemerl *boss))
{
    u8 i;

    switch (boss->unk8) {
        case 0x0: {
            boss->unkBB = 0;

            for (i = 0; i < ARRAY_COUNT(boss->unkBC); i++) {
                boss->unkBC[i] = 0;
                boss->unkC4[i] = 0;
            }

            boss->unkE2 = 0;
            boss->unk1[2] = 0;
            boss->unk1[1] = 0;
            boss->unk4 = 1;
            boss->unk8 = 100;
            m4aSongNumStart(SE_576);

            sub_808706C_inline(boss, 1);

            sub_878_8082E2C(boss, 0U);
        } break;

        case 100: {
            if (--boss->unk4 == 0) {
                boss->unk4 = 0x14;
                if (boss->unkBB < ARRAY_COUNT(boss->unkBC)) {
                    if (++boss->unkBB == 6) {
                        boss->unk4 -= 4;
                    }
                }
            }
            for (i = 0; i < boss->unkBB; i++) {
                boss->unkBC[i] += 1;
            }
            if (boss->unkBC[0] >= 120) {
                boss->unk4 = 0x3C;
                boss->unk8 = 110;
            }
            sub_878_8082E2C(boss, 3U);
        } break;

        case 110: {
            if (--boss->unk4 == 0) {
                boss->unkE2 = 1;
                for (i = 1; i < 3; i++) {
                    u8 r3;
                    boss->unkC4[i] = 120;
                    boss->strc10C[i].unk10 = gUnknown_080D5D50[PseudoRandom32() % ARRAY_COUNT(gUnknown_080D5D50)];

                    if (i == 2) {
                        boss->strc10C[i].unk14 = 0x100;
                    } else {
                        boss->strc10C[i].unk14 = 0x300;
                    }
                    boss->strc10C[i].unk16 = 1;
                    boss->strc10C[i].unk12 = 0;
                }
                boss->unk4 = 0x258;
                boss->unk8 = 200;
            }
            sub_878_8082E2C(boss, 3U);
        } break;

        case 200: {
            sub_878_8082E2C(boss, 3U);
            for (i = 1; i < 3; i++) {
                switch (boss->strc10C[i].unk12) {
                    case 0:
                        if (--boss->strc10C[i].unk10 == 0) {
                            boss->strc10C[i].unk10 = 30;
                            boss->strc10C[i].unk12 = 10;
                        } else if (boss->strc10C[i].unk16 == 0) {
                            if (++boss->unkC4[i] > 105) {
                                boss->strc10C[i].unk16 ^= 1;
                            }
                        } else {
                            if (--boss->unkC4[i] < 21) {
                                boss->strc10C[i].unk16 ^= 1;
                            }
                        }
                        break;
                    case 10:
                        if (--boss->strc10C[i].unk10 == 0) {
                            u8 *unk1 = &((u8 *)boss)[i];
                            if (unk1[1] != 0) {
                                boss->strc10C[i].unk10 = 1;
                            } else {
                                ExtraBoss_CreateMissile(boss, i);
                                boss->strc10C[i].unk10 = 0x1E;
                                boss->strc10C[i].unk12 = 0x14;
                            }
                        }
                        break;
                    case 20:
                        if (--boss->strc10C[i].unk10 == 0) {
                            do {

                                boss->strc10C[i].unk10 = gUnknown_080D5D50[PseudoRandom32() % ARRAY_COUNT(gUnknown_080D5D50)];
                                boss->strc10C[i].unk16 = PseudoRandom32() % 2u;
                                boss->strc10C[i].unk12 = 0;
                                boss->strc10C[i].unk14 += 0;
                            } while (0);
                        }
                        break;
                }
            }
            if ((boss->unk4 == 0) || (--boss->unk4 == 0)) {
                if ((boss->unk1[1] == 0) && (boss->unk1[2] == 0)) {
                    boss->unk8 = 210;
                }
            }
        } break;

        case 210:
            for (i = 1; i < 3; i++) {
                if (boss->unkC4[i] < 120) {
                    boss->unkC4[i]++;
                }
            }

            if (boss->unkC4[1] == 120 && boss->unkC4[2] == 120) {
                boss->unkE2 = 0;
                boss->unk8 = 500;
            }
            sub_878_8082E2C(boss, 3U);
            break;

        case 500:
            for (i = 0; i < boss->unkBB; i++) {
                if (boss->unkBC[i] != 0) {
                    boss->unkBC[i]--;
                }
            }
            if (boss->unkBC[0] == 0) {
                boss->unk1[0] = 0;
                sub_808706C_inline(boss, 0);
            }

            sub_878_8082E2C(boss, 3U);
            break;
        case 510:
            if (--boss->unk4 == 0) {
                boss->unk8 = 0;
            }
            sub_878_8082E2C(boss, 3U);
            break;
    }
}
END_NONMATCH

// TODO: Fake-match!
void sub_878_808439C(UltimateGemerl *boss)
{
    s32 temp_r6;
    u16 var_r1_5;
    s16 var_r8;
    s16 var_sb;
    s32 r4;
    Sprite *s;

    switch (boss->unk8) {
        case 0:
            boss->unkE2 = PseudoRandom32() & 1;
            boss->unkD0[0] = 0x7800;
            boss->unkD0[1] = 0;
            boss->unkD0[2] = 0;
            boss->strc10C[2].unk8 = 0x200;
            boss->unkE4[0] = 0;
            boss->unkE4[1] = 0;
            boss->unk4 = 0;
            boss->unk8 = 100;
            m4aSongNumStart(SE_569);

            sub_808706C_inline(boss, 1);
            break;
        case 10:
            if (--boss->unk4 == 0) {
                boss->unkE2 ^= 1;
                boss->unk8 = 100;
            }
            break;
        case 100: {
            if (boss->unkE2 != 0) {
                var_r1_5 = 2;
            } else {
                var_r1_5 = 1;
            }
            r4 = var_r1_5;
            if (boss->unkD0[0] > boss->unkD0[var_r1_5]) {
                boss->unkD0[var_r1_5] += boss->strc10C[2].unk8;
            } else {
                m4aSongNumStart(SE_569);
                boss->unk8 = 110;
            }
            boss->unkE4[r4 - 1] += 0x180;
            sub_878_8082E2C(boss, 4U);
        } break;
        case 110: {
            if (boss->unkE2 != 0) {
                var_r1_5 = 1;
            } else {
                var_r1_5 = 2;
            }
            r4 = var_r1_5;
            if (boss->unkD0[0] > boss->unkD0[r4]) {
                boss->unkD0[var_r1_5] += boss->strc10C[2].unk8;
            } else {
                boss->unk4 = 0x3C;
                boss->unk8 = 200;
            }
            boss->unkE4[r4 - 1] += 0x180;
            sub_878_8082E2C(boss, 4U);
        } break;
        case 200:
            if (--boss->unk4 == 0) {
                sub_8078DB0(0x505, 0, 0x21C, 1U);
                boss->unk8 = 300;
            }
            sub_878_8082E2C(boss, 4U);
            break;
        case 300: {
            Sprite *s;
            gDispCnt |= (DISPCNT_WIN0_ON | DISPCNT_BG0_ON);
            gWinRegs[0] = WIN_RANGE(0, DISPLAY_WIDTH);
            gWinRegs[2] = WIN_RANGE(0, DISPLAY_HEIGHT);
            gWinRegs[WINREG_WININ] = 0x3F;
            gWinRegs[WINREG_WINOUT] = 24;
            gBldRegs.bldCnt = 0x3841;
            gBldRegs.bldAlpha = 0xC0C;
            gBldRegs.bldY = 0xC;
            boss->unkF = 1;
            s = &boss->spr814;
            s->anim = gAnimPatternBossExtraElectricSpark[0][0];
            s->variant = gAnimPatternBossExtraElectricSpark[0][1];
            s->prevVariant = -1;
            boss->unkCC = 0;
            m4aSongNumStart(SE_574);
            boss->unk8 = 330;
        }
            /* fallthrough */
        case 330:
            boss->unkCC += 4;
            if (boss->unkCC >= 0x100) {
                s32 unkED;
                Sprite *s;
                if (boss->unkE2 == 0) {
                    u32 unkED_0 = 5;
                    boss->unkED = unkED_0;
                } else {
                    unkED = 6;
                    boss->unkED = unkED;
                }
                boss->unk4 = 0xB4;
                s = &boss->spr814;
                s->anim = gAnimPatternBossExtraElectricSpark[1][0];
                s->variant = (u8)gAnimPatternBossExtraElectricSpark[1][1];
                s->prevVariant = -1;
                boss->unk8 = 340;
            }
            var_r8 = I(boss->qUnk9C) - gCamera.x;
            var_sb = (I(boss->qUnkA0) - gCamera.y);
            temp_r6 = (SIN(boss->unkCC) * 24) / 0x4000;
            sub_8085618(var_r8 - 88, var_sb, temp_r6);
            sub_8087188(boss, var_r8 - 88, var_sb, temp_r6);
            sub_878_8082E2C(boss, 4U);
            gBgScrollRegs[0][0] = 344 - var_r8;
            gBgScrollRegs[0][1] = 24 - var_sb;
            break;
        case 340: {
            if (boss->unkEE != 0) {
                u32 unkED = 4;
                boss->unkED = unkED;
                {
#ifndef NON_MATCHING
                    u32 r0;
                    asm("mov %0, #0xAF\n"
                        "lsl %0, #1\n"
                        : "=r"(r0));
#else
                    u32 r0 = 350;
#endif
                    boss->unk8 = r0;
                }
            }
            var_r8 = I(boss->qUnk9C) - gCamera.x;
            var_sb = I(boss->qUnkA0) - gCamera.y;
            sub_8085618(var_r8 - 88, var_sb, 24);
            sub_8087188(boss, var_r8 - 88, var_sb, 24);
            sub_878_8082E2C(boss, 4U);
            gBgScrollRegs[0][0] = 344 - var_r8;
            gBgScrollRegs[0][1] = 24 - var_sb;
            break;
            case 350:
                if (boss->unkEE != 0) {
                    Sprite *s;
                    boss->unkED = 0;
                    s = &boss->spr814;
                    s->anim = gAnimPatternBossExtraElectricSpark[0][0];
                    s->variant = gAnimPatternBossExtraElectricSpark[0][1];
                    s->prevVariant = -1;
                    boss->unk8 = 360;
                }
                var_r8 = I(boss->qUnk9C) - gCamera.x;
                var_sb = I(boss->qUnkA0) - gCamera.y;
                sub_8085618(var_r8 - 88, var_sb, 24);
                sub_8087188(boss, var_r8 - 88, var_sb, 24);
                sub_878_8082E2C(boss, 4U);
                gBgScrollRegs[0][0] = 344 - var_r8;
                gBgScrollRegs[0][1] = 24 - var_sb;
        } break;

        case 360: {
            boss->unkCC -= 4;
            if (boss->unkCC == 0) {
                Sprite *s;
                gDispCnt &= ~(DISPCNT_WIN0_ON | DISPCNT_BG0_ON);
                gWinRegs[WINREG_WININ] = 0;
                gWinRegs[WINREG_WINOUT] = 0;
                gBldRegs.bldCnt = 0;
                gBldRegs.bldAlpha = 0;
                gBldRegs.bldY = 0;
                gFlags &= ~FLAGS_EXECUTE_HBLANK_COPY;
                s = &boss->spr814;
                s->anim = gAnimPatternBossExtraElectricSpark[2][0];
                s->variant = (u8)gAnimPatternBossExtraElectricSpark[2][1];
                s->prevVariant = -1;
                boss->unk8 = 500;
            }
#ifndef NON_MATCHING
            // TODO: Match without volatile pointer
            if (*(volatile u16 *)&boss->unkCC != 0)
#else
            if (boss->unkCC != 0)
#endif
            {
                var_r8 = I(boss->qUnk9C) - gCamera.x;
                var_sb = I(boss->qUnkA0) - gCamera.y;
                temp_r6 = (SIN(boss->unkCC) * 24) / 0x4000;
                sub_8085618(var_r8 - 88, var_sb, temp_r6);
                sub_8087188(boss, var_r8 - 88, var_sb, temp_r6);
            }
            sub_878_8082E2C(boss, 4U);
            gBgScrollRegs[0][0] = 344 - var_r8;
            gBgScrollRegs[0][1] = 24 - var_sb;
        } break;
        case 500: {
            if (boss->unkD0[1] != 0) {
                boss->unkD0[1] -= boss->strc10C[2].unk8;
                boss->unkD0[2] -= boss->strc10C[2].unk8;
            } else {
                boss->unkF = 0;
                boss->unk1[0] = 0;
                sub_808706C_inline(boss, 0);
            }
            boss->unkE4[0] -= 0x180;
            boss->unkE4[1] -= 0x180;
            sub_878_8082E2C(boss, 4U);
        } break;
    }
}

// (100.00%) https://decomp.me/scratch/YsDC7
// TODO: Fake-match!
void sub_878_808491C(UltimateGemerl *boss)
{
    u8 var_r0_2;
    u8 var_r1_2;
    s32 unk4, unkED;

    switch (boss->unk8) {
        case 0: {
            boss->rotation = 0;
            boss->unkBA = 0;
            boss->unkBB = 0;

            for (var_r1_2 = 0; var_r1_2 < ARRAY_COUNT(boss->unkBC); var_r1_2++) {
                boss->unkBC[var_r1_2] = 0;
            }

            boss->unkED = 1;
            boss->unk4 = boss->unkED - 1;
            boss->unk8 = 10;
        } break;

        case 10: {
            if (boss->unkEE != 0) {
                boss->unkED = 0;
                {
#ifndef NON_MATCHING
                    s32 *r0 = &boss->unk100;
                    s32 r1;
                    asm("mov %0, #0" : "=r"(r1));
                    *r0 = r1;
#else
                    boss->unk100 = 0;
#endif
                    boss->unk104 = boss->unk100;
                }
                m4aSongNumStart(SE_532);
                sub_808706C_inline(boss, 1);
                boss->unk8 = 100;
            }
        } break;

        case 100: {
            if (boss->unkBB < ARRAY_COUNT(boss->unkBC) - 1) {
                if (++boss->unkBC[boss->unkBB] > 0x17U) {
                    boss->unkBB += 1;
                }
            }
            boss->unk4++;
            var_r0_2 = I(boss->unk104) / 0x400;
            boss->unk100 = (boss->unk100 - gUnknown_080D5D20[var_r0_2]) % 0x40000u;
            boss->rotation = (boss->unk100 >> 8);
            boss->unk104 += gUnknown_080D5D20[var_r0_2];
            if (boss->unk104 >= 0xC0000) {
                boss->unk104 -= 0x80000;
                boss->unk8 = 0x6E;
            }
            sub_878_8082E2C(boss, 5U);
        } break;

        case 110: {
            if (boss->unkBB != 0) {
                if (--boss->unkBC[boss->unkBB - 1] == 0) {
                    boss->unkBB -= 1;
                }
            }
            boss->unk100 = (boss->unk100 - gUnknown_080D5D20[2]) % 0x40000u;
            boss->rotation = I(boss->unk100);
            boss->unk104 -= gUnknown_080D5D20[2];
            if (boss->unk104 <= 0) {
                boss->rotation = 0;
                m4aSongNumStop(SE_532);
                sub_808706C_inline(boss, 0);
                boss->unk8 = 200;
            }

            sub_878_8082E2C(boss, 5U);
        } break;

        case 200: {
            u32 unkED = 2;
            boss->unkED = unkED;
            boss->unk8 = 210;
        } break;

        case 210: {
            if (boss->unkEE != 0) {
                boss->unkED = 0;
                boss->unk1[0] = 0;
            }
        } break;
    }
}

void sub_878_8084B2C(UltimateGemerl *boss)
{
    switch (boss->unk8) {
        case 0x0:
            boss->unk4 = 240;
            boss->unk8 = 10;
            break;

        case 10:
            if (--boss->unk4 == 0) {
                boss->unk4 = 120;
                boss->unk8 = 100;
            }
            break;

        case 100:
            if (1 & (u16)boss->unk4) {
                boss->unk108 ^= 1;
            }
            if (--boss->unk4 == 0) {
                boss->unk4 = 180;
                {
                    s32 unk8 = 8;
                    boss->unkED = unk8;
                }
                boss->unkA4 = -Q(2);
                boss->unkA8 = -Q(1);
                sub_8087038_inline(boss, 150);
                boss->unk8 = 200;
            }
            break;

        case 200:
            if (--boss->unk4 == 0) {
                boss->unk108 = 0;
                boss->unkED = 0;
                boss->unk12 = 3000;
                boss->unk8 = 300;
            }
            break;

        case 300:
            break;
    }
    sub_878_8082E2C(boss, boss->unkD);
}

void sub_878_8084BEC(UltimateGemerl *boss)
{
    switch (boss->unk8) {
        case 0:
            boss->unk4 = 1;
            boss->unk8 = 1000;

            if (DISPCNT_WIN0_ON & gDispCnt) {
                gDispCnt &= ~(DISPCNT_WIN0_ON | DISPCNT_BG0_ON);
                gWinRegs[WINREG_WININ] = 0;
                gWinRegs[WINREG_WINOUT] = 0;
                gBldRegs.bldCnt = 0;
                gBldRegs.bldAlpha = 0;
                gBldRegs.bldY = 0;
                gFlags &= ~FLAGS_EXECUTE_HBLANK_COPY;
            }
            break;

        case 1000:
            break;
    }
    sub_878_8082E2C(boss, boss->unkD);
}

void sub_878_8084C50(UltimateGemerl *boss)
{
    AltarEmeraldCutsceneEggmanEscape *sceneEggman = TASK_DATA(boss->taskCutscene);

    switch (boss->unk8) {
        case 0: {
            boss->unk4 = 0x78;
            boss->unk8 = 10;
        } break;

        case 10: {
            if (--boss->unk4 == 0) {
                boss->unk8 = 100;
            }
        } break;

        case 100: {
            boss->unkD0[0] = 0x8C00;
            boss->unkD0[1] = 0;
            boss->strc10C[2].unk8 = 0x400;
            boss->unkE4[0] = 0;
            boss->unkE4[1] = 0x36000;
            m4aSongNumStart(SE_576);
            boss->unk8 = 110;
        } break;

        case 110: {
            if (boss->unkD0[0] > boss->unkD0[1]) {
                boss->unkD0[1] += boss->strc10C[2].unk8;
            } else {
                sceneEggman->unk14[0].unk18 = 0x42E;
                boss->unk4 = 0x3C;
                boss->unk8 = 120;
            }
            boss->unkE4[0] += 0x180;
            sub_878_8082E2C(boss, 6U);
        } break;

        case 120: {
            if (--boss->unk4 == 0) {
                boss->unk8 = 130;
            }
            sub_878_8082E2C(boss, 6U);
        } break;

        case 130: {
            boss->unkE4[1] -= Q(2);
            if (I(boss->unkE4[1]) <= 0x2E0) {
                sceneEggman->unk14[0].unk18 = 0x438;
                boss->unk8 = 140;
            }

            sub_878_8082E2C(boss, 6U);
            sceneEggman->unk14[0].qWorld.x = boss->strc10C[2].qWorldX;
            sceneEggman->unk14[0].qWorld.y = boss->strc10C[2].qWorldY;
            sceneEggman->unk14[1].qWorld.x = sceneEggman->unk14[0].qWorld.x;
            sceneEggman->unk14[1].qWorld.y = sceneEggman->unk14[0].qWorld.y;
        } break;

        case 140: {
            boss->unkE4[0] -= Q(8);
            if (boss->unkE4[0] <= -Q(106)) {
                sceneEggman->unk14[0].unk18 = 0x44C;
                boss->unk4 = 0x78;
                boss->unk8 = 150;
            }
            sub_878_8082E2C(boss, 6U);
            sceneEggman->unk14[0].qWorld.x = boss->strc10C[2].qWorldX;
            sceneEggman->unk14[0].qWorld.y = boss->strc10C[2].qWorldY;
            sceneEggman->unk14[1].qWorld.x = sceneEggman->unk14[0].qWorld.x;
            sceneEggman->unk14[1].qWorld.y = sceneEggman->unk14[0].qWorld.y;
        } break;

        case 150: {
            if (--boss->unk4 == 0) {
                boss->strc10C[2].unk8 = -Q(4);
                boss->unk8 = 160;
            }
            sub_878_8082E2C(boss, 6U);
        } break;

        case 160: {
            if (boss->unkE4[0] != 0) {
                boss->unkE4[0] += Q(4);
                if (boss->unkE4[0] >= 0) {
                    boss->unkE4[0] = 0;
                }
            }
            if (I(boss->unkE4[1]) != 0x2C0) {
                boss->unkE4[1] -= Q(1);
            }
            boss->unkD0[1] += boss->strc10C[2].unk8;
            if (boss->unkD0[1] <= 0) {
                boss->unkD0[1] = 0;
                boss->unk4 = 0x3C;
                boss->unk8 = 200;
            }
            sub_878_8082E2C(boss, 6U);
        } break;

        case 200: {
            if (--boss->unk4 == 0) {
                boss->unkE0 = SA2_LABEL(sub_8004418)(-80, 120);
                boss->unkFC = 0;
                boss->unkA4 = 0;
                {
                    s32 unkED = 3;
                    boss->unkED = unkED;
                }
                boss->unk8 = 210;
            }
        } break;

        case 210: {
            boss->unkA4 += 0x80;
            boss->unkFC += I(boss->unkA4);
            if (boss->unkFC >= 200) {
                boss->unk8 = 220;
            }
        } break;

        case 220: {
            gCurTask->main = Task_878_CallDestroy;
            boss->unk8 = 1000;
        } break;
    }
}

void sub_878_8084EB4(UltimateGemerl *boss)
{
    Player *temp_r1_3;
    Player *partner;
    s16 var_r0;
    u16 temp_r4_2;
    u32 temp_r0_7;
    u8 temp_r0_2;

    switch (boss->unk12) {
        case 0:
            if (sub_878_80867FC(boss, 0U)) {
                sub_878_80854B8(boss, 0U);
            }
            break;
        case 10:
            if (--boss->unk10 != 0) {
                if (sub_878_80867FC(boss, 1U)) {
                    sub_878_80854B8(boss, 1U);
                }
            } else {
                sub_8087038_inline(boss, 100);
                boss->unk12 = 0;
            }
            break;
        case 100:
            if (--boss->unk14 == 0) {
                if (boss->lives != 0) {
                    boss->unk10 -= 120;
                    if (boss->unk10 <= 0) {
                        boss->unk10 = 0;
                        boss->unk12 = 0;
                    } else {
                        boss->unk12 = 10;
                    }
                } else {
                    if (CURRENT_GAME_MODE == GAME_MODE_MP_STORY_COOP) {
                        if (gStageData.playerIndex != 0) {
                            boss->unk12 = 0x6E;
                        } else {
                            sub_8027674(1U, 0U);
                            sub_878_8085458(boss);
                            boss->unk10 = 120;
                            boss->unk12 = 1000;
                        }
                    } else {
                        sub_878_8085458(boss);
                        boss->unk10 = 120;
                        boss->unk12 = 1000;
                    }
                    boss->players[0]->unk48 = 1;
                    boss->players[1]->unk48 = 1;
                    temp_r1_3 = boss->players[0];
                    temp_r1_3->moveState |= 0x08000000;
                    partner = boss->players[1];
                    partner->moveState |= 0x08000000;
                }
                if (boss->unk12 == 10) {
                    return;
                }
                sub_8087038_inline(boss, 100);
            }
            break;
        case 110:
            break;
        case 1000:
            if (--boss->unk10 == 0) {
                VramFree(boss->vram1C);
                VramFree(boss->vram20);
                boss->vram1C = NULL;
                boss->vram20 = NULL;
                boss->vram24 = VramMalloc(0x74U);
                sub_878_80851FC(boss, 1U);
                m4aSongNumStart(SE_545);
                boss->unk10 = 0xF;
                boss->unk12 = 1010;
            }
            break;
        case 1010:
            if (--boss->unk10 == 0) {
                sub_878_80851FC(boss, (u8)(boss->unkE + 0xA));
                m4aSongNumStart(SE_545);
                if (++boss->unkE <= 5U) {
                    boss->unk10 = 0xF;
                    return;
                }
                boss->unk10 = 0x78;
                boss->unk12 = 1020;
            }
            break;
        case 1020:
            if (--boss->unk10 == 0) {
                m4aSongNumStart(SE_545);
                var_r0 = 0x7D0;
                boss->unk12 = 2000;
            }
            break;
        case 2000:
            if (gStageData.timer & 1) {
                s32 cosVal, sinVal;
                temp_r4_2 = PseudoRandom32() % 1024u;
                temp_r0_7 = PseudoRandom32() % 48U;
                cosVal = (COS(temp_r4_2) * temp_r0_7) >> 6;
                sinVal = (SIN(temp_r4_2) * temp_r0_7) >> 6;
                BossExtra_CreateExplosion(I((s32)(boss->qUnk9C + cosVal)), I(boss->qUnkA0 + sinVal), 0x300U, temp_r4_2, 0x1E, boss->vram24);
            }
            if (((++boss->unk10) & 0x3F) == 0) {
                m4aSongNumStart(SE_545);
            }
            break;
        case 3000:
            gBldRegs.bldCnt = 0x3FBF;
            gBldRegs.bldAlpha = 8;
            gBldRegs.bldY = 0;
            boss->unk10 = 8;
            boss->unk12 = 0xBC2;
            gPlayers[0].moveState |= 0x08000000;
            gPlayers[1].moveState |= 0x08000000;
            gMusicManagerState.fadeoutSpeed = 0x140;
            break;
        case 3010:
            if (--boss->unk10 == 0) {
                gBldRegs.bldY += 1;
                if (gBldRegs.bldY == 0x10) {
                    boss->unk12 = 5000;
                    boss->unk10 = 0x78;
                } else {
                    boss->unk10 = 8;
                }
                return;
            }
            break;
        case 5000:
            sub_805602C();
            boss->unk12 = 5010;
            break;
    }
}

void sub_878_80851FC(UltimateGemerl *boss, u8 param1)
{
    u16 angle;
    s32 cosVal, sinVal;
    u8 i, j;

    switch (param1) {
        case 0: {
            boss->unkD = boss->unkC;
            boss->unkE = 0;
            for (j = 0; j < ARRAY_COUNT(boss->strc10C); j++) {
                boss->strc10C[j].unk10 = 1;
                for (i = 0; i < ARRAY_COUNT(boss->strc16C[j]); i++) {
                    boss->strc16C[j][i].unk10 = 1;
                }
            }
        } break;

        case 1: {
            for (j = 0; j < 4; j++) {
                BossExtra_CreateExplosion(I(boss->strc10C[j].qWorldX), I(boss->strc10C[j].qWorldY), 0x200U, 0U, 30, boss->vram24);
                boss->strc10C[j].unk10 = 0;
            }
        } break;

        default: {
            for (j = 0, angle = 0x80; j < 4; j++, angle += 0x100) {
                i = param1 - 10;
                cosVal = (COS(angle) * 28) / 0x40;
                sinVal = (SIN(angle) * 28) / 0x40;
                if (boss->strc16C[j][i].qWorldX == boss->qUnk9C) {
                    if (boss->strc16C[j][i].qWorldY == boss->qUnkA0) {
                        boss->strc16C[j][i].qWorldX += cosVal;
                        boss->strc16C[j][i].qWorldY = boss->qUnkA0 + sinVal;
                    }
                }
                BossExtra_CreateExplosion(I(boss->strc16C[j][i].qWorldX), I(boss->strc16C[j][i].qWorldY), 0x200U, 0U, 0x1E, boss->vram24);
                boss->strc16C[j][i].unk10 = 0;
            }
        } break;
    }
}

void sub_878_80853D8(UltimateGemerl *boss)
{
    Player *partner = boss->players[NAP_EGGMAN];

    boss->vram6C = VramMalloc(64);
    boss->unk72 = 300;

    {
        Sprite *s = &boss->spr74;
        s->tiles = ALLOC_TILES(ANIM_EGGMAN_SIDE);
        s->anim = ANIM_EGGMAN_SIDE;
        s->variant = 0;
        s->oamFlags = SPRITE_OAM_ORDER(17);
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->prevVariant = -1;
        s->animSpeed = SPRITE_ANIM_SPEED(1.0);
        s->palId = 0;
        s->hitboxes[0].index = -1;
        s->frameFlags = 0x1400;
        s->x = I(partner->qWorldX) - gCamera.x;
        s->y = I(partner->qWorldY) - gCamera.y;
        UpdateSpriteAnimation(s);
    }
}

void sub_878_8085458(UltimateGemerl *boss)
{
    boss->unk1[0] = 5;
    boss->unk4 = 1;
    boss->unk8 = 0;
    if (0x2000 & gDispCnt) {
        gDispCnt &= 0xDEFF;
        gWinRegs[WINREG_WININ] = 0;
        gWinRegs[WINREG_WINOUT] = 0;
        gBldRegs.bldCnt = 0;
        gBldRegs.bldAlpha = 0;
        gBldRegs.bldY = 0;
        gFlags &= ~4;
    }
    gStageData.unk4 = 6;
}

void sub_878_80854B8(UltimateGemerl *boss, u8 param1)
{
    if (param1 == 0) {
        boss->unk10 = boss->unk5A;
        sub_8087038_inline(boss, 50);
        boss->unk12 = 10;
        m4aSongNumStart(SE_EXTRA_BOSS_OPEN);

        if (CURRENT_GAME_MODE == GAME_MODE_MP_STORY_COOP) {
            if (gStageData.playerIndex == PLAYER_1) {
                sub_8027674(5, 0);
            } else {
                sub_8027674(6, 0);
            }
        }
    } else {
        boss->unk14 = 120;
        sub_8078DB0(ANIM_PALETTE_BOSS_EXTRA_A, 0, 120, 0U);
        boss->unk12 = 100;
        m4aSongNumStart(SE_235);

        if ((boss->lives == 0) || (--boss->lives == 0)) {
            sub_878_80851FC(boss, 0U);
        }
        if (gStageData.difficulty == 0) {
            if (boss->lives == 6) {
                sub_80299D4(0x39U);
            }
        } else if (boss->lives == 5) {
            sub_80299D4(0x39U);
        }
        if (CURRENT_GAME_MODE == GAME_MODE_MP_STORY_COOP) {
            if (gStageData.playerIndex == PLAYER_1) {
                sub_8027674(3U, boss->lives);
            } else {
                sub_8027674(4U, boss->lives);
            }
        }
    }
}

void sub_8085588(u8 *param0, s16 param1)
{
    UltimateGemerl *boss = TASK_DATA(gStageData.taskBoss);
    u32 temp_r0 = (0x7F & param0[2]);
    u16 lives = (param0[3] | (param0[4] << 8));

    switch (temp_r0) {
        case 1:
            boss->lives = 0;
            sub_878_8085458(boss);
            boss->unk10 = 0x78;
            boss->unk12 = 0x3E8;
            break;
        case 2:
            break;
        case 3:
        case 4:
            if (boss->lives != (u8)lives) {
                sub_878_80854B8(boss, 1U);
            }
            break;
        case 5:
        case 6:
            if ((u16)boss->unk12 == 0) {
                sub_878_80854B8(boss, 0U);
            }
            break;
        default:
            break;
    }
}

void sub_8085618(s16 param0, s16 param1, s16 param2)
{
    s16 temp_r3;
    u16 temp_r0 = 0;
    u16 temp_r0_2;
    u16 var_r1;
    s16 var_r2;

    // Probably inline of sub_80870E4!
    if (gBgOffsetsHBlankPrimary == gBgOffsetsBuffer) {
        DmaFill16(3, 0, gBgOffsetsBuffer[0], 0x280);
    } else {
        DmaFill16(3, 0, gBgOffsetsBuffer[1], 0x280);
    }
    if (param2 == 0) {
        param2 = 1;
    }

    temp_r0 = param1 - param2;
    var_r2 = temp_r0;
    if ((s32)(temp_r0 << 0x10) < 0) {
        var_r2 = 0;
    }
    temp_r0_2 = param1 + param2;
    var_r1 = temp_r0_2;
    if ((s32)(s16)temp_r0_2 > 0xA0) {
        var_r1 = 0xA0;
    }
    if ((var_r2 > 0x9F) || ((s32)(var_r1 << 0x10) <= 0)) {
        gFlags |= 4;
    } else {
        SA2_LABEL(sub_8007A08)(0, 0U, var_r2, param0, (s32)(u8)var_r1);
    }
}

void unused_80856DC(s16 param0, s16 param1, s16 param2)
{
    s16 sp8;
    s16 temp_r2;
    s16 temp_r4;
    u16 temp_r0;
    u16 temp_r0_2;
    u16 var_r1 = 0;
    u16 var_r2_2;

    // Probably inline of sub_80870E4!
    if (gBgOffsetsHBlankPrimary == gBgOffsetsBuffer) {
        DmaFill16(3, 0, gBgOffsetsBuffer[0], 0x280);
    } else {
        DmaFill16(3, 0, gBgOffsetsBuffer[1], 0x280);
    }
    if (param2 == 0) {
        param2 = 1;
    }

    temp_r0 = param1 - param2;
    var_r1 = temp_r0;
    if ((s32)(temp_r0 << 0x10) < 0) {
        var_r1 = 0;
    }
    temp_r0_2 = param1 + param2;
    var_r2_2 = temp_r0_2;
    if ((s32)(s16)temp_r0_2 > 0xA0) {
        var_r2_2 = 0xA0;
    }
    SA2_LABEL(sub_80075D0)(0U, var_r1, var_r2_2, param0, param1, param2);
}

static inline void temp(s16 input) { asm("" ::"r"(input)); };

// (98.24%) https://decomp.me/scratch/Byk7d
NONMATCH("asm/non_matching/game/sa3/bosses/boss_e__sub_8085784.inc", void sub_8085784(void))
{
    s16 sp4;
    u16 angle;
    s16 r0;
    s32 r1 = 0;

    // Probably inline of sub_80870E4!
    if (gBgOffsetsHBlankPrimary == gBgOffsetsBuffer) {
        DmaFill16(3, 0, gBgOffsetsBuffer[0], 0x280);
    } else {
        DmaFill16(3, 0, gBgOffsetsBuffer[1], 0x280);
    }

    SA2_LABEL(sub_8005FB4)(0, 0, 0, 0x42, 0xA0);

#ifndef NON_MATCHING
    // Unused data
    angle = 0x3C0;
    temp(COS(angle));
    temp(SIN(angle));

    angle = 0x1C0;
    temp(COS(angle));
    temp(SIN(angle));
#endif

    r1 = 0;
    // Probably inline of sub_80870E4!
    if (gBgOffsetsHBlankPrimary == gBgOffsetsBuffer) {
        DmaFill16(3, r1, gBgOffsetsBuffer[0], 0x280);
    } else {
        DmaFill16(3, r1, gBgOffsetsBuffer[1], 0x280);
    }
    SA2_LABEL(sub_8005FB4)(0, 0, 0, 0xE, 6);
}
END_NONMATCH

#if 01
#else

void sub_808587C(s16 screenX, s16 screenY, u16 unkCE)
{
    u8 sp4[4];
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
    s16 temp_r0_2;
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
    s16 temp_r0_6;
    u16 temp_r0_7;
    u16 temp_r0_8;
    u16 temp_r0_9;
    u16 temp_r6;
    u16 temp_r7;
    u16 var_r2_2;
    u16 var_r2_4;
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
    int_vcount var_r5;
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
    int_vcount *pWin0H; /// NOTE: The pointer type is *half* of GBA window register WIN0H buffer.
    u16 var_r4 = 0;

    // Probably inline of sub_80870E4!
    if (gBgOffsetsHBlankPrimary == gBgOffsetsBuffer) {
        DmaFill16(3, 0, gBgOffsetsBuffer[0], 0x280);
    } else {
        DmaFill16(3, 0, gBgOffsetsBuffer[1], 0x280);
    }
    gFlags |= FLAGS_EXECUTE_HBLANK_COPY;
    temp_r0 = screenX << 0x10;
    if (screenX < 240) {
        temp_r0_2 = screenY;

        if ((screenY < 0xA0) && (screenY >= 0)) {
            temp_r0_3 = gUnknown_080D5D30[unkCE >> 5];
            if (3 & temp_r0_3) {
                gHBlankCopySize = 2;
                gHBlankCopyTarget = (void *)&REG_WIN0H;
            }
            switch (temp_r0_3) {
                default:
                    break;
                case 0:
                    temp_r0_4 = temp_r0_2 - 8;
                    if (var_r2 < 0) {
                        var_r2 = 0;
                    }
                    var_r4 = screenY + 8;
                    if (var_r4 > 0xA0) {
                        var_r4 = 0xA0;
                    }
                    sa2__sub_8007A08(0, screenX, (u8)var_r2, 0xF0U, var_r4);
                    break;
                case 1:
                    var_r6 = (u32)((temp_r0_2 - 7) << 8) >> 0x18;
                    pWin0H = WINDOW_INCREMENT(pWin0H, var_r6);
                    sp4[1] = 0U;
                    sp4[0] = 0U;
                    var_r7 = 0;
                    var_r8 = 0;
                    if (var_r6 < 0xA0) {
                        temp_r1_2 = screenX + 3;
                        do {
                            if (sp4[0] != 0) {
                                *pWin0H = WIN_RANGE(0, 240);
                                pWin0H++;
                            } else {
                                temp_r0_6 = temp_r1_2 + gUnknown_080D5E84[var_r7 + 14];
                                if (temp_r0_6 > 0xEF) {
                                    sp4[0] = 1U;
                                }
                                *pWin0H = (s8)temp_r0_6;
                                pWin0H++;
                            }
                            if (sp4[1] != 0) {
                                *pWin0H = 0xF0;
                                pWin0H++;
                            } else {
                                temp_r0_7 = temp_r1_2 + gUnknown_080D5E84[var_r7];
                                if (temp_r0_7 >= DISPLAY_WIDTH) {
                                    *pWin0H = DISPLAY_WIDTH;
                                    pWin0H++;
                                    sp4[1] = 1U;
                                } else {
                                    *pWin0H = (s8)(temp_r0_7 + var_r8);
                                    pWin0H++;
                                }
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
                    var_r6 = WIN_GET_LOWER(temp_r0_2 - 6);
                    pWin0H = WINDOW_INCREMENT(pWin0H, var_r6);
                    var_r4_2 = (u32)((temp_r0 + 0x60000) << 8) >> 0x18;
                    var_r5 = var_r4_2;
                    sp4[1] = 0U;
                    sp4[0] = 0U;
                    var_r7_2 = 0;
                    while (var_r6 < 0xA0) {
                        *pWin0H = (s8)var_r5;
                        pWin0H++;
                        *pWin0H = (s8)var_r4_2;
                        pWin0H++;
                        if (var_r5 < DISPLAY_WIDTH) {
                            var_r5 += 1;
                        }
                        if (sp4[0] != 0) {
                            if (var_r4_2 < 0xF0) {
                                var_r4_2 = (u32)(u8)(var_r4_2 + 1);
                            }
                        } else {
                            var_r4_2 = (u32)(u8)(var_r4_2 - 1);
                            var_r7_2 += 1;
                            if ((u32)var_r7_2 > 0xAU) {
                                sp4[0] = 1U;
                            }
                        }
                        var_r6 += 1;
                    }

                    break;
                case 3:
                    var_r6_3 = (u32)((temp_r0_2 + 0xFFFD0000) << 8) >> 0x18;
                    pWin0H = pWin0H + (var_r6_3 * gHBlankCopySize);
                    sp4[1] = 0U;
                    sp4[0] = 0U;
                    var_r7_3 = 0;
                    var_r8_2 = 0;
                    if (var_r6_3 > 0x9FU) {
                        return;
                    }
                    temp_r1_3 = (s16)((u32)(temp_r0 + 0x70000) >> 0x10);
                    do {
                        if (sp4[0] != 0) {
                            *pWin0H = DISPLAY_WIDTH;
                            pWin0H++;
                        } else {
                            temp_r0_8 = temp_r1_3 + gUnknown_080D5FC4[var_r7_3 + 7];
                            if (temp_r0_8 >= DISPLAY_WIDTH) {
                                sp4[0] = 1U;
                            }
                            *pWin0H = (s8)temp_r0_8;
                            pWin0H++;
                        }
                        if (sp4[1] != 0) {
                            *pWin0H = 0xF0;
                            pWin0H++;
                        } else {
                            temp_r0_9 = temp_r1_3 + gUnknown_080D5FC4[var_r7_3];
                            if ((s32)(s16)temp_r0_9 >= DISPLAY_WIDTH) {
                                *pWin0H = DISPLAY_WIDTH;
                                pWin0H++;
                                sp4[1] = 1U;
                            } else {
                                *pWin0H = (s8)(temp_r0_9 + var_r8_2);
                                pWin0H++;
                            }
                        }
                        if (var_r7_3 == 6) {
                            var_r8_2 = 0xFFF2;
                        }
                        var_r6_3 = (u32)(u8)(var_r6_3 + 1);
                        var_r7_3 += 1;
                    } while (var_r6_3 <= 0x9FU);
                    return;
                case 4:
                    var_r2_2 = screenY;
                    if (temp_r0_2 < 0) {
                        var_r2_2 = 0;
                    }
                    sa2__sub_8007A08(0, (u8)(screenX - 8), (u8)var_r2_2, (u8)(screenX + 8), 0xA0);
                    return;
                case 5:
                    var_r6_4 = (u32)((temp_r0_2 + 0xFFFD0000) << 8) >> 0x18;
                    pWin0H = ((u8 *)pWin0H) + (var_r6_4 * gHBlankCopySize);
                    sp4[1] = 0U;
                    sp4[0] = 0U;
                    var_r7_4 = 0;
                    var_r8_3 = 0;
                    if (var_r6_4 > 0x9FU) {
                        return;
                    }
                    temp_r0_10 = (s16)((u32)(temp_r0 + 0xFFF90000) >> 0x10);
                    do {
                        temp_r0_11 = sp4[1];
                        if (temp_r0_11 != 0) {
                            *pWin0H = 0;
                            var_r3_5 = pWin0H + 1;
                        } else {
                            temp_r0_12 = var_r8_3 + (temp_r0_10 - gUnknown_080D5FC4[var_r7_4]);
                            if ((s32)(temp_r0_12 << 0x10) < 0) {
                                *pWin0H = temp_r0_11;
                                var_r3_5 = pWin0H + 1;
                                sp4[1] = 1U;
                            } else {
                                *pWin0H = (u8)temp_r0_12;
                                var_r3_5 = pWin0H + 1;
                            }
                        }
                        temp_r1_4 = sp4[0];
                        if (temp_r1_4 != 0) {
                            *var_r3_5 = 0;
                            goto block_77;
                        }
                        temp_r0_13 = temp_r0_10 - gUnknown_080D5FC4[var_r7_4 + 7];
                        if ((s32)(temp_r0_13 << 0x10) < 0) {
                            *var_r3_5 = temp_r1_4;
                            pWin0H = var_r3_5 + 1;
                            sp4[0] = 1U;
                        } else {
                            *var_r3_5 = (u8)temp_r0_13;
                        block_77:
                            pWin0H = var_r3_5 + 1;
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
                    pWin0H = ((u8 *)pWin0H) + (var_r6_5 * gHBlankCopySize);
                    var_r4_3 = (u32)((temp_r0 + 0xFFFA0000) << 8) >> 0x18;
                    var_r5_2 = var_r4_3;
                    sp4[1] = 0U;
                    sp4[0] = 0U;
                    var_r7_5 = 0;
                    if (var_r6_5 > 0x9FU) {
                        return;
                    }
                    do {
                        *pWin0H = (s8)var_r5_2;
                        pWin0H++;
                        *pWin0H = (s8)var_r4_3;
                        pWin0H++;
                        if (var_r4_3 != 0) {
                            var_r4_3 = (u32)(u8)(var_r4_3 - 1);
                        }
                        if (sp4[1] != 0) {
                            if (var_r5_2 != 0) {
                                var_r5_2 = (u32)(u8)(var_r5_2 - 1);
                            }
                        } else {
                            var_r5_2 = (u32)(u8)(var_r5_2 + 1);
                            var_r7_5 += 1;
                            if ((u32)var_r7_5 > 0xAU) {
                                sp4[1] = 1U;
                            }
                        }
                        var_r6_5 = (u32)(u8)(var_r6_5 + 1);
                    } while (var_r6_5 <= 0x9FU);
                    return;
                case 7:
                    var_r6_6 = (u32)((temp_r0_2 + 0xFFF90000) << 8) >> 0x18;
                    pWin0H = ((u8 *)pWin0H) + (var_r6_6 * gHBlankCopySize);
                    sp4[1] = 0U;
                    sp4[0] = 0U;
                    var_r7_6 = 0;
                    var_r8_4 = 0;
                    if (var_r6_6 > 0x9FU) {
                        return;
                    }
                    temp_r0_14 = (s16)((u32)(temp_r0 + 0xFFFD0000) >> 0x10);
                    do {
                        temp_r0_15 = sp4[1];
                        if (temp_r0_15 != 0) {
                            *pWin0H = 0;
                            goto block_101;
                        }
                        temp_r0_16 = var_r8_4 + (temp_r0_14 - gUnknown_080D5E84[var_r7_6]);
                        if ((s32)(temp_r0_16 << 0x10) < 0) {
                            *pWin0H = temp_r0_15;
                            pWin0H = pWin0H + 1;
                            sp4[1] = 1U;
                        } else {
                            *pWin0H = (u8)temp_r0_16;
                        block_101:
                            pWin0H = pWin0H + 1;
                        }
                        temp_r1_5 = sp4[0];
                        if (temp_r1_5 != 0) {
                            *pWin0H = 0;
                            goto block_107;
                        }
                        temp_r0_17 = temp_r0_14 - gUnknown_080D5E84[var_r7_6 + 0xE];
                        if ((s32)(temp_r0_17 << 0x10) < 0) {
                            *pWin0H = temp_r1_5;
                            pWin0H = pWin0H + 1;
                            sp4[0] = 1U;
                        } else {
                            *pWin0H = (u8)temp_r0_17;
                        block_107:
                            pWin0H = pWin0H + 1;
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
                    temp_r0_19 = screenY + 8;
                    var_r4_4 = temp_r0_19;
                    if ((s32)(s16)temp_r0_19 > 0xA0) {
                        var_r4_4 = 0xA0;
                    }
                    sa2__sub_8007A08(0, 0U, (u8)var_r2_3, screenX, (s32)(u8)var_r4_4);
                    return;
                case 9:
                    temp_r0_20 = (u32)(temp_r0 + 0xFFFD0000) >> 0x10;
                    var_r6_7 = (u32)((temp_r0_2 + 0x70000) << 8) >> 0x18;
                    pWin0H = pWin0H + (var_r6_7 * gHBlankCopySize);
                    *(pWin0H + 1) = (s8)temp_r0_20;
                    sp4[1] = 0U;
                    sp4[0] = 0U;
                    var_r7_7 = 0;
                    var_r8_5 = 0;
                    if (var_r6_7 != 0) {
                        temp_r0_21 = (s16)temp_r0_20;
                        do {
                            temp_r0_22 = sp4[1];
                            if (temp_r0_22 != 0) {
                                *pWin0H = 0;
                                pWin0H = pWin0H - 1;
                            } else {
                                temp_r0_23 = var_r8_5 + (temp_r0_21 - gUnknown_080D5E84[var_r7_7]);
                                if ((s32)(temp_r0_23 << 0x10) < 0) {
                                    *pWin0H = temp_r0_22;
                                    pWin0H = pWin0H - 1;
                                    sp4[1] = 1U;
                                } else {
                                    *pWin0H = (u8)temp_r0_23;
                                block_125:
                                    pWin0H = pWin0H - 1;
                                }
                            }
                            temp_r1_6 = sp4[0];
                            if (temp_r1_6 != 0) {
                                *pWin0H = 0;
                                goto block_131;
                            }
                            temp_r0_24 = temp_r0_21 - gUnknown_080D5E84[var_r7_7 + 14];
                            if ((s32)(temp_r0_24 << 0x10) < 0) {
                                *pWin0H = temp_r1_6;
                                pWin0H = pWin0H - 1;
                                sp4[0] = 1U;
                            } else {
                                *pWin0H = (u8)temp_r0_24;
                            block_131:
                                pWin0H = pWin0H - 1;
                            }
                            if (var_r7_7 == 0xD) {
                                var_r8_5 = 6;
                            }
                            var_r6_7 = (u32)(u8)(var_r6_7 - 1);
                            var_r7_7 += 1;
                        } while (var_r6_7 != 0);
                    }
                    *(pWin0H + 1) = 0;
                    break;
                case 10:
                    temp_r0_25 = (u32)(temp_r0 + 0xFFFA0000) >> 0x10;
                    var_r6_8 = (u32)((temp_r0_2 + 0x60000) << 8) >> 0x18;
                    pWin0H = pWin0H + (var_r6_8 * gHBlankCopySize);
                    pWin0H++;
                    *pWin0H = (s8)temp_r0_25;
                    var_r4_5 = (u8)temp_r0_25;
                    var_r5_3 = var_r4_5;
                    sp4[1] = 0U;
                    sp4[0] = 0U;
                    var_r7_8 = 0;
                    if (var_r6_8 == 0) {

                    } else {
                        do {
                            *pWin0H = var_r5_3;
                            temp_r3_3 = pWin0H - 1;
                            *temp_r3_3 = var_r4_5;
                            pWin0H = temp_r3_3 - 1;
                            if (var_r4_5 != 0) {
                                var_r4_5 -= 1;
                            }
                            if (sp4[1] != 0) {
                                if (var_r5_3 != 0) {
                                    var_r5_3 -= 1;
                                }
                            } else {
                                var_r5_3 += 1;
                                var_r7_8 += 1;
                                if ((u32)var_r7_8 > 0xAU) {
                                    sp4[1] = 1U;
                                }
                            }
                            var_r6_8 = (u32)(u8)(var_r6_8 - 1);
                        } while (var_r6_8 != 0);
                    }
                    *(pWin0H + 1) = 0;
                    break;
                case 11:
                    temp_r0_26 = (u32)(temp_r0 + 0xFFF90000) >> 0x10;
                    var_r6_9 = (u32)((temp_r0_2 + 0x30000) << 8) >> 0x18;
                    pWin0H = pWin0H + (var_r6_9 * gHBlankCopySize);
                    pWin0H++;
                    *pWin0H = (s8)temp_r0_26;
                    sp4[1] = 0U;
                    sp4[0] = 0U;
                    var_r7_9 = 0;
                    var_r8_6 = 0;
                    if (var_r6_9 == 0) {

                    } else {
                        temp_r0_27 = (s16)temp_r0_26;
                        do {
                            temp_r0_28 = sp4[1];
                            if (temp_r0_28 != 0) {
                                *pWin0H = 0;
                                pWin0H = pWin0H - 1;
                            } else {
                                temp_r0_29 = var_r8_6 + (temp_r0_27 - gUnknown_080D5FC4[var_r7_9]);
                                if ((s32)(temp_r0_29 << 0x10) < 0) {
                                    *pWin0H = temp_r0_28;
                                    pWin0H = pWin0H - 1;
                                    sp4[1] = 1U;
                                } else {
                                    *pWin0H = (u8)temp_r0_29;
                                block_155:
                                    pWin0H = pWin0H - 1;
                                }
                            }
                            temp_r1_7 = sp4[0];
                            if (temp_r1_7 != 0) {
                                *pWin0H = 0;
                                goto block_161;
                            }
                            temp_r0_30 = temp_r0_27 - gUnknown_080D5FC4[var_r7_9 + 7];
                            if ((s32)(temp_r0_30 << 0x10) < 0) {
                                *pWin0H = temp_r1_7;
                                pWin0H = pWin0H - 1;
                                sp4[0] = 1U;
                            } else {
                                *pWin0H = (u8)temp_r0_30;
                            block_161:
                                pWin0H = pWin0H - 1;
                            }
                            if (var_r7_9 == 6) {
                                var_r8_6 = 0xE;
                            }
                            var_r6_9 = (u32)(u8)(var_r6_9 - 1);
                            var_r7_9 += 1;
                        } while (var_r6_9 != 0);
                    }
                    *(pWin0H + 1) = 0;
                    break;
                case 12:
                    sa2__sub_8007A08(0, (u8)(screenX - 8), 0U, (u8)(screenX + 8), screenY);
                    return;
                case 13:
                    temp_r0_31 = (u32)(temp_r0 + 0x70000) >> 0x10;
                    var_r6_10 = (u32)((temp_r0_2 + 0x30000) << 8) >> 0x18;
                    pWin0H = pWin0H + (var_r6_10 * gHBlankCopySize);
                    pWin0H++;
                    *pWin0H = (s8)temp_r0_31;
                    sp4[1] = 0U;
                    sp4[0] = 0U;
                    var_r7_10 = 0;
                    var_r8_7 = 0;
                    if (var_r6_10 == 0) {

                    } else {
                        temp_r5 = (s16)temp_r0_31;
                        do {
                            if (sp4[0] != 0) {
                                *pWin0H = 0xF0;
                            } else {
                                temp_r0_32 = temp_r5 + gUnknown_080D5FC4[var_r7_10 + 7];
                                if ((s32)(s16)temp_r0_32 > 0xEF) {
                                    sp4[0] = 1U;
                                }
                                *pWin0H = (u8)temp_r0_32;
                            }
                            temp_r3_4 = pWin0H - 1;
                            if (sp4[1] == 0) {
                                temp_r0_33 = var_r8_7 + (temp_r5 + gUnknown_080D5FC4[var_r7_10]);
                                var_r2_4 = temp_r0_33;
                                if ((s32)(s16)temp_r0_33 > 0xEF) {
                                    *temp_r3_4 = 0xF0;
                                    pWin0H = temp_r3_4 - 1;
                                    sp4[1] = 1U;
                                } else {
                                    goto block_179;
                                }
                            } else {
                                var_r2_4 = 0xF0;
                            block_179:
                                *temp_r3_4 = (s8)var_r2_4;
                                pWin0H = temp_r3_4 - 1;
                            }
                            if (var_r7_10 == 6) {
                                var_r8_7 = -0xE;
                            }
                            var_r6_10 = (u32)(u8)(var_r6_10 - 1);
                            var_r7_10 += 1;
                        } while (var_r6_10 != 0);
                    }
                    *(pWin0H + 1) = 0;
                    break;
                case 14:
                    temp_r0_34 = (u32)(temp_r0 + 0x60000) >> 0x10;
                    var_r6_11 = (u32)((temp_r0_2 + 0x60000) << 8) >> 0x18;
                    pWin0H = pWin0H + (var_r6_11 * gHBlankCopySize);
                    pWin0H++;
                    *pWin0H = (s8)temp_r0_34;
                    var_r4_6 = (u8)temp_r0_34;
                    var_r5_4 = var_r4_6;
                    sp4[1] = 0U;
                    sp4[0] = 0U;
                    var_r7_11 = 0;
                    if (var_r6_11 == 0) {

                    } else {
                        do {
                            *pWin0H = var_r5_4;
                            temp_r3_5 = pWin0H - 1;
                            *temp_r3_5 = var_r4_6;
                            pWin0H = temp_r3_5 - 1;
                            if ((u32)var_r5_4 <= 0xEFU) {
                                var_r5_4 += 1;
                            }
                            if (sp4[0] != 0) {
                                if ((u32)var_r4_6 < 0xF0) {
                                    var_r4_6 += 1;
                                }
                            } else {
                                var_r4_6 -= 1;
                                var_r7_11 += 1;
                                if ((u32)var_r7_11 > 0xAU) {
                                    sp4[0] = 1U;
                                }
                            }
                            var_r6_11 = (u32)(u8)(var_r6_11 - 1);
                        } while (var_r6_11 != 0);
                    }
                    *(pWin0H + 1) = 0;
                    break;
                case 15:
                    temp_r0_35 = (u32)(temp_r0 + 0x30000) >> 0x10;
                    var_r6_12 = (u32)((temp_r0_2 + 0x70000) << 8) >> 0x18;
                    pWin0H = pWin0H + (var_r6_12 * gHBlankCopySize);
                    pWin0H++;
                    *pWin0H = (s8)temp_r0_35;
                    sp4[1] = 0U;
                    sp4[0] = 0U;
                    var_r7_12 = 0;
                    var_r8_8 = 0;
                    if (var_r6_12 != 0) {
                        temp_r5_2 = (s16)temp_r0_35;
                        do {
                            if (sp4[0] != 0) {
                                *pWin0H = 0xF0;
                            } else {
                                temp_r0_36 = temp_r5_2 + gUnknown_080D5E84[var_r7_12 + 14];
                                if (temp_r0_36 >= 0xF0) {
                                    sp4[0] = 1U;
                                }
                                *pWin0H = (u8)temp_r0_36;
                            }
                            pWin0H = pWin0H - 1;
                            if (sp4[1] != 0) {
                                *pWin0H = 0xF0;
                                pWin0H = pWin0H - 1;
                            } else {
                                temp_r0_37 = var_r8_8 + (temp_r5_2 + gUnknown_080D5E84[var_r7_12]);
                                if ((s32)(s16)temp_r0_37 >= 0xF0) {
                                    *pWin0H = 0xF0;
                                    pWin0H = pWin0H - 1;
                                    sp4[1] = 1U;
                                } else {
                                    *pWin0H = (s8)temp_r0_37;
                                block_207:
                                    pWin0H = pWin0H - 1;
                                }
                            }
                            if (var_r7_12 == 0xD) {
                                var_r8_8 = -6;
                            }
                            var_r6_12 = (u32)(u8)(var_r6_12 - 1);
                            var_r7_12 += 1;
                        } while (var_r6_12 != 0);
                    }
                    *(pWin0H + 1) = 0;
                    break;
            }
        }
    }
}

void sub_878_80862D8(UltimateGemerl *boss)
{
    Player *player;
    Player *partner;

    if (boss->lives == 0) {
        return;
    }
    player = boss->players[0];
    if (!(player->moveState & 0x100) && !(boss->players[1]->moveState & 0x100)) {
        if (!(2 & player->unk14C.arr_u8[0])
            && ((sub_878_80863FC(boss, player) != 0) || (sub_878_80865B0(boss, player) != 0) || (sub_80871CC(boss, player) != 0)
                || (sub_878_8086774(boss, player) != 0))) {
            sub_801038C(player, 1);
        }
        partner = boss->players[1];
        if (boss->unk70 != 0) {
            if (((sub_878_80865B0(boss, partner) << 0x18) != 0) || ((sub_80871CC(boss, partner) << 0x18) != 0)
                || ((sub_878_8086774(boss, partner) << 0x18) != 0)) {
                sub_8010C58(partner);
            }
        } else if ((gStageData.gameMode == 5) && !(2 & partner->unk14C.arr_u8[0])
                   && ((sub_878_80863FC(boss, partner) != 0) || (sub_878_80865B0(boss, partner) != 0) || (sub_80871CC(boss, partner) != 0)
                       || (sub_878_8086774(boss, partner) != 0))) {
            sub_801038C(partner, 1);
        }
    }
}

u8 sub_878_80863FC(UltimateGemerl *boss, Player *player)
{
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
    u8 var_sb = 0;
    PlayerSpriteInfo *psi = player->spriteInfoBody;
    Sprite *sprPlayer = (Sprite *)&psi->s;

    if ((player->moveState & 0x100) || (sprPlayer->hitboxes[0].index == -1)) {
        return 0U;
    }
    if (1 & boss->unk34) {
        temp_r4 = I(player->qWorldY) - I(boss->strc10C[boss->unkE3].qWorldY);
        temp_r5 = (I(player->qWorldX) + (u16)gCamera.unk6A) - (I(boss->strc10C[boss->unkE3].qWorldY) - 4);
        temp_r6_2 = (u16)sa2__sub_8004418(temp_r4, temp_r5);
        temp_r8 = gUnknown_080D5D30[boss->unkCE >> 5] << 6;
        temp_r1_4 = 32 - ((s32)Sqrt(SQUARE(temp_r5) + SQUARE(temp_r4)) / 12);
        temp_r0 = (s16)temp_r6_2;
        temp_r2 = temp_r8 - temp_r0;
        if (temp_r2 >= 0) {
            if (temp_r2 <= temp_r1_4) {
                var_sb = 2;
            }
        } else if ((s32)(temp_r0 - temp_r8) <= temp_r1_4) {
            var_sb = 2;
        }
    } else if (boss->unk34 & 2) {
        if (boss->unk48 + boss->unk3C <= (I(player->qWorldX) + gCamera.unk6A) - gCamera.x + psi->s.hitboxes[0].b.left) {
            if ((s32)(boss->unk48 + boss->unk3C + ((s8)boss->unk3E - boss->unk3C))
                < (I(player->qWorldX) + gCamera.unk6A) - gCamera.x + psi->s.hitboxes[0].b.left) {
                if (boss->unk48 + boss->unk3C >= (I(player->qWorldX) + gCamera.unk6A) - gCamera.x + psi->s.hitboxes[0].b.left) {
                    goto block_13;
                }
            } else {
                goto block_14;
            }
        } else {
        block_13:
            if ((HB_RIGHT(I(player->qWorldX) + gCamera.unk6A - gCamera.x, psi->s.hitboxes[0].b)) >= boss->unk48 + boss->unk3C) {
            block_14:
                temp_r2_2 = boss->unk4C + boss->unk3D;
                temp_r4_3 = sprPlayer->hitboxes[0].b.top;
                temp_r1_6 = (((s32)player->qWorldY >> 8) - gCamera.y) + temp_r4_3;
                if (temp_r2_2 <= temp_r1_6) {
                    if ((s32)(temp_r2_2 + ((s8)boss->unk3F - boss->unk3D)) < temp_r1_6) {
                        if (temp_r2_2 >= temp_r1_6) {
                            goto block_17;
                        }
                    } else {
                        goto block_18;
                    }
                } else {
                block_17:
                    if ((s32)(temp_r1_6 + ((s8)sprPlayer->hitboxes[0].b.bottom - temp_r4_3)) >= temp_r2_2) {
                    block_18:
                        var_sb = 1;
                    }
                }
            }
        }
    }
    return var_sb;
}

u8 sub_878_80865B0(UltimateGemerl *boss, Player *player)
{
    Sprite *sprBoss = &boss->spr38C;
    u8 isColliding = 0;
    PlayerSpriteInfo *psi = player->spriteInfoBody;
    Sprite *sprPlayer = (Sprite *)&psi->s;

    if ((player->moveState & 0x100) || (sprBoss->hitboxes[0].index == -1)) {
        return 0U;
    }

    if (sprPlayer->hitboxes[0].index != -1) {
        if (HB_COLLISION(I(boss->qUnk9C), I(boss->qUnkA0), sprBoss->hitboxes[0].b, I(player->qWorldX) + gCamera.unk6A, I(player->qWorldY),
                         sprPlayer->hitboxes[0].b)) {
            isColliding = 1;
        }
    } else if (sprPlayer->hitboxes[1].index != -1) {
        if (HB_COLLISION(I(boss->qUnk9C), I(boss->qUnkA0), sprBoss->hitboxes[0].b, I(player->qWorldX) + gCamera.unk6A, I(player->qWorldY),
                         sprPlayer->hitboxes[1].b)) {
            isColliding = 1;
        }
    }

    return isColliding;
}

u8 sub_878_8086774(UltimateGemerl *boss, Player *player)
{
    u8 var_r8 = 0;
    u8 var_r4;
    u8 var_r5;

    for (var_r5 = 0; var_r5 < ARRAY_COUNT(boss->spr454); var_r5++) {
        for (var_r4 = 0; var_r4 < ARRAY_COUNT(boss->spr454[var_r5]); var_r4++) {
            if (sub_8010184(&boss->spr454[var_r5][var_r4], I(boss->strc16C[var_r5][var_r4].qWorldX),
                            I(boss->strc16C[var_r5][var_r4].qWorldY), 0, player)
                == 1) {
                var_r8 = 1;
                var_r5 = ARRAY_COUNT(boss->spr454);
                var_r4 = ARRAY_COUNT(boss->spr454[0]);
            }
        }
    }

    return var_r8;
}

bool8 sub_878_80867FC(UltimateGemerl *boss, u8 arg1)
{
    bool8 result = 0;
    Rect8 rec;
    Player *player;
    Player *partner;
    PlayerSpriteInfo *sprPartner;
    PlayerSpriteInfo *temp_r3_3;
    Sprite *temp_r6_4;
    s32 temp_r0;
    u32 temp_r0_2;
    s32 temp_r1_2;
    s32 temp_r2_2;
    s32 temp_sb;
    Sprite *s;

    player = boss->players[0];
    partner = boss->players[1];
    rec.left = -8;
    rec.top = -8;
    rec.right = +8;
    rec.bottom = +8;

    temp_r1_2 = CLAMP_SIN_PERIOD(boss->rotation + 0x200);
    temp_r0 = COS(temp_r1_2);
    temp_r2_2 = (temp_r0 + (((u32)temp_r0 >> 31)));
    temp_r2_2 >>= 1;
    temp_r0_2 = SIN(temp_r1_2);
    temp_sb = ((s32)(temp_r0_2 + (temp_r0_2 >> 31)) >> 1);
    temp_r2_2 += boss->qUnk9C;
    temp_sb += boss->qUnkA0;
    switch (arg1) {
        case 0:
            if (boss->unk70 != 0) {
                sprPartner = partner->spriteInfoBody;
                s = (Sprite *)&sprPartner->s;

                if (HB_COLLISION(I(temp_r2_2), I(temp_sb), rec, I(partner->qWorldX) + gCamera.unk6A, I(partner->qWorldY),
                                 s->hitboxes[1].b)) {
                    sub_8010C58(partner);
                    result = 1;
                }
            }
            break;
        case 1:
            temp_r3_3 = player->spriteInfoBody;
            s = (Sprite *)&temp_r3_3->s;
            if (s->hitboxes[1].index != -1) {
                if (HB_COLLISION(I(temp_r2_2), I(temp_sb), rec, I(player->qWorldX) + gCamera.unk6A, I(player->qWorldY), s->hitboxes[1].b)) {
                    sub_8010C88(player);
                    result = 1;
                }
            }
            break;
    }

    return result;
}

void TaskDestructor_50_80870AC(Task *t);
void ExtraBoss_CreateMissile(UltimateGemerl *boss, u8 arg1)
{
    s32 temp_r1_2;
    s32 var_r0;
    UltimateGemerlMissile *missile;
    u8 temp_r4;
    void *temp_r5;
    SpriteTransform *tf;
    Sprite *s;

    if (boss->unk4 == 0) {
        return;
    }
    missile = TASK_DATA(TaskCreate(Task_Missile_8086B94, sizeof(UltimateGemerlMissile), 0x2100U, 0U, TaskDestructor_50_80870AC));
    missile->boss = boss;
    missile->unk16 = arg1;
    if (PseudoRandom32() & 1) {
        missile->unkC = 0x200;
    } else {
        missile->unkC = 0x100;
    }
    if (missile->unk16 == 2) {
        missile->unk8 = (s32)boss->strc10C[1].qWorldY;
        missile->rotation = 0U;
        boss->unk1[2] = 1;
    } else {
        missile->unkC = (s32)(0 - missile->unkC);
        missile->unk8 = (s32)boss->strc10C[2].qWorldY;
        missile->rotation = 0U;
        boss->unk1[1] = 1;
    }
    missile->qWorldX = boss->strc10C[arg1].qWorldX;
    missile->qWorldY = boss->strc10C[arg1].qWorldY;
    missile->unk10 = 1;
    missile->unk12 = 0;
    m4aSongNumStart(SE_MINECART_DESTROYED);
    s = &missile->spr18;
    tf = &missile->tf40;
    s->anim = ANIM_BOSS_EXTRA_MISSILE;
    s->variant = 0;
    s->oamFlags = SPRITE_OAM_ORDER(11);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x1000;
    if (missile->unk16 == 2) {
        s->tiles = boss->vram1C;
#ifndef NON_MATCHING
        asm("" : "=r"(s));
#endif
        s->frameFlags |= 0x800;
    } else {
        s->tiles = boss->vram20;
    }
    s->x = I(missile->qWorldX) - gCamera.x;
    s->y = I(missile->qWorldY) - gCamera.y;
    tf->rotation = missile->rotation;
    tf->x = s->x;
    tf->y = s->y;
    tf->qScaleX = Q(1);
    tf->qScaleY = Q(1);
}

void Task_Missile_8086B94(void)
{
    UltimateGemerlMissile *missile = TASK_DATA(gCurTask);
    Player *temp_r5;
    Player *temp_r5_2;
    s32 temp_r1;
    s32 temp_r2;
    s32 var_sb;
    u16 temp_r0_2;
    UltimateGemerl *boss = missile->boss;
    Sprite *s = &missile->spr18;
    SpriteTransform *tf = &missile->tf40;
    var_sb = 0;
    if ((boss->lives == 0) && (missile->unk12 == 0)) {
        missile->unk12 = 0x64;
    }
    switch (missile->unk12) { /* irregular */
        case 0x0:
            temp_r1 = missile->qWorldY + missile->unkC;
            missile->qWorldY = temp_r1;
            if (missile->unk16 == 2) {
                if (temp_r1 >= (s32)missile->unk8) {
                    missile->unk12 = 100;
                }
            } else if (temp_r1 <= (s32)missile->unk8) {
                missile->unk12 = 100;
            }
            break;
        case 100:
            s->anim = 0x501;
            s->variant = 0;
            m4aSongNumStart(0x90U);
            missile->unk10 = 0x15;
            missile->unk12 = 110;
            break;
        case 110:
            if (--missile->unk10 == 0) {
                var_sb = 1;
            }
            break;
    }
    temp_r2 = missile->qWorldX + (gCamera.unk6A << 8) + 0x400;
    missile->qWorldX = temp_r2;
    temp_r5 = boss->players[0];
    if (!(temp_r5->moveState & 0x100)) {
        if (sub_8010184(s, temp_r2 >> 8, (s32)missile->qWorldY >> 8, 0, temp_r5) != 0) {
            sub_801038C(temp_r5, 1);
        } else if (sub_8010288(s, I(missile->qWorldX), I(missile->qWorldY), 0, temp_r5) != 0) {
            if (missile->unk12 == 0) {
                missile->unk12 = 0x64;
            }
            sub_8010C88(temp_r5);
        }
    }
    temp_r5_2 = boss->players[1];
    if ((CURRENT_GAME_MODE == GAME_MODE_MP_STORY_COOP) && !(temp_r5_2->moveState & 0x100)
        && (sub_8010184(s, I(missile->qWorldX), I(missile->qWorldY), 0, temp_r5_2) != 0)) {
        if (boss->unk70 != 0) {
            if (missile->unk12 == 0) {
                missile->unk12 = 0x64;
            }
            sub_8010C58(temp_r5_2);
        } else {
            sub_801038C(temp_r5_2, 1);
        }
    }
    if (var_sb != 0) {
        if (missile->unk16 == 2) {
            boss->unk1[2] = 0;
        } else {
            boss->unk1[1] = 0;
        }
        TaskDestroy(gCurTask);
        return;
    }
    s->x = I(missile->qWorldX) - gCamera.x;
    s->y = I(missile->qWorldY) - gCamera.y;
    tf->rotation = missile->rotation;
    tf->x = s->x;
    tf->y = s->y;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void BossExtra_CreateExplosion(s16 arg0, s16 arg1, s16 arg2, u16 arg3, u8 arg4, u8 *vram)
{
    UltimateGemerlExplosion *expl
        = TASK_DATA(TaskCreate(Task_38_8086E58, sizeof(UltimateGemerlExplosion), 0x2100U, 0U, TaskDestructor_38_8087234));
    Sprite *s = &expl->s;

    expl->unkE = (u8)arg4;
    expl->unkC = 0;
    expl->unk8 = ((COS(arg3 & 0x3FF) * arg2) >> 0xE);
    expl->unkA = ((SIN(arg3 & 0x3FF) * arg2) >> 0xE);
    s->tiles = vram;
    s->anim = ANIM_EXPLOSION_1273;
    s->variant = 0;
    s->oamFlags = 0x200;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x1000;
    expl->qWorldX = (s32)((s32)(arg0 << 0x10) >> 8);
    expl->qWorldY = (s32)((s32)(arg1 << 0x10) >> 8);
}

void Task_38_8086E58(void)
{
    UltimateGemerlExplosion *expl = TASK_DATA(gCurTask);
    Sprite *s = &expl->s;

    if (--expl->unkE == 0) {
        TaskDestroy(gCurTask);
        return;
    }

    expl->qWorldX += Q(gCamera.unk6A);
    expl->qWorldX += expl->unk8;
    expl->unkA += expl->unkC;
    expl->qWorldY += expl->unkA;
    s->x = I(expl->qWorldX) - gCamera.x;
    s->y = I(expl->qWorldY) - gCamera.y;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void TaskDestructor_878_8086ED8(Task *t)
{
    void *temp_r0;
    void *temp_r0_2;
    UltimateGemerl *boss = TASK_DATA(t);

    if (boss->spr38C.tiles != NULL) {
        VramFree(boss->spr38C.tiles);
    }
    if (boss->spr454[0][0].tiles != NULL) {
        VramFree(boss->spr454[0][0].tiles);
    }
}

void Task_878_8086F08(void)
{
    UltimateGemerl *boss = TASK_DATA(gCurTask);
    m4aSongNumStart(0x23FU);
    sub_878_808211C(boss);
    sub_878_8082388(boss);
    sub_878_8082794(boss);
    gCurTask->main = Task_878_8086F48;
}

void sub_878_8087174(UltimateGemerl *boss);
void Task_878_8086F48(void)
{
    UltimateGemerl *boss = TASK_DATA(gCurTask);
    sub_878_8087174(boss);
    sub_878_808211C(boss);
    gUnknown_08E2ED50[boss->unk1[0]](boss);
    sub_878_80862D8(boss);
    sub_878_8084EB4(boss);
    sub_878_8082428(boss);
    sub_878_8082388(boss);
    sub_878_8082794(boss);
    sub_878_8081EFC(boss);
}

void Task_878_8086FA4(void)
{
    UltimateGemerl *boss = TASK_DATA(gCurTask);
    sub_878_808211C(boss);
    gUnknown_08E2ED50[boss->unk1[0]](boss);
    sub_878_8082388(boss);
    sub_878_8082D08(boss);
}

void Task_878_CallDestroy(void) { TaskDestroy(gCurTask); }

void sub_8086FF8(UltimateGemerl *boss, u8 param1)
{
    s32 *var_r1;
    s32 var_r0;

    boss->unkED = param1;
    switch (boss->unkED) { /* irregular */
        case 7:
            boss->qUnkB0 = 0x7800;
            boss->qUnkB4 = 0;
            break;
        case 8:
            boss->unkA4 = -0x200;
            boss->unkA8 = -0x100;
            break;
    }
}

void sub_8087038(UltimateGemerl *boss, s8 arg1) { boss->unkEF = arg1; }

void sub_8087040(void) { }

void sub_8087044(UltimateGemerl *boss, u8 param1)
{
    Sprite *s = &boss->spr814;
    s->anim = gAnimPatternBossExtraElectricSpark[param1][0];
    s->variant = gAnimPatternBossExtraElectricSpark[param1][1];
    s->prevVariant = 0xFF;
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

    boss->unk1[0] = gUnknown_080D5D18[boss->unkA];
    if (++boss->unkA > 4U) {
        boss->unkA = 0;
    }
    boss->unk4 = 1;
    boss->unk8 = 0;
}

s32 sub_80870E0(void) { return 0; }

void sub_80870E4(u16 arg0)
{
    if (gBgOffsetsHBlankPrimary == gBgOffsetsBuffer) {
        DmaFill16(3, arg0, gBgOffsetsBuffer[0], 0x280);
    } else {
        DmaFill16(3, arg0, gBgOffsetsBuffer[1], 0x280);
    }
}

void sub_8087140(u16 arg0, int_vcount minY, int_vcount maxY)
{
    winreg_t *pWin0H = (winreg_t *)gBgOffsetsHBlankPrimary;
    pWin0H += minY;

    for (; minY < maxY; pWin0H += 1, minY += 1) {
        {
            *pWin0H = arg0;
        }
    }
}

void sub_878_8087174(UltimateGemerl *boss) { boss->unk34 = 0; }

void sub_808717C(UltimateGemerl *boss) { boss->unk34 |= 1; }

void sub_8087188(UltimateGemerl *boss, s16 arg1, s16 arg2, s16 arg3)
{
    s32 temp_r4;
    u16 temp_r3;

    temp_r3 = arg3;
    boss->unk34 = (s32)(boss->unk34 | 2);
    temp_r4 = (s32)(arg1 + ((u32)(arg1 << 0x10) >> 0x1F)) >> 1;
    boss->unk48 = temp_r4;
    boss->unk4C = (s32)arg2;
    boss->unk3C = 0 - temp_r4;
    boss->unk3D = 0 - temp_r3;
    boss->unk3E = (u8)temp_r4;
    boss->unk3F = (s8)temp_r3;
}

u8 sub_80871CC(UltimateGemerl *boss, Player *p)
{
    u8 var_r4;
    u8 var_r6;

    var_r6 = 0;
    for (var_r4 = 0; var_r4 < 4; var_r4++) {
        if (sub_8010184(&boss->spr3B4[var_r4], I(boss->strc10C[var_r4].qWorldX), I(boss->strc10C[var_r4].qWorldY), 0, p) == 1) {
            var_r6 = 1;
            break;
        }
    }
    return var_r6;
}

void TaskDestructor_38_8087234(Task *t) { }

void sub_8087238(void) { }
#endif
