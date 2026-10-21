#include "global.h"
#include "core.h"
#include "game/sa3/bosses/eggman_escape.h" // sub_807A4A8
#include "game/shared/stage/music_manager.h" // sub_80299D4
#include "game/shared/stage/player.h"
#include "game/save.h" // DIFFICULTY_NORMAL
#include "game/stage.h" // gStageData
#include "constants/songs.h"

typedef struct {
    /* 0x000 */ u8 lives;
    /* 0x004 */ u8 *initArg0;
    /* 0x008 */ u16 unk8;
    /* 0x00A */ u8 fillerA[0x2];
    /* 0x00C */ u16 unkC;
    /* 0x00E */ u8 fillerE[0x2];
    /* 0x010 */ u8 unk10;
    /* 0x011 */ u8 unk11;
    /* 0x012 */ u8 unk12;
    /* 0x013 */ u8 unk13;
    /* 0x014 */ u16 unk14;
    /* 0x016 */ u16 unk16;
    /* 0x018 */ u8 *vram18;
    /* 0x018 */ u8 filler1C[0x4];
    /* 0x020 */ Player *players[NUM_SINGLE_PLAYER_CHARS];
    /* 0x028 */ u8 filler28[0x54];
    /* 0x07C */ Sprite spr7C[4];
    /* 0x11C */ u8 filler11C[0x28];
    /* 0x228 */ Sprite spr144[2];
    /* 0x11C */ u8 filler194[0x54];
    /* 0x1E8 */ Background bg1E8;
    /* 0x228 */ Sprite spr228;
    /* 0x250 */ Sprite spr250;
    /* 0x250 */ Sprite spr278;
    /* 0x2A0 */ Sprite spr2A0;
    /* 0x2C8 */ Sprite spr2C8[3];
    /* 0x340 */ u8 filler340[0x18];
} HyperEggRobo; /* 0x358 */

void CreateHyperEggRobo(u8 *arg0);
void Task_358_807B808(void);
void Task_358_807B9B8(void);
void Task_358_807BC04(void);
void sub_807C48C(void);
void sub_358_807BCCC(HyperEggRobo *boss);
void sub_358_807BD88(HyperEggRobo *boss);
void sub_807BE58(HyperEggRobo *boss, u8 param1);
void sub_358_807BEF0(HyperEggRobo *boss);
void sub_358_807BFEC(HyperEggRobo *boss);
void sub_358_807C074(HyperEggRobo *boss);
void sub_358_807C14C(HyperEggRobo *boss);
u8 sub_807C244(Sprite *s, s32 qX, s32 qY, s32 arg3, s32 qArg4);
u8 sub_807C374(Sprite *s, s32 qX, s32 qY, s32 arg3, s32 qArg4);
void sub_807DE20(HyperEggRobo *boss, u8 param1);
void sub_358_807CBC8(HyperEggRobo *boss);
void sub_358_807D6C4(HyperEggRobo *boss);
void sub_807FB7C(u8);
void sub_80816C0(HyperEggRobo *boss);

// TEMP

#if 0 // M2C
void CreateHyperEggRobo(u8 *arg0, HyperEggRobo *boss);
void Task_358_807B808(HyperEggRobo *boss);
void Task_358_807B9B8(HyperEggRobo *boss);
void Task_358_807BC04(HyperEggRobo *boss);
u8 sub_807C244(Sprite *s, s32 qX, s32 qY, s32 arg3, s32 qArg4, HyperEggRobo *boss);
u8 sub_807C374(Sprite *s, s32 qX, s32 qY, s32 arg3, s32 qArg4, HyperEggRobo *boss);
void sub_807C48C(HyperEggRobo *boss);
void sub_807DB60(HyperEggRobo *boss);

typedef void (*FinalBossFunc)(HyperEggRobo *boss, u8 param1);
extern const FinalBossFunc gUnknown_08E2ED18[12];
#endif

void Task_358_HyperEggRoboInit(void);
void TaskDestructor_HyperEggRobo(Task *t);

void CreateHyperEggRobo(u8 *arg0)
{
    struct Task *t = TaskCreate(Task_358_HyperEggRoboInit, sizeof(HyperEggRobo), 0x2100U, 0U, TaskDestructor_HyperEggRobo);
    HyperEggRobo *boss = TASK_DATA(t);
    u8 i;

    gStageData.taskBoss = t;
    if (gStageData.difficulty == DIFFICULTY_NORMAL) {
        boss->lives = 8;
    } else {
        boss->lives = 6;
    }
    boss->initArg0 = arg0;
    boss->unk14 = 1;
    boss->unk16 = 0;
    boss->unk8 = 1;
    boss->unkC = 0;
    boss->players[0] = &gPlayers[PLAYER_1];
    boss->players[1] = &gPlayers[gPlayers[PLAYER_1].charFlags.partnerIndex];
    boss->spr250.tiles = NULL;
    boss->spr228.tiles = NULL;

    for (i = 0; i < ARRAY_COUNT(boss->spr7C); i++) {
        boss->spr7C[i].tiles = NULL;
    }

    boss->vram18 = 0;

    for (i = 0; i < ARRAY_COUNT(boss->spr2C8); i++) {
        boss->spr2C8[i].tiles = NULL;
    }

    boss->spr278.tiles = 0;
    boss->spr2A0.tiles = 0;

    gDispCnt &= ~DISPCNT_BG0_ON;

    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgCntRegs[0] = BGCNT_SCREENBASE(27) | BGCNT_CHARBASE(3) | BGCNT_TXT256x512 | BGCNT_16COLOR | BGCNT_PRIORITY(2);
    gBgSprites_Unknown1[0] = 0;
    gBgSprites_Unknown2[0][0] = 0;
    gBgSprites_Unknown2[0][1] = 0;
    gBgSprites_Unknown2[0][2] = 0xFF;
    gBgSprites_Unknown2[0][3] = 0x20;

    sub_358_807C074(boss);
}

// TODO: Fake-match!
void Task_358_807B808(void)
{
    HyperEggRobo *boss = TASK_DATA(gCurTask);
    u16 sp0[NUM_SINGLE_PLAYER_CHARS];
    u16 inputMask;
    u32 prevKeyInput;
    u16 temp_r1_3;
    Player *player = boss->players[PLAYER_1];
    Player *partner = boss->players[PLAYER_2];

    sub_358_807C14C(boss);
    sub_80816C0(boss);

    sp0[0] = sp0[1] = 0;

    switch (boss->unkC) {
        case 0x0:
            sub_807FB7C(12);
            sub_807FB7C(0);
            sub_807FB7C(10);
            sub_807FB7C(11);
            boss->unk8 = 5;
            boss->unkC = 10;
            break;
        case 10:
            if (--boss->unk8 != 0) {
                return;
            }
            sub_80299D4(MUS_VS__FINAL_BOSS);
            boss->unkC = 100;
            break;
        case 100:
            if (I(player->qWorldX) >= 1677) {
                player->qWorldX = Q(1677);
                player->qSpeedGround = 0;
                player->qSpeedAirX = 0;
            } else {
                sp0[0] |= DPAD_RIGHT;
            }
            if (I(partner->qWorldX) >= 1637) {
                partner->qWorldX = Q(1637);
                partner->qSpeedGround = 0;
                partner->qSpeedAirX = 0;
            } else {
                sp0[1] |= DPAD_RIGHT;
            }
            prevKeyInput = player->keyInput;
            inputMask = sp0[0];
            player->keyInput = inputMask;
#ifndef NON_MATCHING
            asm("eor %0, %1, %2" : "=r"(prevKeyInput) : "r"(prevKeyInput), "r"(inputMask));
#else
            prevKeyInput ^= inputMask;
#endif
            prevKeyInput &= inputMask;
            player->keyInput2 = prevKeyInput;
            prevKeyInput = partner->keyInput;
            inputMask = sp0[1];
            partner->keyInput = inputMask;
#ifndef NON_MATCHING
            asm("eor %0, %1, %2" : "=r"(prevKeyInput) : "r"(prevKeyInput), "r"(inputMask));
#else
            prevKeyInput ^= inputMask;
#endif
            prevKeyInput &= inputMask;
            partner->keyInput2 = prevKeyInput;
            if ((I(player->qWorldX) > 0x68C) && (I(player->qWorldY) > 0xB2) && (I(partner->qWorldX) > 0x664)
                && (I(partner->qWorldY) > 0xB2)) {
                boss->unk8 = 0x1EU;
                boss->unkC = 110;
                return;
            }
            break;
        case 110:
            if (--boss->unk8 == 0) {
                boss->unkC = 200;
                return;
            }
            break;
        case 200:
            gCamera.minY = 0x10;
            sub_358_807BCCC(boss);
            sub_358_807BEF0(boss);
            sub_358_807D6C4(boss);
            sub_358_807CBC8(boss);
            boss->unk10 = 0;
            boss->unk12 = 0;
            boss->unk8 = 1;
            boss->unkC = 0;
            gCurTask->main = Task_358_807B9B8;
            break;
        case 1000:
            player->qSpeedGround = 0;
            player->qSpeedAirX = 0;
            partner->qSpeedGround = 0;
            partner->qSpeedAirX = 0;
            sub_807A4A8();
            break;
    }
}

#if 0
void Task_358_807B9B8(HyperEggRobo *boss) {
    s32 temp_r1;
    u16 temp_r0;
    u16 temp_r0_2;
    u16 temp_r0_3;
    u16 temp_r0_4;
    u16 temp_r0_5;
    u16 temp_r0_6;
    u16 temp_r0_7;
    u16 temp_r0_8;

    temp_r0 = boss->unkC;
    switch (temp_r0) {                              /* irregular */
    case 0x14:
        temp_r0_2 = boss->unk8 - 1;
        boss->unk8 = temp_r0_2;
        if ((temp_r0_2 << 0x10) == 0) {
            boss->unkC = 0x15;
        }
        break;
    case 0x1F:
        temp_r0_3 = boss->unk8 - 1;
        boss->unk8 = temp_r0_3;
        if ((temp_r0_3 << 0x10) == 0) {
            boss->unk8 = 0x24;
            boss->unkC = 0x20;
            UpdateHandAnimation(boss, 0U, 5U);
            UpdateHandAnimation(boss, 1U, 5U);
        }
        break;
    case 0x1E:
        temp_r0_4 = boss->unk8 - 1;
        boss->unk8 = temp_r0_4;
        if ((temp_r0_4 << 0x10) == 0) {
            boss->unk8 = 0x24;
            boss->unkC = 0x1FU;
            sub_8081A74(boss, 0, 0U);
            UpdateHandAnimation(boss, 0U, 4U);
            UpdateHandAnimation(boss, 1U, 4U);
        }
        break;
    case 0x64:
        temp_r0_5 = boss->unk8 - 1;
        boss->unk8 = temp_r0_5;
        if ((temp_r0_5 << 0x10) == 0) {
            boss->unkC = 0xC8;
        }
        break;
    case 0x20:
        temp_r0_6 = boss->unk8 - 1;
        boss->unk8 = temp_r0_6;
        if ((temp_r0_6 << 0x10) == 0) {
            sub_807FB7C(0xFAU);
            sub_807FB7C(0x14U);
            boss->unk8 = 0x1EU;
            boss->unkC = 0x64;
        }
        break;
    case 0xC8:
        boss->unk8 = 1;
        boss->unkC = 0;
        boss->filler1[0] = 0;
        gCurTask->main = Task_358_807BC04;
        break;
    case 0x0:
        boss->unk8 = 0x3CU;
        boss->unkC = 1;
        break;
    case 0x1:
        temp_r0_7 = boss->unk8 - 1;
        boss->unk8 = temp_r0_7;
        if ((temp_r0_7 << 0x10) != 0) {

        } else {
            m4aSongNumStart(0x237U);
            boss->unk8 = 0x78;
            boss->unkC = 0xAU;
            gDispCnt |= 0x100;
            CreateScreenShake(0x800U, 4U, 0U, -1U, 0xD3U);
            sub_807FB7C(0xD2U);
        }
        break;
    case 0xA:
        temp_r0_8 = boss->unk8 - 1;
        boss->unk8 = temp_r0_8;
        if ((temp_r0_8 << 0x10) != 0) {

        } else {
            boss->unkC = 0xCU;
        }
        break;
    case 0xC:
        if ((s32) ((s32) boss->unk120 >> 8) <= 0xB7) {
            sub_807FB7C(0xDCU);
            boss->unkC = 0xBU;
        }
        /* fallthrough */
    case 0xB:
        temp_r1 = boss->unk120 - 0x80;
        boss->unk120 = temp_r1;
        if (temp_r1 > 0x9800) {

        } else {
            boss->unk8 = 0x3CU;
            boss->unkC = 0x14;
        }
        break;
    case 0x15:
        boss->spr144[0].tiles += 0x100;
        boss->spr144[1].tiles += 0xFFFFFF00;
        if ((s32) boss->spr144[0].tiles > 0x613FF) {
            boss->unk8 = 0x1EU;
            boss->unkC = 0x1EU;
            m4aSongNumStop(0x237U);
            sub_8081A74(boss, 0, 1U);
        }
        break;
    }
    sub_358_807BD88(boss);
    sub_358_807BFEC(boss);
    sub_807DB60(boss);
    sub_807D81C(boss);
    sub_358_807C14C(boss);
    sub_80816C0(boss);
}

void Task_358_807BC04(HyperEggRobo *boss) {
    Player *temp_r4;
    void (*temp_r1)(Player *);

    *((boss->filler1[0] * 4) + &gUnknown_08E2ED00)(boss);
    sub_807ED8C(boss);
    sub_358_807BD88(boss);
    sub_807DB60(boss);
    sub_807D81C(boss);
    sub_358_807BFEC(boss);
    sub_358_807C14C(boss);
    sub_80816C0(boss);
    temp_r4 = &gPlayers[gStageData.playerIndex];
    if ((s32) ((s32) temp_r4->qWorldY >> 8) > 0xD9) {
        if (!(temp_r4->moveState & 0x100)) {
            sub_807FB7C(0xA0U);
            SetPlayerCallback(temp_r4, Player_HitWithoutRingsUpdate);
            return;
        }
        temp_r1 = temp_r4->callback;
        if ((temp_r1 != Player_HitWithoutRingsUpdate) && (temp_r1 != Player_800913C) && (temp_r1 != Player_800DF9C)) {
            sub_807FB7C(0xA0U);
            SetPlayerCallback(temp_r4, Player_HitWithoutRingsUpdate);
        }
    }
}

void sub_358_807BCCC(HyperEggRobo *boss) {
    boss->unk124 = 0;
    boss->unk128 = 0;
    boss->unk12C = 1;
    boss->unk12E = 0;
    boss->unk11C = 0x67800;
    boss->unk120 = 0x16000;
    gBgScrollRegs[0][0] = 0x80 - (((s32) boss->unk11C >> 8) - gCamera.x);
    gBgScrollRegs[0][1] = 0x80 - ((0x16000 >> 8) - gCamera.y);
    boss->bg1E8.graphics.dest = (void *)0x0600C000;
    boss->bg1E8.graphics.anim = 0;
    boss->bg1E8.layoutVram = (u16 *)0x0600D800;
    boss->bg1E8.unk18 = 0;
    boss->bg1E8.unk1A = 0;
    boss->bg1E8.tilemapId = 0x1D3;
    boss->bg1E8.unk1E = 0;
    boss->bg1E8.unk20 = 0;
    boss->bg1E8.unk22 = 0;
    boss->bg1E8.unk24 = 0;
    boss->bg1E8.targetTilesX = 0x20;
    boss->bg1E8.targetTilesY = 0x20;
    boss->bg1E8.paletteOffset = 0;
    boss->bg1E8.flags = 0;
    DrawBackground(&boss->bg1E8);
}

void sub_358_807BD88(HyperEggRobo *boss) {
    s16 var_r0;
    s32 temp_r0_2;
    u16 temp_r0;
    u8 *var_r3;

    var_r3 = &boss->filler11C[0x12];
    temp_r0 = boss->unk12E;
    switch (temp_r0) {                              /* irregular */
    case 10:
        var_r3 = &boss->filler11C[0x10];
        boss->unk11C = (s32) (boss->unk124 + (*((boss->unk12C * 4) + &gUnknown_080D5C80) << 8));
        boss->unk120 = (s32) (boss->unk128 + (*((boss->unk12C * 4) + (&gUnknown_080D5C80 + 2)) << 8));
        var_r0 = ((u16) boss->unk12C + 1) & 7;
block_7:
        *var_r3 = var_r0;
        break;
    case 20:
        temp_r0_2 = boss->unk120 + boss->unk128;
        boss->unk120 = temp_r0_2;
        if (temp_r0_2 > 0x15FFF) {
            var_r0 = 0;
            goto block_7;
        }
        break;
    }
    gBgScrollRegs[0][0] = 0x80 - (((s32) boss->unk11C >> 8) - gCamera.x);
    gBgScrollRegs[0][1] = 0x80 - (((s32) boss->unk120 >> 8) - gCamera.y);
}

void sub_807BE58(HyperEggRobo *boss, u8 param1) {
    s16 var_r0;
    u8 temp_r3;

    temp_r3 = param1;
    switch (temp_r3) {                              /* irregular */
    case 0:
        boss->unk124 = (s32) boss->unk11C;
        boss->unk128 = (s32) boss->unk120;
        boss->unk12C = (s16) temp_r3;
        var_r0 = 0xA;
block_9:
        boss->filler11C[0x12] = var_r0;
        return;
    case 1:
        boss->unk12E = 0;
        boss->unk11C = (s32) boss->unk124;
        boss->unk120 = (s32) boss->unk128;
        return;
    case 10:
        boss->unk128 = 0x80;
        boss->unk12C = 0;
        var_r0 = 0x14;
        goto block_9;
    }
}

void sub_358_807BEF0(HyperEggRobo *boss) {
    boss->unk130 = (s32) boss->unk11C;
    boss->unk134 = (s32) (boss->unk120 + 0xFFFFB800);
    boss->spr250.tiles = VramMalloc(0x10U);
    boss->spr250.anim = 0x4F2;
    boss->spr250.variant = 0;
    boss->spr250.oamFlags = 0x580;
    boss->spr250.animCursor = 0;
    boss->spr250.qAnimDelay = 0;
    boss->spr250.prevVariant = 0xFF;
    boss->spr250.animSpeed = 0x10;
    boss->spr250.palId = 0;
    boss->spr250.hitboxes[0].index = -1;
    boss->spr250.frameFlags = 0x2000;
    boss->spr250.x = ((s32) boss->unk130 >> 8) - gCamera.x;
    boss->spr250.y = ((s32) boss->unk134 >> 8) - gCamera.y;
    UpdateSpriteAnimation(&boss->spr250);
    boss->spr228.tiles = VramMalloc(8U);
    boss->spr228.anim = 0x4F3;
    boss->spr228.variant = 0;
    boss->spr228.oamFlags = 0x580;
    boss->spr228.animCursor = 0;
    boss->spr228.qAnimDelay = 0;
    boss->spr228.prevVariant = -1;
    boss->spr228.animSpeed = 0x10;
    boss->spr228.palId = 0;
    boss->spr228.hitboxes[0].index = -1;
    boss->spr228.frameFlags = 0x2000;
    boss->spr228.x = ((s32) boss->unk130 >> 8) - gCamera.x;
    boss->spr228.y = ((s32) boss->unk134 >> 8) - gCamera.y;
    UpdateSpriteAnimation(&boss->spr228);
}

void sub_358_807BFEC(HyperEggRobo *boss) {
    Sprite *temp_r7;

    boss->unk130 = (s32) boss->unk11C;
    boss->unk134 = (s32) (boss->unk120 + 0xFFFFB800);
    temp_r7 = &boss->spr228;
    boss->spr228.x = ((s32) boss->unk130 >> 8) - gCamera.x;
    boss->spr228.y = ((s32) boss->unk134 >> 8) - gCamera.y;
    UpdateSpriteAnimation(temp_r7);
    DisplaySprite(temp_r7);
    boss->spr250.x = ((s32) boss->unk130 >> 8) - gCamera.x;
    boss->spr250.y = ((s32) boss->unk134 >> 8) - gCamera.y;
    DisplaySprite(&boss->spr250);
}

void sub_358_807C074(HyperEggRobo *boss) {
    Sprite *temp_r4;
    s32 *temp_r1_2;
    s32 *temp_r2;
    s32 temp_r3;
    u8 *temp_sl;
    u8 var_r6;
    void *temp_r1;

    temp_sl = VramMalloc(0x15U);
    var_r6 = 0;
    do {
        temp_r4 = &boss->spr7C[var_r6];
        temp_r4->tiles = temp_sl;
        temp_r4->anim = 0x3BF;
        temp_r4->variant = 0;
        temp_r4->oamFlags = 0x500;
        temp_r4->animCursor = 0;
        temp_r4->qAnimDelay = 0;
        temp_r4->prevVariant = 0xFF;
        temp_r4->animSpeed = 0x10;
        temp_r4->palId = 0;
        temp_r4->hitboxes[0].index = -1;
        temp_r4->frameFlags = 0x1000;
        temp_r3 = var_r6 * 0x14;
        temp_r1 = boss + temp_r3;
        temp_r1->unk3C = 1;
        temp_r1->unk3E = 0;
        *(&boss->filler28[0xC] + temp_r3) = 0;
        *(&boss->filler28[0x10] + temp_r3) = 0;
        temp_r1_2 = &boss->filler28[4] + temp_r3;
        *temp_r1_2 = ((var_r6 * 0x3B) + 0x61F) << 8;
        temp_r2 = &boss->filler28[8] + temp_r3;
        *temp_r2 = 0xCC00;
        temp_r4->x = ((s32) *temp_r1_2 >> 8) - gCamera.x;
        temp_r4->y = ((s32) *temp_r2 >> 8) - gCamera.y;
        UpdateSpriteAnimation(temp_r4);
        temp_r4->hitboxes[0].b.bottom = (u8) temp_r4->hitboxes[0].b.bottom + 0x20;
        var_r6 += 1;
    } while ((u32) var_r6 <= 3U);
}

void sub_358_807C14C(HyperEggRobo *boss) {
    s32 *temp_r4;
    s32 *temp_r5;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r1;
    s32 temp_r2_4;
    s32 temp_r7;
    u16 temp_r0_4;
    u16 temp_r0_5;
    u16 temp_r2;
    u16 var_r0;
    u32 temp_r0_6;
    u8 *temp_r2_2;
    u8 *temp_r2_3;
    u8 *var_r1;
    u8 temp_r0;
    u8 var_r8;
    void *temp_r3;
    void *temp_r3_2;

    var_r8 = 0;
    do {
        var_r1 = &boss->filler28[0x10];
        if ((boss->lives == 0) && ((temp_r0_2 = var_r8 * 0x14, temp_r3 = boss + temp_r0_2, temp_r2 = temp_r3->unk3E, (temp_r2 == 0x64)) || (temp_r2 == 0x6E))) {
            temp_r2_2 = &boss->filler28[0x10];
            *(temp_r2_2 + temp_r0_2) = 0xFFFFFC00;
            temp_r3->unk3E = 0xC8;
            var_r1 = temp_r2_2;
        }
        temp_r0_3 = var_r8 * 0x14;
        temp_r2_3 = &boss->filler28[8];
        temp_r4 = temp_r2_3 + temp_r0_3;
        temp_r7 = *temp_r4;
        temp_r5 = var_r1 + temp_r0_3;
        temp_r1 = temp_r7 + *temp_r5;
        *temp_r4 = temp_r1;
        temp_r3_2 = boss + temp_r0_3;
        temp_r0_4 = temp_r3_2->unk3E;
        switch (temp_r0_4) {                        /* irregular */
        case 0x64:
            if (temp_r1 > 0xF3FF) {
                *temp_r4 = 0xF400;
                temp_r3_2->unk3C = 0x78;
                var_r0 = 0x6E;
block_16:
                temp_r3_2->unk3E = var_r0;
            }
            break;
        case 0x6E:
            temp_r0_5 = temp_r3_2->unk3C - 1;
            temp_r3_2->unk3C = temp_r0_5;
            if ((temp_r0_5 << 0x10) == 0) {
                temp_r0_6 = 0 - *temp_r5;
                *temp_r5 = (s32) (temp_r0_6 + (temp_r0_6 >> 0x1F)) >> 1;
                var_r0 = 0xC8;
                goto block_16;
            }
            break;
        case 0xC8:
            if (temp_r1 <= 0xCC00) {
                *temp_r4 = 0xCC00;
                var_r0 = 0;
                *temp_r5 = 0;
                goto block_16;
            }
            break;
        }
        temp_r2_4 = var_r8 * 0x14;
        sub_807C374(&boss->spr7C[var_r8], *(&boss->filler28[4] + temp_r2_4), *(temp_r2_4 + temp_r2_3), 0, temp_r7 - temp_r1, M2C_ERROR(/* Unable to find stack arg 0x4 in block */));
        temp_r0 = var_r8 + 1;
        var_r8 = temp_r0;
    } while ((u32) temp_r0 <= 3U);
}

u8 sub_807C244(Sprite *s, s32 qX, s32 qY, s32 arg3, s32 qArg4, HyperEggRobo *boss) {
    s32 sp4;
    HyperEggRobo *sp8;
    Player *temp_r4;
    s16 temp_r3;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 var_r0;
    s32 var_r0_2;
    u32 temp_r0;
    u32 temp_r1;
    u8 var_r5;
    u8 var_r6;

    sp4 = arg3;
    sp8 = boss;
    var_r6 = 0;
    var_r5 = 0;
    do {
        temp_r4 = sp8->players[var_r5];
        if (sub_802C080(temp_r4) == 0) {
            temp_r1 = temp_r4->moveState;
            if ((0x20 & temp_r1) && (temp_r4->sprColliding == s)) {
                temp_r4->qWorldX -= sp4;
                if (!(temp_r1 & 4)) {
                    temp_r4->qWorldY = (temp_r4->qWorldY + 0x400) - qArg4;
                    var_r6 |= 1 << var_r5;
                } else {
                    temp_r4->qWorldY = (temp_r4->qWorldY - qArg4) + 0xFFFFFE00;
                }
            }
            temp_r1_2 = temp_r4->qWorldX;
            var_r0 = temp_r1_2 - qX;
            if (var_r0 < 0) {
                var_r0 = qX - temp_r1_2;
            }
            if ((s32) (var_r0 >> 8) <= 0x40) {
                temp_r1_3 = temp_r4->qWorldY;
                var_r0_2 = temp_r1_3 - qY;
                if (var_r0_2 < 0) {
                    var_r0_2 = qY - temp_r1_3;
                }
                if ((s32) (var_r0_2 >> 8) <= 0x40) {
                    temp_r0 = sub_8020950(s, qX >> 8, qY >> 8, temp_r4, 0U);
                    temp_r3 = 0x10000 & temp_r0;
                    if (temp_r3 != 0) {
                        temp_r4->qWorldY += (s16) (temp_r0 << 8);
                    } else if (0x20000 & temp_r0) {
                        temp_r4->qWorldY = temp_r4->qWorldY + 0x100 + (s16) (temp_r0 << 8);
                        temp_r4->qSpeedAirY = temp_r3;
                    }
                    if (0xC0000 & temp_r0) {
                        temp_r4->qWorldX += ((s32) (temp_r0 << 0x10) >> 0x18) << 8;
                        temp_r4->qSpeedAirX = 0;
                    }
                }
            }
        }
        var_r5 += 1;
    } while ((u32) var_r5 <= 1U);
    return var_r6;
}

u8 sub_807C374(Sprite *s, s32 qX, s32 qY, s32 arg3, s32 qArg4, HyperEggRobo *boss) {
    s32 sp4;
    HyperEggRobo *sp8;
    Player *temp_r4;
    s16 temp_r3;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 var_r0;
    s32 var_r0_2;
    u32 temp_r0;
    u8 var_r5;
    u8 var_r6;

    sp4 = arg3;
    sp8 = boss;
    var_r6 = 0;
    var_r5 = 0;
    do {
        temp_r4 = sp8->players[var_r5];
        if (sub_802C080(temp_r4) == 0) {
            if ((temp_r4->moveState & 0x20) && (temp_r4->sprColliding == s)) {
                temp_r4->qWorldX -= sp4;
                if (qArg4 != 0) {
                    temp_r4->qWorldY = (temp_r4->qWorldY + 0x400) - qArg4;
                }
            }
            temp_r1 = temp_r4->qWorldX;
            var_r0 = temp_r1 - qX;
            if (var_r0 < 0) {
                var_r0 = qX - temp_r1;
            }
            if ((s32) (var_r0 >> 8) <= 0x40) {
                temp_r1_2 = temp_r4->qWorldY;
                var_r0_2 = temp_r1_2 - qY;
                if (var_r0_2 < 0) {
                    var_r0_2 = qY - temp_r1_2;
                }
                if ((s32) (var_r0_2 >> 8) <= 0x40) {
                    temp_r0 = sub_8020950(s, qX >> 8, qY >> 8, temp_r4, 0U);
                    temp_r3 = 0x10000 & temp_r0;
                    if (temp_r3 != 0) {
                        temp_r4->qWorldY += (s16) (temp_r0 << 8);
                        var_r6 |= 1 << var_r5;
                    } else if (0x20000 & temp_r0) {
                        temp_r4->qWorldY = temp_r4->qWorldY + 0x100 + (s16) (temp_r0 << 8);
                        temp_r4->qSpeedAirY = temp_r3;
                    }
                    if (0xC0000 & temp_r0) {
                        temp_r4->qWorldX += ((s32) (temp_r0 << 0x10) >> 0x18) << 8;
                        temp_r4->qSpeedAirX = 0;
                    }
                }
            }
        }
        var_r5 += 1;
    } while ((u32) var_r5 <= 1U);
    return var_r6;
}

void sub_807C48C(HyperEggRobo *boss) {
    Player *temp_r4;
    s32 temp_r1;
    u32 temp_r1_2;
    u8 var_r5;

    var_r5 = 0;
    do {
        temp_r4 = boss->players[var_r5];
        if ((sub_802C0D4(temp_r4) == 0) && ((temp_r1 = 0x1C & temp_r4->unk2B, (temp_r1 == 4)) || (temp_r1 == 8) || (temp_r1 == 0x10))) {
            temp_r1_2 = temp_r4->moveState;
            if ((0x20 & temp_r1_2) && (temp_r4->sprColliding == boss)) {
                temp_r4->moveState = (temp_r1_2 & ~0x20) | 4;
                temp_r4->sprColliding = NULL;
                sub_8016F28(temp_r4);
                temp_r4->unk2C = (u8) (temp_r4->unk2C & ~4);
                Player_8005380(temp_r4);
            }
        }
        var_r5 += 1;
    } while ((u32) var_r5 <= 1U);
}

void sub_807C518(HyperEggRobo *arg0, u8 arg1) {
    Player *temp_r4;
    Sprite *temp_r1_2;
    Sprite *temp_r6;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 temp_r1;
    s32 temp_r2;
    u8 var_r7;
    void *temp_r0;

    temp_r1 = arg1 * 0x28;
    temp_r0 = temp_r1 + 0x144 + arg0;
    temp_r6 = arg0 + (temp_r1 + 0x278);
    var_r7 = 0;
    do {
        temp_r4 = *(arg0 + 0x20 + (var_r7 * 4));
        if (sub_802C080(temp_r4) == 0) {
            temp_r2 = temp_r0->unk4;
            if ((s32) temp_r4->qWorldY > (s32) (temp_r2 + ((s8) temp_r6->hitboxes[0].b.bottom << 8))) {
                if (temp_r4->moveState & 0x20) {
                    temp_r0_2 = arg0 + 0x7C;
                    temp_r1_2 = temp_r4->sprColliding;
                    if ((temp_r1_2 == temp_r0_2) || (temp_r0_3 = temp_r0_2 + 0x28, (temp_r1_2 == temp_r0_3)) || (temp_r0_4 = temp_r0_3 + 0x28, (temp_r1_2 == temp_r0_4)) || (temp_r1_2 == (temp_r0_4 + 0x28))) {
                        sub_8020CE0(temp_r6, (s32) temp_r0->unk0 >> 8, temp_r2 >> 8, 0, temp_r4);
                    }
                } else {
                    sub_8020CE0(temp_r6, (s32) temp_r0->unk0 >> 8, temp_r2 >> 8, 0, temp_r4);
                }
            }
        }
        var_r7 += 1;
    } while ((u32) var_r7 <= 1U);
}

void sub_807C5D0(void) {
    Player *temp_r4;
    Sprite *temp_r1_2;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 temp_r1;
    u16 temp_r5;
    u32 temp_r0;
    u32 temp_r2;
    u8 var_r6;

    temp_r5 = gCurTask->data;
    var_r6 = 0;
    do {
        temp_r4 = *(temp_r5 + 0x20 + (var_r6 * 4));
        temp_r1 = 0x1C & temp_r4->unk2B;
        if ((temp_r1 == 4) || (temp_r1 == 8) || (temp_r1 == 0x10)) {
            temp_r0 = sub_802C0D4(temp_r4);
            if (temp_r0 == 0) {
                temp_r2 = temp_r4->moveState;
                if (0x20 & temp_r2) {
                    temp_r0_2 = temp_r5 + 0x7C;
                    temp_r1_2 = temp_r4->sprColliding;
                    if (temp_r1_2 != temp_r0_2) {
                        temp_r0_3 = temp_r0_2 + 0x28;
                        if (temp_r1_2 != temp_r0_3) {
                            temp_r0_4 = temp_r0_3 + 0x28;
                            if ((temp_r1_2 != temp_r0_4) && (temp_r1_2 != (temp_r0_4 + 0x28))) {
                                temp_r4->moveState = (temp_r2 & ~0x20) | 4;
                                temp_r4->sprColliding = (Sprite *) temp_r0;
                                sub_8016F28(temp_r4);
                                temp_r4->unk2C = (u8) (temp_r4->unk2C & ~4);
                                Player_8005380(temp_r4);
                            }
                        }
                    }
                }
            }
        }
        var_r6 += 1;
    } while ((u32) var_r6 <= 1U);
}

void sub_807C670(void *arg0) {
    ? sp0;
    s32 temp_r0;
    s32 var_r5;
    u32 temp_r0_2;
    u8 var_r0;

    var_r5 = 0;
    memcpy(&sp0, &gUnknown_080D5CA0, 4);
    temp_r0 = (gPseudoRandom * 0x196225) + 0x3C6EF35F;
    gPseudoRandom = temp_r0;
    temp_r0_2 = (u32) temp_r0 % 10000;
    if (gStageData.difficulty == 0) {
        if ((u32) arg0->unk0 <= 4U) {
            goto block_7;
        }
        goto block_5;
    }
    if ((u32) arg0->unk0 <= 3U) {
        var_r5 = 1;
    }
block_5:
    if (var_r5 == 0) {
        arg0->unk1 = (u8) *(arg0->unk12 + sp);
        arg0->unk12 = (u8) ((arg0->unk12 + 1) & 3);
    } else {
block_7:
        if (temp_r0_2 <= 0x9C3U) {
            var_r0 = 1;
        } else if (temp_r0_2 <= 0x1387U) {
            var_r0 = 2;
        } else if (temp_r0_2 <= 0x1D4BU) {
            var_r0 = 3;
        } else {
            var_r0 = 4;
        }
        arg0->unk1 = var_r0;
    }
    arg0->unk8 = 1;
    arg0->unkC = 0;
}

void sub_807C728(HyperEggRobo *arg0) {
    s32 temp_r0_2;
    s32 temp_r1_2;
    s32 var_r2;
    u16 temp_r0;
    u16 temp_r0_3;
    u16 temp_r0_4;
    u16 temp_r1;
    u8 var_r3;
    u8 var_r3_2;
    void *temp_r1_3;

    var_r2 = 0;
    temp_r1 = arg0->unkC;
    switch (temp_r1) {                              /* irregular */
    case 0x3E8:
        temp_r0 = arg0->unk8 - 1;
        arg0->unk8 = temp_r0;
        if ((temp_r0 << 0x10) == 0) {
            sub_807DB00(arg0, 0U, 5);
            sub_807DB00(arg0, 1U, 5);
            sub_8081BBC(arg0);
        }
        break;
    case 0x0:
        var_r3 = 0;
        do {
            temp_r1_2 = var_r3 * 0x1C;
            (arg0 + temp_r1_2)->unk1AC = 0;
            *(arg0 + 0x194 + temp_r1_2) = arg0->unk11C;
            *(arg0 + 0x198 + temp_r1_2) = arg0->unk120 + 0xFFFFE000;
            var_r3 += 1;
        } while ((u32) var_r3 <= 2U);
        temp_r0_2 = (gPseudoRandom * 0x196225) + 0x3C6EF35F;
        gPseudoRandom = temp_r0_2;
        arg0->filler1[1] = temp_r0_2 & 1;
        arg0->unkA = 0x258;
        arg0->unk8 = 1;
        arg0->unkC = 0xAU;
        sub_807DB00(arg0, 0U, 1);
        sub_807DB00(arg0, 1U, 1);
        break;
    case 0xA:
        if (arg0->filler1[1] == 0) {
            temp_r0_3 = arg0->unkA - 1;
            arg0->unkA = temp_r0_3;
            if ((temp_r0_3 << 0x10) == 0) {
                goto block_16;
            }
            goto block_15;
        }
        if (arg0->unk16 != 0) {
            var_r2 = 1;
        }
block_15:
        if (var_r2 != 0) {
block_16:
            var_r3_2 = 0;
            do {
                temp_r1_3 = arg0 + (var_r3_2 * 0x1C);
                if (temp_r1_3->unk1AC == 1) {
                    temp_r1_3->unk1A8 = 0xEF;
                }
                var_r3_2 += 1;
            } while ((u32) var_r3_2 <= 2U);
            arg0->unk8 = 0x3CU;
            arg0->unkC = 0x3E8;
        } else {
            temp_r0_4 = arg0->unk8 - 1;
            arg0->unk8 = temp_r0_4;
            if ((temp_r0_4 << 0x10) == 0) {
                if ((sub_807CD4C(arg0) << 0x18) == 0) {
                    sub_807CDF0(arg0);
                    arg0->unk8 = 0x3CU;
                } else {
                    arg0->unk8 = 1;
                }
            }
        }
        break;
    }
    sub_807CFAC(arg0);
    sub_807CCA8(arg0);
}

void sub_807C8AC(HyperEggRobo *arg0) {
    s32 temp_r0_2;
    u16 temp_r0;
    u16 temp_r1;

    temp_r1 = arg0->unkC;
    switch (temp_r1) {                              /* irregular */
    case 0x0:
        sub_807DB00(arg0, 0U, 2);
        sub_807DB00(arg0, 1U, 2);
        arg0->unk8 = 0xF0;
        arg0->filler1[0xD] = 1;
        arg0->unkC = 0xAU;
        return;
    case 0xA:
        temp_r0 = arg0->unk8 - 1;
        arg0->unk8 = temp_r0;
        if ((temp_r0 << 0x10) == 0) {
            arg0->unkC = 0x14;
            return;
        }
        return;
    case 0x14:
        temp_r0_2 = (gPseudoRandom * 0x196225) + 0x3C6EF35F;
        gPseudoRandom = temp_r0_2;
        arg0->filler1[2] = ((u32) ((u32) temp_r0_2 % 10000U) >> 2) & 3;
        arg0->filler1[1] = 1;
        sub_807D8B4(arg0, 1U, arg0->filler1[2]);
        arg0->unkC = 0x64;
        return;
    case 0x64:
        if ((sub_807D9B4(arg0, 0U) << 0x18) != 0) {
            arg0->filler1[0xD] += 1;
            arg0->unkC = 0xC8;
            return;
        }
        break;
    case 0xC8:
        sub_807D8B4(arg0, 0x14U, 0U);
        arg0->unkC = 0x1F4;
        return;
    case 0x1F4:
        if ((sub_807D9B4(arg0, 1U) << 0x18) != 0) {
            arg0->unkC = 0x3E8;
            return;
        }
        break;
    case 0x3E8:
        sub_807DB00(arg0, 0U, 5);
        sub_807DB00(arg0, 1U, 5);
        sub_8081BBC(arg0);
        break;
    }
}

void sub_807C9C0(HyperEggRobo *arg0) {
    u16 temp_r1;

    temp_r1 = arg0->unkC;
    switch (temp_r1) {                              /* irregular */
    case 0x0:
        sub_807DB00(arg0, 0U, 3);
        sub_807DB00(arg0, 1U, 3);
        arg0->unk8 = 1;
        arg0->filler1[0xD] = 0;
        arg0->unkC = 0xAU;
        return;
    case 0xA:
        if ((sub_807D9B4(arg0, 0U) << 0x18) != 0) {
            arg0->unkC = 0x3E8;
            return;
        }
        return;
    case 0x3E8:
        sub_807DB00(arg0, 0U, 5);
        sub_807DB00(arg0, 1U, 5);
        sub_8081BBC(arg0);
        break;
    }
}

void sub_807CA38(HyperEggRobo *arg0) {
    u16 temp_r0;
    u16 temp_r0_3;
    u16 temp_r1;
    u8 temp_r0_2;
    u8 var_r0;

    temp_r1 = arg0->unkC;
    switch (temp_r1) {                              /* irregular */
    case 0x0:
        sub_807DB00(arg0, 0U, 4);
        sub_807DB00(arg0, 1U, 4);
        arg0->unk8 = 1;
        arg0->filler1[0xD] = 0;
        arg0->unkC = 0xAU;
        return;
    case 0xA:
        if ((sub_807D9B4(arg0, 2U) << 0x18) != 0) {
block_28:
            arg0->unk8 = 0x1EU;
            arg0->unkC = 0x64;
            return;
        }
        return;
    case 0x64:
        temp_r0 = arg0->unk8 - 1;
        arg0->unk8 = temp_r0;
        if ((temp_r0 << 0x10) == 0) {
            arg0->unkC = 0x6EU;
        }
        if ((s16) arg0->unk8 == 0xA) {
            if (arg0->filler1[0xD] == 0) {
                if ((s32) (((s32) arg0->players[0]->qWorldX >> 8) - gCamera.x) <= 0x77) {
                    var_r0 = 0;
                } else {
                    var_r0 = 1;
                }
                arg0->filler1[1] = var_r0;
            }
            sub_807DA34(arg0, *((arg0->filler1[1] * 4) + arg0->filler1[0xD] + &gUnknown_080D5C78));
            return;
        }
        break;
    case 0x6E:
        if ((sub_807D9B4(arg0, 2U) << 0x18) != 0) {
            temp_r0_2 = arg0->filler1[0xD] + 1;
            arg0->filler1[0xD] = temp_r0_2;
            if ((u32) temp_r0_2 <= 2U) {
                goto block_28;
            }
            arg0->unkC = 0x1FEU;
            arg0->unk8 = 0x3CU;
            return;
        }
        break;
    case 0x1F4:
        if ((sub_807D9B4(arg0, 0U) << 0x18) != 0) {
block_33:
            arg0->unkC = 0x3E8;
            return;
        }
        break;
    case 0x1FE:
        temp_r0_3 = arg0->unk8 - 1;
        arg0->unk8 = temp_r0_3;
        if ((temp_r0_3 << 0x10) == 0) {
            goto block_33;
        }
        break;
    case 0x3E8:
        sub_807DB00(arg0, 0U, 5);
        sub_807DB00(arg0, 1U, 5);
        sub_8081BBC(arg0);
        break;
    }
}

void sub_807CB78(HyperEggRobo *arg0) {
    u16 temp_r0;
    u16 temp_r0_2;

    temp_r0 = arg0->unkC;
    switch (temp_r0) {                              /* irregular */
    case 0xA:
        temp_r0_2 = arg0->unk8 - 1;
        arg0->unk8 = temp_r0_2;
        if ((temp_r0_2 << 0x10) == 0) {
            arg0->unkC = 0x14;
            sub_807DB00(arg0, 0U, 0xA);
            sub_807DB00(arg0, 1U, 0xA);
            return;
        }
    case 0x14:
        return;
    case 0x64:
        arg0->unk8 = 1;
        arg0->unkC = 0;
        arg0->filler1[0] = 0;
        break;
    }
}

void sub_358_807CBC8(HyperEggRobo *arg0) {
    u8 *sp0;
    Sprite *temp_r0_2;
    s32 *temp_r2;
    s32 *temp_r3;
    s32 temp_r4;
    u8 *temp_r0;
    u8 var_r6;
    void *temp_r1;

    temp_r0 = VramMalloc(0x74U);
    arg0->unk18 = temp_r0;
    sp0 = temp_r0;
    var_r6 = 0;
    do {
        temp_r0_2 = arg0 + ((var_r6 * 0x28) + 0x2C8);
        temp_r0_2->tiles = sp0;
        temp_r0_2->anim = 0x4F0;
        temp_r0_2->variant = 0;
        temp_r0_2->oamFlags = 0x500;
        temp_r0_2->animCursor = 0;
        temp_r0_2->qAnimDelay = 0;
        temp_r0_2->prevVariant = 0xFF;
        temp_r0_2->animSpeed = 0x10;
        temp_r0_2->palId = 0;
        temp_r0_2->hitboxes[0].index = -1;
        temp_r0_2->frameFlags = 0x1000;
        temp_r4 = var_r6 * 0x1C;
        temp_r2 = arg0 + 0x194 + temp_r4;
        *temp_r2 = 0x67800;
        temp_r3 = arg0 + 0x198 + temp_r4;
        *temp_r3 = 0x16000;
        temp_r0_2->x = ((s32) *temp_r2 >> 8) - gCamera.x;
        temp_r0_2->y = ((s32) *temp_r3 >> 8) - gCamera.y;
        UpdateSpriteAnimation(temp_r0_2);
        temp_r1 = arg0 + temp_r4;
        temp_r1->unk1AC = 0;
        temp_r1->unk1AE = 1;
        sp0 += 0x480;
        var_r6 += 1;
    } while ((u32) var_r6 <= 2U);
}

void sub_807CCA8(HyperEggRobo *arg0) {
    Sprite *temp_r5;
    s32 temp_r2;
    u8 var_r7;
    void *temp_r3;

    var_r7 = 0;
    do {
        temp_r2 = var_r7 * 0x1C;
        temp_r3 = arg0 + temp_r2;
        if (temp_r3->unk1AC != 0) {
            temp_r5 = arg0 + ((var_r7 * 0x28) + 0x2C8);
            temp_r5->x = ((s32) *(arg0 + 0x194 + temp_r2) >> 8) - gCamera.x;
            temp_r5->y = ((s32) *(arg0 + 0x198 + temp_r2) >> 8) - gCamera.y;
            if ((s16) temp_r3->unk1AE != 0) {
                if (1 & temp_r3->unk1AE) {
                    UpdateSpriteAnimation(temp_r5);
                    DisplaySprite(temp_r5);
                }
                temp_r3->unk1AE = (u16) (temp_r3->unk1AE - 1);
            } else {
                UpdateSpriteAnimation(temp_r5);
                DisplaySprite(temp_r5);
            }
        }
        var_r7 += 1;
    } while ((u32) var_r7 <= 2U);
}

s32 sub_807CD4C(HyperEggRobo *arg0) {
    s32 temp_r1;
    s32 temp_r2;
    s32 temp_r3;
    s32 var_r7;
    u8 var_r5;

    var_r7 = 0;
    if ((arg0->unk1AC != 0) && (arg0->unk1C8 != 0) && (arg0->unk1E4 != 0)) {
        return 0;
    }
    var_r5 = 0;
loop_6:
    temp_r3 = var_r5 * 0x1C;
    if (((arg0 + temp_r3)->unk1AC == 0) || (temp_r2 = *(arg0 + 0x194 + temp_r3) - arg0->unk11C, temp_r1 = (*(arg0 + 0x198 + temp_r3) + 0x2000) - arg0->unk120, ((u32) Sqrt((temp_r2 * temp_r2) + (temp_r1 * temp_r1)) > 0x17FFU))) {
        var_r5 += 1;
        if ((u32) var_r5 <= 2U) {
            goto loop_6;
        }
    } else {
        var_r7 = 1;
    }
    return var_r7;
}

void sub_807CDF0(HyperEggRobo *arg0) {
    s16 var_r1;
    s32 *temp_r6_2;
    s32 temp_r0;
    s32 temp_r1;
    s32 temp_r2_3;
    s32 temp_r6;
    s32 var_r0_2;
    s32 var_r0_3;
    u16 temp_r0_2;
    u16 temp_r2_2;
    u16 temp_r4;
    u32 temp_r0_3;
    u8 temp_r0_6;
    u8 temp_r0_7;
    u8 var_ip;
    void *temp_r0_4;
    void *temp_r0_5;
    void *temp_r2;
    void *var_r0;

    var_ip = 0;
loop_1:
    temp_r6 = var_ip * 0x1C;
    temp_r2 = arg0 + temp_r6;
    temp_r4 = temp_r2->unk1AC;
    if (temp_r4 != 0) {

    } else {
        temp_r2->unk1AC = 1;
        temp_r2->unk1A8 = temp_r4;
        temp_r2->unk1AE = 0x1E;
        *(arg0 + 0x194 + temp_r6) = arg0->unk11C;
        *(arg0 + 0x198 + temp_r6) = arg0->unk120 + 0xFFFFE000;
        temp_r0 = (gPseudoRandom * 0x196225) + 0x3C6EF35F;
        gPseudoRandom = temp_r0;
        temp_r0_2 = temp_r0 & 0x3FF;
        temp_r2_2 = temp_r0_2;
        temp_r0_3 = (u32) (temp_r0_2 << 0x10) >> 0x17;
        switch (temp_r0_3) {
        case 0:
        case 3:
        case 4:
        case 7:
            (arg0 + (var_ip * 0x1C))->unk1AA = temp_r2_2;
            break;
        case 1:
        case 5:
            var_r0 = arg0 + (var_ip * 0x1C);
            var_r1 = temp_r2_2 - 0x80;
block_8:
            var_r0->unk1AA = var_r1;
            break;
        case 2:
        case 6:
            var_r0 = arg0 + (var_ip * 0x1C);
            var_r1 = temp_r2_2 + 0x80;
            goto block_8;
        }
        temp_r2_3 = var_ip * 0x1C;
        temp_r6_2 = arg0 + 0x1A4 + temp_r2_3;
        temp_r1 = *((arg0->unk10 * 4) + &gUnknown_080D5C50);
        *temp_r6_2 = temp_r1;
        temp_r0_4 = arg0 + temp_r2_3;
        var_r0_2 = temp_r1 * gSineTable[temp_r0_4->unk1AA + 0x100];
        if (var_r0_2 < 0) {
            var_r0_2 += 0x3FFF;
        }
        *(arg0 + 0x19C + temp_r2_3) = var_r0_2 >> 0xE;
        var_r0_3 = gSineTable[temp_r0_4->unk1AA] * *temp_r6_2;
        if (var_r0_3 < 0) {
            var_r0_3 += 0x3FFF;
        }
        *(arg0 + 0x1A0 + temp_r2_3) = var_r0_3 >> 0xE;
        temp_r0_5 = arg0 + ((var_ip * 0x28) + 0x2C8);
        temp_r0_5->unkC = 0x4F0;
        temp_r0_5->unk1A = 0;
        m4aSongNumStart(0x238U);
        temp_r0_6 = arg0->unk10 + 1;
        arg0->unk10 = temp_r0_6;
        if ((u32) temp_r0_6 > 2U) {
            arg0->unk10 = 0;
        }
        var_ip = 3;
    }
    temp_r0_7 = var_ip + 1;
    var_ip = temp_r0_7;
    if ((u32) temp_r0_7 <= 2U) {
        goto loop_1;
    }
}

void sub_807CFAC(HyperEggRobo *arg0) {
    Player *sp0;
    s32 sp4;
    s32 sp8;
    s32 spC;
    Sprite *sp10;
    s32 sp14;
    s32 sp18;
    Player *temp_r4_3;
    Player *temp_r4_4;
    Player *temp_r4_5;
    Player *temp_r4_6;
    s16 temp_r0_3;
    s16 temp_r0_7;
    s32 *temp_r0_4;
    s32 *temp_r6;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r2;
    s32 temp_r3;
    s32 temp_r3_2;
    s32 temp_r4;
    s32 temp_sb;
    u16 temp_r0_2;
    u16 temp_r0_6;
    u16 temp_r5_2;
    u8 temp_r0;
    u8 temp_r0_9;
    u8 var_r6;
    void *temp_r0_5;
    void *temp_r0_8;
    void *temp_r4_2;
    void *temp_r5;

    sp4 = 0;
loop_1:
    sp10 = arg0 + ((sp4 * 0x28) + 0x2C8);
    temp_r4 = sp4 * 0x1C;
    temp_r5 = arg0 + temp_r4;
    temp_r5_2 = temp_r5->unk1AC;
    sp14 = sp4 * 8;
    if (temp_r5_2 != 1) {
        var_r6 = sp4 + 1;
        switch ((s32) temp_r5_2) {                  /* irregular */
        case 0x64:
            temp_r5->unk1A8 = 0x1EU;
            temp_r5->unk1AC = 0x6EU;
            temp_r5->unk1AE = 0;
            m4aSongNumStart(0x239U);
            sp10->anim = 0x4F6;
            sp10->variant = 0;
            sp8 = 0;
            do {
                temp_r4_2 = *(arg0 + 0x20 + (sp8 * 4));
                temp_r1 = temp_r4_2->unk4;
                if ((temp_r1 & 0x20) && (temp_r4_2->unk6C == sp10)) {
                    temp_r4_2->unk4 = (s32) (temp_r1 & ~0x20);
                    temp_r4_2->unk6C = 0;
                }
                temp_r0 = sp8 + 1;
                sp8 = (s32) temp_r0;
            } while ((u32) temp_r0 <= 1U);
            break;
        case 0x6E:
            temp_r0_2 = temp_r5->unk1A8 - 1;
            temp_r5->unk1A8 = temp_r0_2;
            temp_r0_3 = (s16) temp_r0_2;
            if (temp_r0_3 == 0) {
                temp_r5->unk1AC = (u16) temp_r0_3;
            }
            break;
        }
    } else {
        temp_r0_4 = arg0 + 0x194 + temp_r4;
        temp_r3 = *temp_r0_4;
        temp_r6 = arg0 + 0x198 + temp_r4;
        temp_sb = *temp_r6;
        *temp_r0_4 = temp_r3 + *(arg0 + 0x19C + temp_r4);
        *temp_r6 += *(arg0 + 0x1A0 + temp_r4);
        sp18 = temp_r3;
        sub_807D41C(arg0, sp4);
        temp_r3_2 = temp_r3 - *temp_r0_4;
        temp_r1_2 = *temp_r6;
        spC = temp_r1_2 + ((s8) (u8) sp10->hitboxes[0].b.bottom << 8);
        sp18 = temp_r3_2;
        sub_807D37C(arg0, arg0 + (temp_r4 + 0x194));
        if (temp_r5->unk1AE == 0) {
            sp0 = temp_sb - temp_r1_2;
            sp8 = (s32) sub_807C244(sp10, *temp_r0_4, *temp_r6, temp_r3_2, M2C_ERROR(/* Unable to find stack arg 0x0 in block */), M2C_ERROR(/* Unable to find stack arg 0x4 in block */));
            temp_r4_3 = arg0->players[0];
            if (sub_802C080(temp_r4_3) == 0) {
                if (temp_r5_2 & sp8) {
                    if (((s32) ((s32) *temp_r6 >> 8) <= 0x20) && (temp_r4_3->framesInvulnerable == 0) && (arg0->lives != 0)) {
                        Call__Player_8014550(temp_r4_3);
                    }
                } else if (((s32) temp_r4_3->qWorldY > spC) && (arg0->lives != 0)) {
                    sp0 = temp_r4_3;
                    sub_8020CE0(sp10, (s32) *temp_r0_4 >> 8, (s32) *temp_r6 >> 8, 0, M2C_ERROR(/* Unable to find stack arg 0x0 in block */));
                }
            }
            temp_r4_4 = arg0->players[1];
            if ((sub_802C080(temp_r4_4) == 0) && !(2 & sp8) && ((s32) temp_r4_4->qWorldY > spC) && (arg0->lives != 0)) {
                temp_r2 = (sp14 - sp4) * 4;
                sp0 = temp_r4_4;
                sub_8020CE0(sp10, (s32) *(arg0->filler194 + temp_r2) >> 8, (s32) *(&arg0->filler194[4] + temp_r2) >> 8, 0, M2C_ERROR(/* Unable to find stack arg 0x0 in block */));
            }
        }
        temp_r0_5 = arg0 + ((sp14 - sp4) * 4);
        if ((s16) temp_r0_5->unk1A8 != 0) {
            temp_r0_6 = temp_r0_5->unk1A8 + 1;
            temp_r0_5->unk1A8 = temp_r0_6;
            temp_r0_7 = (s16) temp_r0_6;
            if ((temp_r0_7 != 0xB4) && (temp_r0_7 == 0xF0)) {
                if (1 & sp8) {
                    temp_r4_5 = arg0->players[0];
                    if (sub_802C080(temp_r4_5) == 0) {
                        Call__Player_8014550(temp_r4_5);
                    }
                }
                if (2 & sp8) {
                    temp_r4_6 = arg0->players[1];
                    if (sub_802C080(temp_r4_6) == 0) {
                        Call__Player_8014550(temp_r4_6);
                    }
                }
                (arg0 + ((sp14 - sp4) * 4))->unk1AC = 0x64;
            }
        }
        if (sp8 != 0) {
            temp_r0_8 = arg0 + ((sp14 - sp4) * 4);
            var_r6 = sp4 + 1;
            if (temp_r0_8->unk1A8 == 0) {
                temp_r0_8->unk1A8 = 1;
            }
        } else {
            (arg0 + ((sp14 - sp4) * 4))->unk1A8 = (u16) sp0.unk8;
            var_r6 = sp4 + 1;
        }
    }
    temp_r0_9 = var_r6;
    sp4 = (s32) temp_r0_9;
    if ((u32) temp_r0_9 <= 2U) {
        goto loop_1;
    }
}

void sub_807D2A4(HyperEggRobo *arg0, u8 arg1) {
    s32 temp_r1_2;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 var_r4;
    u16 var_r2;
    u8 temp_r1;

    temp_r1 = arg1;
    var_r2 = arg0->unk16;
    switch (temp_r1) {                              /* irregular */
    case 0:
        if ((u32) var_r2 > 0x2FFU) {
            var_r0 = 0x400;
        } else {
            var_r4 = 0x400;
block_18:
            var_r0 = var_r4;
        }
block_19:
        var_r2 = var_r0 - var_r2;
        break;
    case 1:
        if ((u32) var_r2 > 0xFFU) {
            var_r0 = 0x400;
        } else {
            var_r4 = 0x400;
            goto block_18;
        }
        goto block_19;
    case 2:
        if ((u32) var_r2 > 0x1FFU) {
            var_r0 = 0x600;
        } else {
block_17:
            var_r4 = 0x200;
            goto block_18;
        }
        goto block_19;
    case 3:
        if ((u32) var_r2 > 0x2FFU) {
            var_r0 = 0x600;
        } else {
            goto block_17;
        }
        goto block_19;
    }
    arg0->unk16 = (u16) (var_r2 & 0x3FF);
    temp_r1_2 = arg0->unk10;
    var_r0_2 = temp_r1_2 * gSineTable[arg0->unk16 + 0x100];
    if (var_r0_2 < 0) {
        var_r0_2 += 0x3FFF;
    }
    arg0->unk8 = (s32) (var_r0_2 >> 0xE);
    var_r0_3 = temp_r1_2 * gSineTable[arg0->unk16];
    if (var_r0_3 < 0) {
        var_r0_3 += 0x3FFF;
    }
    arg0->unkC = (s32) (var_r0_3 >> 0xE);
}

s32 sub_807D37C(HyperEggRobo *arg1) {
    s16 temp_r1;
    s32 var_r5;
    u16 temp_r0;
    u16 temp_r7;

    var_r5 = 0;
    temp_r7 = ((s32) arg1->unk0 >> 8) - gCamera.x;
    temp_r0 = ((s32) arg1->unk4 >> 8) - gCamera.y;
    if (((s32) (temp_r0 << 0x10) <= 0) && ((u32) arg1->unk16 > 0x200U)) {
        sub_807D2A4(arg1, 0U);
        var_r5 = 1;
    }
    if (((s32) (s16) (((s32) arg1->unk4 >> 8) + 8) > 0xBF) && ((u32) arg1->unk16 <= 0x1FFU)) {
        if (var_r5 == 0) {
            sub_807D2A4(arg1, 1U);
            var_r5 = 2;
            goto block_7;
        }
        goto block_12;
    }
block_7:
    if (var_r5 == 0) {
        if (((s32) (s16) temp_r0 > 0xB3) || (temp_r1 = (s16) temp_r7, ((s32) temp_r1 <= -0x14)) || ((s32) temp_r1 > 0x103)) {
            arg1->unk18 = 0;
            var_r5 = 3;
        }
    } else {
block_12:
        m4aSongNumStart(0x238U);
    }
    return var_r5;
}

s32 sub_807D41C(HyperEggRobo *arg0, u8 arg1) {
    ? sp0;
    HyperEggRobo *sp4;
    s32 sp8;
    s16 temp_r0;
    s32 temp_r0_3;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r2;
    s32 temp_r6;
    s32 temp_r6_2;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 var_r0_4;
    s32 var_r0_5;
    s32 var_r0_6;
    s32 var_r0_7;
    s32 var_r0_8;
    s32 var_r0_9;
    s32 var_r7;
    u16 temp_r2_2;
    u16 temp_r3;
    u16 temp_r3_2;
    u16 temp_r3_3;
    u32 temp_r0_2;
    u32 temp_r0_4;
    u8 var_r0;
    void *temp_r4;
    void *temp_r5;

    sp4 = arg0;
    sp8 = (s32) arg1;
    var_r7 = 0;
    memcpy(&sp0, &gUnknown_080D5CA4, 4);
    temp_r5 = sp4 + ((sp8 * 0x1C) + 0x194);
    var_r0 = *(sp8 + sp);
loop_25:
    if ((u32) var_r0 <= 2U) {
        if (var_r0 == sp8) {

        } else {
            temp_r4 = sp4 + ((var_r0 * 0x1C) + 0x194);
            if (temp_r4->unk18 == 0) {

            } else {
                temp_r1 = temp_r5->unk0 - temp_r4->unk0;
                temp_r6 = temp_r5->unk4 - temp_r4->unk4;
                if ((u32) ((u32) (Sqrt((temp_r1 * temp_r1) + (temp_r6 * temp_r6)) << 0x10) >> 0x18) > 0x13U) {

                } else {
                    temp_r0 = sa2__sub_8004418((s16) ((s32) ((temp_r5->unk4 - temp_r4->unk4) << 8) >> 0x10), (s16) ((s32) ((temp_r5->unk0 - temp_r4->unk0) << 8) >> 0x10));
                    temp_r5->unk16 = temp_r0;
                    temp_r4->unk16 = (u16) ((temp_r0 + 0x200) & 0x3FF);
                    temp_r0_2 = temp_r5->unk0 + temp_r4->unk0;
                    temp_r0_3 = (s32) (temp_r0_2 + (temp_r0_2 >> 0x1F)) >> 1;
                    temp_r0_4 = temp_r5->unk4 + temp_r4->unk4;
                    temp_r6_2 = (s32) (temp_r0_4 + (temp_r0_4 >> 0x1F)) >> 1;
                    temp_r3 = (u16) temp_r5->unk16;
                    var_r0_2 = gSineTable[temp_r3 + 0x100] * 0xB;
                    if (var_r0_2 < 0) {
                        var_r0_2 += 0x3F;
                    }
                    var_r0_3 = gSineTable[temp_r3] * 0xB;
                    if (var_r0_3 < 0) {
                        var_r0_3 += 0x3F;
                    }
                    temp_r5->unk0 = (s32) (temp_r0_3 + (var_r0_2 >> 6));
                    temp_r5->unk4 = (s32) (temp_r6_2 + (var_r0_3 >> 6));
                    temp_r3_2 = (u16) temp_r5->unk16;
                    temp_r2 = temp_r5->unk10;
                    var_r0_4 = temp_r2 * gSineTable[temp_r3_2 + 0x100];
                    if (var_r0_4 < 0) {
                        var_r0_4 += 0x3FFF;
                    }
                    temp_r5->unk8 = (s32) (var_r0_4 >> 0xE);
                    var_r0_5 = temp_r2 * gSineTable[temp_r3_2];
                    if (var_r0_5 < 0) {
                        var_r0_5 += 0x3FFF;
                    }
                    temp_r5->unkC = (s32) (var_r0_5 >> 0xE);
                    temp_r3_3 = temp_r4->unk16;
                    var_r0_6 = gSineTable[temp_r3_3 + 0x100] * 0xB;
                    if (var_r0_6 < 0) {
                        var_r0_6 += 0x3F;
                    }
                    var_r0_7 = gSineTable[temp_r3_3] * 0xB;
                    if (var_r0_7 < 0) {
                        var_r0_7 += 0x3F;
                    }
                    temp_r4->unk0 = (s32) (temp_r0_3 + (var_r0_6 >> 6));
                    temp_r4->unk4 = (s32) (temp_r6_2 + (var_r0_7 >> 6));
                    temp_r2_2 = temp_r4->unk16;
                    temp_r1_2 = temp_r4->unk10;
                    var_r0_8 = temp_r1_2 * gSineTable[temp_r2_2 + 0x100];
                    if (var_r0_8 < 0) {
                        var_r0_8 += 0x3FFF;
                    }
                    temp_r4->unk8 = (s32) (var_r0_8 >> 0xE);
                    var_r0_9 = temp_r1_2 * gSineTable[temp_r2_2];
                    if (var_r0_9 < 0) {
                        var_r0_9 += 0x3FFF;
                    }
                    temp_r4->unkC = (s32) (var_r0_9 >> 0xE);
                    var_r7 = 1;
                }
            }
        }
        var_r0 += 1;
        goto loop_25;
    }
    if (var_r7 != 0) {
        m4aSongNumStart(0x238U);
    }
    return var_r7;
}

u8 sub_807D610(s32 arg0, s32 arg1, u8 arg2) {
    s32 sp0;
    s32 temp_r3;
    s32 temp_r4;
    u16 temp_r0;
    u8 var_r2;
    u8 var_r7;
    void *temp_r1;

    sp0 = arg0;
    var_r7 = 0;
    var_r2 = 0;
    temp_r4 = arg0 + 0x194;
    do {
        temp_r3 = var_r2 * 0x1C;
        temp_r1 = sp0 + temp_r3;
        if (temp_r1->unk1AC != 0) {
            if (arg2 == 0) {
                if ((s32) *(temp_r4 + temp_r3) <= arg1) {
                    temp_r0 = temp_r1->unk1AA;
                    if (((u32) temp_r0 > 0x100U) && ((u32) temp_r0 <= 0x2FFU)) {
                        var_r7 = 0x80 | var_r2;
                        goto block_10;
                    }
                }
            } else if (((s32) *(temp_r4 + temp_r3) >= arg1) && ((u32) (u16) (temp_r1->unk1AA + 0xFFFFFF00) > 0x200U)) {
                var_r7 = var_r2 | 0x80;
block_10:
                var_r2 = 3;
            }
        }
        var_r2 += 1;
    } while ((u32) var_r2 <= 2U);
    return var_r7;
}

void sub_358_807D6C4(HyperEggRobo *arg0) {
    u8 *sp0;

    arg0->spr144[0].tiles = (u8 *)0x5C400;
    arg0->spr144[0].frameNum = 0x9800;
    sub_807DB00(arg0, 0U, 0);
    arg0->spr144[1].tiles = (u8 *)0x72C00;
    arg0->spr144[1].frameNum = 0x9800;
    sub_807DB00(arg0, 1U, 0);
    sp0 = arg0->filler340;
    arg0->unk278 = VramMalloc(0x40U);
    arg0->unk284 = 0x4F1;
    arg0->filler278[0x1A] = 0;
    arg0->unk28C = 0x500;
    arg0->unk286 = 0;
    arg0->unk28E = 0;
    arg0->filler278[0x1B] = 0xFF;
    arg0->filler278[0x1C] = 0x10;
    arg0->filler278[0x1F] = 0;
    arg0->unk298 = -1;
    arg0->unk280 = 0x106A;
    arg0->unk288 = (u16) (((s32) arg0->spr144[0].tiles >> 8) - gCamera.x);
    arg0->unk28A = (u16) (((s32) arg0->spr144[0].frameNum >> 8) - gCamera.y);
    arg0->unk340 = 0;
    arg0->unk346 = (u16) arg0->unk288;
    arg0->unk348 = (u16) arg0->unk28A;
    arg0->unk342 = 0x100;
    arg0->unk344 = 0x100;
    UpdateSpriteAnimation((Sprite *) arg0->filler278);
    sp0 = &arg0->filler340[0xC];
    arg0->unk2A0 = VramMalloc(0x40U);
    arg0->unk2AC = 0x4F1;
    arg0->filler278[0x42] = 6;
    arg0->unk2B4 = 0x500;
    arg0->unk2AE = 0;
    arg0->unk2B6 = 0;
    arg0->filler278[0x43] = -1;
    arg0->filler278[0x44] = 0x10;
    arg0->filler278[0x47] = 0;
    arg0->unk2C0 = -1;
    arg0->unk2A8 = 0x106B;
    arg0->unk2B0 = (u16) (((s32) arg0->spr144[1].tiles >> 8) - gCamera.x);
    arg0->unk2B2 = (u16) (((s32) arg0->spr144[1].frameNum >> 8) - gCamera.y);
    arg0->unk34C = 0;
    arg0->unk352 = (u16) arg0->unk2B0;
    arg0->unk354 = (u16) arg0->unk2B2;
    arg0->unk34E = 0x100;
    arg0->unk350 = 0x100;
    UpdateSpriteAnimation((Sprite *) &arg0->filler278[0x28]);
}

void sub_807D81C(HyperEggRobo *arg0) {
    Sprite *temp_r5;
    Sprite *temp_r5_2;
    SpriteTransform *temp_r3;
    SpriteTransform *temp_r3_2;
    s16 temp_r2;
    s16 temp_r2_2;

    temp_r5 = arg0 + 0x278;
    temp_r3 = arg0 + 0x340;
    temp_r2 = ((s32) arg0->spr144[0].tiles >> 8) - gCamera.x;
    temp_r5->x = temp_r2;
    temp_r5->y = ((s32) arg0->spr144[0].frameNum >> 8) - gCamera.y;
    temp_r3->x = temp_r2;
    temp_r3->y = temp_r5->y;
    TransformSprite(temp_r5, temp_r3);
    UpdateSpriteAnimation(temp_r5);
    DisplaySprite(temp_r5);
    temp_r5_2 = arg0 + 0x2A0;
    temp_r3_2 = arg0 + 0x34C;
    temp_r2_2 = ((s32) arg0->spr144[1].tiles >> 8) - gCamera.x;
    temp_r5_2->x = temp_r2_2;
    temp_r5_2->y = ((s32) arg0->spr144[1].frameNum >> 8) - gCamera.y;
    temp_r3_2->x = temp_r2_2;
    temp_r3_2->y = temp_r5_2->y;
    TransformSprite(temp_r5_2, temp_r3_2);
    UpdateSpriteAnimation(temp_r5_2);
    DisplaySprite(temp_r5_2);
}

void sub_807D8B4(HyperEggRobo *arg0, u8 arg1, u8 arg2) {
    s16 *var_r1;
    s16 var_r0;
    s8 *var_r1_2;
    s8 *var_r1_3;
    u8 temp_r0;
    u8 temp_r1;

    temp_r0 = arg1;
    temp_r1 = arg2;
    switch (temp_r0) {                              /* switch 1; irregular */
    case 0:                                         /* switch 1 */
        if ((u32) temp_r1 <= 1U) {
            arg0->spr144[0].variant = temp_r1 | 0x80;
            var_r1 = arg0 + 0x182;
            var_r0 = 0x3E8;
        } else {
            arg0->spr144[1].variant = temp_r1 | 0x80;
            var_r1 = arg0 + 0x15A;
            var_r0 = 0x3E8;
        }
block_26:
        *var_r1 = var_r0;
        return;
    case 1:                                         /* switch 1 */
        switch (temp_r1) {                          /* switch 2; irregular */
        case 0:                                     /* switch 2 */
            arg0->spr144[0].variant = 0x80;
            var_r1_2 = arg0 + 0x186;
block_20:
            *var_r1_2 = 0x82;
            return;
        case 1:                                     /* switch 2 */
            arg0->spr144[0].variant = 0x80;
            var_r1_3 = arg0 + 0x186;
block_22:
            *var_r1_3 = 0x83;
            return;
        case 2:                                     /* switch 2 */
            arg0->spr144[0].variant = 0x81;
            var_r1_2 = arg0 + 0x186;
            goto block_20;
        case 3:                                     /* switch 2 */
            arg0->spr144[0].variant = 0x81;
            var_r1_3 = arg0 + 0x186;
            goto block_22;
        }
        break;
    case 10:                                        /* switch 1 */
        arg0->spr144[0].variant = 0;
        arg0->spr144[1].variant = 0;
        var_r0 = 0x14;
        arg0->spr144[0].qAnimDelay = 0x14;
block_25:
        var_r1 = arg0 + 0x182;
        goto block_26;
    case 20:                                        /* switch 1 */
        var_r0 = 0x12C;
        arg0->spr144[0].qAnimDelay = 0x12C;
        goto block_25;
    }
}

s32 sub_807D9B4(HyperEggRobo *arg0, u8 arg1) {
    s32 var_r3;
    u16 temp_r1_2;
    u16 temp_r1_3;
    u8 temp_r1;

    temp_r1 = arg1;
    var_r3 = 0;
    switch (temp_r1) {                              /* irregular */
    case 0:
        temp_r1_2 = arg0->spr144[0].qAnimDelay;
        if ((temp_r1_2 == 0x3E8) && (arg0->spr144[1].qAnimDelay == temp_r1_2)) {
block_14:
            var_r3 = 1;
        }
        break;
    case 1:
        temp_r1_3 = arg0->spr144[0].qAnimDelay;
        if ((temp_r1_3 == 0x15E) && (arg0->spr144[1].qAnimDelay == temp_r1_3)) {
            goto block_14;
        }
        break;
    case 2:
        if ((arg0->spr144[0].qAnimDelay == 0x6E) && (arg0->spr144[1].qAnimDelay == 0x6E)) {
            goto block_14;
        }
        break;
    }
    return var_r3;
}

void sub_807DA34(HyperEggRobo *arg0, u8 arg1) {
    s32 sp0;
    s32 sp4;
    Player *temp_r4;
    s16 var_r0;
    s32 temp_r1_2;
    s32 temp_r2;
    s32 temp_r2_2;
    u16 temp_r0;
    u8 temp_r1;
    void *temp_r6;

    temp_r1 = arg1;
    temp_r6 = arg0 + ((temp_r1 * 0x28) + 0x144);
    temp_r4 = arg0->players[0];
    temp_r2 = (sp0 & 0xFFFF0000) | (u16) (((s32) temp_r4->qWorldX >> 8) - ((s32) temp_r6->unk0 >> 8));
    sp0 = temp_r2;
    sp0 = (0xFFFF & temp_r2) | ((((s32) temp_r4->qWorldY >> 8) - ((s32) temp_r6->unk4 >> 8)) << 0x10);
    sp4 &= 0xFFFF0000;
    sa2__sub_8085A9C(&sp0, 8);
    temp_r6->unk8 = (s32) sp0.unk0;
    temp_r6->unkC = (s32) sp0.unk2;
    temp_r2_2 = temp_r4->qWorldX - temp_r6->unk0;
    temp_r1_2 = temp_r4->qWorldY - temp_r6->unk4;
    temp_r0 = Sqrt((temp_r2_2 * temp_r2_2) + (temp_r1_2 * temp_r1_2));
    temp_r6->unk24 = (s32) temp_r0;
    temp_r6->unk1C = (s32) ((s32) temp_r0 >> 4);
    temp_r6->unk20 = 0;
    temp_r6->unk14 = 0xA;
    temp_r6->unk16 = 0xC8;
    if (temp_r1 != 0) {
        var_r0 = 0x4C0;
    } else {
        var_r0 = 0x500;
    }
    (arg0 + 0x2A0)->unk14 = var_r0;
}

void sub_807DB00(HyperEggRobo *arg0, u8 arg1, s8 arg2) {
    s32 temp_r3;
    void *temp_r0;

    temp_r3 = arg1 * 0x28;
    *(arg0 + 0x14C + temp_r3) = 0;
    *(arg0 + 0x150 + temp_r3) = 0;
    temp_r0 = arg0 + temp_r3;
    temp_r0->unk158 = 1;
    temp_r0->unk15A = 0;
    temp_r0->unk15C = arg2;
    temp_r0->unk15D = 0;
    temp_r0->unk157 = 1;
}

void sub_807DB60(HyperEggRobo *boss) {
    s32 sp4;
    s32 sp8;
    s32 spC;
    s32 sp10;
    Player *temp_r4;
    Sprite *temp_r1;
    Sprite *temp_r6;
    Sprite *temp_r7;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    u16 temp_r5;
    u32 temp_r6_2;
    u8 *temp_sl;
    u8 temp_r0;
    u8 temp_r0_5;
    u8 var_sb;

    sp4 = 0;
loop_1:
    boss->unk11 = 0;
    temp_r6 = &boss->spr144[sp4];
    gUnknown_08E2ED18[temp_r6->unk18](boss, (u8) sp4);
    sp10 = sp4 * 4;
    if ((gUnknown_08E2ED18[temp_r6->unk18] == sub_807E214) && (temp_r6->prevVariant != 0) && (boss->players[0]->callback != PlayerCB_80819BC)) {
        temp_r6->prevVariant = 0;
    }
    spC = sp4 * 2;
    sp8 = sp4 + 1;
    if ((temp_r6->unk13 != 0) && (boss->lives != 0)) {
        if (boss->unk11 != 0) {
            sub_807C518(boss, (u8) sp4);
        } else {
            temp_r7 = ((sp10 + sp4) * 8) + boss + 0x278;
            temp_sl = temp_r6->tiles;
            temp_r6_2 = temp_r6->frameNum;
            temp_r5 = gCurTask->data;
            var_sb = 0;
            do {
                temp_r4 = *(temp_r5 + 0x20 + (var_sb * 4));
                if (sub_802C080(temp_r4) == 0) {
                    if (temp_r4->moveState & 0x20) {
                        temp_r0_2 = temp_r5 + 0x7C;
                        temp_r1 = temp_r4->sprColliding;
                        if ((temp_r1 == temp_r0_2) || (temp_r0_3 = temp_r0_2 + 0x28, (temp_r1 == temp_r0_3)) || (temp_r0_4 = temp_r0_3 + 0x28, (temp_r1 == temp_r0_4)) || (temp_r1 == (temp_r0_4 + 0x28))) {
                            sub_8020CE0(temp_r7, (s32) temp_sl >> 8, (s32) temp_r6_2 >> 8, 0, temp_r4);
                        }
                    } else {
                        sub_8020CE0(temp_r7, (s32) temp_sl >> 8, (s32) temp_r6_2 >> 8, 0, temp_r4);
                    }
                }
                temp_r0 = var_sb + 1;
                var_sb = temp_r0;
            } while ((u32) temp_r0 <= 1U);
        }
    }
    sub_807F334(((sp10 + sp4) * 8) + 0x278 + boss, ((spC + sp4) * 4) + 0x340 + boss, 0U, sp4);
    temp_r0_5 = (u8) sp8;
    sp4 = (s32) temp_r0_5;
    if ((u32) temp_r0_5 <= 1U) {
        goto loop_1;
    }
}

void sub_807DCD8(s32 arg0, u8 arg1) {
    s16 var_r0;
    s32 *var_r0_2;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r3_2;
    s32 temp_r3_3;
    s32 temp_r5;
    s32 temp_r5_2;
    s32 temp_r6;
    s32 var_r0_3;
    s32 var_r0_4;
    s32 var_r1;
    s32 var_r1_2;
    s32 var_r8;
    u16 temp_r0;
    u16 temp_r0_2;
    u8 temp_r3;
    u8 temp_r7;
    void *temp_r4;

    temp_r7 = arg1;
    temp_r5 = temp_r7 * 0x28;
    temp_r4 = arg0 + (temp_r5 + 0x144);
    var_r8 = 0;
    temp_r0 = temp_r4->unk16;
    switch (temp_r0) {                              /* irregular */
    case 0:
        if (temp_r7 == 0) {
            var_r1 = temp_r4->unk0 + 0x3200;
        } else {
            var_r1 = temp_r4->unk0 + 0xFFFFCE00;
        }
        temp_r3 = sub_807D610(arg0, var_r1, temp_r7);
        if (temp_r3 != 0) {
            temp_r4->unk19 = temp_r3;
            var_r0 = 0xA;
block_26:
            temp_r4->unk16 = (u16) var_r0;
        }
        return;
    case 10:
        temp_r3_2 = 0x7F & temp_r4->unk19;
        temp_r1 = temp_r3_2 * 0x1C;
        if ((arg0 + temp_r1)->unk1AC == 0) {
            temp_r4->unk19 = 0;
            temp_r4->unk14 = 0x3CU;
            var_r0 = 0x14;
            goto block_26;
        }
        if ((s32) *(arg0 + 0x198 + temp_r1) > (s32) temp_r4->unk4) {
            var_r0_2 = arg0 + 0x150 + temp_r5;
            var_r1_2 = 0x200;
        } else {
            var_r0_2 = arg0 + 0x150 + temp_r5;
            var_r1_2 = 0xFFFFFE00;
        }
        *var_r0_2 = var_r1_2;
        temp_r6 = temp_r4->unk4 + temp_r4->unkC;
        temp_r4->unk4 = temp_r6;
        temp_r5_2 = temp_r3_2 * 0x1C;
        temp_r3_3 = temp_r4->unk0 - *(arg0 + 0x194 + temp_r5_2);
        var_r0_3 = temp_r3_3;
        if (temp_r3_3 < 0) {
            var_r0_3 = 0 - temp_r3_3;
        }
        temp_r1_2 = temp_r6 - *(arg0 + 0x198 + temp_r5_2);
        var_r0_4 = temp_r1_2;
        if (temp_r1_2 < 0) {
            var_r0_4 = 0 - temp_r1_2;
        }
        if (((s32) (var_r0_3 >> 8) <= 0xF) && ((s32) (var_r0_4 >> 8) <= 0x1F)) {
            sub_807D2A4(arg0 + (temp_r5_2 + 0x194), (u8) (temp_r7 + 2));
            var_r8 = 1;
        }
        if (var_r8 != 0) {
            m4aSongNumStart(0x238U);
            temp_r4->unk19 = 0;
            temp_r4->unk14 = 0x3CU;
            var_r0 = 0x14;
            goto block_26;
        }
        break;
    case 20:
        temp_r0_2 = temp_r4->unk14 - 1;
        temp_r4->unk14 = temp_r0_2;
        var_r0 = (s16) temp_r0_2;
        if (var_r0 == 0) {
            goto block_26;
        }
        break;
    }
}

void sub_807DE20(HyperEggRobo *boss, u8 param1) {
    Sprite *temp_r0_2;
    Sprite *temp_r5;
    s16 temp_r0_6;
    s16 temp_r0_7;
    s16 temp_r0_8;
    s16 var_r0;
    s32 *temp_r3_2;
    s32 temp_r0;
    s32 temp_r0_5;
    s32 temp_r1;
    s32 temp_r2_2;
    s32 temp_r2_5;
    s32 var_r0_2;
    s32 var_r0_4;
    s32 var_r0_5;
    s32 var_r0_7;
    s32 var_r0_8;
    s32 var_sl;
    u16 *temp_r2;
    u16 temp_r0_10;
    u16 temp_r0_9;
    u16 temp_r1_3;
    u16 temp_r1_4;
    u16 temp_r6;
    u32 temp_r0_11;
    u32 temp_r0_3;
    u32 temp_r0_4;
    u32 temp_r1_5;
    u32 temp_r4;
    u32 temp_r4_2;
    u32 var_r0_3;
    u32 var_r0_6;
    u8 *temp_r1_2;
    u8 *temp_r1_6;
    u8 *temp_r2_3;
    u8 temp_r2_4;
    u8 temp_r3;

    temp_r3 = param1;
    temp_r0 = temp_r3 * 0x28;
    temp_r5 = &boss->spr144[temp_r3];
    temp_r0_2 = temp_r0 + 0x278 + boss;
    temp_r2 = boss + ((temp_r3 * 0xC) + 0x340);
    var_sl = 0;
    temp_r6 = (u16) temp_r5->qAnimDelay;
    switch (temp_r6) {                              /* irregular */
    case 0x78:
        temp_r4 = temp_r5->frameNum;
        temp_r0_3 = temp_r4 + temp_r5->unkC;
        temp_r5->frameNum = temp_r0_3;
        sub_807F334(temp_r0_2, temp_r2, 1U);
        sub_807C244(temp_r0_2, (s32) temp_r5->tiles, (s32) temp_r5->frameNum, 0, temp_r4 - temp_r0_3, M2C_ERROR(/* Unable to find stack arg 0x4 in block */));
        boss->unk11 = 1;
        if ((s32) temp_r5->frameNum > (s32) (boss->unk120 + 0xFFFFC000)) {
            return;
        }
        sub_807C48C((HyperEggRobo *) temp_r0_2);
        temp_r5->unk13 = 0;
        var_r0 = 0xC8;
block_107:
        temp_r5->qAnimDelay = var_r0;
        return;
    case 0x64:
        temp_r4_2 = temp_r5->frameNum;
        temp_r0_4 = temp_r4_2 + temp_r5->unkC;
        temp_r5->frameNum = temp_r0_4;
        sub_807F334(temp_r0_2, temp_r2, 1U);
        sub_807C244(temp_r0_2, (s32) temp_r5->tiles, (s32) temp_r5->frameNum, 0, temp_r4_2 - temp_r0_4, M2C_ERROR(/* Unable to find stack arg 0x4 in block */));
        boss->unk11 = 1;
        temp_r2_2 = (0x7F & temp_r5->variant) * 0x14;
        temp_r3_2 = &boss->filler28[0x10] + temp_r2_2;
        if ((s32) *temp_r3_2 <= 0) {
            temp_r1 = *(&boss->spr144[0].frameNum + temp_r0) - *(&boss->filler28[8] + temp_r2_2);
            var_r0_2 = temp_r1;
            if (temp_r1 < 0) {
                var_r0_2 = 0 - temp_r1;
            }
            if ((s32) (var_r0_2 >> 8) <= 0x13) {
                *temp_r3_2 = *(&boss->spr144[0].anim + temp_r0);
                (boss + temp_r2_2)->unk3E = temp_r6;
                m4aSongNumStart(0x23AU);
            }
        }
        if ((s32) temp_r5->frameNum <= 0xF3FF) {
            return;
        }
        temp_r5->unkC = 0xFFFFFE80;
        temp_r0_5 = (gPseudoRandom * 0x196225) + 0x3C6EF35F;
        gPseudoRandom = temp_r0_5;
        temp_r5->oamFlags = (s16) *(((temp_r0_5 & 3) * 2) + &gUnknown_080D5C70);
        var_r0 = 0x6E;
        goto block_107;
    case 0x1E:
        temp_r0_6 = (u16) temp_r5->oamFlags - 1;
        temp_r5->oamFlags = temp_r0_6;
        if ((temp_r0_6 << 0x10) != 0) {
            return;
        }
        var_r0 = 0x64;
        goto block_107;
    case 0x6E:
        sub_807F334(temp_r0_2, temp_r2, 1U);
        temp_r0_7 = (u16) temp_r5->oamFlags - 1;
        temp_r5->oamFlags = temp_r0_7;
        if ((temp_r0_7 << 0x10) != 0) {
            return;
        }
        temp_r5->qAnimDelay = 0x78;
        temp_r5->unk13 = 1;
        return;
    case 0x136:
        temp_r1_2 = &temp_r5->tiles[temp_r5->frameFlags];
        temp_r5->tiles = temp_r1_2;
        if (temp_r3 == 0) {
            if ((s32) temp_r1_2 <= 0x61400) {
                temp_r5->tiles = (u8 *)0x61400;
                var_r0 = 0x140;
                goto block_107;
            }
        } else if ((s32) temp_r1_2 > 0x6DBFF) {
            temp_r5->tiles = (u8 *)0x6DC00;
            var_r0 = 0x140;
            goto block_107;
        }
        break;
    case 0xD2:
        temp_r0_8 = (u16) temp_r5->oamFlags - 1;
        temp_r5->oamFlags = temp_r0_8;
        if ((temp_r0_8 << 0x10) == 0) {
            var_r0 = 0x3E8;
            goto block_107;
        }
        break;
    case 0xC8:
        if (temp_r3 == 0) {
            temp_r0_9 = (*temp_r2 - 0x10) & 0x3FF;
            *temp_r2 = temp_r0_9;
            if (temp_r0_9 == 0x100) {
                goto block_90;
            }
            goto block_89;
        }
        temp_r0_10 = (*temp_r2 + 0x10) & 0x3FF;
        *temp_r2 = temp_r0_10;
        if (temp_r0_10 == 0x300) {
            var_sl = 1;
        }
block_89:
        if (var_sl != 0) {
block_90:
            temp_r5->oamFlags = 0x1E;
            var_r0 = 0xD2;
            goto block_107;
        }
        break;
    case 0x12C:
        if (temp_r3 == 0) {
            var_r0_3 = 0xFFFFFE00;
        } else {
            var_r0_3 = 0x200;
        }
        temp_r5->frameFlags = var_r0_3;
        var_r0 = 0x136;
        goto block_107;
        return;
    case 0x140:
        if (temp_r3 == 0) {
            var_r0_4 = *temp_r2 - 0x10;
        } else {
            var_r0_4 = *temp_r2 + 0x10;
        }
        *temp_r2 = var_r0_4 & 0x3FF;
        if (*temp_r2 == 0) {
            temp_r5->unk13 = 1;
            var_r0 = 0x15E;
            goto block_107;
        }
        break;
    case 0x0:
        temp_r5->unkC = 0xFFFFFE00;
        temp_r5->variant = 0;
        var_r0 = 0xA;
        goto block_107;
    case 0xA:
        if (temp_r3 == 0) {
            temp_r1_3 = *temp_r2;
            if (temp_r1_3 != 0x100) {
                var_r0_5 = temp_r1_3 + 0x10;
                goto block_42;
            }
        } else {
            temp_r1_4 = *temp_r2;
            if (temp_r1_4 != 0x300) {
                var_r0_5 = temp_r1_4 - 0x10;
block_42:
                *temp_r2 = var_r0_5 & 0x3FF;
            }
        }
        temp_r0_11 = temp_r5->frameNum + temp_r5->unkC;
        temp_r5->frameNum = temp_r0_11;
        if ((s32) temp_r0_11 > (s32) (boss->unk120 + 0xFFFFC000)) {
            return;
        }
        if (temp_r3 == 0) {
            var_r0_6 = 0x200;
        } else {
            var_r0_6 = 0xFFFFFE00;
        }
        temp_r5->frameFlags = var_r0_6;
        var_r0 = 0x14;
        goto block_107;
    case 0x14:
        temp_r1_5 = temp_r5->frameFlags;
        temp_r2_3 = &temp_r5->tiles[temp_r1_5];
        temp_r5->tiles = temp_r2_3;
        if (temp_r3 == 0) {
            if ((s32) temp_r1_5 >= 0) {
                if ((s32) temp_r2_3 > 0x667FF) {
                    var_r0_7 = 0x66800;
                    goto block_59;
                }
            } else {
                var_r0_7 = 0x61400;
                goto block_58;
            }
        } else if ((s32) temp_r1_5 >= 0) {
            if ((s32) temp_r2_3 > 0x6DBFF) {
                var_r0_7 = 0x6DC00;
                goto block_59;
            }
        } else {
            var_r0_7 = 0x68800;
block_58:
            if ((s32) temp_r2_3 <= var_r0_7) {
block_59:
                temp_r5->tiles = (u8 *) var_r0_7;
                temp_r5->frameFlags = 0 - temp_r1_5;
            }
        }
        temp_r2_4 = temp_r5->variant;
        if (!(0x80 & temp_r2_4)) {
            return;
        }
        temp_r1_6 = *(&boss->filler28[4] + ((0x7F & temp_r2_4) * 0x14));
        temp_r2_5 = temp_r1_6 - temp_r5->tiles;
        var_r0_8 = temp_r2_5;
        if (temp_r2_5 < 0) {
            var_r0_8 = 0 - temp_r2_5;
        }
        if ((s32) (var_r0_8 >> 8) > 1) {
            return;
        }
        temp_r5->tiles = temp_r1_6;
        temp_r5->oamFlags = 0x1E;
        temp_r5->qAnimDelay = 0x1E;
        temp_r5->unkC = 0x600;
        return;
    }
}

void sub_807E214(void *arg0, u8 arg1, ? arg3) {
    Player *sp0;
    s32 sp4;
    Sprite sp8;
    Player *temp_r5;
    Player *temp_r5_2;
    s16 temp_r0_6;
    s32 temp_r0;
    s32 temp_r1_3;
    s32 temp_r1_4;
    s32 temp_r1_5;
    s32 temp_r1_6;
    s32 temp_r3;
    s32 temp_r7;
    s32 var_r0_3;
    s32 var_r0_4;
    s32 var_r0_5;
    s32 var_r7;
    u16 temp_r0_2;
    u16 temp_r0_5;
    u16 temp_r1;
    u16 var_r0;
    u16 var_r0_2;
    u8 temp_r0_3;
    u8 temp_r0_4;
    u8 temp_r6;
    void *temp_r1_2;
    void *temp_r4;

    temp_r6 = arg1;
    temp_r4 = arg0 + ((temp_r6 * 0x28) + 0x144);
    var_r7 = 0;
    temp_r1 = temp_r4->unk16;
    switch (temp_r1) {                              /* irregular */
    case 0xC8:
        if (temp_r6 == 0) {
            return;
        }
        temp_r1_2 = temp_r4 - 0x28;
        if (temp_r1_2->unk16 != 0xC8) {
            return;
        }
        if (temp_r4->unk1B != 0) {
            var_r0 = 0x12C;
        } else {
            var_r0 = 0x1F4;
        }
        temp_r4->unk16 = var_r0;
        temp_r1_2->unk16 = var_r0;
        temp_r4->unk8 = (s32) (0 - temp_r4->unk8);
        temp_r1_2->unk8 = (s32) (0 - temp_r1_2->unk8);
        return;
    case 0x136:
        temp_r0 = temp_r4->unkC;
        temp_r1_3 = temp_r4->unk4 + temp_r0;
        temp_r4->unk4 = temp_r1_3;
        temp_r4->unkC = (s32) (temp_r0 + 0x80);
        if ((temp_r6 != 0) && (temp_r4->unk1B != 0)) {
            arg0->unk20->qWorldY = temp_r1_3;
        }
        if (((s32) temp_r4->unk4 > 0xAFFF) && ((s32) temp_r4->unkC >= 0)) {
            temp_r4->unk4 = 0xB000;
            temp_r4->unk14 = 0x1EU;
            temp_r4->unk16 = 0x140;
            if (temp_r6 != 0) {
                m4aSongNumStart(0x23CU);
                sp0 = (Player *)0x91;
                CreateScreenShake(0x800U, 0x20U, 0U, -1U, M2C_ERROR(/* Unable to find stack arg 0x0 in block */));
                return;
            }
        }
        return;
    case 0x12C:
        temp_r4->unkC = -0x800;
        temp_r4->unk1B = 4;
        temp_r4->unk16 = 0x136;
        return;
    case 0x140:
        temp_r0_2 = temp_r4->unk14 - 1;
        temp_r4->unk14 = temp_r0_2;
        if ((temp_r0_2 << 0x10) == 0) {
            temp_r0_3 = temp_r4->unk1B;
            if (temp_r0_3 != 0) {
                temp_r4->unk1B = (u8) (temp_r0_3 - 1);
            }
            temp_r0_4 = temp_r4->unk1B;
            if ((u32) temp_r0_4 <= 1U) {
                if (temp_r6 != 0) {
                    temp_r5 = arg0->unk20;
                    if (temp_r0_4 != 0) {
                        if (((s32) temp_r5->framesInvulnerable > 0) || ((s32) temp_r5->framesInvincible > 0)) {
                            temp_r5->qCamOffsetY = 0;
                            temp_r5->moveState &= ~0x20;
                            temp_r5->sprColliding = NULL;
                            SetPlayerCallback(temp_r5, Player_8008CD0);
                            temp_r5->framesInvulnerable = 0x78;
                        } else {
                            Player_8014550(temp_r5);
                        }
                    }
                }
                temp_r4->unk16 = 0x1F4;
                temp_r4->unk13 = 1;
                return;
            }
            temp_r4->unkC = -0xA00;
            temp_r4->unk16 = 0x136;
            return;
        }
        break;
    case 0x1F4:
        temp_r1_4 = temp_r4->unk0 + temp_r4->unk8;
        temp_r4->unk0 = temp_r1_4;
        if (temp_r6 == 0) {
            if (temp_r1_4 <= 0x61400) {
                temp_r4->unk0 = 0x61400;
                goto block_84;
            }
            goto block_83;
        }
        if (temp_r1_4 > 0x6DBFF) {
            temp_r4->unk0 = 0x6DC00;
            var_r7 = 1;
        }
block_83:
        if (var_r7 != 0) {
block_84:
            var_r0_2 = 0x3E8;
block_85:
            temp_r4->unk16 = var_r0_2;
        }
        break;
    case 0x0:
        temp_r4->unk8 = 0;
        temp_r4->unkC = 0;
        temp_r4->unk1B = 0;
        temp_r4->unk1C = 0;
        temp_r4->unk14 = 0x79;
        var_r0_2 = 0xA;
        goto block_85;
    case 0xA:
        temp_r1_5 = temp_r4->unkC + temp_r4->unk1C;
        temp_r4->unkC = temp_r1_5;
        if (temp_r1_5 < 0) {
            var_r0_3 = -0x200;
            if (temp_r1_5 <= 0xFFFFFE00) {
                goto block_26;
            }
        } else if (temp_r1_5 > 0x1FF) {
            var_r0_3 = 0x200;
block_26:
            temp_r4->unkC = var_r0_3;
        }
        temp_r7 = temp_r4->unk4 + temp_r4->unkC;
        temp_r4->unk4 = temp_r7;
        temp_r0_5 = temp_r4->unk14 - 1;
        temp_r4->unk14 = temp_r0_5;
        if ((temp_r0_5 << 0x10) == 0) {
            if (temp_r6 == 0) {
                var_r0_4 = 0x400;
            } else {
                var_r0_4 = 0xFFFFFC00;
            }
            temp_r4->unk8 = var_r0_4;
            temp_r4->unk16 = 0x64;
            temp_r4->unk13 = 0;
            return;
        }
        if ((((s16) temp_r4->unk14 % 10) << 0x10) != 0) {
            return;
        }
        if (temp_r7 > (s32) (arg0->unk20->qWorldY + 0xFFFFF000)) {
            temp_r4->unk1C = -0x40;
            return;
        }
        temp_r4->unk1C = 0x40;
        return;
    case 0x64:
        temp_r3 = temp_r4->unk0;
        temp_r1_6 = temp_r3 + temp_r4->unk8;
        temp_r4->unk0 = temp_r1_6;
        if (temp_r6 == 0) {
            if (temp_r1_6 > 0x667FF) {
                var_r0_5 = 0x66800;
                goto block_41;
            }
        } else {
            var_r0_5 = 0x68800;
            if (temp_r1_6 <= 0x68800) {
block_41:
                temp_r4->unk0 = var_r0_5;
                var_r7 = 1;
            }
        }
        sp0 = NULL;
        sub_807C244((temp_r6 * 0x28) + 0x278 + arg0, temp_r4->unk0, temp_r4->unk4, temp_r3 * 0, M2C_ERROR(/* Unable to find stack arg 0x0 in block */), M2C_ERROR(/* Unable to find stack arg 0x4 in block */));
        if (var_r7 == 0) {
            return;
        }
        temp_r4->unk16 = 0xC8;
        if (temp_r6 == 0) {
            return;
        }
        sub_807C5D0();
        sp8.hitboxes[0] = 0;
        sp8.hitboxes[0].b.left = -0x10;
        sp8.hitboxes[0].b.top = -0x10;
        sp0.unk2E = 0x10;
        (&sp0 + 0x2E)->unk1 = 0x1E;
        temp_r5_2 = arg0->unk20;
        temp_r0_6 = temp_r5_2->framesInvulnerable;
        if (temp_r0_6 == 0) {
            sp0 = temp_r5_2;
            sp4 = (s32) temp_r0_6;
            if (sub_8020700(&sp8, (s32) arg0->unk11C >> 8, (s32) temp_r4->unk4 >> 8, 0, M2C_ERROR(/* Unable to find stack arg 0x0 in block */), M2C_ERROR(/* Unable to find stack arg 0x4 in block */)) != 0) {
                temp_r4->unk1B = 1;
                sub_807FB7C(0xA0U);
                sub_8081A10(temp_r5_2);
                temp_r5_2->qWorldX = arg0->unk11C;
                temp_r5_2->qWorldY = temp_r4->unk4;
            }
        }
        m4aSongNumStart(0x23BU);
        return;
    }
}

void sub_807E54C(s32 arg0, u8 arg1) {
    s32 sp0;
    s32 sp4;
    ? *var_r0_11;
    ? *var_r0_13;
    s32 temp_r0_4;
    s32 temp_r0_7;
    s32 temp_r0_8;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r2_2;
    s32 temp_r2_3;
    s32 temp_r2_4;
    s32 var_r0;
    s32 var_r0_10;
    s32 var_r0_12;
    s32 var_r0_14;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 var_r0_4;
    s32 var_r0_5;
    s32 var_r0_6;
    s32 var_r0_7;
    s32 var_r0_8;
    s32 var_r0_9;
    s32 var_r1;
    s32 var_r1_2;
    s32 var_r4;
    u16 *temp_r3;
    u16 temp_r0;
    u16 temp_r0_2;
    u16 temp_r0_3;
    u16 temp_r0_5;
    u16 temp_r0_6;
    u16 temp_r1_3;
    u16 temp_r2;
    u16 temp_r3_2;
    u16 temp_r3_3;
    u8 temp_r6;
    void *temp_r5;
    void *var_r2;
    void *var_r2_2;

    temp_r6 = arg1;
    temp_r5 = arg0 + ((temp_r6 * 0x28) + 0x144);
    temp_r3 = arg0 + ((temp_r6 * 0xC) + 0x340);
    var_r4 = 0;
    temp_r2 = temp_r5->unk16;
    switch (temp_r2) {                              /* switch 1; irregular */
    case 0xC8:                                      /* switch 1 */
        temp_r0 = temp_r5->unk14 - 1;
        temp_r5->unk14 = temp_r0;
        if ((temp_r0 << 0x10) != 0) {
            return;
        }
        m4aSongNumStart(0x23DU);
        temp_r5->unk16 = 0xD2;
        return;
    case 0x14:                                      /* switch 1 */
        temp_r0_2 = temp_r5->unk14 - 1;
        temp_r5->unk14 = temp_r0_2;
        if ((temp_r0_2 << 0x10) != 0) {
            return;
        }
        temp_r5->unk14 = 0;
        temp_r5->unk16 = 0x64;
        return;
    case 0x64:                                      /* switch 1 */
        if (temp_r6 == 0) {
            temp_r3_2 = temp_r5->unk10;
            var_r0 = gSineTable[temp_r3_2 + 0x100] * 0x18;
            if (var_r0 < 0) {
                var_r0 += 0x3F;
            }
            var_r0_2 = gSineTable[temp_r3_2] * 0x18;
            if (var_r0_2 < 0) {
                var_r0_2 += 0x3F;
            }
            temp_r5->unk0 = (s32) ((var_r0 >> 6) + 0x63000);
            temp_r5->unk4 = (s32) ((var_r0_2 >> 6) + 0x7800);
            var_r0_3 = temp_r5->unk10 - 0x10;
        } else {
            temp_r3_3 = temp_r5->unk10;
            var_r0_4 = gSineTable[temp_r3_3 + 0x100] * 0x18;
            if (var_r0_4 < 0) {
                var_r0_4 += 0x3F;
            }
            var_r0_5 = gSineTable[temp_r3_3] * 0x18;
            if (var_r0_5 < 0) {
                var_r0_5 += 0x3F;
            }
            temp_r5->unk0 = (s32) ((var_r0_4 >> 6) + 0x6C000);
            temp_r5->unk4 = (s32) ((var_r0_5 >> 6) + 0x7800);
            var_r0_3 = temp_r5->unk10 + 0x10;
        }
        temp_r5->unk10 = (u16) (var_r0_3 & 0x3FF);
        temp_r0_3 = temp_r5->unk14 + 0x10;
        temp_r5->unk14 = temp_r0_3;
        if ((s32) (temp_r0_3 << 0x10) <= 0x07FF0000) {
            return;
        }
block_93:
        temp_r5->unk16 = 0x6EU;
        return;
    case 0xE6:                                      /* switch 1 */
        temp_r1 = temp_r5->unk20;
        if (temp_r1 > 0) {
            temp_r0_4 = temp_r5->unk1C;
            temp_r5->unk20 = (s32) (temp_r1 - temp_r0_4);
            temp_r2_2 = 0 - temp_r0_4;
            var_r0_6 = temp_r2_2 * temp_r5->unk8;
            if (var_r0_6 < 0) {
                var_r0_6 += 0xFF;
            }
            temp_r5->unk0 = (s32) (temp_r5->unk0 + (var_r0_6 >> 8));
            var_r0_7 = temp_r2_2 * temp_r5->unkC;
            if (var_r0_7 < 0) {
                var_r0_7 += 0xFF;
            }
            temp_r5->unk4 = (s32) (temp_r5->unk4 + (var_r0_7 >> 8));
        } else {
            var_r4 = 1;
        }
        if ((s32) (s16) temp_r3->unk2 > 0x100) {
            temp_r3->unk2 = (u16) (temp_r3->unk2 - 0x10);
            temp_r3->unk4 = (u16) (temp_r3->unk4 - 0x10);
        } else {
            var_r4 |= 2;
        }
        if (var_r4 == 3) {
            goto block_93;
        }
        return;
    case 0xD2:                                      /* switch 1 */
        temp_r1_2 = temp_r5->unk20;
        if (temp_r1_2 < (s32) temp_r5->unk24) {
            temp_r2_3 = temp_r5->unk1C;
            temp_r5->unk20 = (s32) (temp_r1_2 + temp_r2_3);
            var_r0_8 = temp_r2_3 * temp_r5->unk8;
            if (var_r0_8 < 0) {
                var_r0_8 += 0xFF;
            }
            temp_r5->unk0 = (s32) (temp_r5->unk0 + (var_r0_8 >> 8));
            var_r0_9 = temp_r2_3 * temp_r5->unkC;
            if (var_r0_9 < 0) {
                var_r0_9 += 0xFF;
            }
            temp_r5->unk4 = (s32) (temp_r5->unk4 + (var_r0_9 >> 8));
        } else {
            var_r4 = 1;
        }
        if ((s32) (s16) temp_r3->unk2 <= 0x1FF) {
            temp_r3->unk2 = (u16) (temp_r3->unk2 + 0x10);
            temp_r3->unk4 = (u16) (temp_r3->unk4 + 0x10);
        } else {
            var_r4 |= 2;
        }
        if ((s32) (s16) temp_r3->unk2 > 0x180) {
            sub_807F334(arg0 + ((temp_r6 * 0x28) + 0x278), temp_r3, 2U, (s32) temp_r6);
            temp_r5->unk13 = 1;
        }
        if (var_r4 != 3) {
            return;
        }
        temp_r5->unk14 = 0xAU;
        temp_r5->unk16 = 0xDCU;
        return;
    case 0xDC:                                      /* switch 1 */
        temp_r0_5 = temp_r5->unk14 - 1;
        temp_r5->unk14 = temp_r0_5;
        if ((temp_r0_5 << 0x10) != 0) {
            return;
        }
        temp_r5->unk16 = 0xE6;
        temp_r5->unk13 = 0;
        return;
    case 0x12C:                                     /* switch 1 */
        if (temp_r6 == 0) {
            var_r0_10 = (s32) temp_r5->unk0 >> 8;
            var_r1 = 0x614;
        } else {
            var_r0_10 = (s32) temp_r5->unk0 >> 8;
            var_r1 = 0x6DC;
        }
        sp0.unk0 = (s16) (var_r1 - var_r0_10);
        sp0.unk2 = (s16) (0x98 - ((s32) temp_r5->unk4 >> 8));
        sp0.unk4 = 0;
        sa2__sub_8085A9C(&sp0, 8);
        temp_r5->unk8 = (s32) (sp0.unk0 * 2);
        temp_r5->unkC = (s32) (sp0.unk2 * 2);
        switch (temp_r6) {                          /* switch 3; irregular */
        case 0:                                     /* switch 3 */
            var_r2 = arg0 + 0x278;
            var_r0_11 = &sBossFinalAnimsHands;
block_102:
            var_r2->unkC = (u16) var_r0_11->unkC;
            var_r2->unk1A = (s8) var_r0_11->unkE;
            break;
        case 1:                                     /* switch 3 */
            var_r2 = arg0 + 0x2A0;
            var_r0_11 = &sBossFinalAnimsHands + 0x18;
            goto block_102;
        }
        temp_r5->unk13 = 1;
        temp_r5->unk16 = 0x136;
        return;
    case 0x136:                                     /* switch 1 */
        temp_r2_4 = temp_r5->unk0 + temp_r5->unk8;
        temp_r5->unk0 = temp_r2_4;
        temp_r5->unk4 = (s32) (temp_r5->unk4 + temp_r5->unkC);
        if (temp_r6 == 0) {
            if (temp_r2_4 <= 0x61400) {
                temp_r5->unk16 = 0x3E8;
            }
            temp_r0_6 = temp_r3->unk0;
            if (temp_r0_6 != 0) {
                var_r0_12 = temp_r0_6 - 0x10;
                goto block_113;
            }
        } else {
            if (temp_r2_4 > 0x6DBFF) {
                temp_r5->unk16 = 0x3E8;
            }
            if (temp_r3->unk0 != 0) {
block_112:
                var_r0_12 = temp_r3->unk0 + 0x10;
block_113:
                temp_r3->unk0 = var_r0_12 & 0x3FF;
            }
        }
        break;
    case 0x0:                                       /* switch 1 */
        switch (temp_r6) {                          /* switch 2; irregular */
        case 0:                                     /* switch 2 */
            var_r2_2 = arg0 + 0x278;
            var_r0_13 = &sBossFinalAnimsHands;
block_30:
            var_r2_2->unkC = (u16) var_r0_13->unk4;
            var_r2_2->unk1A = (s8) var_r0_13->unk6;
            break;
        case 1:                                     /* switch 2 */
            var_r2_2 = arg0 + 0x2A0;
            var_r0_13 = &sBossFinalAnimsHands + 0x18;
            goto block_30;
        }
        if (temp_r6 == 0) {
            var_r0_14 = (s32) temp_r5->unk0 >> 8;
            var_r1_2 = 0x630;
        } else {
            var_r0_14 = (s32) temp_r5->unk0 >> 8;
            var_r1_2 = 0x6C0;
        }
        temp_r0_7 = (sp0 & 0xFFFF0000) | (u16) (var_r1_2 - var_r0_14);
        sp0 = temp_r0_7;
        sp0 = (u16) temp_r0_7 | ((0x60 - ((s32) temp_r5->unk4 >> 8)) << 0x10);
        sp4 &= 0xFFFF0000;
        sa2__sub_8085A9C(&sp0, 8);
        temp_r5->unk8 = (s32) (sp0.unk0 * 2);
        temp_r5->unkC = (s32) (sp0.unk2 * 2);
        temp_r5->unk10 = 0x300;
        temp_r5->unk16 = 0xAU;
        return;
    case 0xA:                                       /* switch 1 */
        temp_r5->unk0 = (s32) (temp_r5->unk0 + temp_r5->unk8);
        temp_r0_8 = temp_r5->unk4 + temp_r5->unkC;
        temp_r5->unk4 = temp_r0_8;
        if (temp_r0_8 <= 0x6000) {
            temp_r5->unk13 = 0;
            temp_r5->unk14 = temp_r2;
            temp_r5->unk16 = 0x14;
        }
        if (temp_r6 == 0) {
            if (temp_r3->unk0 == 0x100) {
                return;
            }
            goto block_112;
        }
        temp_r1_3 = temp_r3->unk0;
        if (temp_r1_3 == 0x300) {
            return;
        }
        var_r0_12 = temp_r1_3 - 0x10;
        goto block_113;
    }
}

void sub_807E99C(void *arg0, u8 arg1) {
    s32 sp0;
    s32 sp4;
    ? *var_r0_3;
    s32 temp_r0_2;
    s32 temp_r3_2;
    s32 var_r0;
    s32 var_r1;
    u16 *temp_r3;
    u16 temp_r0;
    u16 temp_r0_3;
    u16 temp_r0_4;
    u16 var_r0_2;
    u8 temp_r2;
    void *temp_r1;
    void *temp_r5;
    void *var_r2;

    temp_r2 = arg1;
    temp_r5 = arg0 + ((temp_r2 * 0x28) + 0x144);
    temp_r3 = arg0 + ((temp_r2 * 0xC) + 0x340);
    temp_r0 = temp_r5->unk16;
    switch ((u32) temp_r0) {                        /* switch 1; irregular */
    case 0:                                         /* switch 1 */
        if (temp_r2 == 0) {
            var_r1 = (s32) arg0->unk130 >> 8;
            var_r0 = ((s32) temp_r5->unk0 >> 8) + 0x20;
        } else {
            var_r1 = (s32) arg0->unk130 >> 8;
            var_r0 = ((s32) temp_r5->unk0 >> 8) - 0x20;
        }
        temp_r0_2 = (sp0 & 0xFFFF0000) | (u16) (var_r1 - var_r0);
        sp0 = temp_r0_2;
        sp0 = (u16) temp_r0_2 | ((((s32) arg0->unk134 >> 8) - ((s32) temp_r5->unk4 >> 8)) << 0x10);
        sp4 &= 0xFFFF0000;
        sa2__sub_8085A9C(&sp0, 8);
        temp_r5->unk8 = (s32) (sp0.unk0 * 2);
        temp_r5->unkC = (s32) (sp0.unk2 * 2);
        var_r0_2 = 0xA;
block_28:
        temp_r5->unk16 = var_r0_2;
        return;
    case 10:                                        /* switch 1 */
        temp_r3_2 = temp_r5->unk0 + temp_r5->unk8;
        temp_r5->unk0 = temp_r3_2;
        temp_r5->unk4 = (s32) (temp_r5->unk4 + temp_r5->unkC);
        if (temp_r2 == 0) {
            if ((s32) (arg0->unk130 + 0xFFFFE000) <= temp_r3_2) {
                var_r0_2 = 0x14;
                goto block_28;
            }
        } else if ((s32) (arg0->unk130 + 0x2000) >= temp_r3_2) {
            var_r0_2 = 0x14;
            goto block_28;
        }
        break;
    case 20:                                        /* switch 1 */
        if (temp_r2 != 0) {
            temp_r1 = temp_r5 - 0x28;
            if ((temp_r5->unk16 == 0x14) && (temp_r1->unk16 == 0x14)) {
                temp_r5->unk16 = 0x1EU;
                temp_r1->unk16 = 0x1EU;
                return;
            }
        }
        break;
    case 30:                                        /* switch 1 */
        switch (temp_r2) {                          /* switch 2; irregular */
        case 0:                                     /* switch 2 */
            var_r2 = arg0 + 0x278;
            var_r0_3 = &sBossFinalAnimsHands;
block_21:
            var_r2->unkC = (u16) var_r0_3->unk10;
            var_r2->unk1A = (s8) var_r0_3->unk12;
            break;
        case 1:                                     /* switch 2 */
            var_r2 = arg0 + 0x2A0;
            var_r0_3 = &sBossFinalAnimsHands + 0x18;
            goto block_21;
        }
        var_r0_2 = 0x1F;
        goto block_28;
    case 31:                                        /* switch 1 */
        if (temp_r2 == 0) {
            temp_r0_3 = (*temp_r3 - 8) & 0x3FF;
            *temp_r3 = temp_r0_3;
            if (temp_r0_3 == 0x300) {
                temp_r5->unk16 = 0x64;
                arg0->unkC = 0xA;
                return;
            }
        } else {
            temp_r0_4 = (*temp_r3 + 8) & 0x3FF;
            *temp_r3 = temp_r0_4;
            if (temp_r0_4 == 0x100) {
                var_r0_2 = 0x64;
                goto block_28;
            }
        }
        break;
    }
}

void sub_807EBB8(void *arg0, u8 arg1) {
    s32 sp0;
    s32 sp4;
    ? *var_r0_2;
    s32 temp_r0_2;
    s32 temp_r2_2;
    s32 var_r0;
    s32 var_r0_4;
    s32 var_r1;
    u16 *temp_r2;
    u16 temp_r0;
    u16 var_r0_3;
    u8 temp_r6;
    void *temp_r5;
    void *var_r2;

    temp_r6 = arg1;
    temp_r5 = arg0 + ((temp_r6 * 0x28) + 0x144);
    temp_r2 = arg0 + ((temp_r6 * 0xC) + 0x340);
    temp_r0 = temp_r5->unk16;
    switch (temp_r0) {                              /* switch 1; irregular */
    case 0:                                         /* switch 1 */
        if (temp_r6 == 0) {
            var_r0 = (s32) temp_r5->unk0 >> 8;
            var_r1 = 0x614;
        } else {
            var_r0 = (s32) temp_r5->unk0 >> 8;
            var_r1 = 0x6DC;
        }
        temp_r0_2 = (sp0 & 0xFFFF0000) | (u16) (var_r1 - var_r0);
        sp0 = temp_r0_2;
        sp0 = (u16) temp_r0_2 | ((0x98 - ((s32) temp_r5->unk4 >> 8)) << 0x10);
        sp4 &= 0xFFFF0000;
        sa2__sub_8085A9C(&sp0, 8);
        temp_r5->unk8 = (s32) (sp0.unk0 * 2);
        temp_r5->unkC = (s32) (sp0.unk2 * 2);
        switch (temp_r6) {                          /* switch 2; irregular */
        case 0:                                     /* switch 2 */
            var_r2 = arg0 + 0x278;
            var_r0_2 = &sBossFinalAnimsHands;
block_14:
            var_r2->unkC = (u16) var_r0_2->unk14;
            var_r2->unk1A = (s8) var_r0_2->unk16;
            break;
        case 1:                                     /* switch 2 */
            var_r2 = arg0 + 0x2A0;
            var_r0_2 = &sBossFinalAnimsHands + 0x18;
            goto block_14;
        }
        var_r0_3 = 0xA;
block_26:
        temp_r5->unk16 = var_r0_3;
        return;
    case 10:                                        /* switch 1 */
        if (temp_r6 == 0) {
            var_r0_4 = *temp_r2 + 8;
        } else {
            var_r0_4 = *temp_r2 - 8;
        }
        *temp_r2 = var_r0_4 & 0x3FF;
        if (*temp_r2 == 0) {
            var_r0_3 = 0x14;
            goto block_26;
        }
        break;
    case 20:                                        /* switch 1 */
        temp_r2_2 = temp_r5->unk0 + temp_r5->unk8;
        temp_r5->unk0 = temp_r2_2;
        temp_r5->unk4 = (s32) (temp_r5->unk4 + temp_r5->unkC);
        if (temp_r6 == 0) {
            if (temp_r2_2 <= 0x61400) {
                temp_r5->unk16 = 0x1EU;
                arg0->unkC = 0x64;
                return;
            }
        } else if (temp_r2_2 > 0x6DBFF) {
            var_r0_3 = 0x1E;
            goto block_26;
        }
        break;
    }
}

void sub_807ECFC(void *arg0, u8 arg1) {
    s32 temp_r0;
    s32 temp_r2;
    s32 temp_r3;
    u16 temp_r0_2;
    u16 temp_r1;
    u16 var_r0;
    void *temp_r4;

    temp_r4 = arg0 + ((arg1 * 0x28) + 0x144);
    temp_r1 = temp_r4->unk16;
    switch (temp_r1) {                              /* irregular */
    case 0:
        temp_r4->unk8 = (s32) temp_r1;
        temp_r4->unkC = 0xFFFFFD00;
        temp_r4->unk14 = temp_r1;
        var_r0 = 0xA;
block_8:
        temp_r4->unk16 = var_r0;
        return;
    case 10:
        temp_r3 = temp_r4->unk0 + temp_r4->unk8;
        temp_r4->unk0 = temp_r3;
        temp_r0 = temp_r4->unkC;
        temp_r2 = temp_r4->unk4 + temp_r0;
        temp_r4->unk4 = temp_r2;
        temp_r4->unkC = (s32) (temp_r0 + 0x40);
        temp_r0_2 = temp_r4->unk14 + 1;
        temp_r4->unk14 = temp_r0_2;
        if (temp_r0_2 & 1) {
            sub_8079758(7U, (s16) ((s32) (temp_r3 << 8) >> 0x10), (s16) ((s32) (temp_r2 << 8) >> 0x10), 0x300, 0U, 0x1EU, 0, arg0->unk18);
        }
        if ((s32) ((s32) temp_r4->unk4 >> 8) > 0x12C00) {
            var_r0 = 0x3E8;
            goto block_8;
        }
        break;
    }
}

void sub_807ED8C(HyperEggRobo *arg0, ? arg3) {
    Player *temp_r2;
    s16 temp_r0_8;
    s16 temp_r1_3;
    s16 temp_r4;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_6;
    s32 temp_r1_2;
    s32 temp_r1_4;
    s32 temp_r7;
    s32 temp_r7_2;
    u16 temp_r0;
    u16 temp_r0_10;
    u16 temp_r0_12;
    u16 temp_r0_13;
    u16 temp_r0_5;
    u16 temp_r0_9;
    u16 temp_r1;
    u16 temp_r3;
    u32 temp_r0_4;
    u32 temp_r0_7;
    u8 temp_r0_11;
    u8 temp_r0_14;
    u8 var_r1;
    u8 var_r1_2;
    u8 var_r1_3;
    u8 var_r3;

    temp_r1 = arg0->unk16;
    switch (temp_r1) {                              /* irregular */
        return;
    case 0xD2:
        var_r1 = 0;
        do {
            gPlayers[var_r1].idleAndCamCounter = 0x168;
            var_r1 += 1;
        } while ((u32) var_r1 <= 3U);
        temp_r0 = arg0->unk14 - 1;
        arg0->unk14 = temp_r0;
        if ((temp_r0 << 0x10) != 0) {
            return;
        }
        arg0->unk14 = 0xB4;
        arg0->unk16 = 0xDCU;
        m4aSongNumStart(0x221U);
        gMusicManagerState.unk6 = 0x140;
        return;
    case 0xC8:
        if (1 & arg0->unk14) {
            temp_r0_2 = (0x196225 * gPseudoRandom) + 0x3C6EF35F;
            temp_r7 = 0x3FF & temp_r0_2;
            temp_r0_3 = (0x196225 * temp_r0_2) + 0x3C6EF35F;
            gPseudoRandom = temp_r0_3;
            temp_r0_4 = (u32) temp_r0_3 % 48;
            sub_8079758(7U, (s16) ((s32) ((arg0->unk11C + ((u32) (temp_r0_4 * gSineTable[temp_r7 + 0x100]) >> 6)) << 8) >> 0x10), (s16) (((s32) (arg0->unk120 + ((u32) (temp_r0_4 * gSineTable[temp_r7]) >> 6)) >> 8) - 0x30), 0x300, (u16) temp_r7, 0x1EU, 0, arg0->unk18);
        }
        temp_r0_5 = arg0->unk14 + 1;
        arg0->unk14 = temp_r0_5;
        if (!(temp_r0_5 & 0x3F)) {
            m4aSongNumStart(0x221U);
        }
        if (arg0->unk12E != 0) {
            return;
        }
        arg0->unk16 = 0xD2;
        arg0->unk14 = 0x3CU;
        sub_807FB7C(0xAU);
        return;
    case 0xDC:
        var_r1_2 = 0;
        do {
            gPlayers[var_r1_2].idleAndCamCounter = 0x168;
            var_r1_2 += 1;
        } while ((u32) var_r1_2 <= 3U);
        if (1 & arg0->unk14) {
            temp_r1_2 = (0x196225 * gPseudoRandom) + 0x3C6EF35F;
            temp_r7_2 = (0xFF & temp_r1_2) + 0x280;
            temp_r0_6 = (0x196225 * temp_r1_2) + 0x3C6EF35F;
            gPseudoRandom = temp_r0_6;
            temp_r0_7 = (u32) temp_r0_6 % 48;
            sub_8079758(7U, (s16) ((s32) ((arg0->unk11C + ((u32) (temp_r0_7 * gSineTable[temp_r7_2 + 0x100]) >> 6)) << 8) >> 0x10), (s16) (((s32) (arg0->unk120 + ((u32) (temp_r0_7 * gSineTable[temp_r7_2]) >> 6)) >> 8) - 0x60), ((temp_r0_7 & 3) << 8) | 0x400, (u16) temp_r7_2, 0x1EU, 0, arg0->unk18);
        }
        if (!(0x3F & arg0->unk14)) {
            m4aSongNumStart(0x221U);
        }
        temp_r0_8 = (s16) arg0->unk14;
        temp_r3 = arg0->unk14;
        if (temp_r0_8 == 0x3C) {
            gBldRegs.bldCnt = 0x3FBF;
            gBldRegs.bldAlpha = 8;
            gBldRegs.bldY = 0;
        } else if (((s32) temp_r0_8 <= 0x3B) && (1 & temp_r3) && (gBldRegs.bldY != 0x10)) {
            gBldRegs.bldY += 1;
        }
        temp_r0_9 = temp_r3 - 1;
        arg0->unk14 = temp_r0_9;
        if ((temp_r0_9 << 0x10) == 0) {
            arg0->unk14 = 0x3CU;
            arg0->unk16 = 0x3E8;
            return;
        }
        return;
    case 0x3E8:
        temp_r0_10 = arg0->unk14 - 1;
        arg0->unk14 = temp_r0_10;
        temp_r1_3 = (s16) temp_r0_10;
        if (temp_r1_3 == 0) {
            arg0->unk8 = 1;
            arg0->unkC = temp_r1_3;
            if (gStageData.gameMode == 0) {
                gPlayers[1].moveState &= 0xFFFFFEFF;
                SetPlayerCallback(&gPlayers[1], Player_8005380);
                gPlayers[1].qWorldX = gPlayers->qWorldX;
                gPlayers[1].qWorldY = gPlayers->qWorldY;
                gPlayers[1].layer = gPlayers->layer;
            }
            gCurTask->main = sub_807F568;
        }
        break;
    case 0x0:
        temp_r0_11 = arg0->filler1[0];
        if ((s32) temp_r0_11 > 4) {
            return;
        }
        if ((s32) temp_r0_11 < 1) {
            return;
        }
        if ((sub_807F228(arg0) << 0x18) == 0) {
            return;
        }
        sub_807F434(arg0);
        return;
    case 0x1:
        temp_r0_12 = arg0->unk14 - 1;
        arg0->unk14 = temp_r0_12;
        temp_r4 = (s16) temp_r0_12;
        if (temp_r4 != 0) {
            return;
        }
        sub_807BE58(arg0, 1U);
        if (arg0->lives != 0) {
            arg0->spr228.anim = gUnknown_080D5C38.unk0;
            arg0->spr228.variant = (u8) gUnknown_080D5C38.unk2;
            arg0->unk16 = (u16) temp_r4;
            return;
        }
        if (gStageData.gameMode == 5) {
            if (gStageData.playerIndex != 0) {
                arg0->unk16 = 0x6EU;
                return;
            }
            sub_8027674(1U, gStageData.levelTimer);
            goto block_35;
        }
block_35:
        sub_8081C08(arg0);
        arg0->unk16 = 0x64;
        return;
    case 0x64:
        temp_r0_13 = arg0->unk14 - 1;
        arg0->unk14 = temp_r0_13;
        if ((temp_r0_13 << 0x10) != 0) {
            return;
        }
        var_r3 = 0;
loop_39:
        temp_r2 = &gPlayers[var_r3];
        if ((temp_r2->moveState & 0x100) && ((temp_r1_4 = 0x1C & temp_r2->unk2B, (temp_r1_4 == 4)) || (temp_r1_4 == 0xC))) {
            arg0->unk14 = 4;
            return;
        }
        var_r3 += 1;
        if ((u32) var_r3 > 1U) {
            gStageData.unk4 = 4;
            sub_807BE58(arg0, 0xAU);
            CreateScreenShake(0x800U, 4U, 0U, -1U, 0xD3U);
            temp_r0_14 = arg0->lives;
            if (temp_r0_14 != 0) {
                var_r1_3 = temp_r0_14 - 1;
            } else {
                var_r1_3 = 0;
            }
            arg0->unk8 = (s16) *(var_r1_3 + &gUnknown_080D5C48);
            arg0->unkC = 0;
            arg0->filler1[0] = 5;
            sub_807DB00(arg0, 0U, 0xB);
            sub_807DB00(arg0, 1U, 0xB);
            arg0->spr228.anim = gUnknown_080D5C38.unkC;
            arg0->spr228.variant = (u8) gUnknown_080D5C38.unkE;
            m4aSongNumStart(0x221U);
            sub_807FB7C(0x96U);
            sub_807FB7C(0U);
            arg0->unk16 = 0xC8;
            return;
        }
        goto loop_39;
    }
}

s32 sub_807F228(HyperEggRobo *arg0) {
    Player *temp_r1;
    Player *temp_r4;
    Sprite *temp_r0;
    s32 var_sl;
    u8 var_r7;

    var_sl = 0;
    temp_r0 = arg0 + 0x250;
    sub_8004D68(arg0->unk130, arg0->unk134);
    temp_r1 = &gPlayers[gStageData.playerIndex];
    if (((((u32) (temp_r1->unk2A << 0x1C) >> 0x1C) == 1) || (((u32) (gPlayers[(u32) (temp_r1->unk2B << 0x1E) >> 0x1E].unk2A << 0x1C) >> 0x1C) == 1)) && (IsCollidingWithCheese(temp_r0) == 1)) {
        var_sl = 1;
    }
    var_r7 = 0;
    do {
        temp_r4 = &gPlayers[var_r7];
        if ((sub_802C080(temp_r4) == 0) && (temp_r0->hitboxes[0].index != -1)) {
            if (sub_8020E3C(temp_r0, (s32) arg0->unk130 >> 8, (s32) arg0->unk134 >> 8, 0, temp_r4) == 1) {
                var_sl = 1;
                sub_80044CC(temp_r4);
            } else {
                sub_8020CE0(temp_r0, (s32) arg0->unk130 >> 8, (s32) arg0->unk134 >> 8, 0, temp_r4);
            }
        }
        var_r7 += 1;
    } while ((u32) var_r7 <= 1U);
    return var_sl;
}

void sub_807F334(Sprite *arg0, u16 *arg1, u8 arg2, u8 arg3) {
    s8 *var_r2;
    s8 *var_r3;
    s8 *var_r4;
    s8 var_r0;
    s8 var_r0_2;
    s8 var_r0_3;
    u8 temp_r2;
    u8 temp_r3;
    void *temp_r1;
    void *temp_r1_2;
    void *temp_r1_3;
    void *temp_r1_4;
    void *var_r1;
    void *var_r1_2;

    temp_r2 = arg2;
    temp_r3 = arg3;
    switch (temp_r2) {                              /* irregular */
    default:
        if (temp_r3 == 0) {
            temp_r1 = arg0 + 0x24;
            arg0->hitboxes[0].b.left = -0xD;
            temp_r1->unk1 = 0xED;
            var_r1 = temp_r1 + 1 + 1;
            var_r0 = 8;
        } else {
            temp_r1_2 = arg0 + 0x24;
            arg0->hitboxes[0].b.left = -8;
            temp_r1_2->unk1 = 0xED;
            var_r1 = temp_r1_2 + 1 + 1;
            var_r0 = 0xD;
        }
        var_r1->unk0 = var_r0;
        var_r1->unk1 = 0x1E;
        return;
    case 1:
        if (temp_r3 == 0) {
            temp_r1_3 = arg0 + 0x24;
            arg0->hitboxes[0].b.left = -0x1E;
            temp_r1_3->unk1 = 0xF3;
            var_r1_2 = temp_r1_3 + 1 + 1;
            var_r0_2 = 0x13;
        } else {
            temp_r1_4 = arg0 + 0x24;
            arg0->hitboxes[0].b.left = -0x13;
            temp_r1_4->unk1 = 0xF3;
            var_r1_2 = temp_r1_4 + 1 + 1;
            var_r0_2 = 0x1E;
        }
        var_r1_2->unk0 = var_r0_2;
        var_r1_2->unk1 = 8;
        return;
    case 2:
        if (temp_r3 == 0) {
            var_r4 = arg0 + 0x24;
            arg0->hitboxes[0].b.left = -0x1E;
            var_r3 = arg0 + 0x25;
            arg0->hitboxes[0].b.top = -0xD;
            var_r2 = arg0 + 0x26;
            var_r0_3 = 0x13;
        } else {
            var_r4 = arg0 + 0x24;
            arg0->hitboxes[0].b.left = -0x13;
            var_r3 = arg0 + 0x25;
            arg0->hitboxes[0].b.top = -0xD;
            var_r2 = arg0 + 0x26;
            var_r0_3 = 0x1E;
        }
        *var_r2 = var_r0_3;
        arg0->hitboxes[0].b.bottom = 8;
        *var_r4 = (s8) ((s32) (*var_r4 * arg1->unk2) >> 8);
        *var_r3 = (s8) ((s32) (*var_r3 * arg1->unk4) >> 8);
        *var_r2 = (s8) ((s32) (*var_r2 * arg1->unk2) >> 8);
        arg0->hitboxes[0].b.bottom = (s8) ((s32) (arg0->hitboxes[0].b.bottom * arg1->unk4) >> 8);
        return;
    }
}

void sub_807F434(HyperEggRobo *arg0) {
    u8 temp_r0;
    u8 temp_r1;

    arg0->unk14 = 0x78;
    sub_807BE58(arg0, 0U);
    arg0->spr228.anim = gUnknown_080D5C38.unk8;
    arg0->spr228.variant = (u8) gUnknown_080D5C38.unkA;
    sub_8078DB0(0x4F4, 0, arg0->unk14, 0U);
    sub_8078DB0(0x4F5, 0, arg0->unk14, 0U);
    temp_r1 = arg0->lives - 1;
    arg0->lives = temp_r1;
    arg0->unk16 = 1;
    if (gStageData.difficulty == 0) {
        if (temp_r1 == 4) {
            sub_80299D4(MUS_VS__FINAL_BOSS_PINCH);
        }
    } else if (temp_r1 == 3) {
        sub_80299D4(MUS_VS__FINAL_BOSS_PINCH);
    }
    m4aSongNumStart(0xEBU);
    PlayVoiceEggmanHit();
    if (gStageData.gameMode == 5) {
        if (gStageData.playerIndex == 0) {
            temp_r0 = arg0->lives;
            if (temp_r0 != 0) {
                sub_8027674(3U, (u16) temp_r0);
            }
        } else {
            sub_8027674(4U, (u16) arg0->lives);
        }
    }
}

void sub_807F4F0(void *arg0) {
    s32 temp_r1;
    u16 temp_r2;
    u16 temp_r4;
    void *temp_r2_2;

    temp_r4 = gStageData.taskBoss->data;
    temp_r1 = 0x7F & arg0->unk2;
    temp_r2 = arg0->unk3 | (arg0->unk4 << 8);
    if (temp_r1 == 1) {
        temp_r4->unk0 = 0;
        gStageData.levelTimer = temp_r2;
        temp_r4->unk14 = 0x3C;
        temp_r2_2 = temp_r4 + 0x228;
        temp_r2_2->unkC = (u16) gUnknown_080D5C38.unk0;
        temp_r2_2->unk1A = (s8) gUnknown_080D5C38.unk2;
        temp_r4->unk16 = 0x64;
        return;
    }
    if ((temp_r1 >= 1) && (temp_r1 <= 4) && (temp_r1 >= 3) && (temp_r4->unk0 != (u8) temp_r2)) {
        sub_807F434((HyperEggRobo *) temp_r4);
    }
}

void sub_807F568(void) {
    Player *temp_r0_22;
    Player *temp_r6;
    Sprite *temp_r0;
    s16 temp_r0_14;
    s16 temp_r3_2;
    s16 var_r0;
    s32 temp_r1_3;
    s32 temp_r1_4;
    s32 temp_r3;
    s32 var_r0_3;
    u16 temp_r0_10;
    u16 temp_r0_11;
    u16 temp_r0_12;
    u16 temp_r0_13;
    u16 temp_r0_15;
    u16 temp_r0_17;
    u16 temp_r0_18;
    u16 temp_r0_19;
    u16 temp_r0_20;
    u16 temp_r0_21;
    u16 temp_r0_2;
    u16 temp_r0_3;
    u16 temp_r0_4;
    u16 temp_r0_5;
    u16 temp_r0_6;
    u16 temp_r0_7;
    u16 temp_r0_8;
    u16 temp_r0_9;
    u16 temp_r1;
    u16 temp_r1_2;
    u16 temp_r3_3;
    u16 var_r0_2;
    u16 var_r3;
    u16 var_r4_2;
    u8 temp_r0_16;
    u8 var_r1;
    u8 var_r4;
    void *temp_r0_23;
    void *temp_r0_24;
    void *temp_r0_25;
    void *temp_r0_26;
    void *temp_r0_27;

    temp_r1 = gCurTask->data;
    gStageData.rings = 0;
    sub_358_807C14C((HyperEggRobo *) temp_r1);
    var_r4 = 0;
    do {
        temp_r0 = temp_r1 + ((var_r4 * 0x28) + 0x7C);
        temp_r3 = var_r4 * 0x14;
        temp_r0->x = ((s32) *(temp_r1 + 0x2C + temp_r3) >> 8) - gCamera.x;
        temp_r0->y = ((s32) *(temp_r1 + 0x30 + temp_r3) >> 8) - gCamera.y;
        DisplaySprite(temp_r0);
        var_r4 += 1;
    } while ((u32) var_r4 <= 3U);
    if (temp_r1->unkC != 0x406) {
        var_r1 = 0;
        do {
            gPlayers[var_r1].idleAndCamCounter = 0x168;
            var_r1 += 1;
        } while ((u32) var_r1 <= 3U);
    }
    temp_r1_2 = temp_r1->unkC;
    switch (temp_r1_2) {                            /* irregular */
    case 0x7DA:
        temp_r0_2 = temp_r1->unk8 - 1;
        temp_r1->unk8 = temp_r0_2;
        if ((temp_r0_2 << 0x10) != 0) {
            return;
        }
        gCamera.minX = gCamera.maxX - 0xF0;
        temp_r1->unk8 = 0xC8;
        m4aSongNumStart(0x3CU);
        temp_r1->unkC = 0x7E4;
        return;
    case 0x3E9:
        temp_r0_3 = gBldRegs.bldY - 1;
        gBldRegs.bldY = temp_r0_3;
        temp_r0_4 = temp_r0_3;
        if (temp_r0_4 != 0) {
            return;
        }
        gBldRegs.bldCnt = temp_r0_4;
        gBldRegs.bldAlpha = temp_r0_4;
        gBldRegs.bldY = temp_r0_4;
        temp_r1->unk8 = 0x4B0;
        temp_r1->unkC = 0x3F2;
        return;
    case 0xA:
        temp_r1->unkC = 0x64;
        return;
    case 0x64:
        if (MetExtraBossEnableConditions() != 0) {
            temp_r1->unkC = 0x7D0;
            return;
        }
        temp_r1->unkC = 0x3E8;
        return;
    case 0x3E8:
        sub_807FB7C(1U);
        sub_808178C(0U);
        CreateAltarEmeraldPostBossCutscene(0U);
        sub_807FB7C(2U);
        gCamera.maxX += 0x258;
        temp_r1->unk8 = 0x4B0;
        temp_r1->unkC = 0x3E9;
        return;
        return;
    case 0x3F2:
        temp_r0_5 = temp_r1->unk8 - 1;
        temp_r1->unk8 = temp_r0_5;
        if ((temp_r0_5 << 0x10) != 0) {
            return;
        }
        temp_r1->unkC = 0x3FCU;
        return;
    case 0x3FC:
        temp_r6 = &gPlayers[gStageData.playerIndex];
        SetPlayerCallback(temp_r6, Player_8005E80);
        SetPlayerCallback(&gPlayers[(u32) (temp_r6->unk2B << 0x1E) >> 0x1E], Player_8005E80);
        temp_r1->unkC = 0x406;
        return;
    case 0x7D0:
        sub_807FB7C(1U);
        temp_r1->unk28 = CreateAltarEmeraldPostBossCutscene(1U);
        sub_808178C(1U);
        sub_807FB7C(2U);
        gCamera.maxX += 0x1E0;
        gCamera.minY = gCamera.y;
        temp_r1->unk8 = 0x2E0;
        m4aMPlayAllStop();
        temp_r1->unkC = 0x7D1;
        return;
    case 0x7D1:
        temp_r0_6 = gBldRegs.bldY - 1;
        gBldRegs.bldY = temp_r0_6;
        temp_r0_7 = temp_r0_6;
        if (temp_r0_7 != 0) {
            return;
        }
        gBldRegs.bldCnt = temp_r0_7;
        gBldRegs.bldAlpha = temp_r0_7;
        gBldRegs.bldY = temp_r0_7;
        temp_r1->unk8 = 0x2E0;
        temp_r1->unkC = 0x7DAU;
        return;
    case 0x802:
        temp_r0_8 = temp_r1->unk8 - 1;
        temp_r1->unk8 = temp_r0_8;
        if ((temp_r0_8 << 0x10) == 0) {
            temp_r0_9 = gBldRegs.bldY + 1;
            gBldRegs.bldY = temp_r0_9;
            if (temp_r0_9 == 0x10) {
                temp_r1->unk8 = 0x78;
                temp_r1->unkC = 0x80CU;
                return;
            }
            temp_r1->unk8 = 4;
            return;
        }
        return;
    case 0x7EE:
        temp_r0_10 = temp_r1->unkA + 0x20;
        temp_r1->unkA = temp_r0_10;
        if ((s32) (s16) temp_r0_10 > 0xFF) {
            temp_r1->unk8 = 0x78;
            temp_r1->unkA = 2;
            temp_r1->unkE = 0;
            temp_r1->unkC = 0x7F3;
        }
        var_r0 = gSineTable[(s16) temp_r1->unkA];
        if ((s32) var_r0 < 0) {
            var_r0 += 0x1FF;
        }
        temp_r1_3 = var_r0 >> 9;
        temp_r0_11 = 0x78 - temp_r1_3;
        var_r4_2 = temp_r0_11;
        if ((s32) (temp_r0_11 << 0x10) < 0) {
            var_r4_2 = 0;
        }
        var_r0_2 = temp_r1_3 + 0x78;
block_111:
        var_r3 = var_r0_2;
        if ((s32) (s16) var_r0_2 > 0xF0) {
            var_r3 = 0xF0;
        }
block_113:
        gWinRegs->unk0 = (s16) var_r3 | ((s32) (var_r4_2 << 0x10) >> 8);
        return;
    case 0x7E4:
        temp_r0_12 = temp_r1->unk8 - 1;
        temp_r1->unk8 = temp_r0_12;
        temp_r3_2 = (s16) temp_r0_12;
        if (temp_r3_2 != 0) {
            return;
        }
        gDispCnt |= 0x2000;
        gWinRegs->unk0 = 0x7778;
        gWinRegs[2] = 0xA0;
        gWinRegs[4] = 0x3C;
        gWinRegs[5] = 0x1C;
        gBldRegs.bldCnt = 0x3FBF;
        gBldRegs.bldAlpha = 8;
        gBldRegs.bldY = 8;
        temp_r1->unkA = (u16) temp_r3_2;
        temp_r1->unkC = 0x7EEU;
        m4aSongNumStart(0x29BU);
        return;
    case 0x7F3:
        var_r4_2 = 0x58;
        var_r3 = 0x98;
        temp_r0_13 = temp_r1->unk8 - 1;
        temp_r1->unk8 = temp_r0_13;
        temp_r0_14 = (s16) temp_r0_13;
        if (temp_r0_14 == 0) {
            temp_r1->unkA = (u16) temp_r0_14;
            temp_r1->unkC = 0x7F8;
        } else {
            temp_r0_15 = temp_r1->unkA - 1;
            temp_r1->unkA = temp_r0_15;
            if ((temp_r0_15 << 0x10) == 0) {
                temp_r1->unkA = 2;
                temp_r0_16 = temp_r1->unkE ^ 1;
                temp_r1->unkE = temp_r0_16;
                if (temp_r0_16 == 0) {
                    var_r4_2 = 0x60;
                    var_r3 = 0x90;
                }
            }
        }
        goto block_113;
    case 0x7F8:
        temp_r0_17 = temp_r1->unkA + 8;
        temp_r1->unkA = temp_r0_17;
        if ((s32) (s16) temp_r0_17 > 0xFF) {
            temp_r1->unk8 = 4;
            m4aSongNumStop(0x29BU);
            temp_r1->unkC = 0x802;
        }
        var_r0_3 = gSineTable[(s16) temp_r1->unkA] * 0x58;
        if (var_r0_3 < 0) {
            var_r0_3 += 0x3FFF;
        }
        temp_r1_4 = var_r0_3 >> 0xE;
        temp_r0_18 = 0x58 - temp_r1_4;
        var_r4_2 = temp_r0_18;
        if ((s32) (temp_r0_18 << 0x10) < 0) {
            var_r4_2 = 0;
        }
        var_r0_2 = temp_r1_4 + 0x98;
        goto block_111;
    case 0x820:
        temp_r0_19 = temp_r1->unk8 - 1;
        temp_r1->unk8 = temp_r0_19;
        if ((temp_r0_19 << 0x10) == 0) {
            temp_r1->unkC = 0x8FCU;
            return;
        }
        break;
    case 0x80C:
        temp_r0_20 = temp_r1->unk8 - 1;
        temp_r1->unk8 = temp_r0_20;
        if ((temp_r0_20 << 0x10) == 0) {
            sub_8081DF4(temp_r1->unk28);
            m4aSongNumStart(0x23FU);
            temp_r1->unkC = 0x816;
            return;
        }
        break;
    case 0x816:
        temp_r0_21 = gBldRegs.bldY - 1;
        gBldRegs.bldY = temp_r0_21;
        temp_r3_3 = temp_r0_21;
        if (temp_r3_3 == 0) {
            gDispCnt &= 0xDFFF;
            gWinRegs[4] = temp_r3_3;
            gWinRegs[5] = temp_r3_3;
            gBldRegs.bldCnt = temp_r3_3;
            gBldRegs.bldAlpha = temp_r3_3;
            gBldRegs.bldY = temp_r3_3;
            temp_r1->unk8 = 0x78AU;
            temp_r1->unkC = 0x820;
            return;
        }
        break;
    case 0x8FC:
        m4aSongNumStart(0x58U);
        sub_8002508();
        temp_r1->unkC = 0x91AU;
        sub_807FB7C(0x1EU);
        break;
    case 0x0:
        temp_r0_22 = &gPlayers[gStageData.playerIndex];
        temp_r0_22->framesInvulnerable = 0;
        gPlayers[(u32) (temp_r0_22->unk2B << 0x1E) >> 0x1E].framesInvulnerable = 0;
        temp_r0_23 = temp_r1->unk18;
        if (temp_r0_23 != NULL) {
            VramFree(temp_r0_23);
            temp_r1->unk18 = NULL;
        }
        temp_r0_24 = temp_r1->unk278;
        if (temp_r0_24 != NULL) {
            VramFree(temp_r0_24);
            temp_r1->unk278 = NULL;
        }
        temp_r0_25 = temp_r1->unk2A0;
        if (temp_r0_25 != NULL) {
            VramFree(temp_r0_25);
            temp_r1->unk2A0 = NULL;
        }
        temp_r0_26 = temp_r1->unk250;
        if (temp_r0_26 != NULL) {
            VramFree(temp_r0_26);
            temp_r1->unk250 = NULL;
        }
        temp_r0_27 = temp_r1->unk228;
        if (temp_r0_27 != NULL) {
            VramFree(temp_r0_27);
            temp_r1->unk228 = NULL;
        }
        gDispCnt &= 0x9EFF;
        gBgScrollRegs[0][0] = 0;
        gBgScrollRegs[0][1] = 0;
        sub_80299FC();
        gStageData.unk4 = 9;
        gStageData.zone = 7;
        temp_r1->unkC = 0xAU;
        return;
    }
}

void sub_807FB7C(u8 arg0) {
    Player *temp_r6;
    s32 var_r1;
    s32 var_r1_2;
    u16 temp_r5;
    u8 temp_r3;
    void (*var_r4)(Player *);

    temp_r3 = arg0;
    temp_r6 = &gPlayers[(u32) gPlayers[PLAYER_1].charFlags.partnerIndex];
    if (gPlayers->moveState & 0x100) {
        return;
    }
    temp_r5 = temp_r6->moveState & 0x100;
    if (temp_r5 != 0) {
        return;
    }
    switch (temp_r3) {                              /* irregular */
    case 0x1E:
        temp_r6->unk2A = (u8) ((-0x10 & temp_r6->unk2A) | 2);
        return;
        return;
    case 0x14:
        gStageData.unk4 = 3;
        gPlayers->moveState &= 0xF7FFFFFF;
        temp_r6->moveState &= 0xF7FFFFFF;
block_59:
        gPlayers->keyInput = temp_r5;
        gPlayers->keyInput2 = temp_r5;
        temp_r6->keyInput = temp_r5;
        temp_r6->keyInput2 = temp_r5;
        return;
    case 0xC8:
        temp_r6->qSpeedAirX = (s16) temp_r5;
        temp_r6->qSpeedAirY = (s16) temp_r5;
        SetPlayerCallback(temp_r6, sub_808183C);
        sub_808183C(temp_r6);
        return;
    case 0x96:
        sub_807C5D0();
        if (gPlayers->callback == PlayerCB_80819BC) {
            Player_8005380(gPlayers);
            return;
        }
        return;
    case 0x64:
        SetPlayerCallback(gPlayers, sub_8081810);
        return;
    case 0xA0:
        if (gPlayers->moveState & 0xC00000) {
            sub_8016F28(gPlayers);
            gPlayers->unk2C = (u8) (-5 & gPlayers->unk2C);
        }
        if (temp_r6->moveState & 0xC00000) {
            sub_8016F28(temp_r6);
            temp_r6->unk2C = (u8) (-5 & temp_r6->unk2C);
            Player_8005380(temp_r6);
            return;
        }
        break;
    case 0xDC:
        var_r4 = sub_808186C;
block_71:
        SetPlayerCallback(gPlayers, var_r4);
        SetPlayerCallback(temp_r6, var_r4);
        return;
    case 0xD2:
        gPlayers->moveState |= 1;
        var_r4 = sub_8081840;
        goto block_71;
    case 0xFA:
        SetPlayerCallback(gPlayers, Player_8005380);
        SetPlayerCallback(temp_r6, Player_8005380);
        break;
    case 0x0:
        var_r1 = 0x08000000;
        gPlayers->moveState |= 0x08000000;
block_44:
        temp_r6->moveState |= var_r1;
        return;
    case 0x1:
        gStageData.rings = temp_r5;
        gPlayers->moveState &= ~1;
        temp_r6->moveState = temp_r6->moveState & ~1 & ~0x100;
        temp_r6->moveState2 &= ~0x100;
        gPlayers->qSpeedGround = (s16) temp_r5;
        gPlayers->qSpeedAirX = (s16) temp_r5;
        gPlayers->qSpeedAirY = (s16) temp_r5;
        gPlayers->framesInvulnerable = (s16) temp_r5;
        Player_8005380(gPlayers);
        gPlayers->qWorldX = 0x67800;
        gPlayers->qWorldY = 0xB300;
        temp_r6->qSpeedGround = (s16) temp_r5;
        temp_r6->qSpeedAirX = (s16) temp_r5;
        temp_r6->qSpeedAirY = (s16) temp_r5;
        temp_r6->framesInvulnerable = (s16) temp_r5;
        Player_8005380(temp_r6);
        temp_r6->qWorldX = 0x65800;
        temp_r6->qWorldY = 0xB300;
        var_r1 = 0x20;
        gPlayers->moveState |= 0x20;
        goto block_44;
    case 0x2:
        var_r1_2 = 0xF7FFFFFF;
        gPlayers->moveState &= 0xF7FFFFFF;
block_57:
        temp_r6->moveState &= var_r1_2;
        return;
    case 0xA:
        gStageData.unk4 = 9;
        goto block_59;
    case 0xB:
        if (gPlayers->moveState & 0xC00000) {
            sub_8016F28(gPlayers);
            gPlayers->unk2C = (u8) (-5 & gPlayers->unk2C);
        }
        if (temp_r6->moveState & 0xC00000) {
            sub_8016F28(temp_r6);
            temp_r6->unk2C = (u8) (-5 & temp_r6->unk2C);
        }
        if (!(gPlayers->moveState & 0x100)) {
            Player_8005380(gPlayers);
        }
        if (!(temp_r6->moveState & 0x100) || ((0x1C & gPlayers->unk2B) == 8)) {
            Player_8005380(temp_r6);
        }
        var_r1_2 = -0x21;
        gPlayers->moveState &= ~0x20;
        goto block_57;
    }
}

void Task_ExtraChaosEmeraldsInit(void) {
    Player *temp_r4;
    u16 temp_r0;
    u16 temp_r0_2;
    u16 temp_r1;
    u16 temp_r1_2;
    u16 temp_r5;

    temp_r5 = gCurTask->data;
    temp_r4 = &gPlayers[(u32) gPlayers[PLAYER_1].charFlags.partnerIndex];
    temp_r5->unk16 = 0;
    temp_r5->unk14 = 0;
    *((temp_r5->unk0 * 4) + &gUnknown_08E2ED48)(temp_r5);
    temp_r1 = gPlayers->keyInput;
    temp_r0 = temp_r5->unk14;
    gPlayers->keyInput = temp_r0;
    gPlayers->keyInput2 = (temp_r1 ^ temp_r0) & temp_r0;
    temp_r1_2 = temp_r4->keyInput;
    temp_r0_2 = temp_r5->unk16;
    temp_r4->keyInput = temp_r0_2;
    temp_r4->keyInput2 = (temp_r1_2 ^ temp_r0_2) & temp_r0_2;
    sub_8080548(temp_r5);
}

void sub_807FEB4(void *arg0) {
    Player *temp_r2;
    s32 temp_r2_2;
    u16 temp_r0;
    u16 temp_r0_2;
    u16 temp_r0_3;
    u16 temp_r0_4;
    u16 temp_r1;
    u16 temp_r2_3;
    u16 var_r0;

    temp_r2 = &gPlayers[(u32) gPlayers[PLAYER_1].charFlags.partnerIndex];
    temp_r1 = arg0->unk12;
    switch (temp_r1) {                              /* irregular */
        return;
    case 0x82:
        if (((s32) ((s32) gPlayers->qWorldY >> 8) > 0xB0) && ((s32) gPlayers->qSpeedAirY > 0)) {
            gPlayers->qSpeedGround = 0;
            gPlayers->qSpeedAirX = 0;
            gPlayers->qSpeedAirY = 0;
            Player_8005380(gPlayers);
            var_r0 = 0xC8;
block_45:
            arg0->unk12 = var_r0;
        }
        return;
    case 0x14A:
        arg0->unk14 = (u16) (0x10 | arg0->unk14 | gStageData.buttonConfig.jump);
        if ((s32) ((s32) gPlayers->qWorldX >> 8) > 0x90F) {
            gPlayers->qSpeedAirX = 0 - gPlayers->qSpeedAirX;
            gPlayers->qSpeedAirY = 0;
            sub_80044CC(gPlayers);
            var_r0 = 0x82;
            goto block_45;
        }
        break;
    case 0x0:
        arg0->unk10 = 0x172;
        var_r0 = 0xA;
        goto block_45;
    case 0xA:
        temp_r0 = arg0->unk10 - 1;
        arg0->unk10 = temp_r0;
        if ((temp_r0 << 0x10) != 0) {
            return;
        }
        arg0->unk10 = 0xB4;
        var_r0 = 0x64;
        goto block_45;
    case 0x64:
        arg0->unk14 = (u16) (arg0->unk14 | 0x10);
        if ((s32) (s16) arg0->unk10 <= 0x95) {
            arg0->unk16 = (u16) (arg0->unk16 | 0x10);
        }
        temp_r0_2 = arg0->unk10 - 1;
        arg0->unk10 = temp_r0_2;
        if ((temp_r0_2 << 0x10) != 0) {
            return;
        }
        var_r0 = 0x12C;
        goto block_45;
    case 0x12C:
        temp_r2_2 = (s32) gPlayers->qWorldX >> 8;
        if (temp_r2_2 > 0x898) {
            arg0->unk14 = (u16) (0x20 | arg0->unk14);
        }
        if ((temp_r2_2 > 0x8CB) && (gPlayers->moveState & 1)) {
            arg0->unk10 = 0x3CU;
            gPlayers->qSpeedGround = 0;
            gPlayers->qSpeedAirX = 0;
            gPlayers->qSpeedAirY = 0;
            Player_8005380(gPlayers);
            arg0->unk12 = 0x136;
            return;
        }
        break;
    case 0x136:
        temp_r0_3 = arg0->unk10 - 1;
        arg0->unk10 = temp_r0_3;
        if ((temp_r0_3 << 0x10) == 0) {
            arg0->unk10 = 0x14;
            arg0->unk12 = 0x140;
        }
        if (((s32) ((s32) temp_r2->qWorldX >> 8) > 0x897) && (temp_r2->qSpeedAirX != 0)) {
            temp_r2->qSpeedGround = 0;
            temp_r2->qSpeedAirX = 0;
            temp_r2->qSpeedAirY = 0;
            Player_8005380(temp_r2);
            return;
        }
        break;
    case 0x140:
        temp_r2_3 = 0x10 | arg0->unk14;
        arg0->unk14 = temp_r2_3;
        temp_r0_4 = arg0->unk10 - 1;
        arg0->unk10 = temp_r0_4;
        if ((temp_r0_4 << 0x10) == 0) {
            gPlayers->unkC |= 0x40;
            arg0->unk14 = (u16) (temp_r2_3 | gStageData.buttonConfig.jump);
            var_r0 = 0x14A;
            goto block_45;
        }
        break;
    }
}

void sub_808007C(void *arg0) {
    s16 temp_r1_3;
    s16 temp_r1_4;
    s16 temp_r2;
    s32 temp_r0_6;
    s32 temp_r1_2;
    u16 temp_r0;
    u16 temp_r0_10;
    u16 temp_r0_11;
    u16 temp_r0_12;
    u16 temp_r0_13;
    u16 temp_r0_14;
    u16 temp_r0_15;
    u16 temp_r0_16;
    u16 temp_r0_17;
    u16 temp_r0_18;
    u16 temp_r0_19;
    u16 temp_r0_2;
    u16 temp_r0_3;
    u16 temp_r0_4;
    u16 temp_r0_5;
    u16 temp_r0_7;
    u16 temp_r0_8;
    u16 temp_r0_9;
    u16 temp_r1;
    u16 var_r0;

    gStageData.unk4 = 9;
    temp_r1 = arg0->unk12;
    switch (temp_r1) {                              /* irregular */
    case 0xBE:
        temp_r0 = arg0->unk10 - 1;
        arg0->unk10 = temp_r0;
        temp_r2 = (s16) temp_r0;
        if (temp_r2 != 0) {
            return;
        }
        gBldRegs.bldCnt = 0x3FBF;
        gBldRegs.bldAlpha = 8;
        gBldRegs.bldY = (u16) temp_r2;
        arg0->unk10 = 1;
        var_r0 = 0xC8;
block_123:
        arg0->unk12 = var_r0;
        return;
    case 0x82:
        if ((s32) ((s32) gPlayers->qWorldX >> 8) > 0x803) {
            return;
        }
        gPlayers->moveState &= ~1;
        gPlayers->qSpeedGround = 0;
        gPlayers->qSpeedAirX = 0;
        gPlayers->qSpeedAirY = 0;
        gPlayers->framesInvulnerable = 0;
        Player_8005380(gPlayers);
        var_r0 = 0x8C;
        goto block_123;
    case 0x78:
        temp_r0_2 = arg0->unk10 - 1;
        arg0->unk10 = temp_r0_2;
        if ((temp_r0_2 << 0x10) != 0) {
            return;
        }
        SetPlayerCallback(gPlayers, Player_8008CD0);
        m4aSongNumStart(0x29AU);
        arg0->unkC = 0xA;
        var_r0 = 0x82;
        goto block_123;
    case 0xAB:
        temp_r0_3 = arg0->unk10 - 1;
        arg0->unk10 = temp_r0_3;
        if ((temp_r0_3 << 0x10) != 0) {
            return;
        }
        gPlayers->qSpeedAirY = -0x80;
        var_r0 = 0xAC;
        goto block_123;
    case 0x8C:
        if (gBldRegs.bldY != 0x10) {
            return;
        }
        arg0->unk14 = (u16) (0x80 | arg0->unk14);
        arg0->unk10 = 0x1A4;
        var_r0 = 0x1F4;
        goto block_123;
    case 0xAA:
        temp_r0_4 = arg0->unk10 - 1;
        arg0->unk10 = temp_r0_4;
        if ((temp_r0_4 << 0x10) != 0) {
            return;
        }
        gPlayers->charFlags.anim0 = 0x127;
        arg0->unk10 = 0x1EU;
        var_r0 = 0xAB;
        goto block_123;
    case 0xAC:
        temp_r1_2 = gPlayers->qWorldY + gPlayers->qSpeedAirY;
        gPlayers->qWorldY = temp_r1_2;
        if ((s32) (temp_r1_2 >> 8) > (s32) (gCamera.y + 0x64)) {
            return;
        }
        arg0->unk10 = 1;
        var_r0 = 0xB4;
        goto block_123;
    case 0xB4:
        temp_r0_5 = arg0->unk10 - 1;
        arg0->unk10 = temp_r0_5;
        if ((temp_r0_5 << 0x10) != 0) {
            return;
        }
        gPlayers->charFlags.anim0 = 0x128;
        arg0->unk10 = 0x78;
        var_r0 = 0xBE;
        goto block_123;
    case 0xFA:
        gPlayers->qSpeedAirY = (u16) gPlayers->qSpeedAirY - 0x2A;
        temp_r0_6 = gPlayers->qWorldY + gPlayers->qSpeedAirY;
        gPlayers->qWorldY = temp_r0_6;
        if ((s32) (temp_r0_6 >> 8) < -0x10) {
            var_r0 = 0x12C;
            goto block_123;
        }
        break;
    case 0xDC:
        temp_r0_7 = gBldRegs.bldY - 1;
        gBldRegs.bldY = temp_r0_7;
        temp_r0_8 = temp_r0_7;
        if (temp_r0_8 == 0) {
            gBldRegs.bldCnt = temp_r0_8;
            gBldRegs.bldAlpha = temp_r0_8;
            gBldRegs.bldY = temp_r0_8;
            arg0->unk10 = 0x78;
            var_r0 = 0x258;
            goto block_123;
        }
        break;
    case 0xC8:
        temp_r0_9 = arg0->unk10 - 1;
        arg0->unk10 = temp_r0_9;
        if ((temp_r0_9 << 0x10) != 0) {
            return;
        }
        arg0->unk10 = 4;
        temp_r0_10 = gBldRegs.bldY + 1;
        gBldRegs.bldY = temp_r0_10;
        if (temp_r0_10 == 0x10) {
            arg0->unk1 = 0;
            arg0->unkC = 0x3E8;
            arg0->unk10 = 0x3CU;
            var_r0 = 0xD2;
            goto block_123;
        }
        break;
    case 0xD2:
        temp_r0_11 = arg0->unk10 - 1;
        arg0->unk10 = temp_r0_11;
        if ((temp_r0_11 << 0x10) == 0) {
            gPlayers->charFlags.anim0 = 0x129;
            arg0->unk12 = 0xDCU;
            m4aSongNumStart(0x23FU);
            return;
        }
        break;
    case 0xE6:
        temp_r0_12 = arg0->unk10 - 1;
        arg0->unk10 = temp_r0_12;
        if ((temp_r0_12 << 0x10) == 0) {
            gPlayers->moveState &= ~1;
            gPlayers->charFlags.anim0 = 0x12A;
            arg0->unk10 = 0x1EU;
            var_r0 = 0xF0;
            goto block_123;
        }
        break;
    case 0xF0:
        temp_r0_13 = arg0->unk10 - 1;
        arg0->unk10 = temp_r0_13;
        temp_r1_3 = (s16) temp_r0_13;
        if (temp_r1_3 == 0) {
            gPlayers->charFlags.anim0 = 0x12B;
            gPlayers->qSpeedAirX = temp_r1_3;
            gPlayers->qSpeedAirY = -0x200;
            arg0->unk12 = 0xFAU;
            m4aSongNumStart(0x70U);
            return;
        }
        break;
    case 0x208:
        arg0->unk14 = (u16) (0x10 | arg0->unk14);
        if ((s32) ((s32) gPlayers->qWorldX >> 8) < (s32) (gCamera.x + 0x78)) {
            return;
        }
        sub_807FB7C(0x64U);
        gPlayers->qWorldX = (gCamera.x + 0x78) << 8;
        arg0->unk10 = 0x3CU;
        arg0->unk12 = 0x212;
        m4aSongNumStart(0x73U);
        return;
    case 0x1F4:
        temp_r0_14 = arg0->unk10 - 1;
        arg0->unk10 = temp_r0_14;
        if ((temp_r0_14 << 0x10) != 0) {
            return;
        }
        SetPlayerCallback(gPlayers, Player_8008CD0);
        arg0->unk10 = 0xB4;
        var_r0 = 0x1FE;
        goto block_123;
    case 0x1FE:
        temp_r0_15 = arg0->unk10 - 1;
        arg0->unk10 = temp_r0_15;
        temp_r1_4 = (s16) temp_r0_15;
        if (temp_r1_4 != 0) {
            return;
        }
        arg0->unk12 = 0x208;
        gPlayers->framesInvulnerable = temp_r1_4;
        return;
    case 0x258:
        temp_r0_16 = arg0->unk10 - 1;
        arg0->unk10 = temp_r0_16;
        if ((temp_r0_16 << 0x10) == 0) {
            gPlayers->moveState |= 1;
            arg0->unk10 = 0x78;
            var_r0 = 0xE6;
            goto block_123;
        }
        break;
    case 0x212:
        temp_r0_17 = arg0->unk10 - 1;
        arg0->unk10 = temp_r0_17;
        if ((temp_r0_17 << 0x10) != 0) {
            return;
        }
        gPlayers->charFlags.anim0 = 0x126;
        arg0->unk10 = 0x1E0;
        arg0->unk12 = 0xAAU;
        arg0->unkC = 0x64;
        m4aSongNumStart(0x3DU);
        return;
    case 0x0:
        arg0->unk10 = 0x181;
        var_r0 = 0xA;
        goto block_123;
    case 0xA:
        temp_r0_18 = arg0->unk10 - 1;
        arg0->unk10 = temp_r0_18;
        if ((temp_r0_18 << 0x10) != 0) {
            return;
        }
        arg0->unk10 = 0x87;
        var_r0 = 0x64;
        goto block_123;
    case 0x64:
        arg0->unk14 = (u16) (arg0->unk14 | 0x10);
        if ((s32) (s16) arg0->unk10 <= 0x45) {
            arg0->unk16 = (u16) (arg0->unk16 | 0x10);
        }
        temp_r0_19 = arg0->unk10 - 1;
        arg0->unk10 = temp_r0_19;
        if ((temp_r0_19 << 0x10) != 0) {
            return;
        }
        var_r0 = 0x6E;
        goto block_123;
    case 0x6E:
        if ((s32) ((s32) gPlayers->qWorldX >> 8) <= 0x85C) {
            return;
        }
        gPlayers->qSpeedGround = 0;
        gPlayers->qSpeedAirX = 0;
        gPlayers->qSpeedAirY = 0;
        Player_8005380(gPlayers);
        arg0->unk10 = 0xD6;
        arg0->unk12 = 0x78;
        sub_807FB7C(0xC8U);
        return;
    }
}

void InitChaosEmeraldSprites(void *arg0) {
    s32 temp_r1;
    s32 temp_r1_3;
    s32 var_r6;
    u8 var_r5;
    void *temp_r1_2;
    void *var_r2;

    var_r2 = arg0 + 0xA8;
    var_r6 = arg0->unk18;
    arg0->unk1 = 0;
    var_r5 = 0;
    do {
        temp_r1 = var_r5 * 0x14;
        *(arg0 + 0x1C + temp_r1) = 0;
        *(arg0 + 0x20 + temp_r1) = 0;
        *(arg0 + 0x24 + temp_r1) = 0;
        *(arg0 + 0x28 + temp_r1) = 0;
        temp_r1_2 = arg0 + temp_r1;
        temp_r1_2->unk2C = 1;
        temp_r1_2->unk2E = 0;
        var_r2->unk0 = var_r6;
        var_r2->unk14 = 0x280;
        temp_r1_3 = var_r5 * 6;
        var_r2->unkC = (u16) *(temp_r1_3 + &sBossExtraAnimsChaosEmeralds);
        var_r2->unk1A = (s8) *(temp_r1_3 + (&sBossExtraAnimsChaosEmeralds + 2));
        var_r2->unk16 = 0;
        var_r2->unk1B = 0xFF;
        var_r2->unk1C = 0x10;
        var_r2->unk1F = (s8) *(temp_r1_3 + (&sBossExtraAnimsChaosEmeralds + 4));
        var_r2->unk10 = 0;
        var_r2->unk12 = 0;
        var_r2->unk8 = 0x1000;
        var_r5 += 1;
        var_r2 += 0x28;
        var_r6 += 0x80;
    } while ((u32) var_r5 <= 6U);
}

void sub_8080548(void *arg0) {
    s32 *sp0;
    Sprite *var_r4_2;
    s16 var_r0_6;
    s32 *temp_r0_5;
    s32 *temp_r2;
    s32 *temp_r2_3;
    s32 *temp_r4;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 temp_r1_4;
    s32 temp_r2_2;
    s32 temp_r2_4;
    s32 temp_r3;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 var_r0_4;
    s32 var_r0_5;
    s32 var_r7;
    u16 temp_r0;
    u16 temp_r0_2;
    u16 var_r7_2;
    u8 var_r5;
    u8 var_r5_2;
    u8 var_r5_3;
    u8 var_r5_4;
    u8 var_r5_5;
    u8 var_r5_6;
    u8 var_r5_7;
    u8 var_r6;
    void *var_r4;

    temp_r0 = arg0->unkC;
    switch (temp_r0) {                              /* irregular */
    case 0x1E:
        temp_r0_2 = arg0->unkE - 1;
        arg0->unkE = temp_r0_2;
        if ((temp_r0_2 << 0x10) != 0) {

        } else {
            var_r5 = 0;
            do {
                var_r0 = *((var_r5 * 8) + &gUnknown_080D5CD8);
                if (var_r0 < 0) {
                    var_r0 += 7;
                }
                *(arg0 + 0x28 + (var_r5 * 0x14)) = var_r0 >> 3;
                var_r5 += 1;
            } while ((u32) var_r5 <= 6U);
            arg0->unkC = 0x28;
        }
        break;
    case 0x64:
        arg0->unk2 = 0;
        arg0->unk8 = 0x7800;
        arg0->unk4 = 0x1E000;
        arg0->unk24 = (s32) ((gCamera.x + 0x78) << 8);
        arg0->unk28 = (s32) ((gCamera.y + 0x68) << 8);
        var_r5_2 = 0;
        var_r7 = 0;
        do {
            var_r0_2 = gSineTable[var_r7 + 0x100] * arg0->unk4;
            if (var_r0_2 < 0) {
                var_r0_2 += 0x3FFF;
            }
            var_r0_3 = gSineTable[var_r7] * arg0->unk8;
            if (var_r0_3 < 0) {
                var_r0_3 += 0x3FFF;
            }
            temp_r1 = var_r5_2 * 0x14;
            sp0 = arg0 + 0x1C + temp_r1;
            *sp0 = (var_r0_2 >> 0xE) + arg0->unk24;
            *(temp_r1 + (arg0 + 0x20)) = (var_r0_3 >> 0xE) + arg0->unk28;
            var_r7 = (var_r7 + 0x92) & 0x3FF;
            var_r5_2 += 1;
        } while ((u32) var_r5_2 <= 6U);
        arg0->unk1 = 1;
        arg0->unkC = 0x6EU;
        break;
    case 0x28:
        var_r5_3 = 0;
        do {
            temp_r0_3 = var_r5_3 * 0x14;
            temp_r2 = arg0 + 0x20 + temp_r0_3;
            *temp_r2 += *(arg0 + 0x28 + temp_r0_3);
            var_r5_3 += 1;
        } while ((u32) var_r5_3 <= 6U);
        if (gBldRegs.bldY != 0x10) {

        } else {
            arg0->unk1 = 0;
            arg0->unkC = 0x3E8;
        }
        break;
    case 0x6E:
        arg0->unk2 = (u16) ((arg0->unk2 - 8) & 0x3FF);
        temp_r0_4 = arg0->unk8 - 0x40;
        arg0->unk8 = temp_r0_4;
        if ((s32) (temp_r0_4 >> 8) <= 8) {
            arg0->unk8 = 0x800;
        }
        arg0->unk4 = (s32) (arg0->unk8 * 4);
        var_r4 = arg0 + 0xA8;
        var_r5_4 = 0;
        var_r7_2 = arg0->unk2;
        do {
            var_r0_4 = gSineTable[var_r7_2 + 0x100] * arg0->unk4;
            if (var_r0_4 < 0) {
                var_r0_4 += 0x3FFF;
            }
            var_r0_5 = gSineTable[var_r7_2] * arg0->unk8;
            if (var_r0_5 < 0) {
                var_r0_5 += 0x3FFF;
            }
            temp_r1_2 = var_r5_4 * 0x14;
            sp0 = arg0 + 0x1C + temp_r1_2;
            *sp0 = (var_r0_4 >> 0xE) + arg0->unk24;
            *(temp_r1_2 + (arg0 + 0x20)) = (var_r0_5 >> 0xE) + arg0->unk28;
            if ((u32) var_r7_2 <= 0x1FFU) {
                var_r0_6 = 0x200;
            } else {
                var_r0_6 = 0x4C0;
            }
            var_r4->unk14 = var_r0_6;
            var_r7_2 = (var_r7_2 + 0x92) & 0x3FF;
            var_r5_4 += 1;
            var_r4 += 0x28;
        } while ((u32) var_r5_4 <= 6U);
        break;
    case 0xA:
        var_r5_5 = 0;
        do {
            temp_r2_2 = var_r5_5 * 0x14;
            *(arg0 + 0x1C + temp_r2_2) = (gCamera.x + 0x78) << 8;
            *(arg0 + 0x20 + temp_r2_2) = gPlayers->qWorldY;
            temp_r1_3 = var_r5_5 * 8;
            *(arg0 + 0x24 + temp_r2_2) = *(temp_r1_3 + &gUnknown_080D5CD4);
            *(temp_r2_2 + (arg0 + 0x28)) = *(temp_r1_3 + &gUnknown_080D5CD8);
            var_r5_5 += 1;
        } while ((u32) var_r5_5 <= 6U);
        arg0->unk1 = 1;
        arg0->unkC = 0x14;
        break;
    case 0x14:
        var_r5_6 = 0;
        var_r6 = 0;
        do {
            temp_r3 = var_r5_6 * 0x14;
            temp_r4 = arg0 + 0x20 + temp_r3;
            if ((s32) ((s32) *temp_r4 >> 8) > 0xBB) {
                *temp_r4 = 0xBC00;
                var_r6 += 1;
            } else {
                temp_r2_3 = arg0 + 0x1C + temp_r3;
                *temp_r2_3 += *(arg0 + 0x24 + temp_r3);
                temp_r0_5 = arg0 + 0x28 + temp_r3;
                temp_r1_4 = *temp_r0_5 + 0x2A;
                *temp_r0_5 = temp_r1_4;
                *temp_r4 += temp_r1_4;
            }
            var_r5_6 += 1;
        } while ((u32) var_r5_6 <= 6U);
        if (var_r6 != 7) {

        } else {
            arg0->unkE = 0xB4;
            arg0->unkC = 0x1EU;
        }
        break;
    }
    if (arg0->unk1 != 0) {
        var_r4_2 = arg0 + 0xA8;
        var_r5_7 = 0;
        do {
            temp_r2_4 = var_r5_7 * 0x14;
            var_r4_2->x = ((s32) *(arg0 + 0x1C + temp_r2_4) >> 8) - gCamera.x;
            var_r4_2->y = ((s32) *(temp_r2_4 + (arg0 + 0x20)) >> 8) - gCamera.y;
            UpdateSpriteAnimation(var_r4_2);
            DisplaySprite(var_r4_2);
            var_r5_7 += 1;
            var_r4_2 += 0x28;
        } while ((u32) var_r5_7 <= 6U);
    }
}

Task *CreateAltarEmeraldPostBossCutscene(u8 arg0) {
    Task *sp4;
    s32 sp8;
    s32 spC;
    s32 sp10;
    s32 *sp14;
    Task *temp_r0;
    s32 *temp_r1_3;
    s32 temp_r1_4;
    s32 temp_r2_2;
    s32 var_r3;
    u16 temp_r2;
    u8 var_r0;
    u8 var_r4;
    u8 var_r4_2;
    void *temp_r0_2;
    void *temp_r0_3;
    void *temp_r1;
    void *temp_r1_2;
    void *temp_r1_5;
    void *temp_r1_6;
    void *temp_r6;
    void *var_r0_2;

    temp_r0 = TaskCreate(Task_11C_8080AD4, 0x11CU, 0x2100U, 0U, TaskDestructor_AltarEmeraldPostBossCutscene);
    sp4 = temp_r0;
    temp_r2 = temp_r0->data;
    temp_r2->unk0 = arg0;
    temp_r2->unk4 = 1;
    temp_r2->unk6 = 0;
    temp_r2->unk2 = 0;
    temp_r2->unkC = NULL;
    temp_r2->unk10 = NULL;
    var_r4 = 0;
    temp_r1 = temp_r2 + 0x68;
    do {
        *(temp_r1 + (var_r4 * 0x38)) = 0;
        var_r4 += 1;
    } while ((u32) var_r4 <= 2U);
    var_r4_2 = 0;
    sp8 = temp_r2 + 0x1C;
    spC = temp_r2 + 0x20;
    temp_r6 = temp_r2 + 0xA0;
    temp_r1_2 = temp_r2 + 0xD8;
    do {
        if (var_r4_2 != 2) {
            var_r3 = var_r4_2 * 8;
            temp_r2_2 = var_r4_2 * 0x1C;
            temp_r1_3 = temp_r2 + 0x14 + temp_r2_2;
            sp14 = temp_r1_3;
            *temp_r1_3 = (gCamera.x + 0x78) << 8;
            *(temp_r2 + 0x18 + temp_r2_2) = (gCamera.y + 0xB4) << 8;
        } else {
            temp_r2->unk4C = (s32) ((gCamera.x + 0x8C) << 8);
            temp_r2->unk50 = (s32) ((gCamera.y + 0xD4) << 8);
            var_r3 = 0x10;
        }
        temp_r1_4 = (var_r3 - var_r4_2) * 4;
        *(sp8 + temp_r1_4) = 0;
        *(spC + temp_r1_4) = 0;
        *(temp_r2 + 0x24 + temp_r1_4) = 0;
        temp_r1_5 = temp_r2 + temp_r1_4;
        temp_r1_5->unk28 = 1;
        temp_r1_5->unk2A = 0;
        var_r0 = temp_r2->unk0;
        if (var_r0 != 0) {
            var_r0 = 0x3E8;
        }
        temp_r1_5->unk2C = (s16) var_r0;
        var_r4_2 += 1;
    } while ((u32) var_r4_2 <= 2U);
    if (temp_r2->unk0 == 0) {
        var_r0_2 = VramMalloc(0x74U);
    } else {
        var_r0_2 = NULL;
    }
    temp_r2->unk8 = var_r0_2;
    temp_r0_2 = VramMalloc(0x80U);
    temp_r2->unkC = temp_r0_2;
    temp_r2->unk68 = temp_r0_2;
    temp_r1->unk14 = 0x540;
    temp_r1->unkC = 0x4F8;
    temp_r1->unk1A = 4;
    temp_r1->unk16 = 0;
    temp_r1->unk1B = 0xFF;
    temp_r1->unk1C = 0x10;
    temp_r1->unk1F = 0;
    temp_r1->unk10 = 0;
    temp_r1->unk12 = 0;
    temp_r1->unk8 = 0x1000;
    temp_r2->unkA0 = (void *) (temp_r0_2 + 0x800);
    temp_r6->unk14 = 0x580;
    temp_r6->unkC = 0x4F7;
    temp_r6->unk1A = 0;
    temp_r6->unk16 = 0;
    temp_r6->unk1B = -1;
    temp_r6->unk1C = 0x10;
    temp_r6->unk1F = 9;
    temp_r6->unk10 = 0;
    temp_r6->unk12 = 0;
    temp_r6->unk8 = 0x1000;
    temp_r1_6 = temp_r2 + 0x110;
    temp_r2->unk110 = (u16) temp_r2->unk2;
    temp_r1_6->unk6 = (u16) temp_r6->unk10;
    temp_r1_6->unk8 = (u16) temp_r6->unk12;
    temp_r1_6->unk2 = 0x100;
    temp_r1_6->unk4 = 0x100;
    sp10 = 0;
    temp_r0_3 = VramMalloc(0x24U);
    temp_r2->unk10 = temp_r0_3;
    temp_r2->unkD8 = temp_r0_3;
    temp_r1_2->unk14 = 0x500;
    temp_r1_2->unkC = 0x50A;
    temp_r1_2->unk1A = 0;
    temp_r1_2->unk16 = 0;
    temp_r1_2->unk1B = -1;
    temp_r1_2->unk1C = 0x10;
    temp_r1_2->unk1F = 0;
    temp_r1_2->unk10 = 0;
    temp_r1_2->unk12 = 0;
    temp_r1_2->unk8 = 0x1000;
    return sp4;
}

void Task_11C_8080AD4(void) {
    Sprite *temp_r4;
    SpriteTransform *temp_r7;
    s32 temp_r2_2;
    u16 temp_r1;
    u16 temp_r2;
    u8 var_r6;

    temp_r2 = gCurTask->data;
    temp_r7 = temp_r2 + 0x110;
    temp_r1 = temp_r2->unk2C;
    if (((temp_r1 == 0xC8) && (temp_r2->unk64 == 0xC8)) || ((temp_r1 == 0x7D0) && (temp_r2->unk64 == temp_r1))) {
        TaskDestroy(gCurTask);
        return;
    }
    sub_8080BD0(temp_r2);
    sub_80811E0(temp_r2);
    var_r6 = 0;
loop_6:
    temp_r4 = temp_r2 + ((var_r6 * 0x38) + 0x68);
    temp_r2_2 = var_r6 * 0x1C;
    temp_r4->x = ((s32) *(temp_r2 + 0x14 + temp_r2_2) >> 8) - gCamera.x;
    temp_r4->y = ((s32) *(temp_r2_2 + (temp_r2 + 0x18)) >> 8) - gCamera.y;
    if (temp_r4->frameFlags & 0x20) {
        temp_r2->unk110 = (u16) temp_r2->unk2;
        temp_r7->x = temp_r4->x;
        temp_r7->y = temp_r4->y;
        TransformSprite(temp_r4, temp_r7);
        UpdateSpriteAnimation(temp_r4);
        DisplaySprite(temp_r4);
    } else {
        UpdateSpriteAnimation(temp_r4);
        DisplaySprite(temp_r4);
    }
    var_r6 += 1;
    if (((u32) var_r6 <= 2U) && ((var_r6 != 2) || (temp_r2->unk10 != 0))) {
        goto loop_6;
    }
}

void sub_8080BD0(void *arg0) {
    s16 temp_r0_5;
    s16 temp_r0_9;
    s16 temp_r1_2;
    s16 temp_r1_6;
    s16 var_r0_3;
    s32 temp_r0;
    s32 temp_r0_11;
    s32 temp_r0_12;
    s32 temp_r0_14;
    s32 temp_r0_15;
    s32 temp_r0_16;
    s32 temp_r0_22;
    s32 temp_r0_3;
    s32 temp_r0_7;
    s32 temp_r1_3;
    s32 temp_r1_4;
    s32 temp_r1_5;
    s32 temp_r1_7;
    s32 temp_r3_2;
    u16 temp_r0_10;
    u16 temp_r0_13;
    u16 temp_r0_17;
    u16 temp_r0_18;
    u16 temp_r0_19;
    u16 temp_r0_20;
    u16 temp_r0_21;
    u16 temp_r0_2;
    u16 temp_r0_4;
    u16 temp_r0_6;
    u16 temp_r0_8;
    u16 temp_r1;
    u16 temp_r1_8;
    u16 var_r0;
    u16 var_r0_2;
    u16 var_r0_4;
    u16 var_r2;
    void *temp_r3;
    void *temp_r5;
    void *temp_r7;

    temp_r5 = arg0 + 0x14;
    temp_r7 = arg0 + 0x68;
    temp_r3 = arg0 + 0xA0;
    temp_r1 = temp_r5->unk18;
    if (temp_r1 == 0x41A) {
        temp_r0 = arg0->unk14 + temp_r5->unk8;
        arg0->unk14 = temp_r0;
        if ((s32) (temp_r0 >> 8) > 0x8BB) {

        } else {
            var_r0 = 0x424;
            goto block_148;
        }
    } else if ((s32) temp_r1 <= 0x41A) {
        switch (temp_r1) {                          /* switch 1; irregular */
        case 50:                                    /* switch 1 */
            arg0->unk14 = (s32) (temp_r5->unk8 + (*((temp_r5->unk16 * 4) + &gUnknown_080D5C80) << 8));
            temp_r5->unk4 = (s32) (temp_r5->unkC + (*((temp_r5->unk16 * 4) + (&gUnknown_080D5C80 + 2)) << 8));
            temp_r5->unk16 = (u16) ((temp_r5->unk16 + 1) & 7);
            temp_r0_2 = temp_r5->unk14 - 1;
            temp_r5->unk14 = temp_r0_2;
            if ((temp_r0_2 << 0x10) != 0) {

            } else {
                temp_r5->unkC = 0x80;
                temp_r5->unk18 = 0x64;
                m4aSongNumStart(0x221U);
            }
            break;
        case 20:                                    /* switch 1 */
            temp_r0_3 = temp_r5->unk4 + temp_r5->unkC;
            temp_r5->unk4 = temp_r0_3;
            if ((s32) (temp_r0_3 >> 8) > 0x6E) {

            } else {
                temp_r5->unk14 = 0x28;
                var_r0 = 0x1E;
                goto block_148;
            }
            break;
        case 0:                                     /* switch 1 */
            temp_r5->unk14 = 0x4BU;
            var_r0 = 0xA;
            goto block_148;
        case 10:                                    /* switch 1 */
            temp_r0_4 = temp_r5->unk14 - 1;
            temp_r5->unk14 = temp_r0_4;
            temp_r0_5 = (s16) temp_r0_4;
            if (temp_r0_5 != 0) {

            } else {
                temp_r5->unk8 = (s32) temp_r0_5;
                temp_r5->unkC = -0x100;
                var_r0 = 0x14;
                goto block_148;
            }
            break;
        case 30:                                    /* switch 1 */
            temp_r0_6 = temp_r5->unk14 - 1;
            temp_r5->unk14 = temp_r0_6;
            temp_r1_2 = (s16) temp_r0_6;
            if (temp_r1_2 != 0) {

            } else {
                temp_r5->unk8 = 0x180;
                temp_r5->unkC = (s32) temp_r1_2;
                var_r0_2 = 0x28;
block_114:
                temp_r5->unk18 = var_r0_2;
                temp_r7->unkC = 0x4F8;
                temp_r7->unk1A = 8;
                temp_r7->unk1B = 0xFF;
                temp_r7->unk8 = (s32) (temp_r7->unk8 | 0x400);
                temp_r3->unk8 = (s32) (temp_r3->unk8 | 0x400);
                m4aSongNumStart(0x27EU);
            }
            break;
        case 40:                                    /* switch 1 */
            temp_r0_7 = arg0->unk14 + temp_r5->unk8;
            arg0->unk14 = temp_r0_7;
            temp_r1_3 = temp_r0_7 >> 8;
            if (temp_r1_3 > 0x923) {
                temp_r5->unk16 = 0;
                temp_r5->unk14 = 0x20;
                temp_r5->unk8 = (s32) arg0->unk14;
                temp_r5->unkC = (s32) temp_r5->unk4;
                temp_r5->unk18 = 0x32;
                m4aSongNumStart(0x27CU);
            } else if (temp_r1_3 <= 0x833) {

            } else {
                temp_r5->unk8 = 0x180;
            }
            break;
        default:                                    /* switch 1 */
            var_r2 = 0x3F2;
            switch (temp_r1) {                      /* switch 2; irregular */
            case 0x3F2:                             /* switch 2 */
                temp_r0_8 = temp_r5->unk14 - 1;
                temp_r5->unk14 = temp_r0_8;
                temp_r0_9 = (s16) temp_r0_8;
                if (temp_r0_9 != 0) {

                } else {
                    temp_r5->unk8 = (s32) temp_r0_9;
                    temp_r5->unkC = -0x100;
                    var_r0 = 0x3FC;
                    goto block_148;
                }
                break;
            case 0x64:                              /* switch 2 */
                temp_r5->unk16 = (u16) ((temp_r5->unk16 + 8) & 0x1FF);
                var_r0_3 = gSineTable[temp_r5->unk16];
                if ((s32) var_r0_3 < 0) {
                    var_r0_3 += 0x3F;
                }
                arg0->unk14 = (s32) (arg0->unk14 + (var_r0_3 >> 6));
                temp_r1_4 = temp_r5->unk4 + temp_r5->unkC;
                temp_r5->unk4 = temp_r1_4;
                temp_r0_10 = temp_r5->unk14 + 1;
                temp_r5->unk14 = temp_r0_10;
                if ((s32) (s16) temp_r0_10 > 9) {
                    if (!(gStageData.timer & 3)) {
                        temp_r0_11 = (0x196225 * gPseudoRandom) + 0x3C6EF35F;
                        temp_r1_5 = 0x3FF & temp_r0_11;
                        temp_r0_12 = (0x196225 * temp_r0_11) + 0x3C6EF35F;
                        gPseudoRandom = temp_r0_12;
                        temp_r3_2 = 0xF & temp_r0_12;
                        sub_8086D64((s32) ((arg0->unk14 + ((u32) (temp_r3_2 * gSineTable[temp_r1_5 + 0x100]) >> 6)) << 8) >> 0x10, (s32) ((((u32) (temp_r3_2 * gSineTable[temp_r1_5]) >> 6) + temp_r1_4) << 8) >> 0x10, 0x100, 0x200, 0x1E, arg0->unk8);
                    }
                    if (((s32) ((s32) arg0->unk14 >> 8) <= 0x996) && !(0x3F & temp_r5->unk14)) {
                        m4aSongNumStart(0x221U);
                    }
                }
                if ((s16) temp_r5->unk14 == 0xA) {
                    temp_r7->unkC = 0x4F8;
                    temp_r7->unk1A = 4;
                    temp_r7->unk1B = 0xFF;
                }
                if ((s32) ((s32) temp_r5->unk4 >> 8) <= 0xF9) {

                } else {
                    var_r0 = 0xC8;
                    goto block_148;
                }
                break;
            case 0x3E8:                             /* switch 2 */
                var_r0_4 = 0x4B;
                goto block_141;
            default:                                /* switch 2 */
                var_r2 = 0x406;
                switch (temp_r1) {                  /* switch 3; irregular */
                case 0x406:                         /* switch 3 */
                    temp_r0_13 = temp_r5->unk14 - 1;
                    temp_r5->unk14 = temp_r0_13;
                    temp_r1_6 = (s16) temp_r0_13;
                    if (temp_r1_6 != 0) {

                    } else {
                        temp_r5->unk8 = 0x180;
                        temp_r5->unkC = (s32) temp_r1_6;
                        var_r0_2 = 0x410;
                        goto block_114;
                    }
                    break;
                case 0x3FC:                         /* switch 3 */
                    temp_r0_14 = temp_r5->unk4 + temp_r5->unkC;
                    temp_r5->unk4 = temp_r0_14;
                    if ((s32) (temp_r0_14 >> 8) > 0x6E) {

                    } else {
                        var_r0_4 = 0x28;
                        goto block_141;
                    }
                    break;
                case 0x410:                         /* switch 3 */
                    temp_r0_15 = arg0->unk14 + temp_r5->unk8;
                    arg0->unk14 = temp_r0_15;
                    if ((s32) (temp_r0_15 >> 8) > 0x8FB) {
                        temp_r5->unk8 = -0x100;
                        temp_r7->unkC = 0x4F8;
                        temp_r7->unk1A = 0;
                        temp_r7->unk1B = 0xFF;
                        temp_r7->unk8 = (s32) (temp_r7->unk8 & 0xFFFFFBFF);
                        temp_r3->unk8 = (s32) (temp_r3->unk8 & 0xFFFFFBFF);
                        temp_r5->unk18 = 0x41AU;
                    } else if ((s32) ((s32) arg0->unk14 >> 8) <= 0x7CF) {

                    } else {
                        temp_r5->unk8 = 0x280;
                    }
                    break;
                }
                break;
            }
            break;
        }
    } else {
        switch (temp_r1) {                          /* switch 4; irregular */
        case 0x46A:                                 /* switch 4 */
            temp_r5->unk14 = 0x4E2;
            var_r0 = 0x474;
block_148:
            temp_r5->unk18 = var_r0;
            break;
        case 0x438:                                 /* switch 4 */
            temp_r7->unkC = 0x4F8;
            temp_r7->unk1A = 0xC;
            temp_r7->unk1B = 0xFF;
            temp_r7->unk14 = 0x280;
            temp_r3->unkC = 0x4F7;
            temp_r3->unk1A = 5;
            temp_r3->unk1B = -1;
            temp_r3->unk14 = 0x2C0;
            temp_r7->unk8 = (s32) (temp_r7->unk8 | 0x3E);
            temp_r3->unk8 = (s32) (temp_r3->unk8 | 0x3F);
            arg0->unk2 = 0x380;
            var_r0 = 0x424;
            goto block_148;
        case 0x42E:                                 /* switch 4 */
            temp_r7->unkC = 0x4F8;
            temp_r7->unk1A = 8;
            temp_r7->unk1B = 0xFF;
            temp_r5->unk18 = 0x424;
            break;
        case 0x456:                                 /* switch 4 */
            arg0->unk14 = (s32) (arg0->unk14 + temp_r5->unk8);
            temp_r1_7 = temp_r5->unk4 + temp_r5->unkC;
            temp_r5->unk4 = temp_r1_7;
            if ((s32) (temp_r1_7 >> 8) < (s32) (gCamera.y + 0x79)) {

            } else {
                CreateScreenShake(0x800U, 0x40U, 0U, -1U, 0x91U);
                m4aSongNumStart(0x27CU);
                temp_r5->unkC = -0x400;
                var_r0 = 0x460;
                goto block_148;
            }
            break;
        case 0x44C:                                 /* switch 4 */
            temp_r5->unk8 = 0;
            temp_r5->unkC = 0x800;
            temp_r5->unk18 = 0x456;
            break;
        case 0x460:                                 /* switch 4 */
            temp_r0_16 = temp_r5->unkC + 0x2A;
            temp_r5->unkC = temp_r0_16;
            temp_r5->unk4 = (s32) (temp_r5->unk4 + temp_r0_16);
            temp_r1_8 = arg0->unk2;
            if (temp_r1_8 != 0x300) {
                arg0->unk2 = (u16) (temp_r1_8 - 8);
            }
            if (((s32) ((s32) temp_r5->unk4 >> 8) >= (s32) (gCamera.y + 0x79)) && ((s32) temp_r5->unkC > 0)) {
                temp_r5->unkC = 0;
                temp_r5->unk18 = 0x46AU;
            }
            break;
        default:                                    /* switch 4 */
            var_r2 = 0x488;
            switch (temp_r1) {                      /* switch 5; irregular */
            case 0x488:                             /* switch 5 */
                temp_r0_17 = temp_r5->unk14 - 1;
                temp_r5->unk14 = temp_r0_17;
                if ((temp_r0_17 << 0x10) == 0) {
                    var_r0 = 0x492;
                    goto block_148;
                }
                break;
            case 0x474:                             /* switch 5 */
                temp_r0_18 = temp_r5->unk14 - 1;
                temp_r5->unk14 = temp_r0_18;
                if ((temp_r0_18 << 0x10) == 0) {
                    var_r0 = 0x492;
                    goto block_148;
                }
                break;
            case 0x47E:                             /* switch 5 */
                temp_r0_19 = temp_r5->unk14 - 1;
                temp_r5->unk14 = temp_r0_19;
                if ((temp_r0_19 << 0x10) == 0) {
                    var_r0_4 = 0x12C;
block_141:
                    temp_r5->unk14 = var_r0_4;
                    temp_r5->unk18 = var_r2;
                }
                break;
            default:                                /* switch 5 */
                var_r2 = 0x49C;
                switch (temp_r1) {                  /* switch 6; irregular */
                case 0x49C:                         /* switch 6 */
                    temp_r0_20 = temp_r5->unk14 - 1;
                    temp_r5->unk14 = temp_r0_20;
                    if ((temp_r0_20 << 0x10) == 0) {
                        temp_r5->unk8 = 0x400;
                        temp_r5->unkC = -0x400;
                        temp_r5->unk18 = 0x4A6;
                        m4aSongNumStart(0x70U);
                    }
                    break;
                case 0x492:                         /* switch 6 */
                    temp_r0_21 = (arg0->unk2 + 8) & 0x3FF;
                    arg0->unk2 = temp_r0_21;
                    if (temp_r0_21 == 0) {
                        var_r0_4 = 0xB4;
                        goto block_141;
                    }
                    break;
                case 0x4A6:                         /* switch 6 */
                    arg0->unk14 = (s32) (arg0->unk14 + temp_r5->unk8);
                    temp_r0_22 = temp_r5->unk4 + temp_r5->unkC;
                    temp_r5->unk4 = temp_r0_22;
                    if (temp_r0_22 < 0) {
                        var_r0 = 0x7D0;
                        goto block_148;
                    }
                    break;
                }
                break;
            }
            break;
        }
    }
    arg0->unk30 = (s32) arg0->unk14;
    (arg0 + 0x30)->unk4 = (s32) temp_r5->unk4;
}

void sub_80811E0(void *arg0) {
    s16 temp_r0_22;
    s16 temp_r0_2;
    s16 temp_r1_2;
    s16 temp_r1_5;
    s16 var_r0_2;
    s32 temp_r0_10;
    s32 temp_r0_12;
    s32 temp_r0_13;
    s32 temp_r0_15;
    s32 temp_r0_19;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 temp_r0_6;
    s32 temp_r0_8;
    s32 temp_r1_4;
    u16 temp_r0;
    u16 temp_r0_11;
    u16 temp_r0_14;
    u16 temp_r0_16;
    u16 temp_r0_17;
    u16 temp_r0_18;
    u16 temp_r0_20;
    u16 temp_r0_21;
    u16 temp_r0_5;
    u16 temp_r0_7;
    u16 temp_r0_9;
    u16 temp_r1;
    u16 temp_r1_3;
    u16 var_r0;
    void *temp_r3;
    void *temp_r4;

    temp_r4 = arg0 + 0x4C;
    temp_r3 = arg0 + 0xD8;
    temp_r1 = temp_r4->unk18;
    switch (temp_r1) {                              /* irregular */
    case 0x3F2:
        temp_r0 = temp_r4->unk14 - 1;
        temp_r4->unk14 = temp_r0;
        temp_r0_2 = (s16) temp_r0;
        if (temp_r0_2 != 0) {
            return;
        }
        temp_r4->unk8 = (s32) temp_r0_2;
        temp_r4->unkC = 0xFFFFFF00;
        var_r0 = 0x3FC;
block_136:
        temp_r4->unk18 = var_r0;
        return;
    case 0x32:
        temp_r0_3 = arg0->unk4C + temp_r4->unk8;
        arg0->unk4C = temp_r0_3;
        if ((s32) (temp_r0_3 >> 8) <= 0x8F2) {
            return;
        }
        temp_r4->unk8 = 0;
        temp_r4->unkC = 0x80;
        var_r0 = 0x3C;
        temp_r4->unk14 = 0x3CU;
        goto block_136;
    case 0x14:
        temp_r0_4 = temp_r4->unk4 + temp_r4->unkC;
        temp_r4->unk4 = temp_r0_4;
        if ((s32) (temp_r0_4 >> 8) > 0x8E) {
            return;
        }
        temp_r4->unk14 = 0x28;
        var_r0 = 0x1E;
        goto block_136;
    case 0x1E:
        temp_r0_5 = temp_r4->unk14 - 1;
        temp_r4->unk14 = temp_r0_5;
        temp_r1_2 = (s16) temp_r0_5;
        if (temp_r1_2 != 0) {
            return;
        }
        temp_r4->unk8 = 0x180;
        temp_r4->unkC = (s32) temp_r1_2;
        temp_r4->unk18 = 0x28;
block_108:
        temp_r3->unkC = 0x50A;
        temp_r3->unk1A = 0;
        temp_r3->unk1B = 0xFF;
        temp_r3->unk8 = (s32) (temp_r3->unk8 | 0x400);
        return;
    case 0x28:
        temp_r0_6 = arg0->unk4C + temp_r4->unk8;
        arg0->unk4C = temp_r0_6;
        if ((s32) (temp_r0_6 >> 8) <= 0x819) {
            return;
        }
        temp_r4->unk8 = 0x100;
        var_r0 = 0x32;
        goto block_136;
    case 0x50:
        temp_r0_7 = temp_r4->unk14 - 1;
        temp_r4->unk14 = temp_r0_7;
        if ((temp_r0_7 << 0x10) != 0) {
            return;
        }
        temp_r4->unk14 = 0x96;
        temp_r4->unk18 = 0x5AU;
        temp_r3->unkC = 0x50B;
        temp_r3->unk1A = 2;
        temp_r3->unk1B = 0xFF;
        temp_r3->unk8 = (s32) (temp_r3->unk8 & 0xFFFFFBFF);
        return;
    case 0x3C:
        temp_r0_8 = temp_r4->unk4 + temp_r4->unkC;
        temp_r4->unk4 = temp_r0_8;
        if ((s32) (temp_r0_8 >> 8) <= 0xB3) {
            return;
        }
        temp_r3->unkC = 0x50B;
        temp_r3->unk1A = 1;
        temp_r3->unk1B = 0xFF;
        temp_r4->unk14 = 0x14;
        var_r0 = 0x46;
        goto block_136;
    case 0x46:
        temp_r0_9 = temp_r4->unk14 - 1;
        temp_r4->unk14 = temp_r0_9;
        if ((temp_r0_9 << 0x10) != 0) {
            return;
        }
        temp_r4->unk14 = 0x3CU;
        temp_r4->unk18 = 0x50;
        var_r0_2 = 0x506;
block_120:
        temp_r3->unkC = var_r0_2;
        temp_r3->unk1A = 0;
        temp_r3->unk1B = 0xFF;
        return;
    case 0x64:
        temp_r4->unkC = (s32) (temp_r4->unkC + 0x2A);
        arg0->unk4C = (s32) (arg0->unk4C + temp_r4->unk8);
        temp_r0_10 = temp_r4->unk4 + temp_r4->unkC;
        temp_r4->unk4 = temp_r0_10;
        if ((s32) (temp_r0_10 >> 8) <= 0xF9) {
            return;
        }
        var_r0 = 0xC8;
        goto block_136;
    case 0x5A:
        temp_r0_11 = temp_r4->unk14 - 1;
        temp_r4->unk14 = temp_r0_11;
        if ((temp_r0_11 << 0x10) != 0) {
            return;
        }
        temp_r4->unk8 = 0x100;
        temp_r4->unkC = 0xFFFFFC00;
        temp_r3->unkC = 0x50A;
        temp_r3->unk1A = 0;
        temp_r3->unk1B = 0xFF;
        temp_r3->unk8 = (s32) (temp_r3->unk8 | 0x400);
        temp_r4->unk18 = 0x64;
        m4aSongNumStart(0x74U);
        return;
    case 0x3E8:
        temp_r4->unk14 = 0x4BU;
        temp_r4->unk18 = 0x3F2;
        return;
    case 0x42E:
        temp_r1_3 = temp_r4->unk14 - 1;
        temp_r4->unk14 = temp_r1_3;
        if ((temp_r1_3 << 0x10) == 0) {
            temp_r4->unk14 = 0xAU;
            temp_r4->unk18 = 0x433;
            temp_r3->unkC = 0x50B;
            temp_r3->unk1A = 0;
            temp_r3->unk1B = 0xFF;
            temp_r3->unk8 = (s32) (temp_r3->unk8 & 0xFFFFFBFF);
            m4aSongNumStart(0x223U);
            return;
        }
        if (!(temp_r1_3 & 0x3F)) {
            m4aSongNumStart(0x224U);
            return;
        }
        break;
    case 0x410:
        temp_r0_12 = arg0->unk4C + temp_r4->unk8;
        arg0->unk4C = temp_r0_12;
        temp_r1_4 = temp_r0_12 >> 8;
        if (temp_r1_4 > 0x8AB) {
            temp_r4->unk8 = 0;
            temp_r4->unkC = 0x200;
            temp_r4->unk14 = 0x3CU;
            var_r0 = 0x41A;
            goto block_136;
        }
        if (temp_r1_4 <= 0x76B) {
            return;
        }
        temp_r4->unk8 = 0x200;
        return;
    case 0x3FC:
        temp_r0_13 = temp_r4->unk4 + temp_r4->unkC;
        temp_r4->unk4 = temp_r0_13;
        if ((s32) (temp_r0_13 >> 8) > 0x8E) {
            return;
        }
        temp_r4->unk14 = 0x28;
        var_r0 = 0x406;
        goto block_136;
    case 0x406:
        temp_r0_14 = temp_r4->unk14 - 1;
        temp_r4->unk14 = temp_r0_14;
        temp_r1_5 = (s16) temp_r0_14;
        if (temp_r1_5 != 0) {
            return;
        }
        temp_r4->unk8 = 0x180;
        temp_r4->unkC = (s32) temp_r1_5;
        temp_r4->unk18 = 0x410;
        goto block_108;
    case 0x41A:
        temp_r0_15 = temp_r4->unk4 + temp_r4->unkC;
        temp_r4->unk4 = temp_r0_15;
        if ((s32) (temp_r0_15 >> 8) <= 0xB3) {
            return;
        }
        temp_r3->unkC = 0x50B;
        temp_r3->unk1A = 1;
        temp_r3->unk1B = 0xFF;
        temp_r4->unk14 = 0x14;
        var_r0 = 0x424;
        goto block_136;
    case 0x424:
        temp_r0_16 = temp_r4->unk14 - 1;
        temp_r4->unk14 = temp_r0_16;
        if ((temp_r0_16 << 0x10) != 0) {
            return;
        }
        temp_r4->unk14 = 0xB4;
        temp_r4->unk18 = 0x42EU;
        var_r0_2 = 0x509;
        goto block_120;
    case 0x442:
        temp_r0_17 = temp_r4->unk14 - 1;
        temp_r4->unk14 = temp_r0_17;
        if ((temp_r0_17 << 0x10) == 0) {
            temp_r3->unkC = 0x5CA;
            temp_r3->unk1A = 0;
            temp_r3->unk1B = 0xFF;
            temp_r4->unk14 = 0xB4;
            var_r0 = 0x44C;
            goto block_136;
        }
        break;
    case 0x433:
        temp_r0_18 = temp_r4->unk14 - 1;
        temp_r4->unk14 = temp_r0_18;
        if ((temp_r0_18 << 0x10) == 0) {
            temp_r4->unk8 = 0xFFFFFC00;
            var_r0 = 0x438;
            goto block_136;
        }
        break;
    case 0x438:
        temp_r0_19 = arg0->unk4C + temp_r4->unk8;
        arg0->unk4C = temp_r0_19;
        if ((s32) (temp_r0_19 >> 8) <= 0x85C) {
            temp_r3->unkC = 0x509;
            temp_r3->unk1A = 0;
            temp_r3->unk1B = 0xFF;
            temp_r4->unk8 = 0;
            temp_r4->unkC = 0;
            temp_r4->unk14 = 0x78;
            temp_r4->unk18 = 0x442;
            m4aSongNumStop(0x223U);
            return;
        }
        break;
    case 0x456:
        temp_r4->unk4 = (s32) (temp_r4->unk4 + temp_r4->unkC);
        if (gBldRegs.bldY == 0x10) {
            var_r0 = 0x460;
            goto block_136;
        }
        break;
    case 0x44C:
        temp_r0_20 = temp_r4->unk14 - 1;
        temp_r4->unk14 = temp_r0_20;
        if ((temp_r0_20 << 0x10) == 0) {
            temp_r3->unkC = 0x5CA;
            temp_r3->unk1A = 1;
            temp_r3->unk1B = 0xFF;
            temp_r4->unkC = -0x80;
            temp_r4->unk18 = 0x456;
            return;
        }
        break;
    case 0x460:
        VramFree(arg0->unk10);
        arg0->unk10 = NULL;
        var_r0 = 0x7D0;
        goto block_136;
    case 0x0:
        temp_r4->unk14 = 0x4BU;
        var_r0 = 0xA;
        goto block_136;
    case 0xA:
        temp_r0_21 = temp_r4->unk14 - 1;
        temp_r4->unk14 = temp_r0_21;
        temp_r0_22 = (s16) temp_r0_21;
        if (temp_r0_22 != 0) {
            return;
        }
        temp_r4->unk8 = (s32) temp_r0_22;
        temp_r4->unkC = 0xFFFFFF00;
        var_r0 = 0x14;
        goto block_136;
    }
}

void sub_80816C0(HyperEggRobo *arg0) {
    Sprite *temp_r0;
    s32 temp_r3;
    u8 var_r4;

    var_r4 = 0;
    do {
        temp_r0 = arg0 + ((var_r4 * 0x28) + 0x7C);
        temp_r3 = var_r4 * 0x14;
        temp_r0->x = ((s32) *(arg0 + 0x2C + temp_r3) >> 8) - gCamera.x;
        temp_r0->y = ((s32) *(arg0 + 0x30 + temp_r3) >> 8) - gCamera.y;
        DisplaySprite(temp_r0);
        var_r4 += 1;
    } while ((u32) var_r4 <= 3U);
}

void sub_808170C(void *arg0) {
    void *temp_r0;

    temp_r0 = arg0->unk7C;
    if (temp_r0 != NULL) {
        VramFree(temp_r0);
        arg0->unk7C = NULL;
    }
}

void sub_8081724(s32 arg0, u8 arg1, u8 arg2) {
    s32 *temp_r5;
    s32 temp_r1;
    s32 temp_r2;
    s32 temp_r4;
    s32 var_r0;

    temp_r2 = arg2 * 0x14;
    temp_r5 = arg0 + 0x38 + temp_r2;
    if ((s32) *temp_r5 <= 0) {
        temp_r4 = arg1 * 0x28;
        temp_r1 = *(arg0 + 0x148 + temp_r4) - *(arg0 + 0x30 + temp_r2);
        var_r0 = temp_r1;
        if (temp_r1 < 0) {
            var_r0 = 0 - temp_r1;
        }
        if ((s32) (var_r0 >> 8) <= 0x13) {
            *temp_r5 = *(arg0 + 0x150 + temp_r4);
            (arg0 + temp_r2)->unk3E = 0x64;
            m4aSongNumStart(0x23AU);
        }
    }
}

void sub_808178C(u8 arg0) {
    u16 temp_r4;

    temp_r4 = TaskCreate(Task_ExtraChaosEmeraldsInit, 0x1C0U, 0x2200U, 0U, TaskDestructor_ExtraChaosEmeralds)->data;
    temp_r4->unk0 = arg0;
    temp_r4->unk10 = 1;
    temp_r4->unk12 = 0;
    temp_r4->unkC = 0;
    temp_r4->unk16 = 0;
    temp_r4->unk14 = 0;
    temp_r4->unk18 = VramMalloc(0x1CU);
    InitChaosEmeraldSprites((void *) temp_r4);
}

void TaskDestructor_HyperEggRobo(Task *arg0) {
    u16 temp_r1;
    void *temp_r0;

    temp_r1 = arg0->data;
    temp_r0 = temp_r1->unk18;
    if (temp_r0 != NULL) {
        VramFree(temp_r0);
        temp_r1->unk18 = NULL;
    }
    sub_8081AA0(temp_r1);
    sub_8081A40(temp_r1);
    sub_808170C((void *) temp_r1);
}

void sub_8081810(Player *p) {
    p->charFlags.anim0 = 0x125;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    SetPlayerCallback(p, sub_808183C);
    sub_808183C(p);
}

void sub_808183C(Player *p) {

}

void sub_8081840(Player *p) {
    p->qSpeedGround = 0;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->charFlags.anim0 = 0x96;
    SetPlayerCallback(p, PlayerCB_8081894);
    PlayerCB_8081894(p);
}

void sub_808186C(Player *p) {
    p->qSpeedGround = 0;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->charFlags.anim0 = 0;
    SetPlayerCallback(p, PlayerCB_8081894);
    PlayerCB_8081894(p);
}

void PlayerCB_8081894(Player *p) {

}

void sub_8081898(void) {
    u16 temp_r1;
    void *temp_r4;

    temp_r1 = gCurTask->data;
    temp_r4 = temp_r1->unk20;
    sub_358_807C14C((HyperEggRobo *) temp_r1);
    sub_80816C0((HyperEggRobo *) temp_r1);
    if ((s32) ((s32) temp_r4->unk10 >> 8) > 0x66C) {
        gCamera.minY = 0x10;
        sub_358_807BCCC((HyperEggRobo *) temp_r1);
        sub_358_807BEF0((HyperEggRobo *) temp_r1);
        sub_358_807D6C4((HyperEggRobo *) temp_r1);
        sub_358_807CBC8((HyperEggRobo *) temp_r1);
        temp_r1->unk10 = 0;
        temp_r1->unk8 = 1;
        temp_r1->unkC = 0;
        gCurTask->main = Task_358_807B9B8;
    }
}

void Task_358_HyperEggRoboInit(void) {
    u16 temp_r4;
    void (*var_r0)(HyperEggRobo *);

    temp_r4 = gCurTask->data;
    sub_358_807C14C((HyperEggRobo *) temp_r4);
    sub_80816C0((HyperEggRobo *) temp_r4);
    if (*temp_r4->unk4 == 3) {
        TaskDestroy(gCurTask);
        return;
    }
    if ((sub_8079FFC() << 0x18) != 0) {
        var_r0 = Task_358_8081958;
    } else {
        var_r0 = Task_358_807B808;
    }
    gCurTask->main = var_r0;
}

void Task_358_8081958(HyperEggRobo *boss) {
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    if (*temp_r1->unk4 == 3) {
        TaskDestroy(gCurTask);
        return;
    }
    sub_358_807C14C((HyperEggRobo *) temp_r1);
    sub_80816C0((HyperEggRobo *) temp_r1);
    if ((*temp_r1->unk4 == 2) && ((sub_807A074() << 0x18) != 0)) {
        sub_807FB7C(0U);
        sub_807FB7C(0xAU);
        sub_807FB7C(0xBU);
        gCurTask->main = Task_358_80819BC;
    }
}

void Task_358_80819BC(void) {
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    if (*temp_r1->unk4 == 3) {
        TaskDestroy(gCurTask);
        return;
    }
    sub_358_807C14C((HyperEggRobo *) temp_r1);
    sub_80816C0((HyperEggRobo *) temp_r1);
    if (*temp_r1->unk4 == 2) {
        temp_r1->unk8 = 5;
        temp_r1->unkC = 0xA;
        SetFixedRandomIfTimeAttackMode();
        gCurTask->main = Task_358_807B808;
    }
}

void sub_8081A10(Player *arg0) {
    arg0->qSpeedGround = 0;
    arg0->qSpeedAirX = 0;
    arg0->qSpeedAirY = 0;
    arg0->charFlags.anim0 = 0x96;
    SetPlayerCallback(arg0, PlayerCB_80819BC);
    PlayerCB_80819BC(arg0);
}

void PlayerCB_80819BC(Player *p) {

}

void sub_8081A40(void *arg0) {
    void *temp_r0;
    void *temp_r0_2;

    temp_r0 = arg0->unk250;
    if (temp_r0 != NULL) {
        VramFree(temp_r0);
        arg0->unk250 = NULL;
    }
    temp_r0_2 = arg0->unk228;
    if (temp_r0_2 != NULL) {
        VramFree(temp_r0_2);
        arg0->unk228 = NULL;
    }
}

void sub_8081A74(HyperEggRobo *arg0, s32 arg1, u8 arg2) {
    s32 temp_r2;
    void *temp_r3;

    if ((arg1 << 0x18) == 0) {
        temp_r3 = arg0 + 0x228;
        temp_r2 = arg2 * 4;
        temp_r3->unkC = (u16) *(temp_r2 + &gUnknown_080D5C38);
        temp_r3->unk1A = (s8) *(temp_r2 + (&gUnknown_080D5C38 + 2));
    }
}

void sub_8081AA0(void *arg0) {
    void *temp_r0;
    void *temp_r0_2;

    temp_r0 = arg0->unk278;
    if (temp_r0 != NULL) {
        VramFree(temp_r0);
        arg0->unk278 = NULL;
    }
    temp_r0_2 = arg0->unk2A0;
    if (temp_r0_2 != NULL) {
        VramFree(temp_r0_2);
        arg0->unk2A0 = NULL;
    }
}

void UpdateHandAnimation(HyperEggRobo *arg0, u8 arg1, u8 arg2) {
    ? *var_r1;
    s32 temp_r2;
    u8 temp_r1;
    void *var_r3;

    temp_r1 = arg1;
    switch (temp_r1) {                              /* irregular */
    case 0:
        var_r3 = arg0 + 0x278;
        var_r1 = &sBossFinalAnimsHands;
block_5:
        temp_r2 = arg2 * 4;
        var_r3->unkC = (u16) *(temp_r2 + var_r1);
        var_r3->unk1A = (s8) *(temp_r2 + (var_r1 + 2));
        return;
    case 1:
        var_r3 = arg0 + 0x2A0;
        var_r1 = &sBossFinalAnimsHands + 0x18;
        goto block_5;
    }
}

void sub_8081B18(void) {

}

void sub_8081B1C(void) {

}

void sub_8081B20(void) {

}

void sub_8081B24(Sprite *arg0, s32 arg1, s32 arg2) {
    Player *temp_r4;
    Sprite *temp_r1;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    u16 temp_r5;
    u8 var_r6;

    temp_r5 = gCurTask->data;
    var_r6 = 0;
    do {
        temp_r4 = *(temp_r5 + 0x20 + (var_r6 * 4));
        if (sub_802C080(temp_r4) == 0) {
            if (temp_r4->moveState & 0x20) {
                temp_r0 = temp_r5 + 0x7C;
                temp_r1 = temp_r4->sprColliding;
                if ((temp_r1 == temp_r0) || (temp_r0_2 = temp_r0 + 0x28, (temp_r1 == temp_r0_2)) || (temp_r0_3 = temp_r0_2 + 0x28, (temp_r1 == temp_r0_3)) || (temp_r1 == (temp_r0_3 + 0x28))) {
                    sub_8020CE0(arg0, arg1 >> 8, arg2 >> 8, 0, temp_r4);
                }
            } else {
                sub_8020CE0(arg0, arg1 >> 8, arg2 >> 8, 0, temp_r4);
            }
        }
        var_r6 += 1;
    } while ((u32) var_r6 <= 1U);
}

void sub_8081BBC(HyperEggRobo *arg0) {
    u8 temp_r0;
    u8 var_r1;

    temp_r0 = arg0->lives;
    if (temp_r0 != 0) {
        var_r1 = temp_r0 - 1;
    } else {
        var_r1 = 0;
    }
    arg0->unk8 = (s16) *(var_r1 + &gUnknown_080D5C48);
    arg0->unkC = 0;
    arg0->filler1[0] = 5;
}

void sub_8081BE8(void *arg0, u8 arg1) {
    s16 var_r0;
    u8 temp_r1;

    temp_r1 = arg1;
    switch (temp_r1) {                              /* irregular */
    case 0:
        var_r0 = 0xA;
block_5:
        arg0->unkC = var_r0;
        return;
    case 1:
        var_r0 = 0x64;
        goto block_5;
    }
}

void sub_8081C08(HyperEggRobo *arg0) {
    void *temp_r0;

    arg0->unk14 = 0x3C;
    temp_r0 = arg0 + 0x228;
    temp_r0->unkC = (u16) gUnknown_080D5C38.unk0;
    temp_r0->unk1A = (s8) gUnknown_080D5C38.unk2;
}

void TaskDestructor_ExtraChaosEmeralds(Task *arg0) {
    u16 temp_r1;
    void *temp_r0;

    temp_r1 = arg0->data;
    gStageData.unk4 = 5;
    temp_r0 = temp_r1->unk18;
    if (temp_r0 != NULL) {
        VramFree(temp_r0);
        temp_r1->unk18 = NULL;
    }
}

void TaskDestructor_AltarEmeraldPostBossCutscene(Task *arg0) {
    u16 temp_r1;
    void *temp_r0;
    void *temp_r0_2;
    void *temp_r0_3;

    temp_r1 = arg0->data;
    temp_r0 = temp_r1->unk8;
    if (temp_r0 != NULL) {
        VramFree(temp_r0);
        temp_r1->unk8 = NULL;
    }
    temp_r0_2 = temp_r1->unkC;
    if (temp_r0_2 != NULL) {
        VramFree(temp_r0_2);
    }
    temp_r0_3 = temp_r1->unk10;
    if (temp_r0_3 != NULL) {
        VramFree(temp_r0_3);
    }
}
#endif
