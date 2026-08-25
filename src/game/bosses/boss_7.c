#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/bosses.h"
#include "game/stage.h"
#include "game/shared/stage/music_manager.h"
#include "game/shared/stage/player_callbacks.h"
#include "game/shared/stage/player.h"
#include "game/sa3/bosses/eggman_escape.h"
#include "constants/animations.h"

typedef struct {
    /* 0x00 */ s32 qUnk0;
    /* 0x04 */ s32 qUnk4;
    /* 0x08 */ s32 qUnk8;
    /* 0x0C */ s32 qUnkC;
    /* 0x10 */ u8 filler10[0x4];
    /* 0x14 */ s32 unk14;
    /* 0x18 */ s32 unk18;
    /* 0x1C */ u8 *bossPhase;
    /* 0x20 */ u8 unk20;
    /* 0x21 */ u8 lives;
    /* 0x22 */ u8 unk22;
    /* 0x23 */ u8 unk23;
    /* 0x24 */ u8 unk24;
    /* 0x25 */ u8 unk25;
    /* 0x26 */ u8 unk26;
    /* 0x27 */ u8 unk27;
    /* 0x28 */ u8 unk28;
    /* 0x29 */ u8 unk29;
    /* 0x2A */ u8 unk2A;
    /* 0x2B */ u8 unk2B;
    /* 0x2C */ u8 filler2C[2];
    /* 0x2E */ u8 unk2E[2];
    /* 0x2B */ s16 unk30;
    /* 0x2B */ s16 unk32;
    /* 0x2B */ s16 unk34;
    /* 0x2B */ s16 unk36;
    /* 0x30 */ u8 filler38[0x4];
    /* 0x2B */ s32 unk3C;
    /* 0x30 */ u8 filler40[0x4];
    /* 0x2B */ s32 unk44;
    /* 0x48 */ u8 *vram48;
    /* 0x4C */ u8 *vram4C;
    /* 0x50 */ Player *players[2];
    /* 0x58 */ Sprite spr58;
    /* 0x80 */ Sprite spr80;
    /* 0xA8 */ Sprite sprA8;
    /* 0xD0 */ Task *taskD0;
    /* 0xD4 */ u8 unkD4;
} EggGravity; /* 0xD8 */

typedef struct {
    /* 0x00 */ EggGravity *boss;
    /* 0x04 */ s32 unk4[21];
    /* 0x04 */ s32 unk58[21];
    /* 0x04 */ s32 unkB0;
    /* 0x02 */ u8 fillerB4[0x10];
    /* 0xC4 */ s32 qUnkC4;
    /* 0xC8 */ s32 qUnkC8;
    /* 0xCC */ Sprite sprCC;
    /* 0xD0 */ u8 fillerD0[0x24];
    /* 0xF4 */ Player *players[2];
    /* 0xFC */ EggGravity *bossFC;
} EggGravity100; /* 0x100 */

typedef struct {
    /* 0x00 */ u8 unk0[2];
    /* 0x02 */ u8 filler2[2];
    /* 0x04 */ u16 unk4[2];
    /* 0x08 */ Vec2_16 unk8[4];
    /* 0x18 */ Sprite s;
    /* 0x40 */ Player *players[2];
    /* 0x48 */ EggGravity *boss;
} EggGravity4C; /* 0x4C */

Task *CreateEggGravity(u8 *bossPhase, s32 worldX, s32 worldY);
void Task_D8_8075064(void);
void Task_D8_8075204(void);
void Task_D8_8075324(void);
void Task_D8_8075674(void);
void Task_D8_80759B4(void);
void Task_D8_8075C40(void);
void Task_D8_8075DA4(void);
void Task_D8_8075EE8(void);
void Task_D8_8076050(void);
void Task_D8_8076218(void);
void Task_D8_80762B4(void);
void Task_4C_8076618(void);
void sub_8076328(EggGravity *boss);
void sub_8076420(EggGravity *boss);
void sub_8076550(EggGravity *boss);
Task *sub_8076A54(EggGravity *boss);
void Task_100_8076B58(void);
void Task_D8_EggGravityInit(void);
void sub_80769C4(u8 *param0, s16 param1);
void Task_D8_80777AC(void);
void sub_8077918(EggGravity *boss);
void TaskDestructor_EggGravity(Task *t);

// TEMP

#if M2C
Task *CreateEggGravity(u8 *bossPhase, s32 worldX, s32 worldY, EggGravity *boss);
void Task_D8_8075064(EggGravity *boss);
void Task_D8_8075204(EggGravity *boss);
void Task_D8_8075324(EggGravity *boss);
void Task_D8_8075674(EggGravity *boss);
void Task_D8_80759B4(EggGravity *boss);
void Task_D8_8075C40(EggGravity *boss);
void Task_D8_8075DA4(EggGravity *boss);
void Task_D8_8075EE8(EggGravity *boss);
void Task_D8_8076050(EggGravity *boss);
void Task_D8_8076218(EggGravity *boss);
void Task_D8_80762B4(EggGravity *boss);
void sub_8076550(EggGravity *boss, EggGravity4C *strc4C);
Task *sub_8076A54(EggGravity *boss, EggGravity100 *strc100);
void Task_4C_8076618(EggGravity4C *strc4C);
void Task_100_8076B58(EggGravity100 *strc100);
#endif

extern const u16 gUnknown_080D59EC[4][2];

Task *CreateEggGravity(u8 *bossPhase, s32 worldX, s32 worldY)
{
    EggGravity *boss;
    Task *t;
    u8 *vram;
    u8 lives;
    Sprite *s;

    t = TaskCreate(Task_D8_EggGravityInit, sizeof(EggGravity), 0x2100U, 0U, TaskDestructor_EggGravity);
    boss = TASK_DATA(t);
    gStageData.taskBoss = t;
    boss->qUnk0 = Q(0x408);
    boss->qUnk4 = Q(0x249);
    boss->unk14 = 0;
    boss->unk18 = 0;
    boss->unk32 = 0;
    boss->unk3C = 0;
    boss->unk44 = 0;
    boss->unk30 = 0;
    boss->unk22 = 0;
    boss->unk23 = 0;
    boss->unk24 = 0;
    boss->unk25 = 0;
    boss->unk26 = 0;
    boss->unk27 = 0;
    boss->unk28 = 0;
    boss->unkD4 = 0;
    if (gStageData.difficulty == 0) {
        boss->lives = 8;
    } else {
        boss->lives = 6;
    }
    boss->bossPhase = bossPhase;
    boss->players[PLAYER_1] = &gPlayers[PLAYER_1];
    boss->players[PLAYER_2] = &gPlayers[gPlayers->charFlags.partnerIndex];
    boss->unk34 = 0;
    boss->unk36 = 0;
    boss->qUnk8 = 0;
    boss->qUnkC = 0;
    sub_8077918(boss);
    boss->vram48 = VramMalloc(116);
    boss->vram4C = VramMalloc(30);
    vram = VramMalloc(0x41U);
    s = &boss->spr58;
    s->tiles = vram;
    s->anim = ANIM_BOSS_7_COCKPIT;
    s->variant = 0;
    s->oamFlags = 0x540;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = 0xFF;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x1000;
    UpdateSpriteAnimation(s);
    vram += 0x480;

    s = &boss->spr80;
    s->tiles = vram;
    s->anim = 0x4EB;
    s->variant = 0;
    s->oamFlags = 0x500;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x1000;
    UpdateSpriteAnimation(s);
    vram += 0x120;

    s = &boss->sprA8;
    s->tiles = vram;
    s->anim = 0x4E9;
    s->variant = 0;
    s->oamFlags = 0x580;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x1000;
    UpdateSpriteAnimation(s);

    boss->taskD0 = sub_8076A54(boss);
    sub_8076550(boss);
    SetFixedRandomIfTimeAttackMode();
    return t;
}

void Task_D8_8075064(void)
{
    Player *player;
    Player *partner;
    u8 i;
    EggGravity *boss = TASK_DATA(gCurTask);

    for (i = 0; i < ARRAY_COUNT(boss->players); i++) {
        player = boss->players[i];

        if (!(0x08000100 & player->moveState)) {
            if (player->qWorldY >= 0xD700) {
                player->moveState |= 0x8000000;
                if (player->moveState & 0x800000) {
                    sub_8016F28(player);
                }
                if (player->moveState & 0x01000000) {
                    player->moveState &= ~0x01000000;
                }
                Player_800E67C(player);
            }
        } else if ((0x08000000 & player->moveState) && (player->qWorldY < 0xD700)) {
            player->moveState = player->moveState & 0xF7FFFFFF;
        }
        if ((s32)player->qWorldX > 0x4A5FF) {
            player->qWorldX = 0x4A600;
            player->qSpeedAirX = 0;
            player->qSpeedGround = 0;
        }
    }

    player = &gPlayers[gStageData.playerIndex];
    partner = &gPlayers[player->charFlags.partnerIndex];
    if ((s32)player->qWorldY > 0x225FF) {
        gCamera.minY = 0x1B8;
        gCamera.maxY = 0x2D8;
        boss->unk30 = 0;
        if (gStageData.gameMode != 5) {
            sub_80299D4(0x34U);
            gCurTask->main = (void (*)())Task_D8_8075204;
            if ((partner->qWorldY >= 0x28A00) && (partner->charFlags.someIndex == 2)) {
                partner->qSpeedGround = 0;
                partner->qSpeedAirY = 0;
                partner->qSpeedAirX = 0;
                partner->qWorldX = player->qWorldX;
                partner->qWorldY = player->qWorldY;
                partner->layer = player->layer;
                partner->framesInvulnerable = 0x78;
                partner->unk56 = 0xE;
                partner->unk57 = 0x3C;
                partner->moveState &= 0xFFFFFEFF;
                SetPlayerCallback(partner, Player_8005380);
            }
        } else {
            sub_8079FFC();
            gCurTask->main = Task_D8_80777AC;
        }
    }
    sub_8076328(boss);
}

#if 0
void Task_D8_8075204(EggGravity *boss) {
    EggGravity *temp_r4;
    Player *temp_r1_2;
    Player *temp_r1_3;
    Player *temp_r1_4;
    s32 temp_r1;
    u16 temp_r0;
    u16 temp_r2;
    u16 var_r1;
    u8 var_r2;

    temp_r1 = (s32) boss << 0x12;
    temp_r4 = boss + temp_r1;
    temp_r2 = temp_r4->unk30 + 1;
    temp_r4->unk30 = temp_r2;
    if (!(temp_r4->players[0]->moveState & 0x100) && !(temp_r2 & 2)) {
        var_r1 = 0x100 | gDispCnt;
    } else {
        var_r1 = 0xFEFF & gDispCnt;
    }
    gDispCnt = var_r1;
    temp_r0 = temp_r4->unk30;
    switch (temp_r0) {                              /* irregular */
    case 0x1E:
        temp_r1_2 = temp_r4->players[0];
        temp_r1_2->moveState &= 0xF7FFFFFF;
        temp_r1_3 = temp_r4->players[1];
        temp_r1_3->moveState &= 0xF7FFFFFF;
        break;
    case 0x43:
        sub_8077954(temp_r4, 4);
        break;
    case 0x7F:
        (boss->taskD0->data + temp_r1)->unkB1 = 1;
        gDispCnt |= 0x100;
        temp_r4->unk30 = 0U;
        sub_8077954(temp_r4, 0);
        sub_807A4A8();
        gCurTask->main = (void (*)()) Task_D8_8075324;
        break;
    }
    var_r2 = 0;
    do {
        temp_r1_4 = temp_r4->players[var_r2];
        if ((temp_r1_4->moveState & 0x08000000) && ((s32) temp_r1_4->qWorldX > 0x4A5FF)) {
            temp_r1_4->qWorldX = 0x4A600;
            temp_r1_4->qSpeedAirX = 0;
            temp_r1_4->qSpeedGround = 0;
        }
        var_r2 += 1;
    } while ((u32) var_r2 <= 1U);
    sub_8076328(temp_r4);
}

void Task_D8_8075324(EggGravity *boss) {
    Sprite *sp0;
    Sprite *sp4;
    u8 *sp8;
    ? *spC;
    Player *temp_r6;
    s32 temp_r0_3;
    s32 temp_r1;
    s32 temp_r4;
    s32 temp_r5;
    s32 var_r0;
    u32 var_r2;
    u8 temp_r0;
    u8 temp_r0_2;
    u8 temp_r1_2;
    u8 var_r2_2;

    sp0 = &boss->spr58;
    sp4 = &boss->sprA8;
    temp_r6 = boss->players[0];
    boss->unk30 = (u16) (boss->unk30 + 1);
    boss->unk26 = 0;
    sub_80778D0(boss);
    sub_8077874(boss, boss->players[0]);
    sub_8077874(boss, boss->players[1]);
    sub_8076420(boss);
    if (boss->unk27 != 0) {
        boss->unk27 = 0;
        boss->unk2B = 0;
        boss->unk2C = 1;
        gCurTask->main = (void (*)()) Task_D8_8075674;
        sp8 = &boss->unk21;
        if (gStageData.gameMode != 5) {

        } else if (gStageData.playerIndex == 0) {
            sub_8027674(3U, 0U);
            sp8 = &boss->unk21;
        } else {
            sub_8027674(4U, 0U);
            sp8 = &boss->unk21;
        }
    } else {
        temp_r0 = boss->unk24;
        if ((temp_r0 != 0) && (temp_r0_2 = temp_r0 - 1, boss->unk24 = temp_r0_2, sp8 = &boss->unk21, ((temp_r0_2 << 0x18) != 0))) {

        } else {
            boss->unk24 = (u8) *((boss->unk21 * 2) + &gUnknown_080D5940);
            var_r2 = 0;
            if (boss->unk23 == 0) {
                var_r2 = (u32) (0 - (temp_r6->moveState & 0x10000)) >> 0x1F;
            } else if (!(temp_r6->moveState & 0x10000)) {
                var_r2 = 1;
            }
            boss->unk25 = 0;
            sp8 = &boss->unk21;
            if (var_r2 != 0) {
                temp_r1 = temp_r6->qWorldX - (boss->qUnk0 + boss->unk14);
                var_r0 = temp_r1;
                if (temp_r1 < 0) {
                    var_r0 = 0 - temp_r1;
                }
                var_r2_2 = 0;
loop_18:
                temp_r5 = var_r2_2 * 8;
                if ((s32) (var_r0 >> 8) <= (s32) *(temp_r5 + &gUnknown_080D5978)) {
                    temp_r4 = (0x196225 * gPseudoRandom) + 0x3C6EF35F;
                    gPseudoRandom = temp_r4;
                    spC = &gUnknown_080D5978;
                    if ((u32) ((u32) temp_r4 % 10000U) <= (u32) *(temp_r5 + (&gUnknown_080D5978 + 2))) {
                        temp_r0_3 = (0x196225 * temp_r4) + 0x3C6EF35F;
                        gPseudoRandom = temp_r0_3;
                        if ((u32) ((u32) temp_r0_3 % 10000U) > (u32) *(temp_r5 + &gUnknown_080D597C)) {
                            boss->unk25 = 2;
                        } else {
                            boss->unk25 = 1;
                        }
                    }
                } else {
                    var_r2_2 += 1;
                    if ((u32) var_r2_2 <= 3U) {
                        goto loop_18;
                    }
                }
            }
            temp_r1_2 = boss->unk25;
            switch (temp_r1_2) {                    /* irregular */
            case 1:
                boss->unk2B = 0;
                boss->unk2C = (s16) temp_r1_2;
                gCurTask->main = (void (*)()) Task_D8_8075C40;
                break;
            case 2:
                boss->unk29 = 0xC;
                gCurTask->main = (void (*)()) Task_D8_8075DA4;
                if (boss->unk23 != 0) {
                    boss->unk23 = 0;
                    boss->spr80.anim = gUnknown_080D5904.unk8;
                    boss->spr80.variant = (u8) gUnknown_080D5904.unkA;
                    boss->spr80.prevAnim = 0xFFFF;
                    boss->spr80.prevVariant = 0xFF;
                    sp0->anim = sBoss7AnimsCockpit.unk8;
                    sp0->variant = (u8) sBoss7AnimsCockpit.unkA;
                    sp0->prevAnim = -1;
                    sp0->prevVariant = -1;
                    sp4->anim = gUnknown_080D592C.unk8;
                    sp4->variant = (u8) gUnknown_080D592C.unkA;
                    sp4->prevAnim = -1;
                    sp4->prevVariant = -1;
                } else {
                    boss->unk23 = 1;
                    boss->spr80.anim = gUnknown_080D5904.unkC;
                    boss->spr80.variant = (u8) gUnknown_080D5904.unkE;
                    boss->spr80.prevAnim = 0xFFFF;
                    boss->spr80.prevVariant = 0xFF;
                    sp0->anim = sBoss7AnimsCockpit.unkC;
                    sp0->variant = (u8) sBoss7AnimsCockpit.unkE;
                    sp0->prevAnim = -1;
                    sp0->prevVariant = -1;
                    sp4->anim = gUnknown_080D592C.unkC;
                    sp4->variant = (u8) gUnknown_080D592C.unkE;
                    sp4->prevAnim = -1;
                    sp4->prevVariant = -1;
                }
                break;
            }
        }
    }
    if (*sp8 == 0) {
        if (gStageData.gameMode == 5) {
            if (boss->unkD4 == 0) {
                sub_8027674(1U, (u16) ((u32) (boss->unk14 << 8) >> 0x10));
                goto block_36;
            }
        } else if (boss->unkD4 == 0) {
block_36:
            sub_8077A28(boss);
            gCurTask->main = (void (*)()) Task_D8_8075EE8;
        }
    }
    sub_8076328(boss);
}

void Task_D8_8075674(EggGravity *boss) {
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 var_r2;
    s32 var_r2_2;
    u8 temp_r0;
    u8 temp_r0_2;
    u8 temp_r0_5;
    void (*var_r0)(EggGravity *);

    boss->unk30 = (u16) (boss->unk30 + 1);
    sub_8077874(boss, boss->players[0]);
    sub_8077874(boss, boss->players[1]);
    temp_r0 = boss->unk2B;
    switch ((u32) temp_r0) {                        /* irregular */
    case 0:
        boss->unk26 = 3;
        boss->sprA8.anim = gUnknown_080D592C.unk10;
        boss->sprA8.variant = (u8) gUnknown_080D592C.unk12;
        boss->sprA8.prevAnim = 0xFFFF;
        boss->sprA8.prevVariant = 0xFF;
        if (boss->unk23 != 0) {
            boss->unk32 = 0x600;
        } else {
            boss->unk32 = -0x600;
            boss->sprA8.frameFlags |= 0x800;
        }
        sub_8077A04(boss->taskD0, 1);
        m4aSongNumStart(0x234U);
        boss->unk2B = 0xA;
        break;
    case 10:
        boss->unk3C = (s32) (boss->unk3C + boss->unk32);
        var_r2 = 0;
        if (boss->unk23 != 0) {
            if ((s32) ((s32) boss->qUnk4 >> 8) > 0x2C8) {
                goto block_14;
            }
            goto block_12;
        }
        if ((s32) ((s32) boss->qUnk4 >> 8) <= 0x1C7) {
            var_r2 = 1;
        }
block_12:
        if (var_r2 == 0) {

        } else {
block_14:
            sub_8078DB0(0x4EE, 0, 0x3A, 0U);
            sub_8078DB0(0x4EF, 0, 0x3A, 0U);
            boss->unk32 = 0;
            boss->unk2B = 0xB;
            boss->sprA8.anim = *((boss->unk23 * 4) + &gUnknown_080D592C);
            boss->sprA8.variant = (u8) ((boss->unk23 * 4) + &gUnknown_080D592C)->unk2;
            boss->sprA8.prevAnim = 0xFFFF;
            boss->sprA8.prevVariant = 0xFF;
            if (boss->unk23 != 0) {
                sub_8077954(boss, 8);
            } else {
                boss->sprA8.frameFlags &= 0xFFFFF7FF;
                sub_8077954(boss, 5);
            }
            temp_r0_2 = boss->unk21;
            if (temp_r0_2 != 0) {
                boss->unk21 = temp_r0_2 - 1;
            }
            if (gStageData.difficulty == 0) {
                if (boss->unk21 == 4) {
                    sub_80299D4(0x35U);
                }
            } else if (boss->unk21 == 3) {
                sub_80299D4(0x35U);
            }
            m4aSongNumStart(0xEBU);
            PlayVoiceEggmanHit();
        }
        break;
    case 11:
        var_r2_2 = 0;
        if (boss->unk23 != 0) {
            boss->unk32 = (s16) ((u16) boss->unk32 - 0x40);
            temp_r0_3 = boss->unk3C + boss->unk32;
            boss->unk3C = temp_r0_3;
            if (temp_r0_3 < 0) {
                boss->unk3C = 0;
                goto block_31;
            }
            goto block_30;
        }
        boss->unk32 = (s16) ((u16) boss->unk32 + 0x40);
        temp_r0_4 = boss->unk3C + boss->unk32;
        boss->unk3C = temp_r0_4;
        if (temp_r0_4 > 0) {
            boss->unk3C = 0;
            var_r2_2 = 1;
        }
block_30:
        if (var_r2_2 != 0) {
block_31:
            boss->unk32 = 0;
            boss->unk2B = 0x14;
            if (boss->unk23 != 0) {
                sub_8077954(boss, 1);
            } else {
                sub_8077954(boss, 0);
            }
        }
        break;
    case 20:
        if ((sub_8077174(boss->taskD0) << 0x18) != 0) {
            m4aSongNumStart(0x235U);
            sub_8077238(boss->taskD0, 1 ^ boss->unk23, boss->qUnk0 + boss->unk14, 0x800);
            sub_8077A14(boss->taskD0, 3);
            boss->unk2C = 0x3C;
            boss->unk2B = 0x1E;
        }
        break;
    case 30:
        if ((sub_8077174(boss->taskD0) << 0x18) != 0) {
            sub_8077A04(boss->taskD0, 0);
            boss->unk2B = 0;
            sub_8077918(boss);
            temp_r0_5 = boss->unk21;
            if ((temp_r0_5 != 0) && ((u32) temp_r0_5 <= 4U)) {
                boss->unk29 = 0x1E;
                boss->unk2A = 0;
                var_r0 = Task_D8_80759B4;
            } else {
                var_r0 = Task_D8_8075324;
            }
            gCurTask->main = var_r0;
        }
        break;
    }
    sub_8076328(boss);
}

void Task_D8_80759B4(EggGravity *boss) {
    Sprite *sp0;
    Sprite *temp_r3;
    s32 temp_r0;
    u32 temp_r0_3;
    u8 temp_r0_2;
    u8 temp_r0_4;
    u8 temp_r0_5;

    temp_r3 = &boss->sprA8;
    boss->unk30 = (u16) (boss->unk30 + 1);
    boss->unk26 = 4;
    sp0 = temp_r3;
    sub_8077874(boss, boss->players[0]);
    sub_8077874(boss, boss->players[1]);
    if (boss->unk2A == 0) {
        boss->unk29 = 1;
        boss->unk2A += 1;
        temp_r0 = (gPseudoRandom * 0x196225) + 0x3C6EF35F;
        gPseudoRandom = temp_r0;
        temp_r0_2 = ((u32) temp_r0 >> 8) & 1;
        boss->unk22 = temp_r0_2;
        if (temp_r0_2 != 0) {
            boss->unk8 = 0xFFFFFC00U;
        } else {
            boss->unk8 = 0x400U;
        }
        if ((u32) boss->unk21 <= 1U) {

        } else {
            temp_r0_3 = boss->unk8;
            boss->unk8 = (u32) ((s32) (temp_r0_3 + (temp_r0_3 >> 0x1F)) >> 1);
        }
    } else {
        sp0 = temp_r3;
        sub_80778D0(boss);
        temp_r0_4 = boss->unk29 - 1;
        boss->unk29 = temp_r0_4;
        if ((temp_r0_4 << 0x18) != 0) {

        } else {
            if (1 & boss->unk2A) {
                boss->unk29 = 0xC;
                if (boss->unk23 != 0) {
                    boss->unk23 = 0;
                    boss->spr80.anim = gUnknown_080D5904.unk8;
                    boss->spr80.variant = (u8) gUnknown_080D5904.unkA;
                    boss->spr80.prevAnim = 0xFFFF;
                    boss->spr80.prevVariant |= 0xFF;
                    boss->spr58.anim = sBoss7AnimsCockpit.unk8;
                    boss->spr58.variant = (u8) sBoss7AnimsCockpit.unkA;
                    boss->spr58.prevAnim = -1;
                    boss->spr58.prevVariant |= 0xFF;
                    boss->sprA8.anim = gUnknown_080D592C.unk8;
                    boss->sprA8.variant = (u8) gUnknown_080D592C.unkA;
                    boss->sprA8.prevAnim = -1;
                } else {
                    boss->unk23 = 1;
                    boss->spr80.anim = gUnknown_080D5904.unkC;
                    boss->spr80.variant = (u8) gUnknown_080D5904.unkE;
                    boss->spr80.prevAnim = 0xFFFF;
                    boss->spr80.prevVariant |= 0xFF;
                    boss->spr58.anim = sBoss7AnimsCockpit.unkC;
                    boss->spr58.variant = (u8) sBoss7AnimsCockpit.unkE;
                    boss->spr58.prevAnim = -1;
                    boss->spr58.prevVariant |= 0xFF;
                    boss->sprA8.anim = gUnknown_080D592C.unkC;
                    boss->sprA8.variant = (u8) gUnknown_080D592C.unkE;
                    boss->sprA8.prevAnim = -1;
                }
            } else {
                boss->unk29 = 4;
                boss->spr80.anim = *((boss->unk23 * 4) + &gUnknown_080D5904);
                boss->spr80.variant = (u8) ((boss->unk23 * 4) + &gUnknown_080D5904)->unk2;
                boss->spr80.prevAnim = 0xFFFF;
                boss->spr80.prevVariant |= 0xFF;
                boss->spr58.anim = *((boss->unk23 * 4) + &sBoss7AnimsCockpit);
                boss->spr58.variant = (u8) ((boss->unk23 * 4) + &sBoss7AnimsCockpit)->unk2;
                boss->spr58.prevAnim = -1;
                boss->spr58.prevVariant |= 0xFF;
                boss->sprA8.anim = *((boss->unk23 * 4) + &gUnknown_080D592C);
                boss->sprA8.variant = (u8) ((boss->unk23 * 4) + &gUnknown_080D592C)->unk2;
                boss->sprA8.prevAnim = -1;
            }
            boss->sprA8.prevVariant |= 0xFF;
            temp_r0_5 = boss->unk2A + 1;
            boss->unk2A = temp_r0_5;
            if ((u32) temp_r0_5 > 0x14U) {
                sub_8077918(boss);
                gCurTask->main = (void (*)()) Task_D8_8075324;
            }
        }
    }
    sub_8076328(boss);
}

void Task_D8_8075C40(EggGravity *boss) {
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 var_r2;
    u16 var_r0;
    u8 temp_r0;

    boss->unk30 = (u16) (boss->unk30 + 1);
    sub_8077874(boss, boss->players[0]);
    sub_8077874(boss, boss->players[1]);
    temp_r0 = boss->unk2B;
    switch (temp_r0) {                              /* irregular */
    case 0:
        boss->unk26 = 2;
        if (boss->unk23 != 0) {
            var_r0 = 0x600;
        } else {
            var_r0 = 0xFA00;
        }
        boss->unk32 = var_r0;
        sub_8077A04(boss->taskD0, 1);
        m4aSongNumStart(0x234U);
        boss->unk2B = 0xA;
        break;
    case 10:
        var_r2 = 0;
        if (boss->unk23 != 0) {
            boss->unk32 = (u16) (boss->unk32 - 0x40);
            temp_r0_2 = boss->unk3C + (s16) boss->unk32;
            boss->unk3C = temp_r0_2;
            if (temp_r0_2 < 0) {
                boss->unk3C = 0;
                goto block_17;
            }
            goto block_16;
        }
        boss->unk32 = (u16) (boss->unk32 + 0x40);
        temp_r0_3 = boss->unk3C + (s16) boss->unk32;
        boss->unk3C = temp_r0_3;
        if (temp_r0_3 > 0) {
            boss->unk3C = 0;
            var_r2 = 1;
        }
block_16:
        if (var_r2 != 0) {
block_17:
            boss->unk32 = 0U;
            boss->unk2B = 0x14;
        }
        break;
    case 20:
        if ((sub_8077174(boss->taskD0) << 0x18) != 0) {
            m4aSongNumStart(0x235U);
            sub_8077238(boss->taskD0, 1 ^ boss->unk23, boss->qUnk0 + boss->unk14, 0x800);
            sub_8077A14(boss->taskD0, 3);
            boss->unk2B = 0x1E;
        }
        break;
    case 30:
        if ((sub_8077174(boss->taskD0) << 0x18) != 0) {
            boss->unk2B = 0;
            gCurTask->main = (void (*)()) Task_D8_8075324;
            sub_8077A04(boss->taskD0, 0);
        }
        break;
    }
    sub_8076328(boss);
}

void Task_D8_8075DA4(EggGravity *boss) {
    s32 temp_r0_2;
    u8 temp_r0;

    boss->unk30 = (u16) (boss->unk30 + 1);
    boss->unk26 = 1;
    sub_8077874(boss, boss->players[0]);
    sub_8077874(boss, boss->players[1]);
    temp_r0 = boss->unk29 - 1;
    boss->unk29 = temp_r0;
    if ((temp_r0 << 0x18) == 0) {
        gCurTask->main = (void (*)()) Task_D8_8075324;
        boss->spr80.anim = *((boss->unk23 * 4) + &gUnknown_080D5904);
        boss->spr80.variant = (u8) ((boss->unk23 * 4) + &gUnknown_080D5904)->unk2;
        boss->spr80.prevAnim = 0xFFFF;
        boss->spr80.prevVariant |= 0xFF;
        boss->spr58.anim = *((boss->unk23 * 4) + &sBoss7AnimsCockpit);
        boss->spr58.variant = (u8) ((boss->unk23 * 4) + &sBoss7AnimsCockpit)->unk2;
        boss->spr58.prevAnim = -1;
        boss->spr58.prevVariant |= 0xFF;
        boss->sprA8.anim = *((boss->unk23 * 4) + &gUnknown_080D592C);
        boss->sprA8.variant = (u8) ((boss->unk23 * 4) + &gUnknown_080D592C)->unk2;
        boss->sprA8.prevAnim = -1;
        boss->sprA8.prevVariant |= 0xFF;
        temp_r0_2 = (gPseudoRandom * 0x196225) + 0x3C6EF35F;
        gPseudoRandom = temp_r0_2;
        if ((u32) ((u32) temp_r0_2 % 10000U) <= 0xBB7U) {
            boss->unk22 ^= 1;
            boss->unk8 = (s32) (0 - boss->unk8);
        }
    }
    sub_8076328(boss);
}

void Task_D8_8075EE8(EggGravity *boss) {
    Player *temp_r1;
    Player *temp_r1_2;
    Player *temp_r1_3;
    u16 temp_r0_2;
    u8 temp_r0;
    u8 var_r2;

    temp_r0 = boss->unk2B;
    switch (temp_r0) {                              /* irregular */
    case 0x0:
        boss->unk2C = 0xCU;
        boss->unk2B = 0xA;
        var_r2 = 0;
        do {
            temp_r1 = boss->players[var_r2];
            temp_r1->moveState |= 0x08000000;
            var_r2 += 1;
        } while ((u32) var_r2 <= 1U);
        CreateScreenShake(0x800U, 0x40U, 0U, -1U, 0x91U);
        if (boss->unk23 != 0) {
            boss->unk23 = 0;
            boss->spr80.anim = gUnknown_080D5904.unk8;
            boss->spr80.variant = (u8) gUnknown_080D5904.unkA;
            boss->spr80.prevAnim = 0xFFFF;
            boss->spr80.prevVariant = 0xFF;
            boss->spr58.anim = sBoss7AnimsCockpit.unk8;
            boss->spr58.variant = (u8) sBoss7AnimsCockpit.unkA;
            boss->spr58.prevAnim = -1;
            boss->spr58.prevVariant = -1;
            boss->sprA8.anim = gUnknown_080D592C.unk8;
            boss->sprA8.variant = (u8) gUnknown_080D592C.unkA;
            boss->sprA8.prevAnim = -1;
            boss->sprA8.prevVariant = -1;
        }
        break;
    case 0xA:
        temp_r0_2 = boss->unk2C - 1;
        boss->unk2C = temp_r0_2;
        if ((temp_r0_2 << 0x10) == 0) {
            boss->unk2B = 0x64;
            if (boss->unk23 != 0) {
                sub_8077954(boss, 9);
            } else {
                sub_8077954(boss, 6);
            }
        }
        break;
    case 0x64:
        boss->unk2B = 0;
        boss->unk30 = 0xB4;
        m4aSongNumStart(0x221U);
        gCurTask->main = (void (*)()) Task_D8_8076050;
        break;
    }
    temp_r1_2 = boss->players[0];
    temp_r1_2->moveState |= 0x08000000;
    temp_r1_3 = boss->players[1];
    temp_r1_3->moveState |= 0x08000000;
    sub_8076328(boss);
}

void Task_D8_8076050(EggGravity *boss) {
    u32 sp10;
    u32 sp14;
    s32 temp_r1_2;
    s32 temp_r2;
    s32 temp_r3_3;
    s32 var_r1;
    u16 *temp_r3;
    u16 temp_r2_2;
    u16 temp_r3_2;
    u16 temp_r4;
    u16 temp_r5;
    u8 *temp_r0;
    u8 temp_r0_2;
    u8 temp_r1;
    u8 var_r8;

    temp_r1 = boss->unk2B;
    switch (temp_r1) {                              /* irregular */
    case 0xC8:
        boss->unk2B = 0;
        boss->unk2C = 0U;
        boss->unk30 = 0x78;
        m4aSongNumStart(0x221U);
        gCurTask->main = (void (*)()) Task_D8_8076218;
        break;
    case 0x0:
        boss->unk32 = 0xFA00U;
        boss->unk2C = (u16) temp_r1;
        boss->unk2B = 0xA;
        break;
    case 0xA:
        boss->unk32 = (u16) (boss->unk32 + 0x40);
        temp_r2 = boss->unk44 + (s16) boss->unk32;
        boss->unk44 = temp_r2;
        boss->unk2C = (u16) (boss->unk2C + 1);
        sp10 = (u32) ((boss->qUnk0 + boss->unk14) << 8) >> 0x10;
        sp14 = (u32) ((boss->qUnk4 + temp_r2) << 8) >> 0x10;
        var_r8 = 0;
        temp_r0 = &boss->filler30[4];
        do {
            temp_r1_2 = var_r8 * 2;
            temp_r3 = temp_r0 + temp_r1_2;
            temp_r2_2 = *temp_r3;
            if (1 & var_r8) {
                var_r1 = temp_r2_2 - 0x40;
            } else {
                var_r1 = temp_r2_2 + 0x40;
            }
            *temp_r3 = var_r1 & 0x3FF;
            temp_r4 = *(temp_r0 + temp_r1_2);
            temp_r5 = (s16) sp10 + ((s32) (gSineTable[temp_r4 + 0x100] * 5) >> 0xC);
            temp_r3_2 = (s16) sp14 + ((s32) (gSineTable[temp_r4] * 5) >> 0xC);
            if (1 & boss->unk2C) {
                if (var_r8 & 1) {
                    sub_8079758(7U, (s16) temp_r5, (s16) temp_r3_2, 0x200, (u16) (s32) temp_r4, 0x14U, 0, boss->vram48);
                }
            } else {
                temp_r3_3 = var_r8 & 1;
                if (temp_r3_3 == 0) {
                    sub_8079758(7U, (s16) temp_r5, (s16) temp_r3_2, 0x200, (u16) (s32) temp_r4, 0x14U, (s16) temp_r3_3, boss->vram48);
                }
            }
            temp_r0_2 = var_r8 + 1;
            var_r8 = temp_r0_2;
        } while ((u32) temp_r0_2 <= 3U);
        if (!(0x3F & boss->unk2C)) {
            m4aSongNumStart(0x221U);
        }
        if ((s32) ((s32) boss->unk44 >> 8) > 0x12C) {
            boss->unk2B = 0xC8;
        }
        break;
    }
    sub_8076328(boss);
}

void Task_D8_8076218(EggGravity *boss) {
    s32 temp_r1;
    u16 temp_r0;
    u16 temp_r2;
    u16 var_r1;
    void *temp_r3;

    temp_r1 = (s32) boss << 0x12;
    temp_r3 = boss + temp_r1;
    if (2 & temp_r3->unk30) {
        var_r1 = 0xFEFF & gDispCnt;
    } else {
        var_r1 = gDispCnt | 0x100;
    }
    gDispCnt = var_r1;
    temp_r0 = temp_r3->unk30 - 1;
    temp_r3->unk30 = temp_r0;
    temp_r2 = temp_r0;
    if (temp_r2 == 0) {
        gDispCnt &= 0xFEFF;
        gCamera.maxY = 0x3D4;
        (boss->taskD0->data + temp_r1)->unkB2 = 1;
        temp_r3->unk28 = 1;
        temp_r3->unk30 = temp_r2;
        gCurTask->main = (void (*)()) Task_D8_80762B4;
    }
}

void Task_D8_80762B4(EggGravity *boss) {
    s8 temp_r1;
    u16 temp_r0;
    u16 var_r0;

    temp_r0 = boss->unk30;
    switch (temp_r0) {                              /* irregular */
    case 0:
        sub_8078E34(&subroutine_arg0, &EnablePlayerMovement, (s32) (boss->qUnk0 + boss->unk14) >> 8, 0x3AE, (s32) (boss->qUnk0 + boss->unk14) >> 8, 0x3B6);
        var_r0 = 1;
block_6:
        boss->unk30 = var_r0;
        return;
    case 1:
        temp_r1 = boss->players[0]->moveState & 0x08000000;
        if (temp_r1 == 0) {
            *boss->bossPhase = temp_r1;
            var_r0 = 0x64;
            goto block_6;
        }
        break;
    }
}

void sub_8076328(EggGravity *boss) {
    Sprite *temp_r7;
    Sprite *temp_r7_2;
    Sprite *temp_r7_3;
    s16 temp_r5;
    s32 temp_r0_2;
    s32 temp_r1_2;
    s32 temp_r4;
    s32 var_r0;
    s8 temp_r0_3;
    u16 temp_r1;
    u32 temp_r0;
    u8 var_r1;

    temp_r1 = boss->taskD0->data;
    temp_r7 = &boss->spr58;
    temp_r0 = (boss->qUnk0 + boss->unk14) << 8;
    temp_r1_2 = (s32) temp_r0 >> 0x10;
    var_r0 = temp_r1_2 + 0xFFFFFCA0;
    if (var_r0 < 0) {
        var_r0 = temp_r1_2 + 0xFFFFFCAF;
    }
    temp_r0_2 = var_r0 >> 4;
    var_r1 = (u8) temp_r0_2;
    temp_r0_3 = (s8) temp_r0_2;
    if ((s32) temp_r0_3 < 0) {
        var_r1 = 0;
    } else if ((s32) temp_r0_3 > 0x14) {
        var_r1 = 0x14;
    }
    temp_r5 = (s16) (temp_r0 >> 0x10);
    boss->spr58.x = temp_r5 - gCamera.x;
    temp_r4 = (s32) ((temp_r1->unkC8 + *(temp_r1 + 4 + ((s32) (var_r1 << 0x18) >> 0x16))) << 8) >> 0x10;
    boss->spr58.y = ((temp_r4 + ((s32) boss->unk3C >> 8)) - gCamera.y) + ((s32) boss->unk44 >> 8);
    UpdateSpriteAnimation(temp_r7);
    DisplaySprite(temp_r7);
    boss->qUnk4 = (temp_r4 + ((s32) boss->unk3C >> 8)) << 8;
    temp_r7_2 = &boss->spr80;
    boss->spr80.x = temp_r5 - gCamera.x;
    boss->spr80.y = ((temp_r4 + ((s32) boss->unk3C >> 8)) - gCamera.y) + ((s32) boss->unk44 >> 8);
    UpdateSpriteAnimation(temp_r7_2);
    DisplaySprite(temp_r7_2);
    temp_r7_3 = temp_r7_2 + 0x28;
    temp_r7_3->x = temp_r5 - gCamera.x;
    temp_r7_3->y = (temp_r4 - gCamera.y) + ((s32) boss->unk44 >> 8);
    UpdateSpriteAnimation(temp_r7_3);
    DisplaySprite(temp_r7_3);
}

void sub_8076420(EggGravity *boss) {
    Player **temp_r2;
    Player *temp_r1;
    Player *temp_r4;
    Sprite *temp_r7;
    u8 var_r6;
    u8 var_r8;

    temp_r7 = &boss->sprA8;
    var_r8 = 0;
    if (boss->unk21 == 0) {
        return;
    }
    temp_r2 = boss->players;
    if (!(temp_r2[gStageData.playerIndex]->moveState & 0x100)) {
        sub_8004D68((gCamera.x + temp_r7->x) << 8, (gCamera.y + temp_r7->y) << 8);
        temp_r1 = &gPlayers[gStageData.playerIndex];
        if (((((u32) (temp_r1->unk2A << 0x1C) >> 0x1C) == 1) || (((u32) (gPlayers[(u32) (temp_r1->unk2B << 0x1E) >> 0x1E].unk2A << 0x1C) >> 0x1C) == 1)) && (IsCollidingWithCheese(temp_r7) == 1)) {
            var_r8 = 1;
        }
        var_r6 = 0;
        do {
            temp_r4 = temp_r2[var_r6];
            if ((sub_802C080(temp_r4) == 0) && (boss->sprA8.hitboxes[0].index != -1)) {
                if (sub_8020E3C(temp_r7, (s32) (boss->qUnk0 + boss->unk14) >> 8, (s32) boss->qUnk4 >> 8, 0, temp_r4) == 1) {
                    var_r8 = 1;
                    sub_80044CC(temp_r4);
                } else {
                    sub_8020CE0(temp_r7, (s32) (boss->qUnk0 + boss->unk14) >> 8, (s32) boss->qUnk4 >> 8, 0, temp_r4);
                }
            }
            var_r6 += 1;
        } while ((u32) var_r6 <= 1U);
        if (var_r8 == 1) {
            boss->unk27 = var_r8;
        }
    }
}

void sub_8076550(EggGravity *boss, EggGravity4C *strc4C) {
    u8 var_r3;
    u8 var_r3_2;

    TaskCreate((void (*)(EggGravity104 *)) Task_4C_8076618, 0x4CU, 0x2200U, 0U, NULL);
    strc4C->boss = boss;
    var_r3 = 0;
    do {
        strc4C->unk0[var_r3] = 0;
        strc4C->players[var_r3] = boss->players[var_r3];
        strc4C->unk4[var_r3] = 1;
        var_r3 += 1;
    } while ((u32) var_r3 <= 1U);
    var_r3_2 = 0;
    do {
        strc4C->unk8[var_r3_2].x = (s16) *gUnknown_080D59EC[var_r3_2];
        strc4C->unk8[var_r3_2].y = (s16) *((var_r3_2 * 4) + &gUnknown_080D59EC[0][1]);
        var_r3_2 += 1;
    } while ((u32) var_r3_2 <= 3U);
    strc4C->s.tiles = boss->vram4C;
    strc4C->s.anim = 0x3C2;
    strc4C->s.variant = 0;
    strc4C->s.oamFlags = 0x200;
    strc4C->s.animCursor = 0;
    strc4C->s.qAnimDelay = 0;
    strc4C->s.prevVariant = 0xFF;
    strc4C->s.animSpeed = 0x10;
    strc4C->s.palId = 0;
    strc4C->s.hitboxes[0].index = -1;
    strc4C->s.frameFlags = 0;
    UpdateSpriteAnimation(&strc4C->s);
}

void Task_4C_8076618(EggGravity4C *strc4C) {
    void *sp0;
    Sprite *sp4;
    u8 *sp8;
    EggGravity *temp_r1_3;
    Player *temp_r4;
    Player *temp_r4_2;
    Player *temp_r8;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 temp_r3;
    s32 var_r0_2;
    s32 var_r1;
    s32 var_r1_2;
    s32 var_r2;
    s32 var_r2_2;
    s32 var_r7;
    u16 *temp_r1_2;
    u16 temp_r0_2;
    u32 temp_r1_4;
    u32 temp_r2;
    u32 var_r0;
    u8 *temp_r0;
    u8 temp_r0_5;
    u8 temp_r1;
    u8 var_r7_2;
    u8 var_sl;

    sp0 = (void *) strc4C->boss->taskD0->data;
    sp4 = &strc4C->s;
    var_sl = 0;
loop_1:
    temp_r4 = strc4C->players[var_sl];
    temp_r8 = &gPlayers[(u32) (temp_r4->unk2B << 0x1E) >> 0x1E];
    if (sub_802C080(temp_r4) != 0) {

    } else {
        temp_r0 = &strc4C->unk0[var_sl];
        temp_r1 = *temp_r0;
        sp8 = temp_r0;
        switch (temp_r1) {                          /* switch 1; irregular */
        case 10:                                    /* switch 1 */
            temp_r1_2 = &strc4C->unk4[var_sl];
            temp_r0_2 = *temp_r1_2 - 1;
            *temp_r1_2 = temp_r0_2;
            if ((temp_r0_2 << 0x10) == 0) {
                *sp8 = 0;
                temp_r1_3 = strc4C->boss;
                if (temp_r1_3->unk21 != 0) {
                    var_r0 = temp_r4->moveState;
                    goto block_56;
                }
                if (temp_r1_3->unk28 != 0) {
                    var_r0 = temp_r4->moveState & 0xFFFEFFFF;
block_56:
                    temp_r4->moveState = var_r0 & 0xF7FFFFFF;
                }
            }
            break;
        case 0:                                     /* switch 1 */
            temp_r1_4 = temp_r4->moveState;
            if (0x08000000 & temp_r1_4) {

            } else {
                temp_r0_3 = temp_r4->qWorldY;
                temp_r3 = temp_r0_3 >> 8;
                if (temp_r3 <= 0x1B7) {

                } else {
                    temp_r0_4 = temp_r4->qWorldX;
                    if ((s32) (temp_r0_4 >> 8) <= 0x407) {
                        var_r7 = 1;
                        if (temp_r3 <= 0x247) {
                            var_r7 = 0;
                        }
                    } else {
                        var_r7 = 3;
                        if (temp_r3 <= 0x247) {
                            var_r7 = 2;
                        }
                    }
                    var_r2 = 0;
                    switch (var_r7) {               /* switch 2; irregular */
                    case 0:                         /* switch 2 */
                        if (((s32) (temp_r0_4 >> 8) <= 0x360) && ((s32) (temp_r0_3 >> 8) <= 0x247)) {
                            temp_r4->qWorldX = 0x36000;
                            var_r1 = temp_r4->moveState | 0x10000;
block_29:
                            temp_r4->moveState = var_r1 & ~1;
                            goto block_38;
                        }
                    default:                        /* switch 2 */
block_36:
                        if (var_r2 == 0) {

                        } else {
block_38:
                            *sp8 = 0xA;
                            strc4C->unk4[var_sl] = 4;
                            temp_r4->qSpeedAirY = 0;
                            var_r1_2 = 0x24800 - temp_r4->qWorldY;
                            var_r2_2 = var_r1_2;
                            if (var_r1_2 < 0) {
                                var_r2_2 = 0 - var_r1_2;
                            }
                            if (var_r2_2 > 0x1FFF) {
                                if (var_r1_2 < 0) {
                                    var_r1_2 = -0x2000;
                                } else {
                                    var_r1_2 = 0x2000;
                                }
                            }
                            temp_r4->qWorldY = var_r1_2 + 0x24800;
                            temp_r4->moveState |= 0x08000000;
                            if ((u32) var_r7 <= 1U) {
                                sp0->unkB4 = 0x14;
                                temp_r4->qSpeedAirX = 0x200;
                                temp_r4->qSpeedGround = 0x200;
                                var_r0_2 = (s8) (u8) temp_r4->spriteOffsetX + 0x360;
                            } else {
                                sp0->unkB4 = 0;
                                temp_r4->qSpeedAirX = -0x200;
                                temp_r4->qSpeedGround = -0x200;
                                var_r0_2 = 0x4AF - temp_r4->spriteOffsetX;
                            }
                            temp_r4->qWorldX = var_r0_2 << 8;
                            if (temp_r4->moveState & 0x800000) {
                                sub_8016F28(temp_r4);
                                temp_r4->unk2C = (u8) (temp_r4->unk2C & ~4);
                                Player_8005528(temp_r4);
                                temp_r8->qSpeedAirX = (s16) (u16) temp_r4->qSpeedAirX;
                                temp_r8->qSpeedAirY = (s16) (u16) temp_r4->qSpeedAirY;
                                temp_r8->qSpeedGround = (s16) (u16) temp_r4->qSpeedGround;
                                temp_r8->qWorldX = temp_r4->qWorldX;
                                temp_r8->qWorldY = temp_r4->qWorldY;
                                temp_r2 = temp_r8->moveState & 0xFFFEFFFF;
                                temp_r8->moveState = temp_r2;
                                temp_r8->moveState = temp_r2 | (temp_r4->moveState & 0x10000);
                                Player_8005528(temp_r8);
                            }
                            if ((u32) (u16) (temp_r4->charFlags.anim2 + 0xFFFFFDFE) <= 1U) {
                                temp_r4->unk148.arr_u8[0] = 0x80 - temp_r4->unk148.arr_u8[0];
                                temp_r4->qSpeedAirX = 0 - temp_r4->qSpeedAirX;
                                Player_8005528(temp_r4);
                            }
                        }
                        break;
                    case 1:                         /* switch 2 */
                        if (((s32) (temp_r0_4 >> 8) <= 0x360) && ((s32) (temp_r0_3 >> 8) > 0x248)) {
                            temp_r4->qWorldX = 0x36000;
                            var_r1 = temp_r4->moveState & 0xFFFEFFFF;
                            goto block_29;
                        }
                        goto block_36;
                    case 2:                         /* switch 2 */
                        if (((s32) (temp_r0_4 >> 8) > 0x4AE) && ((s32) (temp_r0_3 >> 8) <= 0x247)) {
                            temp_r4->qWorldX = 0x4AF00;
                            temp_r4->moveState |= 0x10001;
                            goto block_38;
                        }
                        goto block_36;
                    case 3:                         /* switch 2 */
                        if (((s32) (temp_r0_4 >> 8) > 0x4AE) && ((s32) (temp_r0_3 >> 8) > 0x248)) {
                            temp_r4->qWorldX = 0x4AF00;
                            temp_r4->moveState = 1 | (0xFFFEFFFF & temp_r1_4);
                            var_r2 = 1;
                        }
                        goto block_36;
                    }
                }
            }
            break;
        }
        strc4C->boss->unk2E[var_sl] = *sp8;
    }
    temp_r0_5 = var_sl + 1;
    var_sl = temp_r0_5;
    if ((u32) temp_r0_5 <= 1U) {
        goto loop_1;
    }
    temp_r4_2 = strc4C->players[0];
    if (((s32) ((s32) temp_r4_2->qWorldY >> 8) > 0x384) && !(temp_r4_2->moveState & 0x100)) {
        TaskDestroy(gCurTask);
    }
    var_r7_2 = 0;
    do {
        sp4->x = (u16) strc4C->unk8[var_r7_2].x - gCamera.x;
        sp4->y = (u16) strc4C->unk8[var_r7_2].y - gCamera.y;
        DisplaySprite(sp4);
        var_r7_2 += 1;
    } while ((u32) var_r7_2 <= 3U);
}

void sub_80769C4(u8 *param0, s16 param1) {
    s16 temp_r4;
    u16 temp_r3;
    u8 temp_r1;

    temp_r3 = gStageData.taskBoss->data;
    temp_r4 = 0x7F & param0->unk2;
    if (temp_r4 == 1) {
        temp_r3->unk21 = 0;
        temp_r1 = temp_r3->unkD4;
        if (temp_r1 == 0) {
            temp_r3->unk14 = (s32) ((param0->unk3 | (param0->unk4 << 8)) << 8);
            temp_r3->unk2B = temp_r1;
            temp_r3->unk2C = temp_r4;
            temp_r3->unkD4 = 1U;
            gStageData.taskBoss->main = (void (*)()) Task_D8_8075EE8;
        }
    } else if (((s32) temp_r4 >= 1) && ((s32) temp_r4 <= 4) && ((s32) temp_r4 >= 3) && (temp_r3->unk26 == 0)) {
        temp_r3->unk27 = 1;
    }
}

Task *sub_8076A54(EggGravity *boss, EggGravity100 *strc100) {
    Task *temp_r8;
    s32 *temp_r0;
    u8 *temp_r0_3;
    u8 var_r2;
    void *temp_r0_2;
    void *temp_r0_4;

    temp_r8 = TaskCreate((void (*)(EggGravity104 *)) Task_100_8076B58, 0x100U, 0x2200U, 0U, TaskDestructor_100_80779EC);
    strc100->unkFC = boss;
    strc100->qUnkC8 = boss->qUnk0;
    strc100->sprCC.tiles = (u8 *) boss->qUnk4;
    strc100->boss = NULL;
    var_r2 = 0;
    do {
        strc100->unk4[var_r2] = 0;
        strc100->unk58[var_r2] = 0;
        var_r2 += 1;
    } while ((u32) var_r2 <= 0x14U);
    strc100->unkF4 = (Player *) boss->players[0];
    strc100->unkF8 = (Player *) boss->players[1];
    strc100->unkB0 = 0;
    temp_r0 = &strc100->unkB0 + 4;
    strc100->fillerB4[0] = 0;
    temp_r0_2 = temp_r0 + 1;
    temp_r0->unk1 = 0;
    temp_r0_2->unk1 = 0;
    (temp_r0_2 + 1)->unk1 = 0;
    *((&strc100->fillerD0[4] + 4) - 0x44) = 0xFF;
    temp_r0_3 = &strc100->fillerB4[5];
    strc100->fillerB4[5] = 0;
    strc100->fillerB4[6] = 0;
    temp_r0_3[1].unk1 = 0;
    temp_r0_3[1].unkA = 0;
    temp_r0_4 = (&temp_r0_3[1].unk1 + 9) - 8;
    temp_r0_4->unk0 = 0;
    temp_r0_4->unk4 = 0;
    strc100->sprCC.frameNum = (u32) VramMalloc(4U);
    strc100->sprCC.x = 0x4EA;
    strc100->sprCC.numSubFrames = 0;
    strc100->sprCC.prevAnim = 0x5C0;
    strc100->sprCC.y = 0;
    strc100->unkE2 = 0;
    strc100->sprCC.palId = -1;
    strc100->unkE8 = 0x10;
    strc100->unkEB = 0;
    strc100->sprCC.hitboxes[0].b = -1;
    strc100->unkD4 = 0x1000;
    UpdateSpriteAnimation((Sprite *) &strc100->sprCC.frameNum);
    return temp_r8;
}

void Task_100_8076B58(EggGravity100 *strc100) {
    u32 *sp0;
    Player *temp_r0_2;
    Player *temp_r1_2;
    Player *temp_r1_3;
    Player *temp_r1_4;
    Player *temp_r4;
    Player *temp_r5;
    s32 temp_r1;
    s32 temp_r1_5;
    s32 var_r0;
    s32 var_r2;
    u16 var_r4;
    u8 temp_r0;
    u8 temp_r6;
    u8 var_r5;
    u8 var_r5_2;
    u8 var_sb;

    sp0 = &strc100->sprCC.frameNum;
    strc100->fillerB4[3] = (strc100->fillerB4[3] + 1) & 3;
    if ((strc100->unkFC->unk21 != 0) && (strc100->fillerB4[1] != 0)) {
        var_sb = 0;
        do {
            temp_r5 = *((var_sb * 4) + &strc100->fillerD0[4]);
            if (sub_802C080(temp_r5) == 0) {
                var_r2 = 0;
                temp_r1 = (s32) temp_r5->qWorldY >> 8;
                if ((temp_r1 > 0x2C8) || (temp_r1 <= 0x1C7)) {
                    var_r2 = 1;
                }
                if (((s32) temp_r5->framesInvulnerable > 0) || ((s32) temp_r5->framesInvincible > 0)) {
                    var_r2 = 0;
                }
                if (var_r2 != 0) {
                    temp_r1_2 = strc100->unkF4;
                    if (temp_r1_2->moveState & 0xC00000) {
                        sub_8016F28(temp_r1_2);
                        temp_r1_3 = strc100->unkF4;
                        temp_r1_3->unk2C = (u8) (temp_r1_3->unk2C & ~4);
                    }
                    temp_r1_4 = strc100->unkF8;
                    if (temp_r1_4->moveState & 0xC00000) {
                        sub_8016F28(temp_r1_4);
                        temp_r0_2 = strc100->unkF8;
                        temp_r0_2->unk2C = (u8) (temp_r0_2->unk2C & ~4);
                        Player_8005380(strc100->unkF8);
                    }
                    Call__Player_8014550(temp_r5);
                }
            }
            temp_r0 = var_sb + 1;
            var_sb = temp_r0;
        } while ((u32) temp_r0 <= 1U);
    }
    temp_r6 = strc100->fillerB4[2];
    if (temp_r6 != 0) {
        var_r5 = 0;
        do {
            temp_r4 = *((var_r5 * 4) + &strc100->fillerD0[4]);
            temp_r4->moveState &= 0xFFFEFFFF;
            ResolvePlayerSpriteCollision((Sprite *) sp0, temp_r4);
            sub_8016F28(temp_r4);
            SetPlayerCallback(temp_r4, Player_800E67C);
            temp_r4->unk2C = (u8) (temp_r4->unk2C & ~4);
            temp_r4->moveState &= 0xFFFFFEFF;
            temp_r1_5 = temp_r4->qWorldX;
            if (temp_r1_5 > 0x369FF) {
                var_r0 = temp_r1_5;
                if (var_r0 > 0x4A500) {
                    var_r0 = 0x4A500;
                }
            } else {
                var_r0 = 0x36A00;
            }
            temp_r4->qWorldX = var_r0;
            temp_r4->qSpeedAirX = 0;
            var_r5 += 1;
        } while ((u32) var_r5 <= 1U);
        m4aSongNumStart(0x236U);
        TaskDestroy(gCurTask);
        return;
    }
    sub_8076DD4(strc100);
    sub_80772F0(strc100, gStageData.playerIndex);
    if (gStageData.gameMode != 5) {
        sub_80772F0(strc100, (u8) ((u32) (gPlayers[gStageData.playerIndex].unk2B << 0x1E) >> 0x1E));
    }
    strc100->unk4[0] = (s32) temp_r6;
    strc100->unk4[0x14] = (s32) temp_r6;
    if (!(2 & strc100->fillerB4[3]) || (strc100->unkFC->unk21 != 0)) {
        var_r4 = (((s32) strc100->qUnkC8 >> 8) - gCamera.x) - 0xA0;
        var_r5_2 = 0;
        do {
            strc100->sprCC.oamFlags = (s16) var_r4;
            strc100->sprCC.qAnimDelay = ((s32) &strc100->sprCC.tiles[strc100->unk4[var_r5_2]] >> 8) - gCamera.y;
            DisplaySprite((Sprite *) &strc100->sprCC.frameNum);
            var_r5_2 += 1;
            var_r4 = (u16) ((u32) ((var_r4 << 0x10) + 0x100000) >> 0x10);
        } while ((u32) var_r5_2 <= 0x14U);
    }
}

void sub_8076DD4(EggGravity100 *arg0) {
    s32 sp0;
    s8 *sp4;
    u8 *sp8;
    s32 *spC;
    s32 sp10;
    void *sp14;
    s32 sp18;
    s32 *temp_r1_2;
    s32 *temp_r2_2;
    s32 *temp_r2_3;
    s32 *var_r2_2;
    s32 temp_r0;
    s32 temp_r0_4;
    s32 temp_r1_3;
    s32 temp_r2;
    s32 temp_r3;
    s32 temp_r5_2;
    s32 temp_r5_3;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 var_r0_4;
    s32 var_r1;
    s32 var_r5;
    s32 var_r6;
    s32 var_r6_2;
    u16 temp_r3_2;
    u16 temp_r3_3;
    u16 temp_r3_4;
    u16 temp_r3_5;
    u16 var_r4;
    u16 var_r4_2;
    u16 var_r4_3;
    u16 var_r4_4;
    u32 *temp_r2_4;
    u32 *temp_r2_5;
    u32 *temp_r4;
    u32 temp_r0_2;
    u32 temp_r0_3;
    u32 temp_r0_5;
    u32 temp_r0_6;
    u8 temp_r1_4;
    u8 var_r2;
    u8 var_r2_3;
    u8 var_r2_4;
    u8 var_r2_5;
    u8 var_r2_6;
    u8 var_r3;
    void *temp_r1;
    void *temp_r5;

    var_r2 = 0;
    if (arg0->unk58[0] != 0) {
        sp0 = 0;
    } else {
loop_2:
        var_r2 += 1;
        if ((u32) var_r2 <= 0x14U) {
            if (*(arg0 + 0x58 + (var_r2 * 4)) != 0) {
                sp0 = (s32) var_r2;
            } else {
                goto loop_2;
            }
        }
    }
    if ((u32) (u8) (var_r2 - 1) > 0x12U) {
        var_r3 = 0;
        do {
            *(arg0 + 4 + (var_r3 * 4)) = 0;
            var_r3 += 1;
        } while ((u32) var_r3 <= 0x14U);
        return;
    }
    temp_r3 = sp0 * 4;
    temp_r1 = arg0 + 4;
    arg0->unkBC = (s32) *(temp_r1 + temp_r3);
    temp_r5 = arg0 + 0x58;
    sp14 = temp_r1;
    spC = arg0 + 0xBC;
    sp4 = arg0 + 0xB5 + 2;
    sp8 = temp_r1 + 0xB4;
    sp10 = sp0 - 1;
    sp18 = sp0 + 1;
    if (arg0->fillerB4[5] != 0) {
        var_r5 = 0;
loop_11:
        temp_r2 = arg0->qUnkC4;
        if (temp_r2 < 0) {
            var_r1 = arg0->fillerB4[5] * 4;
            if (var_r5 < (s32) *(sp14 + var_r1)) {
                goto block_15;
            }
        } else {
            var_r1 = arg0->fillerB4[5] * 4;
            if (var_r5 > (s32) *(sp14 + var_r1)) {
block_15:
                temp_r1_2 = temp_r5 + var_r1;
                *temp_r1_2 += temp_r2;
                var_r5 += *(temp_r5 + (arg0->fillerB4[5] * 4));
                if (1 != 0) {
                    goto loop_11;
                }
            }
        }
        arg0->fillerB4[5] = 0;
    }
    temp_r2_2 = temp_r5 + temp_r3;
    temp_r1_3 = *temp_r2_2 + arg0->qUnkC4;
    *temp_r2_2 = temp_r1_3;
    temp_r2_3 = sp14 + temp_r3;
    *temp_r2_3 += temp_r1_3;
    if (*sp4 != 0) {
        if ((s32) arg0->qUnkC4 < 0) {
            if ((s32) *((*sp4 * 4) + temp_r5) < 0) {
                *sp4 = 0;
            }
        } else if ((s32) *((*sp4 * 4) + temp_r5) > 0) {
            *sp4 = 0;
        }
    }
    temp_r1_4 = *sp8;
    if (temp_r1_4 != 0) {
        temp_r0 = *spC;
        if (temp_r0 < 0) {
            if ((s32) *(sp14 + temp_r3) >= 0) {
                temp_r2_4 = temp_r5 + temp_r3;
                temp_r0_2 = *temp_r2_4;
                *temp_r2_4 = (u32) ((s32) (temp_r0_2 + (temp_r0_2 >> 0x1F)) >> 1);
                arg0->qUnkC4 = 0 - arg0->qUnkC4;
                *sp8 -= 1;
            }
        } else if ((temp_r0 != 0) && ((s32) *(sp14 + temp_r3) < 0)) {
            temp_r2_5 = temp_r5 + temp_r3;
            temp_r0_3 = *temp_r2_5;
            *temp_r2_5 = (u32) ((s32) (temp_r0_3 + (temp_r0_3 >> 0x1F)) >> 1);
            arg0->qUnkC4 = 0 - arg0->qUnkC4;
            *sp8 -= 1;
        }
    } else {
        temp_r0_4 = *spC;
        if (temp_r0_4 < 0) {
            var_r2_2 = sp14 + temp_r3;
            if ((s32) *var_r2_2 >= 0) {
                goto block_35;
            }
        } else if (temp_r0_4 != 0) {
            var_r2_2 = sp14 + temp_r3;
            if ((s32) *var_r2_2 < 0) {
block_35:
                *(temp_r5 + temp_r3) = (s32) temp_r1_4;
                *var_r2_2 = (s32) temp_r1_4;
            }
        }
    }
    temp_r4 = sp14 + temp_r3;
    *spC -= *temp_r4;
    if ((s32) arg0->qUnkC4 < 0) {
        temp_r3_2 = (u16) (0x200 / sp0);
        temp_r0_5 = *temp_r4;
        temp_r5_2 = (s32) (temp_r0_5 + (temp_r0_5 >> 0x1F)) >> 1;
        var_r6 = temp_r5_2;
        if (temp_r5_2 < 0) {
            var_r6 = 0 - temp_r5_2;
        }
        var_r2_3 = (u8) sp10;
        var_r4 = temp_r3_2;
        if (var_r2_3 != 0) {
            do {
                var_r0 = var_r6 * gSineTable[var_r4 + 0x100];
                if (var_r0 < 0) {
                    var_r0 += 0x3FFF;
                }
                *(sp14 + (var_r2_3 * 4)) = temp_r5_2 + (var_r0 >> 0xE);
                var_r2_3 -= 1;
                var_r4 += temp_r3_2;
            } while (var_r2_3 != 0);
        }
        temp_r3_3 = (u16) (0x200 / (s32) (u8) (0x14 - sp0));
        var_r2_4 = (u8) sp18;
        var_r4_2 = temp_r3_3;
        if ((u32) var_r2_4 > 0x13U) {
            return;
        }
        do {
            var_r0_2 = var_r6 * gSineTable[var_r4_2 + 0x100];
            if (var_r0_2 < 0) {
                var_r0_2 += 0x3FFF;
            }
            *(sp14 + (var_r2_4 * 4)) = temp_r5_2 + (var_r0_2 >> 0xE);
            var_r2_4 += 1;
            var_r4_2 += temp_r3_3;
        } while ((u32) var_r2_4 <= 0x13U);
        return;
    }
    temp_r3_4 = (u16) (0x200 / sp0);
    temp_r0_6 = *temp_r4;
    temp_r5_3 = (s32) (temp_r0_6 + (temp_r0_6 >> 0x1F)) >> 1;
    var_r6_2 = temp_r5_3;
    if (temp_r5_3 < 0) {
        var_r6_2 = 0 - temp_r5_3;
    }
    var_r2_5 = (u8) sp10;
    var_r4_3 = 0x200 - temp_r3_4;
    if (var_r2_5 != 0) {
        do {
            var_r0_3 = var_r6_2 * gSineTable[var_r4_3 + 0x100];
            if (var_r0_3 < 0) {
                var_r0_3 += 0x3FFF;
            }
            *(sp14 + (var_r2_5 * 4)) = temp_r5_3 + (var_r0_3 >> 0xE);
            var_r2_5 -= 1;
            var_r4_3 -= temp_r3_4;
        } while (var_r2_5 != 0);
    }
    temp_r3_5 = (u16) (0x200 / (s32) (u8) (0x14 - sp0));
    var_r2_6 = (u8) sp18;
    var_r4_4 = 0x200 - temp_r3_5;
    if ((u32) var_r2_6 <= 0x13U) {
        do {
            var_r0_4 = var_r6_2 * gSineTable[var_r4_4 + 0x100];
            if (var_r0_4 < 0) {
                var_r0_4 += 0x3FFF;
            }
            *(sp14 + (var_r2_6 * 4)) = temp_r5_3 + (var_r0_4 >> 0xE);
            var_r2_6 += 1;
            var_r4_4 -= temp_r3_5;
        } while ((u32) var_r2_6 <= 0x13U);
    }
}

u8 sub_8077174(Task *task_EggGravity100) {
    s32 *temp_r2_2;
    s32 *var_r1_2;
    s32 temp_r0;
    s32 temp_r1_2;
    s32 temp_r2;
    s32 temp_r6;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r1;
    u16 temp_r1;
    u8 var_r3;
    u8 var_r3_2;
    u8 var_r4;
    u8 var_r4_2;
    u8 var_r5;
    u8 var_sb;

    var_sb = 0;
    temp_r1 = task_EggGravity100->data;
    var_r3 = 0;
    var_r4 = 0;
    var_r5 = 0;
    temp_r0 = temp_r1 + 4;
    do {
        temp_r2 = var_r3 * 4;
        if (*(temp_r1 + 4 + temp_r2) == 0) {
            var_r4 += 1;
        }
        temp_r6 = temp_r1 + 0x58;
        if (*(temp_r1 + 0x58 + temp_r2) == 0) {
            var_r5 += 1;
        }
        var_r3 += 1;
    } while ((u32) var_r3 <= 0x14U);
    if (var_r4 == 0x15) {
        temp_r1->unkB7 = 0;
        var_sb = 1;
    } else if (var_r5 == 0x15) {
        var_r1 = 0;
        var_r3_2 = 0;
        var_r4_2 = 0;
        do {
            temp_r2_2 = temp_r0 + (var_r3_2 * 4);
            var_r0 = *temp_r2_2;
            if (var_r0 < 0) {
                var_r0 = 0 - var_r0;
            }
            if (var_r0 > var_r1) {
                var_r1 = *temp_r2_2;
                if (var_r1 < 0) {
                    var_r1 = 0 - var_r1;
                }
                var_r4_2 = var_r3_2;
            }
            var_r3_2 += 1;
        } while ((u32) var_r3_2 <= 0x14U);
        temp_r1_2 = var_r4_2 * 4;
        if ((s32) *(temp_r0 + temp_r1_2) < 0) {
            var_r1_2 = temp_r6 + temp_r1_2;
            var_r0_2 = 0x20;
        } else {
            var_r1_2 = temp_r6 + temp_r1_2;
            var_r0_2 = -0x20;
        }
        *var_r1_2 = var_r0_2;
    }
    return var_sb;
}

void sub_8077238(Task *task_EggGravity100, u8 arg1, s32 arg2, s32 arg3) {
    s32 temp_r0;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 temp_r3;
    s32 var_r0;
    s8 temp_r0_2;
    s8 temp_r1_2;
    s8 var_r1;
    u16 temp_r1;
    u8 temp_r0_3;
    u8 var_r4;

    temp_r1 = task_EggGravity100->data;
    temp_r2 = arg2 >> 8;
    var_r0 = temp_r2 + 0xFFFFFCA0;
    if (var_r0 < 0) {
        var_r0 = temp_r2 + 0xFFFFFCAF;
    }
    temp_r0 = var_r0 >> 4;
    var_r4 = (u8) temp_r0;
    temp_r0_2 = (s8) temp_r0;
    if ((s32) temp_r0_2 < 0) {
        var_r4 = 0;
    } else if ((s32) temp_r0_2 > 0x14) {
        var_r4 = 0x14;
    }
    var_r1 = 0;
    temp_r2_2 = var_r4 << 0x18;
    temp_r3 = temp_r1 + 0x58;
    do {
        temp_r1_2 = var_r1;
        if (temp_r1_2 != (s8) var_r4) {
            *(temp_r3 + (temp_r1_2 * 4)) = 0;
        }
        temp_r0_3 = temp_r1_2 + 1;
        var_r1 = (s8) temp_r0_3;
    } while ((s32) (s8) temp_r0_3 <= 0x14);
    if (arg1 != 0) {
        *(temp_r3 + (temp_r2_2 >> 0x16)) = arg3 + 1;
        temp_r1->unkC0 = -0x80;
    } else {
        *(temp_r3 + (temp_r2_2 >> 0x16)) = (0 - arg3) + 1;
        temp_r1->unkC0 = 0x80;
    }
    temp_r1->unkB7 = var_r4;
}

void sub_80772F0(EggGravity100 *strc100, u8 arg1) {
    s32 sp4;
    s32 sp8;
    s32 spC;
    s32 sp10;
    s32 sp14;
    Player *temp_r4;
    s16 temp_r3_2;
    s16 var_r1;
    s32 *temp_r0_11;
    s32 *temp_r2;
    s32 *temp_r2_4;
    s32 *temp_r2_6;
    s32 *temp_r3_3;
    s32 *temp_r3_4;
    s32 *var_r3_2;
    s32 temp_r0_10;
    s32 temp_r0_2;
    s32 temp_r1_2;
    s32 temp_r1_7;
    s32 temp_r3;
    s32 temp_r7;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 var_r0_5;
    s32 var_r0_6;
    s32 var_r1_3;
    s32 var_r1_4;
    s32 var_r2;
    s8 temp_r0_3;
    s8 temp_r0_8;
    s8 temp_r1_4;
    s8 temp_r1_5;
    s8 temp_r1_6;
    s8 temp_r2_3;
    s8 temp_r2_5;
    s8 temp_r5;
    s8 var_r1_2;
    s8 var_r1_5;
    u32 *temp_r0;
    u32 temp_r0_4;
    u32 temp_r0_5;
    u32 temp_r1_3;
    u32 temp_r2_2;
    u32 var_r3;
    u8 *temp_r0_7;
    u8 *var_r7;
    u8 temp_r0_6;
    u8 temp_r0_9;
    u8 temp_r1;
    u8 var_r0_4;

    temp_r1 = arg1;
    sp4 = (s32) temp_r1;
    temp_r0 = &strc100->sprCC.frameNum;
    temp_r4 = *(&strc100->fillerD0[4] + (temp_r1 * 4));
    spC = 0;
    sp10 = 0;
    temp_r1_2 = (s32) temp_r4->qWorldX >> 8;
    var_r0 = temp_r1_2 + 0xFFFFFCA0;
    if (var_r0 < 0) {
        var_r0 = temp_r1_2 + 0xFFFFFCAF;
    }
    temp_r0_2 = var_r0 >> 4;
    sp8 = (s32) (u8) temp_r0_2;
    temp_r0_3 = (s8) temp_r0_2;
    if ((s32) temp_r0_3 < 0) {
        sp8 = 0;
    } else if ((s32) temp_r0_3 > 0x14) {
        sp8 = 0x14;
    }
    temp_r3 = sp8 << 0x18;
    temp_r5 = (s8) sp8;
    temp_r7 = (((s32) strc100->qUnkC8 >> 8) - 0xA0) + (temp_r5 * 0x10);
    temp_r2 = strc100->unk4;
    sp14 = (s32) &strc100->sprCC.tiles[temp_r2[temp_r5]] >> 8;
    temp_r1_3 = temp_r4->moveState;
    if ((0x20 & temp_r1_3) && (temp_r4->sprColliding == temp_r0) && ((s8) strc100->fillerB4[4] == temp_r5)) {
        if (temp_r1_3 & 0x10000) {
            var_r0_2 = temp_r4->qWorldY + 0xFFFFFC00;
        } else {
            var_r0_2 = temp_r4->qWorldY + 0x400;
        }
        temp_r4->qWorldY = var_r0_2 - strc100->unkBC;
    }
    var_r1 = temp_r4->qSpeedAirY;
    if ((s32) var_r1 < 0) {
        var_r1 = 0 - var_r1;
    }
    if ((s32) var_r1 > 0x300) {
        spC = 1;
    }
    temp_r0_4 = sub_802C0D4(temp_r4);
    if (temp_r0_4 == 0) {
        temp_r0_5 = sub_8020950((Sprite *) temp_r0, temp_r7, sp14, temp_r4, (u8) temp_r0_4);
        temp_r3_2 = temp_r0_5 & 0x10000;
        if (temp_r3_2 != 0) {
            temp_r4->qWorldY += (s16) (temp_r0_5 << 8);
        } else if (0x20000 & temp_r0_5) {
            temp_r4->qWorldY = (temp_r4->qWorldY + 0xFFFFFF00) - (s16) (temp_r0_5 << 8);
            temp_r4->qSpeedAirY = temp_r3_2;
        }
    }
    if (sp4 != gStageData.playerIndex) {
        return;
    }
    if (strc100->fillerB4[6] != 0) {
        if ((s8) strc100->fillerB4[7] != 0) {
            var_r3 = 0;
            temp_r2_2 = temp_r4->moveState;
            if ((0x20 & temp_r2_2) && (temp_r4->sprColliding == temp_r0)) {
                if (strc100->unkFC->unk23 == 0) {
                    var_r3 = (u32) (0 - (temp_r2_2 & 0x10000)) >> 0x1F;
                } else if (!(temp_r2_2 & 0x10000)) {
                    var_r3 = 1;
                }
                temp_r2_3 = (s8) strc100->fillerB4[7];
                temp_r1_4 = (s8) sp8;
                if (((s32) (temp_r2_3 - 3) <= (s32) temp_r1_4) && ((s32) (temp_r2_3 + 3) >= (s32) temp_r1_4) && (var_r3 != 0) && (strc100->unkFC->unk21 != 0)) {
                    SetPlayerCallback(temp_r4, Player_80068EC);
                    temp_r4->qSpeedAirY = -0x400;
                }
            }
        }
    } else if ((temp_r4->moveState & 0x20) && (temp_r4->sprColliding == temp_r0)) {
        sp10 = 1;
    }
    if (sp10 == 0) {
        var_r7 = &strc100->fillerB4[4];
        if (((s8) strc100->fillerB4[4] != -1) && (temp_r2[(s8) strc100->fillerB4[4]] != 0)) {
            var_r1_2 = 0;
            temp_r3_3 = strc100->unk58;
            do {
                temp_r1_5 = var_r1_2;
                if (temp_r1_5 != (s8) strc100->fillerB4[4]) {
                    temp_r3_3[temp_r1_5] = 0;
                }
                temp_r0_6 = temp_r1_5 + 1;
                var_r1_2 = (s8) temp_r0_6;
            } while ((s32) (s8) temp_r0_6 <= 0x14);
            temp_r2_4 = &temp_r3_3[(s8) strc100->fillerB4[4]];
            if (*temp_r2_4 == 0) {
                if (temp_r4->moveState & 0x10000) {
                    var_r0_3 = -0x20;
                } else {
                    var_r0_3 = 0x20;
                }
                *temp_r2_4 = var_r0_3;
            }
        }
        var_r0_4 = 0xFF;
    } else {
        temp_r0_7 = &strc100->fillerB4[4];
        temp_r2_5 = (s8) strc100->fillerB4[4];
        var_r7 = temp_r0_7;
        if (temp_r2_5 == (s8) sp8) {
            if (temp_r2_5 == 0) {

            } else if (temp_r2_5 == 0x14) {

            } else {
                var_r3_2 = (temp_r0_7 - 0x5C) + (temp_r2_5 * 4);
                var_r0_5 = *var_r3_2;
                if (var_r0_5 < 0) {
                    var_r0_5 = 0 - var_r0_5;
                }
                if (var_r0_5 > 0x80) {

                } else {
                    temp_r2_6 = &temp_r2[temp_r2_5];
                    var_r1_3 = *temp_r2_6;
                    if (var_r1_3 < 0) {
                        var_r1_3 = 0 - var_r1_3;
                    }
                    if (var_r1_3 > 0xE00) {

                    } else {
                        if (*temp_r2_6 != 0) {
                            var_r0_6 = 0 - strc100->qUnkC4;
                            goto block_80;
                        }
                        if (temp_r4->moveState & 0x10000) {
                            *var_r3_2 = -0x400;
                            strc100->qUnkC4 = 0x80;
                        } else {
                            *var_r3_2 = 0x400;
                            strc100->qUnkC4 = -0x80;
                        }
                    }
                }
            }
        } else {
            if (temp_r2_5 != -1) {
                var_r1_4 = temp_r2[(s8) strc100->fillerB4[4]];
                if (var_r1_4 < 0) {
                    var_r1_4 = 0 - var_r1_4;
                }
                if (var_r1_4 > 0xE00) {
                    goto block_64;
                }
                goto block_65;
            }
block_64:
            if (spC != 0) {
block_65:
                temp_r0_8 = (s8) sp8;
                if ((temp_r0_8 != 0) && (temp_r0_8 != 0x14)) {
                    var_r1_5 = 0;
                    temp_r3_4 = strc100->unk58;
                    do {
                        temp_r1_6 = var_r1_5;
                        if (temp_r1_6 != temp_r0_8) {
                            temp_r3_4[temp_r1_6] = 0;
                        }
                        temp_r0_9 = temp_r1_6 + 1;
                        var_r1_5 = (s8) temp_r0_9;
                    } while ((s32) (s8) temp_r0_9 <= 0x14);
                    if (spC == 0) {
                        temp_r1_7 = temp_r3 >> 0x16;
                        var_r2 = *(temp_r2 + temp_r1_7);
                        if (var_r2 < 0) {
                            var_r2 = 0 - var_r2;
                        }
                        if (var_r2 > 0xDFF) {
                            goto block_75;
                        }
                        *(temp_r3_4 + temp_r1_7) = 0x400;
                    } else {
block_75:
                        temp_r0_10 = temp_r3 >> 0x16;
                        *(temp_r3_4 + temp_r0_10) = *(temp_r0_10 + &gUnknown_080D5998) + 1;
                    }
                    strc100->fillerB4[5] = subroutine_arg0.unk8;
                    if (temp_r4->moveState & 0x10000) {
                        temp_r0_11 = temp_r3_4 + (temp_r3 >> 0x16);
                        *temp_r0_11 = 0 - *temp_r0_11;
                        strc100->qUnkC4 = 0x80;
                    } else {
                        var_r0_6 = -0x80;
                        var_r3_2 = &strc100->qUnkC4;
block_80:
                        *var_r3_2 = var_r0_6;
                    }
                }
            }
        }
        var_r0_4 = subroutine_arg0.unk8;
    }
    *var_r7 = var_r0_4;
}

void Task_D8_EggGravityInit(EggGravity *boss) {
    void (*var_r0)(EggGravity *);

    if (*boss->bossPhase == 3) {
        TaskDestroy(gCurTask);
        return;
    }
    if ((sub_8079FFC() << 0x18) != 0) {
        var_r0 = Task_D8_8077718;
    } else {
        var_r0 = Task_D8_8077764;
    }
    gCurTask->main = var_r0;
    sub_8076328(boss);
}

void Task_D8_8077718(EggGravity *boss) {
    if (*boss->bossPhase == 3) {
        TaskDestroy(gCurTask);
        return;
    }
    sub_8076328(boss);
    if ((*boss->bossPhase == 2) && ((sub_807A074() << 0x18) != 0)) {
        gCurTask->main = (void (*)()) Task_D8_8077764;
    }
}

void Task_D8_8077764(EggGravity *boss) {
    if (*boss->bossPhase == 3) {
        TaskDestroy(gCurTask);
        return;
    }
    sub_8076328(boss);
    if (*boss->bossPhase == 2) {
        boss->unk30 = 0;
        gCurTask->main = (void (*)()) Task_D8_8075064;
    }
}

void Task_D8_80777AC(void) {
    s16 temp_r1;
    s16 var_r1;
    u16 temp_r0;

    if ((sub_807A074() << 0x18) != 0) {
        var_r1 = 0;
loop_2:
        temp_r1 = var_r1;
        if ((s32) ((s32) gPlayers[temp_r1].qWorldY >> 8) > 0x1C1) {
            temp_r0 = temp_r1 + 1;
            var_r1 = (s16) temp_r0;
            if ((s32) (s16) temp_r0 > 1) {
                sub_80299D4(0x34U);
                gCurTask->main = (void (*)()) Task_D8_8075204;
                goto block_5;
            }
            goto loop_2;
        }
    } else {
block_5:
        sub_8076328(M2C_ERROR(/* Read from unset register $r0 */));
    }
}

void sub_8077818(void) {

}

void sub_807781C(void) {

}

void sub_8077820(s32 arg0) {
    s32 temp_r0;
    void *temp_r2;
    void *temp_r2_2;

    temp_r0 = arg0 * 0x40001;
    temp_r2 = temp_r0->unk50;
    temp_r2->unk4 = (s32) (temp_r2->unk4 | 0x08000000);
    temp_r2_2 = temp_r0->unk54;
    temp_r2_2->unk4 = (s32) (temp_r2_2->unk4 | 0x08000000);
    sub_8076328((EggGravity *) temp_r0);
}

void TaskDestructor_EggGravity(Task *arg0) {
    u16 temp_r4;

    temp_r4 = arg0->data;
    VramFree(temp_r4->unk48);
    VramFree(temp_r4->unk4C);
    VramFree(temp_r4->unk58);
}

void sub_8077874(EggGravity *arg0, Player *arg1) {
    s32 temp_r1;

    if ((sub_802C080(arg1) == 0) && ((temp_r1 = 0x1C & arg1->unk2B, (temp_r1 == 4)) || (temp_r1 == 8) || (temp_r1 == 0x10)) && (arg0->unk21 != 0)) {
        sub_8020CE0(arg0 + 0x58, (s32) (arg0->qUnk0 + arg0->unk14) >> 8, (s32) arg0->qUnk4 >> 8, 0, arg1);
    }
}

void sub_80778C8(void) {

}

void sub_80778CC(void) {

}

void sub_80778D0(EggGravity *arg0) {
    s32 temp_r0;
    s32 temp_r0_2;
    u8 var_r0;

    if (arg0->unk22 != 0) {
        temp_r0 = arg0->unk14 + arg0->unk8;
        arg0->unk14 = temp_r0;
        if (temp_r0 < 0xFFFF7400) {
            var_r0 = 0;
            goto block_5;
        }
    } else {
        temp_r0_2 = arg0->unk14 + arg0->unk8;
        arg0->unk14 = temp_r0_2;
        if (temp_r0_2 > 0x8C00) {
            var_r0 = 1;
block_5:
            arg0->unk22 = var_r0;
            arg0->unk8 = (s32) (0 - arg0->unk8);
        }
    }
    arg0->unk18 = 0;
}

void sub_8077918(EggGravity *arg0) {
    s32 var_r0;

    if (arg0->unk22 != 0) {
        var_r0 = 0 - *((arg0->unk21 * 4) + &gUnknown_080D5954);
    } else {
        var_r0 = *((arg0->unk21 * 4) + &gUnknown_080D5954);
    }
    arg0->unk8 = var_r0;
}

void sub_8077954(EggGravity *arg0, s32 arg1) {
    void *temp_r0;
    void *temp_r1;

    temp_r0 = arg0 + 0x80;
    temp_r1 = ((u32) (arg1 << 0x18) >> 0x16) + &gUnknown_080D5904;
    temp_r0->unkC = (u16) temp_r1->unk0;
    temp_r0->unk1A = (s8) temp_r1->unk2;
    temp_r0->unk18 = 0xFFFF;
    temp_r0->unk1B = 0xFF;
}

void sub_8077978(void) {

}

void sub_807797C(void) {

}

void sub_8077980(void) {

}

void sub_8077984(EggGravity100 *strc100) {
    u16 var_r4;
    u8 var_r5;

    var_r4 = (((s32) strc100->qUnkC8 >> 8) - gCamera.x) - 0xA0;
    var_r5 = 0;
    do {
        strc100->sprCC.oamFlags = (s16) var_r4;
        strc100->sprCC.qAnimDelay = ((s32) &strc100->sprCC.tiles[strc100->unk4[var_r5]] >> 8) - gCamera.y;
        DisplaySprite((Sprite *) &strc100->sprCC.frameNum);
        var_r5 += 1;
        var_r4 = (u16) ((u32) ((var_r4 << 0x10) + 0x100000) >> 0x10);
    } while ((u32) var_r5 <= 0x14U);
}

void TaskDestructor_100_80779EC(Task *arg0) {
    VramFree(arg0->data->unkCC);
}

void sub_8077A04(Task *arg0, s8 arg1) {
    arg0->data->unkB6 = arg1;
}

void sub_8077A14(Task *arg0, s8 arg1) {
    arg0->data->unkB8 = arg1;
}

void sub_8077A24(void) {

}

void sub_8077A28(EggGravity *arg0) {
    arg0->unk2B = 0;
    arg0->unk2C = 1;
    arg0->unkD4 = 1;
}

void sub_8077A3C(u8 *arg0, s32 arg1, s32 arg2, u8 *vram, s32 arg4, EggGravity8C *strc8C) {
    u8 sp4;
    u8 *sp8;
    u8 *spC;
    Sprite2 *sp10;
    u8 *sp14;
    u8 *sp18;
    Sprite2 *var_r1;
    TileInfo2 *temp_r7;
    s32 *temp_r1;
    s32 *temp_r1_2;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_4;
    s32 temp_r0_5;
    s32 temp_r0_6;
    s32 temp_r2;
    s8 temp_r5;
    s8 var_r3;
    u8 *temp_r4;
    u8 temp_r0_3;
    u8 temp_r0_7;

    sp8 = arg0;
    spC = vram;
    sp4 = 1;
    TaskCreate((void (*)(EggGravity104 *)) Task_84_8077C08, 0x84U, 0x2100U, 0U, TaskDestructor_8078A64);
    strc8C->unk20 = arg0;
    if (arg0 != NULL) {
        temp_r0 = sub_807A3D8(&sp8, 1, 0x4C0, 0, &sp4)->unk14;
        strc8C->unk8 = (s32) (temp_r0 + 0x10);
        strc8C->unkC = (s32) (temp_r0 + 0x12);
    } else {
        strc8C->unk8 = arg1;
        strc8C->unkC = arg2;
    }
    temp_r0_2 = (0x196225 * gPseudoRandom) + 0x3C6EF35F;
    gPseudoRandom = temp_r0_2;
    var_r3 = 1;
    if ((u32) (((u32) temp_r0_2 >> 8) & 0x7F) <= 0x3BU) {
        var_r3 = -1;
    }
    sp4 = 0;
    sp10 = &strc8C->spr54;
    sp14 = &strc8C->filler0[4];
    sp18 = &strc8C->filler0[0x10];
    temp_r5 = var_r3;
    temp_r4 = &strc8C->filler0[0x18];
    do {
        temp_r2 = (gPseudoRandom * 0x196225) + 0x3C6EF35F;
        gPseudoRandom = temp_r2;
        *(sp18 + (sp4 * 4)) = temp_r5 * (((u32) temp_r2 >> 8) & 0x1F);
        temp_r0_4 = (temp_r2 * 0x196225) + 0x3C6EF35F;
        gPseudoRandom = temp_r0_4;
        *(temp_r4 + (sp4 * 4)) = temp_r5 * (((u32) temp_r0_4 >> 8) & 0x1F);
        temp_r1 = sp18 + (sp4 * 4);
        *temp_r1 <<= 8;
        temp_r1_2 = temp_r4 + (sp4 * 4);
        *temp_r1_2 <<= 8;
        temp_r0_3 = sp4 + 1;
        sp4 = temp_r0_3;
    } while ((u32) temp_r0_3 <= 1U);
    strc8C->unk0 = arg4;
    temp_r0_5 = (gPseudoRandom * 0x196225) + 0x3C6EF35F;
    gPseudoRandom = temp_r0_5;
    temp_r0_6 = ((u32) temp_r0_5 >> 8) & 3;
    sp4 = 0;
    temp_r7 = &gUnknown_080D59FC[temp_r0_6];
    do {
        var_r1 = sp10;
        if (sp4 != 0) {
            var_r1 = &strc8C->spr24;
        }
        var_r1->tiles = spC;
        spC += *((temp_r0_6 * 8) + &gUnknown_080D59FC->numTiles) << 5;
        var_r1->anim = temp_r7->anim;
        var_r1->variant = temp_r7->variant;
        var_r1->prevVariant = 0xFF;
        var_r1->x = 0;
        var_r1->y = 0;
        var_r1->oamFlags = 0x480;
        var_r1->animCursor = 0;
        var_r1->qAnimDelay = 0;
        var_r1->animSpeed = 0x10;
        var_r1->palId = 0;
        var_r1->frameFlags = 0x1000;
        var_r1->hitboxes[0].index = -1;
        UpdateSpriteAnimation((Sprite *) var_r1);
        sp14[sp4] = 1;
        temp_r0_7 = sp4 + 1;
        sp4 = temp_r0_7;
    } while ((u32) temp_r0_7 <= 1U);
}

void Task_84_8077C08(EggGravity8C *strc8C) {
    u8 sp4;
    s32 sp8;
    Sprite2 *sp10;
    Sprite2 *var_r4_2;
    s16 var_r4;
    s32 temp_r6;
    s32 var_r5;
    u8 *temp_r1;
    u8 temp_r0_2;
    u8 temp_r0_3;
    void *temp_r0;

    sp4 = 1;
    sp8 = 0;
    if (strc8C->unk20 != 0) {
        temp_r0 = sub_807A3D8((u8 **) &strc8C->filler0[0x20], 1, 0x4C0, 0, &sp4)->unk14;
        var_r4 = temp_r0->unk10;
        var_r5 = temp_r0->unk12 + 0x20;
    } else {
        var_r4 = (s16) ((s32) *strc8C->unk8 >> 8);
        var_r5 = (s32) *strc8C->unkC >> 8;
    }
    sp4 = 0;
    sp10 = &strc8C->spr54;
    temp_r1 = &strc8C->filler0[4];
    subroutine_arg0.unkC = var_r4;
loop_4:
    var_r4_2 = sp10;
loop_10:
    if (temp_r1[sp4] != 0) {
        gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F;
        var_r4_2->x = (u16) subroutine_arg0.unkC + ((s32) *(&strc8C->filler0[0x10] + (sp4 * 4)) >> 8);
        var_r4_2->y = var_r5 + ((s32) *(&strc8C->filler0[0x18] + (sp4 * 4)) >> 8);
        temp_r6 = UpdateSpriteAnimation((Sprite *) var_r4_2);
        DisplaySprite((Sprite *) var_r4_2);
        if (temp_r6 == ACMD_RESULT__ENDED) {
            sp8 = (s32) (u8) (sp8 + 1);
        }
        temp_r1[sp4] = (u8) temp_r6;
        temp_r0_2 = sp4 + 1;
        sp4 = temp_r0_2;
        temp_r0_3 = temp_r0_2;
        if ((u32) temp_r0_3 <= 1U) {
            if (temp_r0_3 != 0) {
                var_r4_2 = &strc8C->spr24;
            } else {
                goto loop_4;
            }
            goto loop_10;
        }
    }
    if (sp8 == 2) {
        *strc8C->unk0 = 0;
        TaskDestroy(gCurTask);
    }
}

void sub_8077D40(EggGravity104 *strc104) {
    s32 *sp0;
    s32 *sp4;
    s32 *sp8;
    s32 spC;
    s32 *sp10;
    Sprite2 *var_r3;
    Sprite2 *var_r3_2;
    s32 *temp_r0_2;
    s32 *temp_r1;
    s32 *temp_r2;
    s32 *temp_r4;
    s32 temp_r0;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 temp_r0_5;
    s32 temp_r0_6;
    s32 temp_r2_3;
    s32 temp_r2_5;
    s32 temp_r5;
    s32 var_r1;
    u32 temp_r1_2;
    u32 temp_r2_2;
    u32 var_r2;
    u32 var_r2_2;
    u8 var_r6;
    u8 var_r6_2;
    u8 var_r6_3;
    void *temp_r2_4;
    void *temp_r2_6;

    strc104->filler0[8] = 0;
    strc104->unk0 = 1;
    temp_r0 = (0x196225 * gPseudoRandom) + 0x3C6EF35F;
    gPseudoRandom = temp_r0;
    var_r1 = 1;
    if ((u32) (((u32) temp_r0 >> 8) & 0x7F) <= 0x3BU) {
        var_r1 = 0xFF;
    }
    var_r6 = 0;
    temp_r0_2 = strc104->qUnk14X;
    sp0 = temp_r0_2;
    spC = var_r1 << 0x18;
    temp_r1 = strc104->qUnk1CY;
    sp4 = temp_r1;
    sp8 = temp_r0_2 + 0x10;
    sp10 = temp_r1 + 0x10;
    temp_r5 = spC >> 0x18;
    do {
        temp_r4 = &sp0[var_r6];
        temp_r1_2 = (gPseudoRandom * 0x196225) + 0x3C6EF35F;
        *temp_r4 = temp_r5 * ((temp_r1_2 >> 8) & 0x1F);
        temp_r2 = &sp4[var_r6];
        temp_r0_3 = (temp_r1_2 * 0x196225) + 0x3C6EF35F;
        gPseudoRandom = temp_r0_3;
        *temp_r2 = temp_r5 * (((u32) temp_r0_3 >> 8) & 0x1F);
        *temp_r4 <<= 8;
        *temp_r2 <<= 8;
        sp8[var_r6] = *temp_r4;
        sp10[var_r6] = *temp_r2;
        var_r6 += 1;
    } while ((u32) var_r6 <= 1U);
    temp_r2_2 = (0x196225 * gPseudoRandom) + 0x3C6EF35F;
    temp_r0_4 = (0x196225 * temp_r2_2) + 0x3C6EF35F;
    gPseudoRandom = temp_r0_4;
    strc104->unk34 = (s32) (((spC >> 0x18) * ((temp_r2_2 >> 8) & 0xF)) << 5);
    strc104->unk38 = (s32) ((0 - (((u32) temp_r0_4 >> 8) & 0x3F)) << 5);
    var_r6_2 = 0;
loop_5:
    temp_r0_5 = (gPseudoRandom * 0x196225) + 0x3C6EF35F;
    gPseudoRandom = temp_r0_5;
    var_r2 = ((u32) temp_r0_5 >> 8) & 3;
    if (var_r2 > 2U) {
        var_r2 = 2;
    }
    if (strc104->unk40 == 0) {
        var_r3 = &strc104->sprD4;
        if (var_r6_2 != 0) {
            var_r3 -= 0x30;
        }
        goto block_11;
    }
    var_r3 = &strc104->sprA4;
    if (var_r6_2 == 0) {
block_11:
        var_r3->tiles = strc104->unk3C;
        temp_r2_3 = var_r2 * 8;
        strc104->unk3C = (u8 *) (strc104->unk3C + (*(temp_r2_3 + (&gUnknown_080D5A44 + 4)) << 5));
        temp_r2_4 = temp_r2_3 + &gUnknown_080D5A44;
        var_r3->anim = temp_r2_4->unk0;
        var_r3->variant = temp_r2_4->unk2;
        var_r3->prevVariant = 0xFF;
        var_r3->x = 0;
        var_r3->y = 0;
        var_r3->oamFlags = 0x40;
        var_r3->animCursor = 0;
        var_r3->qAnimDelay = 0;
        var_r3->animSpeed = 0x10;
        var_r3->palId = 0;
        var_r3->frameFlags = 0x1000;
        var_r3->hitboxes[0].index = -1;
        UpdateSpriteAnimation((Sprite *) var_r3);
        var_r6_2 += 1;
        if ((u32) var_r6_2 <= 1U) {
            goto loop_5;
        }
    }
    var_r6_3 = 0;
loop_13:
    temp_r0_6 = (gPseudoRandom * 0x196225) + 0x3C6EF35F;
    gPseudoRandom = temp_r0_6;
    var_r2_2 = ((u32) temp_r0_6 >> 8) & 7;
    if (var_r2_2 > 5U) {
        var_r2_2 = 5;
    }
    if (strc104->unk40 == 0) {
        var_r3_2 = &strc104->spr74;
        if (var_r6_3 != 0) {
            var_r3_2 -= 0x30;
        }
        goto block_19;
    }
    var_r3_2 = &strc104->spr44;
    if (var_r6_3 == 0) {
block_19:
        var_r3_2->tiles = strc104->unk3C;
        temp_r2_5 = var_r2_2 * 8;
        strc104->unk3C = (u8 *) (strc104->unk3C + (*(temp_r2_5 + (&gUnknown_080D5A14 + 4)) << 5));
        temp_r2_6 = temp_r2_5 + &gUnknown_080D5A14;
        var_r3_2->anim = temp_r2_6->unk0;
        var_r3_2->variant = temp_r2_6->unk2;
        var_r3_2->prevVariant = 0xFF;
        var_r3_2->x = 0;
        var_r3_2->y = 0;
        var_r3_2->oamFlags = 0;
        var_r3_2->animCursor = 0;
        var_r3_2->qAnimDelay = 0;
        var_r3_2->animSpeed = 0x10;
        var_r3_2->palId = 0;
        var_r3_2->frameFlags = 0x1000;
        var_r3_2->hitboxes[0].index = -1;
        UpdateSpriteAnimation((Sprite *) var_r3_2);
        strc104->filler0[8] = 1;
        var_r6_3 += 1;
        if ((u32) var_r6_3 <= 1U) {
            goto loop_13;
        }
    }
}

void Task_104_8077F80(EggGravity104 *arg0) {
    u8 sp4;
    s32 sp8;
    s32 temp_r0_2;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 var_r0;
    u8 temp_r0_3;
    u8 temp_r2;
    u8 var_r7;
    void *temp_r0;

    sp4 = 1;
    var_r7 = 0;
    if (arg0->unk40 != 0) {
        temp_r0 = sub_807A3D8((u8 **) &arg0->filler34[0xC], 1, 0x4C0, 0, &sp4);
        sp8 = (s32) temp_r0->unk14->unk10;
        var_r0 = temp_r0->unk14->unk12 + 0x20;
    } else {
        temp_r0_2 = *arg0->unkC;
        sp8 = temp_r0_2;
        sp8.unk4 = (s32) *arg0->unk10;
        sp8 = temp_r0_2 >> 8;
        var_r0 = (s32) sp8.unk4 >> 8;
    }
    ((Vec2_32 *) &sp8)->y = var_r0;
    sub_8078A78(arg0, (Vec2_32 *) &sp8);
    sub_8078070(arg0, (Vec2_32 *) &sp8);
    if (arg0->filler0[8] != 0) {
        sp4 = 0;
        do {
            temp_r2 = sp4;
            if ((s32) (((Vec2_32 *) &sp8)->y + ((s32) arg0->qUnk2CY[temp_r2] >> 8)) > 0xB3) {
                var_r7 += 1;
            }
            temp_r0_3 = temp_r2 + 1;
            sp4 = temp_r0_3;
        } while ((u32) temp_r0_3 <= 1U);
        temp_r1 = arg0->unk0;
        if ((temp_r1 == 0) && (var_r7 == 2)) {
            *arg0->unk4 = (s8) temp_r1;
            TaskDestroy(gCurTask);
        }
    } else {
        temp_r1_2 = arg0->unk0;
        if (temp_r1_2 == 0) {
            *arg0->unk4 = (s8) temp_r1_2;
            TaskDestroy(gCurTask);
        }
    }
}

void sub_8078070(EggGravity104 *strc104, Vec2_32 *pos) {
    Sprite2 *var_r4;
    Sprite2 *var_r4_2;
    u8 var_r7;

    var_r7 = 0;
    do {
        if (strc104->unk40 == 0) {
            var_r4 = &strc104->sprD4;
            if (var_r7 != 0) {
                var_r4 -= 0x30;
            }
        } else {
            var_r4 = &strc104->sprA4;
        }
        gPseudoRandom = (gPseudoRandom * 0x196225) + 0x3C6EF35F;
        if (strc104->unk0 == ACMD_RESULT__RUNNING) {
            var_r4->x = pos->x + ((s32) strc104->qUnk14X[var_r7] >> 8);
            var_r4->y = pos->y + ((s32) strc104->qUnk1CY[var_r7] >> 8);
            strc104->unk0 = UpdateSpriteAnimation((Sprite *) var_r4);
            DisplaySprite((Sprite *) var_r4);
        }
        if (strc104->filler0[8] != 0) {
            if (strc104->unk40 == 0) {
                var_r4_2 = &strc104->spr74;
                if (var_r7 != 0) {
                    var_r4_2 -= 0x30;
                }
            } else {
                var_r4_2 = &strc104->spr44;
            }
            var_r4_2->x = pos->x + ((s32) strc104->qUnk24X[var_r7] >> 8);
            var_r4_2->y = pos->y + ((s32) strc104->qUnk2CY[var_r7] >> 8);
            UpdateSpriteAnimation((Sprite *) var_r4_2);
            DisplaySprite((Sprite *) var_r4_2);
        }
        var_r7 += 1;
    } while ((u32) var_r7 <= 1U);
}

void sub_807813C(EggGravity104 *arg0) {
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r3;
    s32 temp_r5;
    u8 var_r0;
    u8 var_r0_2;

    temp_r3 = arg0->unkC;
    temp_r0 = arg0->qUnk1CY[1] + temp_r3;
    arg0->qUnk1CY[1] = temp_r0;
    temp_r5 = (temp_r0 >> 8) + gCamera.x;
    if (temp_r5 > (s32) gCamera.maxX) {
        var_r0 = 0xFF;
        goto block_4;
    }
    if (temp_r5 < (s32) gCamera.minX) {
        var_r0 = 1;
block_4:
        arg0->filler0[5] = var_r0;
        arg0->unkC = (s32) (0 - temp_r3);
    }
    temp_r0_2 = arg0->qUnk24X[0] + arg0->unk10;
    arg0->qUnk24X[0] = temp_r0_2;
    temp_r0_3 = (temp_r0_2 >> 8) + gCamera.y;
    if ((s32) (sa2__sub_801F07C(temp_r0_3, ((s32) arg0->qUnk1CY[1] >> 8) + gCamera.x, 1, 8, NULL, sa2__sub_801EE64) << 0x18) < 0) {
        var_r0_2 = 0xFF;
        goto block_9;
    }
    if (temp_r0_3 < (s32) gCamera.minY) {
        var_r0_2 = 1;
block_9:
        arg0->filler0[6] = var_r0_2;
        arg0->unk10 = (s32) (0 - arg0->unk10);
    }
}

void sub_80781C0(void *arg0, s32 arg1) {
    s32 sp4;
    s32 sp8;
    s32 spC;
    s32 *temp_r4;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 temp_r0_5;
    s32 temp_r0_6;
    s32 temp_r1;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 temp_r3;
    s32 temp_r3_2;
    s32 temp_r3_3;
    u16 temp_r0;
    u8 var_r7;
    u8 var_r7_2;
    u8 var_r7_3;
    u8 var_r7_4;

    temp_r0 = TaskCreate(Task_BC_8078C3C, 0xBCU, 0x2100U, 0U, TaskDestructor_8078C28)->data;
    temp_r0->unk0 = arg1;
    temp_r0_2 = (0x196225 * gPseudoRandom) + 0x3C6EF35F;
    gPseudoRandom = temp_r0_2;
    temp_r0->unk5 = (s8) (((u32) temp_r0_2 >> 8) & 1);
    temp_r0_3 = (0x196225 * gPseudoRandom) + 0x3C6EF35F;
    gPseudoRandom = temp_r0_3;
    temp_r0->unk6 = (s8) (((u32) temp_r0_3 >> 8) & 5);
    temp_r0->unk8 = 0;
    temp_r0->unk20 = 0;
    temp_r0->unk4 = 1;
    temp_r0->unk10 = arg0;
    temp_r0->unk14 = (s32) (arg0 + 4);
    temp_r0->unk18 = (s32) arg0->unk0;
    temp_r0->unk1C = (s32) arg0->unk4;
    temp_r0->unkA = (s16) gCamera.x;
    temp_r0->unkC = (s16) gCamera.y;
    var_r7 = 0;
    spC = temp_r0 + 0x24;
    do {
        temp_r0_4 = (0x196225 * gPseudoRandom) + 0x3C6EF35F;
        gPseudoRandom = temp_r0_4;
        *(temp_r0 + 0x24 + (var_r7 * 8)) = ((((u32) temp_r0_4 >> 8) & 0x1F) << 8) + 0xFFFFF000;
        var_r7 += 1;
    } while ((u32) var_r7 <= 2U);
    var_r7_2 = 0;
    temp_r3 = temp_r0 + 0x28;
    sp8 = temp_r0 + 0x60;
    sp4 = temp_r0 + 0x54;
    do {
        temp_r0_5 = (0x196225 * gPseudoRandom) + 0x3C6EF35F;
        gPseudoRandom = temp_r0_5;
        *(temp_r3 + (var_r7_2 * 8)) = ((((u32) temp_r0_5 >> 8) & 0x1F) << 8) + 0xFFFFF000;
        var_r7_2 += 1;
    } while ((u32) var_r7_2 <= 2U);
    var_r7_3 = 0;
    do {
        temp_r1 = var_r7_3 * 8;
        *(temp_r0 + 0x3C + temp_r1) = *(spC + temp_r1);
        *(temp_r0 + 0x40 + temp_r1) = *(temp_r3 + temp_r1);
        var_r7_3 += 1;
    } while ((u32) var_r7_3 <= 2U);
    var_r7_4 = 0;
    do {
        temp_r3_2 = var_r7_4 * 4;
        temp_r2 = (gPseudoRandom * 0x196225) + 0x3C6EF35F;
        gPseudoRandom = temp_r2;
        *(sp8 + temp_r3_2) = 0 - (((((u32) temp_r2 >> 8) & 7) + 5) << 7);
        temp_r4 = sp4 + temp_r3_2;
        temp_r2_2 = (temp_r2 * 0x196225) + 0x3C6EF35F;
        gPseudoRandom = temp_r2_2;
        temp_r3_3 = (((u32) temp_r2_2 >> 8) & 5) * 0x10;
        *temp_r4 = temp_r3_3;
        temp_r0_6 = (temp_r2_2 * 0x196225) + 0x3C6EF35F;
        gPseudoRandom = temp_r0_6;
        if (((u32) temp_r0_6 >> 8) & 1) {
            *temp_r4 = 0 - temp_r3_3;
        }
        var_r7_4 += 1;
    } while ((u32) var_r7_4 <= 2U);
    m4aSongNumStart(0x90U);
    sub_8078380(temp_r0);
}

void sub_8078380(void *arg0) {
    Sprite *temp_r0_2;
    Sprite *temp_r0_3;
    u16 temp_r4;
    void *temp_r0;

    temp_r4 = *((arg0->unk5 * 8) + (&gUnknown_080D5A44 + 4));
    temp_r0 = VramMalloc(temp_r4 + *((arg0->unk6 * 8) + (&gUnknown_080D5A14 + 4)));
    temp_r0_2 = arg0 + 0x6C;
    arg0->unk6C = temp_r0;
    temp_r0_2->anim = *((arg0->unk5 * 8) + &gUnknown_080D5A44);
    temp_r0_2->variant = ((arg0->unk5 * 8) + &gUnknown_080D5A44)->unk2;
    temp_r0_2->prevVariant = 0xFF;
    temp_r0_2->x = (s16) ((s32) arg0->unk24 >> 8);
    temp_r0_2->y = (s16) ((s32) arg0->unk28 >> 8);
    temp_r0_2->oamFlags = 0x40;
    temp_r0_2->animCursor = 0;
    temp_r0_2->qAnimDelay = 0;
    temp_r0_2->animSpeed = 0x10;
    temp_r0_2->palId = 0;
    temp_r0_2->frameFlags = 0;
    temp_r0_2->hitboxes[0].index = -1;
    UpdateSpriteAnimation(temp_r0_2);
    if (arg0->unk6 != 7) {
        temp_r0_3 = arg0 + 0x94;
        arg0->unk94 = (void *) (temp_r0 + (temp_r4 << 5));
        temp_r0_3->anim = *((arg0->unk6 * 8) + &gUnknown_080D5A14);
        temp_r0_3->variant = ((arg0->unk6 * 8) + &gUnknown_080D5A14)->unk2;
        temp_r0_3->prevVariant |= ~0;
        temp_r0_3->x = (s16) ((s32) arg0->unk3C >> 8);
        temp_r0_3->y = (s16) ((s32) arg0->unk40 >> 8);
        temp_r0_3->oamFlags = 0;
        temp_r0_3->animCursor = 0;
        temp_r0_3->qAnimDelay = 0;
        temp_r0_3->animSpeed = 0x10;
        temp_r0_3->palId = 0;
        temp_r0_3->frameFlags = 0;
        temp_r0_3->hitboxes[0].index = -1;
        UpdateSpriteAnimation(temp_r0_3);
    }
}

s32 sub_8078468(EggGravity104 *arg0) {
    s32 *temp_r0_2;
    s32 *temp_r2_3;
    s32 *temp_r2_4;
    s32 *temp_r3;
    s32 temp_r0;
    s32 temp_r1_2;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 temp_r7;
    s32 var_r0;
    u8 var_r6;
    u8 var_r8;
    void *temp_r1;

    var_r8 = 0;
    var_r6 = 0;
    temp_r7 = arg0 + 0x40;
    do {
        temp_r2 = var_r6 * 8;
        if ((s32) (arg0->qUnk1CY[0] + *(temp_r7 + temp_r2)) <= 0xB3FF) {
            temp_r0 = var_r6 * 4;
            temp_r1 = arg0 + 0x54;
            temp_r3 = temp_r1 + temp_r0;
            temp_r2_2 = *temp_r3;
            if (temp_r2_2 > 0) {
                var_r0 = temp_r2_2 + 0x10;
            } else {
                var_r0 = temp_r2_2 - 0x10;
            }
            *temp_r3 = var_r0;
            temp_r2_3 = arg0 + 0x3C + temp_r2;
            *temp_r2_3 += *(temp_r1 + temp_r0);
            temp_r0_2 = arg0 + 0x60 + temp_r0;
            temp_r1_2 = *temp_r0_2 + 0x40;
            *temp_r0_2 = temp_r1_2;
            temp_r2_4 = temp_r7 + temp_r2;
            *temp_r2_4 += temp_r1_2;
        } else {
            var_r8 += 1;
        }
        var_r6 += 1;
    } while ((u32) var_r6 <= 2U);
    if (var_r8 != 3) {
        return 0;
    }
    return 1;
}

s32 sub_8078504(EggGravity104 *arg0) {
    Sprite *temp_r4;
    s32 *temp_r2_2;
    s32 *temp_r6;
    s32 temp_r1;
    s32 temp_r2;
    s32 temp_r3;
    s32 temp_r8;
    u8 var_r7;

    temp_r4 = arg0 + 0x6C;
    temp_r8 = UpdateSpriteAnimation(temp_r4);
    var_r7 = 0;
    do {
        temp_r2 = var_r7 * 8;
        temp_r6 = arg0 + 0x24 + temp_r2;
        temp_r3 = (s32) (*arg0->unk10 + *temp_r6) >> 8;
        temp_r4->x = (s16) temp_r3;
        temp_r2_2 = arg0 + 0x28 + temp_r2;
        temp_r1 = (s32) (*arg0->qUnk14X[0] + *temp_r2_2) >> 8;
        temp_r4->y = (s16) temp_r1;
        if (var_r7 != 0) {
            temp_r4->x = temp_r3 + ((s32) *temp_r6 >> 8);
            temp_r4->y = temp_r1 + ((s32) *temp_r2_2 >> 8);
        }
        DisplaySprite(temp_r4);
        var_r7 += 1;
    } while ((u32) var_r7 <= 2U);
    return temp_r8;
}

void sub_8078570(EggGravity104 *arg0) {
    Sprite *temp_r5;
    s32 *temp_r0_2;
    s32 temp_r1;
    s32 temp_r2;
    s32 temp_r6;
    s32 var_r3;
    u8 temp_r0;
    u8 var_r8;
    void *var_r2;

    var_r8 = 0;
    do {
        if (arg0->filler0[6] != 7) {
            temp_r5 = arg0 + 0x94;
            temp_r0_2 = arg0->unk10;
            temp_r6 = arg0->qUnk14X[1];
            if ((*temp_r0_2 != temp_r6) && (*arg0->qUnk14X[0] != arg0->qUnk1CY[0])) {
                unksp0 = gCamera.x - arg0->unkA;
                unksp2 = gCamera.y - arg0->unkC;
                var_r3 = var_r8 * 8;
                temp_r5->x = (u16) ((s32) (temp_r6 + unksp0 + *(arg0 + 0x3C + var_r3)) >> 8);
                var_r2 = arg0 + 0x40;
                temp_r5->y = (s16) ((s32) (arg0->qUnk1CY[0] + unksp2 + *(var_r2 + var_r3)) >> 8);
            } else {
                temp_r2 = var_r8 * 8;
                temp_r5->x = (u16) ((s32) (*temp_r0_2 + *(arg0 + 0x3C + temp_r2)) >> 8);
                var_r3 = temp_r2;
                var_r2 = arg0 + 0x40;
            }
            temp_r1 = (s32) (*arg0->qUnk14X[0] + *(var_r2 + var_r3)) >> 8;
            temp_r5->y = (s16) temp_r1;
            if (var_r8 != 0) {
                temp_r5->x += (s32) *(arg0 + 0x24 + var_r3) >> 8;
                temp_r5->y = temp_r1 + ((s32) *(arg0 + 0x28 + var_r3) >> 8);
            }
            DisplaySprite(temp_r5);
        }
        temp_r0 = var_r8 + 1;
        var_r8 = temp_r0;
    } while ((u32) temp_r0 <= 2U);
}

s32 sub_8078650(EggGravity104 *arg0) {
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r1;

    temp_r0 = arg0->unk10 + 0xA00;
    arg0->unk10 = temp_r0;
    temp_r0_2 = (s32) (*(((u8) (temp_r0 >> 7) * 8) + gSineTable) << 0x10) >> 0x16;
    arg0->qUnk14X[0] = temp_r0_2 * 0x10;
    arg0->qUnk1CY[0] = (0 - temp_r0_2) * 0x10;
    temp_r1 = arg0->qUnk14X[1] + 0xFFFFFC00;
    arg0->qUnk14X[1] = temp_r1;
    arg0->qUnk1CY[1] += 0xFFFFFC00;
    if (temp_r1 >= 0xFFFFC400) {
        return 0;
    }
    arg0->qUnk24X[0]->unk1B = 0xFF;
    arg0->qUnk14X[1] = 0;
    arg0->qUnk1CY[1] = 0;
    arg0->unk10 = 0;
    return 1;
}

void sub_80786B4(void *arg0, s32 arg1, s32 arg2, s32 arg3) {
    Sprite *temp_r4_2;
    u16 temp_r4;

    temp_r4 = TaskCreate(sub_4C_8078764, 0x4CU, 0x2100U, 0U, sub_8078D18)->data;
    temp_r4->unk4 = (s32) arg0->unk0;
    temp_r4->unkC = (s32) arg0->unk4;
    temp_r4->unk8 = (s32) arg0->unk8;
    temp_r4->unk10 = (s32) arg0->unkC;
    temp_r4->unk14 = arg1;
    temp_r4->unk18 = arg2;
    temp_r4->unk0 = arg3;
    temp_r4_2 = temp_r4 + 0x1C;
    temp_r4->unk1C = VramMalloc(gUnknown_080D5A44.unkC);
    temp_r4_2->anim = gUnknown_080D5A44.unk8;
    temp_r4_2->variant = gUnknown_080D5A44.unkA;
    temp_r4_2->prevVariant = 0xFF;
    temp_r4_2->x = (s16) ((s32) temp_r4->unk4 >> 8);
    temp_r4_2->y = (s16) ((s32) temp_r4->unkC >> 8);
    temp_r4_2->oamFlags = 0x80;
    temp_r4_2->animCursor = 0;
    temp_r4_2->qAnimDelay = 0;
    temp_r4_2->animSpeed = 0x10;
    temp_r4_2->palId = 0;
    temp_r4_2->frameFlags = 0;
    temp_r4_2->hitboxes[0].index = -1;
    UpdateSpriteAnimation(temp_r4_2);
}

void sub_4C_8078764(EggGravity104 *arg0) {
    s32 *temp_r5;
    s32 temp_r4;

    arg0->unk2C = (s16) ((s32) (*arg0->qUnk14X[0] + arg0->unk4) >> 8);
    arg0->unk2E = (s16) ((s32) (*arg0->qUnk14X[1] + arg0->unkC) >> 8);
    temp_r5 = arg0->qUnk1CY;
    DisplaySprite((Sprite *) temp_r5);
    arg0->unk2C = (s16) ((s32) (*arg0->qUnk14X[0] + arg0->unk8) >> 8);
    arg0->unk2E = (s16) ((s32) (*arg0->qUnk14X[1] + arg0->unk10) >> 8);
    temp_r4 = UpdateSpriteAnimation((Sprite *) temp_r5);
    DisplaySprite((Sprite *) temp_r5);
    if (temp_r4 == ACMD_RESULT__ENDED) {
        *arg0->unk0 = 0;
        TaskDestroy(gCurTask);
    }
}

u8 sub_80787D8(EggGravity68 *strc68) {
    Vec2_32 *temp_r4;
    s32 *temp_r3;
    u16 *temp_r6;
    u16 temp_r1_2;
    u8 temp_r1;
    u8 var_r7;

    var_r7 = 0;
loop_1:
    temp_r1 = *(var_r7 + &gUnknown_080D5A64);
    temp_r3 = &strc68->unk24[0].y + (var_r7 * 8);
    *temp_r3 = 0;
    temp_r4 = &strc68->unk24[var_r7];
    temp_r4->x = 0;
    temp_r6 = &strc68->filler4[4] + (var_r7 * 2);
    *temp_r3 += ((u16) *temp_r6 >> 6) * ((s32) (((s32) (*((temp_r1 * 8) + 0x200 + gSineTable) << 0x10) >> 0x16) * 0xC) >> 6) * 0x10;
    temp_r4->x += ((u16) *temp_r6 >> 6) * ((s32) (((s32) (*((temp_r1 * 8) + gSineTable) << 0x10) >> 0x16) * 0xC) >> 6) * 0x10;
    temp_r1_2 = *temp_r6;
    if ((u32) (temp_r1_2 >> 6) >= 0x10U) {
        return 1U;
    }
    *temp_r6 = temp_r1_2 + 0x80;
    var_r7 += 1;
    if ((u32) var_r7 > 7U) {
        return 0U;
    }
    goto loop_1;
}

void sub_80788A4(u8 *arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    u8 sp4;
    u8 *sp8;
    s32 temp_r0;
    u16 temp_r1;

    sp8 = arg0;
    sp4 = 1;
    temp_r1 = TaskCreate(Task_104_8077F80, 0x104U, 0x2100U, 0U, TaskDestructor_104_8078A68)->data;
    temp_r1->unk40 = arg0;
    temp_r1->unk3C = arg3;
    if (arg0 != NULL) {
        temp_r0 = sub_807A3D8(&sp8, 1, 0x4C0, 0, &sp4)->unk14;
        temp_r1->unkC = (s32) (temp_r0 + 0x10);
        temp_r1->unk10 = (s32) (temp_r0 + 0x12);
    } else {
        temp_r1->unkC = arg1;
        temp_r1->unk10 = arg2;
    }
    temp_r1->unk9 = 0;
    temp_r1->unk4 = arg4;
    sub_8077D40((EggGravity104 *) temp_r1);
}

void sub_8078920(s32 arg0, s32 arg1, s32 arg2) {
    u16 temp_r0;

    temp_r0 = TaskCreate(Task_28_8078C90, 0x28U, 0x2100U, 0U, TaskDestructor_28_8078C8C)->data;
    temp_r0->unk0 = arg2;
    temp_r0->unk8 = arg1;
    temp_r0->unkC = (s32) (arg1 + 4);
    temp_r0->unk10 = 0;
    temp_r0->unk14 = 0;
    temp_r0->unk18 = 0;
    temp_r0->unk1C = 0;
    temp_r0->unk20 = 0;
    temp_r0->unk6 = 0;
    temp_r0->unk4 = 0;
    temp_r0->unk24 = arg0;
}

void sub_8078970(s32 arg0, s32 arg1, void *arg2, u8 arg3, s32 arg4) {
    u16 temp_r0;

    temp_r0 = TaskCreate(Task_30_8078AC4, 0x30U, 0x2100U, 0U, TaskDestructor_8078AC0)->data;
    temp_r0->unk8 = 0;
    temp_r0->unk1C = 0;
    temp_r0->unk5 = 1;
    temp_r0->unk6 = 0xFF;
    temp_r0->unk4 = arg3;
    temp_r0->unk0 = arg4;
    temp_r0->unk20 = (s32) arg2->unk0;
    temp_r0->unk24 = (s32) arg2->unk4;
    temp_r0->unkC = 0x400;
    temp_r0->unk10 = 0xFFFFFC00;
    temp_r0->unk14 = 0;
    temp_r0->unk18 = 0;
    temp_r0->unk28 = arg0;
    temp_r0->unk2C = arg1;
}

void sub_80789EC(s32 arg0, s32 arg1, u8 *bossPhase) {
    s32 temp_r1;
    u16 temp_r3;
    u8 var_r2;

    temp_r3 = TaskCreate((void (*)(EggGravity104 *)) Task_68_8078D34, 0x68U, 0x2100U, 0U, TaskDestructor_8078D30)->data;
    temp_r3->unk0 = bossPhase;
    temp_r3->unk18 = arg1;
    temp_r3->unk1C = (s32) (arg1 + 4);
    temp_r3->unk20 = 0;
    temp_r3->unk6 = 0;
    temp_r3->unk4 = 0;
    temp_r3->unk64 = arg0;
    var_r2 = 0;
    do {
        temp_r1 = var_r2 * 8;
        *(temp_r3 + 0x24 + temp_r1) = 0;
        *(temp_r3 + 0x28 + temp_r1) = 0;
        *(temp_r3 + 8 + (var_r2 * 2)) = 0;
        var_r2 += 1;
    } while ((u32) var_r2 <= 7U);
}

void TaskDestructor_8078A64(Task *arg0) {

}

void TaskDestructor_104_8078A68(Task *arg0) {
    *arg0->data->unk4 = 0;
}

void sub_8078A78(EggGravity104 *strc104, Vec2_32 *pos) {
    s32 *temp_r2;
    s32 *temp_r3;
    s32 temp_r1;
    u8 var_r4;

    var_r4 = 0;
    do {
        temp_r3 = &strc104->qUnk2CY[var_r4];
        if ((s32) (pos->y + ((s32) *temp_r3 >> 8)) <= 0xB3) {
            temp_r2 = &strc104->qUnk24X[var_r4];
            *temp_r2 += strc104->unk34;
            temp_r1 = strc104->unk38 + 0x20;
            strc104->unk38 = temp_r1;
            *temp_r3 += temp_r1;
        }
        var_r4 += 1;
    } while ((u32) var_r4 <= 1U);
}

void TaskDestructor_8078AC0(Task *arg0) {

}

void Task_30_8078AC4(EggGravity104 *arg0) {
    sub_8078B74(arg0);
    sub_807813C(arg0);
    if (**arg0 == 1) {
        TaskDestroy(gCurTask);
    }
}

void sub_8078AF8(s32 arg0) {
    if (sub_8078BAC(arg0 * 0x40001) == 1) {
        gCurTask->main = sub_8078B24;
    }
}

void sub_8078B24(void) {
    void *temp_r1;

    temp_r1 = M2C_ERROR(/* Read from unset register $r0 */);
    if ((u32) temp_r1->unk8 > 0xB3U) {
        *temp_r1->unk0 = 1;
        gCurTask->main = sub_8078B50;
    }
}

void sub_8078B50(void) {
    **(M2C_ERROR(/* Read from unset register $r0 */) + (M2C_ERROR(/* Read from unset register $r0 */) << 0x12)) = 2;
    TaskDestroy(gCurTask);
}

void sub_8078B74(EggGravity104 *arg0) {
    Sprite *temp_r6;
    u8 temp_r0;
    u8 var_r5;

    temp_r6 = arg0->qUnk24X[1];
    temp_r0 = arg0->filler0[4];
    if (temp_r0 != 0) {
        var_r5 = 0;
        if ((u32) temp_r0 > 0U) {
            do {
                temp_r6->x = (s16) ((s32) arg0->qUnk1CY[1] >> 8);
                temp_r6->y = (s16) ((s32) arg0->qUnk24X[0] >> 8);
                DisplaySprite(temp_r6);
                var_r5 += 1;
            } while ((u32) var_r5 < (u32) arg0->filler0[4]);
        }
    }
}

s32 sub_8078BAC(void *arg0) {
    s32 temp_r1;
    s32 temp_r2;
    s8 temp_r0;

    temp_r0 = (s8) sa2__sub_801F07C(arg0->unk28->unk12 + gCamera.y, 0, 0, 8, NULL, sa2__sub_801EE64);
    if ((s32) temp_r0 < 0) {
        arg0->unk24 = (s32) (arg0->unk24 + (temp_r0 << 8));
        arg0->unk6 = -1;
        arg0->unk10 = (s32) ((s32) arg0->unk10 >> 1);
        arg0->unk18 = (s32) (0 - arg0->unk18);
    }
    temp_r1 = arg0->unk18 - (arg0->unk6 << 8);
    arg0->unk18 = temp_r1;
    temp_r2 = arg0->unk10 + temp_r1;
    arg0->unk10 = temp_r2;
    arg0->unk24 = (s32) (arg0->unk24 + temp_r2);
    if (temp_r2 != 0) {
        return 0;
    }
    return 1;
}

void TaskDestructor_8078C28(Task *arg0) {
    VramFree(arg0->data->unk6C);
}

void Task_BC_8078C3C(EggGravity104 *arg0) {
    u8 *temp_r0;
    u8 *temp_r1;

    if (arg0->filler0[4] == 1) {
        arg0->filler0[4] = (u8) sub_8078504(arg0);
    }
    sub_8078570(arg0);
    if (sub_8078468(arg0) == 1) {
        temp_r0 = arg0->unk0;
        *temp_r0 -= 1;
        temp_r1 = arg0->unk0;
        if ((u32) *temp_r1 > 0xC8U) {
            *temp_r1 = 0;
        }
        TaskDestroy(gCurTask);
    }
}

void TaskDestructor_28_8078C8C(Task *arg0) {

}

void Task_28_8078C90(EggGravity104 *arg0) {
    sub_8078650(arg0);
    if (**arg0 == 0) {
        TaskDestroy(gCurTask);
        return;
    }
    sub_8078CC4(arg0);
}

s32 sub_8078CC4(EggGravity104 *arg0) {
    Sprite *temp_r5;
    s32 temp_r4;

    temp_r5 = arg0->qUnk24X[0];
    temp_r5->x = (s16) ((s32) (*arg0->unk8 + arg0->qUnk14X[0]) >> 8);
    temp_r5->y = (s16) ((s32) (*arg0->unkC + arg0->qUnk14X[1]) >> 8);
    DisplaySprite(temp_r5);
    temp_r5->x = (s16) ((s32) (*arg0->unk8 + arg0->qUnk1CY[0]) >> 8);
    temp_r5->y = (s16) ((s32) (*arg0->unkC + arg0->qUnk1CY[1]) >> 8);
    temp_r4 = UpdateSpriteAnimation(temp_r5);
    DisplaySprite(temp_r5);
    return temp_r4;
}

void sub_8078D18(Task *arg0) {
    VramFree(arg0->data->unk1C);
}

void sub_8078D2C(void) {

}

void TaskDestructor_8078D30(Task *arg0) {

}

void Task_68_8078D34(EggGravity68 *strc68) {
    u8 *temp_r0;

    sub_8078D6C(strc68);
    if (sub_80787D8(strc68) == 1) {
        temp_r0 = strc68->bossPhase;
        *temp_r0 += 1;
        TaskDestroy(gCurTask);
    }
}

u8 sub_8078D6C(EggGravity68 *strc68) {
    Sprite *temp_r0;
    u8 var_r5;

    var_r5 = 0;
    do {
        temp_r0 = strc68->unk64;
        temp_r0->x = (s16) ((s32) (*strc68->unk18Xs + strc68->unk24[var_r5].x) >> 8);
        temp_r0->y = (s16) ((s32) (*strc68->unk1CYs + *(&strc68->unk24[0].y + (var_r5 * 8))) >> 8);
        DisplaySprite(temp_r0);
        var_r5 += 1;
    } while ((u32) var_r5 <= 7U);
    return 1U;
}
#endif
