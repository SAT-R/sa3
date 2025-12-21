#include "global.h"
#include "core.h"
#include "trig.h"
#include "module_unclear.h"
#include "malloc_ewram.h"
#include "lib/m4a/m4a.h"
#include "game/camera.h"
#include "game/interactables/ice_launcher.h"
#include "game/player.h"
#include "game/player_callbacks.h"
#include "game/save.h"
#include "game/stage.h"
#include "constants/animations.h"
#include "constants/move_states.h"
#include "constants/songs.h"
#include "constants/zones.h"

void sub_8003D2C(void);
void Task_80045EC(void); // -> PlayerUnkC4
void sub_8004B14();
void sub_8004BD0(Player *p, s32 arg1, s32 arg2);
void TaskDestructor_8004D2C(struct Task *t);
void Task_8005068(void); // -> PlayerUnkC4
void Task_80050E0(void); // -> PlayerUnkC4
void sub_8005130(Player *p, s32 arg1, s32 arg2);
void sub_80051CC(Player *p, s32 arg1, s32 arg2);
void sub_80059A0(Player *, u16);
s8 sub_8005A24(Player *p, s32 unused);
u8 sub_8005B04(Player *p);
s8 sub_8005B78(Player *p);
void sub_80063B4(Player *p, s32 param1);
void sub_801300C(s16 playerId);
void sub_801310C(s16 playerId);
void sub_8013F4C(Player *p);
void sub_80141EC(Player *p, u8 param1, u8 param2);
bool16 sub_8016D88(Player *p);
void sub_80B7914(Struc_3001150 *strc);
void sub_80B794C(Struc_3001150 *strc);
bool32 sub_80B7AA4(Struc_3001150 *strc);
void sub_80B8E24(void *strc, Player *p, s32 param2, s32 param3);
void sub_8001D58(VoidFn voidFn, u16 color);
void sub_8002414();
void sub_808723C(s16 param0, u8 param1);
extern void sub_8002388(void);

void sub_801320C(Player *p, PlayerSprite *spriteData);
void sub_80136DC(s16 param0);
void sub_8013A68(s16 param0);
bool16 sub_8014A60(Player *p);
bool16 sub_8014D70(Player *p);
s16 sub_8015064(Player *p);
bool32 sub_8015568(Player *p);
bool16 sub_8016EDC(Player *p);
bool32 sub_8017058(Player *p);
void sub_801EBC0(s32, Player *p);
void sub_8023634();
void sub_8026254(Player *p);
void sub_80268B8(s16);
void sub_8027878(u8);
void sub_80278DC(void);

void sub_80B7968(Struc_3001150 *, Player *);
u16 sub_80B7A94(Struc_3001150 *);
extern u16 gMedalTimes[][2];
extern s16 gUnknown_080CE5B8[9]; // Spindash accel related
extern u16 gCharVoicesLifeLost[NUM_CHARACTERS];
extern u16 gUnknown_080D05A8[][2];
extern u16 gUnknown_080CE5CA[10];
extern u16 gUnknown_080CE5E8[NUM_CHARACTERS];
extern s16 gUnknown_080CE5F2[5];
extern u8 gUnknown_080CF468[];
extern s16 gUnknown_080CF470[][2];

static inline void SongStopCheck_inline(Player *p, u16 song)
{
    if (gStageData.gameMode != 7) {
        if (p->moveState & MOVESTATE_1000) {
            Player_StopSong(p, song);
        }
    }
}

void InitializePlayer(s16 playerId)
{
    Player *player;
    Player *partner;
    PlayerUnkC4 *unkC4;
    Task *t;
    Task *temp_r0_4;
    Task *temp_r0_6;
    s16 temp_r4_2;
    u16 temp_r0_3;
    u16 temp_r0_5;
    u16 temp_r0_7;

    player = &gPlayers[playerId];
    partner = &gPlayers[player->charFlags.partnerIndex];

    player->unkC4[0] = TaskCreate(Task_80045EC, sizeof(PlayerUnkC4), playerId + 0x3000, 0U, TaskDestructor_8004D2C);
    unkC4 = TASK_DATA(player->unkC4[0]);
    unkC4->playerId = playerId;
    unkC4->unk0 = 0;

    player->unkC4[1] = TaskCreate(Task_8005068, sizeof(PlayerUnkC4), playerId + 0x3010, 0U, NULL);
    unkC4 = TASK_DATA(player->unkC4[1]);
    unkC4->playerId = playerId;
    unkC4->unk0 = 0;

    player->unkC4[2] = TaskCreate(Task_80050E0, sizeof(PlayerUnkC4), playerId + 0x3020, 0U, NULL);
    unkC4 = TASK_DATA(player->unkC4[2]);
    unkC4->playerId = playerId;
    unkC4->unk0 = 0;

    sub_8013F4C(player);
    sub_80141EC(player, player->charFlags.character, partner->charFlags.character);

    if ((gStageData.zone != 8) && (player->callback != Player_800522C)) {
        SetPlayerCallback(player, Player_8005380);
    }

    sub_801300C(playerId);
    if (gStageData.gameMode != 7) {
        sub_801310C(playerId);
        if (playerId == gStageData.playerIndex) {
            if (gStageData.currMapIndex != 72) {
                sub_8019718(player);
            } else {
                sub_8019718(&gPlayers[PLAYER_1]);
            }
        }

        sub_80203D4(player);
        sub_80B7914(&gUnknown_03001150);

        if ((u32)gStageData.gameMode < 6) {
            sub_8017584(player);
        }
    }
}

void sub_80042F4(Player *p, s32 arg1)
{
    s32 var_r0;
    u8 var_r2;

    if (p->unk25 != arg1) {
        var_r2 = p->unk26;
        if (p->moveState & 0x10000) {
            var_r2 += 0x40;
            var_r2 = -var_r2;
            var_r2 = var_r2 - 0x40;
        }

        var_r0 = var_r2 + 0x20;
        if (var_r0 > 0) {
            if (var_r2 != 0) {
                var_r0 -= 1;
                var_r2 = (u8)var_r0;
            } else {
                var_r2 = 0x20;
            }
        } else if (var_r2 != 0) {
            var_r2 = var_r0;
        } else {
            var_r2 = 0x1F;
        }

        switch (var_r2 >> 6) {
            case 0:
                p->qWorldY -= Q(arg1 - p->unk25);
                return;
            case 2:
                p->qWorldY += Q(arg1 - p->unk25);
                return;
            case 1:
                p->qWorldX += Q(arg1 - p->unk25);
                break;
            case 3:
                p->qWorldX -= Q(arg1 - p->unk25);
                break;
        }
    }
}

void sub_80043B8(void)
{
    Player *p = &gPlayers[PLAYER_1];
    s16 i;

    for (i = 0; i < 4; i++, p++) {
        if ((p->charFlags.someIndex == 1) || (p->charFlags.someIndex == 4)) {
            p->unkA8 = -1U;
            p->unkAC = -1;
            p->unkB0 = -1;
            p->unkB4 = -1;
            p->unkB8 = -1;
            p->unkBC = -1;
            p->unkC0 |= 0xFFFF;
            p->unkC2 |= 0xFFFF;
        }
    }
}

void sub_8004428(s32 arg0, s32 arg1)
{
    Player *player;
    s16 i;

    player = gPlayers;
    for (i = 0; i < 4; i++, player++) {
        if ((player->charFlags.someIndex == 1) || (player->charFlags.someIndex == 4)) {
            switch (player->charFlags.character) {
                case 0:
                    sub_8004BD0(player, arg0, arg1);
                    sub_8005130(player, arg0, arg1);
                    break;
                case 1:
                    sub_8005130(player, arg0, arg1);
                    break;
                case 2:
                    sub_8004BD0(player, arg0, arg1);
                    sub_8005130(player, arg0, arg1);
                    break;
                case 3:
                    sub_80051CC(player, arg0, arg1);
                    sub_8005130(player, arg0, arg1);
                    break;
                case 4:
                    sub_8005130(player, arg0, arg1);
                    break;
            }
        }
    }
}

void sub_80044CC(Player *p)
{
    p->moveState |= MOVESTATE_4000;

    if (gStageData.act == 7) {
        if (p->moveState & MOVESTATE_IN_AIR) {
            p->qSpeedAirX = 0;

            if (gStageData.zone == ZONE_3) {
                p->qSpeedAirY = 0;
            } else {
                p->qSpeedAirY = -Q(3);
            }
            Player_800DB30(p);
        }
    } else if (((p->moveState & MOVESTATE_JUMPING) == MOVESTATE_JUMPING) || (p->charFlags.anim0 == 259) || (p->charFlags.anim0 == 260)) {
        p->qSpeedAirX >>= 1;

        if (p->qSpeedAirY >= 0) {
            p->qSpeedAirY = -Q(3);
        }

        Player_800DB30(p);
        Player_BoostModeDisengage(p);
    }
}

void Task_8004550(void)
{
    s16 i;

    for (i = 0; i < 4; i++) {
        Player *p = &gPlayers[i];
        s32 magic = 0x68FC;

        if (((p->charFlags.someIndex == 1) || (p->charFlags.someIndex == 3))) {
            union MultiSioData *sioData = &gMultiSioRecv[i];
            if (sioData->pat0.unk0 != magic) {
                return;
            }
        }
    }

    sub_8003D2C();

    TasksDestroyAll();
    PAUSE_BACKGROUNDS_QUEUE();
    gBgSpritesCount = 0;
    PAUSE_GRAPHICS_QUEUE();

    CreateCharacterSelect(4U);
}

// (99.49%) https://decomp.me/scratch/zjUHD
NONMATCH("asm/non_matching/game/stage/player__Task_80045EC.inc", void Task_80045EC(void))
{
    Player *p;
    Player *partner;
    u16 temp_r0_8;
    u16 temp_r2_5;
    u16 temp_r6_4;

    PlayerUnkC4 *strc = TASK_DATA(gCurTask);

    p = &gPlayers[strc->playerId];
    if (gStageData.gameMode != 7) {
        sub_8014258(p);
        sub_80143E0(p);
    }
    sub_80142CC(p);
    sub_80144B4(p);
    switch (p->charFlags.someIndex - 1) {
        case 0:
            sub_8004B14();

            if (gStageData.currMapIndex == 11) {
                if (4 & p->keyInput2) {
                    sub_8003D2C();
                    TasksDestroyAll();
                    PAUSE_BACKGROUNDS_QUEUE();
                    gBgSpritesCount = 0;
                    PAUSE_GRAPHICS_QUEUE();
                    sub_8023634();
                    return;
                }
            }
            break;
        case 1:
        case 4:
            partner = GET_SP_PLAYER_V0(PLAYER_2);

            if (MOVESTATE_1000000 & p->moveState) {
                if (p->unk44 > 30) {
                    s32 qX;
                    if (SPRITE_FLAG_GET(&partner->spriteData->s, X_FLIP)) {
                        qX = partner->qWorldX + Q(10);
                    } else {
                        qX = partner->qWorldX - Q(10);
                        asm("");
                    }
                    p->qWorldX = qX;
                    p->qWorldY = partner->qWorldY;

                    if (partner->moveState & MOVESTATE_GRAVITY_SWITCHED) {
                        p->moveState |= MOVESTATE_GRAVITY_SWITCHED;
                    } else {
                        p->moveState &= ~MOVESTATE_GRAVITY_SWITCHED;
                    }
                }

                p->keyInput = 0;
                p->keyInput2 = 0;
                break;
            } else {
                if (p->charFlags.someIndex == 5) {
                    return;
                }

                if (gStageData.gameMode != 1 && gStageData.gameMode != 2) {
                    if (p->charFlags.partnerIndex != gStageData.playerIndex) {
                        p->charFlags.someIndex = 5;
                        return;
                    }
                }

                temp_r6_4 = p->keyInput;
                if ((gStageData.unk4 != 9) && (gStageData.unk4 != 4)) {
                    if (MOVESTATE_2000000 & p->moveState) {
                        p->keyInput = partner->keyInput;
                        p->keyInput2 = partner->keyInput2;
                    } else {
                        if (gStageData.zone != 8) {
                            sub_80B7968(&gUnknown_03001150, p);
                            p->keyInput = sub_80B7A94(&gUnknown_03001150);
                        } else {
                            p->keyInput = 0;

                            if (p->qWorldY < partner->qWorldY - Q(32)) {
                                p->keyInput |= DPAD_DOWN;
                            } else if (p->qWorldY > partner->qWorldY + Q(32)) {
                                p->keyInput |= DPAD_UP;
                            }

                            if (p->qWorldX < partner->qWorldX - Q(32)) {
                                p->keyInput |= DPAD_RIGHT;
                            } else if (p->qWorldX > partner->qWorldX + Q(32)) {
                                p->keyInput |= DPAD_LEFT;
                            }
                        }

                        p->keyInput2 = (temp_r6_4 ^ p->keyInput) & p->keyInput;
                    }
                }
            }
            break;
        case 2:
            sub_80268B8((s16)strc->playerId);
            partner = GET_SP_PLAYER_V0(PLAYER_2);

            if (MOVESTATE_800000 & partner->moveState) {
                if (!(partner->moveState & MOVESTATE_100)) {
                    s32 qX = partner->qWorldX;
                    p->qWorldX = qX;

                    if (partner->moveState & 1) {
                        p->qWorldX = qX - Q(10);
                        p->qWorldY = partner->qWorldY;
                    } else {
                        p->qWorldX = qX + Q(10);
                        p->qWorldY = partner->qWorldY;
                    }
                }
            }
            break;
        case 3:
            temp_r2_5 = *p->demoplayInput_Current;
            p->demoplayInput_Current++;

            if (p->moveState & MOVESTATE_IGNORE_INPUT) {
                p->keyInput = 0;
                p->keyInput2 = 0;
            } else {
                temp_r0_8 = p->keyInput;
                p->keyInput = temp_r2_5;
                p->keyInput2 = p->keyInput & ~temp_r0_8;
            }
            break;

        default:
            return;
    }

    if (gStageData.gameMode != 7) {
        sub_80153BC(p);
        if (gStageData.zone != 8) {
            if ((p->charFlags.someIndex == 1) || (p->charFlags.someIndex == 2) || (p->charFlags.someIndex == 4)) {
                if (!(p->moveState & MOVESTATE_10000000)) {
                    p->callback(p);
                }
                if (gStageData.unk4 == 3) {
                    if ((u32)gStageData.gameMode > 5U) {
                        sub_8015A44(p);
                    }
                }
            }
        } else if (!(p->moveState & MOVESTATE_10000000)) {
            p->callback(p);
        }

        if (gStageData.unk4 == 3) {
            if (!(p->moveState & MOVESTATE_100)) {
                if (MOVESTATE_400000 & p->moveState) {
                    sub_80180D8(p);
                    if (++p->unk42 == 30) {
                        partner = GET_SP_PLAYER_V0(PLAYER_2);
                        if (!(partner->moveState & MOVESTATE_100) || ((partner->charFlags.someIndex) == 2)) {
                            partner->unk44 = 0;
                            partner->moveState = (partner->moveState & ~(MOVESTATE_COLLIDING_ENT | MOVESTATE_100 | MOVESTATE_10000000))
                                | MOVESTATE_1000000;
                            partner->sprColliding = NULL;
                            Player_8007930(partner);
                            if (gStageData.unkBD == 0) {
                                gStageData.unkBD = 1;
                            } else if ((partner->charFlags.someIndex) == 1) {
                                u16 map = gStageData.currMapIndex;
                                gCamera.unk18 = 0;
                                gCamera.unk10 = 0;
                                gCamera.unk1C = gUnknown_080D05A8[map][0];
                                gCamera.unk14 = gUnknown_080D05A8[map][1];
                            }
                        }
                    }
                } else if (MOVESTATE_800000 & p->moveState) {
                    partner = GET_SP_PLAYER_V0(PLAYER_2);
                    sub_80193A4(p);
                    p->unk42 = 0;

                    if (partner->moveState & MOVESTATE_100) {
                        sub_8016F28(p);
                        sub_8016F28(partner);
                    }
                } else {
                    if (0x01000000 & p->moveState) {
                        partner = GET_SP_PLAYER_V0(PLAYER_2);
                        sub_8016F28(p);
                        sub_801816C(p);
                        p->moveState &= ~MOVESTATE_COLLIDING_ENT;
                        p->sprColliding = NULL;
                        p->unk42 = 0;

                        if (partner->moveState & MOVESTATE_100) {
                            sub_8016F28(p);
                            sub_8016F28(partner);
                        }
                    } else {
                        sub_80193CC(p);
                        p->unk42 = 0;
                    }
                }
            }
        }

        if (p->moveState & 0x200) {
            if ((p->unk5C != 0) && (--p->unk5C == 0)) {
                if (gStageData.act == 7) {
                    Player_800613C(p);
                    return;
                }
                Player_8005E80(p);
                return;
            }
        }
    } else {
        if (p->charFlags.someIndex == 1) {
            if (!(p->moveState & MOVESTATE_10000000)) {
                p->callback(p);
            }
            sub_8015A44(p);
        }
    }
}
END_NONMATCH

// TODO: Fake-match!
void sub_8004B14(void)
{
    Player *p;
#ifndef NON_MATCHING
    register u32 var_r0 asm("r0");
    register s32 var_r1 asm("r1");
#else
    u32 var_r0;
    s32 var_r1;
#endif
    u16 var_r4;
    u8 var_r2;
    u32 input;

    PlayerUnkC4 *strc = TASK_DATA(gCurTask);

    p = &gPlayers[strc->playerId];
    if (gStageData.unk4 != 9) {
        if (p->moveState & MOVESTATE_IGNORE_INPUT) {
            p->keyInput = 0;
            p->keyInput2 = 0;
            p->unk22 = gInput;
        } else {
            if (p->unk22) {
                var_r4 = p->unk22;
                p->unk22 = 0;
            } else {
                var_r4 = p->keyInput;
            }
            input = gInput;
            p->keyInput = input;
            if ((gStageData.gameMode == 6) && (p->unk62 != 0)) {
                u32 dpadAny;
                u32 dpad;
#ifndef NON_MATCHING
                asm("mov %0, #0xF0" : "=r"(dpadAny));
#else
                dpadAny = DPAD_ANY;
#endif
                dpad = (input & dpadAny) >> 4;

                var_r0 = ((gStageData.timer));
                var_r1 = var_r0 >> 6;
                var_r1 = var_r1 % 4u;
                if (var_r1 == 0) {
                    var_r1 = 1;
                }

                var_r2 = dpad << var_r1;
                p->keyInput = (var_r2 | (var_r2 >> 4));
                var_r1 = ((u16) ~(DPAD_ANY)&input);
                var_r1 |= (((var_r2 | (var_r2 >> 4)) << 4) & DPAD_ANY);
                p->keyInput = var_r1;
            }

            p->keyInput2 = (var_r4 ^ p->keyInput) & p->keyInput;
        }
    }
}

// (71.60%) https://decomp.me/scratch/JzXgk
NONMATCH("asm/non_matching/game/stage/player__sub_8004BD0.inc", void sub_8004BD0(Player *p, s32 arg1, s32 arg2))
{
    ECharacters partnerChar;
    s32 temp_r3;
    s32 temp_r4;
    s32 temp_r7;
    s32 temp_r7_2;
    s32 var_r3;
    s16 var_r1;
    u32 temp_r1;

    partnerChar = gPlayers[p->charFlags.partnerIndex].charFlags.character;
    if (partnerChar == CHARACTER_CREAM) {
        temp_r3 = p->qWorldX;
        temp_r7 = p->qWorldY;
        if ((MOVESTATE_GRAVITY_SWITCHED & p->moveState) && (temp_r7 >= arg2)) {
            if (!(MOVESTATE_FACING_LEFT & p->moveState)) {
                if (temp_r3 >= arg1) {
                    goto block_10;
                }
            } else {
                goto block_9;
            }
        } else if (temp_r7 <= arg2) {
            if (MOVESTATE_FACING_LEFT & p->moveState) {
            block_7:
                if (temp_r3 >= arg1) {
                    goto block_10;
                }
            } else {
            block_9:
                if (temp_r3 <= arg1) {
                block_10:
                    temp_r4 = I(arg1 - temp_r3);
                    var_r3 = I(arg2 - temp_r7);
                    temp_r7_2 = SQUARE(temp_r4) + SQUARE(var_r3);
                    if (temp_r7_2 <= Q(SQUARE(5))) {
                        if (p->unkB8 >= temp_r7_2) {
                            if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
                                var_r3 = -var_r3;
                            }

                            var_r1 = (u16)sa2__sub_8004418(var_r3, temp_r4);
                            if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
                                var_r1 = (0x400 - var_r1) & 0x3FF;
                            }
                            p->unkA8 = arg1;
                            p->unkAC = arg2;
                            p->unkB8 = temp_r7_2;
                            p->unkC0 = var_r1;
                        }
                    }
                }
            }
        }
    }
}
END_NONMATCH

void sub_8004CC8(s16 playerId)
{
    Player *p;
    Task **temp_r0;
    Task **temp_r0_2;
    Task **temp_r6;
    Task **temp_r6_2;

    p = &gPlayers[playerId];
    TaskDestroy(p->unkC4[0]);
    p->unkC4[0] = NULL;
    TaskDestroy(p->unkC4[1]);
    p->unkC4[1] = NULL;
    TaskDestroy(p->unkC4[2]);
    p->unkC4[2] = NULL;

    p->taskTagAction = NULL;
    p->unkD4 = 0;
    p->unkD8 = 0;
    p->unkDC = 0;

    if (playerId != PLAYER_1) {
        sub_80B794C(&gUnknown_03001150);
    }
}

void TaskDestructor_8004D2C(Task *t) { }

void sub_8004D30(void)
{
    Player *p = &gPlayers[gStageData.playerIndex];
    gMultiSioSend.pat0.unk0 = 0x68FC;
    p->unkC4[0]->main = Task_8004550;
}

void sub_8004D68(s32 x, s32 y)
{
    Player *p;
    s16 i;

    p = &gPlayers[PLAYER_1];
    for (i = 0; i < 4; i++, p++) {
        if (((p->charFlags.someIndex == 2) || (p->charFlags.someIndex == 5)) && sub_80B7AA4(&gUnknown_03001150)) {
            sub_80B8E24(&gUnknown_03001150.filler1C[0], p, x, y);
        }
    }
    sub_8004428(x, y);
}

void sub_8004DD8(s32 qWorldX, s32 qWorldY)
{
    Player *p;
    s16 i;

    p = &gPlayers[PLAYER_1];
    for (i = 0; i < 4; i++, p++) {
        if ((p->charFlags.someIndex == 1) || (p->charFlags.someIndex == 4)) {
            sub_8005130(p, qWorldX, qWorldY);
        }
    }
}

bool16 sub_8004E20(s16 arg0, s16 arg1, u16 *param2)
{
    u16 *var_r2;
    s16 i;
    s32 max;
    s16 temp_r1;

    temp_r1 = gStageData.unk84;
    if (temp_r1 == 0) {
        return FALSE;
    }

    var_r2 = gStageData.unk80;
    for (i = 0; i < temp_r1; i++, var_r2 += 4) {
        if ((var_r2[0] < arg0) && (var_r2[2] > arg0)) {
            if (param2 != NULL) {
                *param2 = var_r2[1];
            }

            if ((var_r2[1] < arg1) && (var_r2[3] > arg1)) {
                return TRUE;
            }
        }
    }

    return FALSE;
}

bool32 Player_PlaySong(Player *p, u16 song)
{
    if ((&gPlayers[gStageData.playerIndex] == p) && (gStageData.gameMode != 2)) {
        m4aSongNumStart(song);
        return TRUE;
    }
    return FALSE;
}

s32 Player_PlayOrContinueSong(Player *p, u16 arg1)
{
    if ((&gPlayers[gStageData.playerIndex] == p) && (gStageData.gameMode != 2)) {
        m4aSongNumStartOrContinue(arg1);
        return TRUE;
    }
    return FALSE;
}

void Player_StopSong(Player *p, u16 song)
{
    if ((&gPlayers[gStageData.playerIndex] == p) && (gStageData.gameMode != 2)) {
        m4aSongNumStop(song);
    }
}

extern u8 *gDemoRecordings[];
void DemoPlayAlloc(Player *p, s16 demoIndex)
{
    const s32 BUFFER_SIZE = 0x1000;

    void *compressedInput = gDemoRecordings[demoIndex];
    void *inputBuffer = EwramMalloc(BUFFER_SIZE);
    CpuFill16(0, inputBuffer, BUFFER_SIZE);
    LZ77UnCompWram(compressedInput, inputBuffer);

    p->demoplayInput_Start = p->demoplayInput_Current = inputBuffer;
}

// // DemoPlayAlloc gets called on demo creation, but DemoPlayFree is not called when it is done.
void DemoPlayFree(Player *p)
{
    u16 *inputBuffer = p->demoplayInput_Start;

    if (inputBuffer) {
        EwramFree(inputBuffer);
    }

    p->demoplayInput_Start = NULL;
    p->demoplayInput_Current = NULL;
}

void Player_8004FC4(Player *p)
{
    u16 prevInput;
    u16 newInput;
    u16 *temp_r0;

    temp_r0 = p->demoplayInput_Current;
    newInput = *p->demoplayInput_Current;
    p->demoplayInput_Current = temp_r0 += 1;

    if (p->moveState & MOVESTATE_IGNORE_INPUT) {
        p->keyInput = 0;
        p->keyInput2 = 0;
    } else {
        prevInput = p->keyInput;
        p->keyInput = newInput;
        p->keyInput2 = newInput & ~prevInput;
    }
}

void Player_Flyer_SoundStop(Player *p)
{
    switch (p->charFlags.character) {
        case CHARACTER_TAILS:
            if ((&gPlayers[gStageData.playerIndex] == p) && (gStageData.gameMode != 2)) {
                m4aSongNumStop(SE_TAILS__FLYING);
                return;
            }
            return;
        case CHARACTER_CREAM:
            if ((&gPlayers[gStageData.playerIndex] == p) && (gStageData.gameMode != 2)) {
                m4aSongNumStop(SE_CREAM__FLYING);
            }
            break;
    }
}

void Task_8005068(void)
{
    PlayerUnkC4 *temp_r1 = TASK_DATA(gCurTask);
    Player *p = &gPlayers[temp_r1->playerId];

    if (p->charFlags.someIndex != 5) {
        sub_801320C(p, p->spriteData);
        sub_80136DC(temp_r1->playerId);
        if (gStageData.gameMode != GAME_MODE_MP_SINGLE_PACK) {
            sub_8013A68(temp_r1->playerId);
        }
        sub_8014670(p);
        if (gStageData.gameMode != GAME_MODE_MP_SINGLE_PACK) {
            sub_8017618(p);
        }
    }
}

void Task_80050E0(void)
{
    PlayerUnkC4 *temp_r1 = TASK_DATA(gCurTask);
    Player *p;

    p = &gPlayers[temp_r1->playerId];
    p->moveState2 = p->moveState;

    if (gStageData.gameMode > GAME_MODE_BOSS_TIME_ATTACK) {
        if (p->charFlags.someIndex == 1) {
            sub_8026254(p);
        }
    }
}

// (95.99%) https://decomp.me/scratch/WQnfu
NONMATCH("asm/non_matching/game/stage/player__sub_8005130.inc", void sub_8005130(Player *p, s32 qWorldX, s32 qWorldY))
{
    s32 dy;
    s32 dx;
    s32 distance;
    s32 max;
    s16 temp_r2;
    s32 qPlayerWorldX = p->qWorldX;
    s32 qPlayerWorldY = p->qWorldY;

    dx = I(qWorldX - qPlayerWorldX);
    dy = I(qWorldY - qPlayerWorldY);
    max = SQUARE(120);
    distance = SQUARE(dx) + SQUARE(dy);
    if ((max >= distance) && (p->unkBC >= distance)) {
        temp_r2 = sa2__sub_8004418(dy, dx);

        if (((p->moveState & MOVESTATE_FACING_LEFT) && ((temp_r2 > 256) && (temp_r2 < 768)))
            || (!(p->moveState & MOVESTATE_FACING_LEFT) && ((temp_r2 < 256) || (temp_r2 > 768)))) {
            p->unkB0 = qWorldX;
            p->unkB4 = qWorldY;
            p->unkBC = distance;
            p->unkC2 = temp_r2;
        }
    }
}
END_NONMATCH

void sub_80051CC(Player *p, s32 qWorldX, s32 qWorldY)
{
    s32 dy;
    s32 dx;
    s32 distance;
    s32 max;
    s16 temp_r2;
    s32 qPlayerWorldX = p->qWorldX;
    s32 qPlayerWorldY = p->qWorldY;

    dx = I(qWorldX - qPlayerWorldX);
    dy = I(qWorldY - qPlayerWorldY);
    max = SQUARE(120);
    distance = SQUARE(dx) + SQUARE(dy);

    if ((max >= distance) && (p->unkBC >= distance)) {
        temp_r2 = sa2__sub_8004418(dy, dx);

        p->unkA8 = qWorldX;
        p->unkAC = qWorldY;
        p->unkB8 = distance;
        p->unkC0 = temp_r2;
    }
}

// TODO: Fake-match
void Player_800522C(Player *p)
{
    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;

    p->moveState |= 0x08000000;
    if (gStageData.act == 2) {
        p->qSpeedAirX = 0;
        p->qSpeedAirY = 0;
        p->moveState |= MOVESTATE_JUMPING;
        sub_8012FC0(p);
        p->charFlags.anim0 = 0x13;
    } else {
        sub_8012FA0(p);
        p->charFlags.anim0 = 0;
    }
    p->callback = Player_80052C8;
    Player_80052C8(p);
}

void Player_80052C8(Player *p)
{
    s16 *var_r1;
    s16 var_r0_2;
    u32 temp_r0;
    void (*var_r0)(Player * p);

    if (!sub_8015064(p)) {
        if (!(p->moveState & 4)) {
            sub_8005800(p);
            sub_8015144(p);
            Player_801479C(p);
            sub_8016D30(p);
            sub_8012EB8(p);
        } else {
            sub_801350C(p);
            sub_8016E50(p);
            sub_8016D30(p);
            sub_8016EB0(p);
            Player_80149E4(p);
        }
        if ((gStageData.unk4 == 1) || (gStageData.unk4 == 8) || (gStageData.unk4 == 2)) {
            p->callback = Player_80052C8;
        } else {
            if (gStageData.gameMode == 6) {
                p->framesInvulnerable = 120;
            } else {
                p->framesInvulnerable = 0;
            }

            p->moveState &= ~MOVESTATE_IGNORE_INPUT;
            if (p->moveState & MOVESTATE_IN_AIR) {
                p->callback = Player_800DB30;
            } else {
                p->callback = Player_8005380;
            }
        }
    }
}

void Player_8005380(Player *p)
{
    s16 temp_r1_2;
    u16 *temp_r2;
    u8 *temp_r1;
    u8 *temp_r2_2;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;

    sub_8012FA0(p);
    if ((p->qSpeedGround != 0) || (temp_r1_2 = (p->unk26 + 0x20) & 0xC0, (temp_r1_2 != 0))) {
        Player_8005528(p);
        return;
    }
    p->idleAndCamCounter = 360;
    p->charFlags.anim0 = temp_r1_2;
    p->charFlags.unk2D_0 = 0;
    Player_BoostModeDisengage(p);
    p->callback = Player_8005434;
    Player_8005434(p);
}

void Player_8005434(Player *p)
{
    Player *partner = GET_SP_PLAYER_V0(PLAYER_2);

    if (((p->moveState & 0x224) != 0x200) && !sub_8014BC4(p) && !sub_8014A60(p) && !sub_8016EDC(p) && !sub_8015568(p)) {
        sub_8015228(p);
        sub_8005800(p);

        if (!sub_801480C(p)) {
            sub_8015144(p);
            sub_8014AF8(p);

            if (!sub_8015064(p)) {
                Player_801479C(p);
                sub_8016D30(p);
                sub_8012EB8(p);
                sub_8016E00(p);

                if (!sub_8015064(p)) {
                    if (p->qSpeedGround != 0) {
                        p->callback = Player_8005528;
                        return;
                    }

                    if (((p->charFlags.someIndex == 2) && (p->charFlags.character == CHARACTER_AMY))
                        && ((partner->charFlags.character == CHARACTER_SONIC) && (p->charFlags.anim0 == 0))) {
                        p->charFlags.anim0 = 249;
                    }
                }
            }
        }
    }
}

void Player_8005528(Player *p)
{
    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);

    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;

    sub_8012FA0(p);
    p->charFlags.anim0 = 8;
    p->unk5A = 0;
    p->idleAndCamCounter = 0;
    p->charFlags.unk2D_0 = 0;
    p->callback = Player_80055B8;
    Player_80055B8(p);
}

void Player_80055B8(Player *p)
{
    Player *partner = GET_SP_PLAYER_V0(PLAYER_2);

    if (((p->moveState & (MOVESTATE_200 | MOVESTATE_COLLIDING_ENT | MOVESTATE_IN_AIR)) != MOVESTATE_200) && !sub_8014BC4(p)
        && !sub_8014A60(p) && !sub_8015568(p)) {
        sub_8015228(p);
        sub_8005800(p);

        if (!sub_801480C(p)) {
            sub_8015144(p);

            if (!sub_8015064(p)) {
                Player_801479C(p);
                sub_8016D30(p);
                sub_8012EB8(p);
                sub_8016E00(p);
                sub_800D7C8(p);

                if ((p->qSpeedGround == 0) && !((p->unk26 + 0x20) & 0xC0)) {
                    {
                        if (p->idleAndCamCounter < 10) {
                            p->idleAndCamCounter++;
                        } else {
                            p->callback = Player_8005380;
                            return;
                        }
                    }
                } else {
                    p->idleAndCamCounter = 0;
                }

                if (gStageData.gameMode != 7) {
                    if (((p->charFlags.someIndex == 2) && (p->charFlags.character == CHARACTER_AMY))
                        && ((partner->charFlags.character == CHARACTER_SONIC) && (p->charFlags.anim0 == 8))) {
                        p->charFlags.anim0 = 250;
                    }
                }
            }
        }
    }
}

void sub_80056CC(Player *p)
{
    if (p->moveState & MOVESTATE_IN_AIR) {
        p->unk26 = 0;
    }

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;

    sub_8012FA0(p);

    p->moveState |= (MOVESTATE_20000000 | MOVESTATE_2000000);
    p->charFlags.anim0 = 8;

    p->unk5A = 0;
    p->idleAndCamCounter = 30;
    p->charFlags.unk2D_0 = 0;
    p->callback = Player_80055B8;
    Player_80055B8(p);
}

void sub_8005778(Player *p)
{
    if (!sub_8014BC4(p) && !sub_8014A60(p) && !sub_8015568(p)) {
        sub_8005800(p);

        if (!sub_801480C(p)) {
            sub_8015144(p);
            if (!sub_8015064(p)) {
                Player_801479C(p);
                sub_8016D30(p);
                sub_8012EB8(p);
                sub_8016E00(p);

                if (--p->idleAndCamCounter == 0) {
                    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000);
                    Player_8005528(p);
                }
            }
        }
    }
}

void sub_8005800(Player *p)
{
    s16 temp_r0;
    s16 anim;
    s16 var_r0_2;
    s8 temp_r1_3;
    s8 var_r5;

    var_r5 = -1;
    if ((p->unk4E == 0) && (0x30 & p->keyInput) != 0) {
        if (p->qSpeedGround > 0) {
            if (DPAD_RIGHT & p->keyInput) {
                sub_80059A0(p, 0U);
            } else {
                var_r5 = sub_8005A24(p, 0);
            }
        } else if (p->qSpeedGround < 0) {
            if (DPAD_LEFT & p->keyInput) {
                sub_80059A0(p, 1U);
            } else {
                var_r5 = sub_8005A24(p, 1);
            }
        } else {
            var_r5 = sub_8005B78(p);
        }
    } else {
        var_r5 = sub_8005B04(p);
    }
    if (gStageData.gameMode != 7) {
        if (0x800000 & p->moveState) {
            if (p->charFlags.state0_subCount > 3U) {
                p->qSpeedGround = Q(7);
                if (p->moveState & MOVESTATE_FACING_LEFT) {
                    p->qSpeedGround = -p->qSpeedGround;
                }
                p->charFlags.state0_subCount = 3;
            }

            switch (var_r5) {
                case 16:
                case 17:
                    var_r5 = 0x12;
                    break;
                case 0:
                    var_r5 = 3;
                    break;
                case 8:
                    var_r5 = 9;
                    break;
            }
        }

        if (var_r5 != -1) {
            p->charFlags.anim0 = var_r5;
        }
    }
    sub_8014E70(p);
    if (gStageData.gameMode != 7) {
        if (((0x44 & p->moveState) == 0x40) && !((p->unk26 + 0x20) & 0xC0)) {
            if (((0x10 & p->keyInput) && !(0x10 & p->keyInput2)) || ((0x20 & p->keyInput) && !(0x20 & p->keyInput2))) {
                if (!(0x800000 & p->moveState)) {
                    var_r0_2 = 0x21;
                    p->charFlags.anim0 = var_r0_2;
                }
            } else {
                var_r0_2 = 0;
                p->charFlags.anim0 = var_r0_2;
            }
        } else {
            anim = p->charFlags.anim0;
            if ((anim != 0) && (anim != 0x11) && (anim != 0x10) && (anim != 3) && (anim != 0xE) && (anim != 0xF) && (anim != 0x12)) {
                if (0x800000 & p->moveState) {
                    p->charFlags.anim0 = 9;
                } else {
                    p->charFlags.anim0 = 8;
                }
            }
        }
        if (p->moveState2 & 0x40) {
            p->moveState = -0x41 & p->moveState;
        }
    }
}

// TODO: Fake-match!
void sub_80059A0(Player *p, u16 arg1)
{
    s16 temp_r4;
#ifndef NON_MATCHING
    register s32 r0 asm("r0");
#else
    s32 r0;
#endif
    s32 temp_r5;
    s32 temp_r6;

    temp_r6 = p->unk90;
    if (p->moveState & MOVESTATE_800000) {
        p->charFlags.anim0 = 9;
    } else {
        p->charFlags.anim0 = 8;
    }

    r0 = arg1 << 0x10;
    temp_r5 = r0;
#ifndef NON_MATCHING
    asm("" ::"r"(r0));
#endif
    if (temp_r5 == 0) {
        temp_r4 = +p->qSpeedGround;
    } else {
        temp_r4 = -p->qSpeedGround;
    }

    if (temp_r4 < p->unk8C) {
        temp_r4 += temp_r6;
        if (temp_r4 > p->unk8C) {
            temp_r4 = (u16)p->unk8C;
        }
    } else {
        p->boostEffectCounter += temp_r6;
    }
    if (temp_r5 == 0) {
        p->qSpeedGround = +temp_r4;
        p->moveState &= ~MOVESTATE_FACING_LEFT;
    } else {
        p->qSpeedGround = -temp_r4;
        p->moveState |= MOVESTATE_FACING_LEFT;
    }
}

s8 sub_8005A24(Player *p, s32 unused)
{
    s16 temp_r2;
    s16 var_r2;
    s32 var_r5;
    u16 temp_r1;
    u16 temp_r3;
    s16 var_r6;
    u8 result;
    void (*var_r0)(Player * p);
    s16 qSpeed;

    result = 0xFF;
    qSpeed = ABS(p->qSpeedGround);
    var_r6 = qSpeed - p->unk94;
    temp_r1 = p->charFlags.anim0;
    if (temp_r1 >= 16 && temp_r1 <= 18) {
        result = (u8)temp_r1;
    } else {
        if (var_r6 >= 512) {
            if (p->charFlags.state0_subCount > 3U) {
                result = 0x11;
            } else {
                if (p->moveState & 0x800000) {
                    result = 0x12;
                } else {
                    result = 0x10;
                }
            }

            Player_PlayOrContinueSong(p, SE_STOPPING);
        }
    }

    if (var_r6 > 0 && var_r6 < 512) {
        if ((((p->qSpeedGround < 0)) && (1 & p->moveState)) || ((p->qSpeedGround > 0) && !(MOVESTATE_FACING_LEFT & p->moveState))) {
            if ((gStageData.gameMode != 7) && (0x800000 & p->moveState)) {
                p->callback = Player_800E084;
            } else {
                p->callback = Player_800D9F4;
            }
        }
    }
    if (p->qSpeedGround < 0) {
        var_r6 = -var_r6;
    }
    p->qSpeedGround = (s16)var_r6;

    return result;
}

u8 sub_8005B04(Player *p)
{
    s16 qSpeed;

    if ((p->qSpeedGround == 0) && !((p->unk26 + 0x20) & 0xC0)) {
        return 0U;
    }

    qSpeed = ABS(p->qSpeedGround);

    qSpeed -= 8;
    if (qSpeed < 0) {
        if (((p->unk26 + 0x20) & 0xC0) == 0) {
            p->qSpeedGround = 0;
            p->idleAndCamCounter = 360;
            return 0U;
        }
    }

    if (p->qSpeedGround < 0) {
        qSpeed = -qSpeed;
    }
    p->qSpeedGround = qSpeed;
    return 8U;
}

s8 sub_8005B78(Player *p)
{
    s8 result;
    s32 temp_r5;
    u32 temp_r3;
    void (*var_r0_2)(Player * p);

    temp_r5 = p->unk90;
    if ((MOVESTATE_FACING_LEFT & p->moveState) != ((DPAD_RIGHT & p->keyInput) >> 4)) {
        if (MOVESTATE_FACING_LEFT & p->moveState) {
            p->qSpeedGround = p->qSpeedGround - temp_r5;
        } else {
            p->qSpeedGround = p->qSpeedGround + temp_r5;
        }
        result = 8;

        sub_8012FA0(p);
    } else {
        if (p->moveState & MOVESTATE_800000) {
            p->callback = Player_800E084;
        } else {
            p->callback = Player_800D9F4;
        }

        result = 8;
    }

    return result;
}

void Player_8005BD4(Player *p)
{
    u32 temp_r2;
    u8 *temp_r1;
    u32 r6 = ((-((s32)p->moveState & 0x4)) >> 31) & 4;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState &= ~MOVESTATE_10000000;
    p->moveState |= (MOVESTATE_IGNORE_INPUT | MOVESTATE_200);
    p->moveState |= r6;
    p->unk5C = 0x78;
    gStageData.unk4 = 5;
    sub_8012FA0(p);
    p->charFlags.unk2D_0 = 0;
    sub_8016F28(p);
    sub_8016F28(GET_SP_PLAYER_V0(PLAYER_2));
    Player_BoostModeDisengage(p);
    p->moveState &= ~MOVESTATE_GRAVITY_SWITCHED;
    p->callback = Player_8005CB8;
    Player_8005CB8(p);
}

void Player_8005CB8(Player *p)
{
    s32 var_r1;
    s32 var_r2;
    s16 screenX = I(p->qWorldX) - gCamera.x;

    if ((uintptr_t)p < (uintptr_t)GET_SP_PLAYER_V0(PLAYER_2)) {
        var_r2 = 0x96;
        var_r1 = 0x82;
    } else {
        var_r2 = 0x6E;
        var_r1 = 0x5A;
    }

    if ((s32)screenX < var_r1) {
        p->keyInput2 = 0x10;
        p->keyInput = 0x10;
    } else if ((s32)screenX > var_r2) {
        p->keyInput = 0x20;
        p->keyInput2 = 0x20;
    } else {
        p->keyInput = 0;
        p->keyInput2 = 0;
        if (!(p->moveState & 4)) {
            if (p->qSpeedGround == 0) {
                p->charFlags.anim0 = 0;
            }
        }
    }
    if ((sub_8015064(p) << 0x10) == 0) {
        if (!(p->moveState & 4)) {
            sub_8005800(p);
            sub_8015144(p);
            Player_801479C(p);
            sub_8016D30(p);
            sub_8012EB8(p);
            p->charFlags.anim0 = 8;
        } else {
            sub_8014940(p);
            sub_8016E50(p);
            sub_8016D30(p);
            sub_8016EB0(p);
            Player_80149E4(p);
            p->charFlags.anim0 = 0x18;
            if (!(p->moveState & 4)) {
                p->charFlags.anim0 = 8;
                Player_Flyer_SoundStop(p);
            }
        }
        p->callback = Player_8005CB8;
    }
}

void Player_8005DAC(Player *p)
{
    u32 temp_r2;
    u8 *temp_r1;
    u32 r6 = ((-((s32)p->moveState & 0x4)) >> 31) & 4;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState &= ~MOVESTATE_10000000;
    p->moveState |= (MOVESTATE_IGNORE_INPUT | MOVESTATE_200);
    p->moveState |= r6;
    sub_8016F28(p);
    sub_8016F28(GET_SP_PLAYER_V0(PLAYER_2));
    Player_BoostModeDisengage(p);
    p->moveState &= ~MOVESTATE_GRAVITY_SWITCHED;
    gStageData.unk4 = 5;
    p->unk5C = 0x78;
    sub_8012FA0(p);
    p->callback = sub_800D8DC;
    sub_800D8DC(p);
}

void Player_8005E80(Player *p)
{
    u16 sp00[ARRAY_COUNT(gUnknown_080CE5CA) / 2][2];
    s16 *temp_r0_2;
    s16 temp_r2;
    u8 *temp_r0;
    u8 var_r0;
#ifndef NON_MATCHING
    register s32 r1 asm("r1");
    register u32 gameMode asm("r2");
#else
    s32 r1;
    u32 gameMode;
#endif
    u16 time;
    StageData *pStageData;

    memcpy(&sp00[0][0], &gUnknown_080CE5CA, 0x14);

    SongStopCheck_inline(p, SE_281);

    p->moveState &= 0xDC510BA1;
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    sub_8016F28(p);
    sub_8016F28(GET_SP_PLAYER_V0(PLAYER_2));
    Player_BoostModeDisengage(p);
    p->moveState &= ~0x10000;
    p->unk13C = 0;
    p->unk13D = 0;
    p->moveState &= ~0x20;
    p->sprColliding = NULL;
    p->qCamOffsetY = -0x320;
    if (p->charFlags.someIndex == 2) {
        p->qWorldX = Q(gCamera.x + 100);
        p->qWorldY = Q(gCamera.y + 120);
        p->unk27 = gPlayers[p->charFlags.partnerIndex].unk27;
    }

    gameMode = gStageData.gameMode;
    if (gameMode == 6) {
        r1 = gStageData.unk5;
        r1 >>= (gStageData.playerIndex * 2);
        r1 &= 3;
        if (r1 == 0) {
            p->charFlags.anim0 = 0x9E;
        } else {
            p->charFlags.anim0 = gameMode;
        }
    } else if ((gStageData.levelTimer <= gMedalTimes[gStageData.currMapIndex][0]) && (gStageData.unk20 == 0)) {
        p->charFlags.anim0 = 0x9E;
        Player_PlaySong(p, sp00[p->charFlags.character][1]);
    } else {
        p->charFlags.anim0 = 0x9D;
        Player_PlaySong(p, sp00[p->charFlags.character][0]);
    }

    if ((gStageData.gameMode != 7) && (p->charFlags.character == CHARACTER_CREAM)) {
        if ((gStageData.gameMode != 6) || (p->charFlags.anim0 == 0x9E)) {
            p->moveState &= ~1;
            if (p->charFlags.anim0 == 0x9D) {
                sub_801EBC0(6U, p);
            } else {
                sub_801EBC0(7U, p);
            }
        }
    }
    if (gStageData.gameMode == 6) {
        p->idleAndCamCounter = 0x1E;
        p->callback = Player_800D944;
        Player_800D944(p);
        return;
    }
    sub_80299FC();
    if (gStageData.gameMode == 3 || gStageData.gameMode == 4) {
        u8 zone = gStageData.zone;
        if (gStageData.act == 7) {
            var_r0 = 3;
        } else {
            var_r0 = gStageData.act - 3;
        }

        if (LOADED_SAVE->timeRecords.table[zone][var_r0][0].time > gStageData.levelTimer) {
            sub_8003DF0(0x60U);
        } else {
            sub_8003DF0(0x5FU);
        }
    } else if (gStageData.zone == 7) {
        sub_8003DF0(0x58U);
    } else {
        u8 map = gStageData.currMapIndex;
        if ((gStageData.levelTimer <= gMedalTimes[map][0]) && (gStageData.unk20 == 0)) {
            sub_8003DF0(0x54U);
        } else {
            sub_8003DF0(0x55U);
        }
    }
    p->idleAndCamCounter = 0x1E;
    p->callback = Player_800D944;
    Player_800D944(p);
}

void Player_800613C(Player *p)
{
    u32 temp_r2;
    u8 *temp_r1;
    u32 r5;
    sub_8016F28(p);
    r5 = ((-((s32)p->moveState & 0x4)) >> 31) & 4;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState |= (MOVESTATE_IGNORE_INPUT | MOVESTATE_200);
    p->moveState |= r5;
    p->moveState &= ~1;
    gStageData.unk4 = 5;
    sub_8012FA0(p);
    p->callback = Player_80061D8;
    Player_80061D8(p);
}

void Player_80061D8(Player *p)
{
    p->keyInput = DPAD_RIGHT;
    p->keyInput2 = DPAD_RIGHT;

    if (!(p->moveState & MOVESTATE_IN_AIR)) {
        sub_8005800(p);
        sub_8015144(p);
        Player_801479C(p);
        sub_8016D30(p);
        sub_8012EB8(p);
    } else {
        sub_8014940(p);
        sub_8016E50(p);
        sub_8016D30(p);
        sub_8016EB0(p);
        Player_80149E4(p);
        p->charFlags.anim0 = 0x18;

        if (!(p->moveState & MOVESTATE_IN_AIR)) {
            p->charFlags.anim0 = 8;
            Player_Flyer_SoundStop(p);
        }
    }

    p->callback = Player_80061D8;
}

void Player_8006250(Player *p)
{
    s32 var_r1_2;
    u32 r6 = ((-((s32)p->moveState & 0x2)) >> 31) & 8;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState |= MOVESTATE_JUMPING;
    p->moveState |= r6;
    p->moveState &= ~MOVESTATE_COLLIDING_ENT;
    sub_8012FF0(p);

    if (ABS(p->qSpeedAirX) < 0x140) {
        p->charFlags.anim0 = 0x13;
    } else {
        p->charFlags.anim0 = 0x14;
    }

    if (p->moveState & 0x80) {
        var_r1_2 = 0x2A0;
    } else {
        var_r1_2 = 0x4E0;
    }
    sub_80063B4(p, var_r1_2);
    p->callback = sub_800EDC8;
    sub_800EDC8(p);
}

void Player_8006310(Player *p)
{
    s16 var_r0;
    s16 var_r1;
    s32 var_r1_2;
    u32 temp_r1;
    u8 *temp_r1_2;
    u32 r6 = ((-((s32)p->moveState & 0x2)) >> 31) & 8;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState |= MOVESTATE_IN_AIR;
    p->moveState |= r6;
    sub_8012FA0(p);

    p->charFlags.anim0 = 0x6C;

    if (p->moveState & 0x80) {
        var_r1_2 = 0x2A0;
    } else {
        var_r1_2 = 0x4E0;
    }
    sub_80063B4(p, var_r1_2);
    p->callback = Player_80064D4;
    Player_80064D4(p);
}

void sub_80063B4(Player *p, s32 arg1)
{
    PlayerSprite *playerSprite;
    u8 temp_r2;

    temp_r2 = p->unk26 - 0x40;
    p->qSpeedAirX += I(arg1 * (COS_24_8(temp_r2 * 4)));
    p->qSpeedAirY += I(arg1 * (SIN_24_8(temp_r2 * 4)));
    p->charFlags.unk2C_04 = 0;
    Player_PlayOrContinueSong(p, 0x74U);

    playerSprite = p->spriteData;
    playerSprite->s.frameFlags &= ~0x4000;
}

void Player_8006424(Player *p)
{
    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState |= MOVESTATE_JUMPING;
    sub_8012FC0(p);

    if (ABS(p->qSpeedAirX) < Q(1.25)) {
        p->charFlags.anim0 = 19;
    } else {
        p->charFlags.anim0 = 20;
    }

    {
        PlayerSprite *playerSprite = p->spriteData;
        playerSprite->s.frameFlags &= ~0x4000;
    }
    Player_PlaySong(p, 0x71);
    p->callback = sub_800EDC8;
    sub_800EDC8(p);
}

void Player_80064D4(Player *p)
{
    PlayerSprite *temp_r2;
    s16 var_r5;
    s16 temp_r0;
    u16 var_r0;
    u32 temp_r1;

    var_r5 = -Q(3);
    if (p->moveState & MOVESTATE_80) {
        var_r5 = -Q(1.5);
    }
    if ((sub_8017058(p) == 0) && ((sub_8014BC4(p) << 0x10) == 0)) {
        if ((p->qSpeedAirY < var_r5) && !(p->keyInput & gStageData.buttonConfig.jump)) {
            p->qSpeedAirY = var_r5;
            p->callback = sub_800EE64;
        } else if (p->qSpeedAirY > 0) {
            p->callback = sub_800EE64;
        }

        if ((p->charFlags.state1 == 0) && (p->qSpeedAirY >= 0)) {
            p->charFlags.state1 = 1;
        } else if (p->charFlags.state1 == 1) {
            temp_r2 = p->spriteData;
            if (temp_r2->s.frameFlags & 0x4000) {
                temp_r2->s.frameFlags &= ~0x4000;
                p->charFlags.state1 = 2;
            }
        }
        sub_800EF18(p);
    }
}

void Player_800657C(Player *p)
{
    PlayerSprite *temp_r2;
    u8 *temp_r1;
    void (*var_r0)(Player * p);

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= ~0x4000;
    p->moveState ^= 1;
    p->unk26 = 0;
    p->qSpeedAirX = +Q(3);
    p->qSpeedAirY = -Q(2.625);

    if (p->moveState & MOVESTATE_FACING_LEFT) {
        p->qSpeedAirX = -p->qSpeedAirX;
    }

    if (p->unkC & 0x40) {
        p->moveState |= 6;
        sub_8012FF0(p);
        p->charFlags.anim0 = 0x14;
        p->callback = sub_800EE38;
    } else {
        p->moveState |= 4;
        Player_8012FE0(p);
        p->charFlags.anim0 = 0x6C;
        p->callback = sub_800EE64;
    }
}

void sub_800DF10(Player *);

void Player_8006654(Player *p)
{
    PlayerSprite *playerSprite;
    u8 *temp_r1;
    u8 v;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;

    p->moveState |= 4;
    Player_8012FE0(p);
    p->charFlags.anim0 = 0x6D;
    playerSprite = p->spriteData;
    playerSprite->s.frameFlags &= 0xFFFFBFFF;
    v = p->unk26 - 0x40;
    p->qSpeedAirX += ((COS_24_8(v * 4) * 39) >> 3);
    p->qSpeedAirY += ((SIN_24_8(v * 4) * 39) >> 3);

    p->charFlags.unk2C_04 = 1;
    p->callback = sub_800DF10;
    sub_800DF10(p);
}

void Player_800673C(Player *p)
{
    PlayerSprite *playerSprite;
    u8 *temp_r1;
    u8 v;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;

    p->moveState |= 4;
    Player_8012FE0(p);
    p->charFlags.anim0 = 0xB3;
    playerSprite = p->spriteData;
    playerSprite->s.frameFlags &= 0xFFFFBFFF;
    v = p->unk26 - 0x40;
    p->qSpeedAirX += ((COS_24_8(v * 4) * 39) >> 3);
    p->qSpeedAirY += ((SIN_24_8(v * 4) * 39) >> 3);

    p->charFlags.unk2C_04 = 1;
    p->callback = sub_800DF10;
    sub_800DF10(p);
}

void Player_8006824(Player *p)
{
    PlayerSprite *playerSprite;
    s16 var_r0;
    s16 var_r1;
    s32 var_r1_2;
    u32 temp_r1;
    u8 *temp_r1_2;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState |= MOVESTATE_IN_AIR;
    Player_8012FE0(p);
    p->charFlags.unk2C_04 = 1;

    p->charFlags.anim0 = 0x6D;
    playerSprite = p->spriteData;
    playerSprite->s.frameFlags &= 0xFFFFBFFF;

    if (p->qSpeedAirX < Q(0.00)) {
        p->qSpeedAirX = -Q(5);
    } else {
        p->qSpeedAirX = +Q(5);
    }
    p->qSpeedAirY = -Q(7);

    p->qWorldX += p->qSpeedAirX;
    p->qWorldY += p->qSpeedAirY;

    p->callback = sub_800DF10;
    sub_800DF10(p);
}

void Player_80068EC(Player *p)
{
    PlayerSprite *playerSprite;
    s16 var_r0;
    s16 var_r1;
    s32 var_r1_2;
    s32 var_r3;
    u32 temp_r1;
    u8 *temp_r1_2;
    u8 v;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState |= MOVESTATE_JUMPING;
    sub_8012FF0(p);

    if (ABS(p->qSpeedAirX) < 0x140) {
        p->charFlags.anim0 = 0x13;
    } else {
        p->charFlags.anim0 = 0x14;
    }

    if (p->moveState & 0x80) {
        var_r3 = 0x2A0;
    } else {
        var_r3 = 0x4E0;
    }

    playerSprite = p->spriteData;
    playerSprite->s.frameFlags &= 0xFFFFBFFF;
    v = p->unk26 - 0x40;
    p->qSpeedAirX += ((COS_24_8(v * 4) * var_r3) >> 8);
    p->qSpeedAirY += ((SIN_24_8(v * 4) * var_r3) >> 8);
    p->callback = sub_800DF10;
    sub_800DF10(p);
}

void Player_80069E4(Player *p)
{
    PlayerSprite *playerSprite;
    s16 var_r0;
    s16 var_r1;
    s32 var_r1_2;
    s32 var_r3;
    u32 temp_r1;
    u8 *temp_r1_2;
    u8 v;
    s32 qSpeed;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState |= MOVESTATE_JUMPING;
    sub_8012FF0(p);

    if (ABS(p->qSpeedAirX) < 0x140) {
        p->charFlags.anim0 = 0x13;
    } else {
        p->charFlags.anim0 = 0x14;
    }

    if (p->moveState & 0x80) {
        var_r3 = 0x2A0;
    } else {
        var_r3 = 0x4E0;
    }

    playerSprite = p->spriteData;
    playerSprite->s.frameFlags &= ~0x4000;
    v = p->unk26 - 0x40;
    p->qSpeedAirX += ((COS_24_8(v * 4) * var_r3) >> 8);
    p->qSpeedAirY += ((SIN_24_8(v * 4) * var_r3) >> 8);
    p->qSpeedAirY >>= 2;
    p->qSpeedAirY += p->qSpeedAirY >> 2;
    p->callback = sub_800DF10;
    sub_800DF10(p);
}

void Player_8006AE4(Player *p)
{
    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState |= MOVESTATE_JUMPING;
    sub_8012FC0(p);

    if (ABS(p->qSpeedAirX) < Q(1.25)) {
        p->charFlags.anim0 = 19;
    } else {
        p->charFlags.anim0 = 20;
    }

    {
        PlayerSprite *playerSprite = p->spriteData;
        playerSprite->s.frameFlags &= ~0x4000;
    }

    p->callback = sub_800DF5C;
    sub_800DF5C(p);
}

void Player_8006B8C(Player *p)
{
    PlayerSprite *playerSprite;
    s16 var_r0;
    s16 var_r1;
    s32 var_r1_2;
    s32 var_r3;
    u32 temp_r1;
    u8 *temp_r1_2;
    u8 v;
    s32 qSpeed;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState &= ~0x20;
    p->moveState |= MOVESTATE_IN_AIR;
    sub_8012FA0(p);

    p->charFlags.anim0 = 0x6C;

    if (p->moveState & 0x80) {
        var_r3 = 0x2A0;
    } else {
        var_r3 = 0x4E0;
    }

    v = p->unk26 - 0x40;
    p->qSpeedAirX += ((COS_24_8(v * 4) * var_r3) >> 8);
    p->qSpeedAirY += ((SIN_24_8(v * 4) * var_r3) >> 8);
    playerSprite = p->spriteData;
    playerSprite->s.frameFlags &= ~0x4000;
    p->callback = Player_8006C70;
    Player_8006C70(p);
}

void Player_8006C70(Player *p)
{
    PlayerSprite *temp_r2;
    u16 temp_r0;
    u16 var_r0;
    u32 temp_r1;

    if (!sub_8014BC4(p)) {
        if ((p->charFlags.state1 == 0) && ((s32)p->qSpeedAirY >= 0)) {
            var_r0 = 1;
            p->charFlags.state1 = 1;
        } else if (p->charFlags.state1 == 1) {
            if (0x4000 & p->spriteData->s.frameFlags) {
                p->spriteData->s.frameFlags &= ~0x4000;
                p->charFlags.state1 = 2;
            }
        }
        sub_8014940(p);

        if (!sub_8015064(p)) {
            sub_8016E50(p);
            sub_8016D30(p);
            sub_8016EB0(p);
            Player_80149E4(p);
            sub_8017004(p);
        }
    }
}

void Player_8006CF0(Player *p)
{
    PlayerSprite *playerSprite;
    s16 var_r0;
    s16 var_r1;
    s32 var_r1_2;
    s32 var_r3;
    u32 temp_r1;
    u8 *temp_r1_2;
    u8 v;
    s32 qSpeed;
    s32 theta;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState &= ~0x20;
    p->moveState |= MOVESTATE_IN_AIR;
    sub_8012FA0(p);

    p->charFlags.anim0 = 11;

    theta = 768;
    var_r3 = 0x4E0;
    p->qSpeedAirX += ((COS_24_8(theta) * var_r3) >> 8);
    p->qSpeedAirY += ((SIN_24_8(theta) * var_r3) >> 8);
    playerSprite = p->spriteData;
    playerSprite->s.frameFlags &= ~0x4000;
    p->callback = Player_800EB5C;
    Player_800EB5C(p);
}

void Player_8006DB8(Player *p)
{
    PlayerSprite *playerSprite;
    s16 var_r0;
    s16 var_r1;
    s32 var_r1_2;
    s32 var_r3;
    s32 var_r5;
    u8 v;

    var_r5 = p->moveState & MOVESTATE_800000;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState &= ~(MOVESTATE_10000000 | MOVESTATE_IGNORE_INPUT);

    p->moveState |= (MOVESTATE_20000000 | MOVESTATE_IN_AIR);
    p->moveState |= var_r5;

    playerSprite = p->spriteData;
    playerSprite->s.frameFlags &= 0xFFFFBFFF;
    p->idleAndCamCounter = 0xa;

    if (p->moveState & 0x800000) {
        sub_800E150(p);
    } else {
        p->charFlags.anim0 = 0x6C;
        p->callback = Player_8006E70;
        Player_8006E70(p);
    }
}

void Player_8006E70(Player *p)
{
    if (!sub_8014BC4(p)) {
        if ((p->charFlags.state1 == 0) && ((s32)p->qSpeedAirY >= 0)) {
            p->charFlags.state1 = 1;
        } else if (p->charFlags.state1 == 1) {
            if (0x4000 & p->spriteData->s.frameFlags) {
                p->spriteData->s.frameFlags &= ~0x4000;
                p->charFlags.state1 = 2;
            }
        }
        sub_8014940(p);

        if (!sub_8015064(p)) {
            sub_8016E50(p);
            sub_8016D30(p);
            sub_8016EB0(p);
            Player_80149E4(p);
            sub_8017004(p);

            if (--p->idleAndCamCounter == 0) {
                p->callback = Player_8006F98;
            }
        }
    }
}

void Player_8006F08(Player *p)
{
    PlayerSprite *playerSprite;
    s16 var_r0;
    s16 var_r1;
    s32 var_r1_2;
    s32 var_r3;
    s32 var_r5;
    u8 v;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState &= ~(MOVESTATE_10000000 | MOVESTATE_IGNORE_INPUT | MOVESTATE_8 | MOVESTATE_2);

    p->moveState |= (MOVESTATE_IN_AIR);

    playerSprite = p->spriteData;
    playerSprite->s.frameFlags &= 0xFFFFBFFF;

    p->charFlags.anim0 = 0x6C;

    p->callback = Player_8006C70;
    Player_8006C70(p);
}

void Player_8006F98(Player *p)
{
    PlayerSprite *playerSprite;
    s32 var_r5;
    u8 v;

    var_r5 = p->moveState & MOVESTATE_800000;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState &= ~(MOVESTATE_10000000 | MOVESTATE_IGNORE_INPUT);

    p->moveState |= (MOVESTATE_IN_AIR);
    p->moveState |= var_r5;

    playerSprite = p->spriteData;
    playerSprite->s.frameFlags &= 0xFFFFBFFF;

    if (p->moveState & 0x800000) {
        sub_800E150(p);
    } else {
        p->charFlags.anim0 = 0x6C;
        p->callback = Player_8006C70;
        Player_8006C70(p);
    }
}

void Player_8007044(Player *p)
{
    PlayerSprite *playerSprite;
    s32 var_r5;
    u8 v;

    var_r5 = p->moveState & MOVESTATE_800000;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState &= ~(MOVESTATE_10000000 | MOVESTATE_IGNORE_INPUT);

    p->moveState |= (MOVESTATE_IN_AIR);
    p->moveState |= var_r5;

    if (p->moveState & 0x10000) {
        s32 qSpeed = p->qSpeedAirY;
        p->qSpeedAirY = -qSpeed;
    }

    p->charFlags.unk2C_04 = 1;
    p->charFlags.state1 = 0;
    playerSprite = p->spriteData;
    playerSprite->s.frameFlags &= 0xFFFFBFFF;

    if (p->moveState & 0x800000) {
        sub_800E150(p);
    } else {
        p->charFlags.anim0 = 0x6D;
        p->callback = sub_800DFA0;
        sub_800DFA0(p);
    }
}

void Player_8007110(Player *p)
{
    PlayerSprite *temp_r2;
    u8 *temp_r0;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;

    p->moveState |= MOVESTATE_IN_AIR;
    p->moveState |= (MOVESTATE_IGNORE_INPUT | MOVESTATE_40000);
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    sub_8016F28(p);
    p->charFlags.anim0 = 0x6E;
    p->charFlags.state1 = 0;
    p->callback = sub_800DFA0;
    sub_800DFA0(p);
}

void Player_80071A8(Player *p)
{
    PlayerSprite *temp_r2;
    u8 *temp_r0;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;

    p->moveState |= MOVESTATE_IN_AIR;
    p->moveState |= (MOVESTATE_IGNORE_INPUT | MOVESTATE_40000);
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    sub_8016F28(p);
    p->charFlags.anim0 = 0x6C;
    p->callback = Player_8006C70;
    Player_8006C70(p);
}

void Player_8007240(Player *p)
{
    PlayerSprite *temp_r2;
    u8 *temp_r0;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;

    p->moveState |= MOVESTATE_IN_AIR;
    p->moveState |= (MOVESTATE_IGNORE_INPUT | MOVESTATE_40000);
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    sub_8016F28(p);
    p->charFlags.anim0 = 0x18;
    p->callback = sub_800DFA0;
    sub_800DFA0(p);
}

void Player_80072D8(Player *p)
{
    PlayerSprite *temp_r2;
    u8 *temp_r0;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;

    p->moveState &= ~(MOVESTATE_10000000 | MOVESTATE_IGNORE_INPUT);
    p->moveState |= MOVESTATE_IN_AIR;
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    p->charFlags.anim0 = 0x7F;
    p->callback = sub_800DFA0;
    sub_800DFA0(p);
}

void Player_8007368(Player *p)
{
    PlayerSprite *temp_r2;
    s16 var_r0;
    s32 var_r1;
    u32 temp_r0;
    u8 *temp_r1;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;

    p->moveState = (p->moveState & ~0x20) | 4;
    sub_8012FA0(p);
    switch (p->charFlags.character) {
        case CHARACTER_SONIC:
            p->charFlags.anim0 = 0xAD;
            break;
        case CHARACTER_AMY:
            p->charFlags.anim0 = 0x107;
            break;
    }
    if (p->moveState & 0x80) {
        var_r1 = 0x2A0;
    } else {
        var_r1 = 0x4E0;
    }
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0 - var_r1;
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    p->callback = Player_8007430;
    Player_8007430(p);
}

void Player_8007430(Player *p)
{
    if (!sub_8014BC4(p)) {
        if ((p->charFlags.state1 == 0) && (p->spriteData->s.frameFlags & 0x4000)) {
            p->charFlags.state1 = 1;
        } else if ((p->charFlags.state1 == 1) && ((s32)p->qSpeedAirY >= 0)) {
            p->spriteData->s.frameFlags &= ~0x4000;
            p->charFlags.state1 = 2;
        }
        sub_8014940(p);

        if (!sub_8015064(p)) {
            sub_8016E50(p);
            sub_8016D30(p);
            sub_8016EB0(p);
            Player_80149E4(p);
            sub_8017004(p);
        }
    }
}

void Player_80074B8(Player *p)
{
    PlayerSprite *temp_r2;
    s16 var_r0;
    s32 var_r1;
    u32 temp_r0;
    u8 *temp_r1;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;

    p->spriteData->s.frameFlags &= ~0x4000;
    Player_8012FE0(p);

    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->moveState |= MOVESTATE_IN_AIR;

    switch (p->charFlags.character) {
        case CHARACTER_CREAM:
            p->charFlags.anim0 = 0xC6;
            break;
        case CHARACTER_TAILS:
            p->charFlags.anim0 = 0xDC;
            break;
    }
    if (p->moveState & MOVESTATE_80) {
        var_r1 = 0x2A0;
    } else {
        var_r1 = 0x4E0;
    }
    p->callback = Player_8007560;
    Player_8007560(p);
}

void Player_8007560(Player *p)
{
    if (p->spriteData->s.frameFlags & 0x4000) {
        if (p->charFlags.state1 == 0) {
            p->charFlags.state1 = 1;
            if (p->moveState & 1) {
                if (p->qSpeedAirX > -Q(3)) {
                    p->qSpeedAirX -= Q(3);

                    if (p->qSpeedAirX < -Q(5)) {
                        p->qSpeedAirX = -Q(5);
                    }
                }
            } else if (p->qSpeedAirX < Q(3)) {
                p->qSpeedAirX += Q(3);
                if (p->qSpeedAirX > +Q(5)) {
                    p->qSpeedAirX = +Q(5);
                }
            }
            p->qSpeedAirY = -Q(3);
        }
    }

    if (p->charFlags.state1 != 0) {
        sub_801350C(p);
        sub_8014940(p);
        if (!sub_8015064(p)) {
            sub_8016E50(p);
            sub_8016D30(p);
            sub_8016EB0(p);
            Player_80149E4(p);
            sub_8017004(p);
        }
    }
}

void Player_8007620(Player *p)
{
    PlayerSprite *temp_r2;
    s16 temp_r1_2;
    u8 *temp_r1;

    if (p->unkB8 != -1U) {
        SongStopCheck_inline(p, SE_281);

        p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                          | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                          | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
        p->charFlags.someFlag0 = 0;
        p->charFlags.state0_highValue = 0;
        p->unk99 = 0;
        p->unk9A = 0;
        p->qCamOffsetY = 0;
        p->moveState |= 0x8006;
        temp_r2 = p->spriteData;
        temp_r2->s.frameFlags &= 0xFFFFBFFF;
        p->charFlags.anim0 = 0x14;
        sub_8012FC0(p);
        temp_r1_2 = (s16)p->unkC0;
        p->qSpeedAirX = COS(temp_r1_2) >> 4; // = COS_24_8(temp_r1_2) * 4;
        p->qSpeedAirY = SIN(temp_r1_2) >> 4; // = SIN_24_8(temp_r1_2) * 4;
        if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
            s32 qSpeedAirY = p->qSpeedAirY;
            p->qSpeedAirY = -qSpeedAirY;
        }
        p->idleAndCamCounter = 0x1E;
        Player_PlaySong(p, 0x70U);
        Player_BoostModeEngage(p);
        p->callback = Player_8007714;
        Player_8007714(p);
    }
}

void Player_8007714(Player *p)
{
    PlayerSprite *temp_r2;
    s16 theta;
    u8 *temp_r1;

    if ((--p->idleAndCamCounter == 0) || (p->unkB8 == -1)) {
        p->moveState &= 0xFFFF7FFF;
        p->callback = Player_800DB30;
        Player_BoostModeDisengage(p);
        return;
    }

    theta = (s16)p->unkC0;
    p->qSpeedAirX = COS(theta) >> 3; // = COS_24_8(theta) * 2;
    p->qSpeedAirY = SIN(theta) >> 3; // = SIN_24_8(theta) * 2;
    if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
        s32 qSpeedAirY = p->qSpeedAirY;
        p->qSpeedAirY = -qSpeedAirY;
    }

    sub_801350C(p);
    if (!sub_8015064(p)) {
        sub_8016E50(p);
        sub_8016D30(p);
        sub_8016EB0(p);
        Player_80149E4(p);
        sub_8017004(p);
    }
}

void Player_80077CC(Player *p)
{
    PlayerSprite *temp_r2;
    s16 temp_r1_2;
    u8 *temp_r1;
    u32 moveState = (p->moveState & 0x24);

    if (moveState || !(p->moveState & 0x800)) {
        SongStopCheck_inline(p, SE_281);

        p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                          | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                          | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
        p->charFlags.someFlag0 = 0;
        p->charFlags.state0_highValue = 0;
        p->unk99 = 0;
        p->unk9A = 0;
        p->qCamOffsetY = 0;
        p->moveState |= 0x800000;
        temp_r2 = p->spriteData;
        sub_8012FA0(p);
        p->unk5A = 0;

        if (p->qSpeedGround) {
            p->charFlags.anim0 = 9;
        } else if (p->moveState & MOVESTATE_40) {
            p->charFlags.anim0 = 33;
            p->callback = Player_80077CC;
            return;
        } else {
            p->charFlags.anim0 = 3;
        }

        p->charFlags.unk2D_0 = 0;
        p->callback = Player_8007898;
        Player_8007898(p);
    }
}

void Player_8007898(Player *p)
{
    u32 temp_r1 = p->moveState & 0x24;

    if ((temp_r1 || !(p->moveState & MOVESTATE_800)) && sub_8014BC4(p) && !sub_8014D70(p) && !sub_8014A60(p) && !sub_8016EDC(p)) {
        sub_8005800(p);
        sub_8015144(p);
        Player_801479C(p);
        sub_8016D30(p);
        sub_8014E70(p);
        if (!sub_801480C(p)) {
            sub_8012EB8(p);
            sub_8016E00(p);
            if (!sub_8015064(p)) {
                sub_800D7C8(p);
            }
        }
    }
}

void Player_8007930(Player *p)
{
    PlayerUnkC4 *unkC4 = TASK_DATA(gCurTask);
    Player *partner;
    Task *temp_r0_2;
    s16 temp_r1_3;
    s16 colorId;
    s32 temp_r2_2;
    s32 screenY;
    s32 screenX;
    u16 temp_r1_2;
    u16 temp_r1_4;
    u32 temp_r1;
    void *temp_r0;

    partner = GET_SP_PLAYER_V0(PLAYER_2);
    p->moveState &= 0xFDFFFEFF;
    if (partner->moveState & MOVESTATE_1000000) {
        p->moveState &= ~0x1000000;
        p->callback = Player_8005380;
        return;
    }
    p->moveState &= ~0x40;
    p->moveState |= MOVESTATE_1000000;
    p->charFlags.anim0 = 0xB;
    p->qSpeedGround = 0;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->unk42 = 0;
    p->unk44 = 0;
    p->qCamOffsetY = 0;
    p->unk27 = partner->unk27;
    p->moveState = (p->moveState & 0xFFFEFFFE) | (partner->moveState & 0x10001);

    for (colorId = 0; colorId < 16; colorId++) {
        p->palette[colorId] = gObjPalette[unkC4->playerId * 16 + colorId];
    }

    sub_8016F28(p);
    if ((p->charFlags.someIndex == 2) || (p->charFlags.someIndex == 5) || (p->charFlags.someIndex == 4)) {
        screenX = I(p->qWorldX) - gCamera.x;
        screenY = I(p->qWorldY) - gCamera.y;
    } else {
        screenX = I(partner->qWorldX) - gCamera.x;
        screenY = I(partner->qWorldY) - gCamera.y;
    }
    p->qUnk38 = partner->qWorldX;
    p->qUnk3C = partner->qWorldY;

    // TODO: cam-range!
    if (((u32)(screenX + 32) <= (DISPLAY_WIDTH + 32) + 32) && (screenY >= -32) && (screenY <= (DISPLAY_HEIGHT + 32))) {
        p->qUnkF0 = p->qWorldY;
        p->callback = Player_8007B00;
        Player_8007B00(p);
    } else {
        p->callback = Player_8007C28;
        Player_8007C28(p);
    }

    if (gStageData.task98 != NULL) {
        StageDataTask98 *task98 = TASK_DATA(gStageData.task98);
        screenX = I(task98->qWorldX) - gCamera.x;
        screenY = I(task98->qWorldY) - gCamera.y;

        // TODO: cam-range!
        if ((((u32)(screenX + 32) > (DISPLAY_WIDTH + 32) + 32)) || (screenY < -32) || (screenY > (DISPLAY_HEIGHT + 32))) {
            task98->qWorldX = partner->qWorldX - Q(150);
            task98->qWorldY = partner->qWorldY;
        }
    }
}

void Player_8007B00(Player *p)
{
    Player *partner;
    s16 temp_r0;
    s32 temp_r1_2;
    s16 *temp_r1;
    s32 temp_r3;
    s32 temp_r4_2;
    s32 qWorldY;
    s32 var_r1;
    s32 var_r2;
    u32 temp_r1_3;
    s32 qWorldX;

    partner = GET_SP_PLAYER_V0(PLAYER_2);
    p->unk27 = partner->unk27;
    p->moveState = (p->moveState & 0xFFFEFFFE) | (partner->moveState & 0x10001);
    if (!(partner->moveState & MOVESTATE_1000000)) {
        p->qUnk38 = partner->qWorldX;
        p->qUnk3C = partner->qWorldY;
    }
    qWorldX = p->qUnk38;
    qWorldY = p->qUnk3C;

    if (++p->unk44 <= 0x1E) {
        s32 qUnkF0 = p->qUnkF0;

        if (qUnkF0 < qWorldY) {
            var_r2 = qUnkF0 - Q(32);
        } else {
            var_r2 = qWorldY - Q(32);
        }
        temp_r1_2 = SIN(p->unk44 * 16);
        if (p->unk44 > 0xF) {
            var_r1 = (temp_r1_2 * (var_r2 - qWorldY)) >> 0xE;
            p->qWorldY = qWorldY;
        } else {
            var_r1 = (temp_r1_2 * (var_r2 - qUnkF0)) >> 0xE;
            p->qWorldY = qUnkF0;
        }
        p->qWorldY += var_r1;
        p->qWorldX += partner->qSpeedAirX;
        p->qWorldX += ((qWorldX - p->qWorldX) / (30 - p->unk44));
    } else {
        p->qWorldX = partner->qWorldX;
        p->qWorldY = partner->qWorldY;
        if (!(MOVESTATE_400000 & partner->moveState)) {
            if (!(partner->moveState & MOVESTATE_800000)) {
                p->callback = Player_8005380;
            } else {
                p->callback = Player_8007DF4;
            }
        }
    }
}

void Player_8007C28(Player *p)
{
    Player *partner;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 var_r0_2;
    s32 var_r2;
    s32 var_r4;
    s32 var_r5;
    u32 var_r0_3;
    u32 var_r0_4;
    void (*var_r0)(Player *);

    partner = GET_SP_PLAYER_V0(PLAYER_2);
    var_r5 = 0;
    p->unk27 = partner->unk27;
    p->moveState = (p->moveState & ~(MOVESTATE_GRAVITY_SWITCHED | MOVESTATE_FACING_LEFT))
        | (partner->moveState & (MOVESTATE_GRAVITY_SWITCHED | MOVESTATE_FACING_LEFT));
    if (!(partner->moveState & MOVESTATE_1000000)) {
        p->qUnk38 = partner->qWorldX;
        p->qUnk3C = partner->qWorldY;
    }

    if (p->qWorldX < p->qUnk38) {
        var_r5 = 1;
    }
    p->qWorldX = p->qUnk38;
    p->qWorldY = p->qUnk3C;
    if (++p->unk44 <= 30) {
        p->qWorldY -= SIN(p->unk44 * 16) >> 1;
        if (var_r5 != 0) {
            p->qWorldX = p->qWorldX - ((30 - p->unk44) * Q(5));
        } else {
            p->qWorldX = p->qWorldX + ((30 - p->unk44) * Q(5));
        }

        if (p->qWorldX < 0) {
            p->qWorldX = 0;
        } else {
            var_r0_3 = Q(gUnknown_080D05A8[gStageData.currMapIndex][0]) - 1;

            if (p->qWorldX > var_r0_3) {
                p->qWorldX = var_r0_3;
            }
        }

        if (p->qWorldY < 0) {
            p->qWorldY = 0;
        } else {
            var_r0_4 = Q(gUnknown_080D05A8[gStageData.currMapIndex][1]) - 1;

            if (p->qWorldY > var_r0_4) {
                p->qWorldY = var_r0_4;
            }
        }

        if (p->qWorldX < 0) {
            p->qWorldX = 0;
        }

        if (p->charFlags.someIndex == 1) {
            var_r4 = I(p->qWorldX) - (DISPLAY_WIDTH / 2);
            var_r2 = I(p->qWorldY) - (DISPLAY_HEIGHT / 2);
            if (var_r4 < 0) {
                var_r4 = 0;
            } else {
                temp_r0_2 = gUnknown_080D05A8[gStageData.currMapIndex][0] - 0xF1;
                if (var_r4 > temp_r0_2) {
                    var_r4 = temp_r0_2;
                }
            }
            if (var_r2 < 0) {
                var_r2 = 0;
            } else {
                temp_r0_3 = gUnknown_080D05A8[gStageData.currMapIndex][1] - 0xA1;
                if (var_r2 > temp_r0_3) {
                    var_r2 = temp_r0_3;
                }
            }
            gCamera.x = var_r4;
            gCamera.unk28 = var_r4;
            gCamera.y = var_r2;
            gCamera.unk2C = var_r2;
        }
    } else {
        if (!(MOVESTATE_400000 & partner->moveState)) {
            if (!(partner->moveState & MOVESTATE_800000)) {
                p->callback = Player_8005380;
            } else {
                p->callback = Player_8007DF4;
            }
        }
    }
}

void Player_8007DF4(Player *p)
{
    Player *partner;
    s16 *temp_r1;
    s32 temp_r2;
    s32 var_r1;

    partner = GET_SP_PLAYER_V0(PLAYER_2);
    p->unk27 = partner->unk27;
    p->moveState = (p->moveState & 0xFFFEFFFE) | (partner->moveState & 0x10001);
    temp_r2 = partner->qWorldX;
    p->qWorldX = temp_r2;
    if (partner->moveState & 1) {
        p->qWorldX += -Q(10);
    } else {
        p->qWorldX += +Q(10);
    }

    p->qWorldY = partner->qWorldY;
    p->unk44++;
    if (MOVESTATE_2000000 & partner->moveState) {
        sub_800BF78(partner);
        p->moveState &= 0xFE7FFFFF;
        Player_StopSong(p, SE_TAGACTION_BUILDUP);
        return;
    }
    if (!(partner->moveState & MOVESTATE_800000)) {
        p->qWorldX = partner->qWorldX;
        p->qWorldY = partner->qWorldY;
        p->callback = Player_8005380;
    }
}

void Player_8007EAC(Player *p)
{
    PlayerSprite *temp_r2;
    s16 temp_r1_2;
    s32 var_r5;
    u8 *temp_r1;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState &= 0xDFFFFFFF;
    p->moveState |= 0x800004;
    p->charFlags.anim0 = 0x15;
    if (p->moveState & 0x80) {
        var_r5 = 0x2A0;
    } else {
        var_r5 = 0x4E0;
    }
    sub_8012FA0(p);
    sub_80063B4(p, var_r5);

    p->callback = Player_8007F4C;
    Player_8007F4C(p);
}

void Player_8007F4C(Player *p)
{
    s16 var_r5;

    var_r5 = -Q(3);
    if (p->moveState & MOVESTATE_80) {
        var_r5 = -Q(1.5);
    }
    if (!sub_8017058(p) && sub_8014BC4(p)) {
        if ((p->qSpeedAirY < var_r5) && !(p->keyInput & gStageData.buttonConfig.jump)) {
            p->qSpeedAirY = var_r5;
            p->callback = sub_800EEC4;
        } else if (p->qSpeedAirY > 0) {
            p->callback = sub_800EEC4;
        }
        sub_801350C(p);
        sub_8014940(p);
        if (!sub_8015064(p)) {
            sub_8016E50(p);
            sub_8016D30(p);
            sub_8016EB0(p);
            Player_80149E4(p);
            sub_8017004(p);
        }
    }
}

void Player_8007FE8(Player *p)
{
    PlayerSprite *temp_r2;
    s16 temp_r1_2;
    s32 var_r5;
    u8 *temp_r1;
    s32 r5 = p->moveState & 0x800000;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState |= r5;

    if (p->moveState & 0x800000) {
        p->charFlags.anim0 = 5;
    } else {
        p->charFlags.anim0 = 2;
    }

    p->qSpeedGround = 0;
    p->qCamOffsetY = 0;
    p->idleAndCamCounter = 0x28;
    p->callback = Player_8008080;
    Player_8008080(p);
}

void Player_8008080(Player *p)
{
    PlayerSprite *temp_r2;
    Sprite *s;
    s16 temp_r1;
    s16 temp_r6_2;
    s16 var_r0_2;
    s16 var_r5;
    s16 *temp_r2_2;
    s16 *temp_r2_3;
    s16 *var_r1;
    s32 temp_r1_2;
    u16 charAnim;
    void (*var_r0)(Player *);
    void (*var_r0_3)(Player *);

    s = &p->spriteData->s;
    charAnim = p->charFlags.anim2 - gPlayerCharacterIdleAnims[p->charFlags.character];
    if (sub_8016D88(p)) {
        p->moveState &= 0xFF7FFFFF;
        p->qCamOffsetY = 0;
        return;
    }
    if (p->moveState & MOVESTATE_800000) {
        if (sub_8014BC4(p) == 0) {
            p->qCamOffsetY = 0;
            return;
        }
    } else {
        sub_8014BC4(p);
    }

    if (!(p->moveState & MOVESTATE_800000)) {
        p->charFlags.anim0 = 2;
        if (sub_8015568(p) != 0) {
            p->qCamOffsetY = 0;
            return;
        }
    } else {
        p->charFlags.anim0 = 5;
    }

    if ((DPAD_ANY & p->keyInput) == 0) {
        u16 state1 = p->charFlags.state1;
        if (((charAnim == 2) && (state1 == 0))) {
            p->charFlags.state1 = 1;
            temp_r2 = p->spriteData;
            temp_r2->s.frameFlags &= 0xFFFFBFFF;
        } else if ((charAnim == 5) && (p->charFlags.state1 == 0)) {
            p->charFlags.state1 = 1;
            temp_r2 = p->spriteData;
            temp_r2->s.frameFlags &= 0xFFFFBFFF;
        }
    } else if ((DPAD_ANY & p->keyInput) != DPAD_DOWN) {
        if (p->moveState & MOVESTATE_800000) {
            p->callback = Player_80077CC;
        } else {
            p->callback = Player_8005380;
        }
        p->qCamOffsetY = 0;
    }
    if (((charAnim == 2) || (charAnim == 5)) && (p->charFlags.state1 == 0)) {
        if (p->idleAndCamCounter > 0) {
            p->idleAndCamCounter = p->idleAndCamCounter - 1;
        } else if (p->moveState & 0x10000) {
            if (p->qCamOffsetY > -Q(3.75)) {
                p->qCamOffsetY -= 0x20;
            }
        } else {
            if (p->qCamOffsetY <= 0x3BF) {
                p->qCamOffsetY += 0x20;
            }
        }
    } else if ((charAnim == 2) || (charAnim == 5)) {
        if (p->charFlags.state1 == 1) {
            if (p->moveState & 0x10000) {
                if (p->qCamOffsetY < 0) {
                    p->qCamOffsetY += 0x20;
                }
            } else {
                if (p->qCamOffsetY > 0) {
                    p->qCamOffsetY -= 0x20;
                }
            }
        } else {
            goto block_48;
        }
    }
block_40:
    if ((p->charFlags.state1 == 1) && (s->frameFlags & 0x4000)) {
        if (charAnim == 2) {
            p->callback = Player_8005380;
        } else {
            if (charAnim != 5) {
                p->callback = Player_8005380;
                return;
            }
            p->callback = Player_80077CC;
        }

        p->qCamOffsetY = 0;
    }
block_48:
    sub_8015144(p);
    if (!sub_8015064(p)) {
        Player_801479C(p);
        sub_8016D30(p);
        sub_8014E70(p);

        if (sub_801480C(p)) {
            p->qCamOffsetY = 0;
        } else {
            sub_8012EB8(p);
            sub_8016E00(p);
            if (p->moveState & MOVESTATE_IN_AIR) {
                p->qCamOffsetY = 0;
            }
        }
    }
}

void Player_80082BC(Player *p)
{
    PlayerSprite *temp_r2;
    s16 temp_r1_2;
    s32 var_r5;
    u8 *temp_r1;
    s32 r5 = p->moveState & MOVESTATE_800000;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState |= r5;

    if (p->moveState & MOVESTATE_800000) {
        p->charFlags.anim0 = 4;
    } else {
        p->charFlags.anim0 = 1;
    }

    p->qSpeedGround = 0;
    p->qCamOffsetY = 0;
    p->idleAndCamCounter = 0x28;
    p->callback = Player_8008354;
    Player_8008354(p);
}

void Player_8008354(Player *p)
{
    PlayerSprite *temp_r2;
    Sprite *s;
    s16 temp_r1;
    s16 temp_r6_2;
    s16 var_r0_2;
    s16 var_r5;
    s16 *temp_r2_2;
    s16 *temp_r2_3;
    s16 *var_r1;
    s32 temp_r1_2;
    u16 charAnim;
    void (*var_r0)(Player *);
    void (*var_r0_3)(Player *);

    s = &p->spriteData->s;
    charAnim = p->charFlags.anim2 - gPlayerCharacterIdleAnims[p->charFlags.character];

    if (p->moveState & MOVESTATE_800000) {
        if (sub_8014BC4(p) == 0) {
            p->qCamOffsetY = 0;
            return;
        }
    } else {
        sub_8014BC4(p);
    }

    if (!(p->moveState & MOVESTATE_800000)) {
        p->charFlags.anim0 = 1;
        if (sub_8015568(p) != 0) {
            p->qCamOffsetY = 0;
            return;
        }
    } else {
        p->charFlags.anim0 = 4;
    }

    if ((DPAD_ANY & p->keyInput) == 0) {
        u16 state1 = p->charFlags.state1;
        if (((charAnim == 1) && (state1 == 0))) {
            p->charFlags.state1 = 1;
            temp_r2 = p->spriteData;
            temp_r2->s.frameFlags &= 0xFFFFBFFF;
        } else if ((charAnim == 4) && (p->charFlags.state1 == 0)) {
            p->charFlags.state1 = 1;
            temp_r2 = p->spriteData;
            temp_r2->s.frameFlags &= 0xFFFFBFFF;
        }
    } else if ((DPAD_ANY & p->keyInput) != DPAD_UP) {
        if (p->moveState & 0x800000) {
            p->callback = Player_80077CC;
        } else {
            p->callback = Player_8005380;
        }
        p->qCamOffsetY = 0;
    }
    if (((charAnim == 1) || (charAnim == 4)) && (p->charFlags.state1 == 0)) {
        if (p->idleAndCamCounter > 0) {
            p->idleAndCamCounter = p->idleAndCamCounter - 1;
        } else if (p->moveState & 0x10000) {
            if (p->qCamOffsetY < +Q(4.3125)) {
                p->qCamOffsetY += 0x20;
            }
        } else {
            if (p->qCamOffsetY > -Q(4.3125)) {
                p->qCamOffsetY -= 0x20;
            }
        }
    } else if ((charAnim == 1) || (charAnim == 4)) {
        if (p->charFlags.state1 == 1) {
            if (p->moveState & 0x10000) {
                if (p->qCamOffsetY > 0) {
                    p->qCamOffsetY -= 4;
                }
            } else {
                if (p->qCamOffsetY < 0) {
                    p->qCamOffsetY += 4;
                }
            }
        } else {
            goto block_48;
        }
    }
block_40:
    if ((p->charFlags.state1 == 1) && (s->frameFlags & 0x4000)) {
        if (charAnim == 1) {
            p->callback = Player_8005380;
        } else {
            if (charAnim != 4) {
                p->callback = Player_8005380;
                return;
            }
            p->callback = Player_80077CC;
        }

        p->qCamOffsetY = 0;
    }
block_48:
    sub_8015144(p);
    if (!sub_8015064(p)) {
        Player_801479C(p);
        sub_8016D30(p);
        sub_8014E70(p);

        if (sub_801480C(p)) {
            p->qCamOffsetY = 0;
        } else {
            sub_8012EB8(p);
            sub_8016E00(p);
            if (p->moveState & MOVESTATE_IN_AIR) {
                p->qCamOffsetY = 0;
            }
        }
    }
}

// TODO: Fake-match!
void Player_800856C(Player *p)
{
    s32 var_r0;
    s32 var_r5;

    if (!sub_8014BC4(p)) {
        if (p->moveState & 1) {
            if (DPAD_SIDEWAYS & p->keyInput) {
                if (DPAD_RIGHT & p->keyInput) {
                    p->moveState &= ~1;
                }
                var_r0 = 1;
            } else {
                var_r0 = 2;
            }
        } else {
            if (DPAD_SIDEWAYS & p->keyInput) {
                if (DPAD_LEFT & p->keyInput) {
                    p->moveState |= 1;
                }

                var_r0 = 1;
            } else {
                var_r0 = 2;
            }
        }

#ifndef NON_MATCHING
        asm("mov %0, %1" : "=r"(var_r5) : "r"(var_r0));
#else
        var_r5 = var_r0;
#endif

        if (var_r5 != 0) {
            sub_8005800(p);
            if (var_r5 == 1) {
                p->callback = Player_8005380;
                sub_8015228(p);
                if (p->callback != &sub_800DFEC) {
                    return;
                }

                p->callback = Player_800856C;
            } else {
                p->charFlags.anim0 = 0x22;
            }
        }

        if ((p->keyInput & gStageData.buttonConfig.trick) && (p->charFlags.anim0 == 0x22)) {
            p->charFlags.anim0 = 0;
        }
        sub_8015144(p);
        if (!sub_8015064(p)) {
            Player_801479C(p);
            sub_8016D30(p);
            sub_8014E70(p);
            if (!sub_801480C(p)) {
                sub_8012EB8(p);
                sub_8016E00(p);
            }
        }
    }
}

void Player_8008654(Player *p)
{
    u32 temp_r2;
    u32 var_r2;

    if (!sub_8014BC4(p)) {
        temp_r2 = p->moveState;
        if (p->moveState & 1) {
            if (0x10 & p->keyInput) {
                p->moveState &= ~1;
                p->callback = sub_800DFEC;
                return;
            }
        } else if (0x20 & p->keyInput) {
            p->moveState |= 1;
            p->callback = sub_800DFEC;
            return;
        }

        sub_8005800(p);
        p->callback = Player_8005380;
        sub_8015228(p);

        if (p->callback == sub_800E01C) {
            p->callback = Player_8008654;
            if (p->qSpeedGround == 0) {
                p->charFlags.anim0 = 0x23;
            }
            if ((p->keyInput & gStageData.buttonConfig.trick) && (p->charFlags.anim0 == 0x23)) {
                p->charFlags.anim0 = 0;
            }
            sub_8015144(p);
            if (!sub_8015064(p)) {
                Player_801479C(p);
                sub_8016D30(p);
                sub_8014E70(p);
                if (!sub_801480C(p)) {
                    sub_8012EB8(p);
                    sub_8016E00(p);
                }
            }
        }
    }
}

void Player_800872C(Player *p)
{
    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState |= MOVESTATE_10 | MOVESTATE_2;
    p->charFlags.anim0 = 10;
    sub_8012FC0(p);

    p->Spindash_Velocity = Q(2);
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->qSpeedGround = 0;

    sub_8016F28(p);
    sub_80170A0(p);

    Player_PlaySong(p, SE_SPIN_ATTACK);

    p->callback = Player_80087CC;
    Player_80087CC(p);
}

// (92.40%) https://decomp.me/scratch/z8Vt4
NONMATCH("asm/non_matching/game/stage/player__Player_80087CC.inc", void Player_80087CC(Player *p))
{
    Sprite *temp_r8;
    s16 temp_r1;
    s32 qSpeed;
    s16 temp_r0;
    u16 temp_r0_3;
    u16 temp_r7;
    s16 qVelocity;

    temp_r8 = &p->spriteData->s;
    temp_r7 = p->charFlags.anim2 - gPlayerCharacterIdleAnims[p->charFlags.character];
    if (!(0x80 & p->keyInput)) {
        s16 velocityLutIndex;
        p->moveState &= ~0x10;
        velocityLutIndex = (s32)(p->Spindash_Velocity << 0x10) >> 0x18;
        if (velocityLutIndex > 8) {
            velocityLutIndex = 8;
        }

        qSpeed = gUnknown_080CE5B8[velocityLutIndex];
        if (p->moveState & 1) {
            qSpeed = -qSpeed;
        }
        p->qSpeedGround = qSpeed;
        p->callback = Player_800891C;
        Player_PlaySong(p, 0x6EU);
        return;
    }

    qVelocity = p->Spindash_Velocity;
    temp_r1 = (s16)qVelocity;
    if (temp_r1 != 0) {
        temp_r0 = temp_r1 - (qVelocity >> 5);
        qVelocity = temp_r0;
        if (temp_r0 << 0x10 <= 0) {
            qVelocity = 0;
        }
    }
    if (p->keyInput2 & gStageData.buttonConfig.jump) {
        qVelocity += Q(2);
        temp_r0 = qVelocity;
        if (temp_r0 < Q(8)) {
            qVelocity = Q(8);
        }

        p->charFlags.state1 = 1;
        p->charFlags.someFlag1 = 1;
        Player_PlaySong(p, SE_SPIN_ATTACK);
    }
    p->Spindash_Velocity = qVelocity;
    if ((temp_r7 == 10) && (p->charFlags.state1 == 1) && (temp_r8->frameFlags & 0x4000)) {
        p->charFlags.state1 = 0;
    }
    sub_8015144(p);
    if (!sub_8015064(p)) {
        Player_801479C(p);
        sub_8016D30(p);
        sub_8014E70(p);
        sub_8012EB8(p);
        sub_8016E00(p);
        if (p->moveState & 4) {
            p->callback = Player_8005380;
        }
    }
}
END_NONMATCH

void Player_800891C(Player *p)
{
    PlayerSprite *temp_r2;
    s16 temp_r1_2;
    u8 *temp_r1;
    u32 moveState = (p->moveState & 0x24);

    if (moveState || !(p->moveState & 0x800)) {
        SongStopCheck_inline(p, SE_281);

        p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                          | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                          | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
        p->charFlags.someFlag0 = 0;
        p->charFlags.state0_highValue = 0;
        p->unk99 = 0;
        p->unk9A = 0;
        p->qCamOffsetY = 0;
        p->moveState |= MOVESTATE_2;
        sub_8012FC0(p);
        sub_8016F28(p);
        p->charFlags.anim0 = 11;
        p->spriteData->s.frameFlags &= ~0x4000;
        p->unk78 = 0;

        p->callback = Player_80089CC;
        Player_80089CC(p);
    }
}

void Player_80089CC(Player *p)
{
    u32 moveState = p->moveState;

    if ((((MOVESTATE_COLLIDING_ENT | MOVESTATE_IN_AIR) & p->moveState) || !(moveState & MOVESTATE_800)) && !sub_8014BC4(p)) {
        if (p->qSpeedGround > 0) {
            p->qSpeedGround = p->qSpeedGround - 8;
        } else if (p->qSpeedGround < 0) {
            p->qSpeedGround = p->qSpeedGround + 8;
        }
        if ((u16)(p->qSpeedGround + Q(0.5) - 1) < Q(1) - 1) {
            p->qSpeedGround = 0;
        }

        if (p->qSpeedGround == 0) {
            Player_8005380(p);
        } else {
            sub_8015144(p);
            if (!sub_8015064(p)) {
                Player_801479C(p);
                if (p->moveState & MOVESTATE_IN_AIR) {
                    sub_8016E50(p);
                }
                sub_8016D30(p);
                sub_8014E70(p);

                if (p->unk78 != 0) {
                    p->unk78 -= 1;
                } else if (sub_801480C(p)) {
                    return;
                }

                sub_8012EB8(p);
                sub_8016E00(p);
            }
        }
    }
}

// (90.44%) https://decomp.me/scratch/FrTJ0
NONMATCH("asm/non_matching/game/stage/player__Player_8008A8C.inc", void Player_8008A8C(Player *p))
{
    Vec2_16 *temp_r1;
    Vec2_16 *temp_r1_2;
    s16 temp_r0;
    s32 temp_r2_2;
    s32 var_r0;
    s32 var_r1_2;
    s32 var_r3;
    u32 temp_r0_2;
    u8 temp_r0_3;
    u8 temp_r0_4;
    u8 var_r1;
    s32 var_r6;

    if (++p->idleAndCamCounter > 0x1F) {
        p->qCamOffsetY = 0;
        temp_r0_2 = (p->moveState & ~(0x22000040)) | 4;
        p->moveState = temp_r0_2;
        if (temp_r0_2 & 0x800000) {
            sub_800E150(p);
            return;
        }
        p->callback = sub_800DF10;
        sub_800DF10(p);
        return;
    }
    if (gUnknown_03001060.unk7 != gUnknown_03001060.unk8) {
        return;
    }

    //    var_r6 = 0;
    for (var_r1 = 0; var_r1 < 4; var_r1++) {
        if (p == &gPlayers[var_r1]) {
            var_r6 = var_r1;
            break;
        }
    }

    var_r3 = (2 & var_r6) | (1 & ~(var_r6 & 1));
    if (!((gUnknown_03001060.unk7 >> var_r3) & 1)) {
        var_r3 &= 1;
    }
    if ((gUnknown_03001060.unk8 >> var_r3) & 1) {
        if (((gUnknown_03001060.unk9 >> (var_r3 + 4)) & 1) && ((gUnknown_03001060.unk9 >> (var_r6 + 4)) & 1)) {
            temp_r2_2 = var_r3 * 0x150;
            p->unkE8.x = I(gPlayers[var_r3].qWorldX);
            p->unkE8.y = I(gPlayers[var_r3].qWorldY);
            temp_r0_3 = GetBit(gUnknown_03001060.unk9, var_r3) | (-0x10 & p->unkEC);
            p->unkEC = temp_r0_3;
            var_r1_2 = ((gPlayers[var_r3].moveState >> 16) & 0x1) << 4;
            var_r0 = temp_r0_3 & 0xF;
        } else {
            u8 unk27, *pUnkEC;
            u8 unkEC;
            s32 mask;
            p->unkE8.x = I(p->qWorldX);
            p->unkE8.y = I(p->qWorldY);
            unk27 = p->unk27;
            pUnkEC = &p->unkEC;
            unk27 = (0xF & unk27);
            unkEC = *pUnkEC;
            mask = -0x10;
            p->unkEC = (unkEC & mask) | unk27;
            var_r1_2 = ((p->moveState >> 16) & 0x1) << 4;
            var_r0 = p->unkEC & 0xF;
        }
        p->unkEC = (s8)(var_r0 | var_r1_2);
    }
    p->idleAndCamCounter = 0;
    p->callback = Player_800ED80;
}
END_NONMATCH

void Player_8008C1C(Player *p)
{
    p->qWorldX = Q((u16)p->unkE8.x);
    p->qWorldY = Q((u16)p->unkE8.y);
    p->unk27 = (u8)((u32)(p->unkEC << 0x1C) >> 0x1C);

    if (0xF0 & p->unkEC) {
        p->moveState |= MOVESTATE_GRAVITY_SWITCHED;
    } else {
        p->moveState &= ~MOVESTATE_GRAVITY_SWITCHED;
    }

    p->framesInvulnerable = ZONE_TIME_TO_INT(0, 2);
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->qSpeedGround = 0;
    p->qCamOffsetY = 0;
    gUnknown_03001060.unk8 = 0;
    gUnknown_03001060.unk9 = 0;

    if (&gPlayers[gStageData.playerIndex] == p) {
        gCamera.x = I(p->qWorldX) - (DISPLAY_WIDTH / 2);
        gCamera.unk28 = gCamera.x;
        gCamera.y = I(p->qWorldY) - (DISPLAY_HEIGHT / 2);
        gCamera.unk2C = gCamera.y;
    }
    p->callback = Player_800DAF4;
}

void Player_8008CD0(Player *p)
{
    s16 temp_r1;
    s16 var_r0;
    s16 var_r0_2;
    s16 var_r0_3;
    u8 *temp_r1_2;

    p->framesInvulnerable = 120;
    sub_8016F28(p);
    p->moveState &= 0xFDFFFFFF;
    Player_BoostModeDisengage(p);
    Player_Flyer_SoundStop(p);

    if (ABS(p->qSpeedAirX) <= Q(2.5)) {
        temp_r1 = p->qSpeedAirX;
        if (temp_r1 > 0xA0) {
            var_r0 = -Q(1.5);
            p->qSpeedAirX = var_r0;
        } else if (temp_r1 < -Q(0.625)) {
            p->qSpeedAirX = Q(1.5);
        } else {
            if (p->moveState & MOVESTATE_FACING_LEFT) {
                p->qSpeedAirX = +Q(1.5);
            } else {
                p->qSpeedAirX = -Q(1.5);
            }
        }
        p->charFlags.anim0 = 0x66;
    } else {
        if (p->qSpeedAirX >= 0) {
            p->qSpeedAirX = +Q(1.5);
        } else {
            p->qSpeedAirX = -Q(1.5);
        }
        p->charFlags.anim0 = 0x66;
    }
    p->qSpeedAirY = -Q(3);
    if (MOVESTATE_80 & p->moveState) {
        p->qSpeedAirY >>= 1;
        p->qSpeedAirX >>= 1;
    }

    SongStopCheck_inline(p, SE_281);

    p->moveState &= 0xDC510BA1;
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    temp_r1_2 = &p->filler6A[0x2F];
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;

    if ((p->charFlags.character) == CHARACTER_CREAM) {
        if (p->unk54 == 0) {
            goto block_26;
        }
    } else if (p->unk54 != 0) {
    block_26:
        sub_801EBC0(4U, p);
    }
    p->moveState = (p->moveState | 4) & ~(0x28000022);
    sub_8012FA0(p);
    p->callback = Player_800E1E4;
    Player_800E1E4(p);
}

void Player_HitWithoutRingsUpdate(Player *p)
{
    s16 sp00[5];
    Player *partner;

    memcpy(&sp00, &gCharVoicesLifeLost[0], sizeof(gCharVoicesLifeLost));

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;

    p->moveState &= ~(MOVESTATE_COLLIDING_ENT | MOVESTATE_FACING_LEFT);
    p->moveState &= 0xEFFFFFFF;
    p->moveState |= 0x100;
    Player_8012FE0(p);
    p->charFlags.anim0 = 0x67;
    p->unk13C = 0;
    p->unk13D = 0;
    p->framesInvincible = 0;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = (p->moveState & 0x80) ? -Q(2.625) : -Q(4.875);
    p->qCamOffsetY = 0;

    if ((gStageData.levelTimer == (MAX_COURSE_TIME - 1)) && (gStageData.unk2 == 0)) {
        // TODO: You get longer invulnerability when you reached the max timer?
        p->framesInvulnerable = ZONE_TIME_TO_INT(0, 10);
    } else if ((p->moveState & MOVESTATE_80) && (gStageData.gameMode == 0)) {
        p->framesInvulnerable = ZONE_TIME_TO_INT(0, 3);
    } else {
        p->framesInvulnerable = ZONE_TIME_TO_INT(0, 2);
    }

    sub_8016F28(p);
    p->moveState &= ~(MOVESTATE_2000000);
    Player_PlaySong(p, SE_HIT_WITH_NO_RINGS);
    Player_PlaySong(p, sp00[p->charFlags.character]);
    if (gStageData.gameMode > 4U) {
        if (p->charFlags.someIndex == 1) {
            partner = &gPlayers[p->charFlags.partnerIndex];
            if (!(partner->moveState & MOVESTATE_100)) {
                sub_8009518(partner);
            }
            sub_80278DC();
            if (gStageData.gameMode == 5) {
                sub_8027878(gStageData.lives);
            }
        }
    }
    p->callback = sub_800913C;
    sub_800913C(p);
}

void Player_HitWithoutRings(Player *p)
{
    s16 sp00[NUM_CHARACTERS];
    Player *partner;

    memcpy(&sp00, &gCharVoicesLifeLost[0], sizeof(gCharVoicesLifeLost));

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;

    p->moveState &= ~(MOVESTATE_COLLIDING_ENT | MOVESTATE_FACING_LEFT);
    p->moveState &= 0xEFFFFFFF;
    p->moveState |= 0x100;
    Player_8012FE0(p);
    p->charFlags.anim0 = 0x67;
    p->unk13C = 0;
    p->unk13D = 0;
    p->framesInvincible = 0;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->qCamOffsetY = 0;
    p->framesInvulnerable = ZONE_TIME_TO_INT(0, 2);

    sub_8016F28(p);
    p->moveState &= 0xFDFFFFFF;
    Player_PlaySong(p, SE_HIT_WITH_NO_RINGS);
    Player_PlaySong(p, sp00[p->charFlags.character]);
    if (gStageData.gameMode > 4U) {
        if (p->charFlags.someIndex == 1) {
            partner = &gPlayers[p->charFlags.partnerIndex];
            if (!(partner->moveState & MOVESTATE_100)) {
                sub_8009518(partner);
            }
            sub_80278DC();
            if (gStageData.gameMode == 5) {
                sub_8027878(gStageData.lives);
            }
        }
    }
    p->callback = sub_800913C;
    sub_800913C(p);
}

#define SUB_800913C_PSET(_player)                                                                                                          \
    (_player)->moveState = MOVESTATE_IGNORE_INPUT;                                                                                         \
    (_player)->qWorldX = Q(gStageData.respawnX);                                                                                           \
    (_player)->qWorldY = Q(gStageData.respawnY);                                                                                           \
    (_player)->qSpeedAirX = 0;                                                                                                             \
    (_player)->qSpeedAirY = 0;                                                                                                             \
    (_player)->qSpeedGround = 0;                                                                                                           \
    (_player)->charFlags.boostIsActive = 0;                                                                                                \
    (_player)->boostEffectCounter = 0;                                                                                                     \
    (_player)->unk27 = 1;                                                                                                                  \
    (_player)->unk40 = 0;                                                                                                                  \
    (_player)->unk42 = 0;                                                                                                                  \
    (_player)->unk44 = 0;                                                                                                                  \
    (_player)->Spindash_Velocity = 0;                                                                                                      \
    (_player)->unk48 = 0;                                                                                                                  \
    (_player)->framesInvulnerable = 0;                                                                                                     \
    (_player)->framesInvincible = 0;                                                                                                       \
    (_player)->unk4E = 0;                                                                                                                  \
    (_player)->boostEffectCounter = 0;                                                                                                     \
    (_player)->idleAndCamCounter = 0;                                                                                                      \
    (_player)->unk54 = 0;                                                                                                                  \
    (_player)->unk59 = 0;                                                                                                                  \
    (_player)->unk5A = 0;                                                                                                                  \
    (_player)->unk5B = 0;                                                                                                                  \
    (_player)->unk5E = 0;                                                                                                                  \
    (_player)->unk60 = 0;                                                                                                                  \
    (_player)->unk62 = 0;                                                                                                                  \
    (_player)->unk64 = 0;                                                                                                                  \
    (_player)->unk66 = 0;                                                                                                                  \
    (_player)->unk68 = 0;

void sub_800913C(Player *p)
{
    Player *partner;
    u32 temp_r0;

    sub_8016E50(p);
    sub_8016D30(p);
    if (I(p->qWorldY) - gCamera.y > 0xD0) {
        p->qSpeedAirY = 0;
    }

    if (p->framesInvulnerable > 0) {
        return;
    }

    partner = &gPlayers[p->charFlags.partnerIndex];
    if (p->charFlags.someIndex == 2) {
        if (((s32)partner->framesInvulnerable > 0) && (gStageData.gameMode == 0)) {
            return;
        }
        if ((gStageData.gameMode == 0) && (gStageData.lives == 0) && (partner->moveState & 0x100)) {
            return;
        }
        p->qSpeedGround = 0;
        p->qSpeedAirY = 0;
        p->qSpeedAirX = 0;
        p->qWorldX = partner->qWorldX;
        p->qWorldY = partner->qWorldY;
        p->unk27 = partner->unk27;
        p->framesInvulnerable = 0x78;
        p->unk56 = 0xE;
        p->unk57 = 0x3C;
        temp_r0 = p->moveState & ~MOVESTATE_100;
        p->moveState = temp_r0;
        p->moveState = (temp_r0 & ~MOVESTATE_GRAVITY_SWITCHED) | (partner->moveState & MOVESTATE_GRAVITY_SWITCHED);
        p->callback = Player_8005380;
        return;
    }

    if (gStageData.gameMode == 3) {
        sub_8003D2C();
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();
        sub_808723C(0, 2);
        return;
    }

    if (gStageData.gameMode == 4) {
        sub_8003D2C();
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();
        sub_808723C(0, 3);
        return;
    }

    if ((u32)gStageData.gameMode <= 5U) {
        if (gStageData.lives == 0) {
            if (gStageData.act != 9) {
                sub_8002414();
            }
            goto block_22;
        } else if (gStageData.act == 9) {
        block_22:
            p->callback = sub_800DF9C;
            return;
        }
        gStageData.lives--;
        if (((u32)gStageData.zone < 7) && ((u32)gStageData.act > 2U) && ((u32)gStageData.act < 7)) {
            gStageData.flagSpKey = 0;
        }
        partner = &gPlayers[p->charFlags.partnerIndex];
        if (partner->charFlags.someIndex == 2) {
            partner->framesInvulnerable = 0;
        }
        sub_8001D58(&sub_8002388, 0);
        return;
    }
    if (gStageData.unk4 == 5) {
        p->framesInvulnerable = ZONE_TIME_TO_INT(0, 0.5);
        return;
    }

    SUB_800913C_PSET(p);
    p->unk56 = 14;
    p->unk57 = 60;

    gStageData.unkBD = 1;
    p->callback = Player_800522C;
    if (p->charFlags.someIndex == 1) {
        gStageData.rings = 1;
    }
    gStageData.unkBB = 7;
    MPlayStop(&gMPlayInfo_SE1);
    MPlayStop(&gMPlayInfo_SE2);
    MPlayStop(&gMPlayInfo_SE3);
    partner = &gPlayers[p->charFlags.partnerIndex];
    if (partner->charFlags.someIndex == 2) {
        SUB_800913C_PSET(partner);
        p->unk56 = 14; // TODO: Should these not be set to partner->?
        p->unk57 = 60;
        partner->callback = Player_800522C;
    }
    gCamera.x = gCamera.unk28 = gStageData.respawnX - (DISPLAY_WIDTH / 2);
    gCamera.y = gCamera.unk2C = gStageData.respawnY - (DISPLAY_HEIGHT / 2);
}

void sub_8009518(Player *p)
{
    Player *partner;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    sub_8016F28(p);

    p->moveState &= 0xEDFFFFFF;
    p->moveState &= ~(MOVESTATE_COLLIDING_ENT | MOVESTATE_FACING_LEFT);
    p->moveState |= 0x100;
    p->charFlags.anim0 = 0xA2;
    p->unk13C = 0;
    p->unk13D = 0;
    p->framesInvincible = 0;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;

    if ((gStageData.levelTimer == (MAX_COURSE_TIME - 1)) && (gStageData.unk2 == 0)) {
        // TODO: You get longer invulnerability when you reached the max timer?
        p->framesInvulnerable = ZONE_TIME_TO_INT(0, 10);
    } else {
        p->framesInvulnerable = ZONE_TIME_TO_INT(0, 2);
    }

    p->callback = sub_80095E8;
    sub_80095E8(p);
}

void sub_80095E8(Player *p)
{
    Player *partner;
    u32 temp_r0;

    if (p->framesInvulnerable > 0) {
        return;
    }

    // partner = &gPlayers[p->charFlags.partnerIndex];

    if (gStageData.gameMode == GAME_MODE_TIME_ATTACK || gStageData.gameMode == GAME_MODE_BOSS_TIME_ATTACK) {
        sub_8003D2C();
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();
        sub_808723C(0, 2);
        return;
    }

    if (gStageData.gameMode != 6) {
        if ((gStageData.lives == 0) && (gStageData.act != 9)) {
            sub_8002414();
            p->callback = sub_800DF9C;
            return;
        } else {
            gStageData.lives--;
            sub_8001D58(sub_8002388, 0);
            return;
        }
    }

    MPlayStop(&gMPlayInfo_SE1);
    MPlayStop(&gMPlayInfo_SE2);
    MPlayStop(&gMPlayInfo_SE3);

    if (p->charFlags.someIndex == 1) {
        gStageData.rings = 1;
    }

    gStageData.unkBB = 7;

    SUB_800913C_PSET(p);

    p->unk56 = 14;
    p->unk57 = 60;
    gStageData.unkBD = 1;

    p->callback = Player_800522C;

    gCamera.x = gStageData.respawnX;
    gCamera.y = gStageData.respawnY;
}

void Player_8009780(Player *p)
{
    u16 sp00[NUM_CHARACTERS];
    PlayerSprite *playerSprite;

    memcpy(&sp00, &gUnknown_080CE5E8, 0xA);

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    sub_8016F28(p);
    playerSprite = p->spriteData;
    playerSprite->s.frameFlags &= ~0x4000;
    sub_8012FA0(p);
    p->qSpeedGround = 0;
    p->moveState |= 0x8000;
    p->charFlags.anim0 = sp00[p->charFlags.character];
    p->unk5B = 0xA;

    if (p->charFlags.character == CHARACTER_AMY) {
        Player_8017D18(p);
    }

    p->callback = sub_800E2C8;
    sub_800E2C8(p);
}

void Player_8009850(Player *p)
{
    u8 *temp_r0;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    sub_8016F28(p);
    p->moveState &= 0xFDFFFFFF;
    if (p->charFlags.anim0 != 0x66) {
        p->charFlags.anim0 = 0x66;
    }
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->qSpeedGround = 0;
    p->callback = Player_800EB58;
}

void Player_80098D8(Player *p)
{
    Player *partner;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState = (p->moveState & ~6) | MOVESTATE_20000;
    sub_8012FA0(p);

    partner = GET_SP_PLAYER_V1(PLAYER_2);
    if ((p->charFlags.character == CHARACTER_SONIC) && (partner->charFlags.character == CHARACTER_AMY)) {
        p->charFlags.anim0 = 177;
    } else {
        p->charFlags.anim0 = 111;
    }

    if (p->qSpeedAirX > -Q(1) && p->qSpeedAirX < Q(1)) {
        if (p->qSpeedAirX < 0) {
            p->qSpeedGround = -Q(1);
        } else {
            p->qSpeedGround = +Q(1);
        }
    } else {
        p->qSpeedGround = p->qSpeedAirX;
    }

    p->unk27 = 0;
    p->charFlags.unk2D_0 = p->unkA4;
    p->charFlags.unk2C_04 = 0;
    p->unk5A = 0;
    Player_PlaySong(p, SE_GRINDING);
    p->callback = sub_80099FC;
    sub_80099FC(p);
}

void sub_80099FC(Player *p)
{
    s32 var_r1;
    s8 *var_r2;
    u32 temp_r1;
    u32 var_r0;
    u8 var_r1_2;

    if (p->moveState & 4) {
        Player_StopSong(p, 0x72U);
        p->callback = Player_800DAF4;
    } else {
        sub_80151C4(p);
        if (sub_8015064(p)) {
            return;
        }
        Player_801479C(p);
        sub_8016D30(p);
        sub_8014FA4(p);
        var_r1 = 1;
        if ((s32)p->qSpeedGround < 0) {
            var_r1 = 0xFF;
        }
        if ((s32)(var_r1 << 0x18) < 0) {
            p->moveState = p->moveState | 1;
        } else {
            p->moveState = p->moveState & ~1;
        }

        if ((sub_801480C(p) << 0x10) != 0) {
            p->moveState &= 0xFFFDFFFF;
            Player_StopSong(p, 0x72U);
            p->unk27 = 1;
            p->charFlags.unk2C_01 = 0;
            return;
        } else {
            sub_800D81C(p);
            sub_8012EB8(p);
            if ((p->qSpeedGround == 0) && (p->unk26 == 0)) {
                p->unk27 = 1;
                p->charFlags.unk2C_01 = 0;
                Player_StopSong(p, 0x72U);
                p->moveState &= 0xFFFDFFFF;
                Player_8012FE0(p);
                p->charFlags.anim0 = 0x18;
                p->callback = Player_800DAF4;
                return;
            }
        }
    }

    sub_8014BC4(p);
    if (MOVESTATE_20000 & p->moveState) {
        if (p->moveState & MOVESTATE_800000) {
            p->unk27 = 1;
            Player_StopSong(p, 0x72U);
            p->moveState &= ~MOVESTATE_20000;
            p->moveState |= 4;
            p->callback = sub_800E150;
        }
    }

    p->charFlags.unk2C_01 = 0;
}

void Player_8009B4C(Player *p)
{
    PlayerSprite *temp_r2;
    u32 temp_r1;

    sub_8009D74(p);
    temp_r1 = p->moveState;
    if (temp_r1 & 0x800000) {
        p->moveState = (temp_r1 & 0xFDFFFFFD) | 0x800000;
        p->charFlags.anim0 = 0x15;
        sub_8012FA0(p);
        temp_r2 = p->spriteData;
        temp_r2->s.frameFlags &= 0xFFFFBFFF;
        p->callback = sub_800E198;
        sub_800E198(p);
        return;
    }
    p->charFlags.anim0 = 0x6D;
    p->callback = sub_800DFA0;
    if ((sub_8014BC4(p) << 0x10) == 0) {
        sub_801350C(p);
        sub_8014940(p);
        if ((sub_8015064(p) << 0x10) == 0) {
            sub_8016E50(p);
            sub_8016D30(p);
            sub_8016EB0(p);
            Player_80149E4(p);
            sub_8017004(p);
        }
    }
}

void Player_8009BF0(Player *p)
{
    sub_8009D74(p);
    if (p->moveState & 0x800000) {
        p->moveState = (p->moveState & 0xFDFFFFFD) | 0x800000;
        p->charFlags.anim0 = 0x15;
        sub_8012FA0(p);
        p->spriteData->s.frameFlags &= 0xFFFFBFFF;
        p->callback = sub_800E198;
        sub_800E198(p);
        return;
    }
    p->charFlags.anim0 = 0x18;
    p->callback = sub_800DFA0;
    if ((sub_8014BC4(p) << 0x10) == 0) {
        sub_801350C(p);
        sub_8014940(p);
        if ((sub_8015064(p) << 0x10) == 0) {
            sub_8016E50(p);
            sub_8016D30(p);
            sub_8016EB0(p);
            Player_80149E4(p);
            sub_8017004(p);
        }
    }
}

void Player_8009C94(Player *p)
{
    sub_8009D74(p);
    p->qSpeedAirX += p->qSpeedAirX >> 1;
    p->qSpeedAirY += p->qSpeedAirY >> 1;
    p->charFlags.anim0 = 0x6D;
    p->callback = sub_800DFA0;

    if (!sub_8014BC4(p)) {
        sub_801350C(p);
        sub_8014940(p);
        if (!sub_8015064(p)) {
            sub_8016E50(p);
            sub_8016D30(p);
            sub_8016EB0(p);
            Player_80149E4(p);
            sub_8017004(p);
        }
    }
}

void Player_8009D04(Player *p)
{
    sub_8009D74(p);
    p->qSpeedAirX += p->qSpeedAirX >> 1;
    p->qSpeedAirY += p->qSpeedAirY >> 1;
    p->charFlags.anim0 = 0x18;
    p->callback = sub_800DFA0;

    if (!sub_8014BC4(p)) {
        sub_801350C(p);
        sub_8014940(p);
        if (!sub_8015064(p)) {
            sub_8016E50(p);
            sub_8016D30(p);
            sub_8016EB0(p);
            Player_80149E4(p);
            sub_8017004(p);
        }
    }
}

void sub_8009D74(Player *p)
{
    PlayerSprite *temp_r2_2;
    s16 qSpeedFactorX;
    s32 temp_r6;
    s16 qSpeedFactorY;
    u32 moveState;
    u32 temp_r7;
    u8 temp_r0;

    temp_r0 = p->unkA4;
    temp_r7 = temp_r0 >> 4;
    temp_r6 = 0xF & temp_r0;
    moveState = p->moveState & MOVESTATE_800000;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState &= ~(MOVESTATE_10000000 | MOVESTATE_IGNORE_INPUT);
    p->moveState |= 4;
    p->moveState |= moveState;
    qSpeedFactorX = gUnknown_080CF470[temp_r7][0];
    qSpeedFactorY = gUnknown_080CF470[temp_r7][1];

    if (MOVESTATE_GRAVITY_SWITCHED & p->moveState) {
        qSpeedFactorY = -qSpeedFactorY;
    }

    if (qSpeedFactorX != 0) {
        p->qSpeedAirX = (qSpeedFactorX * gUnknown_080CF468[temp_r6]) >> 4;
        if (p->qSpeedAirX < 0) {
            p->moveState |= 1;
        } else if (p->qSpeedAirX > 0) {
            p->moveState &= ~1;
        }
    }

    if (qSpeedFactorY != 0) {
        p->qSpeedAirY = (qSpeedFactorY * gUnknown_080CF468[temp_r6]) >> 4;
    }
    temp_r2_2 = p->spriteData;
    temp_r2_2->s.frameFlags &= 0xFFFFBFFF;
    p->charFlags.unk2C_04 = 1;
    p->charFlags.state1 = 0;
    p->charFlags.unk2D_0 = 0;
}

void Player_8009E8C(Player *p)
{
    PlayerSprite *temp_r2_2;
    s16 qSpeedFactorX;
    s32 temp_r6;
    s16 qSpeedFactorY;
    u32 moveState;
    u32 temp_r7;
    u8 temp_r0;

    moveState = p->moveState & MOVESTATE_800000;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState &= ~(MOVESTATE_10000000 | MOVESTATE_IGNORE_INPUT | MOVESTATE_COLLIDING_ENT);
    p->sprColliding = NULL;
    p->moveState |= 4;
    p->moveState |= moveState;
    sub_8012FA0(p);

    p->charFlags.unk2D_0 = 0;
    temp_r2_2 = p->spriteData;
    temp_r2_2->s.frameFlags &= ~0x4000;

    if (p->moveState & MOVESTATE_800000) {
        p->moveState &= ~0x2000002;
        p->moveState |= MOVESTATE_800000;
        p->charFlags.anim0 = 21;
        sub_8012FA0(p);
        p->spriteData->s.frameFlags &= ~0x4000;
        p->callback = sub_800E198;
        sub_800E198(p);
    } else {
        p->charFlags.anim0 = 108;
        p->charFlags.state1 = 0;
        p->callback = Player_8006C70;
        Player_8006C70(p);
    }
}

void Player_8009F7C(Player *p, s16 someX, s16 someY)
{
    PlayerSprite **temp_r5;
    PlayerSprite *temp_r1_2;
    PlayerSprite *temp_r1_4;
    u32 moveState;
    u32 temp_r1_3;
    u8 *temp_r0;

    moveState = p->moveState & MOVESTATE_800000;
    SongStopCheck_inline(p, SE_281);
    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState &= ~(MOVESTATE_10000000 | MOVESTATE_IGNORE_INPUT | MOVESTATE_COLLIDING_ENT);
    p->sprColliding = NULL;
    p->moveState |= 0xC;
    p->moveState |= moveState;
    temp_r5 = &p->spriteData;
    temp_r1_2 = *temp_r5;
    temp_r1_2->s.frameFlags &= 0xFFFFBFFF;
    p->qSpeedAirX += someX;
    p->qSpeedAirY = someY - Q(4.875);
    Player_PlaySong(p, 0x114U);
    temp_r1_3 = p->moveState;
    if (temp_r1_3 & 0x800000) {
        p->moveState = (temp_r1_3 & 0xFDFFFFFD) | 0x800000;
        p->charFlags.anim0 = 0x15;
        sub_8012FA0(p);
        temp_r1_4 = *temp_r5;
        temp_r1_4->s.frameFlags &= 0xFFFFBFFF;
        p->callback = sub_800E198;
        sub_800E198(p);
        return;
    }
    p->charFlags.unk2C_04 = 1;
    p->charFlags.anim0 = 0x6E;
    p->callback = Player_8006C70;
    Player_8006C70(p);
}

void Player_800A094(Player *p)
{
    PlayerSprite *temp_r2;
    u8 *temp_r1;

    SongStopCheck_inline(p, SE_281);
    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState = (p->moveState | 6) & ~0x10000000;
    sub_8012FC0(p);
    p->charFlags.anim0 = 0x13;
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    p->callback = sub_800DF10;
    if ((sub_8014BC4(p) << 0x10) == 0) {
        sub_801350C(p);
        sub_8014940(p);
        if ((sub_8015064(p) << 0x10) == 0) {
            sub_8016E50(p);
            sub_8016D30(p);
            sub_8016EB0(p);
            Player_80149E4(p);
            sub_8017004(p);
        }
    }
}

void Player_800A168(Player *p)
{
    PlayerSprite *temp_r2_2;
    u8 *temp_r1;
    u8 *temp_r2;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState = (p->moveState & ~6) | 0x30000000;
    sub_8012FC0(p);
    p->charFlags.anim0 = 0x7A;
    p->charFlags.unk2D_0 = 0;
    p->charFlags.unk2C_04 = 0;
    temp_r2_2 = p->spriteData;
    temp_r2_2->s.frameFlags &= 0xFFFFBFFF;
    p->callback = sub_800DF9C;
    sub_800DF9C(p);
}

void Player_800A218(Player *p)
{
    PlayerSprite *temp_r2_2;
    u8 *temp_r1;
    u8 *temp_r2;
    u32 moveState = p->moveState & MOVESTATE_2;

    SongStopCheck_inline(p, SE_281);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState = (p->moveState & ~0x44) | moveState;

    if (!(p->moveState & MOVESTATE_2)) {
        p->charFlags.anim0 = 0x81;
    }
    p->charFlags.unk2D_0 = 0;
    p->charFlags.unk2C_04 = 0;
    p->callback = sub_800A2B8;
    sub_800A2B8(p);
}

void sub_800A2B8(Player *p)
{
    u16 theta;
    s32 var_r7;
    s16 var_r5;
    s32 cosValue;
    s32 cosValueB;
    s32 v;

    if (p->qWorldX < p->qUnk70) {
        var_r5 = I(p->qUnk70 - p->qWorldX);
        var_r7 = 1;
    } else {
        var_r5 = I(p->qWorldX - p->qUnk70);
        var_r7 = 0;
    }

    if (ABS(p->qSpeedGround) < Q(4)) {
        if (!(p->moveState & 2)) {
            p->callback = Player_8005380;
        } else {
            p->callback = Player_800DB30;
        }

        return;
    }

    sub_8005800(p);

    if (!sub_801480C(p)) {
        sub_8016D30(p);
        p->qSpeedAirX = p->qSpeedGround;
        theta = ((((var_r5 << 16) >> 6) + 0x1000) / 288);
        cosValue = COS(theta & 0x3FF);
        cosValueB = (0x26 - p->unk25);
        v = cosValue;
        v *= cosValueB;
        v >>= 6;
        v -= Q(35);
        p->qWorldY = p->qUnk74 + v;

        if (!(p->moveState & 2)) {
            p->charFlags.anim0 = 0x81;
            p->charFlags.anim2 = gPlayerCharacterIdleAnims[p->charFlags.character] + 0x81;
            var_r5 = ((unsigned)((theta & 0x3FF) * 11) >> 10);
            if (var_r7 == 0) {
                p->charFlags.state1 = 00 + var_r5;
            } else {
                p->charFlags.state1 = 10 - var_r5;
            }
        } else {
            p->charFlags.anim0 = 0xB;
        }
    }
}

void Player_800A3C0(Player *p)
{
    PlayerSprite *temp_r2;
    u8 *temp_r2_2;

    sub_8012FA0(p);
    p->moveState = (p->moveState & 0xFDFFFFF5) | 0x20000000;
    sub_8016F28(p);
    p->charFlags.anim0 = 0x8A;
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    p->unk26 = 0;
    p->qSpeedGround = 0;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = Q(5);
    p->charFlags.unk2D_0 = 0;
    p->charFlags.unk2C_04 = 0;
    p->callback = Player_800A438;
    Player_800A438(p);
}

void Player_800A438(Player *p)
{
    if (p->qSpeedAirY <= -Q(10)) {
        p->charFlags.unk2C_04 = 1;
        p->callback = Player_8006F98;
        p->moveState &= ~0x20;
        p->sprColliding = NULL;
        Player_PlaySong(p, 0x24FU);
    } else {
        if (p->qSpeedAirY > 0) {
            p->qSpeedAirY -= 24;
        } else if (p->qSpeedAirY > -Q(10)) {
            p->qSpeedAirY -= 80;
        }

        if (!sub_8015064(p)) {
            sub_8016D30(p);

            if ((p->qSpeedAirY > 0) && sub_801480C(p)) {
                p->moveState &= ~0x20;
                p->sprColliding = NULL;
            }
        }
    }
}

void Player_800A4C8(Player *p)
{
    PlayerSprite *temp_r2;
    u8 *temp_r2_2;

    sub_8012FA0(p);
    p->moveState = (p->moveState & 0xFDFFFFF1) | 0x20000000;
    sub_8016F28(p);
    p->charFlags.anim0 = 0x89;
    p->charFlags.state1 = 0;
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    p->unk26 = 0;
    p->qSpeedGround = 0;
    p->qSpeedAirX = Q(0);
    p->qSpeedAirY = Q(0);
    p->charFlags.unk2D_0 = 0;
    p->charFlags.unk2C_04 = 0;
    p->callback = sub_800A540;
    sub_800A540(p);
}

void sub_800A540(Player *p)
{
    if (p->spriteData->s.frameFlags & 0x4000) {
        p->qSpeedAirX = Q(3.5);
        p->qSpeedAirY = -Q(6);

        if (MOVESTATE_FACING_LEFT & p->moveState) {
            p->qWorldX += Q(20);
        } else {
            p->qSpeedAirX = -p->qSpeedAirX;
            p->qWorldX -= Q(20);
        }
        p->qWorldY -= Q(20);
        p->moveState = MOVESTATE_IN_AIR | (~(0x20000020) & p->moveState);
        p->sprColliding = NULL;
        p->charFlags.state1 = 1;
        p->callback = Player_800DAF4;
    }
}

void Player_800A5B0(Player *p)
{
    PlayerSprite *temp_r2;
    u8 *temp_r2_2;

    sub_8012FA0(p);
    p->moveState = (p->moveState & 0xFDFFFFD1);
    sub_8016F28(p);
    p->charFlags.anim0 = 0x85;
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    p->unk26 = 0;
    p->qSpeedGround = 0;
    p->qSpeedAirX = Q(0);
    p->qSpeedAirY = Q(1);
    p->charFlags.unk2D_0 = 0;
    p->charFlags.unk2C_04 = 0;
    Player_PlaySong(p, SE_290);
    p->callback = sub_800A62C;
    sub_800A62C(p);
}

void sub_800A62C(Player *p)
{
    s32 var_r1;

    sub_8016D30(p);
    if (sub_801480C(p)) {
        Player_StopSong(p, SE_290);

        if (DPAD_LEFT & p->keyInput) {
            var_r1 = 0;
        } else {
            var_r1 = 1;
        }

        p->qSpeedAirX = Q(3);
        if (var_r1 == 0) {
            p->qSpeedAirX = -p->qSpeedAirX;
        }

        p->qWorldX += p->qSpeedAirX * 2;
        p->qSpeedAirY = -Q(1);
        p->moveState |= 4;
        p->callback = Player_800DB30;
    }
}

void Player_800A690(Player *p)
{
    PlayerSprite *temp_r2;
    u8 *temp_r2_2;

    Player_8012FE0(p);
    p->moveState = (p->moveState & 0xFDFFFFD1) | MOVESTATE_20000000;
    sub_8016F28(p);
    p->charFlags.anim0 = 0x8E;
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    p->unk26 = 0;
    p->qSpeedGround = 0;

    if (p->qSpeedAirX < 0) {
        p->qSpeedAirX = -Q(1);
    } else {
        p->qSpeedAirX = +Q(1);
    }

    p->qSpeedAirY = Q(0);
    p->charFlags.unk2D_0 = 0;
    p->charFlags.unk2C_04 = 0;
    Player_PlaySong(p, SE_607);
    p->callback = Player_800A724;
    Player_800A724(p);
}

void Player_800A724(Player *p)
{
    u8 tempUnk26;

    p->unk26 += 8;
    p->charFlags.state1 = p->unk26 / 26U;
    tempUnk26 = p->unk26;
    p->unk26 = 0;
    sub_8016D30(p);
    if (sub_801480C(p)) {
        Player_StopSong(p, SE_607);
        p->qSpeedAirX = 0;
        if (tempUnk26 & 0x80) {
            p->qSpeedAirY = +0x700;
        } else {
            p->qSpeedAirY = -0x700;
        }

        if (0x10000 & p->moveState) {
            p->qWorldY = p->qWorldY - (p->qSpeedAirY * 2);
        } else {
            p->qWorldY = p->qWorldY + (p->qSpeedAirY * 2);
        }

        p->moveState = MOVESTATE_IN_AIR | (0xDFFFFFFF & p->moveState);
        p->callback = Player_800DB30;
        return;
    } else {
        Player_80149E4(p);
        p->unk26 = tempUnk26;
    }
}

void Player_800A7CC(Player *p)
{
    PlayerSprite *temp_r2;
    u8 *temp_r2_2;

    Player_8012FE0(p);
    p->moveState = (p->moveState & 0xFDFFFFD1) | 0x20000000;
    sub_8016F28(p);
    p->charFlags.anim0 = 0x8E;
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    p->unk26 = 0;
    p->qSpeedGround = 0;

    if (p->qSpeedAirX < 0) {
        p->qSpeedAirX = -Q(1);
    } else {
        p->qSpeedAirX = +Q(1);
    }

    p->qSpeedAirY = Q(0);
    p->charFlags.unk2D_0 = 0;
    p->charFlags.unk2C_04 = 0;
    Player_PlaySong(p, SE_607);
    p->callback = Player_800A860;
    Player_800A860(p);
}

void Player_800A860(Player *p)
{
    u8 tempUnk26;

    p->unk26 += 8;
    p->charFlags.state1 = 9 - (p->unk26 / 26U);
    tempUnk26 = p->unk26;
    p->unk26 = 0;
    sub_8016D30(p);
    if (sub_801480C(p)) {
        Player_StopSong(p, SE_607);
        p->qSpeedAirX = 0;
        if (tempUnk26 & 0x80) {
            p->qSpeedAirY = +0x700;
        } else {
            p->qSpeedAirY = -0x700;
        }

        if (0x10000 & p->moveState) {
            p->qWorldY = p->qWorldY - (p->qSpeedAirY * 2);
        } else {
            p->qWorldY = p->qWorldY + (p->qSpeedAirY * 2);
        }

        p->moveState = MOVESTATE_IN_AIR | (0xDFFFFFFF & p->moveState);
        p->callback = Player_800DB30;
        return;
    } else {
        Player_80149E4(p);
        p->unk26 = tempUnk26;
    }
}

void Player_800A90C(Player *p)
{
    PlayerSprite *temp_r2;
    u8 *temp_r2_2;

    u8 tempUnk26 = p->unk26;
    p->unk26 = 0;
    sub_8012FA0(p);
    p->moveState = (p->moveState & 0xFDFFFFD1) | 0x20000000;
    sub_8016F28(p);
    p->charFlags.anim0 = 0x8E;
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    p->qSpeedGround = 0;

    p->qSpeedAirX = Q(0);
    p->charFlags.unk2D_0 = 0;
    p->charFlags.unk2C_04 = 0;
    p->unk26 = tempUnk26;
    Player_PlaySong(p, SE_610);
    p->callback = Player_800A98C;
    Player_800A98C(p);
}

void Player_800A98C(Player *p)
{
    PlayerSprite *temp_r2_3;
    PlayerSprite *temp_r2_4;
    PlayerSprite *temp_r2_5;
    PlayerSprite *temp_r2_6;
    PlayerSprite *var_r2;
    PlayerSprite **temp_r3;
    PlayerSprite **temp_r3_2;
    PlayerSprite **temp_r3_3;
    s16 *temp_r1;
    s32 var_r1_2;
    s32 var_r1_3;
    u32 var_r0;
    u8 tempUnk26;
    s32 var_r1;

    p->unk26 += 8;
    p->idleAndCamCounter += 8;

    p->charFlags.state1 = (0x80 & p->unk26) ? (((p->unk26 - 128) / 26) + 5) : (((p->unk26 + 000) / 26) + 0);

    tempUnk26 = p->unk26;
    p->unk26 = 0;
    p->qWorldY = p->qUnk74 + COS_24_8(tempUnk26 * 4) * 24;

    if (p->idleAndCamCounter > 0x180) {
        p->qSpeedAirX = 0;

        if (tempUnk26 & 0x80) {
            p->qSpeedAirY -= Q(8);
        } else {
            p->qSpeedAirY += Q(3);
        }

        p->qWorldY += p->qSpeedAirY * 2;
        p->spriteData->s.frameFlags &= 0xFFFFCFFF;
        p->spriteData->s.frameFlags |= 0x1000;
        p->moveState |= 4;
        p->callback = Player_800DB30;
        Player_StopSong(p, 0x262U);
        return;
    }
    if (0x80 & tempUnk26) {
        p->spriteData->s.frameFlags &= 0xFFFFCFFF;
        p->spriteData->s.frameFlags |= 0x2000;
    } else {
        p->spriteData->s.frameFlags &= 0xFFFFCFFF;
        p->spriteData->s.frameFlags |= 0x1000;
    }
    Player_80149E4(p);
    p->unk26 = tempUnk26;
}

void Player_800AAC0(Player *p)
{
    PlayerSprite *temp_r2;
    u8 *temp_r2_2;

    sub_8012FC0(p);
    p->moveState = (p->moveState & 0xFDFFFFD7) | 0x20000006;
    p->charFlags.anim0 = 0xB;
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    sub_8016F28(p);
    p->unk26 = 0;
    p->qSpeedGround = 0;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->idleAndCamCounter = 0x3C;
    p->charFlags.unk2D_0 = 0;
    p->charFlags.unk2C_04 = 0;
    p->moveState |= 0x20000000;
    p->callback = Player_800AB48;
    Player_800AB48(p);
}

void Player_800AB48(Player *p)
{
    s32 temp_r1;
    s32 temp_r2;

    temp_r1 = p->qUnk70;
    temp_r2 = p->qUnk74 - Q(24);

    if (p->qWorldX > temp_r1) {
        p->qWorldX -= Q(1);
    }

    if (p->qWorldX < temp_r1) {
        p->qWorldX += Q(1);
    }

    if (p->qWorldY > temp_r2) {
        p->qWorldY -= Q(1);
    }

    if (p->qWorldY < temp_r2) {
        p->qWorldY += Q(1);
    }

    p->charFlags.unk2C_40 = 1;
    if (--p->idleAndCamCounter == 0) {
        p->qSpeedAirX = +Q(0);
        p->qSpeedAirY = -Q(11);
        p->moveState &= 0xDFFFFFFF;
        p->charFlags.anim0 = 19;
        p->callback = Player_800E67C;
    }
}

void Player_UseSpecialSpringWithKey(Player *p)
{
    PlayerSprite *temp_r2;
    u8 *temp_r0;
    u8 *temp_r2_2;

    SongStopCheck_inline(p, SE_281);
    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState |= MOVESTATE_IGNORE_INPUT;
    p->moveState |= 0x204;
    p->qSpeedAirX = +Q(0);
    p->qSpeedAirY = -Q(5);
    sub_8016F28(p);
    p->charFlags.anim0 = 0x6C;
    p->charFlags.state1 = 0;
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= ~0x4000;
    p->idleAndCamCounter = 0;
    p->charFlags.unk2D_0 = 0;
    p->charFlags.unk2C_04 = 0;
    gCamera.unk18 = gCamera.x;
    gCamera.unk1C = gCamera.x + DISPLAY_WIDTH;
    gCamera.unk10 = gCamera.y;
    gCamera.unk14 = gCamera.y + DISPLAY_HEIGHT;
    p->callback = sub_800ACAC;
    sub_800ACAC(p);
}

void sub_800ACAC(Player *p)
{
    sub_8016D30(p);

    // TODO: Macro!
    if (((gCamera.x - 32) > I(p->qWorldX)) || ((gCamera.x + (DISPLAY_WIDTH + 32)) < I(p->qWorldX)) || (((gCamera.y - 32) > I(p->qWorldY)))
        || (((gCamera.y + (DISPLAY_HEIGHT + 32)) < I(p->qWorldY)))) {
        p->qSpeedAirX = 0;
        p->qSpeedAirY = 0;
        p->qSpeedGround = 0;
        p->idleAndCamCounter++;
    }

    if (p->idleAndCamCounter > 89) {
        sub_80533F4(p->charFlags.character);
        p->callback = Player_800EB4C;
    }
}

// Used by Special Spring, Act Ring and Final Zone Ring.
void Player_800AD24(Player *p)
{
    s16 *temp_r0_2;
    u8 *temp_r0;
    u8 *temp_r2;

    SongStopCheck_inline(p, SE_281);
    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState |= MOVESTATE_IGNORE_INPUT;
    p->moveState |= MOVESTATE_4000000;
    p->moveState |= MOVESTATE_200 | MOVESTATE_IN_AIR;
    sub_8016F28(p);
    Player_BoostModeDisengage(p);
    gStageData.unk4 = 8;
    p->charFlags.anim0 = 10;
    p->idleAndCamCounter = 90;
    p->charFlags.unk2D_0 = 0;
    p->charFlags.unk2C_04 = 0;
    p->qSpeedGround = 0;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    if (gStageData.playerIndex != 0) {
        p->idleAndCamCounter += 30;
    }
    sub_80173F0(p);
    gCamera.unk18 = gCamera.x;
    gCamera.unk1C = gCamera.x + DISPLAY_WIDTH;
    gCamera.unk10 = gCamera.y;
    gCamera.unk14 = gCamera.y + DISPLAY_HEIGHT;
    Player_Flyer_SoundStop(p);
    p->callback = sub_800EAAC;
    sub_800EAAC(p);
}

void Player_800AE14(Player *p)
{
    u8 *temp_r0;
    u8 *temp_r2;

    SongStopCheck_inline(p, SE_281);
    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState |= MOVESTATE_IGNORE_INPUT;
    p->moveState |= MOVESTATE_4000000;
    p->moveState |= MOVESTATE_200 | MOVESTATE_IN_AIR;
    gStageData.unk4 = 8;
    sub_8016F28(p);
    Player_BoostModeDisengage(p);
    gCamera.unk18 = gCamera.x;
    gCamera.unk1C = gCamera.x + DISPLAY_WIDTH;
    gCamera.unk10 = gCamera.y;
    gCamera.unk14 = gCamera.y + DISPLAY_HEIGHT;
    p->charFlags.anim0 = 10;
    p->idleAndCamCounter = 90;
    p->charFlags.unk2D_0 = 0;
    p->charFlags.unk2C_04 = 0;
    p->qSpeedGround = 0;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    sub_80173F0(p);
    Player_Flyer_SoundStop(p);
    p->callback = sub_800EAEC;
    sub_800EAEC(p);
}

void Player_800AEF4(Player *p)
{
    u8 *temp_r0;
    u8 *temp_r2;

    SongStopCheck_inline(p, SE_281);
    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    sub_8016F28(p);
    p->moveState |= MOVESTATE_IGNORE_INPUT;
    p->moveState |= MOVESTATE_200 | MOVESTATE_IN_AIR;
    p->idleAndCamCounter = 90;
    p->charFlags.unk2D_0 = 0;
    p->charFlags.unk2C_04 = 0;
    p->charFlags.anim0 = 11;
    p->callback = sub_800EB14;
    sub_800EB14(p);
}

void sub_800AF98(Player *p)
{
    PlayerSprite *temp_r2;
    u8 *temp_r2_2;

    sub_8012FC0(p);
    p->moveState = (p->moveState & 0xFDFFFFDF) | 0x20000006;
    p->charFlags.anim0 = 0xB;
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    sub_8016F28(p);
    p->unk26 = 0;
    p->qSpeedGround = 0;
    p->idleAndCamCounter = 0x3C;
    p->charFlags.unk2D_0 = 0;
    p->charFlags.unk2C_04 = 0;
}

void Player_800B004(Player *p)
{
    u8 *temp_r5;

    if (p->moveState & MOVESTATE_IN_AIR) {
        p->qWorldX += p->qSpeedAirX;
        p->qWorldY += p->qSpeedAirY;
        sub_800F0BC(p);
        Player_80149E4(p);
        if (!(p->moveState & MOVESTATE_IN_AIR)) {
            p->charFlags.anim0 = 11;
            p->callback = Player_800B004;
        }
    } else {
        p->qSpeedGround = Q(12);
        p->qSpeedAirX = Q_MUL(p->qSpeedGround, COS_24_8(p->unk26 * 4));
        p->qSpeedAirY = Q(0);
        p->qSpeedAirY = Q_MUL(p->qSpeedGround, SIN_24_8(p->unk26 * 4));
        sub_800B0B0(p);
        p->qWorldX += p->qSpeedAirX;
        p->qWorldY += p->qSpeedAirY;
        sub_8012EA8(p);
    }
}

void sub_800B0B0(Player *p)
{
    s32 temp_r1;
    s32 temp_r2;
    s32 var_r0;
    s32 var_r1;
    u8 temp_r5;

    var_r1 = 0x40;
    if ((s32)p->qSpeedGround >= 0) {
        var_r1 = 0xC0;
    }
    temp_r5 = p->unk26 + var_r1;
    temp_r2 = Q(sub_8011BFC(temp_r5, p));
    if (temp_r2 <= 0) {
        temp_r1 = (s32)((temp_r5 + 0x20) & 0xC0) >> 6;
        switch (temp_r1) {
            case 0:
                p->qWorldY += temp_r2;
                p->qSpeedAirY = (s16)temp_r1;
                return;
            case 1:
                var_r0 = p->qWorldX - temp_r2;
                p->qWorldX = var_r0;
                p->qSpeedAirX = 0;
                break;
            case 2:
                p->qWorldY -= temp_r2;
                p->qSpeedAirY = 0;
                return;
            case 3:
                var_r0 = p->qWorldX + temp_r2;
                p->qWorldX = var_r0;
                p->qSpeedAirX = 0;
                break;
        }
    }
}

void Player_800B128(Player *p)
{
    s32 qSomeX;
    s32 qSomeY;

    qSomeX = p->qUnk70;
    qSomeY = p->qUnk74;
    if (p->qWorldX > qSomeX) {
        p->qWorldX -= Q(5);
        if (p->qWorldX < qSomeX) {
            p->qWorldX = qSomeX;
            goto block_3;
        }
    } else {
    block_3:
        if (p->qWorldX < qSomeX) {
            p->qWorldX += Q(5);
            if (p->qWorldX > qSomeX) {
                p->qWorldX = qSomeX;
            }
        }
    }

    if (p->qWorldY > qSomeY) {
        p->qWorldY -= Q(5);

        if (p->qWorldY < qSomeY) {
            p->qWorldY = qSomeY;
            goto block_9;
        }
    } else {
    block_9:
        if (p->qWorldY < qSomeY) {
            p->qWorldY += Q(5);
            if (p->qWorldY > qSomeY) {
                p->qWorldY = qSomeY;
            }
        }
    }

    if (--p->idleAndCamCounter == 0) {
        sub_8003DF0(0x252U);
        p->idleAndCamCounter = 0xA;
        p->qWorldX = qSomeX;
        p->qWorldY = qSomeY;
        p->callback = Player_800E564;
        Player_800E564(p);
    }
}

void Player_800B1B8(Player *p)
{
    u32 temp_r0;
    u8 *temp_r2;

    p->moveState &= 0xFDFFFFF9;
    sub_8012FA0(p);
    p->charFlags.anim0 = 0x8D;
    gPlayers[p->charFlags.partnerIndex].moveState &= 0xFDFFFFFF;
    p->charFlags.unk2D_0 = 0;
    p->charFlags.unk2C_04 = 0;
    p->qSpeedGround = 0;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->callback = Player_800B240;
    Player_800B240(p);
}

void Player_800B240(Player *p)
{
    u16 temp_r1;
    u16 temp_r1_2;
    u8 var_r5;

    var_r5 = p->unk26;
    if (p->moveState & 0x10000) {
        var_r5 = (u8)((u32)(((0 - var_r5) << 0x18) + 0x80000000) >> 0x18);
    }
    if ((sub_801480C(p) << 0x10) != 0) {
        p->qWorldX = p->qUnk70 + (SIN_24_8(var_r5 * 4) << 6);
        p->qWorldY = p->qUnk74 - (COS_24_8(var_r5 * 4) << 6);
        p->qSpeedGround = 0;
        p->qSpeedAirX = 0;
        p->qSpeedAirY = 0;
        p->moveState |= 4;
        return;
    }

    if (0x20 & p->keyInput) {
        p->charFlags.anim0 = 8;
        p->qSpeedGround = -Q(3);
        if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
            p->moveState &= ~1;
        } else {
            p->moveState |= 1;
        }
    } else if (0x10 & p->keyInput) {
        var_r5 += 4;
        p->charFlags.anim0 = 8;
        p->qSpeedGround = +Q(6);
        if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
            p->moveState |= 1;
        } else {
            p->moveState &= ~1;
        }
    } else {
        var_r5 += 2;
        p->qSpeedGround = Q(0);
        p->charFlags.anim0 = 141;
    }
    p->qWorldX = p->qUnk70 + (0x34 * SIN_24_8(var_r5 * 4));
    p->qWorldY = p->qUnk74 - (0x34 * COS_24_8(var_r5 * 4));
    if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
        var_r5 = (u8)((u32)(((0 - var_r5) << 0x18) + 0x80000000) >> 0x18);
    }
    p->unk26 = var_r5 & 0xFE;
}

void Player_800B374(Player *p)
{
    u32 temp_r0;
    u8 *temp_r2;

    p->moveState &= 0xFDFFFFF9;
    sub_8012FA0(p);
    p->charFlags.anim0 = 0x8D;
    gPlayers[p->charFlags.partnerIndex].moveState &= 0xFDFFFFFF;
    p->charFlags.unk2D_0 = 0;
    p->charFlags.unk2C_04 = 0;
    p->qSpeedGround = 0;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->callback = Player_800B3FC;
    Player_800B3FC(p);
}

void Player_800B3FC(Player *p)
{
    u16 temp_r1;
    u16 temp_r1_2;
    u8 var_r5;

    var_r5 = p->unk26;
    if (p->moveState & 0x10000) {
        var_r5 = (u8)((u32)(((0 - var_r5) << 0x18) + 0x80000000) >> 0x18);
    }
    if ((sub_801480C(p) << 0x10) != 0) {
        p->qWorldX = p->qUnk70 + (SIN_24_8(var_r5 * 4) << 6);
        p->qWorldY = p->qUnk74 - (COS_24_8(var_r5 * 4) << 6);
        p->qSpeedGround = 0;
        p->qSpeedAirX = 0;
        p->qSpeedAirY = 0;
        p->moveState |= 4;
        return;
    }

    if (0x20 & p->keyInput) {
        var_r5 -= 4;
        p->charFlags.anim0 = 8;
        p->qSpeedGround = -Q(6);
        if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
            p->moveState &= ~1;
        } else {
            p->moveState |= 1;
        }
    } else if (0x10 & p->keyInput) {
        p->charFlags.anim0 = 8;
        p->qSpeedGround = +Q(3);
        if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
            p->moveState |= 1;
        } else {
            p->moveState &= ~1;
        }
    } else {
        var_r5 -= 2;
        p->qSpeedGround = Q(0);
        p->charFlags.anim0 = 141;
    }
    p->qWorldX = p->qUnk70 + (0x34 * SIN_24_8(var_r5 * 4));
    p->qWorldY = p->qUnk74 - (0x34 * COS_24_8(var_r5 * 4));
    if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
        var_r5 = (u8)((u32)(((0 - var_r5) << 0x18) + 0x80000000) >> 0x18);
    }
    p->unk26 = var_r5 & 0xFE;
}

void sub_800B530(Player *p)
{
    PlayerSprite *temp_r2;

    sub_8012FC0(p);
    p->moveState = (p->moveState & 0xFDFFFFDF) | 0x20000006;
    p->charFlags.anim0 = 0xB;
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    sub_8016F28(p);
    p->unk26 = 0;
    p->qSpeedGround = 0;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->idleAndCamCounter = ZONE_TIME_TO_INT(0, 5);
    p->charFlags.unk2D_0 = 0;
    p->charFlags.unk2C_04 = 0;
}

void Player_800B5A4(Player *p)
{
    s16 var_r0;

    sub_800F170(p);
    if (0x20 & p->idleAndCamCounter) {
        p->qSpeedAirY = -0x800;
    } else {
        p->qSpeedAirY = +0x800;
    }

    p->charFlags.unk2C_40 = 1;
    if ((p->idleAndCamCounter == 0) || (p->keyInput2 & gStageData.buttonConfig.jump)) {
        Player_PlaySong(p, SE_608);

        p->qWorldX = p->qUnk70;
        p->qWorldY = p->qUnk74;
        if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
            s32 qSpeedAirY = p->qSpeedAirY;
            p->qSpeedAirY = -qSpeedAirY;
        }
        p->callback = Player_800DDD0;
        Player_800DDD0(p);
    }
}

void Player_800B628(Player *p)
{
    s16 temp_r0_5;
    s16 *temp_r1;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 temp_r5;
    s32 temp_r6;

    temp_r5 = p->qUnk70;
    temp_r6 = p->qUnk74;
    sub_8016F28(p);
    temp_r0 = p->qWorldX;
    if (temp_r0 > temp_r5) {
        p->qWorldX = temp_r0 + 0xFFFFFE00;
    }
    temp_r0_2 = p->qWorldX;
    if (temp_r0_2 < temp_r5) {
        p->qWorldX = temp_r0_2 + 0x200;
    }
    temp_r0_3 = p->qWorldY;
    if (temp_r0_3 > temp_r6) {
        p->qWorldY = temp_r0_3 + 0xFFFFFE00;
    }
    temp_r0_4 = p->qWorldY;
    if (temp_r0_4 < temp_r6) {
        p->qWorldY = temp_r0_4 + 0x200;
    }

    if (--p->idleAndCamCounter == 0) {
        Player_PlaySong(p, 0x260U);
        p->qWorldX = p->qUnk70 + p->qSpeedAirX;
        p->qWorldY = p->qUnk74 + p->qSpeedAirY;
        if (p->moveState & 0x10000) {
            s32 qSpeedAirY = p->qSpeedAirY;
            p->qSpeedAirY = -qSpeedAirY;
        }
        p->callback = Player_800DDD0;
        Player_800DDD0(p);
    }
}

void Player_800B6C4(Player *p)
{
    s16 *temp_r3;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 temp_r5;
    s32 temp_r6;

    temp_r5 = p->qUnk70;
    temp_r6 = p->qUnk74;
    sub_8016F28(p);

    if (p->qWorldX > temp_r5) {
        p->qWorldX -= Q(2);
    }

    if (p->qWorldX < temp_r5) {
        p->qWorldX += Q(2);
    }

    if (p->qWorldY > temp_r6) {
        p->qWorldY -= Q(2);
    }

    if (p->qWorldY < temp_r6) {
        p->qWorldY += Q(2);
    }

    p->idleAndCamCounter--;
    p->charFlags.unk2C_40 = 1;

    if (p->idleAndCamCounter == 0) {
        p->idleAndCamCounter = 30;
        p->qWorldX = p->qUnk70;
        p->qWorldY = p->qUnk74;
        p->callback = Player_800B748;
        Player_800B748(p);
    }
}

void Player_800B748(Player *p)
{
    s16 temp_r0;
    s16 temp_r0_2;
    s16 temp_r0_3;
    s16 var_r0_2;
    s16 *temp_r1;
    s32 var_r0;
    u32 temp_r0_4;
    u32 temp_r1_2;

    p->charFlags.unk2C_40 = 1;
    if (--p->idleAndCamCounter == 0) {
        Player_PlaySong(p, 0x260U);

        if (p->qSpeedAirX > 0) {
            p->qWorldX += 0x1C00;
        } else if (p->qSpeedAirX < 0) {
            p->qWorldX -= 0x1C00;
        } else {
            temp_r0_3 = p->qSpeedAirY;
            if ((s32)temp_r0_3 > 0) {
                var_r0 = p->qWorldY + 0x2000;
                goto block_9;
            }
            if ((s32)temp_r0_3 < 0) {
                var_r0 = p->qWorldY + 0xFFFFE000;
            block_9:
                p->qWorldY = var_r0;
            }
        }

        if (0x10000 & p->moveState) {
            s32 qSpeedAirY = p->qSpeedAirY;
            p->qSpeedAirY = -qSpeedAirY;
        }
        if (p->qSpeedAirX == 0) {
            p->charFlags.anim0 = 0x13;
        } else {
            p->charFlags.anim0 = 0x14;
        }

        p->callback = Player_800DAF4;
        temp_r0_4 = (0xDDFFFFBF & p->moveState) | 4;
        p->moveState = temp_r0_4;
        if (temp_r0_4 & 0x800000) {
            sub_800E150(p);
            return;
        }
        p->callback = sub_800DF10;
        sub_800DF10(p);
    }
}

void Player_800B81C(Player *p)
{
    u16 temp_r1;
    u32 temp_r1_2;
    u32 temp_r2;

    sub_8005800(p);
    sub_8016E00(p);
    p->callback = Player_800B81C;
    if ((sub_801480C(p) << 0x10) != 0) {
        p->moveState &= ~0x20;
        p->qWorldY -= Q(8);
        Player_StopSong(p, 0x263U);
        return;
    }

    if (0x30 & p->keyInput) {
        if (0x20 & p->keyInput) {
            if (!(p->moveState & 1)) {
                p->moveState |= 1;
                return;
            }
        }
        if (0x10 & p->keyInput) {
            if (1 & p->moveState) {
                p->moveState &= ~1;
            }
        }
    }
}

void Player_IceLauncherLaunch(Player *p)
{
    PlayerSprite *temp_r2;
    u8 *temp_r2_2;

    sub_8012FC0(p);
    p->moveState = (p->moveState & 0xFDFFFFDF) | 0x20000006;
    p->charFlags.anim0 = 0xB;
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    sub_8016F28(p);
    p->unk26 = 0;
    p->qSpeedGround = 0;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->idleAndCamCounter = 30;
    p->charFlags.unk2D_0 = 0;
    p->charFlags.unk2C_04 = 0;
    p->callback = Player_800B920;
}

// TODO: Fake-match
void Player_800B920(Player *p)
{
    s16 temp_r0_5;
    s16 temp_r2;
    s16 temp_r5;
    s16 var_r0;
    s16 *temp_r1;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
#ifndef NON_MATCHING
    register s32 temp_r3 asm("r3");
#else
    s32 temp_r3;
#endif
    s32 temp_r6;

    temp_r3 = p->qUnk70 & 0xFFFFFF00;
    temp_r6 = p->qUnk74;

    if (p->qWorldX > temp_r3) {
        p->qWorldX += 0xFFFFFE00;
    }

    if (p->qWorldX < temp_r3) {
        p->qWorldX += 0x200;
    }

    if (p->qWorldY > temp_r6) {
        p->qWorldY = p->qWorldY + 0xFFFFFE00;
    }

    if (p->qWorldY < temp_r6) {
        p->qWorldY = p->qWorldY + 0x200;
    }
    if (--p->idleAndCamCounter == 0) {
        temp_r2 = (p->qUnk70 & 3);
        p->qWorldX = temp_r3;
        p->qWorldY = temp_r6;
        p->qSpeedGround = 0;

        if ((p->qUnk70 & 3) == 0) {
            p->qSpeedAirX = 0;
            p->qSpeedAirY = -Q(12);
        } else {
            p->qSpeedAirX = Q(8);
            if ((p->qUnk70 & 3) == 2) {
                p->qSpeedAirX = -p->qSpeedAirX;
            }
            p->qSpeedAirY = -0xB00;
        }

        p->idleAndCamCounter = 0x1E;
        p->charFlags.anim0 = 0x8F;
        sub_8003DF0(0x25CU);
        p->callback = Player_800DEC4;
        Player_800DEC4(p);
    }
}

void Player_CollideGroundAfterIceLauncher(Player *p)
{
    if (!sub_8015064(p)) {
        sub_8016E50(p);
        sub_8016D30(p);
        sub_8016EB0(p);
        Player_80149E4(p);
        sub_8017004(p);

        if (!(p->moveState & MOVESTATE_IN_AIR)) {
            p->qSpeedAirX >>= 1;
            p->qSpeedAirY = -Q(3);
            p->callback = Player_800DB30;
            CreateIceShiver(I(p->qWorldX) - 8, I(p->qWorldY) + 0, 0x200, 0x2C4U, 0x1EU);
            CreateIceShiver(I(p->qWorldX) + 0, I(p->qWorldY) + 0, 0x200, 0x314U, 0x1EU);
            CreateIceShiver(I(p->qWorldX) + 8, I(p->qWorldY) + 0, 0x200, 0x33CU, 0x1EU);
        }
    }
}

void Player_800BA78(Player *p)
{
    u8 *temp_r0;
    u8 *temp_r2;

    SongStopCheck_inline(p, SE_281);
    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    sub_8012FA0(p);
    p->moveState |= MOVESTATE_20000000;
    p->moveState &= ~MOVESTATE_COLLIDING_ENT;
    p->sprColliding = NULL;
    p->charFlags.anim0 = 0x8C;
    p->spriteData->s.frameFlags &= 0xFFFFBFFF;
    sub_8016F28(p);
    p->qSpeedGround = 0;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->charFlags.unk2D_0 = 0;
    p->charFlags.unk2C_04 = 0;
    p->callback = Player_800E5CC;
    Player_800E5CC(p);
}

void Player_800BB34(Player *p)
{
    PlayerSprite *temp_r2;
    s16 temp_r0;
    s16 var_r0;

    sub_8016F28(p);
    if (p->qSpeedAirX < 0) {
        p->qSpeedAirX = +0x200;
    } else if (p->qSpeedAirX > 0) {
        p->qSpeedAirX = -0x200;
    }
    p->moveState = (p->moveState & 0xDDFFFFDF) | 6;
    sub_8012FF0(p);
    p->charFlags.anim0 = 0x13;
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    p->unk26 = 0;
    p->qSpeedGround = 0;
    p->callback = Player_800E6CC;
    Player_800E6CC(p);
}

void sub_800BBA0(Player *p)
{
    PlayerSprite *temp_r2;
    u8 *temp_r0;
    u8 *temp_r2_2;

    SongStopCheck_inline(p, SE_281);
    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    Player_BoostModeDisengage(p);
    sub_8016F28(p);
    sub_8012FA0(p);
    p->qSpeedGround = 0;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->charFlags.anim0 = 36;
    p->callback = sub_800EC20;
    sub_800EC20(p);
}

void Player_800BC38(Player *p)
{
    PlayerSprite *temp_r1;
    PlayerSprite *temp_r1_3;
    PlayerSprite **temp_r5;
    u32 temp_r1_2;
    void *temp_r2;

    p->moveState = (p->moveState & 0xE5FFFFF5) | 4;
    temp_r2 = p + 0x2C;
    p->charFlags.unk2C_04 = 1;
    p->charFlags.state1 = 0;
    p->charFlags.unk2D_0 = 0;
    if (p->moveState & 0x10000) {
        s32 qSpeedAirY = p->qSpeedAirY;
        p->qSpeedAirY = -qSpeedAirY;
    }
    temp_r5 = &p->spriteData;
    temp_r1 = *temp_r5;
    temp_r1->s.frameFlags &= 0xFFFFBFFF;

    if (p->moveState & 0x800000) {
        p->moveState = (p->moveState & 0xFDFFFFFD) | 0x800000;
        p->charFlags.anim0 = 0x15;
        sub_8012FA0(p);
        temp_r1_3 = *temp_r5;
        temp_r1_3->s.frameFlags &= 0xFFFFBFFF;
        p->callback = sub_800E198;
        sub_800E198(p);
        return;
    }
    p->charFlags.anim0 = 0x6C;
    p->callback = Player_8006C70;
    Player_8006C70(p);
}

void Player_800BCE0(Player *p)
{
    SongStopCheck_inline(p, SE_281);
    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState &= ~6;
    sub_8012FA0(p);
    p->charFlags.anim0 = 0x8B;
    p->charFlags.unk2D_0 = 0;
    p->charFlags.unk2C_04 = 0;
    Player_BoostModeDisengage(p);
    sub_8016F28(p);
    sub_8017914(p);
    p->callback = Player_800BD88;
    Player_800BD88(p);
}

void Player_800BD88(Player *p)
{
    s32 temp_r3 = (SIN_24_8(p->unk26 * 4) * 0xF) >> 6;

    if (p->qSpeedGround == 0) {
        p->qSpeedGround = p->qSpeedGround + temp_r3;
    } else if (p->qSpeedGround > 0) {
        if (temp_r3 <= 0) {
            p->qSpeedGround >>= 1;
        }
    } else if (temp_r3 >= 0) {
        p->qSpeedGround >>= 1;
    }
    p->qSpeedGround += temp_r3;

    if (ABS(p->qSpeedGround) < Q(1)) {
        if (p->moveState & 1) {
            p->qSpeedGround = -Q(1);
        } else {
            p->qSpeedGround = +Q(1);
        }
    }
    if (!sub_8015064(p)) {
        Player_801479C(p);
        sub_8016D30(p);
        sub_8014E70(p);
        if (sub_801480C(p)) {
            p->moveState |= 4;
            return;
        }
        sub_8012EB8(p);
        sub_8016E00(p);

        if ((p->charFlags.unk2C_02 == 0) || (p->moveState & 4)) {
            sub_800EC68(p);
        }
        p->charFlags.unk2C_02 = 0;
    }
}

void Player_800BE60(Player *p)
{
    PlayerSprite *temp_r2;
    u8 *temp_r0;
    u8 *temp_r2_2;

    SongStopCheck_inline(p, SE_281);
    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState |= 0x10000000;
    p->charFlags.anim0 = 122;
    p->charFlags.unk2D_0 = 0;
    p->charFlags.unk2C_04 = 0;
    temp_r2 = p->spriteData;
    p->callback = Player_800EB58;
}

void Player_800BEE8(Player *p)
{
    u8 *temp_r1;
    void *temp_r2;

    SongStopCheck_inline(p, SE_281);
    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->charFlags.anim0 = 0x7A;
    p->charFlags.unk2C_04 = 1;
    sub_8016F28(p);
    p->moveState |= 0x20000000;
    sub_8012FA0(p);
    p->callback = Player_800EAA8;
    Player_800EAA8(p);
}

void sub_800BF78(Player *p)
{
    Player *temp_r0;
    u32 temp_r4;

    temp_r0 = &gPlayers[p->charFlags.partnerIndex];
    temp_r4 = temp_r0->charFlags.character;
    temp_r0->unk27 = p->unk27;
    temp_r0->moveState = (temp_r0->moveState & 0xFFFEFFFF) | (p->moveState & 0x10000);
    if (p->moveState & 4) {
#ifndef NON_MATCHING
        register s32 var_r0 asm("r0") = temp_r4;
#else
        s32 var_r0 = temp_r4;
#endif
        switch (var_r0) {
            case 0:
                sub_800C064(p);
                break;
            case 1:
                sub_0800C104(p);
                break;
            case 2:
                sub_0800C1FC(p);
                break;
            case 3:
                sub_0800C338(p);
                break;
            case 4:
                sub_0800F004(p);
                break;
        }
    } else {
#ifndef NON_MATCHING
        register s32 var_r0 asm("r0") = temp_r4;
#else
        s32 var_r0 = temp_r4;
#endif
        switch (var_r0) {
            case 0:
                sub_800C064(p);
                break;
            case 1:
                sub_0800C104(p);
                break;
            case 2:
                sub_800EF50(p);
                break;
            case 3:
                sub_800EFB0(p);
                break;
            case 4:
                sub_0800F004(p);
                break;
            default:
                break;
        }
    }
}

void sub_800C064(Player *p)
{
    Player *partner;
    s16 var_r6;

    partner = &gPlayers[p->charFlags.partnerIndex];
    var_r6 = +Q(12);
    p->unk99 = 0;
    Player_BoostModeEngage(p);
    if (p->moveState & MOVESTATE_FACING_LEFT) {
        // TODO: Macro?
        partner->moveState |= MOVESTATE_FACING_LEFT;
        var_r6 = -var_r6;
    } else {
        partner->moveState &= ~MOVESTATE_FACING_LEFT;
    }
    if (p->moveState & MOVESTATE_IN_AIR) {
        p->unk26 = 0;
        partner->unk26 = 0;
    }
    partner->moveState |= p->moveState & 4;
    partner->qWorldX = p->qWorldX;
    partner->qWorldY = p->qWorldY;
    sub_800E724(partner);
    p->qSpeedAirX = var_r6;
    p->qSpeedAirY = 0;
    p->qSpeedGround = var_r6;
    sub_80056CC(p);

    Player_PlaySong(p, SE_SPEED_BOOSTER);
}

void sub_0800C104(Player *p)
{
    Player *partner;
    u32 temp_r1;
    s32 r5;
    u8 *temp_r1_2;

    partner = &gPlayers[p->charFlags.partnerIndex];
    r5 = GetBit(p->moveState, 2);
    SongStopCheck_inline(p, 0x119U);
    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState |= 0x22000000;
    if (r5) {
        p->unk26 = 0;
        partner->unk26 = 0;
        if (p->unkC & 0x40) {
            sub_800C5D0(p);
        } else {
            sub_800C714(p);
        }
        if (partner->unkC & 0x40) {
            sub_800C5D0(partner);
        } else {
            sub_800C714(partner);
        }
        Player_PlaySong(p, 0x74U);
    } else {
        sub_0800E218(p);
        sub_0800E218(partner);
    }
    p->unk54 = 0x258;
    partner->unk54 = 0x258;
    sub_801EBC0(0xC, p);
}

void sub_0800C1FC(Player *p)
{
    Player *partner;
    s32 temp_r6;
    s32 var_r1;
    u32 temp_r0;
    u32 temp_r0_2;
    u32 temp_r1;
    u32 var_r1_2;

    partner = GET_SP_PLAYER_V1(PLAYER_2);
    temp_r6 = p->qWorldY;
    if (p->moveState & 0x10000) {
        p->qWorldY += -Q(32);
    } else {
        p->qWorldY += +Q(32);
    };
    p->unk26 = 0;
    partner->unk26 = 0;
    if (sub_8012E18(1, p, 0, 0) < 0) {
        p->qWorldY = temp_r6;
        sub_8016F28(p);
        Player_8012FE0(p);
        p->charFlags.anim0 = 0x18;
        if ((s32)p->qSpeedAirY < 0) {
            p->qSpeedAirY = 0;
        }
        temp_r0 = (p->moveState & 0xDDFFFFBF) | 4;
        p->moveState = temp_r0;
        if (temp_r0 & 0x800000) {
            sub_800E150(p);
        } else {
            p->callback = sub_800DF10;
            sub_800DF10(p);
        }
        partner->qWorldX = p->qWorldX;
        partner->qWorldY = p->qWorldY;
        sub_8016F28(partner);
        Player_8012FE0(partner);
        partner->charFlags.anim0 = 0x18;
        if ((s32)partner->qSpeedAirY < 0) {
            partner->qSpeedAirY = 0;
        }
        partner->moveState = (partner->moveState & 0xDDFFFFBF) | 4;
        if (partner->moveState & 0x800000) {
            sub_800E150(partner);
        } else {
            partner->callback = sub_800DF10;
            sub_800DF10(partner);
        }
    } else {
        p->qWorldY = temp_r6;
        temp_r1 = partner->moveState | 0x22000004;
        partner->moveState = temp_r1;
        if (p->moveState & 1) {
            partner->moveState = temp_r1 | 1;
        } else {
            partner->moveState = temp_r1 & ~1;
        }

        partner->qWorldX = p->qWorldX;
        partner->qWorldY = p->qWorldY;
        sub_801BE40(partner);
        sub_800E7BC(p);
    }
}

void sub_0800C338(Player *p)
{
    Player *partner = GET_SP_PLAYER_V1(PLAYER_2);

    p->unk26 = 0;
    partner->unk26 = 0;
    sub_800CF08(p);
    partner->moveState |= 0x22000000;
    if (p->moveState & 1) {
        partner->moveState |= 0x1;
    } else {
        partner->moveState &= ~1;
    }

    partner->qWorldX = p->qWorldX;
    partner->qWorldY = p->qWorldY;
    partner->qSpeedAirY = -0x200;
    partner->charFlags.anim0 = 0xE7;
    sub_801D8A8(partner);
}

void sub_800C3AC(Player *p)
{
    s16 sp[5];
    u16 temp_r1;
    s32 character;
    u8 temp_r2;

    memcpy(&sp, &gUnknown_080CE5F2[0], 10);

    if ((p->charFlags.character != KNUCKLES) && (p->moveState & MOVESTATE_IN_AIR) && (p->unkC & 0x800000)) {
        character = p->charFlags.character;
        Player_PlaySong(p, sp[character]);
        if (DPAD_UP & p->keyInput) {
            switch (character) {
                case CREAM:
                    sub_800F074(p);
                    break;
                case TAILS:
                    sub_800F074(p);
                    break;
                case SONIC:
                    sub_800F068(p);
                    break;
                case AMY:
                    sub_800F068(p);
                    break;
            }
        } else if (DPAD_DOWN & p->keyInput) {
            switch (character) {
                case SONIC:
                    sub_800F080(p);
                    break;
                case CREAM:
                    sub_800F08C(p);
                    break;
                case TAILS:
                    sub_800F08C(p);
                    break;
                case AMY:
                    sub_800F098(p);
                    break;
            }
        } else {
            switch (character) {
                case SONIC:
                    sub_800F0A4(p);
                    break;
                case CREAM:
                    sub_800F0B0(p);
                    break;
                case TAILS:
                    sub_800F0B0(p);
                    break;
                case AMY:
                    sub_800F0A4(p);
                    break;
            }
        }
    }
}

void sub_800C494(Player *arg0)
{
    if (!sub_8014BC4(arg0) && !sub_8014A60(arg0) && !sub_8016EDC(arg0) && !sub_8015568(arg0)) {
        sub_8015228(arg0);
        sub_8005800(arg0);

        if (!sub_801480C(arg0)) {
            sub_8015144(arg0);

            if (!sub_8015064(arg0)) {
                Player_801479C(arg0);
                sub_8016D30(arg0);
                sub_8012EB8(arg0);
                sub_8016E00(arg0);
                if (arg0->qSpeedGround != 0) {
                    arg0->callback = sub_0800E27C;
                    return;
                }

                if (--arg0->idleAndCamCounter == 0) {
                    arg0->moveState &= 0xDDFFFFFF;
                    Player_8005380(arg0);
                }
            }
        }
    }
}

void sub_800C540(Player *arg0)
{
    if (!sub_8014BC4(arg0) && !sub_8014A60(arg0) && !sub_8015568(arg0)) {
        sub_8015228(arg0);
        sub_8005800(arg0);

        if (!sub_801480C(arg0)) {
            sub_8015144(arg0);

            if (!sub_8015064(arg0)) {
                Player_801479C(arg0);
                sub_8016D30(arg0);
                sub_8012EB8(arg0);
                sub_8016E00(arg0);

                if (--arg0->idleAndCamCounter == 0) {
                    arg0->moveState &= 0xDDFFFFFF;
                    Player_8005528(arg0);
                }
            }
        }
    }
}

void sub_800C5D0(Player *arg0)
{
    PlayerSprite *temp_r2;
    s16 var_r0;
    s32 var_r1;
    s32 qSpeed;

    arg0->moveState = (arg0->moveState | 6) & 0xDFFFFFFF;
    sub_8012FF0(arg0);
    var_r1 = arg0->qSpeedAirX;
    if (var_r1 < 0) {
        var_r1 = -var_r1;
    }
    if (var_r1 < Q(1.25)) {
        arg0->charFlags.anim0 = 0x13;
    } else {
        arg0->charFlags.anim0 = 0x14;
    }

    if (arg0->moveState & 0x80) {
        qSpeed = 0x2A0;
    } else {
        qSpeed = 0x4E0;
    }
    temp_r2 = arg0->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;

    arg0->unk26 = 0;
    arg0->qSpeedAirX += Q_MUL(qSpeed, COS_24_8(0x300));
    arg0->qSpeedAirY += Q_MUL(qSpeed, SIN_24_8(0x300));
    arg0->idleAndCamCounter = 30;
    arg0->callback = sub_800C684;
    sub_800C684(arg0);
}

void sub_800C684(Player *p)
{
    s16 temp_r0;
    s16 *temp_r1;
    u32 temp_r0_2;

    if (!sub_8014BC4(p)) {
        sub_801350C(p);
        sub_8014940(p);

        if (!sub_8015064(p)) {
            sub_8016E50(p);
            sub_8016D30(p);
            sub_8016EB0(p);
            Player_80149E4(p);
            sub_8017004(p);

            if (--p->idleAndCamCounter == 0) {
                p->moveState &= 0xDDFFFFFF;
                p->moveState &= 0xDDFFFFBF;
                p->moveState |= MOVESTATE_IN_AIR;

                if (p->moveState & MOVESTATE_800000) {
                    sub_800E150(p);
                } else {
                    p->callback = sub_800DF10;
                    sub_800DF10(p);
                }
            }
        }
    }
}

void sub_800C714(Player *p)
{
    PlayerSprite *temp_r2;
    s32 var_r3;
    u8 temp_r1;

    p->moveState &= ~0x20;
    p->moveState &= 0xDFFFFFFF;
    p->moveState |= 4;
    sub_8012FA0(p);
    p->charFlags.anim0 = 0x6C;
    if (p->moveState & 0x80) {
        var_r3 = 0x2A0;
    } else {
        var_r3 = 0x4E0;
    }
    temp_r1 = p->unk26 - 0x40;
    p->qSpeedAirX += Q_MUL(var_r3, COS_24_8(temp_r1 * 4));
    p->qSpeedAirY += Q_MUL(var_r3, SIN_24_8(temp_r1 * 4));
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    p->idleAndCamCounter = 30;
    p->callback = sub_800C7B8;
    sub_800C7B8(p);
}

void sub_800C7B8(Player *p)
{
    PlayerSprite *spriteSprite;
    u32 temp_r1;

    if (!sub_8014BC4(p)) {
        if ((p->charFlags.state1 == 0) && (p->qSpeedAirY >= 0)) {
            p->charFlags.state1 = 1;
        } else if (p->charFlags.state1 == 1) {
            spriteSprite = p->spriteData;
            if (0x4000 & spriteSprite->s.frameFlags) {
                spriteSprite->s.frameFlags &= 0xFFFFBFFF;
                p->charFlags.state1 = 2;
            }
        }

        sub_8014940(p);

        if (!sub_8015064(p)) {
            sub_8016E50(p);
            sub_8016D30(p);
            sub_8016EB0(p);
            Player_80149E4(p);
            sub_8017004(p);

            if (--p->idleAndCamCounter == 0) {
                p->moveState &= 0xDDFFFFFF;
                p->moveState &= 0xDDFFFFBF;
                p->moveState |= MOVESTATE_IN_AIR;

                if (p->moveState & MOVESTATE_800000) {
                    sub_800E150(p);
                } else {
                    p->callback = sub_800DF10;
                    sub_800DF10(p);
                }
            }
        }
    }
}

void sub_800C87C(Player *p)
{
    PlayerSprite *temp_r2;
    s16 var_r0;
    u8 *temp_r1;

    SongStopCheck_inline(p, 0x119U);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    sub_8012FA0(p);

    if (p->qSpeedGround == 0) {
        p->charFlags.anim0 = 0x62;
    } else {
        p->charFlags.anim0 = 0x63;
    }

    p->callback = sub_801AA78;
    sub_801AA78(p);
}

void sub_800C910(Player *p)
{
    PlayerSprite *temp_r2;
    s16 var_r0;
    u8 *temp_r1;

    SongStopCheck_inline(p, 0x119U);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    sub_8012FA0(p);

    p->moveState |= 4;
    p->charFlags.anim0 = 100;
    p->callback = Player_800DAF4;
    p->moveState &= 0xddffffbf;
    p->moveState |= 4;

    if (p->moveState & 0x800000) {
        sub_800E150(p);
    } else {
        p->callback = sub_800DF10;
        sub_800DF10(p);
    }
}

// (99.62%) https://decomp.me/scratch/qQ4o8
NONMATCH("asm/non_matching/game/stage/player__sub_800C9C4.inc", void sub_800C9C4(Player *p))
{
    Player *partner;
    s32 var_r1;
    s32 var_r1_2;
    u16 temp_r1_2;
    u32 temp_r0;
    u32 temp_r1;
    void (*callback)(Player *);

    partner = GET_SP_PLAYER_V1(PLAYER_2);
    if (p->moveState & 0x10000) {
        p->qWorldY += -Q(32);
    } else {
        p->qWorldY += +Q(32);
    }

    if (partner->moveState & 1) {
        p->moveState |= 1;
    } else {
        p->moveState &= ~1;
    }

    temp_r1 = p->moveState & 0xFFFEFFFF;
    p->moveState = temp_r1;
    p->moveState = temp_r1 | (partner->moveState & 0x10000);
    if (sub_8015064(p)) {
        return;
    }
    sub_8011D08(p);
    sub_8011E70(p);
    sub_8011FB8(p);
    sub_8012118(p);
    if ((p->charFlags.anim0 != 0x5C) || (callback = p->callback, (callback != sub_800C9C4))
        || (sub_8017004(p), (p->charFlags.anim0 != 0x5C)) || (p->callback != callback)) {
        partner->moveState &= 0xFDFFFFFF;
        p->callback(p);
        return;
    }
    if (p->moveState & 0x10000) {
        p->qWorldY += +Q(32);
    } else {
        p->qWorldY += -Q(32);
    }

    if ((gStageData.gameMode < 5) || (p->charFlags.someIndex == 2) || (partner->charFlags.someIndex == 2)) {
        if (partner->charFlags.anim0 == 206 || partner->charFlags.anim0 == 207 || partner->charFlags.anim0 == 208) {
            return;
        } else {
            goto block_25;
        }
    }
    {
        if ((partner->charFlags.anim2 != 0x151) && (partner->charFlags.anim2 != 0x15F) && (partner->charFlags.anim2 != 0x19D)
            && (partner->charFlags.anim2 != 0x160)) {
        block_25:
            p->qSpeedAirX = 0;
            partner->moveState &= 0xFDFFFFFF;
            Player_8012FE0(p);
            p->charFlags.anim0 = 0x18;
            temp_r0 = (p->moveState & 0xDDFFFFBF) | 4;
            p->moveState = temp_r0;
            if (temp_r0 & 0x800000) {
                sub_800E150(p);
                return;
            }
            p->callback = sub_800DF10;
            sub_800DF10(p);
        }
    }
}
END_NONMATCH

void sub_800CB5C(Player *p)
{
    PlayerSprite *temp_r2;

    SongStopCheck_inline(p, 0x119U);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState |= 0x22000000;
    p->charFlags.anim0 = 91;
    p->spriteData->s.frameFlags &= 0xFFFFBFFF;

    p->qSpeedGround = 0;

    p->callback = sub_800CBE8;
    sub_800CBE8(p);
}

// (95.27%) https://decomp.me/scratch/tq6hy
NONMATCH("asm/non_matching/game/stage/player__sub_800CBE8.inc", void sub_800CBE8(Player *p))
{
    Player *partner;
    s32 var_r0;
    s32 var_r2;
    u32 temp_r1;
    u32 temp_r1_2;
    gPlayers;

    p->moveState &= ~MOVESTATE_GRAVITY_SWITCHED;
    partner = GET_SP_PLAYER_V1(PLAYER_2);

    p->moveState |= partner->moveState & MOVESTATE_GRAVITY_SWITCHED;

    if (0x4000 & p->spriteData->s.frameFlags) {
        if (SPRITE_FLAG_GET(&p->spriteData->s, X_FLIP)) {
            p->qSpeedAirX = Q(2);
            p->qWorldX += Q(5);
            p->qSpeedAirY = -Q(11);
        } else {
            p->qSpeedAirX = -Q(2);
            p->qWorldX += -Q(5);
            p->qSpeedAirY = -Q(11);
        }

        if (MOVESTATE_GRAVITY_SWITCHED & p->moveState) {
            p->qWorldY += +Q(5);
        } else {
            p->qWorldY += -Q(5);
        }

        p->moveState |= MOVESTATE_IN_AIR;
        p->callback = sub_800E808;
        p->charFlags.state1 += 1;
        Player_PlaySong(p, 0x74U);
    }
    sub_8014E70(p);
}
END_NONMATCH

void sub_800CCB0(Player *p)
{
    Player *partner;
    PlayerSprite *temp_r2;
    u32 temp_r0_2;
    u8 *temp_r0;

    partner = GET_SP_PLAYER_V1(PLAYER_2);

    SongStopCheck_inline(p, 0x119U);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    temp_r0_2 = (p->moveState | 0x20000000) & ~1;
    p->moveState = temp_r0_2;
    p->moveState = temp_r0_2 | (partner->moveState & 1);
    p->charFlags.anim0 = 0xDE;
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    p->qSpeedGround = 0;
    p->callback = sub_800E880;
    sub_800E880(p);
}

void sub_800CD68(Player *p)
{
    PlayerSprite *temp_r2;
    s16 var_r0;
    s32 character_r0;
    s32 character_r5;
    u8 *temp_r1;

    character_r5 = p->charFlags.character;
    SongStopCheck_inline(p, 0x119U);

    p->moveState &= ~(MOVESTATE_20000000 | MOVESTATE_2000000 | MOVESTATE_1000000 | MOVESTATE_800000 | MOVESTATE_200000 | MOVESTATE_80000
                      | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_8000 | MOVESTATE_4000 | MOVESTATE_2000 | MOVESTATE_1000
                      | MOVESTATE_400 | MOVESTATE_40 | MOVESTATE_10 | MOVESTATE_8 | MOVESTATE_JUMPING);
    p->charFlags.someFlag0 = 0;
    p->charFlags.state0_highValue = 0;
    p->unk99 = 0;
    p->unk9A = 0;
    p->qCamOffsetY = 0;
    p->moveState |= 0x22000000;

#ifndef NON_MATCHING
    asm("mov %0, %1" : "=r"(character_r0) : "r"(character_r5));
#else
    character_r0 = character_r5;
#endif

    switch (character_r0) {
        case 0:
            p->charFlags.anim0 = 0xAE;
            break;
        case 1:
            p->charFlags.anim0 = 0xC7;
            break;
        case 2:
            p->charFlags.anim0 = 0xDF;
            break;
        case 4:
            p->charFlags.anim0 = 0x109;
            break;
    }
    p->idleAndCamCounter = 0x14;
    p->qSpeedGround = 0;
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    p->callback = sub_800CE30;
    sub_800CE30(p);
}

void sub_800CE30(Player *p)
{
    Player *temp_r2;
    s16 temp_r0;
    s16 var_r0;
    u16 temp_r3;

    temp_r2 = GET_SP_PLAYER_V1(PLAYER_2);

    if (p->idleAndCamCounter > 0) {
        p->idleAndCamCounter--;
        temp_r2->qWorldX = p->qWorldX;
        temp_r2->qWorldY = p->qWorldY;
    } else if (p->idleAndCamCounter == 0) {
        p->idleAndCamCounter = -1;
        if (p->moveState & 1) {
            temp_r2->qSpeedAirX = -Q(7);
        } else {
            temp_r2->qSpeedAirX = +Q(7);
        }
        temp_r2->qSpeedAirY = -Q(2);

        temp_r2->idleAndCamCounter = 0;
        Player_PlaySong(p, SE_542);
    }

    if (p->spriteData->s.frameFlags & 0x4000) {
        p->moveState &= 0xDDFFFFFF;
        p->callback = Player_8005380;
    }

    sub_8015144(p);

    if (!sub_8015064(p)) {
        Player_801479C(p);
        sub_8016D30(p);
        sub_8014E70(p);
        sub_8012EB8(p);
        sub_8016E00(p);
    }
}

void sub_800CF08(Player *p)
{
    s16 var_r0;
    u32 temp_r2;
    s8 character = p->charFlags.character;

    p->moveState = (p->moveState & ~0x40) | 0x22000000;
    switch (character) {
        case 0:
            p->charFlags.anim0 = 0xAF;
            break;
        case 1:
            p->charFlags.anim0 = 0xC8;
            break;
        case 2:
            p->charFlags.anim0 = 0xE0;
            break;
        case 4:
            p->charFlags.anim0 = 0x10A;
            break;
    }
    p->qSpeedGround = 0;
    p->callback = sub_800CF60;
}

#if 0
void sub_800CF60(Player *p) {
    Player *temp_r3;
    s16 var_r0_3;
    s32 var_r0_4;
    s32 var_r0_5;
    s32 var_r2;
    s32 var_r2_2;
    s32 var_r5;
    u16 temp_r1;
    u16 var_r0_2;
    u32 temp_r0;
    u32 temp_r0_2;
    u32 temp_r0_3;
    u32 temp_r1_2;
    u32 temp_r2;
    u32 var_r0;

    temp_r3 = &gPlayers[(u32) (p->unk2B << 0x1E) >> 0x1E];
    var_r5 = 0;
    if (temp_r3->moveState & 1) {
        var_r0 = p->moveState | 1;
    } else {
        var_r0 = p->moveState & ~1;
    }
    p->moveState = var_r0;
    temp_r2 = p->moveState & 0xFFFEFFFF;
    p->moveState = temp_r2;
    p->moveState = temp_r2 | (temp_r3->moveState & 0x10000);
    if ((u32) gStageData.gameMode <= 4U) {
        var_r2 = 2;
        if (temp_r3->charFlags.anim0 == 0xE8) {
            goto block_7;
        }
    } else {
        var_r2 = 2;
        if (temp_r3->charFlags.anim2 == 0x203) {
block_7:
            var_r2 = 1;
        }
    }
    if (var_r2 == 1) {
        temp_r0 = (u32) (p->unk2A << 0x1C) >> 0x1C;
        switch (temp_r0) {                          /* switch 1; irregular */
        case 0:                                     /* switch 1 */
            p->charFlags.anim0 = 0xB0;
            var_r0_2 = 0x5F;
block_20:
            p->charFlags.anim2 = var_r0_2;
            break;
        case 1:                                     /* switch 1 */
            p->charFlags.anim0 = 0xC9;
            var_r0_2 = 0x102;
            goto block_20;
        case 2:                                     /* switch 1 */
            p->charFlags.anim0 = 0xE1;
            var_r0_2 = 0x1A5;
            goto block_20;
        case 4:                                     /* switch 1 */
            p->charFlags.anim0 = 0x10B;
            var_r0_2 = 0x2EB;
            goto block_20;
        }
        p->charFlags.state1 = temp_r3->charFlags.state1;
    } else if (var_r2 == 2) {
        temp_r0_2 = (u32) (p->unk2A << 0x1C) >> 0x1C;
        switch (temp_r0_2) {                        /* irregular */
        case 0:
            var_r0_3 = 0xAF;
block_34:
            p->charFlags.anim0 = var_r0_3;
            break;
        case 1:
            var_r0_3 = 0xC8;
            goto block_34;
        case 2:
            var_r0_3 = 0xE0;
            goto block_34;
        case 4:
            var_r0_3 = 0x10A;
            goto block_34;
        }
    }
    if (((u32) gStageData.gameMode <= 4U) || ((0x1C & p->unk2B) == 8) || ((0x1C & temp_r3->unk2B) == 8)) {
        if ((u32) (u16) ((u16) temp_r3->charFlags.anim0 - 0xE7) > 1U) {
            goto block_44;
        }
        goto block_43;
    }
    temp_r1 = temp_r3->charFlags.anim2;
    if (((u32) (u16) (temp_r1 + 0xFFFFFDFE) > 1U) && (temp_r1 != 0x1F4)) {
        var_r5 = 1;
    }
block_43:
    if (var_r5 != 0) {
block_44:
        if (p->moveState & 0x10000) {
            var_r0_4 = p->qWorldY + 0x900;
        } else {
            var_r0_4 = p->qWorldY + 0xFFFFF700;
        }
        p->qWorldY = var_r0_4;
        p->qSpeedAirX = 0;
        p->qSpeedAirY = 0;
        temp_r3->moveState &= 0xFDFFFFFF;
        Player_8012FE0(p);
        p->charFlags.anim0 = 0x18;
        temp_r0_3 = (p->moveState & 0xDDFFFFBF) | 4;
        p->moveState = temp_r0_3;
        if (temp_r0_3 & 0x800000) {
            sub_800E150(p);
            return;
        }
        p->callback = sub_800DF10;
        sub_800DF10(p);
        return;
    }
    if (sub_80110E8(3U, p, NULL, NULL) < 0) {
        temp_r1_2 = p->moveState;
        if (0x10000 & temp_r1_2) {
            var_r2_2 = 0x900;
        } else {
            var_r2_2 = 0xFFFFF700;
        }
        p->qWorldY += var_r2_2;
        if (1 & temp_r1_2) {
            var_r0_5 = p->qWorldX + 0x1000;
        } else {
            var_r0_5 = p->qWorldX + 0xFFFFF000;
        }
        p->qWorldX = var_r0_5;
    }
    Player_80149E4(p);
    sub_8017004(p);
    sub_8015064(p);
}

void sub_800D19C(Player *arg0) {
    PlayerSprite *temp_r3;
    u8 *temp_r0;

    if ((gStageData.gameMode != 7) && (arg0->moveState & 0x1000)) {
        Player_StopSong(arg0, 0x119U);
    }
    arg0->moveState &= 0xDC510BA1;
    arg0->unk2B = (u8) (-0x21 & arg0->unk2B);
    arg0->unk2F = 0;
    temp_r0 = &arg0->filler6A[0x2F];
    temp_r0->unk0 = 0;
    temp_r0->unk1 = 0;
    temp_r0[1].unk4 = 0;
    arg0->moveState |= 0x22000004;
    arg0->charFlags.anim0 = 0xB;
    temp_r3 = arg0->spriteData;
    temp_r3->s.frameFlags &= 0xFFFFBFFF;
    arg0->idleAndCamCounter = 0xF;
    arg0->qSpeedGround = 0;
    arg0->qSpeedAirX = 0;
    arg0->qSpeedAirY = 0;
    arg0->callback = sub_800D500;
    sub_800D500(arg0);
}

void sub_800D238(Player *p) {
    s16 *temp_r1;
    s16 temp_r0;
    s32 var_r6;
    u32 temp_r0_2;
    u32 temp_r3;
    void (*var_r0)(Player *);

    var_r6 = 0;
    temp_r3 = p->moveState & 0xFFFEFFFF;
    p->moveState = temp_r3;
    p->moveState = temp_r3 | (*((((u32) (p->unk2B << 0x1E) >> 0x1E) * 0x150) + &gPlayers->moveState) & 0x10000);
    temp_r1 = &p->idleAndCamCounter;
    temp_r0 = (u16) *temp_r1 - 1;
    *temp_r1 = temp_r0;
    if ((temp_r0 << 0x10) == 0) {
        temp_r0_2 = p->moveState | 4;
        p->moveState = temp_r0_2;
        if (temp_r0_2 & 0x10000) {
            if (sub_80519EC((s32) p->qWorldY >> 8, (s32) p->qWorldX >> 8, (s32) p->unk27, 8, NULL, sub_805217C) <= 0x27) {
                goto block_7;
            }
            goto block_6;
        }
        if (sub_80519EC((s32) p->qWorldY >> 8, (s32) p->qWorldX >> 8, (s32) p->unk27, -8, NULL, sub_805217C) <= 0x27) {
            var_r6 = 1;
        }
block_6:
        if (var_r6 != 0) {
block_7:
            p->qSpeedAirY = -0x600;
            var_r0 = Player_8006F08;
        } else {
            p->charFlags.anim0 = 0x65;
            sub_8012FA0(p);
            var_r0 = sub_800D32C;
        }
        p->callback = var_r0;
        Player_PlaySong(p, 0x80U);
    }
    if ((sub_8015064(p) << 0x10) == 0) {
        sub_8014E70(p);
        sub_8016E00(p);
    }
}

void sub_800D32C(Player *p) {
    PlayerSprite *temp_r2;
    s16 *temp_r2_2;
    s16 temp_r1;
    s16 var_r3;
    s32 var_r1;
    s32 var_r1_2;

    var_r3 = 0;
    if (p->spriteData->s.frameFlags & 0x4000) {
        if (p->charFlags.state1 == 0) {
            p->charFlags.state1 = 1;
            if (p->moveState & 0x10000) {
                var_r1 = 0x100;
            } else {
                var_r1 = 0xFFFFFF00;
            }
            p->qWorldY += var_r1;
            p->qSpeedAirY = -0x400;
        } else {
            var_r3 = 1;
        }
        temp_r2 = p->spriteData;
        temp_r2->s.frameFlags &= 0xFFFFBFFF;
    }
    if (var_r3 != 0) {
        p->idleAndCamCounter = -1;
        if (p->moveState & 0x10000) {
            var_r1_2 = 0x100;
        } else {
            var_r1_2 = 0xFFFFFF00;
        }
        p->qWorldY += var_r1_2;
        p->qSpeedAirY = -0x400;
        p->charFlags.anim0 = 0x13;
    } else {
        temp_r2_2 = &p->idleAndCamCounter;
        temp_r1 = *temp_r2_2;
        if (temp_r1 == -1) {
            *temp_r2_2 = -2;
            p->qSpeedAirX = var_r3;
            p->qSpeedAirY = -0xA00;
        } else if (temp_r1 == -2) {
            p->callback = Player_8006F08;
            p->moveState |= 4;
        }
    }
    if ((sub_8015064(p) << 0x10) == 0) {
        sub_8016D30(p);
        sub_8014E70(p);
        sub_8016E00(p);
    }
}

void sub_800D424(Player *arg0) {
    Player *temp_r5;
    PlayerSprite *temp_r2;
    u32 temp_r1_2;
    u32 temp_r1_3;
    u32 var_r1;
    u8 *temp_r1;

    temp_r5 = &gPlayers[(u32) (arg0->unk2B << 0x1E) >> 0x1E];
    if ((gStageData.gameMode != 7) && (arg0->moveState & 0x1000)) {
        Player_StopSong(arg0, 0x119U);
    }
    arg0->moveState &= 0xDC510BA1;
    arg0->unk2B = (u8) (-0x21 & arg0->unk2B);
    arg0->unk2F = 0;
    temp_r1 = &arg0->filler6A[0x2F];
    temp_r1->unk0 = 0;
    temp_r1->unk1 = 0;
    temp_r1[1].unk4 = 0;
    temp_r2 = arg0->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    temp_r1_2 = arg0->moveState;
    temp_r1_3 = temp_r1_2 | 0x20000000;
    arg0->moveState = temp_r1_3;
    arg0->qWorldX = temp_r5->qWorldX;
    arg0->qWorldY = temp_r5->qWorldY;
    if (temp_r5->moveState & 1) {
        var_r1 = temp_r1_2 | 0x20000001;
    } else {
        var_r1 = temp_r1_3 & ~1;
    }
    arg0->moveState = var_r1;
    arg0->qWorldY = temp_r5->qWorldY;
    arg0->idleAndCamCounter = 0x14;
    arg0->qSpeedGround = 0;
    arg0->qSpeedAirX = 0;
    arg0->qSpeedAirY = 0;
    Player_8017D18(arg0);
    arg0->callback = sub_800E924;
    sub_800E924(arg0);
}

void sub_800D500(Player *p) {
    s16 *temp_r1;
    s16 temp_r0;
    s32 var_r6;
    u32 temp_r0_2;
    u32 temp_r3;
    void (*var_r0)(Player *);

    var_r6 = 0;
    temp_r3 = p->moveState & 0xFFFEFFFF;
    p->moveState = temp_r3;
    p->moveState = temp_r3 | (*((((u32) (p->unk2B << 0x1E) >> 0x1E) * 0x150) + &gPlayers->moveState) & 0x10000);
    temp_r1 = &p->idleAndCamCounter;
    temp_r0 = (u16) *temp_r1 - 1;
    *temp_r1 = temp_r0;
    if ((temp_r0 << 0x10) == 0) {
        temp_r0_2 = p->moveState | 4;
        p->moveState = temp_r0_2;
        if (temp_r0_2 & 0x10000) {
            if (sub_80519EC((s32) p->qWorldY >> 8, (s32) p->qWorldX >> 8, (s32) p->unk27, 8, NULL, sub_805217C) <= 0x27) {
                goto block_7;
            }
            goto block_6;
        }
        if (sub_80519EC((s32) p->qWorldY >> 8, (s32) p->qWorldX >> 8, (s32) p->unk27, -8, NULL, sub_805217C) <= 0x27) {
            var_r6 = 1;
        }
block_6:
        if (var_r6 != 0) {
block_7:
            p->qSpeedAirY = -0x600;
            var_r0 = Player_800DB30;
        } else {
            p->charFlags.anim0 = 0x65;
            sub_8012FA0(p);
            var_r0 = sub_800D5F4;
        }
        p->callback = var_r0;
        Player_PlaySong(p, 0x80U);
    }
    if ((sub_8015064(p) << 0x10) == 0) {
        sub_8014E70(p);
        sub_8016E00(p);
    }
}

void sub_800D5F4(Player *p) {
    PlayerSprite *temp_r2;
    s16 *temp_r2_2;
    s16 temp_r1;
    s16 var_r3;
    s32 var_r1;
    s32 var_r1_2;

    var_r3 = 0;
    if (p->spriteData->s.frameFlags & 0x4000) {
        if (p->charFlags.state1 == 0) {
            p->charFlags.state1 = 1;
            if (p->moveState & 0x10000) {
                var_r1 = 0x100;
            } else {
                var_r1 = 0xFFFFFF00;
            }
            p->qWorldY += var_r1;
            p->qSpeedAirY = -0x400;
        } else {
            var_r3 = 1;
        }
        temp_r2 = p->spriteData;
        temp_r2->s.frameFlags &= 0xFFFFBFFF;
    }
    if (var_r3 != 0) {
        p->idleAndCamCounter = -1;
        if (p->moveState & 0x10000) {
            var_r1_2 = 0x100;
        } else {
            var_r1_2 = 0xFFFFFF00;
        }
        p->qWorldY += var_r1_2;
        p->qSpeedAirY = -0x400;
        p->charFlags.anim0 = 0x13;
    } else {
        temp_r2_2 = &p->idleAndCamCounter;
        temp_r1 = *temp_r2_2;
        if (temp_r1 == -1) {
            *temp_r2_2 = -2;
            p->qSpeedAirX = var_r3;
            p->qSpeedAirY = -0x700;
        } else if (temp_r1 == -2) {
            p->callback = Player_800DB30;
            p->moveState |= 4;
        }
    }
    if ((sub_8015064(p) << 0x10) == 0) {
        sub_8016D30(p);
        sub_8014E70(p);
        sub_8016E00(p);
    }
}

void sub_800D6EC(Player *arg0) {
    Player *temp_r5;
    PlayerSprite *temp_r2;
    u32 temp_r1_2;
    u32 var_r1;
    u8 *temp_r1;

    temp_r5 = &gPlayers[(u32) (arg0->unk2B << 0x1E) >> 0x1E];
    if ((gStageData.gameMode != 7) && (arg0->moveState & 0x1000)) {
        Player_StopSong(arg0, 0x119U);
    }
    arg0->moveState &= 0xDC510BA1;
    arg0->unk2B = (u8) (-0x21 & arg0->unk2B);
    arg0->unk2F = 0;
    temp_r1 = &arg0->filler6A[0x2F];
    temp_r1->unk0 = 0;
    temp_r1->unk1 = 0;
    temp_r1[1].unk4 = 0;
    temp_r2 = arg0->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    temp_r1_2 = arg0->moveState | 0x20000004;
    arg0->moveState = temp_r1_2;
    arg0->qWorldX = temp_r5->qWorldX;
    arg0->qWorldY = temp_r5->qWorldY;
    if (temp_r5->moveState & 1) {
        var_r1 = temp_r1_2 | 1;
    } else {
        var_r1 = temp_r1_2 & ~1;
    }
    arg0->moveState = var_r1;
    arg0->qWorldY = temp_r5->qWorldY;
    arg0->idleAndCamCounter = 0x1E;
    arg0->qSpeedGround = 0;
    arg0->qSpeedAirX = 0;
    arg0->qSpeedAirY = 0;
    sub_8017DB4(arg0);
    arg0->callback = sub_800E968;
    sub_800E968(arg0);
}

void sub_800D7C8(Player *p) {
    s32 temp_r1;
    u8 *temp_r2;
    u8 temp_r0;

    if ((gStageData.gameMode != 7) && ((temp_r1 = 0x1C & p->unk2B, (temp_r1 == 4)) || (temp_r1 == 8) || (temp_r1 == 0x10)) && ((u32) (u16) ((u16) p->charFlags.anim0 - 0x10) <= 2U)) {
        temp_r2 = &p->unk5A;
        temp_r0 = (*temp_r2 + 1) & 0xF;
        *temp_r2 = temp_r0;
        if ((3 & temp_r0) == 3) {
            sub_8017134(p);
        }
    }
}

void sub_800D81C(Player *arg0) {
    s32 temp_r1;
    u8 temp_r1_2;

    temp_r1 = 0x1C & arg0->unk2B;
    if (((temp_r1 == 4) || (temp_r1 == 8) || (temp_r1 == 0x10)) && (arg0->moveState & 0x20000)) {
        temp_r1_2 = (arg0->unk5A + 1) & 0xF;
        arg0->unk5A = temp_r1_2;
        if ((u32) (u16) (arg0->charFlags.anim0 - 0xB1) <= 1U) {
            if ((7 & temp_r1_2) == 7) {
                sub_8017258(arg0);
            }
        } else if ((7 & temp_r1_2) == 7) {
            sub_80171C0(arg0);
        }
    }
}

void SetPlayerCallback(Player *p, void (*callback)(Player *)) {
    p->callback = callback;
}

void Player_800D880(Player *p) {
    u8 *temp_r0;

    if ((gStageData.gameMode != 7) && (p->moveState & 0x1000)) {
        Player_StopSong(p, 0x119U);
    }
    p->moveState &= 0xDC510BA1;
    p->unk2B = (u8) (-0x21 & p->unk2B);
    p->unk2F = 0;
    temp_r0 = &p->filler6A[0x2F];
    temp_r0->unk0 = 0;
    temp_r0->unk1 = 0;
    temp_r0[1].unk4 = 0;
}

void sub_800D8DC(Player *p) {
    u32 temp_r1;

    temp_r1 = p->moveState;
    if (!(0x10000000 & temp_r1)) {
        if (!(temp_r1 & 4)) {
            sub_8005800(p);
            sub_8015144(p);
            Player_801479C(p);
            sub_8016D30(p);
            sub_8012EB8(p);
            return;
        }
        sub_8014940(p);
        sub_8016E50(p);
        sub_8016D30(p);
        sub_8016EB0(p);
        Player_80149E4(p);
        if (!(p->moveState & 4)) {
            p->charFlags.anim0 = 8;
        }
    }
}

void Player_800D944(Player *p) {
    s16 *temp_r2;

    temp_r2 = &p->idleAndCamCounter;
    if (*temp_r2 != -1) {
        *temp_r2 = (u16) *temp_r2 - 1;
    }
    if ((*temp_r2 == 0) && ((u32) gStageData.gameMode <= 5U)) {
        sub_8002508();
    }
}

void Player_800D978(Player *p) {
    p->moveState &= 0xFFFDFFFF;
    p->unk27 = 1;
    Player_StopSong(p, SE_GRINDING);
    p->unk2D = (u8) (-0x10 & p->unk2D);
    Player_8005380(p);
}

void Player_800D9B4(Player *p) {
    p->moveState &= 0xFFFDFFFF;
    p->unk27 = 1;
    Player_StopSong(p, SE_GRINDING);
    if ((u32) (u16) ((u16) p->charFlags.anim0 - 0xB1) <= 1U) {
        Player_800673C(p);
        return;
    }
    Player_8006654(p);
}

void sub_800D9F4(Player *arg0) {
    PlayerSprite *temp_r2;
    u16 var_r0;

    arg0->moveState &= 0xFDFFFFBF;
    if ((u32) (u16) (arg0->charFlags.anim0 - 0x10) <= 1U) {
        var_r0 = 0xD;
    } else {
        var_r0 = 0xC;
    }
    arg0->charFlags.anim0 = var_r0;
    temp_r2 = arg0->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    arg0->unk2D = (u8) (-0x10 & arg0->unk2D);
    Player_BoostModeDisengage(arg0);
    arg0->qSpeedGround = 0;
    arg0->moveState ^= 1;
    arg0->callback = sub_800DA60;
    sub_800DA60(arg0);
}

void sub_800DA60(Player *p) {
    if (((sub_8014A60() << 0x10) == 0) && ((sub_8016EDC(p) << 0x10) == 0)) {
        if ((sub_8014BC4(p) << 0x10) != 0) {
            p->callback = Player_80077CC;
            return;
        }
        if (sub_8015568(p) == 0) {
            if (p->spriteData->s.frameFlags & 0x4000) {
                p->callback = Player_8005380;
                return;
            }
            if ((sub_8015064(p) << 0x10) == 0) {
                Player_801479C(p);
                sub_8016D30(p);
                sub_8014E70(p);
                if ((sub_801480C(p) << 0x10) == 0) {
                    sub_8012EB8(p);
                    sub_8016E00(p);
                }
            }
        }
    }
}

void Player_800DAF4(Player *p) {
    u32 temp_r0;

    temp_r0 = (p->moveState & 0xDDFFFFBF) | 4;
    p->moveState = temp_r0;
    if (temp_r0 & 0x800000) {
        sub_800E150(p);
        return;
    }
    p->callback = sub_800DF10;
    sub_800DF10(p);
}

void Player_800DB30(Player *p) {
    s16 var_r0;
    s16 var_r1;

    p->moveState = (p->moveState & 0xDDFFFFBF) | 6;
    var_r1 = p->qSpeedAirX;
    if ((s32) var_r1 < 0) {
        var_r1 = 0 - var_r1;
    }
    if ((s32) var_r1 <= 0x13F) {
        var_r0 = 0x13;
    } else {
        var_r0 = 0x14;
    }
    p->charFlags.anim0 = var_r0;
    sub_8012FF0(p);
    p->callback = sub_800DF10;
    sub_800DF10(p);
}

void Player_800DB7C(Player *p) {
    u8 *temp_r2;

    p->moveState = (p->moveState & 0xFDFFFFF5) | 0x20000000;
    sub_8016F28(p);
    p->qSpeedGround = 0;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->unk2D = (u8) (-0x10 & p->unk2D);
    temp_r2 = (p + 0x2D) - 1;
    *temp_r2 &= -5;
    p->charFlags.anim0 = 0x90;
    sub_8016F28(p);
    Player_BoostModeDisengage(p);
    Player_PlaySong(p, 0x257U);
    p->callback = Player_800DCB4;
    Player_800DCB4(p);
}

void Player_800DBE8(Player *p) {
    u8 *temp_r2;

    p->moveState = (p->moveState & 0xFDFFFFF5) | 0x20000000;
    sub_8016F28(p);
    Player_BoostModeDisengage(p);
    p->qSpeedGround = 0;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->unk2D = (u8) (-0x10 & p->unk2D);
    temp_r2 = (p + 0x2D) - 1;
    *temp_r2 &= -5;
    p->charFlags.anim0 = 0x8D;
    Player_PlaySong(p, 0x25EU);
    p->callback = sub_800DC50;
    sub_800DC50(p);
}

void sub_800DC50(Player *p) {
    u8 temp_r1;

    if ((sub_801480C(p) << 0x10) != 0) {
        Player_StopSong(p, 0x25EU);
        return;
    }
    Player_PlayOrContinueSong(p, 0x25E);
    temp_r1 = p->moveState & 0x20;
    if (temp_r1 == 0) {
        p->unk26 = temp_r1;
        p->qSpeedGround = (s16) temp_r1;
        p->qSpeedAirX = (s16) temp_r1;
        p->qSpeedAirY = (s16) temp_r1;
        p->qWorldY += 0xFFFFE000;
        p->callback = Player_80068EC;
        Player_StopSong(p, 0x25EU);
    }
}

void Player_800DCB4(Player *p) {
    u8 temp_r1;

    if ((sub_801480C(p) << 0x10) != 0) {
        Player_StopSong(p, 0x257U);
        return;
    }
    temp_r1 = p->moveState & 0x20;
    if (temp_r1 == 0) {
        p->unk26 = temp_r1;
        p->qSpeedGround = (s16) temp_r1;
        p->qSpeedAirX = (s16) temp_r1;
        p->qSpeedAirY = (s16) temp_r1;
        p->qWorldY += 0xFFFFE000;
        p->callback = Player_80068EC;
        Player_StopSong(p, 0x257U);
    }
}

void Player_800DD0C(Player *p) {
    sub_800B530();
    p->callback = Player_800B5A4;
    Player_800B5A4(p);
}

void Player_800DD28(Player *p) {
    sub_800B530();
    p->callback = Player_800DD44;
    Player_800DD44(p);
}

void Player_800DD44(Player *p) {
    s16 var_r0;

    sub_800F170();
    if (0x20 & (u16) p->idleAndCamCounter) {
        var_r0 = -0x800;
    } else {
        var_r0 = 0x800;
    }
    p->qSpeedAirX = var_r0;
    p->unk2C = (u8) (p->unk2C | 0x40);
    if ((p->idleAndCamCounter == 0) || (gStageData.buttonConfig.jump & p->keyInput2)) {
        Player_PlaySong(p, 0x260U);
        p->qWorldX = p->qUnk70;
        p->qWorldY = p->qUnk74;
        p->callback = Player_800DDD0;
        Player_800DDD0(p);
    }
}

void Player_800DDB4(Player *p) {
    p->idleAndCamCounter = 0xA;
    p->callback = Player_800B628;
    Player_800B628(p);
}

void Player_800DDD0(Player *p) {
    s16 temp_r1;
    s32 var_r0;

    p->qWorldX += p->qSpeedAirX;
    if (p->moveState & 0x10000) {
        var_r0 = p->qWorldY - p->qSpeedAirY;
    } else {
        var_r0 = p->qWorldY + p->qSpeedAirY;
    }
    p->qWorldY = var_r0;
    if (((u32) (((((s32) p->qWorldX >> 8) - gCamera.x) << 0x10) + 0x7F0000) > 0x01EE0000U) || (temp_r1 = (s16) (u16) (((s32) p->qWorldY >> 8) - gCamera.y), ((s32) temp_r1 <= -0x80)) || ((s32) temp_r1 > 0x11F)) {
        Player_8005380(p);
    }
}

void Player_800DE48(Player *p) {
    p->idleAndCamCounter = 0x1E;
    p->callback = Player_800B6C4;
    Player_800B6C4(p);
}

void Player_800DE64(Player *p) {
    u8 *temp_r2;

    sub_8012FA0(p);
    p->moveState = (p->moveState & 0xFDFFFFF9) | 0x20000000;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->unk26 = 0;
    p->charFlags.anim0 = 8;
    p->unk2D = (u8) (-0x10 & p->unk2D);
    temp_r2 = (p + 0x2D) - 1;
    *temp_r2 &= -5;
    sub_8016F28(p);
    p->callback = Player_800B81C;
    Player_800B81C(p);
}

void Player_800DEC4(Player *p) {
    s16 *temp_r1;
    s16 temp_r0;

    if ((sub_8015064() << 0x10) == 0) {
        sub_8016E50(p);
        sub_8016D30(p);
        sub_8016EB0(p);
        Player_80149E4(p);
        sub_8017004(p);
        temp_r1 = &p->idleAndCamCounter;
        temp_r0 = (u16) *temp_r1 - 1;
        *temp_r1 = temp_r0;
        if ((temp_r0 << 0x10) == 0) {
            p->callback = Player_CollideGroundAfterIceLauncher;
        }
    }
}

void sub_800DF10(Player *p) {
    if ((sub_8014BC4() << 0x10) == 0) {
        sub_801350C(p);
        sub_8014940(p);
        if ((sub_8015064(p) << 0x10) == 0) {
            sub_8016E50(p);
            sub_8016D30(p);
            sub_8016EB0(p);
            Player_80149E4(p);
            sub_8017004(p);
        }
    }
}

void sub_800DF5C(Player *p) {
    sub_801350C(p);
    sub_8014940(p);
    if ((sub_8015064(p) << 0x10) == 0) {
        sub_8016E50(p);
        sub_8016D30(p);
        sub_8016EB0(p);
        Player_80149E4(p);
        sub_8017004(p);
    }
}

void sub_800DF9C(Player *p) {

}

void sub_800DFA0(Player *p) {
    if ((sub_8014BC4() << 0x10) == 0) {
        sub_801350C(p);
        sub_8014940(p);
        if ((sub_8015064(p) << 0x10) == 0) {
            sub_8016E50(p);
            sub_8016D30(p);
            sub_8016EB0(p);
            Player_80149E4(p);
            sub_8017004(p);
        }
    }
}

void sub_800DFEC(Player *p) {
    p->moveState &= 0xFDFFFFFF;
    p->charFlags.anim0 = 0x22;
    p->qSpeedGround = 0;
    p->unk26 = 0;
    p->callback = Player_800856C;
    Player_800856C(p);
}

void sub_800E01C(Player *p) {
    p->moveState &= 0xFDFFFFFF;
    p->charFlags.anim0 = 0x23;
    p->qSpeedGround = 0;
    p->unk26 = 0;
    p->callback = Player_8008654;
    Player_8008654(p);
}

void sub_800E04C(Player *arg0) {
    arg0->unk90 = (s32) arg0->unk90 >> 1;
    sub_8014940(arg0);
    sub_8016D30(arg0);
    sub_8016EB0(arg0);
    Player_80149E4(arg0);
    sub_8017004(arg0);
    sub_8015064(arg0);
}

void sub_800E084(void *arg0) {
    void *temp_r3;

    arg0->unk4 = (s32) ((arg0->unk4 & 0xFDFFFFBF) | 0x800000);
    arg0->unk30 = 0xE;
    temp_r3 = arg0->unkE0;
    temp_r3->unk14 = (s32) (temp_r3->unk14 & 0xFFFFBFFF);
    arg0->unk1C = 0;
    arg0->unk4 = (s32) (arg0->unk4 ^ 1);
    arg0->unk0 = sub_800E0CC;
    sub_800E0CC();
}

void sub_800E0CC(Player *arg0) {
    if (((sub_8014BC4() << 0x10) != 0) && ((sub_8014A60(arg0) << 0x10) == 0) && ((sub_8016EDC(arg0) << 0x10) == 0)) {
        if (arg0->spriteData->s.frameFlags & 0x4000) {
            arg0->callback = Player_80077CC;
        }
        sub_8015144(arg0);
        if ((sub_8015064(arg0) << 0x10) == 0) {
            Player_801479C(arg0);
            sub_8016D30(arg0);
            sub_8014E70(arg0);
            if ((sub_801480C(arg0) << 0x10) == 0) {
                sub_8012EB8(arg0);
                sub_8016E00(arg0);
            }
        }
    }
}

void sub_800E150(Player *p) {
    PlayerSprite *temp_r2;

    p->moveState = (p->moveState & 0xFDFFFFFD) | 0x800000;
    p->charFlags.anim0 = 0x15;
    sub_8012FA0(p);
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    p->callback = sub_800E198;
    sub_800E198(p);
}

void sub_800E198(Player *p) {
    if ((sub_8014BC4() << 0x10) != 0) {
        sub_801350C(p);
        sub_8014940(p);
        if ((sub_8015064(p) << 0x10) == 0) {
            sub_8016E50(p);
            sub_8016D30(p);
            sub_8016EB0(p);
            Player_80149E4(p);
            sub_8017004(p);
        }
    }
}

void Player_800E1E4(Player *p) {
    if ((sub_8015064() << 0x10) == 0) {
        sub_8016E50(p);
        sub_8016D30(p);
        sub_8014E70(p);
        Player_80149E4(p);
        sub_8017004(p);
    }
}

void sub_0800E218(Player *arg0) {
    s16 *temp_r1;
    s16 temp_r0;

    arg0->moveState = (arg0->moveState | 0x02000000) & 0xDFFFFFFF;
    sub_8012FA0(arg0);
    temp_r1 = &arg0->idleAndCamCounter;
    *temp_r1 = 0x168;
    temp_r0 = arg0->qSpeedGround;
    if (temp_r0 != 0) {
        sub_0800E27C(arg0);
        return;
    }
    arg0->charFlags.anim0 = temp_r0;
    *temp_r1 = 0x1E;
    arg0->unk2D = (u8) (-0x10 & arg0->unk2D);
    Player_BoostModeDisengage(arg0);
    arg0->callback = sub_800C494;
    sub_800C494(arg0);
}

void sub_0800E27C(Player *p) {
    p->moveState = (p->moveState | 0x02000000) & 0xDFFFFFFF;
    sub_8012FA0(p);
    p->charFlags.anim0 = 8;
    p->unk5A = 0;
    p->unk2D = (u8) (-0x10 & p->unk2D);
    p->callback = sub_800C540;
    sub_800C540(p);
}

void sub_800E2C8(Player *p) {
    u8 *temp_r1;
    u8 temp_r0;
    u8 temp_r0_2;

    sub_8015144(p);
    if ((sub_8015064(p) << 0x10) == 0) {
        Player_801479C(p);
        sub_8016D30(p);
        sub_8014E70(p);
        sub_8012EB8(p);
        sub_8016E00(p);
        temp_r1 = &p->unk5B;
        temp_r0 = *temp_r1;
        if (temp_r0 != 0) {
            temp_r0_2 = temp_r0 - 1;
            *temp_r1 = temp_r0_2;
            if ((temp_r0_2 << 0x18) == 0) {
                Player_PlaySong(p, 0x80U);
            }
        }
        if (p->spriteData->s.frameFlags & 0x4000) {
            p->callback = Player_8005380;
        }
        if (p->moveState & 4) {
            p->callback = Player_800DB30;
        }
    }
}

void Player_800E348(Player *p) {
    sub_800AF98();
    p->qSpeedAirX = 0;
    p->qSpeedAirY = -0xC00;
    p->callback = Player_800E3EC;
    Player_800E3EC(p);
}

void Player_800E370(Player *p) {
    sub_800AF98();
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0xC00;
    p->callback = Player_800E3EC;
    Player_800E3EC(p);
}

void Player_800E398(Player *p) {
    sub_800AF98();
    p->qSpeedAirX = -0xC00;
    p->qSpeedAirY = -0x80;
    p->callback = Player_800E3EC;
    Player_800E3EC(p);
}

void Player_800E3C4(Player *p) {
    sub_800AF98();
    p->qSpeedAirX = 0xC00;
    p->qSpeedAirY = 0x80;
    p->callback = Player_800E3EC;
    Player_800E3EC(p);
}

void Player_800E3EC(Player *p) {
    s16 *temp_r1;
    s16 temp_r0_5;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 temp_r5;
    s32 temp_r6;

    temp_r5 = p->qUnk70;
    temp_r6 = p->qUnk74;
    temp_r0 = p->qWorldX;
    if (temp_r0 > temp_r5) {
        p->qWorldX = temp_r0 + 0xFFFFFE00;
    }
    temp_r0_2 = p->qWorldX;
    if (temp_r0_2 < temp_r5) {
        p->qWorldX = temp_r0_2 + 0x200;
    }
    temp_r0_3 = p->qWorldY;
    if (temp_r0_3 > temp_r6) {
        p->qWorldY = temp_r0_3 + 0xFFFFFE00;
    }
    temp_r0_4 = p->qWorldY;
    if (temp_r0_4 < temp_r6) {
        p->qWorldY = temp_r0_4 + 0x200;
    }
    temp_r1 = &p->idleAndCamCounter;
    temp_r0_5 = (u16) *temp_r1 - 1;
    *temp_r1 = temp_r0_5;
    if ((temp_r0_5 << 0x10) == 0) {
        sub_8003E28(0x251U);
        sub_8003DF0(0x252U);
        p->qWorldX = temp_r5;
        p->qWorldY = temp_r6;
        p->callback = Player_800B004;
        Player_800B004(p);
    }
}

void Player_800E468(Player *p) {
    sub_800E508();
    p->qSpeedAirX = 0;
    p->qSpeedAirY = -0xA00;
    p->callback = Player_800B128;
    Player_800B128(p);
}

void Player_800E490(Player *p) {
    sub_800E508();
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0xA00;
    p->callback = Player_800B128;
    Player_800B128(p);
}

void Player_800E4B8(Player *p) {
    sub_800E508();
    p->qSpeedAirX = -0xA00;
    p->qSpeedAirY = 0;
    p->callback = Player_800B128;
    Player_800B128(p);
}

void Player_800E4E0(Player *p) {
    sub_800E508();
    p->qSpeedAirX = 0xA00;
    p->qSpeedAirY = 0;
    p->callback = Player_800B128;
    Player_800B128(p);
}

void sub_800E508(Player *arg0) {
    PlayerSprite *temp_r2;
    u8 *temp_r2_2;

    sub_8012FC0(arg0);
    arg0->moveState = (arg0->moveState & 0xFDFFFFDF) | 6;
    arg0->charFlags.anim0 = 0xB;
    temp_r2 = arg0->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    arg0->unk26 = 0;
    arg0->idleAndCamCounter = 0x1E;
    arg0->unk2D = (u8) (-0x10 & arg0->unk2D);
    temp_r2_2 = (arg0 + 0x2D) - 1;
    *temp_r2_2 &= -5;
}

void Player_800E564(Player *p) {
    s16 *temp_r1;
    s16 temp_r0;
    u32 temp_r0_2;

    p->qWorldX += p->qSpeedAirX;
    p->qWorldY += p->qSpeedAirY;
    temp_r1 = &p->idleAndCamCounter;
    temp_r0 = (u16) *temp_r1 - 1;
    *temp_r1 = temp_r0;
    if ((temp_r0 << 0x10) == 0) {
        p->callback = Player_800DAF4;
        temp_r0_2 = (p->moveState & 0xDDFFFFBF) | 4;
        p->moveState = temp_r0_2;
        if (temp_r0_2 & 0x800000) {
            sub_800E150(p);
            return;
        }
        p->callback = sub_800DF10;
        sub_800DF10(p);
    }
}

void Player_800E5CC(Player *p) {

}

void Player_800E5D0(Player *p) {
    p->moveState &= ~1;
    p->qSpeedGround = 0x300;
    sub_800F1C4();
}

void Player_800E5EC(Player *p) {
    p->moveState |= 1;
    p->qSpeedGround = -0x300;
    sub_800F1C4();
}

void Player_800E604(Player *p) {
    s16 var_r0;
    s16 var_r1;

    var_r1 = p->qSpeedGround;
    if ((s32) var_r1 < 0) {
        var_r1 = 0 - var_r1;
    }
    if ((s32) var_r1 <= 0x2FF) {
        if ((s32) p->qSpeedGround < 0) {
            var_r0 = -0x300;
        } else {
            var_r0 = 0x300;
        }
        p->qSpeedGround = var_r0;
    }
    sub_8015144(p);
    if ((sub_8015064(p) << 0x10) == 0) {
        Player_801479C(p);
        sub_8016D30(p);
        sub_8012EB8(p);
        sub_8016E00(p);
        if (p->callback != Player_800E604) {
            Player_StopSong(p, 0x257U);
        }
    }
}

void Player_800E67C(Player *p) {
    PlayerSprite *temp_r2;

    p->moveState = (p->moveState & 0xDDFFFFDF) | 6;
    sub_8012FF0(p);
    p->charFlags.anim0 = 0x13;
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    p->unk26 = 0;
    p->qSpeedGround = 0;
    p->callback = Player_800E6CC;
    Player_800E6CC(p);
}

void Player_800E6CC(Player *p) {
    sub_801350C(p);
    if ((sub_8015064(p) << 0x10) == 0) {
        sub_8016E50(p);
        sub_8016D30(p);
        sub_8016EB0(p);
        Player_80149E4(p);
        sub_8017004(p);
        if ((s32) p->qSpeedAirY >= 0) {
            p->charFlags.anim0 = 0x18;
            Player_8012FE0(p);
            p->callback = Player_800DAF4;
        }
    }
}

void sub_800E720(void) {

}

void sub_800E724(Player *arg0) {
    arg0->moveState = (arg0->moveState & ~0x40) | 0x20000002;
    sub_8012FC0(arg0);
    arg0->charFlags.anim0 = 0xA;
    arg0->qSpeedGround = 0;
    arg0->idleAndCamCounter = 0xA;
    arg0->callback = sub_800E764;
    sub_800E764(arg0);
}

void sub_800E764(Player *p) {
    s16 *temp_r1;
    s16 temp_r0;
    u32 temp_r0_2;
    void (*var_r0)(Player *);

    temp_r1 = &p->idleAndCamCounter;
    temp_r0 = (u16) *temp_r1 - 1;
    *temp_r1 = temp_r0;
    if ((temp_r0 << 0x10) == 0) {
        temp_r0_2 = p->moveState & 0xDFFFFFFF;
        p->moveState = temp_r0_2;
        if (temp_r0_2 & 4) {
            var_r0 = Player_800DB30;
        } else {
            var_r0 = Player_8005380;
        }
        p->callback = var_r0;
    }
    if ((sub_8015064(p) << 0x10) == 0) {
        sub_8014E70(p);
        sub_8017004(p);
    }
}

void sub_800E7BC(Player *arg0) {
    arg0->moveState = (arg0->moveState & ~0x40) | 0x22000004;
    arg0->charFlags.anim0 = 0x5C;
    arg0->qSpeedGround = 0;
    arg0->qSpeedAirX = 0;
    arg0->qSpeedAirY = 0;
    arg0->unk26 = 0;
    Player_8012FE0(arg0);
    Player_PlaySong(arg0, SE_TAILS__FLYING);
    arg0->callback = sub_800C9C4;
    sub_800C9C4(arg0);
}

void sub_800E808(Player *p) {
    u16 temp_r0;
    u16 temp_r0_2;

    if ((s32) p->qSpeedAirY >= 0) {
        temp_r0 = p->charFlags.state1;
        if (temp_r0 == 1) {
            p->charFlags.state1 = temp_r0 + 1;
        }
    }
    if (p->spriteData->s.frameFlags & 0x4000) {
        temp_r0_2 = p->charFlags.state1;
        if (temp_r0_2 == 2) {
            p->charFlags.state1 = temp_r0_2 + 1;
            p->callback = sub_800DF10;
        }
    }
    sub_801350C(p);
    sub_8014940(p);
    if ((sub_8015064(p) << 0x10) == 0) {
        sub_8016E50(p);
        sub_8016D30(p);
        sub_8016EB0(p);
        Player_80149E4(p);
        sub_8017004(p);
    }
}

void sub_800E880(Player *p) {
    u16 temp_r0;

    if (p->spriteData->s.frameFlags & 0x4000) {
        temp_r0 = p->charFlags.state1;
        if (temp_r0 == 1) {
            p->callback = Player_8005380;
        } else {
            p->charFlags.state1 = temp_r0 + 1;
        }
    }
    sub_8015144(p);
    if ((sub_8015064(p) << 0x10) == 0) {
        Player_801479C(p);
        sub_8016D30(p);
        sub_8014E70(p);
        sub_8012EB8(p);
        sub_8016E00(p);
    }
}

void sub_0800E8E0(Player *arg0) {
    PlayerSprite *temp_r3;

    arg0->moveState |= 0x22000000;
    arg0->charFlags.anim0 = 0xB;
    temp_r3 = arg0->spriteData;
    temp_r3->s.frameFlags &= 0xFFFFBFFF;
    arg0->idleAndCamCounter = 0xA;
    arg0->qSpeedGround = 0;
    arg0->qSpeedAirX = 0;
    arg0->qSpeedAirY = 0;
    arg0->callback = sub_800D238;
    sub_800D238(arg0);
}

void sub_800E924(Player *p) {
    s16 *temp_r1;
    s16 temp_r0;

    if ((sub_8015064() << 0x10) == 0) {
        sub_8014E70(p);
        sub_8016E00(p);
        temp_r1 = &p->idleAndCamCounter;
        temp_r0 = (u16) *temp_r1 - 1;
        *temp_r1 = temp_r0;
        if ((temp_r0 << 0x10) == 0) {
            p->moveState &= 0xDFFFFFFF;
            p->callback = Player_8005380;
        }
    }
}

void sub_800E968(Player *p) {
    s16 *temp_r1;
    s16 temp_r0;

    if ((sub_8015064() << 0x10) == 0) {
        sub_8017004(p);
        temp_r1 = &p->idleAndCamCounter;
        temp_r0 = (u16) *temp_r1 - 1;
        *temp_r1 = temp_r0;
        if ((temp_r0 << 0x10) == 0) {
            p->moveState |= 0x20000000;
            p->callback = Player_800DAF4;
        }
    }
}

void Player_800E9A4(Player *p) {
    PlayerSprite *temp_r2;
    u32 temp_r1;

    sub_8009D74(p);
    temp_r1 = p->moveState;
    if (temp_r1 & 0x800000) {
        p->moveState = (temp_r1 & 0xFDFFFFFD) | 0x800000;
        p->charFlags.anim0 = 0x15;
        sub_8012FA0(p);
        temp_r2 = p->spriteData;
        temp_r2->s.frameFlags &= 0xFFFFBFFF;
        p->callback = sub_800E198;
        sub_800E198(p);
        return;
    }
    p->charFlags.anim0 = 0x6C;
    p->callback = Player_8006C70;
    Player_8006C70(p);
}

void Player_800EA0C(Player *p) {
    PlayerSprite *temp_r2;
    u32 temp_r1;

    sub_8009D74(p);
    temp_r1 = p->moveState;
    if (temp_r1 & 0x800000) {
        p->moveState = (temp_r1 & 0xFDFFFFFD) | 0x800000;
        p->charFlags.anim0 = 0x15;
        sub_8012FA0(p);
        temp_r2 = p->spriteData;
        temp_r2->s.frameFlags &= 0xFFFFBFFF;
        p->callback = sub_800E198;
        sub_800E198(p);
        return;
    }
    p->charFlags.anim0 = 0x6C;
    p->callback = Player_8006C70;
    Player_8006C70(p);
}

void Player_800EA74(Player *p) {
    u16 temp_r1;
    u16 temp_r1_2;

    sub_8009D74(p);
    temp_r1 = (u16) p->qSpeedAirX;
    p->qSpeedAirX = temp_r1 + ((s32) (temp_r1 << 0x10) >> 0x11);
    temp_r1_2 = (u16) p->qSpeedAirY;
    p->qSpeedAirY = temp_r1_2 + ((s32) (temp_r1_2 << 0x10) >> 0x11);
    p->charFlags.anim0 = 0x6C;
    p->callback = Player_8006C70;
    Player_8006C70(p);
}

void Player_800EAA8(Player *p) {

}

void sub_800EAAC(Player *p) {
    s16 *temp_r1;
    s16 temp_r0;

    temp_r1 = &p->idleAndCamCounter;
    temp_r0 = (u16) *temp_r1 - 1;
    *temp_r1 = temp_r0;
    if ((s32) (temp_r0 << 0x10) <= 0) {
        if ((0x1C & p->unk2B) == 4) {
            sub_8056120((s16) gStageData.nextMapIndex);
        }
        p->callback = Player_800EB4C;
    }
}

void sub_800EAEC(Player *p) {
    s16 *temp_r1;
    s16 temp_r0;

    temp_r1 = &p->idleAndCamCounter;
    temp_r0 = (u16) *temp_r1 - 1;
    *temp_r1 = temp_r0;
    if ((s32) (temp_r0 << 0x10) <= 0) {
        sub_8056168();
        p->callback = Player_800EB4C;
    }
}

void sub_800EB14(Player *p) {
    s16 *temp_r1;
    s16 temp_r0;

    p->unk2C = (u8) (p->unk2C | 0x40);
    temp_r1 = &p->idleAndCamCounter;
    temp_r0 = (u16) *temp_r1 - 1;
    *temp_r1 = temp_r0;
    if ((temp_r0 << 0x10) == 0) {
        sub_8056120((s16) p->unkA4);
        p->callback = Player_800EB4C;
    }
}

void Player_800EB4C(Player *p) {
    p->unk2C = (u8) (p->unk2C | 0x40);
}

void Player_800EB58(Player *p) {

}

void Player_800EB5C(Player *p) {
    sub_8016F28(p);
    sub_8014940(p);
    if ((sub_8015064(p) << 0x10) == 0) {
        sub_8016E50(p);
        sub_8016D30(p);
        sub_8016EB0(p);
        Player_80149E4(p);
        sub_8017004(p);
    }
}

void sub_800EB9C(Player *arg0) {
    arg0->charFlags.anim0 = 8;
    arg0->qWorldY = 0xB100;
    sub_8016F28(arg0);
    arg0->moveState = arg0->moveState & 0xFDFFFFFF & ~4;
    arg0->callback = sub_800EBD8;
    sub_800EBD8(arg0);
}

void sub_800EBD8(Player *p) {
    p->qSpeedGround = 0x300;
    Player_801479C(p);
    sub_8016D30(p);
    sub_8012EB8(p);
    sub_8016E00(p);
    if ((s32) ((s32) p->qWorldX >> 8) > 0x66C) {
        p->charFlags.anim0 = 1;
        p->qSpeedGround = 0;
        p->callback = sub_800F228;
    }
}

void sub_800EC20(Player *p) {
    if ((sub_8015064() << 0x10) == 0) {
        Player_801479C(p);
        sub_8016D30(p);
        sub_8012EB8(p);
        sub_8016E00(p);
        if (p->spriteData->s.frameFlags & 0x4000) {
            p->callback = Player_8005380;
        }
    }
}

void sub_800EC68(Player *arg0) {
    u8 *temp_r1;

    if ((gStageData.gameMode != 7) && (arg0->moveState & 0x1000)) {
        Player_StopSong(arg0, 0x119U);
    }
    arg0->moveState &= 0xDC510BA1;
    arg0->unk2B = (u8) (-0x21 & arg0->unk2B);
    arg0->unk2F = 0;
    temp_r1 = &arg0->filler6A[0x2F];
    temp_r1->unk0 = 0;
    temp_r1->unk1 = 0;
    temp_r1[1].unk4 = 0;
    arg0->moveState |= 4;
    Player_BoostModeDisengage(arg0);
    arg0->callback = sub_800ECE0;
    sub_800ECE0(arg0);
}

void sub_800ECE0(Player *p) {
    if ((sub_8015064() << 0x10) == 0) {
        sub_8016E50(p);
        sub_8016D30(p);
        sub_8016EB0(p);
        Player_80149E4(p);
        sub_8017004(p);
    }
}

void Player_800ED14(Player *p) {
    sub_8016F28(p);
    p->charFlags.anim0 = 0xA3;
    p->callback = sub_800ED4C;
    sub_800ED4C(p);
}

void Player_800ED34(Player *p) {
    p->charFlags.anim0 = 0xA4;
    p->callback = sub_800ED4C;
    sub_800ED4C(p);
}

void sub_800ED4C(Player *p) {

}

void sub_800ED50(Player *arg0) {
    arg0->framesInvulnerable = 0x3C;
    sub_8016F28(arg0);
    arg0->idleAndCamCounter = 0;
    arg0->callback = Player_8008A8C;
    Player_8008A8C(arg0);
}

void Player_800ED80(Player *p) {
    s16 *temp_r1;
    s16 temp_r0;

    if (!(7 & (u16) p->idleAndCamCounter) && ((0x1C & p->unk2B) == 4)) {
        sub_802785C();
    }
    temp_r1 = &p->idleAndCamCounter;
    temp_r0 = (u16) temp_r1->unk0 + 1;
    temp_r1->unk0 = temp_r0;
    if ((s32) temp_r0 > 0x1F) {
        temp_r1->unk4C = 0;
        Player_8008C1C(p);
    }
}

void sub_800EDC8(Player *p) {
    s16 var_r5;

    var_r5 = -0x300;
    if (p->moveState & 0x80) {
        var_r5 = -0x180;
    }
    if ((sub_8017058(p) == 0) && ((sub_8014BC4(p) << 0x10) == 0)) {
        if (((s32) p->qSpeedAirY < (s32) var_r5) && !(gStageData.buttonConfig.jump & p->keyInput)) {
            p->qSpeedAirY = var_r5;
            goto block_8;
        }
        if ((s32) ((u16) p->qSpeedAirY << 0x10) > 0) {
block_8:
            p->callback = sub_800EE38;
        }
        sub_801350C(p);
        sub_800EF18(p);
    }
}

void sub_800EE38(Player *p) {
    if ((sub_8017058() == 0) && ((sub_8014BC4(p) << 0x10) == 0)) {
        sub_801350C(p);
        sub_800EF18(p);
    }
}

void sub_800EE64(Player *p) {
    PlayerSprite *temp_r2;
    u16 temp_r0;
    u16 var_r0;
    u32 temp_r1;

    if ((sub_8017058() == 0) && ((sub_8014BC4(p) << 0x10) == 0)) {
        temp_r0 = p->charFlags.state1;
        if ((temp_r0 == 0) && ((s32) p->qSpeedAirY >= 0)) {
            var_r0 = 1;
            goto block_8;
        }
        if (temp_r0 == 1) {
            temp_r2 = p->spriteData;
            temp_r1 = temp_r2->s.frameFlags;
            if (0x4000 & temp_r1) {
                temp_r2->s.frameFlags = temp_r1 & 0xFFFFBFFF;
                var_r0 = 2;
block_8:
                p->charFlags.state1 = var_r0;
            }
        }
        sub_800EF18(p);
    }
}

void sub_800EEC4(Player *p) {
    if ((sub_8017058() == 0) && ((sub_8014BC4(p) << 0x10) != 0)) {
        sub_801350C(p);
        sub_8014940(p);
        if ((sub_8015064(p) << 0x10) == 0) {
            sub_8016E50(p);
            sub_8016D30(p);
            sub_8016EB0(p);
            Player_80149E4(p);
            sub_8017004(p);
        }
    }
}

void sub_800EF18(Player *p) {
    sub_8014940(p);
    if ((sub_8015064(p) << 0x10) == 0) {
        sub_8016E50(p);
        sub_8016D30(p);
        sub_8016EB0(p);
        Player_80149E4(p);
        sub_8017004(p);
    }
}

void sub_800EF50(Player *arg0) {
    Player *temp_r4;
    u32 var_r0;

    temp_r4 = &gPlayers[(u32) (arg0->unk2B << 0x1E) >> 0x1E];
    Player_StopSong(arg0, SE_TAILS__FLYING);
    temp_r4->charFlags.anim0 = 0xDE;
    if (arg0->moveState & 1) {
        var_r0 = temp_r4->moveState | 1;
    } else {
        var_r0 = temp_r4->moveState & ~1;
    }
    temp_r4->moveState = var_r0;
    sub_800CCB0(temp_r4);
    sub_800CB5C(arg0);
    temp_r4->qWorldX = arg0->qWorldX;
    temp_r4->qWorldY = arg0->qWorldY;
}

void sub_800EFB0(Player *arg0) {
    Player *temp_r1;
    u32 temp_r2;
    u32 temp_r2_2;
    u32 var_r2;

    temp_r1 = &gPlayers[(u32) (arg0->unk2B << 0x1E) >> 0x1E];
    temp_r2 = temp_r1->moveState;
    temp_r2_2 = temp_r2 | 0x22000000;
    temp_r1->moveState = temp_r2_2;
    if (arg0->moveState & 1) {
        var_r2 = temp_r2 | 0x22000001;
    } else {
        var_r2 = temp_r2_2 & ~1;
    }
    temp_r1->moveState = var_r2;
    sub_801D978(temp_r1);
    sub_800CD68(arg0);
}

void sub_0800F004(Player *arg0) {
    Player *temp_r4;

    temp_r4 = &gPlayers[(u32) (arg0->unk2B << 0x1E) >> 0x1E];
    if (arg0->moveState & 4) {
        temp_r4->charFlags.anim0 = 0x10D;
        arg0->unk26 = 0;
        temp_r4->unk26 = 0;
        sub_800D19C(arg0);
        sub_800D6EC(temp_r4);
        return;
    }
    temp_r4->charFlags.anim0 = 0x10C;
    sub_0800E8E0(arg0);
    sub_800D424(temp_r4);
}

void sub_800F068(Player *arg0) {
    arg0->callback = Player_8007368;
}

void sub_800F074(Player *arg0) {
    arg0->callback = sub_801A3DC;
}

void sub_800F080(Player *arg0) {
    arg0->callback = sub_801A17C;
}

void sub_800F08C(Player *arg0) {
    arg0->callback = sub_801A46C;
}

void sub_800F098(Player *arg0) {
    arg0->callback = sub_801E7BC;
}

void sub_800F0A4(Player *arg0) {
    arg0->callback = sub_8019C24;
}

void sub_800F0B0(Player *arg0) {
    arg0->callback = Player_80074B8;
}

void sub_800F0BC(Player *arg0) {
    if ((s32) arg0->qSpeedAirY >= 0) {
        sub_800F0E8(arg0);
        sub_800F12C(arg0);
        return;
    }
    sub_800F12C(arg0);
    sub_800F0E8(arg0);
}

void sub_800F0E8(Player *arg0) {
    ? sp4;
    s32 temp_r0;

    temp_r0 = sub_8012E18(1U, arg0, &subroutine_arg0, &sp4);
    if (temp_r0 <= 0) {
        arg0->moveState &= ~0xC;
        arg0->qWorldY += temp_r0 << 8;
        arg0->unk26 = subroutine_arg0;
        arg0->qSpeedAirY = 0;
        arg0->qSpeedGround = (s16) (u16) arg0->qSpeedAirX;
    }
}

void sub_800F12C(Player *arg0) {
    ? sp4;
    s32 temp_r0;

    temp_r0 = sub_8012E18(0U, arg0, &subroutine_arg0, &sp4);
    if (temp_r0 <= 0) {
        arg0->moveState &= ~0xC;
        arg0->qWorldY += temp_r0 << 8;
        arg0->unk26 = subroutine_arg0;
        arg0->qSpeedAirY = 0;
        arg0->qSpeedGround = (s16) (u16) arg0->qSpeedAirX;
    }
}

void sub_800F170(Player *arg0) {
    s16 *temp_r1;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 temp_r5;
    s32 temp_r6;

    temp_r5 = arg0->qUnk70;
    temp_r6 = arg0->qUnk74;
    sub_8016F28(arg0);
    temp_r0 = arg0->qWorldX;
    if (temp_r0 > temp_r5) {
        arg0->qWorldX = temp_r0 + 0xFFFFFE00;
    }
    temp_r0_2 = arg0->qWorldX;
    if (temp_r0_2 < temp_r5) {
        arg0->qWorldX = temp_r0_2 + 0x200;
    }
    temp_r0_3 = arg0->qWorldY;
    if (temp_r0_3 > temp_r6) {
        arg0->qWorldY = temp_r0_3 + 0xFFFFFE00;
    }
    temp_r0_4 = arg0->qWorldY;
    if (temp_r0_4 < temp_r6) {
        arg0->qWorldY = temp_r0_4 + 0x200;
    }
    temp_r1 = &arg0->idleAndCamCounter;
    *temp_r1 = (u16) *temp_r1 - 1;
}

void sub_800F1C4(Player *arg0) {
    PlayerSprite *temp_r2;

    sub_8012FC0(arg0);
    arg0->moveState = (arg0->moveState & 0xFDFFFFDF) | 2;
    sub_8016F28(arg0);
    arg0->charFlags.anim0 = 0x88;
    temp_r2 = arg0->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    arg0->unk2D = (u8) (-0x10 & arg0->unk2D);
    Player_PlaySong(arg0, 0x257U);
    arg0->callback = Player_800E604;
    Player_800E604(arg0);
}

void sub_800F228(Player *p) {

}

void sub_800F22C(Player *p) {
    s16 *temp_r0;
    void *temp_r4;

    temp_r4 = p->Padding8[0];
    Player_800D880(p);
    gStageData.rings = 0x32;
    p->charFlags.anim0 = 0x10E;
    p->unk2A = (u8) (-0x10 & p->unk2A);
    temp_r0 = &p->framesInvincible;
    *temp_r0 = 0;
    *(temp_r0 - 2) = 0;
    temp_r4->unkB = 0;
    temp_r4->unk7 = 0;
    temp_r4->unkC = 0;
    p->qWorldX = gCamera.x << 8;
    p->qWorldY = (gCamera.y + 0x68) << 8;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->Padding8[4] = 0;
    SetPlayerCallback(p, Player_801080C);
    Player_801080C(p);
}

void sub_800F2B0(Player *p) {
    s8 var_r0;
    u8 *temp_r0;
    void *temp_r1;
    void *temp_r4;

    temp_r4 = p->Padding8[0];
    Player_800D880(p);
    p->charFlags.anim0 = 0x10E;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    temp_r0 = &p->unk26;
    temp_r0->unk0 = 0;
    temp_r0->unk22 = 0;
    if ((gStageData.gameMode == 5) && (gStageData.playerIndex != 0)) {
        SetPlayerCallback(p, sub_8010F38);
        sub_8010E04(p);
        sub_8010E94(p);
        sub_800FABC(p);
        temp_r1 = p->Padding8[0];
        if ((s16) temp_r1->unkC != 0) {
            temp_r1->unkC = (u16) (temp_r1->unkC - 1);
        } else {
            Player_BoostModeEngage(p);
        }
        if (p->charFlags.state1 == 0) {
            p->charFlags.anim0 = 0x111;
            return;
        }
        p->charFlags.anim0 = -1;
        return;
    }
    var_r0 = gStageData.buttonConfig.trick & p->keyInput;
    if (var_r0 != 0) {
        var_r0 = 1;
    }
    temp_r4->unkB = var_r0;
    SetPlayerCallback(p, Player_801086C);
    Player_801086C(p);
}

void sub_800F378(Player *p) {
    u8 *temp_r2_2;
    void *temp_r2;

    temp_r2 = p->Padding8[0];
    p->charFlags.anim0 = (s16) *((temp_r2->unk4 * 2) + &gUnknown_080CE5FC);
    p->qSpeedAirX = (s16) *((temp_r2->unk4 * 4) + &gUnknown_080CE61C);
    p->qSpeedAirY = (s16) *((temp_r2->unk4 * 4) + (&gUnknown_080CE61C + 2));
    temp_r2->unk6 = 0;
    temp_r2_2 = &p->Padding8[4];
    *temp_r2_2 |= 1;
    Player_BoostModeDisengage(p);
    m4aSongNumStart(0x70U);
    SetPlayerCallback(p, sub_800F3E8);
    sub_800F3E8(p);
}

void sub_800F3E8(Player *p) {
    s16 temp_r0_2;
    s16 temp_r0_3;
    s16 temp_r0_5;
    s16 temp_r0_6;
    s16 temp_r1;
    s16 temp_r1_2;
    u16 temp_r0;
    u16 temp_r0_4;
    u8 *temp_r2;
    u8 temp_r0_7;
    void *temp_r5;

    temp_r5 = p->Padding8[0];
    sub_8010E4C(p);
    sub_8010ED0(p);
    sub_800FABC(p);
    temp_r0 = (u16) p->qSpeedAirX;
    temp_r1 = p->qSpeedAirX;
    if (temp_r1 != 0) {
        if ((s32) temp_r1 < 0) {
            temp_r0_2 = temp_r0 + 0x64;
            p->qSpeedAirX = temp_r0_2;
            if ((s32) (temp_r0_2 << 0x10) >= 0) {
                goto block_5;
            }
        } else {
            temp_r0_3 = temp_r0 - 0x64;
            p->qSpeedAirX = temp_r0_3;
            if ((s32) (temp_r0_3 << 0x10) <= 0) {
block_5:
                p->qSpeedAirX = 0;
            }
        }
    }
    temp_r0_4 = (u16) p->qSpeedAirY;
    temp_r1_2 = p->qSpeedAirY;
    if (temp_r1_2 != 0) {
        if ((s32) temp_r1_2 < 0) {
            temp_r0_5 = temp_r0_4 + 0x64;
            p->qSpeedAirY = temp_r0_5;
            if ((s32) (temp_r0_5 << 0x10) >= 0) {
                goto block_11;
            }
        } else {
            temp_r0_6 = temp_r0_4 - 0x64;
            p->qSpeedAirY = temp_r0_6;
            if ((s32) (temp_r0_6 << 0x10) <= 0) {
block_11:
                p->qSpeedAirY = 0;
            }
        }
    }
    temp_r5->unk6 = (u8) (temp_r5->unk6 + 1);
    temp_r0_7 = temp_r5->unk6;
    switch (temp_r0_7) {                            /* irregular */
    case 8:
        p->charFlags.anim0 = (s16) *((temp_r5->unk4 * 2) + &gUnknown_080CE60C);
        return;
    case 20:
        temp_r5->unk6 = 0U;
        temp_r5->unkC = 8;
        temp_r2 = &p->Padding8[4];
        *temp_r2 &= 0xFE;
        SetPlayerCallback(p, sub_800F2B0);
        return;
    }
}

void sub_800F4A4(Player *p) {
    s16 temp_r0;
    s16 temp_r1_2;
    s32 var_r6;
    u16 temp_r0_2;
    u16 temp_r2;
    void *temp_r1;
    void *temp_r4;

    var_r6 = 0;
    temp_r4 = p->Padding8[0];
    sub_8010E04(p);
    sub_800FD60(p);
    sub_8010E94(p);
    sub_800FABC(p);
    temp_r1 = p->Padding8[0];
    if ((s16) temp_r1->unkC != 0) {
        temp_r1->unkC = (u16) (temp_r1->unkC - 1);
    } else {
        Player_BoostModeEngage(p);
    }
    temp_r0 = gStageData.buttonConfig.trick & p->keyInput;
    if (temp_r0 != 0) {
        temp_r2 = temp_r4->unk0;
        temp_r0_2 = temp_r2 + 1;
        temp_r4->unk0 = temp_r0_2;
        if ((s32) (temp_r0_2 << 0x10) > 0x01E00000) {
            temp_r4->unk0 = temp_r2;
        }
        goto block_13;
    }
    temp_r1_2 = (s16) temp_r4->unk0;
    if ((s32) temp_r1_2 <= 0x77) {
        temp_r4->unk2 = temp_r0;
        SetPlayerCallback(p, sub_800F2B0);
        goto block_13;
    }
    if ((s32) temp_r1_2 <= 0xEF) {
        temp_r4->unk2 = 0x3C;
        goto block_14;
    }
    if ((s32) temp_r1_2 <= 0x167) {
        temp_r4->unk2 = 0x78;
        goto block_14;
    }
    temp_r4->unk2 = 0xF0;
    var_r6 = 1;
block_13:
    if (var_r6 != 0) {
block_14:
        SetPlayerCallback(p, sub_80109C0);
    }
}

void sub_800F55C(Player *p) {
    u8 temp_r0;
    void *temp_r1;
    void *temp_r5;

    temp_r5 = p->Padding8[0];
    sub_8010E04(p);
    if (p->qSpeedAirX != 0) {
        p->qSpeedAirX = (u16) p->qSpeedAirX + 0x20;
    }
    sub_8010E94(p);
    sub_800FABC(p);
    temp_r1 = p->Padding8[0];
    if ((s16) temp_r1->unkC != 0) {
        temp_r1->unkC = (u16) (temp_r1->unkC - 1);
    } else {
        Player_BoostModeEngage(p);
    }
    temp_r0 = temp_r5->unk5 - 1;
    temp_r5->unk5 = temp_r0;
    if ((temp_r0 << 0x18) == 0) {
        SetPlayerCallback(p, sub_800F2B0);
    }
}

void sub_800F5C8(Player *p) {
    u8 *temp_r1;
    u8 *temp_r2;
    void *temp_r1_2;

    temp_r1 = &p->unk26;
    *temp_r1 -= 0x10;
    sub_8010E04(p);
    sub_8010E94(p);
    sub_800FABC(p);
    temp_r1_2 = p->Padding8[0];
    if ((s16) temp_r1_2->unkC != 0) {
        temp_r1_2->unkC = (u16) (temp_r1_2->unkC - 1);
    } else {
        Player_BoostModeEngage(p);
    }
    if ((s32) p->framesInvulnerable <= 0x3C) {
        temp_r2 = &p->Padding8[4];
        *temp_r2 &= 0xFD;
        SetPlayerCallback(p, sub_800F2B0);
    }
}

void sub_800F634(Player *p) {
    s32 var_r3;
    u16 temp_r0;
    u8 *temp_r2;
    void *temp_r1;
    void *temp_r5;

    temp_r5 = p->Padding8[0];
    sub_8010E4C(p);
    sub_8010ED0(p);
    sub_800FABC(p);
    temp_r1 = p->Padding8[0];
    if ((s16) temp_r1->unkC != 0) {
        temp_r1->unkC = (u16) (temp_r1->unkC - 1);
    } else {
        Player_BoostModeEngage(p);
    }
    if ((s16) temp_r5->unk8 == 0) {
        temp_r2 = &p->Padding8[4];
        *temp_r2 &= 0xF7;
        SetPlayerCallback(p, sub_800F2B0);
        return;
    }
    var_r3 = 1;
    if ((gStageData.buttonConfig.jump | 0xF0 | gStageData.buttonConfig.attack) & p->keyInput2) {
        var_r3 = 5;
    }
    temp_r0 = temp_r5->unk8 - var_r3;
    temp_r5->unk8 = temp_r0;
    if ((s32) (temp_r0 << 0x10) <= 0) {
        temp_r5->unk8 = 0U;
    }
}

void sub_800F6C8(Player *p) {
    u8 *temp_r2_2;
    void *temp_r2;

    temp_r2 = p->Padding8[0];
    if (p->qSpeedAirX != 0) {
        p->qSpeedAirX = 0 - *((temp_r2->unk4 * 4) + &gUnknown_080CE61C);
    }
    if (p->qSpeedAirY != 0) {
        p->qSpeedAirY = 0 - *((temp_r2->unk4 * 4) + (&gUnknown_080CE61C + 2));
    }
    temp_r2_2 = &p->Padding8[4];
    *temp_r2_2 &= 0xFE;
    SetPlayerCallback(p, sub_800F734);
    sub_800F734(p);
}

void sub_800F734(Player *p) {
    s16 temp_r0_2;
    s16 temp_r0_3;
    s16 temp_r0_5;
    s16 temp_r0_6;
    s16 temp_r1;
    s16 temp_r1_2;
    u16 temp_r0;
    u16 temp_r0_4;
    void *temp_r5;

    temp_r5 = p->Padding8[0];
    sub_8010E04(p);
    temp_r0 = (u16) p->qSpeedAirX;
    temp_r1 = p->qSpeedAirX;
    if (temp_r1 != 0) {
        if ((s32) temp_r1 < 0) {
            temp_r0_2 = temp_r0 + 0x64;
            p->qSpeedAirX = temp_r0_2;
            if ((s32) (temp_r0_2 << 0x10) >= 0) {
                goto block_5;
            }
        } else {
            temp_r0_3 = temp_r0 - 0x64;
            p->qSpeedAirX = temp_r0_3;
            if ((s32) (temp_r0_3 << 0x10) <= 0) {
block_5:
                p->qSpeedAirX = 0;
            }
        }
    }
    temp_r0_4 = (u16) p->qSpeedAirY;
    temp_r1_2 = p->qSpeedAirY;
    if (temp_r1_2 != 0) {
        if ((s32) temp_r1_2 < 0) {
            temp_r0_5 = temp_r0_4 + 0x64;
            p->qSpeedAirY = temp_r0_5;
            if ((s32) (temp_r0_5 << 0x10) >= 0) {
                goto block_11;
            }
        } else {
            temp_r0_6 = temp_r0_4 - 0x64;
            p->qSpeedAirY = temp_r0_6;
            if ((s32) (temp_r0_6 << 0x10) <= 0) {
block_11:
                p->qSpeedAirY = 0;
            }
        }
    }
    if ((s32) p->unk18 == 0) {
        temp_r5->unkC = 8;
        SetPlayerCallback(p, sub_800F2B0);
    }
    sub_8010E94(p);
    sub_800FABC(p);
}

void sub_800F7C0(Player *p) {
    s16 *temp_r0;
    s16 *temp_r4;

    temp_r4 = p->Padding8[0];
    Player_800D880(p);
    p->charFlags.anim0 = 0x12C;
    p->unk2A = (u8) ((-0x10 & p->unk2A) | 2);
    temp_r0 = &p->framesInvincible;
    *temp_r0 = 0;
    *(temp_r0 - 2) = 0;
    p->qWorldX = gCamera.x << 8;
    p->qWorldY = (gCamera.y + 0x68) << 8;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    *temp_r4 = 0;
    p->Padding8[4] = 0;
    SetPlayerCallback(p, Player_80108B8);
    Player_80108B8(p);
}

void sub_800F838(Player *p) {
    s16 temp_r1_2;
    s32 temp_r1;
    u16 temp_r0;
    u16 temp_r2;
    u32 var_r6;
    u8 var_r7;
    void *temp_r4;

    var_r7 = 0;
    var_r6 = 0;
    temp_r4 = gPlayers->Padding8[0];
    sub_8010E04(p);
    sub_800FD60(p);
    sub_8010E94(p);
    sub_800FABC(p);
    if ((gStageData.gameMode == 5) && (gStageData.playerIndex != 0)) {
        temp_r1 = (gStageData.buttonConfig.jump | gStageData.buttonConfig.attack | gStageData.buttonConfig.trick) & p->keyInput;
        var_r6 = (u32) ((0 - temp_r1) | temp_r1) >> 0x1F;
    } else if ((gStageData.buttonConfig.jump | gStageData.buttonConfig.attack) & p->keyInput) {
        var_r6 = 1;
    }
    if (var_r6 != 0) {
        temp_r2 = temp_r4->unk0;
        temp_r0 = temp_r2 + 1;
        temp_r4->unk0 = temp_r0;
        if ((s32) (temp_r0 << 0x10) > 0x01E00000) {
            temp_r4->unk0 = temp_r2;
        }
        goto block_15;
    }
    temp_r1_2 = (s16) temp_r4->unk0;
    if ((s32) temp_r1_2 <= 0x77) {
        temp_r4->unk2 = (s16) var_r6;
        SetPlayerCallback(p, Player_80108FC);
        goto block_15;
    }
    if ((s32) temp_r1_2 <= 0xEF) {
        temp_r4->unk2 = 0x3C;
        var_r7 = 2;
        goto block_16;
    }
    if ((s32) temp_r1_2 <= 0x167) {
        temp_r4->unk2 = 0x78;
        var_r7 = 3;
        goto block_16;
    }
    temp_r4->unk2 = 0xF0;
    var_r7 = 4;
block_15:
    if (var_r7 != 0) {
block_16:
        p->unk26 = var_r7;
        SetPlayerCallback(p, Player_8010AA0);
    }
    sub_8010430(p);
}

void sub_800F920(Player *p) {
    u16 temp_r0_2;
    u16 temp_r2;
    u8 temp_r0;
    void (*var_r1)(Player *);
    void *temp_r5;
    void *temp_r6;

    memcpy(&subroutine_arg0, &gUnknown_080CE63C, 8);
    temp_r5 = gPlayers->Padding8[0];
    temp_r6 = p->Padding8[0];
    sub_8010E04(p);
    sub_8010E94(p);
    sub_800FABC(p);
    temp_r0 = p->unk26;
    switch (temp_r0) {                              /* irregular */
    default:
        temp_r5->unk2 = (u16) *(((temp_r0 - 2) * 2) + sp);
        temp_r6->unk8 = 1;
        m4aSongNumStart(0x21FU);
        var_r1 = sub_8010FE0;
block_7:
        SetPlayerCallback(p, var_r1);
        break;
    case 0:
        var_r1 = Player_8010F88;
        goto block_7;
    case 1:
        temp_r2 = temp_r5->unk0;
        temp_r0_2 = temp_r2 + 1;
        temp_r5->unk0 = temp_r0_2;
        if ((s32) (temp_r0_2 << 0x10) > 0x01E00000) {
            temp_r5->unk0 = temp_r2;
        }
        break;
    }
    sub_8010430(p);
}

void sub_800F9C0(Player *p) {
    u8 *temp_r2_2;
    void *temp_r2;

    temp_r2 = p->Padding8[0];
    p->charFlags.anim0 = 0x133;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    if (temp_r2->unk0 == 0) {
        temp_r2->unk0 = 0xF0;
        temp_r2->unk2 = 0;
        m4aSongNumStart(0x242U);
    }
    temp_r2_2 = &p->Padding8[4];
    *temp_r2_2 |= 8;
    SetPlayerCallback(p, Player_800FA1C);
    Player_800FA1C(p);
}

void Player_800FA1C(Player *p) {
    s16 temp_r1_2;
    u16 temp_r1;
    u32 var_r2;
    u8 *temp_r2;
    void *temp_r4;

    temp_r4 = p->Padding8[0];
    sub_8010E4C(p);
    sub_8010ED0(p);
    sub_800FABC(p);
    if (temp_r4->unk0 == 0) {
        temp_r2 = &p->Padding8[4];
        *temp_r2 &= 0xF7;
        SetPlayerCallback(p, Player_80108FC);
    } else {
        var_r2 = 1;
        temp_r1 = p->keyInput;
        if (0x20 & temp_r1) {
            if (temp_r4->unk2 == 0) {
                goto block_7;
            }
        } else if ((0x10 & temp_r1) && (temp_r4->unk2 == 1)) {
block_7:
            temp_r4->unk2 = (u8) (temp_r4->unk2 + 1);
        }
        if (temp_r4->unk2 == 2) {
            var_r2 = 0x30000U >> 0x10;
            temp_r4->unk2 = 0U;
        }
        temp_r1_2 = (u16) temp_r4->unk0 - (s16) var_r2;
        temp_r4->unk0 = temp_r1_2;
        if ((s32) (temp_r1_2 << 0x10) <= 0) {
            temp_r4->unk0 = 0;
        }
    }
    sub_8010430(p);
}

void sub_800FABC(Player *arg0) {
    s16 temp_r0_2;
    s16 temp_r0_3;
    s16 var_r2;
    s32 temp_r0;
    s32 temp_r4;
    s32 var_r0;
    u16 var_r3;

    if (gStageData.gameMode == 5) {
        if ((gStageData.playerIndex == 0) && (0xF & arg0->unk2A)) {
            arg0->qWorldX += 0x1000;
            return;
        }
        if ((gStageData.playerIndex != 1) || (0xF & arg0->unk2A)) {
            goto block_6;
        }
    } else {
block_6:
        temp_r4 = arg0->qWorldX;
        var_r3 = (temp_r4 >> 8) - gCamera.x;
        if (gStageData.gameMode == 5) {
            var_r2 = (s16) var_r3;
            if ((s32) var_r2 < 0) {
                var_r2 = 0 - var_r2;
            }
            if ((s32) var_r2 > 0x1E0) {
                temp_r0 = temp_r4 + 0xFFF5B000;
                arg0->qWorldX = temp_r0;
                var_r3 = (temp_r0 >> 8) - gCamera.x;
            }
        }
        temp_r0_2 = (s16) var_r3;
        if ((s32) temp_r0_2 <= 7) {
            var_r0 = gCamera.x + 8;
            goto block_15;
        }
        if ((s32) temp_r0_2 > 0xE8) {
            var_r0 = gCamera.x + 0xE8;
block_15:
            arg0->qWorldX = var_r0 << 8;
        }
        temp_r0_3 = ((s32) arg0->qWorldY >> 8) - gCamera.y;
        if ((s32) temp_r0_3 <= 7) {
            arg0->qWorldY = (gCamera.y + 8) << 8;
            return;
        }
        if ((s32) temp_r0_3 > 0xA0) {
            arg0->qWorldY = (gCamera.y + 0xA0) << 8;
        }
    }
}

void sub_800FB94(Player *arg0, u8 arg1) {
    s16 temp_r0;
    s16 temp_r0_2;
    s32 var_r0;
    s32 var_r0_2;

    if ((gStageData.gameMode != 5) || (((gStageData.playerIndex != 0) || !(0xF & arg0->unk2A)) && ((gStageData.playerIndex != 1) || (0xF & arg0->unk2A)))) {
        if (arg1 == 0) {
            temp_r0 = ((s32) arg0->qWorldX >> 8) - gCamera.x;
            if ((s32) temp_r0 <= 7) {
                var_r0 = gCamera.x + 8;
                goto block_10;
            }
            if ((s32) temp_r0 > 0xF0) {
                var_r0 = gCamera.x + 0xF0;
block_10:
                arg0->qWorldX = var_r0 << 8;
            }
        } else {
            temp_r0_2 = ((s32) arg0->qWorldY >> 8) - gCamera.y;
            if ((s32) temp_r0_2 <= 7) {
                var_r0_2 = gCamera.y + 8;
                goto block_15;
            }
            if ((s32) temp_r0_2 > 0xA0) {
                var_r0_2 = gCamera.y + 0xA0;
block_15:
                arg0->qWorldY = var_r0_2 << 8;
            }
        }
    }
}

void sub_800FC30(Player *arg0) {
    s16 temp_r0_3;
    s16 temp_r1_3;
    s16 temp_r1_5;
    s16 var_r0_3;
    s16 var_r0_4;
    s16 var_r0_7;
    s16 var_r0_8;
    s16 var_r0_9;
    s16 var_r1;
    s32 temp_r1;
    u16 temp_r0;
    u16 temp_r0_2;
    u16 temp_r1_2;
    u16 temp_r1_4;
    u16 var_r0;
    u16 var_r0_2;
    u16 var_r0_5;
    u16 var_r0_6;
    u32 temp_r3;

    temp_r1 = 0xF & arg0->unk2A;
    temp_r3 = (u32) ((0 - temp_r1) | temp_r1) >> 0x1F;
    temp_r1_2 = arg0->keyInput;
    if (0x40 & temp_r1_2) {
        var_r0 = arg0->qSpeedAirY - 0x40;
        goto block_13;
    }
    if (0x80 & temp_r1_2) {
        var_r0 = arg0->qSpeedAirY + 0x40;
        goto block_13;
    }
    temp_r0 = arg0->qSpeedAirY;
    temp_r1_3 = (s16) arg0->qSpeedAirY;
    if (temp_r1_3 != 0) {
        if ((s32) temp_r1_3 < 0) {
            var_r0_2 = temp_r0 + 0x10;
        } else {
            var_r0_2 = temp_r0 - 0x10;
        }
        arg0->qSpeedAirY = var_r0_2;
    }
    var_r0_3 = (s16) arg0->qSpeedAirY;
    if ((s32) var_r0_3 < 0) {
        var_r0_3 = 0 - var_r0_3;
    }
    if ((s32) var_r0_3 <= 0x3F) {
        var_r0 = 0;
block_13:
        arg0->qSpeedAirY = var_r0;
    }
    var_r0_4 = (s16) arg0->qSpeedAirY;
    if ((s32) var_r0_4 < 0) {
        var_r0_4 = 0 - var_r0_4;
    }
    if ((s32) var_r0_4 > 0x200) {
        if ((s32) (s16) arg0->qSpeedAirY < 0) {
            arg0->qSpeedAirY = 0xFE00;
        } else {
            arg0->qSpeedAirY = 0x200;
        }
    }
    temp_r1_4 = arg0->keyInput;
    if (0x20 & temp_r1_4) {
        var_r0_5 = arg0->qSpeedAirX - 0x40;
        goto block_33;
    }
    if (0x10 & temp_r1_4) {
        var_r0_5 = arg0->qSpeedAirX + 0x40;
        goto block_33;
    }
    temp_r0_2 = arg0->qSpeedAirX;
    temp_r1_5 = (s16) arg0->qSpeedAirX;
    if (temp_r1_5 != 0) {
        if ((s32) temp_r1_5 < 0) {
            var_r0_6 = temp_r0_2 + 0x10;
        } else {
            var_r0_6 = temp_r0_2 - 0x10;
        }
        arg0->qSpeedAirX = var_r0_6;
    }
    var_r0_7 = (s16) arg0->qSpeedAirX;
    if ((s32) var_r0_7 < 0) {
        var_r0_7 = 0 - var_r0_7;
    }
    if ((s32) var_r0_7 <= 0x3F) {
        var_r0_5 = 0;
block_33:
        arg0->qSpeedAirX = var_r0_5;
    }
    var_r0_8 = (s16) arg0->qSpeedAirX;
    if ((s32) var_r0_8 < 0) {
        var_r0_8 = 0 - var_r0_8;
    }
    if ((s32) var_r0_8 > 0x200) {
        if ((s32) (s16) arg0->qSpeedAirX < 0) {
            arg0->qSpeedAirX = 0xFE00;
        } else {
            arg0->qSpeedAirX = 0x200;
        }
    }
    temp_r0_3 = (s16) arg0->qSpeedAirY;
    if ((s32) temp_r0_3 < 0) {
        var_r0_9 = 0x12D;
        if (temp_r3 == 0) {
            var_r1 = 0x10F;
            goto block_48;
        }
    } else if ((s32) temp_r0_3 > 0) {
        var_r0_9 = 0x12E;
        if (temp_r3 == 0) {
            var_r1 = 0x110;
            goto block_48;
        }
    } else {
        var_r0_9 = 0x12C;
        if (temp_r3 == 0) {
            var_r1 = 0x10E;
block_48:
            var_r0_9 = var_r1;
        }
    }
    arg0->charFlags.anim0 = var_r0_9;
}

void sub_800FD60(Player *arg0) {
    s16 temp_r2_2;
    s16 temp_r2_4;
    s16 var_r0_3;
    s16 var_r0_4;
    s16 var_r0_7;
    s16 var_r0_8;
    u16 temp_r0;
    u16 temp_r0_2;
    u16 temp_r2;
    u16 temp_r2_3;
    u16 var_r0;
    u16 var_r0_2;
    u16 var_r0_5;
    u16 var_r0_6;

    temp_r2 = arg0->keyInput;
    if (0x40 & temp_r2) {
        var_r0 = arg0->qSpeedAirY - 0x40;
        goto block_13;
    }
    if (0x80 & temp_r2) {
        var_r0 = arg0->qSpeedAirY + 0x40;
        goto block_13;
    }
    temp_r0 = arg0->qSpeedAirY;
    temp_r2_2 = (s16) arg0->qSpeedAirY;
    if (temp_r2_2 != 0) {
        if ((s32) temp_r2_2 < 0) {
            var_r0_2 = temp_r0 + 0x10;
        } else {
            var_r0_2 = temp_r0 - 0x10;
        }
        arg0->qSpeedAirY = var_r0_2;
    }
    var_r0_3 = (s16) arg0->qSpeedAirY;
    if ((s32) var_r0_3 < 0) {
        var_r0_3 = 0 - var_r0_3;
    }
    if ((s32) var_r0_3 <= 0x3F) {
        var_r0 = 0;
block_13:
        arg0->qSpeedAirY = var_r0;
    }
    var_r0_4 = (s16) arg0->qSpeedAirY;
    if ((s32) var_r0_4 < 0) {
        var_r0_4 = 0 - var_r0_4;
    }
    if ((s32) var_r0_4 > 0x180) {
        if ((s32) (s16) arg0->qSpeedAirY < 0) {
            arg0->qSpeedAirY = 0xFE80;
        } else {
            arg0->qSpeedAirY = 0x180;
        }
    }
    temp_r2_3 = arg0->keyInput;
    if (0x20 & temp_r2_3) {
        var_r0_5 = arg0->qSpeedAirX - 0x40;
        goto block_33;
    }
    if (0x10 & temp_r2_3) {
        var_r0_5 = arg0->qSpeedAirX + 0x40;
        goto block_33;
    }
    temp_r0_2 = arg0->qSpeedAirX;
    temp_r2_4 = (s16) arg0->qSpeedAirX;
    if (temp_r2_4 != 0) {
        if ((s32) temp_r2_4 < 0) {
            var_r0_6 = temp_r0_2 + 0x10;
        } else {
            var_r0_6 = temp_r0_2 - 0x10;
        }
        arg0->qSpeedAirX = var_r0_6;
    }
    var_r0_7 = (s16) arg0->qSpeedAirX;
    if ((s32) var_r0_7 < 0) {
        var_r0_7 = 0 - var_r0_7;
    }
    if ((s32) var_r0_7 <= 0x3F) {
        var_r0_5 = 0;
block_33:
        arg0->qSpeedAirX = var_r0_5;
    }
    var_r0_8 = (s16) arg0->qSpeedAirX;
    if ((s32) var_r0_8 < 0) {
        var_r0_8 = 0 - var_r0_8;
    }
    if ((s32) var_r0_8 > 0x180) {
        if ((s32) (s16) arg0->qSpeedAirX < 0) {
            arg0->qSpeedAirX = 0xFE80;
            return;
        }
        arg0->qSpeedAirX = 0x180;
    }
}

void Player_800FE44(Player *arg0) {
    u8 temp_r4;
    void (*var_r1)(Player *);
    void *temp_r2;

    temp_r4 = 0xF & arg0->unk2A;
    if (temp_r4 == 0) {
        temp_r2 = arg0->unk148;
        if (gStageData.gameMode != 5) {
            if ((gStageData.buttonConfig.trick & arg0->keyInput2) || (temp_r2->unkB != 0)) {
                temp_r2->unkB = temp_r4;
                var_r1 = sub_801098C;
                goto block_9;
            }
        } else {
            temp_r2->unkB = temp_r4;
        }
    } else if (gStageData.gameMode != 5) {
        if (gPlayers->charFlags.anim0 == 0x122) {
            var_r1 = sub_80109FC;
block_9:
            SetPlayerCallback(arg0, var_r1);
        }
    } else if ((gStageData.buttonConfig.jump | gStageData.buttonConfig.attack | gStageData.buttonConfig.trick) & arg0->keyInput2) {
        SetPlayerCallback(arg0, sub_8010DC4);
    }
}

void Player_800FED8(Player *arg0) {
    s8 var_r3;
    u16 temp_r2;

    var_r3 = 0;
    temp_r2 = arg0->keyInput;
    if (!(gStageData.buttonConfig.trick & temp_r2) && ((gStageData.buttonConfig.jump | gStageData.buttonConfig.attack) & arg0->keyInput2)) {
        if (0x40 & temp_r2) {
            var_r3 = 6;
            if (0x20 & temp_r2) {
                var_r3 = 5;
            } else if (0x10 & temp_r2) {
                var_r3 = 7;
            }
        } else if (0x80 & temp_r2) {
            var_r3 = 2;
            if (0x20 & temp_r2) {
                var_r3 = 3;
            } else if (0x10 & temp_r2) {
                var_r3 = 1;
            }
        } else if (0x20 & temp_r2) {
            var_r3 = 4;
        }
        arg0->unk148->unk4 = var_r3;
        SetPlayerCallback(arg0, sub_800F378);
    }
}

void sub_800FF68(Player *arg0) {
    Sprite *temp_r0_2;
    u16 temp_r0;
    void *temp_r6;

    temp_r6 = arg0->unk148;
    temp_r0 = TaskCreate(sub_8010008, 0x3CU, 0x2100U, 0U, sub_8010F34)->data;
    temp_r0->unk10 = arg0;
    temp_r0->unk8 = 1;
    temp_r0->unkA = 0;
    temp_r0->unk0 = (s32) arg0->qWorldX;
    temp_r0->unk4 = (s32) arg0->qWorldY;
    temp_r0_2 = temp_r0 + 0x14;
    temp_r0->unk14 = (s32) temp_r6->unk4;
    temp_r0_2->anim = 0x522;
    temp_r0_2->variant = 0;
    temp_r0_2->oamFlags = 0x2C0;
    temp_r0_2->animCursor = 0;
    temp_r0_2->qAnimDelay = 0;
    temp_r0_2->prevVariant = 0xFF;
    temp_r0_2->animSpeed = 0x10;
    temp_r0_2->palId = 0;
    temp_r0_2->hitboxes[0].index = -1;
    temp_r0_2->frameFlags = 0x1000;
    temp_r0_2->x = ((s32) temp_r0->unk0 >> 8) - gCamera.x;
    temp_r0_2->y = ((s32) temp_r0->unk4 >> 8) - gCamera.y;
    UpdateSpriteAnimation(temp_r0_2);
}

void sub_8010008(void) {
    Sprite *temp_r4;
    s16 *temp_r3;
    u16 temp_r0;
    u16 temp_r1;
    u16 var_r0;
    void *temp_r3_2;

    temp_r3 = gPlayers->Padding8[0];
    temp_r1 = gCurTask->data;
    temp_r4 = temp_r1 + 0x14;
    temp_r0 = temp_r1->unkA;
    switch (temp_r0) {                              /* irregular */
    case 0x0:
        if ((s32) *temp_r3 > 0x45) {
            temp_r4->anim = 0x522;
            temp_r4->variant = 1;
            var_r0 = 0xA;
block_23:
            temp_r1->unkA = var_r0;
        }
        break;
    case 0xA:
        if ((s32) *temp_r3 > 0x77) {
            temp_r4->anim = 0x51B;
            temp_r4->variant = 0;
            var_r0 = 0xB;
            goto block_23;
        }
        break;
    case 0xB:
        if ((s32) *temp_r3 > 0xB3) {
            temp_r4->anim = 0x51B;
            temp_r4->variant = 1;
            var_r0 = 0x14;
            goto block_23;
        }
        break;
    case 0x14:
        if ((s32) *temp_r3 > 0xEF) {
            temp_r4->anim = 0x51B;
            temp_r4->variant = 2;
            var_r0 = 0x15;
            goto block_23;
        }
        break;
    case 0x15:
        if ((s32) *temp_r3 > 0x12B) {
            temp_r4->anim = 0x51B;
            temp_r4->variant = 3;
            var_r0 = 0x64;
            goto block_23;
        }
        break;
    case 0x64:
        if ((s32) *temp_r3 > 0x167) {
            temp_r4->anim = 0x51B;
            temp_r4->variant = 4;
            var_r0 = 0xC8;
            goto block_23;
        }
        break;
    }
    temp_r3_2 = temp_r1->unk10;
    temp_r1->unk0 = (s32) temp_r3_2->unk10;
    temp_r1->unk4 = (s32) temp_r3_2->unk14;
    if (gStageData.gameMode != 5) {
        if (gPlayers->charFlags.anim0 != 0x122) {
            goto block_32;
        }
        goto block_33;
    }
    if (gStageData.playerIndex == 0) {
        if (temp_r3_2->unk26 != 1) {
            goto block_32;
        }
        goto block_33;
    }
    if (!((gStageData.buttonConfig.jump | gStageData.buttonConfig.attack | gStageData.buttonConfig.trick) & temp_r3_2->unk1E) || (0xA & temp_r3_2->unk14C)) {
block_32:
        TaskDestroy(gCurTask);
        return;
    }
block_33:
    temp_r4->x = ((s32) temp_r1->unk0 >> 8) - gCamera.x;
    temp_r4->y = ((s32) temp_r1->unk4 >> 8) - gCamera.y;
    UpdateSpriteAnimation(temp_r4);
    DisplaySprite(temp_r4);
}

s32 sub_8010184(s32 arg0, s32 arg1, s32 arg2, u16 arg3, void *arg4) {
    s32 temp_r0_3;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 temp_r2_3;
    s8 temp_r3;
    s8 temp_r4;
    s8 temp_r4_2;
    s8 temp_r5_2;
    void *temp_r0;
    void *temp_r0_2;
    void *temp_r3_2;
    void *temp_r5;

    temp_r0 = arg4->unkE0;
    temp_r0_2 = temp_r0 + 0xC;
    if (!(arg4->unk4 & 0x100)) {
        temp_r0_3 = arg3 << 0x10;
        temp_r2 = temp_r0_3 >> 0xD;
        if ((*(arg0 + 0x20 + temp_r2) != -1) && (temp_r0_2->unk20 != -1)) {
            temp_r5 = arg0 + temp_r2;
            temp_r3 = temp_r5->unk24;
            temp_r2_2 = arg1 + temp_r3;
            temp_r4 = temp_r0->unk30;
            temp_r1 = ((s32) arg4->unk10 >> 8) + gCamera.unk6A + temp_r4;
            if (temp_r2_2 <= temp_r1) {
                if ((s32) (temp_r2_2 + ((s8) temp_r5->unk26 - temp_r3)) < temp_r1) {
                    if (temp_r2_2 >= temp_r1) {
                        goto block_6;
                    }
                    goto block_12;
                }
                goto block_7;
            }
block_6:
            if ((s32) (temp_r1 + ((s8) temp_r0->unk32 - temp_r4)) >= temp_r2_2) {
block_7:
                temp_r3_2 = arg0 + (temp_r0_3 >> 0xD);
                temp_r4_2 = temp_r3_2->unk25;
                temp_r2_3 = arg2 + temp_r4_2;
                temp_r5_2 = temp_r0_2->unk25;
                temp_r1_2 = ((s32) arg4->unk14 >> 8) + temp_r5_2;
                if (temp_r2_3 <= temp_r1_2) {
                    if ((s32) (temp_r2_3 + ((s8) temp_r3_2->unk27 - temp_r4_2)) < temp_r1_2) {
                        if (temp_r2_3 >= temp_r1_2) {
                            goto block_10;
                        }
                        goto block_12;
                    }
                    goto block_11;
                }
block_10:
                if ((s32) (temp_r1_2 + ((s8) temp_r0_2->unk27 - temp_r5_2)) >= temp_r2_3) {
block_11:
                    return 1;
                }
                goto block_12;
            }
            goto block_12;
        }
    }
block_12:
    return 0;
}

s32 sub_8010288(s32 arg0, s32 arg1, s32 arg2, u16 arg3, void *arg4) {
    s32 temp_r0_3;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 temp_r2_3;
    s8 temp_r3;
    s8 temp_r4;
    s8 temp_r4_2;
    s8 temp_r5_2;
    void *temp_r0;
    void *temp_r0_2;
    void *temp_r3_2;
    void *temp_r5;

    temp_r0 = arg4->unkE0;
    temp_r0_2 = temp_r0 + 0xC;
    if (!(arg4->unk4 & 0x100)) {
        temp_r0_3 = arg3 << 0x10;
        temp_r2 = temp_r0_3 >> 0xD;
        if ((*(arg0 + 0x20 + temp_r2) != -1) && (temp_r0_2->unk28 != -1)) {
            temp_r5 = arg0 + temp_r2;
            temp_r3 = temp_r5->unk24;
            temp_r2_2 = arg1 + temp_r3;
            temp_r4 = temp_r0->unk38;
            temp_r1 = ((s32) arg4->unk10 >> 8) + gCamera.unk6A + temp_r4;
            if (temp_r2_2 <= temp_r1) {
                if ((s32) (temp_r2_2 + ((s8) temp_r5->unk26 - temp_r3)) < temp_r1) {
                    if (temp_r2_2 >= temp_r1) {
                        goto block_6;
                    }
                    goto block_12;
                }
                goto block_7;
            }
block_6:
            if ((s32) (temp_r1 + ((s8) temp_r0->unk3A - temp_r4)) >= temp_r2_2) {
block_7:
                temp_r3_2 = arg0 + (temp_r0_3 >> 0xD);
                temp_r4_2 = temp_r3_2->unk25;
                temp_r2_3 = arg2 + temp_r4_2;
                temp_r5_2 = temp_r0_2->unk2D;
                temp_r1_2 = ((s32) arg4->unk14 >> 8) + temp_r5_2;
                if (temp_r2_3 <= temp_r1_2) {
                    if ((s32) (temp_r2_3 + ((s8) temp_r3_2->unk27 - temp_r4_2)) < temp_r1_2) {
                        if (temp_r2_3 >= temp_r1_2) {
                            goto block_10;
                        }
                        goto block_12;
                    }
                    goto block_11;
                }
block_10:
                if ((s32) (temp_r1_2 + ((s8) temp_r0_2->unk2F - temp_r5_2)) >= temp_r2_3) {
block_11:
                    return 1;
                }
                goto block_12;
            }
            goto block_12;
        }
    }
block_12:
    return 0;
}

void sub_801038C(Player *arg0, u8 arg1) {
    u8 temp_r5;
    void (*var_r1)(Player *);

    temp_r5 = arg1;
    if ((s32) arg0->framesInvulnerable <= 0) {
        arg0->unk48 = 1;
        if (!(0xF & arg0->unk2A)) {
            if (temp_r5 == 1) {
                if (8 & arg0->Padding8[4]) {
                    arg0->unk148->unk8 = 0;
                    return;
                }
                arg0->framesInvulnerable = 0x78;
                var_r1 = sub_8010BBC;
                goto block_11;
            }
            var_r1 = sub_8010C04;
            goto block_11;
        }
        if (temp_r5 == 1) {
            if (8 & arg0->Padding8[4]) {
                arg0->unk148->unk0 = 0;
                return;
            }
            arg0->framesInvulnerable = 0x78;
            var_r1 = sub_8010D28;
block_11:
            SetPlayerCallback(arg0, var_r1);
            return;
        }
        SetPlayerCallback(arg0, sub_800F9C0);
    }
}

void sub_8010430(Player *arg0) {
    Sprite *temp_r4;
    s16 temp_r0_2;
    s32 var_r8;
    u16 temp_r0;
    u32 var_r0_2;
    u8 var_r0;
    void *temp_r5;

    temp_r5 = arg0->unk148;
    temp_r4 = temp_r5 + 0xC;
    var_r8 = 0;
    if ((gStageData.gameMode == 5) && (gStageData.playerIndex == 0)) {
        temp_r0 = arg0->charFlags.state1;
        switch ((u32) temp_r0) {                    /* switch 3; irregular */
        case 0:                                     /* switch 3 */
            temp_r4->anim = 0x4F8;
            temp_r4->variant = 0;
            break;
        case 2:                                     /* switch 3 */
            temp_r4->anim = 0x4F8;
            temp_r4->variant = 9;
            break;
        case 3:                                     /* switch 3 */
            temp_r4->anim = 0x4F8;
            temp_r4->variant = 0xA;
            break;
        case 1:                                     /* switch 3 */
            temp_r4->anim = 0x4F8;
            temp_r4->variant = 1;
            break;
        case 4:                                     /* switch 3 */
            temp_r4->anim = 0x4F8;
            temp_r4->variant = 0xB;
            break;
        case 5:                                     /* switch 3 */
            temp_r4->anim = 0x4F8;
            temp_r4->variant = 0xC;
            break;
        }
    } else if ((s16) arg0->charFlags.anim0 != temp_r5->unkA) {
        temp_r0_2 = arg0->charFlags.anim0 + 0xFFFFFED4;
        switch (temp_r0_2) {                        /* switch 2 */
        case 0:                                     /* switch 2 */
            temp_r4->anim = 0x4F8;
            temp_r4->variant = 0;
            break;
        case 1:                                     /* switch 2 */
            temp_r4->anim = 0x4F8;
            var_r0 = 9;
block_22:
            temp_r4->variant = var_r0;
            break;
        case 2:                                     /* switch 2 */
            temp_r4->anim = 0x4F8;
            var_r0 = 0xA;
            goto block_22;
        case 3:                                     /* switch 2 */
            temp_r4->anim = 0x4F8;
            var_r0 = 1;
            goto block_22;
        case 4:                                     /* switch 2 */
            temp_r4->anim = 0x4F8;
            var_r0 = 0xB;
            goto block_22;
        case 5:                                     /* switch 2 */
            temp_r4->anim = 0x4F8;
            var_r0 = 2;
            goto block_22;
        case 6:                                     /* switch 2 */
            temp_r4->anim = 0x4F8;
            var_r0 = 0xC;
            goto block_22;
        case 7:                                     /* switch 2 */
            temp_r4->anim = 0x4F8;
            var_r0 = 6;
            goto block_22;
        }
        temp_r5->unkA = (s16) arg0->charFlags.anim0;
    }
    temp_r4->x = ((s32) arg0->qWorldX >> 8) - gCamera.x;
    temp_r4->y = ((s32) arg0->qWorldY >> 8) - gCamera.y;
    if (gStageData.unk4 == 1) {
        if (gStageData.unk4 & gStageData.unkBC) {
            var_r0_2 = temp_r4->frameFlags | 0x80;
        } else {
            var_r0_2 = temp_r4->frameFlags & ~0x80;
        }
        temp_r4->frameFlags = var_r0_2;
        if (2 & gStageData.unkBC) {
            var_r8 = 1;
        }
    } else {
        temp_r4->frameFlags &= ~0x80;
    }
    UpdateSpriteAnimation(temp_r4);
    if (var_r8 == 0) {
        DisplaySprite(temp_r4);
    }
}

void sub_80105F0(Player *arg0) {
    s16 *temp_r1;
    s16 *var_r1_2;
    s16 temp_r4;
    s16 var_r0;
    s16 var_r1;
    u32 temp_r0;

    temp_r4 = 0xF & arg0->unk2A;
    if (temp_r4 == 0) {
        Player_800D880(arg0);
        temp_r0 = (arg0->moveState & ~0x21) | 0x100;
        arg0->moveState = temp_r0;
        arg0->charFlags.anim0 = 0x67;
        arg0->qSpeedAirX = temp_r4;
        var_r1 = 0xFFFFFB20;
        if (temp_r0 & 0x80) {
            var_r1 = 0xFFFFFD60;
        }
        arg0->qSpeedAirY = var_r1;
        temp_r1 = &arg0->framesInvulnerable;
        *temp_r1 = 0x78;
        *(temp_r1 - 2) = 1;
        Player_PlaySong(arg0, 0x77U);
        Player_PlaySong(arg0, 0x267U);
        Player_BoostModeDisengage(arg0);
        SetPlayerCallback(arg0, sub_80106E0);
        sub_80106E0(arg0);
    } else {
        arg0->moveState |= 0x100;
        if ((gStageData.levelTimer == 0x8C9F) && (gStageData.unk2 == 0)) {
            var_r1_2 = &arg0->framesInvulnerable;
            var_r0 = 0x258;
        } else {
            var_r1_2 = &arg0->framesInvulnerable;
            var_r0 = 0x78;
        }
        *var_r1_2 = var_r0;
        arg0->Padding5[0] = 1;
        arg0->qSpeedAirX = 0;
        arg0->qSpeedAirY = 0;
        SetPlayerCallback(arg0, sub_80107B4);
        sub_80107B4(arg0);
    }
    gStageData.rings = 0;
}

void sub_80106E0(Player *p) {
    s32 var_r0;
    s32 var_r1;
    s32 var_r2;
    u8 temp_r0;
    void *temp_r5;

    temp_r5 = p->Padding8[0];
    if (gCamera.unk6A != 0) {
        var_r0 = p->qWorldX + (gCamera.unk6A << 8);
        var_r1 = 0x480;
    } else {
        if (gCamera.x == 0) {
            p->qWorldX += 0xFFFFFC80;
        }
        var_r1 = gCamera.unk6A << 8;
        var_r0 = p->qWorldX;
    }
    p->qWorldX = var_r0 + var_r1;
    var_r2 = 0x380;
    if ((0x1C & p->unk2B) != 0xC) {
        if (gStageData.unk4 != 3) {
            var_r2 = 0;
        }
        p->qWorldX += p->qSpeedAirX + var_r2;
        p->qWorldY += p->qSpeedAirY;
    }
    sub_8016E50(p);
    sub_800FB94(p, 0U);
    if ((s32) p->framesInvulnerable <= 0) {
        temp_r0 = gStageData.lives;
        if (temp_r0 == 0) {
            sub_8002414();
            SetPlayerCallback(p, sub_800DF9C);
            temp_r5->unk7 = 1;
            return;
        }
        gStageData.lives = temp_r0 - 1;
        sub_8001D58(&sub_8002388, 0);
    }
}

void sub_80107B4(Player *p) {
    s32 temp_r3;
    s32 temp_r4;
    s32 var_r0;

    temp_r4 = p->qWorldX;
    temp_r3 = temp_r4 + 0xFFFFFF00;
    p->qWorldX = temp_r3;
    if (gCamera.unk6A != 0) {
        var_r0 = temp_r3 + (gCamera.unk6A << 8) + 0x480;
    } else {
        if (gCamera.x == 0) {
            p->qWorldX = temp_r4 + 0xFFFFFB80;
        }
        var_r0 = p->qWorldX + (gCamera.unk6A << 8);
    }
    p->qWorldX = var_r0;
    sub_8010430(p);
}

void Player_801080C(Player *p) {
    void *temp_r1;

    sub_8010E04();
    sub_8010E94(p);
    sub_800FABC(p);
    temp_r1 = p->Padding8[0];
    if ((s16) temp_r1->unkC != 0) {
        temp_r1->unkC = (u16) (temp_r1->unkC - 1);
    } else {
        Player_BoostModeEngage(p);
    }
    if (gStageData.unk4 == 3) {
        gStageData.timer = 8;
        p->moveState &= 0xF7FFFFFF;
        SetPlayerCallback(p, sub_800F2B0);
    }
}

void Player_801086C(Player *p) {
    void *temp_r1;

    sub_8010E04();
    sub_800FC30(p);
    sub_8010E94(p);
    sub_800FABC(p);
    temp_r1 = p->Padding8[0];
    if ((s16) temp_r1->unkC != 0) {
        temp_r1->unkC = (u16) (temp_r1->unkC - 1);
    } else {
        Player_BoostModeEngage(p);
    }
    Player_800FE44(p);
    Player_800FED8(p);
}

void Player_80108B8(Player *p) {
    sub_8010E04();
    sub_8010E94(p);
    sub_800FABC(p);
    sub_8010430(p);
    if (gStageData.unk4 == 3) {
        p->moveState &= 0xF7FFFFFF;
        SetPlayerCallback(p, Player_80108FC);
    }
}

void Player_80108FC(Player *p) {
    u8 *temp_r0;

    Player_800D880(p);
    p->charFlags.anim0 = 0x12C;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    temp_r0 = &p->unk26;
    temp_r0->unk0 = 0;
    temp_r0->unk22 = 0;
    if ((gStageData.gameMode == 5) && (gStageData.playerIndex == 0)) {
        SetPlayerCallback(p, Player_8010F88);
        Player_8010F88(p);
        return;
    }
    SetPlayerCallback(p, sub_8010960);
    sub_8010960(p);
}

void sub_8010960(Player *p) {
    sub_8010E04();
    sub_800FC30(p);
    sub_8010E94(p);
    sub_800FABC(p);
    Player_800FE44(p);
    sub_8010430(p);
}

void sub_801098C(Player *p) {
    void *temp_r2;

    temp_r2 = p->Padding8[0];
    p->charFlags.anim0 = 0x122;
    temp_r2->unk0 = 0;
    temp_r2->unk2 = 0;
    SetPlayerCallback(p, sub_800F4A4);
    sub_800F4A4(p);
}

void sub_80109C0(Player *p) {
    p->charFlags.anim0 = 0x123;
    p->qSpeedAirX = -0x200;
    p->qSpeedAirY = 0;
    p->Padding8[0]->unk5 = 0x14;
    SetPlayerCallback(p, sub_800F55C);
    sub_800F55C(p);
}

void sub_80109FC(Player *p) {
    u8 *temp_r2;

    p->Padding8[0]->unk8 = 0;
    temp_r2 = &p->Padding8[4];
    *temp_r2 |= 4;
    sub_800FF68(p);
    SetPlayerCallback(p, sub_8010A3C);
    sub_8010A3C(p);
}

void sub_8010A3C(Player *p) {
    s16 temp_r1;
    u8 *temp_r2;

    p->qWorldX = gPlayers->qWorldX + 0x3000;
    p->qWorldY = gPlayers->qWorldY;
    temp_r1 = gPlayers->charFlags.anim0;
    switch (temp_r1) {                              /* irregular */
    case 0x122:
        break;
    case 0x123:
        SetPlayerCallback(p, Player_8010AA0);
        break;
    default:
        temp_r2 = &p->Padding8[4];
        *temp_r2 &= 0xFB;
        SetPlayerCallback(p, Player_80108FC);
        break;
    }
    sub_8010430(p);
}

void Player_8010AA0(Player *p) {
    p->charFlags.anim0 = 0x130;
    p->Padding8[0]->unk8 = 1;
    p->qSpeedAirX = 0x800;
    p->qSpeedAirY = 0;
    m4aSongNumStart(0x21FU);
    SetPlayerCallback(p, sub_8010AE4);
    sub_8010AE4(p);
}

void sub_8010AE4(Player *p) {
    s16 temp_r1;
    u8 *temp_r2;
    void *temp_r5;

    temp_r5 = p->Padding8[0];
    sub_8010E04(p);
    temp_r1 = p->qSpeedAirX;
    if (temp_r1 != 0) {
        p->qSpeedAirX = (u16) p->qSpeedAirX - 0x40;
    } else {
        temp_r5->unk8 = (s8) temp_r1;
        temp_r2 = &p->Padding8[4];
        *temp_r2 &= 0xFB;
        SetPlayerCallback(p, Player_80108FC);
    }
    sub_8010E94(p);
    sub_800FABC(p);
    sub_8010430(p);
}

void sub_8010B3C(Player *p) {
    u8 *temp_r2;

    p->Padding8[0]->unk8 = 0;
    temp_r2 = &p->Padding8[4];
    *temp_r2 &= 0xFB;
    p->qSpeedAirX = -0x800;
    p->qSpeedAirY = 0;
    SetPlayerCallback(p, sub_8010B7C);
    sub_8010B7C(p);
}

void sub_8010B7C(Player *p) {
    sub_8010E04();
    if (p->qSpeedAirX != 0) {
        p->qSpeedAirX = (u16) p->qSpeedAirX + 0x80;
    } else {
        SetPlayerCallback(p, Player_80108FC);
    }
    sub_8010E94(p);
    sub_800FABC(p);
    sub_8010430(p);
}

void sub_8010BBC(Player *p) {
    u8 *temp_r2;

    p->charFlags.anim0 = 0x111;
    p->qSpeedAirX = -0x400;
    p->qSpeedAirY = 0;
    m4aSongNumStart(0x242U);
    temp_r2 = &p->Padding8[4];
    *temp_r2 |= 2;
    SetPlayerCallback(p, sub_800F5C8);
    sub_800F5C8(p);
}

void sub_8010C04(Player *p) {
    u8 *temp_r2_2;
    void *temp_r2;

    temp_r2 = p->Padding8[0];
    p->charFlags.anim0 = 0x124;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    temp_r2->unk8 = 0xF0;
    temp_r2->unkA = 0;
    m4aSongNumStart(0x242U);
    temp_r2_2 = &p->Padding8[4];
    *temp_r2_2 |= 8;
    SetPlayerCallback(p, sub_800F634);
    sub_800F634(p);
}

void sub_8010C58(Player *arg0) {
    if (!(0xF & arg0->unk2A)) {
        SetPlayerCallback(arg0, sub_8010C98);
        return;
    }
    SetPlayerCallback(arg0, sub_8010B3C);
}

void sub_8010C88(Player *arg0) {
    SetPlayerCallback(arg0, sub_800F6C8);
}

void sub_8010C98(Player *p) {
    u8 *temp_r2;

    temp_r2 = &p->Padding8[4];
    *temp_r2 &= 0xFE;
    p->qSpeedAirX = -0x800;
    p->qSpeedAirY = 0;
    SetPlayerCallback(p, sub_8010CD0);
    sub_8010CD0(p);
}

void sub_8010CD0(Player *p) {
    void *temp_r1;

    sub_8010E04();
    if (p->qSpeedAirX != 0) {
        p->qSpeedAirX = (u16) p->qSpeedAirX + 0x80;
    } else {
        SetPlayerCallback(p, sub_800F2B0);
    }
    sub_8010E94(p);
    sub_800FABC(p);
    temp_r1 = p->Padding8[0];
    if ((s16) temp_r1->unkC != 0) {
        temp_r1->unkC = (u16) (temp_r1->unkC - 1);
        return;
    }
    Player_BoostModeEngage(p);
}

void sub_8010D28(Player *p) {
    u8 *temp_r2;

    p->charFlags.anim0 = 0x131;
    p->qSpeedAirX = -0x400;
    p->qSpeedAirY = 0;
    m4aSongNumStart(0x242U);
    temp_r2 = &p->Padding8[4];
    *temp_r2 |= 2;
    SetPlayerCallback(p, sub_8010D70);
    sub_8010D70(p);
}

void sub_8010D70(Player *p) {
    u8 *temp_r1;
    u8 *temp_r2;

    temp_r1 = &p->unk26;
    *temp_r1 -= 0x10;
    sub_8010E04(p);
    sub_8010E94(p);
    sub_800FABC(p);
    if ((s32) p->framesInvulnerable <= 0x3C) {
        temp_r2 = &p->Padding8[4];
        *temp_r2 &= 0xFD;
        SetPlayerCallback(p, Player_80108FC);
    }
    sub_8010430(p);
}

void sub_8010DC4(Player *p) {
    void *temp_r2;

    temp_r2 = gPlayers->Padding8[0];
    p->unk26 = 1;
    temp_r2->unk0 = 0;
    temp_r2->unk2 = 0;
    sub_800FF68(p);
    SetPlayerCallback(p, sub_800F838);
    sub_800F838(p);
}

void sub_8010E04(Player *arg0) {
    s32 var_r0;
    s32 var_r1;

    if (gCamera.unk6A != 0) {
        var_r0 = arg0->qWorldX + (gCamera.unk6A << 8);
        var_r1 = 0x480;
    } else {
        if (gCamera.x == 0) {
            arg0->qWorldX += 0xFFFFFC80;
        }
        var_r1 = gCamera.unk6A << 8;
        var_r0 = arg0->qWorldX;
    }
    arg0->qWorldX = var_r0 + var_r1;
}

void sub_8010E4C(Player *arg0) {
    s32 var_r0;
    s32 var_r1;

    if (gCamera.unk6A != 0) {
        var_r0 = arg0->qWorldX + (gCamera.unk6A << 8);
        var_r1 = 0x400;
    } else {
        if (gCamera.x == 0) {
            arg0->qWorldX += 0xFFFFFC00;
        }
        var_r1 = gCamera.unk6A << 8;
        var_r0 = arg0->qWorldX;
    }
    arg0->qWorldX = var_r0 + var_r1;
}

void sub_8010E94(Player *arg0) {
    s32 var_r3;

    var_r3 = 0x380;
    if ((0x1C & arg0->unk2B) != 0xC) {
        if (gStageData.unk4 != 3) {
            var_r3 = 0;
        }
        arg0->qWorldX += arg0->qSpeedAirX + var_r3;
        arg0->qWorldY += arg0->qSpeedAirY;
    }
}

void sub_8010ED0(Player *arg0) {
    s32 var_r3;

    var_r3 = 0x400;
    if ((0x1C & arg0->unk2B) != 0xC) {
        if (gStageData.unk4 != 3) {
            var_r3 = 0;
        }
        arg0->qWorldX += arg0->qSpeedAirX + var_r3;
        arg0->qWorldY += arg0->qSpeedAirY;
    }
}

void sub_8010F0C(Player *arg0) {
    void *temp_r1;

    temp_r1 = arg0->unk148;
    if ((s16) temp_r1->unkC != 0) {
        temp_r1->unkC = (u16) (temp_r1->unkC - 1);
        return;
    }
    Player_BoostModeEngage(arg0);
}

void sub_8010F34(Task *arg0) {

}

void sub_8010F38(Player *p) {
    s16 var_r0;
    void *temp_r1;

    sub_8010E04();
    sub_8010E94(p);
    sub_800FABC(p);
    temp_r1 = p->Padding8[0];
    if ((s16) temp_r1->unkC != 0) {
        temp_r1->unkC = (u16) (temp_r1->unkC - 1);
    } else {
        Player_BoostModeEngage(p);
    }
    if (p->charFlags.state1 == 0) {
        var_r0 = 0x111;
    } else {
        var_r0 = -1;
    }
    p->charFlags.anim0 = var_r0;
}

void Player_8010F88(Player *p) {
    void *temp_r5;
    void *temp_r6;

    temp_r5 = gPlayers->Padding8[0];
    temp_r6 = p->Padding8[0];
    sub_8010E04(p);
    sub_8010E94(p);
    sub_800FABC(p);
    if (p->unk26 != 0) {
        temp_r6->unk8 = 0;
        temp_r5->unk0 = 0;
        temp_r5->unk2 = 0;
        sub_800FF68(p);
        SetPlayerCallback(p, sub_800F920);
    }
    sub_8010430(p);
}

void sub_8010FE0(Player *p) {
    u8 temp_r0;
    void *temp_r5;

    temp_r5 = p->Padding8[0];
    sub_8010E04(p);
    sub_8010E94(p);
    sub_800FABC(p);
    temp_r0 = p->unk26;
    if (temp_r0 == 0) {
        temp_r5->unk8 = temp_r0;
        SetPlayerCallback(p, Player_8010F88);
    }
    sub_8010430(p);
}

s32 sub_8011024(u16 arg0, Player *arg1, u8 *arg2, u32 *arg3) {
    u32 sp4;
    s32 temp_r2;
    u16 temp_r4;
    u16 var_r0;
    u32 *var_r5;
    u8 *var_r7;
    u8 temp_r3;
    u8 var_r0_2;

    var_r7 = arg2;
    var_r5 = arg3;
    temp_r4 = arg0;
    if (var_r7 == NULL) {
        var_r7 = &subroutine_arg0;
    }
    if (var_r5 == NULL) {
        var_r5 = &sp4;
    }
    if ((temp_r4 != 2) && ((sub_80114CC(arg1) << 0x10) != 0)) {
        *var_r7 = 0;
        *var_r5 = 0;
        arg1->qSpeedGround = (s16) (u16) arg1->qSpeedAirX;
        if (arg1->moveState & 2) {
            SetPlayerCallback(arg1, Player_800891C);
        } else {
            SetPlayerCallback(arg1, Player_8005380);
        }
        return 0;
    }
    switch (temp_r4) {                              /* irregular */
    case 0:
        var_r0 = 0;
block_20:
        temp_r2 = sub_80110E8(var_r0, arg1, var_r7, var_r5);
        temp_r3 = *var_r7;
        if (1 & temp_r3) {
            var_r0_2 = 0;
            goto block_26;
        }
        if (arg1->moveState & 0x10000) {
            var_r0_2 = -0x80 - temp_r3;
block_26:
            *var_r7 = var_r0_2;
        }
        return temp_r2;
    case 1:
        var_r0 = 1;
        goto block_20;
    case 2:
        var_r0 = 2;
        goto block_20;
    case 3:
        var_r0 = 3;
        goto block_20;
    }
}

s32 sub_80110E8(u16 arg0, Player *arg1, u8 *arg2, u32 *arg3) {
    u8 *sp10;
    u32 *sp14;
    s32 sp18;
    s16 temp_r0;
    s16 temp_r0_2;
    s16 temp_r7;
    s16 temp_r7_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 var_r0;
    s32 var_r1;
    s32 var_r1_2;
    s32 var_r3;
    s32 var_r3_2;
    s32 var_r5;
    s32 var_r8;
    s8 *temp_r1_2;
    s8 *temp_r1_3;
    s8 *temp_r6_3;
    s8 *temp_r6_4;
    u16 temp_r1;
    u32 temp_r2;
    u32 temp_r3;
    u8 *temp_r1_4;
    u8 *temp_r5;
    u8 *temp_r5_2;
    u8 *temp_r5_3;
    u8 *temp_r5_4;
    u8 *temp_r5_5;
    u8 *temp_r6;
    u8 *temp_r6_2;
    u8 var_r2;
    u8 var_r2_2;
    u8 var_r2_3;
    u8 var_r2_4;
    u8 var_r2_5;

    var_r8 = saved_reg_r8;
    var_r5 = saved_reg_r8;
    sp10 = arg2;
    sp14 = arg3;
    temp_r1 = arg0;
    if (arg2 == NULL) {
        sp10 = &subroutine_arg0 + 8;
    }
    if (sp14 == NULL) {
        sp14 = &subroutine_arg0 + 0xC;
    }
    temp_r3 = (u32) (arg1->qWorldX << 8) >> 0x10;
    temp_r2 = (u32) (arg1->qWorldY << 8) >> 0x10;
    switch (temp_r1) {                              /* irregular */
    case 2:
        temp_r0 = (s16) temp_r2;
        temp_r1_2 = &arg1->unk25;
        temp_r7 = (s16) temp_r3;
        temp_r6 = &arg1->unk24;
        temp_r5 = &arg1->unk27;
        var_r2 = *temp_r5;
        if ((s32) arg1->qSpeedAirY <= 0x2FF) {
            var_r2 |= 0x80;
        }
        var_r8 = sub_80517FC(temp_r0 - *temp_r1_2, (temp_r7 - 2) - (s8) *temp_r6, (s32) var_r2, -8, &subroutine_arg0 + 9, sub_805217C);
        var_r1_2 = temp_r7 + 2 + (s8) *temp_r6;
        var_r2_2 = *temp_r5;
        if ((s32) arg1->qSpeedAirY <= 0x2FF) {
            var_r2_2 |= 0x80;
        }
        var_r0 = temp_r0 - *temp_r1_2;
        var_r3 = -8;
block_34:
        var_r5 = sub_80517FC(var_r0, var_r1_2, (s32) var_r2_2, var_r3, M2C_ERROR(/* Unable to find stack arg 0x0 in block */), M2C_ERROR(/* Unable to find stack arg 0x4 in block */));
        break;
    case 3:
        temp_r0_2 = (s16) temp_r2;
        temp_r1_3 = &arg1->unk25;
        temp_r7_2 = (s16) temp_r3;
        temp_r6_2 = &arg1->unk24;
        temp_r5_2 = &arg1->unk27;
        var_r2_3 = *temp_r5_2;
        if ((s32) arg1->qSpeedAirY < 0) {
            var_r2_3 |= 0x80;
        }
        var_r8 = sub_80517FC(*temp_r1_3 + temp_r0_2, (temp_r7_2 - 2) - (s8) *temp_r6_2, (s32) var_r2_3, 8, &subroutine_arg0 + 9, sub_805217C);
        var_r3_2 = temp_r0_2 + *temp_r1_3;
        var_r1_2 = temp_r7_2 + 2 + (s8) *temp_r6_2;
        var_r2_2 = *temp_r5_2;
        if ((s32) arg1->qSpeedAirY < 0) {
            var_r2_2 |= 0x80;
        }
block_33:
        var_r0 = var_r3_2;
        var_r3 = 8;
        goto block_34;
    case 0:
        temp_r0_3 = (s16) temp_r3 - 2;
        temp_r5_3 = &arg1->unk24;
        sp18 = (s32) (s16) temp_r2;
        temp_r6_3 = &arg1->unk25;
        temp_r5_4 = &arg1->unk27;
        var_r2_4 = *temp_r5_4;
        if ((s32) arg1->qSpeedAirY <= 0x2FF) {
            var_r2_4 |= 0x80;
        }
        var_r8 = sub_80517FC(temp_r0_3 - (s8) *temp_r5_3, sp18 - *temp_r6_3, (s32) var_r2_4, -8, &subroutine_arg0 + 9, sub_805203C);
        var_r1_2 = sp18 + *temp_r6_3;
        var_r2_2 = *temp_r5_4;
        if ((s32) arg1->qSpeedAirY <= 0x2FF) {
            var_r2_2 |= 0x80;
        }
        var_r0 = temp_r0_3 - (s8) *temp_r5_3;
        var_r3 = -8;
        goto block_34;
    case 1:
        temp_r0_4 = (s16) temp_r3 + 2;
        temp_r1_4 = &arg1->unk24;
        sp18 = (s32) (s16) temp_r2;
        temp_r6_4 = &arg1->unk25;
        temp_r5_5 = &arg1->unk27;
        var_r2_5 = *temp_r5_5;
        if ((s32) arg1->qSpeedAirY <= 0x2FF) {
            var_r2_5 |= 0x80;
        }
        var_r8 = sub_80517FC(temp_r0_4 + (s8) *temp_r1_4, sp18 - *temp_r6_4, (s32) var_r2_5, 8, &subroutine_arg0 + 9, sub_805203C);
        var_r3_2 = temp_r0_4 + (s8) *temp_r1_4;
        var_r1_2 = sp18 + *temp_r6_4;
        var_r2_2 = *temp_r5_5;
        if ((s32) arg1->qSpeedAirY <= 0x2FF) {
            var_r2_2 |= 0x80;
        }
        goto block_33;
    }
    if (var_r8 < var_r5) {
        var_r1 = var_r8;
        *sp10 = subroutine_arg0.unk9;
        *sp14 = (u32) var_r5;
    } else {
        var_r1 = var_r5;
        *sp10 = subroutine_arg0.unkA;
        *sp14 = (u32) var_r8;
    }
    return var_r1;
}

s16 sub_801139C(Player *arg0) {
    s32 temp_r2_2;
    s8 temp_r0;
    u16 var_r0;
    u32 temp_r0_2;
    u32 temp_r2;
    u32 var_r0_2;
    u8 var_r3;

    temp_r2 = arg0->moveState;
    if (0x20 & temp_r2) {
        arg0->unk29 = 0;
        *((arg0 + 0x29) - 1) = 0;
        return 0;
    }
    var_r3 = arg0->unk26;
    if (temp_r2 & 0x10000) {
        var_r3 = ((s32) (0 - ((var_r3 << 0x18) + 0x40000000)) >> 0x18) - 0x40;
    }
    temp_r0 = (s8) var_r3;
    temp_r2_2 = temp_r0 + 0x20;
    if (temp_r2_2 > 0) {
        if ((s32) temp_r0 <= 0) {
            var_r0_2 = temp_r2_2 << 0x18;
        } else {
            goto block_9;
        }
    } else if ((s32) temp_r0 > 0) {
        var_r0_2 = temp_r2_2 << 0x18;
    } else {
block_9:
        var_r0_2 = (temp_r0 + 0x1F) << 0x18;
    }
    temp_r0_2 = (u32) (var_r0_2 >> 0x18) >> 6;
    switch (temp_r0_2) {                            /* irregular */
    case 0:
        var_r0 = 0;
block_21:
        return sub_80116A4(var_r0);
    case 1:
        var_r0 = 2;
        goto block_21;
    case 2:
        var_r0 = 1;
        goto block_21;
    case 3:
        var_r0 = 3;
        goto block_21;
    }
}

s16 sub_8011434(void *arg0) {
    s32 temp_r2;
    s32 temp_r2_2;
    s8 temp_r0;
    u16 var_r0;
    u32 temp_r0_2;
    u32 var_r0_2;
    u8 var_r3;

    temp_r2 = arg0->unk4;
    if (0x20 & temp_r2) {
        arg0->unk29 = 0;
        *((arg0 + 0x29) - 1) = 0;
        return 0;
    }
    var_r3 = arg0->unk26;
    if (temp_r2 & 0x10000) {
        var_r3 = ((s32) (0 - ((var_r3 << 0x18) + 0x40000000)) >> 0x18) - 0x40;
    }
    temp_r0 = (s8) var_r3;
    temp_r2_2 = temp_r0 + 0x20;
    if (temp_r2_2 > 0) {
        if ((s32) temp_r0 <= 0) {
            var_r0_2 = temp_r2_2 << 0x18;
        } else {
            goto block_9;
        }
    } else if ((s32) temp_r0 > 0) {
        var_r0_2 = temp_r2_2 << 0x18;
    } else {
block_9:
        var_r0_2 = (temp_r0 + 0x1F) << 0x18;
    }
    temp_r0_2 = (u32) (var_r0_2 >> 0x18) >> 6;
    switch (temp_r0_2) {                            /* irregular */
    case 0:
        var_r0 = 0;
block_21:
        return sub_8011978(var_r0);
    case 1:
        var_r0 = 2;
        goto block_21;
    case 2:
        var_r0 = 1;
        goto block_21;
    case 3:
        var_r0 = 3;
        goto block_21;
    }
}

s32 sub_80114CC(Player *arg0) {
    s16 temp_r1_2;
    s16 temp_r6;
    s16 var_r1;
    s16 var_r1_2;
    s16 var_r1_3;
    s32 temp_r2;
    s32 var_r1_4;
    u16 temp_r0;
    u32 temp_r1;
    u32 temp_r1_3;
    u32 temp_r2_2;
    u32 var_r0;

    if (gCamera.unk69 == 0) {
        goto block_34;
    }
    temp_r2 = (s32) arg0->qWorldY >> 8;
    sub_8004E20((s16) ((s32) (arg0->qWorldX << 8) >> 0x10), (s16) (arg0->unk25 + temp_r2), &subroutine_arg0);
    temp_r6 = (u16) temp_r2 & ~3;
    temp_r0 = (subroutine_arg0 - arg0->unk25) & ~3;
    subroutine_arg0 = temp_r0;
    if (((temp_r6 << 0x10) == (temp_r0 << 0x10)) && ((s32) arg0->qSpeedAirY >= 0) && ((u32) (u8) (arg0->unk26 + 0x18) <= 0x30U)) {
        if (!(arg0->moveState & 4)) {
            var_r1 = arg0->qSpeedGround;
            if ((s32) var_r1 < 0) {
                var_r1 = 0 - var_r1;
            }
            if ((s32) var_r1 <= 0x3FF) {
                goto block_24;
            }
            goto block_16;
        }
        var_r1_2 = arg0->qSpeedAirX;
        if ((s32) var_r1_2 < 0) {
            var_r1_2 = 0 - var_r1_2;
        }
        if ((s32) var_r1_2 > 0x3FF) {
            var_r1_3 = arg0->qSpeedAirY;
            if ((s32) var_r1_3 < 0) {
                var_r1_3 = 0 - var_r1_3;
            }
            if ((s32) var_r1_3 <= 0x180) {
block_16:
                sub_80116A4(0U, arg0);
                if ((s32) arg0->qWorldY >= (s32) ((s16) subroutine_arg0 << 8)) {
                    temp_r1 = arg0->moveState;
                    if (!(temp_r1 & 0x1000)) {
                        arg0->moveState = temp_r1 | 0x1000;
                        sub_8017364(arg0);
                        Player_PlaySong(arg0, 0x119U);
                    }
                    Player_PlayOrContinueSong(arg0, 0x119);
                    arg0->qWorldY = (s16) subroutine_arg0 << 8;
                    arg0->unk26 = 0;
                    arg0->moveState &= ~4;
                    return 1;
                }
                if (arg0->moveState & 0x1000) {
                    Player_StopSong(arg0, 0x119U);
                }
                var_r0 = arg0->moveState;
                var_r1_4 = 0xFFFFEFFF;
                goto block_23;
            }
            goto block_24;
        }
        goto block_24;
    }
block_24:
    temp_r1_2 = temp_r6;
    if (((s32) temp_r1_2 >= (s32) (s16) subroutine_arg0) && ((s32) temp_r1_2 <= (s32) ((s16) subroutine_arg0 + 8)) && (temp_r2_2 = arg0->unkC, ((0x180000 & temp_r2_2) != 0))) {
        if (arg0->moveState & 4) {
            if (temp_r2_2 & 0x80000) {
                SetPlayerCallback(arg0, sub_801A504);
            } else {
                SetPlayerCallback(arg0, sub_801C234);
            }
        }
        Player_StopSong(arg0, 0x119U);
        var_r0 = arg0->moveState | 0x1000;
        var_r1_4 = -5;
block_23:
        arg0->moveState = var_r0 & var_r1_4;
    } else {
        temp_r1_3 = arg0->moveState;
        if (0x1000 & temp_r1_3) {
            arg0->moveState = temp_r1_3 & 0xFFFFEFFF;
            Player_StopSong(arg0, 0x119U);
        }
    }
block_34:
    return 0;
}

s16 sub_80116A4(u16 arg0, Player *arg1) {
    s32 sp8;
    s32 spC;
    s32 sp10;
    s32 sp14;
    s32 sp18;
    u8 *sp1C;
    u8 *sp20;
    s16 temp_r0;
    s16 var_r0;
    s16 var_r0_2;
    s32 temp_r4;
    s32 temp_r4_2;
    s32 temp_r4_3;
    s32 temp_r4_4;
    s32 temp_r5;
    s32 temp_r5_2;
    s32 temp_r5_3;
    s32 temp_r5_4;
    s32 var_r0_3;
    s32 var_r2;
    s32 var_r3;
    s32 var_r4_2;
    s32 var_r5;
    u8 (*var_r2_2)(s32, s32, s32, s32, void *);
    u8 *temp_r2;
    u8 *temp_r2_2;
    u8 *temp_r2_3;
    u8 *temp_r2_4;
    u8 *var_r4;
    u8 *var_r6;
    u8 *var_sl;
    u8 var_r0_4;

    spC = arg1->qWorldX;
    sp10 = arg1->qWorldY;
    sp14 = (s32) arg1->unk27;
    sp8 = (s32) arg0;
    temp_r0 = (s16) arg0;
    switch (temp_r0) {                              /* irregular */
    case 3:
        temp_r5 = spC >> 8;
        temp_r4 = sp10 >> 8;
        temp_r2 = arg1 + 0x28;
        sp20 = temp_r2;
        sp18 = sub_80517FC(temp_r5 + (s8) arg1->unk25, temp_r4 + 2 + arg1->unk24, sp14, 8, temp_r2, sub_805203C);
        var_r6 = arg1 + 0x24 + 5;
        var_r3 = sub_80517FC(temp_r5 + (s8) arg1->unk25, (temp_r4 - 2) - arg1->unk24, sp14, 8, var_r6, sub_805203C);
        var_r4 = sp20;
block_13:
        var_r2 = var_r3;
        if (var_r3 > sp18) {
            var_r2 = sp18;
        }
        if (var_r2 != 0) {
            if (var_r2 < 0) {
                if (var_r2 >= -0xE) {
                    var_r0 = (s16) sp8;
                    switch (var_r0) {               /* switch 2; irregular */
                    case 3:                         /* switch 2 */
                        goto block_41;
                    }
                    goto block_43;
                }
                goto block_52;
            }
            if (!((s16) sp8 & 2)) {
                var_r0_2 = arg1->qSpeedAirX;
            } else {
                var_r0_2 = arg1->qSpeedAirY;
            }
            if ((s32) var_r0_2 < 0) {
                var_r0_2 = 0 - var_r0_2;
            }
            var_r0_3 = (var_r0_2 >> 8) + 3;
            if (var_r0_3 > 0xB) {
                var_r0_3 = 0xB;
            }
            if (var_r2 <= var_r0_3) {
                var_r0 = (s16) sp8;
                switch (var_r0) {                   /* switch 1; irregular */
                case 1:                             /* switch 1 */
                case 1:                             /* switch 2 */
                    sp10 -= var_r2 << 8;
                    break;
                case 2:                             /* switch 1 */
                case 2:                             /* switch 2 */
                    spC -= var_r2 << 8;
                    break;
                case 3:                             /* switch 1 */
block_41:
                    spC += var_r2 << 8;
                    break;
                }
                goto block_43;
            }
            return 1;
        }
block_43:
        if (sp18 < var_r3) {
            var_r0_4 = *var_r4;
        } else {
            var_r0_4 = *var_r6;
        }
        if (!((s16) sp8 & 2)) {
            arg1->qWorldY = sp10;
        } else {
            arg1->qWorldX = spC;
        }
        if (!(1 & var_r0_4)) {
            arg1->unk26 = var_r0_4;
            if (arg1->moveState & 0x10000) {
                arg1->unk26 = ((u32) (0 - ((arg1->unk26 + 0x40) << 0x18)) >> 0x18) - 0x40;
            }
        }
block_52:
    default:
        return 0;
    case 0:
        temp_r5_2 = sp10 >> 8;
        temp_r4_2 = spC >> 8;
        temp_r2_2 = arg1 + 0x28;
        sp1C = temp_r2_2;
        sp18 = sub_80517FC(temp_r5_2 + (s8) arg1->unk25, (temp_r4_2 - 2) - arg1->unk24, sp14, 8, temp_r2_2, sub_805217C);
        var_r6 = arg1 + 0x24 + 5;
        var_r3 = sub_80517FC(temp_r5_2 + (s8) arg1->unk25, temp_r4_2 + 2 + arg1->unk24, sp14, 8, var_r6, sub_805217C);
        var_r4 = sp1C;
        goto block_13;
    case 1:
        temp_r5_3 = sp10 >> 8;
        temp_r4_3 = spC >> 8;
        temp_r2_3 = arg1 + 0x28;
        var_sl = temp_r2_3;
        sp18 = sub_80517FC(temp_r5_3 - (s8) arg1->unk25, temp_r4_3 + 2 + arg1->unk24, sp14, -8, temp_r2_3, sub_805217C);
        var_r5 = temp_r5_3 - (s8) arg1->unk25;
        var_r4_2 = (temp_r4_3 - 2) - arg1->unk24;
        var_r6 = arg1 + 0x24 + 5;
        var_r2_2 = sub_805217C;
block_11:
        var_r3 = sub_80517FC(var_r5, var_r4_2, sp14, -8, M2C_ERROR(/* Unable to find stack arg 0x0 in block */), var_r2_2);
        var_r4 = var_sl;
        goto block_13;
    case 2:
        temp_r5_4 = spC >> 8;
        temp_r4_4 = sp10 >> 8;
        temp_r2_4 = arg1 + 0x28;
        var_sl = temp_r2_4;
        sp18 = sub_80517FC(temp_r5_4 - (s8) arg1->unk25, (temp_r4_4 - 2) - arg1->unk24, sp14, -8, temp_r2_4, sub_805203C);
        var_r5 = temp_r5_4 - (s8) arg1->unk25;
        var_r4_2 = temp_r4_4 + 2 + arg1->unk24;
        var_r6 = arg1 + 0x24 + 5;
        var_r2_2 = sub_805203C;
        goto block_11;
    }
    /* bug: did not emit code for node #33; contents below: */
    /* bug: did not emit code for node #34; contents below: */
    /* bug: did not emit code for node #38; contents below: */
    sp10 += var_r2 << 8;
}

s16 sub_8011978(u16 arg0, void *arg1, s32 arg2) {
    s32 sp8;
    s32 spC;
    s32 sp10;
    s32 sp14;
    s8 *sp18;
    s16 temp_r0;
    s16 temp_r1_2;
    s32 temp_r4;
    s32 temp_r4_2;
    s32 temp_r4_3;
    s32 temp_r4_4;
    s32 temp_r5;
    s32 temp_r5_2;
    s32 temp_r5_3;
    s32 temp_r5_4;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r1;
    s32 var_r1_2;
    s32 var_r2;
    s32 var_r3;
    s32 var_r4;
    s32 var_r5;
    u8 *var_r0_3;
    u8 temp_r0_2;
    u8 temp_r1;

    var_r2 = arg2;
    spC = arg1->unk10;
    sp10 = arg1->unk14;
    temp_r1 = arg1->unk27;
    sp8 = (s32) arg0;
    temp_r0 = (s16) arg0;
    switch (temp_r0) {                              /* irregular */
    case 3:
        temp_r5 = spC >> 8;
        temp_r4 = sp10 >> 8;
        sp14 = sub_80517FC(temp_r5 + (s8) (u8) arg1->unk25, temp_r4 + 2 + (s8) arg1->unk24, (s32) temp_r1, 8, arg1 + 0x28, sub_805203C);
        var_r5 = temp_r5 + arg1->unk25;
        var_r4 = (temp_r4 - 2) - (s8) arg1->unk24;
block_12:
        var_r0 = var_r5;
        var_r1 = var_r4;
        var_r3 = 8;
block_13:
        var_r2 = sub_80517FC(var_r0, var_r1, (s32) temp_r1, var_r3, M2C_ERROR(/* Unable to find stack arg 0x0 in block */), M2C_ERROR(/* Unable to find stack arg 0x4 in block */));
        break;
    case 0:
        temp_r5_2 = sp10 >> 8;
        temp_r4_2 = spC >> 8;
        sp14 = sub_80517FC(temp_r5_2 + arg1->unk25, (temp_r4_2 - 2) - (s8) arg1->unk24, (s32) temp_r1, 8, arg1 + 0x28, sub_805217C);
        var_r5 = temp_r5_2 + arg1->unk25;
        var_r4 = temp_r4_2 + 2 + (s8) arg1->unk24;
        goto block_12;
    case 1:
        temp_r5_3 = sp10 >> 8;
        temp_r4_3 = spC >> 8;
        sp14 = sub_80517FC(temp_r5_3 - arg1->unk25, temp_r4_3 + 2 + (s8) arg1->unk24, (s32) temp_r1, -8, arg1 + 0x28, sub_805217C);
        var_r0 = temp_r5_3 - arg1->unk25;
        var_r1 = (temp_r4_3 - 2) - (s8) arg1->unk24;
        var_r3 = -8;
        goto block_13;
    case 2:
        temp_r5_4 = spC >> 8;
        sp18 = arg1 + 0x25;
        temp_r4_4 = sp10 >> 8;
        sp14 = sub_80517FC(temp_r5_4 - arg1->unk25, (temp_r4_4 - 2) - (s8) arg1->unk24, (s32) temp_r1, -8, arg1 + 0x28, sub_805203C);
        var_r0 = temp_r5_4 - *sp18;
        var_r1 = temp_r4_4 + 2 + (s8) arg1->unk24;
        var_r3 = -8;
        goto block_13;
    }
    var_r0_2 = var_r2;
    if (var_r2 > sp14) {
        var_r0_2 = sp14;
    }
    if (var_r0_2 != 0) {
        temp_r1_2 = (s16) sp8;
        switch (temp_r1_2) {                        /* switch 1; irregular */
        case 0:                                     /* switch 1 */
            sp10 += var_r0_2 << 8;
            break;
        case 1:                                     /* switch 1 */
            sp10 -= var_r0_2 << 8;
            break;
        case 2:                                     /* switch 1 */
            var_r1_2 = spC - (var_r0_2 << 8);
block_28:
            spC = var_r1_2;
            break;
        case 3:                                     /* switch 1 */
            var_r1_2 = spC + (var_r0_2 << 8);
            goto block_28;
        }
    }
    if (sp14 < var_r2) {
        var_r0_3 = arg1 + 0x28;
    } else {
        var_r0_3 = arg1 + 0x29;
    }
    temp_r0_2 = *var_r0_3;
    if (!((s16) sp8 & 2)) {
        arg1->unk14 = sp10;
    } else {
        arg1->unk10 = spC;
    }
    if (!(1 & temp_r0_2)) {
        arg1->unk26 = temp_r0_2;
        if (arg1->unk4 & 0x10000) {
            arg1->unk26 = (u8) (((u32) (0 - ((arg1->unk26 + 0x40) << 0x18)) >> 0x18) - 0x40);
        }
    }
    return 0;
}

s32 sub_8011BFC(u8 arg0, Player *arg1) {
    s32 temp_r4;
    s32 temp_r5;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r1;
    s8 temp_r3;
    u32 temp_r3_2;
    u8 temp_r2;
    u8 var_r2;

    temp_r2 = arg0;
    temp_r5 = (s32) arg1->qWorldX >> 8;
    temp_r4 = (s32) arg1->qWorldY >> 8;
    arg1->unk29 = temp_r2;
    temp_r3 = (s8) temp_r2;
    arg1->unk28 = temp_r2;
    var_r0_2 = (temp_r2 + 0x20) << 0x18;
    if (var_r0_2 > 0) {
        if ((s32) temp_r3 <= 0) {

        } else {
            goto block_4;
        }
    } else if ((s32) temp_r3 <= 0) {
block_4:
        var_r0_2 = (temp_r2 + 0x1F) << 0x18;
    }
    temp_r3_2 = (u32) ((u32) var_r0_2 >> 0x18) >> 6;
    switch (temp_r3_2) {                            /* irregular */
    case 0:
        var_r0 = temp_r4 + 2 + (s8) arg1->unk24;
        var_r2 = arg1->unk27;
        var_r1 = temp_r5;
block_16:
        return sub_80517FC(var_r0, var_r1, (s32) var_r2, 8, M2C_ERROR(/* Unable to find stack arg 0x0 in block */), M2C_ERROR(/* Unable to find stack arg 0x4 in block */));
    case 2:
        return sub_80517FC((temp_r4 - 2) - (s8) arg1->unk24, temp_r5, (s32) arg1->unk27, -8, NULL, sub_805217C);
    case 1:
        return sub_80517FC((temp_r5 - 2) - (s8) arg1->unk24, temp_r4, (s32) arg1->unk27, -8, NULL, sub_805203C);
    case 3:
        var_r0 = temp_r5 + 2 + (s8) arg1->unk24;
        var_r2 = arg1->unk27;
        var_r1 = temp_r4;
        goto block_16;
    default:
        return 0;
    }
}

void sub_8011D08(Player *arg0) {
    u8 sp8;
    ? spC;
    s16 temp_r1;
    s16 var_r1;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 var_r0;
    s32 var_r2_3;
    s32 var_r2_4;
    u16 var_r0_2;
    u8 temp_r2;
    u8 temp_r5;
    u8 var_r2;
    u8 var_r2_2;

    temp_r5 = arg0->unk27;
    var_r2 = temp_r5;
    if ((s32) arg0->qSpeedAirY <= 0x2FF) {
        var_r2 = 0x80 | temp_r5;
    }
    temp_r0 = sub_80517FC((((s32) arg0->qWorldX >> 8) - 3) - (s8) arg0->unk24, (s32) arg0->qWorldY >> 8, (s32) var_r2, -8, NULL, sub_805203C);
    if (temp_r0 <= 0) {
        arg0->qWorldX -= temp_r0 << 8;
        arg0->qSpeedAirX = 0;
    }
    var_r2_2 = temp_r5;
    if ((s32) arg0->qSpeedAirY <= 0x2FF) {
        var_r2_2 |= 0x80;
    }
    temp_r0_2 = sub_80517FC(((s32) arg0->qWorldX >> 8) + 3 + (s8) arg0->unk24, (s32) arg0->qWorldY >> 8, (s32) var_r2_2, 8, NULL, sub_805203C);
    if (temp_r0_2 <= 0) {
        arg0->qWorldX += temp_r0_2 << 8;
        arg0->qSpeedAirX = 0;
    }
    var_r2_3 = 1;
    if (arg0->moveState & 0x10000) {
        var_r2_3 = 0;
    }
    if (var_r2_3 == 0) {
        var_r0 = sub_8011024(2U, arg0, &sp8);
    } else {
        var_r0 = sub_8011024(3U, arg0, &sp8);
    }
    var_r2_4 = var_r0;
    if (var_r2_4 < 0) {
        arg0->unk26 = sp8;
        if (arg0->moveState & 0x10000) {
            var_r2_4 = 0 - var_r2_4;
        }
        arg0->qWorldY += var_r2_4 << 8;
        sub_8012F10(arg0);
        temp_r2 = sp8;
        if ((temp_r2 + 0x20) & 0x40) {
            arg0->qSpeedAirX = 0;
            if ((s32) arg0->qSpeedAirY > 0xBD0) {
                arg0->qSpeedAirY = 0xBD0;
            }
            goto block_22;
        }
        temp_r1 = (temp_r2 + 0x10) & 0x20;
        if (temp_r1 == 0) {
            arg0->qSpeedAirY = temp_r1;
            var_r0_2 = (u16) arg0->qSpeedAirX;
            goto block_26;
        }
        arg0->qSpeedAirY = (s16) ((s32) ((u16) arg0->qSpeedAirY << 0x10) >> 0x11);
block_22:
        var_r1 = arg0->qSpeedAirY;
        if ((s32) var_r1 < 0) {
            var_r1 = 0 - var_r1;
        }
        arg0->qSpeedGround = var_r1;
        if ((s32) (s8) sp8 < 0) {
            var_r0_2 = 0 - var_r1;
block_26:
            arg0->qSpeedGround = (s16) var_r0_2;
        }
    }
}

void sub_8011E70(Player *arg0) {
    u8 sp8;
    ? spC;
    s16 var_r0_2;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r5;
    s32 var_r0;
    s32 var_r2_3;
    u8 *temp_r1;
    u8 temp_r2;
    u8 temp_r6;
    u8 var_r2;
    u8 var_r2_2;

    temp_r6 = arg0->unk27;
    temp_r5 = arg0->moveState & 0x80000;
    if (temp_r5 != 0) {
        sub_8016E70(arg0);
        return;
    }
    temp_r1 = &arg0->unk24;
    var_r2 = temp_r6;
    if ((s32) arg0->qSpeedAirY <= 0x2FF) {
        var_r2 = 0x80 | temp_r6;
    }
    temp_r0 = sub_80517FC((((s32) arg0->qWorldX >> 8) - 3) - (s8) *temp_r1, (s32) arg0->qWorldY >> 8, (s32) var_r2, -8, (void *) temp_r5, sub_805203C);
    if (temp_r0 <= 0) {
        arg0->qWorldX -= temp_r0 << 8;
        arg0->qSpeedAirX = (s16) temp_r5;
    }
    var_r2_2 = temp_r6;
    if ((s32) arg0->qSpeedAirY <= 0x2FF) {
        var_r2_2 |= 0x80;
    }
    temp_r0_2 = sub_80517FC(((s32) arg0->qWorldX >> 8) + 3 + (s8) *temp_r1, (s32) arg0->qWorldY >> 8, (s32) var_r2_2, 8, (void *) temp_r5, sub_805203C);
    if (temp_r0_2 <= 0) {
        arg0->qWorldX += temp_r0_2 << 8;
        arg0->qSpeedAirX = (s16) temp_r5;
    }
    if (!(arg0->moveState & 0x10000)) {
        var_r0 = sub_8011024(2U, arg0, &sp8);
    } else {
        var_r0 = sub_8011024(3U, arg0, &sp8);
    }
    var_r2_3 = var_r0;
    if (var_r2_3 <= 0) {
        if (arg0->moveState & 0x10000) {
            var_r2_3 = 0 - var_r2_3;
        }
        arg0->qWorldY -= var_r2_3 << 8;
        temp_r2 = sp8;
        if (((temp_r2 + 0x20) & 0x40) && ((s32) ((s8) sp8 - 0x40) > 0)) {
            arg0->unk26 = temp_r2;
            sub_8012F10(arg0);
            var_r0_2 = arg0->qSpeedAirY;
            if ((s32) var_r0_2 < 0) {
                var_r0_2 = 0 - var_r0_2;
            }
            arg0->qSpeedGround = var_r0_2;
            return;
        }
        arg0->qSpeedAirY = 0;
    }
}

void sub_8011FB8(Player *arg0) {
    u8 sp8;
    u32 spC;
    s32 temp_r0_2;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 var_r1;
    s32 var_r2_2;
    s32 var_r2_3;
    s32 var_r2_4;
    u8 temp_r0;
    u8 var_r2;

    temp_r0 = arg0->unk27;
    if (arg0->moveState & 0x10000) {
        var_r0 = (((s32) arg0->qWorldX >> 8) - 3) - (s8) arg0->unk24;
        var_r1 = (s32) arg0->qWorldY >> 8;
        var_r2 = temp_r0;
    } else {
        var_r2 = temp_r0;
        if ((s32) arg0->qSpeedAirY <= 0x2FF) {
            var_r2 |= 0x80;
        }
        var_r0 = (((s32) arg0->qWorldX >> 8) - 3) - (s8) arg0->unk24;
        var_r1 = (s32) arg0->qWorldY >> 8;
    }
    temp_r0_2 = sub_80517FC(var_r0, var_r1, (s32) var_r2, -8, M2C_ERROR(/* Unable to find stack arg 0x0 in block */), M2C_ERROR(/* Unable to find stack arg 0x4 in block */));
    if (temp_r0_2 <= 0) {
        arg0->qWorldX -= temp_r0_2 << 8;
        arg0->qSpeedAirX = 0;
        arg0->qSpeedGround = (u16) arg0->qSpeedAirY;
    }
    if (!(arg0->moveState & 0x10000)) {
        var_r0_2 = sub_8011024(2U, arg0, &sp8, &spC);
    } else {
        var_r0_2 = sub_8011024(3U, arg0, &sp8, &spC);
    }
    var_r2_2 = var_r0_2;
    if (var_r2_2 <= 0) {
        if (arg0->moveState & 0x10000) {
            var_r2_2 = 0 - var_r2_2;
        }
        arg0->qWorldY -= var_r2_2 << 8;
        if ((s32) arg0->qSpeedAirY < 0) {
            arg0->qSpeedAirY = 0;
        }
    } else if ((s32) arg0->qSpeedAirY >= 0) {
        var_r2_3 = 1;
        if (arg0->moveState & 0x10000) {
            var_r2_3 = 0;
        }
        if (var_r2_3 == 0) {
            var_r0_3 = sub_8011024(2U, arg0, &sp8, &spC);
        } else {
            var_r0_3 = sub_8011024(3U, arg0, &sp8, &spC);
        }
        var_r2_4 = var_r0_3;
        if (var_r2_4 <= 0) {
            if (arg0->moveState & 0x10000) {
                var_r2_4 = 0 - var_r2_4;
            }
            arg0->qWorldY += var_r2_4 << 8;
            arg0->unk26 = sp8;
            sub_8012F10(arg0);
            arg0->qSpeedAirY = 0;
            arg0->qSpeedGround = (s16) (u16) arg0->qSpeedAirX;
        }
    }
}

void sub_8012118(Player *arg0) {
    u8 sp8;
    u32 spC;
    s32 temp_r0;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 var_r1;
    s32 var_r2_2;
    s32 var_r2_3;
    s32 var_r2_4;
    u8 temp_r7;
    u8 var_r2;

    temp_r7 = arg0->unk27;
    if (arg0->moveState & 0x10000) {
        var_r0 = ((s32) arg0->qWorldX >> 8) + 3 + (s8) arg0->unk24;
        var_r1 = (s32) arg0->qWorldY >> 8;
        var_r2 = temp_r7;
    } else {
        var_r2 = temp_r7;
        if ((s32) arg0->qSpeedAirY <= 0x2FF) {
            var_r2 |= 0x80;
        }
        var_r0 = ((s32) arg0->qWorldX >> 8) + 3 + (s8) arg0->unk24;
        var_r1 = (s32) arg0->qWorldY >> 8;
    }
    temp_r0 = sub_80517FC(var_r0, var_r1, (s32) var_r2, 8, M2C_ERROR(/* Unable to find stack arg 0x0 in block */), M2C_ERROR(/* Unable to find stack arg 0x4 in block */));
    if (temp_r0 <= 0) {
        arg0->qWorldX += temp_r0 << 8;
        arg0->qSpeedAirX = 0;
        arg0->qSpeedGround = (u16) arg0->qSpeedAirY;
    }
    if (!(arg0->moveState & 0x10000)) {
        var_r0_2 = sub_8011024(2U, arg0, &sp8, &spC);
    } else {
        var_r0_2 = sub_8011024(3U, arg0, &sp8, &spC);
    }
    var_r2_2 = var_r0_2;
    if (var_r2_2 <= 0) {
        if (arg0->moveState & 0x10000) {
            var_r2_2 = 0 - var_r2_2;
        }
        arg0->qWorldY -= var_r2_2 << 8;
        if ((s32) arg0->qSpeedAirY < 0) {
            arg0->qSpeedAirY = 0;
        }
    } else if ((s32) arg0->qSpeedAirY >= 0) {
        var_r2_3 = 1;
        if (arg0->moveState & 0x10000) {
            var_r2_3 = 0;
        }
        if (var_r2_3 == 0) {
            var_r0_3 = sub_8011024(2U, arg0, &sp8, &spC);
        } else {
            var_r0_3 = sub_8011024(3U, arg0, &sp8, &spC);
        }
        var_r2_4 = var_r0_3;
        if (var_r2_4 <= 0) {
            if (arg0->moveState & 0x10000) {
                var_r2_4 = 0 - var_r2_4;
            }
            arg0->qWorldY += var_r2_4 << 8;
            arg0->unk26 = sp8;
            sub_8012F10(arg0);
            arg0->qSpeedAirY = 0;
            arg0->qSpeedGround = (s16) (u16) arg0->qSpeedAirX;
        }
    }
}

s32 sub_801226C(Player *arg0) {
    s32 sp8;
    s32 spC;
    s32 sp10;
    s32 sp14;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 var_r0;
    u8 *temp_r7;
    u8 temp_r5;
    u8 var_r2;
    u8 var_r2_2;

    temp_r5 = arg0->unk27;
    sp8 = arg0->qWorldX;
    spC = arg0->qWorldY;
    sp10 = (s32) arg0->qSpeedAirX;
    sp14 = (s32) arg0->qSpeedAirY;
    temp_r7 = &arg0->unk24;
    var_r2 = temp_r5;
    if ((s32) arg0->qSpeedAirY <= 0x2FF) {
        var_r2 = 0x80 | temp_r5;
    }
    temp_r0 = sub_80517FC(((sp8 >> 8) - 3) - (s8) *temp_r7, spC >> 8, (s32) var_r2, -8, NULL, sub_805203C);
    if (temp_r0 <= 0) {
        arg0->qWorldX -= temp_r0 << 8;
    }
    var_r2_2 = temp_r5;
    if ((s32) arg0->qSpeedAirY <= 0x2FF) {
        var_r2_2 |= 0x80;
    }
    temp_r0_2 = sub_80517FC(((s32) arg0->qWorldX >> 8) + 3 + (s8) *temp_r7, (s32) arg0->qWorldY >> 8, (s32) var_r2_2, 8, NULL, sub_805203C);
    if (temp_r0_2 <= 0) {
        arg0->qWorldX += temp_r0_2 << 8;
    }
    if (!(arg0->moveState & 0x10000)) {
        var_r0 = sub_8011024(2U, arg0, NULL, NULL);
    } else {
        var_r0 = sub_8011024(3U, arg0, NULL, NULL);
    }
    arg0->qWorldX = sp8;
    arg0->qWorldY = spC;
    arg0->qSpeedAirX = (s16) subroutine_arg0.unk10;
    arg0->qSpeedAirY = (s16) subroutine_arg0.unk14;
    return var_r0;
}

s32 sub_8012368(Player *arg0) {
    s32 sp8;
    s32 spC;
    s32 sp10;
    s32 sp14;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 var_r0;
    s32 var_r2_3;
    u8 *temp_r7;
    u8 temp_r5;
    u8 var_r2;
    u8 var_r2_2;

    temp_r5 = arg0->unk27;
    sp8 = arg0->qWorldX;
    spC = arg0->qWorldY;
    sp10 = (s32) arg0->qSpeedAirX;
    sp14 = (s32) arg0->qSpeedAirY;
    temp_r7 = &arg0->unk24;
    var_r2 = temp_r5;
    if ((s32) arg0->qSpeedAirY <= 0x2FF) {
        var_r2 = 0x80 | temp_r5;
    }
    temp_r0 = sub_80517FC(((sp8 >> 8) - 3) - (s8) *temp_r7, spC >> 8, (s32) var_r2, -8, NULL, sub_805203C);
    if (temp_r0 <= 0) {
        arg0->qWorldX -= temp_r0 << 8;
    }
    var_r2_2 = temp_r5;
    if ((s32) arg0->qSpeedAirY <= 0x2FF) {
        var_r2_2 |= 0x80;
    }
    temp_r0_2 = sub_80517FC(((s32) arg0->qWorldX >> 8) + 3 + (s8) *temp_r7, (s32) arg0->qWorldY >> 8, (s32) var_r2_2, 8, NULL, sub_805203C);
    if (temp_r0_2 <= 0) {
        arg0->qWorldX += temp_r0_2 << 8;
    }
    var_r2_3 = 1;
    if (arg0->moveState & 0x10000) {
        var_r2_3 = 0;
    }
    if (var_r2_3 == 0) {
        var_r0 = sub_8011024(2U, arg0, NULL, NULL);
    } else {
        var_r0 = sub_8011024(3U, arg0, NULL, NULL);
    }
    arg0->qWorldX = sp8;
    arg0->qWorldY = spC;
    arg0->qSpeedAirX = (s16) subroutine_arg0.unk10;
    arg0->qSpeedAirY = (s16) subroutine_arg0.unk14;
    return var_r0;
}

s32 sub_801246C(Player *arg0) {
    s32 sp8;
    s32 spC;
    s32 sp10;
    s32 sp14;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 temp_r1;
    s8 *temp_r2;
    u8 temp_r5;
    u8 var_r2;
    u8 var_r2_2;

    temp_r5 = arg0->unk27;
    temp_r0_2 = arg0->qWorldX;
    sp8 = temp_r0_2;
    temp_r1 = arg0->qWorldY;
    spC = temp_r1;
    sp10 = (s32) arg0->qSpeedAirX;
    sp14 = (s32) arg0->qSpeedAirY;
    temp_r2 = &arg0->unk25;
    var_r2 = temp_r5;
    if ((s32) arg0->qSpeedAirY <= 0x2FF) {
        var_r2 = 0x80 | temp_r5;
    }
    temp_r0_3 = sub_80517FC(((temp_r1 >> 8) - 3) - *temp_r2, temp_r0_2 >> 8, (s32) var_r2, -8, NULL, sub_805217C);
    if (temp_r0_3 <= 0) {
        arg0->qWorldY -= temp_r0_3 << 8;
    }
    var_r2_2 = temp_r5;
    if ((s32) arg0->qSpeedAirY < 0) {
        var_r2_2 |= 0x80;
    }
    temp_r0_4 = sub_80517FC(((s32) arg0->qWorldY >> 8) + 3 + *temp_r2, (s32) arg0->qWorldX >> 8, (s32) var_r2_2, 8, NULL, sub_805217C);
    if (temp_r0_4 <= 0) {
        arg0->qWorldY += temp_r0_4 << 8;
    }
    temp_r0 = sub_8011024(0U, arg0, NULL, NULL);
    arg0->qWorldX = sp8;
    arg0->qWorldY = spC;
    arg0->qSpeedAirX = (s16) subroutine_arg0.unk10;
    arg0->qSpeedAirY = (s16) subroutine_arg0.unk14;
    return temp_r0;
}

s32 sub_8012550(Player *arg0) {
    s32 sp8;
    s32 spC;
    s32 sp10;
    s32 sp14;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 temp_r1;
    s8 *temp_r2;
    u8 temp_r5;
    u8 var_r2;
    u8 var_r2_2;

    temp_r5 = arg0->unk27;
    temp_r0_2 = arg0->qWorldX;
    sp8 = temp_r0_2;
    temp_r1 = arg0->qWorldY;
    spC = temp_r1;
    sp10 = (s32) arg0->qSpeedAirX;
    sp14 = (s32) arg0->qSpeedAirY;
    temp_r2 = &arg0->unk25;
    var_r2 = temp_r5;
    if ((s32) arg0->qSpeedAirY <= 0x2FF) {
        var_r2 = 0x80 | temp_r5;
    }
    temp_r0_3 = sub_80517FC(((temp_r1 >> 8) - 3) - *temp_r2, temp_r0_2 >> 8, (s32) var_r2, -8, NULL, sub_805217C);
    if (temp_r0_3 <= 0) {
        arg0->qWorldY -= temp_r0_3 << 8;
    }
    var_r2_2 = temp_r5;
    if ((s32) arg0->qSpeedAirY < 0) {
        var_r2_2 |= 0x80;
    }
    temp_r0_4 = sub_80517FC(((s32) arg0->qWorldY >> 8) + 3 + *temp_r2, (s32) arg0->qWorldX >> 8, (s32) var_r2_2, 8, NULL, sub_805217C);
    if (temp_r0_4 <= 0) {
        arg0->qWorldY += temp_r0_4 << 8;
    }
    temp_r0 = sub_8011024(1U, arg0, NULL, NULL);
    arg0->qWorldX = sp8;
    arg0->qWorldY = spC;
    arg0->qSpeedAirX = (s16) subroutine_arg0.unk10;
    arg0->qSpeedAirY = (s16) subroutine_arg0.unk14;
    return temp_r0;
}

void sub_8012634(Player *arg0) {
    u32 temp_r2;

    if (arg0->moveState & 0x20) {
        arg0->Padding8[2] &= 0xFB;
        arg0->unk29 = 0;
        *((arg0 + 0x29) - 1) = 0;
        return;
    }
    temp_r2 = (u32) ((((u32) (ArcTan2((s16) arg0->qSpeedAirX, (s16) arg0->qSpeedAirY) << 0x10) >> 0x18) - 0x20) & 0xC0) >> 6;
    switch (temp_r2) {                              /* irregular */
    case 0:
        sub_80126B8(arg0);
        return;
    case 1:
        sub_8012930(arg0);
        return;
    case 2:
        sub_8012804(arg0);
        return;
    case 3:
        sub_8012A6C(arg0);
        return;
    }
}

void sub_80126B8(Player *arg0) {
    u8 sp8;
    ? spC;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 var_r0;
    s32 var_r2_3;
    s32 var_r2_4;
    u8 *temp_r2;
    u8 temp_r5;
    u8 var_r2;
    u8 var_r2_2;

    temp_r5 = arg0->unk27;
    var_r2 = temp_r5;
    if ((s32) arg0->qSpeedAirY <= 0x2FF) {
        var_r2 = 0x80 | temp_r5;
    }
    temp_r0 = sub_80517FC((((s32) arg0->qWorldX >> 8) - 3) - (s8) arg0->unk24, (s32) arg0->qWorldY >> 8, (s32) var_r2, -8, NULL, sub_805203C);
    if (temp_r0 <= 0) {
        arg0->qWorldX -= temp_r0 << 8;
        if ((s32) arg0->qSpeedAirX < 0) {
            arg0->Padding8[2] |= 0x40;
        }
        arg0->qSpeedAirX = 0;
    }
    var_r2_2 = temp_r5;
    if ((s32) arg0->qSpeedAirY <= 0x2FF) {
        var_r2_2 |= 0x80;
    }
    temp_r0_2 = sub_80517FC(((s32) arg0->qWorldX >> 8) + 3 + (s8) arg0->unk24, (s32) arg0->qWorldY >> 8, (s32) var_r2_2, 8, NULL, sub_805203C);
    if (temp_r0_2 <= 0) {
        arg0->qWorldX += temp_r0_2 << 8;
        if ((s32) arg0->qSpeedAirX > 0) {
            arg0->Padding8[2] |= 0x40;
        }
        arg0->qSpeedAirX = 0;
    }
    var_r2_3 = 1;
    if (arg0->moveState & 0x10000) {
        var_r2_3 = 0;
    }
    if (var_r2_3 == 0) {
        var_r0 = sub_8011024(2U, arg0, &sp8);
    } else {
        var_r0 = sub_8011024(3U, arg0, &sp8);
    }
    var_r2_4 = var_r0;
    if (var_r2_4 <= 0) {
        if (arg0->moveState & 0x10000) {
            var_r2_4 = 0 - var_r2_4;
        }
        arg0->qWorldY += var_r2_4 << 8;
        arg0->unk26 = sp8;
        arg0->qSpeedAirY = 0;
        temp_r2 = &arg0->Padding8[2];
        *temp_r2 &= 0xFB;
    }
}

void sub_8012804(Player *arg0) {
    u8 sp8;
    ? spC;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 var_r0;
    s32 var_r2_3;
    u8 temp_r5;
    u8 var_r2;
    u8 var_r2_2;

    temp_r5 = arg0->unk27;
    var_r2 = temp_r5;
    if ((s32) arg0->qSpeedAirY <= 0x2FF) {
        var_r2 = 0x80 | temp_r5;
    }
    temp_r0 = sub_80517FC((((s32) arg0->qWorldX >> 8) - 3) - (s8) arg0->unk24, (s32) arg0->qWorldY >> 8, (s32) var_r2, -8, NULL, sub_805203C);
    if (temp_r0 <= 0) {
        arg0->qWorldX -= temp_r0 << 8;
        if ((s32) arg0->qSpeedAirX < 0) {
            arg0->Padding8[2] |= 0x40;
        }
        arg0->qSpeedAirX = 0;
    }
    var_r2_2 = temp_r5;
    if ((s32) arg0->qSpeedAirY <= 0x2FF) {
        var_r2_2 |= 0x80;
    }
    temp_r0_2 = sub_80517FC(((s32) arg0->qWorldX >> 8) + 3 + (s8) arg0->unk24, (s32) arg0->qWorldY >> 8, (s32) var_r2_2, 8, NULL, sub_805203C);
    if (temp_r0_2 <= 0) {
        arg0->qWorldX += temp_r0_2 << 8;
        if ((s32) arg0->qSpeedAirX > 0) {
            arg0->Padding8[2] |= 0x40;
        }
        arg0->qSpeedAirX = 0;
    }
    if (!(arg0->moveState & 0x10000)) {
        var_r0 = sub_8011024(2U, arg0, &sp8);
    } else {
        var_r0 = sub_8011024(3U, arg0, &sp8);
    }
    var_r2_3 = var_r0;
    if (var_r2_3 <= 0) {
        if (arg0->moveState & 0x10000) {
            var_r2_3 = 0 - var_r2_3;
        }
        arg0->qWorldY -= var_r2_3 << 8;
        arg0->qSpeedAirY = 0;
    }
}

void sub_8012930(Player *arg0) {
    u8 sp8;
    u32 spC;
    s32 temp_r0;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r2_2;
    s32 var_r2_3;
    s32 var_r2_4;
    u8 *temp_r2;
    u8 var_r2;

    var_r2 = arg0->unk27;
    if ((s32) arg0->qSpeedAirY <= 0x2FF) {
        var_r2 |= 0x80;
    }
    temp_r0 = sub_80517FC((((s32) arg0->qWorldX >> 8) - 2) - (s8) arg0->unk24, (s32) arg0->qWorldY >> 8, (s32) var_r2, -8, NULL, sub_805203C);
    if (temp_r0 <= 0) {
        arg0->qWorldX -= temp_r0 << 8;
        if ((s32) arg0->qSpeedAirX < 0) {
            arg0->Padding8[2] |= 0x40;
        }
        arg0->qSpeedAirX = 0;
    }
    if (!(arg0->moveState & 0x10000)) {
        var_r0 = sub_8011024(2U, arg0, &sp8, &spC);
    } else {
        var_r0 = sub_8011024(3U, arg0, &sp8, &spC);
    }
    var_r2_2 = var_r0;
    if (var_r2_2 <= 0) {
        if (arg0->moveState & 0x10000) {
            var_r2_2 = 0 - var_r2_2;
        }
        arg0->qWorldY -= var_r2_2 << 8;
        if ((s32) arg0->qSpeedAirY < 0) {
            arg0->qSpeedAirY = 0;
        }
    } else if ((s32) arg0->qSpeedAirY >= 0) {
        var_r2_3 = 1;
        if (arg0->moveState & 0x10000) {
            var_r2_3 = 0;
        }
        if (var_r2_3 == 0) {
            var_r0_2 = sub_8011024(2U, arg0, &sp8, &spC);
        } else {
            var_r0_2 = sub_8011024(3U, arg0, &sp8, &spC);
        }
        var_r2_4 = var_r0_2;
        if (var_r2_4 <= 0) {
            if (arg0->moveState & 0x10000) {
                var_r2_4 = 0 - var_r2_4;
            }
            arg0->qWorldY += var_r2_4 << 8;
            arg0->unk26 = sp8;
            arg0->qSpeedAirY = 0;
            temp_r2 = &arg0->Padding8[2];
            *temp_r2 &= 0xFB;
        }
    }
}

void sub_8012A6C(Player *arg0) {
    u8 sp8;
    u32 spC;
    s32 temp_r0;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r2_2;
    s32 var_r2_3;
    s32 var_r2_4;
    u8 *temp_r2;
    u8 var_r2;

    var_r2 = arg0->unk27;
    if ((s32) arg0->qSpeedAirY <= 0x2FF) {
        var_r2 |= 0x80;
    }
    temp_r0 = sub_80517FC(((s32) arg0->qWorldX >> 8) + 2 + (s8) arg0->unk24, (s32) arg0->qWorldY >> 8, (s32) var_r2, 8, NULL, sub_805203C);
    if (temp_r0 <= 0) {
        arg0->qWorldX += temp_r0 << 8;
        if ((s32) arg0->qSpeedAirX > 0) {
            arg0->Padding8[2] |= 0x40;
        }
        arg0->qSpeedAirX = 0;
    }
    if (!(arg0->moveState & 0x10000)) {
        var_r0 = sub_8011024(2U, arg0, &sp8, &spC);
    } else {
        var_r0 = sub_8011024(3U, arg0, &sp8, &spC);
    }
    var_r2_2 = var_r0;
    if (var_r2_2 <= 0) {
        if (arg0->moveState & 0x10000) {
            var_r2_2 = 0 - var_r2_2;
        }
        arg0->qWorldY -= var_r2_2 << 8;
        if ((s32) arg0->qSpeedAirY < 0) {
            arg0->qSpeedAirY = 0;
        }
    } else if ((s32) arg0->qSpeedAirY >= 0) {
        var_r2_3 = 1;
        if (arg0->moveState & 0x10000) {
            var_r2_3 = 0;
        }
        if (var_r2_3 == 0) {
            var_r0_2 = sub_8011024(2U, arg0, &sp8, &spC);
        } else {
            var_r0_2 = sub_8011024(3U, arg0, &sp8, &spC);
        }
        var_r2_4 = var_r0_2;
        if (var_r2_4 <= 0) {
            if (arg0->moveState & 0x10000) {
                var_r2_4 = 0 - var_r2_4;
            }
            arg0->qWorldY += var_r2_4 << 8;
            arg0->unk26 = sp8;
            arg0->qSpeedAirY = 0;
            temp_r2 = &arg0->Padding8[2];
            *temp_r2 &= 0xFB;
        }
    }
}

void sub_8012BA4(Player *arg0) {
    s32 var_r3;
    u32 temp_r1;
    u32 temp_r3;

    temp_r3 = arg0->moveState;
    if (!(2 & temp_r3)) {
        arg0->unk24 = 6;
        arg0->unk25 = 0xE;
    } else {
        temp_r1 = -3 & temp_r3;
        arg0->moveState = temp_r1;
        arg0->charFlags.anim0 = 0;
        var_r3 = (s8) arg0->unk25 - 0xE;
        if (temp_r1 & 0x10000) {
            var_r3 = 0 - var_r3;
        }
        if ((s32) ((arg0->unk26 + 0x40) << 0x18) <= 0) {
            var_r3 = 0 - var_r3;
        }
        arg0->unk24 = 6;
        arg0->unk25 = 0xE;
        arg0->qWorldY += var_r3 << 8;
    }
    arg0->moveState &= ~0x46;
    arg0->unk2F = 0;
    if ((s32) arg0->charFlags.anim0 > 0xE6) {
        arg0->charFlags.anim0 = 0;
    }
}

void sub_8012C34(Player *arg0) {
    ? sp4;
    s32 var_r0;
    s32 var_r2;
    s32 var_r2_2;
    u32 temp_r1;
    u8 *temp_r1_2;

    var_r2 = 1;
    if (arg0->moveState & 0x10000) {
        var_r2 = 0;
    }
    if (var_r2 == 0) {
        var_r0 = sub_8011024(2U, arg0, &subroutine_arg0);
    } else {
        var_r0 = sub_8011024(3U, arg0, &subroutine_arg0);
    }
    var_r2_2 = var_r0;
    if (var_r2_2 <= 0) {
        if (arg0->moveState & 0x10000) {
            var_r2_2 = 0 - var_r2_2;
        }
        arg0->qWorldY += var_r2_2 << 8;
        arg0->unk26 = subroutine_arg0;
        if (arg0->moveState & 0x800000) {
            SetPlayerCallback(arg0, Player_80077CC);
        } else {
            SetPlayerCallback(arg0, Player_8005380);
        }
        temp_r1 = arg0->moveState;
        if (2 & temp_r1) {
            arg0->moveState = temp_r1 & ~2;
            sub_80042F4(arg0, 0xE);
        }
        temp_r1_2 = &arg0->unk24;
        temp_r1_2->unk0 = 6;
        temp_r1_2->unk1 = 0xE;
        arg0->moveState &= ~0xC;
        arg0->qSpeedAirY = 0;
        arg0->qSpeedGround = (s16) (u16) arg0->qSpeedAirX;
    }
}

void sub_8012CF8(Player *arg0) {
    ? sp4;
    s16 var_r1;
    s32 var_r0;
    s32 var_r2;
    u32 temp_r0;
    u32 temp_r1;
    u32 var_r0_2;
    u8 *temp_r1_2;

    if (!(arg0->moveState & 0x10000)) {
        var_r0 = sub_8011024(2U, arg0, &subroutine_arg0);
    } else {
        var_r0 = sub_8011024(3U, arg0, &subroutine_arg0);
    }
    var_r2 = var_r0;
    if (var_r2 <= 0) {
        if (arg0->moveState & 0x10000) {
            var_r2 = 0 - var_r2;
        }
        arg0->qWorldY -= var_r2 << 8;
        arg0->unk26 = subroutine_arg0;
        if (arg0->moveState & 0x800000) {
            SetPlayerCallback(arg0, Player_80077CC);
        } else {
            SetPlayerCallback(arg0, Player_8005380);
        }
        temp_r1 = arg0->moveState;
        if (2 & temp_r1) {
            arg0->moveState = temp_r1 & ~2;
            sub_80042F4(arg0, 0xE);
        }
        temp_r1_2 = &arg0->unk24;
        temp_r1_2->unk0 = 6;
        temp_r1_2->unk1 = 0xE;
        arg0->moveState &= ~0xC;
        var_r1 = arg0->qSpeedAirY;
        if ((s32) var_r1 < 0) {
            var_r1 = 0 - var_r1;
        }
        arg0->qSpeedGround = var_r1;
        if ((s32) (s8) subroutine_arg0 >= 0) {
            arg0->qSpeedGround = 0 - var_r1;
        }
        temp_r0 = (u32) (arg0->unk2E << 0x19) >> 0x1D;
        switch (temp_r0) {                          /* irregular */
        case 1:
            var_r0_2 = arg0->moveState & ~1;
block_23:
            arg0->moveState = var_r0_2;
            break;
        case 2:
            var_r0_2 = arg0->moveState | 1;
            goto block_23;
        case 3:
            var_r0_2 = arg0->moveState ^ 1;
            goto block_23;
        }
        if (0x80 & arg0->unk2E) {
            arg0->moveState ^= 1;
            arg0->qSpeedGround = 0 - (u16) arg0->qSpeedGround;
        }
    }
}

s32 sub_8012E18(u16 arg0, Player *arg1, u8 *arg2) {
    u16 var_r2;

    var_r2 = arg0;
    if (arg1->moveState & 0x10000) {
        var_r2 = (var_r2 ^ 1) & 1;
    }
    if (var_r2 == 0) {
        sub_8011024(2U, arg1, arg2);
        return;
    }
    sub_8011024(3U, arg1, arg2);
}

s32 sub_8012E54(u8 arg0, Player *arg1) {
    s32 temp_r0_2;
    s32 var_r3;
    u16 var_r0;
    u8 temp_r0;

    temp_r0 = arg0;
    var_r3 = 0;
    arg1->unk29 = temp_r0;
    *((arg1 + 0x29) - 1) = temp_r0;
    temp_r0_2 = (s32) ((temp_r0 + 0x20) & 0xC0) >> 6;
    switch (temp_r0_2) {                            /* irregular */
    case 0:
        var_r0 = 3;
block_11:
        var_r3 = sub_8011024(var_r0, arg1, NULL, NULL);
        break;
    case 1:
        var_r0 = 0;
        goto block_11;
    case 2:
        var_r0 = 2;
        goto block_11;
    case 3:
        var_r0 = 1;
        goto block_11;
    }
    return var_r3;
}

s16 sub_8012EA8(void) {
    return sub_801139C();
}

void sub_8012EB8(Player *p) {
    if ((sub_80114CC() << 0x10) == 0) {
        if ((sub_801139C(p) << 0x10) != 0) {
            p->moveState |= 4;
            SetPlayerCallback(p, Player_800DAF4);
            return;
        }
        p->unk2C = (u8) (-5 & p->unk2C);
        p->moveState &= ~4;
    }
}

void sub_8012F04(void) {
    sub_8011434();
}

void sub_8012F10(Player *arg0) {
    u32 temp_r1;
    u8 *temp_r1_2;

    if (arg0->moveState & 0x800000) {
        SetPlayerCallback(arg0, Player_80077CC);
    } else {
        SetPlayerCallback(arg0, Player_8005380);
    }
    temp_r1 = arg0->moveState;
    if (2 & temp_r1) {
        arg0->moveState = temp_r1 & ~2;
        sub_80042F4(arg0, 0xE);
    }
    temp_r1_2 = &arg0->unk24;
    temp_r1_2->unk0 = 6;
    temp_r1_2->unk1 = 0xE;
    arg0->moveState &= ~0xC;
}

void sub_8012F74(Player *arg0, u8 arg1, s8 arg2) {
    sub_80042F4(arg0, arg2);
    arg0->unk24 = arg1;
    arg0->unk25 = arg2;
}

void sub_8012F94(Player *arg0, u8 arg1, s8 arg2) {
    arg0->unk24 = arg1;
    arg0->unk25 = arg2;
}

void sub_8012FA0(Player *p) {
    sub_80042F4(p, 0xE);
    p->unk24 = 6;
    p->unk25 = 0xE;
}

void sub_8012FC0(Player *p) {
    sub_80042F4(p, 9);
    p->unk24 = 6;
    p->unk25 = 9;
}

void Player_8012FE0(Player *p) {
    p->unk24 = 6;
    p->unk25 = 0xE;
}

void sub_8012FF0(Player *p) {
    p->unk24 = 6;
    p->unk25 = 9;
}

void sub_8013000(void) {
    sub_801139C();
}

void sub_801300C(u16 arg0) {
    Player *temp_r6;
    PlayerSprite *temp_r5;
    Sprite *temp_r4;
    s16 temp_r1;
    s16 temp_r2;
    u16 temp_r7;
    u8 *var_r0;
    u8 var_r0_2;

    temp_r7 = arg0;
    temp_r2 = (s16) arg0;
    temp_r6 = &gPlayers[temp_r2];
    temp_r5 = temp_r6->spriteData;
    temp_r4 = &temp_r5->s;
    if ((u32) gStageData.gameMode <= 5U) {
        if (temp_r2 == 0) {
            var_r0 = (u8 *)0x06010000;
        } else {
            var_r0 = (u8 *)0x06010800;
        }
        goto block_17;
    }
    if (gStageData.gameMode == 6) {
        switch (temp_r2) {                          /* irregular */
        case 0:
            var_r0 = (u8 *)0x06010000;
            goto block_17;
        case 1:
            var_r0 = (u8 *)0x06010800;
            goto block_17;
        case 2:
            var_r0 = (u8 *)0x06011000;
            goto block_17;
        case 3:
            var_r0 = (u8 *)0x06011800;
            goto block_17;
        }
    } else {
        var_r0 = (temp_r2 << 0xB) + 0x06010000;
block_17:
        temp_r5->s.tiles = var_r0;
    }
    temp_r1 = (s16) temp_r7;
    temp_r4->frameFlags = temp_r1 | 0x1020;
    temp_r4->anim = temp_r6->charFlags.anim2;
    temp_r4->x = (s16) ((s32) temp_r6->qWorldX >> 8);
    temp_r4->y = (s16) ((s32) temp_r6->qWorldY >> 8);
    if (gStageData.playerIndex == temp_r1) {
        var_r0_2 = 0x10;
    } else {
        var_r0_2 = temp_r7 + 0x11;
    }
    temp_r4->oamFlags = var_r0_2 << 6;
    temp_r4->qAnimDelay = 0;
    temp_r4->prevAnim = 0xFFFF;
    temp_r4->variant = (u8) temp_r6->charFlags.state1;
    temp_r4->prevVariant = 0xFF;
    temp_r4->animSpeed = 0x10;
    temp_r4->palId = (u8) temp_r7;
    temp_r4->hitboxes[0].index = -1;
    temp_r4->unk28 = -1;
    temp_r5->unk0 = 0;
    temp_r5->unk2 = 0x100;
    temp_r5->base.regionX = 0x100;
    temp_r5->base.regionY = 0;
    temp_r5->unk8 = 0;
}

void sub_801310C(u16 arg0) {
    Player *temp_r1;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r0_4;
    u16 temp_r4;
    u32 *temp_r0;
    u32 temp_r0_2;
    u32 temp_r3;
    u8 var_r0_3;
    void *temp_r2;

    temp_r4 = arg0;
    temp_r1 = &gPlayers[(s16) arg0];
    temp_r0 = &temp_r1->unkE4;
    temp_r3 = *temp_r0;
    temp_r2 = temp_r3 + 0xC;
    temp_r0_2 = (u32) (*(temp_r0 - 0xBA) << 0x1C) >> 0x1C;
    switch (temp_r0_2) {                            /* irregular */
    case 1:
        if ((u32) gStageData.gameMode <= 5U) {
            var_r0 = 0x06011800;
            goto block_7;
        }
        if (gStageData.gameMode == 6) {
            var_r0 = 0x06013000;
block_7:
            temp_r3->unkC = var_r0;
        }
        temp_r2->unkC = 0xAE;
        temp_r2->unk1A = 1;
        var_r0_2 = 2;
block_15:
        temp_r2->unk8 = var_r0_2;
        temp_r2->unk8 = (s32) (temp_r2->unk8 | 0x41020);
        temp_r2->unk10 = (s16) ((s32) temp_r1->qWorldX >> 8);
        temp_r2->unk12 = (s16) ((s32) temp_r1->qWorldY >> 8);
        if (gStageData.playerIndex == (s16) temp_r4) {
            var_r0_3 = 0x10;
        } else {
            var_r0_3 = temp_r4 + 0x11;
        }
        temp_r2->unk14 = (s16) (var_r0_3 << 6);
        temp_r2->unk16 = 0;
        temp_r2->unk1B = 0xFF;
        temp_r2->unk1C = 0x10;
        temp_r2->unk1F = (s8) temp_r4;
        temp_r2->unk20 = -1;
        temp_r2->unk28 = -1;
        temp_r3->unk0 = 0;
        temp_r3->unk2 = 0x100;
        temp_r3->unk4 = 0x100;
        temp_r3->unk6 = 0;
        temp_r3->unk8 = 0;
        return;
    case 2:
        if ((u32) gStageData.gameMode <= 5U) {
            var_r0_4 = 0x06011000;
            goto block_13;
        }
        if (gStageData.gameMode == 6) {
            var_r0_4 = 0x06012800;
block_13:
            temp_r3->unkC = var_r0_4;
        }
        temp_r2->unkC = 0x151;
        temp_r2->unk1A = 1;
        var_r0_2 = 3;
        goto block_15;
    }
}

void sub_801320C(Player *arg0, s32 arg1) {
    Player *temp_r2_3;
    Player *temp_r6;
    s16 temp_r0_3;
    s16 temp_r1;
    s16 temp_r1_2;
    s32 temp_r0;
    s32 var_r0_2;
    s32 var_r7;
    u16 *temp_r0_2;
    u16 temp_r1_4;
    u16 temp_r2;
    u16 temp_r2_2;
    u32 temp_r0_4;
    u32 temp_r1_3;
    u32 temp_r1_5;
    u32 var_r0;
    void *temp_r5;

    temp_r5 = arg1 + 0xC;
    temp_r1 = arg0->charFlags.anim0;
    if (temp_r1 != -1) {
        if (temp_r1 != arg0->charFlags.anim1) {
            temp_r0 = temp_r1 * 4;
            temp_r0_2 = temp_r0 + (&gUnknown_080CE7E2 + 2);
            if ((s16) *temp_r0_2 != -1) {
                arg0->charFlags.anim2 = *(temp_r0 + &gUnknown_080CE7E2);
                arg0->charFlags.state1 = *temp_r0_2;
            }
            temp_r5->unk1C = 0x10;
        }
        temp_r0_3 = arg0->charFlags.anim0;
        switch (temp_r0_3) {                        /* irregular */
        case 0x8:
            arg0->charFlags.anim2 = *(((u32) (arg0->unk2A << 0x1C) >> 0x1B) + gPlayerCharacterIdleAnims) + 8;
            var_r0 = (u32) (arg0->unk2E << 0x1C) >> 0x1C;
block_16:
            arg0->charFlags.state1 = (u16) var_r0;
            sub_8014230(arg0, temp_r5);
            break;
        case 0xFA:
            arg0->charFlags.anim2 = 0x2BD;
            var_r0 = (u32) (arg0->unk2E << 0x1C) >> 0x1C;
            if (var_r0 > 4U) {
                var_r0 = 4;
            }
            goto block_16;
        case 0x9:
            arg0->charFlags.anim2 = *(((u32) (arg0->unk2A << 0x1C) >> 0x1B) + gPlayerCharacterIdleAnims) + 9;
            var_r0 = (u32) (arg0->unk2E << 0x1C) >> 0x1C;
            if (var_r0 > 3U) {
                var_r0 = 3;
            }
            goto block_16;
        default:
            temp_r1_2 = arg0->charFlags.anim0;
            if (((s32) temp_r1_2 <= 0xA4) && (temp_r1_2 != -1)) {
                arg0->charFlags.anim2 = *(((u32) (arg0->unk2A << 0x1C) >> 0x1B) + gPlayerCharacterIdleAnims) + *((temp_r1_2 * 4) + &gUnknown_080CE7E2);
            }
            break;
        }
    }
    if ((0x1C & arg0->unk2B) == 0xC) {
        temp_r2 = arg0->charFlags.anim2;
        temp_r1_3 = arg0->unk2A << 0x1C;
        if ((temp_r2 == (*((temp_r1_3 >> 0x1B) + gPlayerCharacterIdleAnims) + 8)) || (temp_r2 == (*((temp_r1_3 >> 0x1B) + gPlayerCharacterIdleAnims) + 9))) {
            sub_8014230(arg0, temp_r5);
        } else {
            temp_r5->unk1C = 0x10;
        }
    }
    if ((0x40 & arg0->unk2B) || (temp_r5->unkC != arg0->charFlags.anim2) || (temp_r5->unk1A != arg0->charFlags.state1)) {
        arg0->unk2B = (u8) (-0x41 & arg0->unk2B);
        temp_r5->unkC = (u16) arg0->charFlags.anim2;
        temp_r5->unk1A = (u8) arg0->charFlags.state1;
        temp_r5->unk1B = 0xFF;
        temp_r5->unk20 = -1;
        temp_r5->unk28 = -1;
    }
    sub_801409C(arg0);
    var_r7 = 0;
    temp_r6 = &gPlayers[(u32) (arg0->unk2B << 0x1E) >> 0x1E];
    if ((0x1C & temp_r6->unk2B) == 0x14) {

    } else {
        temp_r0_4 = arg0->unk2A << 0x1C;
        temp_r2_2 = temp_r5->unkC;
        if (((temp_r2_2 == (*((temp_r0_4 >> 0x1B) + gPlayerCharacterIdleAnims) + 0x5C)) || (temp_r2_2 == (*((temp_r0_4 >> 0x1B) + gPlayerCharacterIdleAnims) + 0x5D))) && ((temp_r1_4 = temp_r6->charFlags.anim2, (temp_r1_4 == 0x15F)) || (temp_r1_4 == 0x19D) || (temp_r1_4 == 0x160))) {
            var_r7 = 1;
        }
        if ((temp_r2_2 == (*(((u32) (arg0->unk2A << 0x1C) >> 0x1B) + gPlayerCharacterIdleAnims) + 0x5E)) && (temp_r6->charFlags.anim2 == 0x202)) {
            var_r7 = 1;
        }
        if ((temp_r2_2 == (*(((u32) (arg0->unk2A << 0x1C) >> 0x1B) + gPlayerCharacterIdleAnims) + 0x5F)) && (temp_r6->charFlags.anim2 == 0x203)) {
            var_r7 = 2;
        }
        temp_r1_5 = arg0->moveState;
        if ((0x01000000 & temp_r1_5) && (*((((u32) (arg0->unk2B << 0x1E) >> 0x1E) * 0x150) + &gPlayers->moveState) & 0x800000)) {
            var_r7 = 3;
        }
        if (var_r7 != 0) {
            temp_r2_3 = &gPlayers[(u32) (arg0->unk2B << 0x1E) >> 0x1E];
            arg0->qWorldX = temp_r2_3->qWorldX;
            arg0->qWorldY = temp_r2_3->qWorldY;
            arg0->moveState = (-2 & temp_r1_5) | (temp_r2_3->moveState & 1) | temp_r1_5;
            if (var_r7 == 2) {
                arg0->charFlags.state1 = temp_r2_3->charFlags.state1;
                temp_r5->unk1A = (u8) temp_r2_3->charFlags.state1;
            }
            if (var_r7 == 3) {
                if (temp_r2_3->moveState & 1) {
                    var_r0_2 = arg0->qWorldX + 0xFFFFF600;
                } else {
                    var_r0_2 = arg0->qWorldX + 0xA00;
                }
                arg0->qWorldX = var_r0_2;
            }
        }
    }
    arg0->charFlags.anim1 = (s16) (u16) arg0->charFlags.anim0;
}

void sub_801350C(Player *p) {
    Sprite *temp_r0;
    s32 temp_r2_2;
    s32 temp_r3;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r1;
    s32 var_r3;
    u16 temp_r2;
    u16 temp_r2_3;
    u16 temp_r6;
    u16 temp_r7;
    u8 var_r2;

    temp_r0 = &p->spriteData->s;
    temp_r2 = (u16) p->charFlags.anim0;
    temp_r7 = p->charFlags.state1;
    temp_r6 = p->charFlags.anim2 - *(((u32) (p->unk2A << 0x1C) >> 0x1B) + gPlayerCharacterIdleAnims);
    if ((u32) (u16) (temp_r2 - 0x13) <= 1U) {
        if ((temp_r7 == 0) && (temp_r0->frameFlags & 0x4000) && ((u32) (u16) (temp_r6 - 0x13) <= 1U)) {
            p->charFlags.state1 = 1;
            p->moveState |= 2;
            sub_8012FF0(p);
            return;
        }
        if ((s32) p->qSpeedAirY <= 0) {
            return;
        }
        if (temp_r7 != 1) {
            return;
        }
        if ((u32) (u16) (temp_r6 - 0x13) > 1U) {
            return;
        }
        temp_r3 = p->moveState & 0x10000;
        if (temp_r3 != 0) {
            var_r0 = sub_80519EC(((s32) p->qWorldY >> 8) - (s8) (u8) p->unk25, (s32) p->qWorldX >> 8, (s32) p->unk27, -8, NULL, sub_805217C);
        } else {
            var_r0 = sub_80519EC(((s32) p->qWorldY >> 8) + (s8) (u8) p->unk25, (s32) p->qWorldX >> 8, (s32) p->unk27, 8, (void *) temp_r3, sub_805217C);
        }
        if (var_r0 <= 0x20) {
            goto block_27;
        }
    } else if ((temp_r2 == 0x15) && ((s32) p->qSpeedAirY > 0)) {
        if (p->moveState & 0x10000) {
            var_r0_2 = ((s32) p->qWorldY >> 8) - (s8) (u8) p->unk25;
            var_r1 = (s32) p->qWorldX >> 8;
            var_r2 = p->unk27;
            var_r3 = -8;
        } else {
            var_r0_2 = ((s32) p->qWorldY >> 8) + (s8) (u8) p->unk25;
            var_r1 = (s32) p->qWorldX >> 8;
            var_r2 = p->unk27;
            var_r3 = 8;
        }
        temp_r2_2 = sub_80519EC(var_r0_2, var_r1, (s32) var_r2, var_r3, M2C_ERROR(/* Unable to find stack arg 0x0 in block */), M2C_ERROR(/* Unable to find stack arg 0x4 in block */));
        if ((temp_r6 == 0x15) && (temp_r7 == 0)) {
            p->charFlags.state1 = 1;
            return;
        }
        if ((p->charFlags.state1 == 1) && (temp_r6 == 0x15) && (temp_r0->frameFlags & 0x4000)) {
block_27:
            p->charFlags.state1 = 2;
            return;
        }
        if (temp_r2_2 <= 0x20) {
            temp_r2_3 = p->moveState & 0x800000;
            if (temp_r2_3 == 0) {
                p->charFlags.anim2 = *(((u32) (p->unk2A << 0x1C) >> 0x1B) + gPlayerCharacterIdleAnims) + 0x17;
                p->charFlags.state1 = temp_r2_3;
            }
        }
    }
}

void sub_80136DC(u16 arg0) {
    Player *temp_r6;
    PlayerSprite *temp_r0;
    Sprite *temp_r5;
    s16 temp_r0_2;
    s16 temp_r0_3;
    s16 temp_r1_2;
    s16 temp_r1_3;
    s16 temp_r3;
    s32 var_r7;
    u16 temp_r1;
    u16 var_ip;
    u16 var_r0_2;
    u16 var_r1;
    u32 temp_r1_4;
    u32 temp_r2;
    u32 temp_r2_2;
    u32 temp_r2_3;
    u32 var_r0;
    u32 var_r0_3;
    u32 var_r0_4;

    temp_r1 = arg0;
    temp_r3 = (s16) arg0;
    temp_r6 = &gPlayers[temp_r3];
    temp_r0 = temp_r6->spriteData;
    temp_r5 = &temp_r0->s;
    var_ip = 0;
    temp_r5->x = ((s32) temp_r6->qWorldX >> 8) - gCamera.unk0;
    temp_r1_2 = (s16) gCamera.unk4;
    temp_r5->y = ((s32) temp_r6->qWorldY >> 8) - temp_r1_2;
    temp_r0->base.regionY = ((s32) temp_r6->qWorldX >> 8) - gCamera.unk0;
    temp_r0->unk8 = (s16) (((s32) temp_r6->qWorldY >> 8) - temp_r1_2);
    if (gStageData.gameMode == 7) {
        if (gStageData.playerIndex != temp_r3) {
            var_r0 = temp_r5->frameFlags | 0x200;
        } else {
            var_r0 = temp_r5->frameFlags & 0xFFFFFDFF;
        }
        temp_r5->frameFlags = var_r0;
    }
    if ((0x1C & temp_r6->unk2B) == 0xC) {
        var_r1 = temp_r6->charFlags.anim2;
        temp_r2 = temp_r6->unk2A << 0x1C;
        if ((s32) (var_r1 - *((temp_r2 >> 0x1B) + gPlayerCharacterIdleAnims)) <= 0xA4) {
            var_r1 -= *((temp_r2 >> 0x1B) + gPlayerCharacterIdleAnims);
        }
        if ((var_r1 != 8) && (var_r1 != 0x6F) && (var_r1 != 0x8C) && (var_r1 != 0x8D) && (var_r1 != 0x2BD) && (var_r1 != 0x73) && (var_r1 != 0x2BD)) {
            if ((var_r1 == 0x519) && (temp_r6->charFlags.state1 == 0)) {
                goto block_28;
            }
            goto block_27;
        }
        goto block_28;
    }
    temp_r1_3 = temp_r6->charFlags.anim0;
    if ((temp_r1_3 == 8) || (temp_r1_3 == 0x6F) || (temp_r1_3 == 0x8C) || (temp_r1_3 == 0x8D) || (temp_r1_3 == 0xFA) || (temp_r1_3 == 0xB1) || (temp_r1_3 == 0xB2) || (temp_r1_3 == 0x111)) {
        var_ip = 1;
    }
block_27:
    if (var_ip != 0) {
block_28:
        temp_r0->unk0 = (u16) (temp_r6->unk26 * 4);
        temp_r5->frameFlags = (temp_r5->frameFlags & 0xFFFFF3FF & ~0x1F) | ((s16) temp_r1 | 0x20);
        if (!(temp_r6->moveState & 1)) {
            var_r0_2 = 0xFF00;
        } else {
            var_r0_2 = 0x100;
        }
        temp_r0->unk2 = var_r0_2;
        if (temp_r6->moveState & 0x10000) {
            temp_r0->unk2 = (u16) (0 - temp_r0->unk2);
        }
        if ((s32) (s16) temp_r0->unk2 < 0) {
            temp_r0->base.regionY -= 1;
        }
        if (temp_r6->moveState & 0x10000) {
            temp_r0->base.regionX = 0x100;
            temp_r0->unk0 = (u16) ((0xFFFFFF00 - (temp_r0->unk0 + 0x100)) & 0x3FF);
        } else {
            temp_r0->base.regionX = 0x100;
        }
        temp_r0->unk2 = (u16) ((s32) (temp_r6->PaddingA0[0] * (s16) temp_r0->unk2) >> 8);
        temp_r0->base.regionX = (u16) ((s32) ((s16) temp_r0->base.regionX * temp_r6->PaddingA0[2]) >> 8);
        temp_r1_4 = temp_r5->frameFlags & 0xFFFFCFFF;
        temp_r5->frameFlags = temp_r1_4;
        temp_r0_2 = temp_r6->charFlags.anim0;
        if ((temp_r0_2 != 0x6F) && (temp_r0_2 != 0xB1) && (temp_r0_2 != 0xB2)) {
            temp_r5->frameFlags = temp_r1_4 | 0x1000;
        }
        UpdateSpriteAnimation(temp_r5);
        TransformSprite(temp_r5, (SpriteTransform *) temp_r0);
    } else {
        temp_r0->unk0 = var_ip;
        temp_r2_2 = temp_r5->frameFlags & ~0x3F;
        temp_r5->frameFlags = temp_r2_2;
        if (!(temp_r6->moveState & 1)) {
            temp_r5->frameFlags = temp_r2_2 | 0x400;
        } else {
            temp_r5->frameFlags = temp_r2_2 & 0xFFFFFBFF;
            temp_r5->x = (u16) temp_r5->x + 1;
        }
        if (temp_r6->moveState & 0x10000) {
            var_r0_3 = temp_r5->frameFlags | 0x800;
        } else {
            var_r0_3 = temp_r5->frameFlags & 0xFFFFF7FF;
        }
        temp_r5->frameFlags = var_r0_3;
        if (temp_r6->charFlags.anim0 == 0x67) {
            var_r0_4 = temp_r5->frameFlags & 0xFFFFCFFF;
            goto block_53;
        }
        if ((temp_r6->charFlags.anim2 - *(((u32) (temp_r6->unk2A << 0x1C) >> 0x1B) + gPlayerCharacterIdleAnims)) != 0x8E) {
            var_r0_4 = (temp_r5->frameFlags & 0xFFFFCFFF) | 0x1000;
block_53:
            temp_r5->frameFlags = var_r0_4;
        }
        UpdateSpriteAnimation(temp_r5);
    }
    var_r7 = 1;
    temp_r2_3 = temp_r6->moveState;
    if (!(0x100 & temp_r2_3) && ((gStageData.gameMode != 7) || (gStageData.levelTimer != 0))) {
        if (temp_r2_3 & 0x04000000) {

        } else {
            if (!(temp_r2_3 & 0x200)) {
                if ((temp_r6->framesInvulnerable != 0) && (gStageData.timer & 2)) {
                    var_r7 = 0;
                }
                if (((s16) temp_r6->unk66 != 0) && ((temp_r6 != &gPlayers[gStageData.playerIndex]) || (gStageData.timer & 2))) {
                    var_r7 = 0;
                }
            }
            if (gStageData.unk4 == 5) {
                var_r7 = 1;
            }
            goto block_70;
        }
    } else {
block_70:
        if (var_r7 != 0) {
            DisplaySprite(temp_r5);
        }
    }
    if ((gStageData.gameMode != 7) && (((temp_r0_3 = (s16) temp_r1, (temp_r0_3 == gStageData.playerIndex)) && (gStageData.zone != 8)) || ((gStageData.zone == 8) && (temp_r0_3 == 0)))) {
        sub_8019858(temp_r6);
    }
}

void sub_8013A68(s16 arg0) {
    Player *temp_r5;
    Sprite *temp_r6;
    s16 temp_r0_3;
    s16 temp_r1_4;
    s32 temp_r2_2;
    u16 temp_r0_2;
    u16 temp_r2;
    u16 temp_r3;
    u16 var_r0;
    u16 var_r0_2;
    u32 temp_r0;
    u32 temp_r1_3;
    u32 temp_r1_5;
    u8 temp_r1;
    u8 temp_r1_2;
    u8 var_r1;

    temp_r5 = &gPlayers[arg0];
    temp_r0 = temp_r5->unkE4;
    temp_r6 = temp_r0 + 0xC;
    if ((u32) (u8) ((0xF & temp_r5->unk2A) - 1) > 1U) {
        return;
    }
    if (temp_r5->moveState & 0x01000000) {
        return;
    }
    temp_r1 = temp_r5->unk2C;
    if (0x40 & temp_r1) {
        temp_r5->unk2C = (u8) (-0x41 & temp_r1);
        return;
    }
    temp_r0->unk6 = (u16) (((s32) temp_r5->qWorldX >> 8) - (s16) gCamera.unk0);
    temp_r0->unk8 = (s16) (((s32) temp_r5->qWorldY >> 8) - (s16) gCamera.unk4);
    temp_r6->animSpeed = 0x10;
    if (temp_r5->moveState & 0x80) {
        temp_r6->animSpeed = 8;
    }
    temp_r3 = temp_r5->charFlags.state1;
    temp_r0_2 = temp_r5->charFlags.anim2 - *(((u32) (temp_r5->unk2A << 0x1C) >> 0x1B) + gPlayerCharacterIdleAnims);
    temp_r2 = temp_r0_2;
    if ((((u32) ((u32) ((temp_r0_2 << 0x10) + 0xFFED0000) >> 0x10) > 1U) || (temp_r3 != 1)) && ((temp_r2 != 0xB) || (temp_r3 != 0))) {
        if (temp_r2 != 0x83) {
            return;
        }
        if (temp_r3 != 0) {
            return;
        }
        goto block_16;
    }
block_16:
    temp_r2_2 = 0xF & temp_r5->unk2A;
    switch (temp_r2_2) {                            /* irregular */
    case 1:
        temp_r1_2 = temp_r5->unk26;
        temp_r5->Padding8[4] = temp_r1_2;
        temp_r0->unk0 = (u16) (temp_r1_2 * 4);
        temp_r6->frameFlags = (temp_r6->frameFlags & ~0x1F) | 0x24;
        if (!(temp_r5->moveState & temp_r2_2)) {
            var_r0 = 0xFF00;
        } else {
            var_r0 = 0x100;
        }
        temp_r0->unk2 = var_r0;
        if (temp_r5->moveState & 0x10000) {
            temp_r0->unk2 = (u16) (0 - temp_r0->unk2);
        }
        if ((s32) (s16) temp_r0->unk2 < 0) {
            temp_r0->unk6 = (u16) (temp_r0->unk6 - 1);
        }
        if (temp_r5->moveState & 0x10000) {
            temp_r0->unk4 = 0x100;
            temp_r0->unk0 = (u16) ((0xFFFFFF00 - (temp_r0->unk0 + 0x100)) & 0x3FF);
        } else {
            temp_r0->unk4 = 0x100;
        }
        temp_r0->unk2 = (u16) ((s32) (temp_r5->PaddingA0[0] * (s16) temp_r0->unk2) >> 8);
        temp_r0->unk4 = (s16) ((s32) (temp_r0->unk4 * temp_r5->PaddingA0[2]) >> 8);
        UpdateSpriteAnimation(temp_r6);
        TransformSprite(temp_r6, (SpriteTransform *) temp_r0);
        temp_r1_3 = temp_r5->moveState;
        if (!(0x100 & temp_r1_3)) {
            if (temp_r1_3 & 0x04000000) {
                return;
            }
            if ((temp_r5->framesInvulnerable != 0) && (gStageData.timer & 2)) {
                return;
            }
            goto block_34;
        }
block_34:
        DisplaySprite(temp_r6);
        return;
    case 2:
        temp_r0_3 = temp_r5->qSpeedAirX;
        temp_r1_4 = temp_r5->qSpeedAirY;
        if ((temp_r0_3 != 0) || (temp_r1_4 != 0)) {
            var_r1 = ((u32) (ArcTan2(temp_r0_3, temp_r1_4) << 0x10) >> 0x18) + 0x40;
        } else {
            var_r1 = 0x40;
            if (temp_r5->moveState & 1) {
                var_r1 = 0xC0;
            }
        }
        temp_r5->Padding8[1] = var_r1;
        temp_r0->unk0 = (u16) (var_r1 * 4);
        temp_r6->frameFlags = (temp_r6->frameFlags & ~0x1F) | 0x25;
        if (!(temp_r5->moveState & 1)) {
            var_r0_2 = 0xFF00;
        } else {
            var_r0_2 = 0x100;
        }
        temp_r0->unk2 = var_r0_2;
        if (temp_r5->moveState & 0x10000) {
            temp_r0->unk2 = (u16) (0 - temp_r0->unk2);
        }
        if ((s32) (s16) temp_r0->unk2 < 0) {
            temp_r0->unk6 = (u16) (temp_r0->unk6 - 1);
        }
        if (temp_r5->moveState & 0x10000) {
            temp_r0->unk4 = 0x100;
            temp_r0->unk0 = (u16) ((0xFFFFFF00 - (temp_r0->unk0 + 0x100)) & 0x3FF);
        } else {
            temp_r0->unk4 = 0x100;
        }
        temp_r0->unk2 = (u16) ((s32) (temp_r5->PaddingA0[0] * (s16) temp_r0->unk2) >> 8);
        temp_r0->unk4 = (s16) ((s32) (temp_r0->unk4 * temp_r5->PaddingA0[2]) >> 8);
        UpdateSpriteAnimation(temp_r6);
        TransformSprite(temp_r6, (SpriteTransform *) temp_r0);
        temp_r1_5 = temp_r5->moveState;
        if ((0x100 & temp_r1_5) || (!(temp_r1_5 & 0x04000000) && ((temp_r5->framesInvulnerable == 0) || !(gStageData.timer & 2)))) {
            DisplaySprite(temp_r6);
        }
        return;
    }
}

void sub_8013D70(s32 arg0, s32 arg1) {
    ? *var_r0_2;
    Player *temp_r4;
    s32 *temp_r2;
    s32 *temp_r2_2;
    s32 temp_r1;
    s32 temp_r1_2;
    u16 var_r0;
    u32 *var_r1;
    u32 temp_r0;
    u32 temp_r0_2;
    u8 temp_r7;

    temp_r4 = &gPlayers[arg1];
    temp_r7 = gStageData.entryIndex;
    if ((u32) gStageData.gameMode <= 5U) {
        temp_r2 = (arg0 * 4) + &gUnknown_080D1750;
        temp_r1 = gStageData.entryIndex * 4;
        gStageData.respawnX = *(temp_r1 + *temp_r2);
        var_r0 = (temp_r1 + *temp_r2)->unk2;
        goto block_6;
    }
    if (gStageData.gameMode != 7) {
        temp_r2_2 = (arg0 * 4) + &gUnknown_080D1750;
        temp_r1_2 = gStageData.entryIndex * 4;
        gStageData.respawnX = *(temp_r1_2 + *temp_r2_2);
        var_r0 = (temp_r1_2 + *temp_r2_2)->unk2;
        goto block_6;
    }
    memcpy(&subroutine_arg0, &gUnknown_080CE6A8, 0x10);
    if (gStageData.playerIndex == arg1) {
        gStageData.respawnX = (&subroutine_arg0)[temp_r7];
        var_r0 = *(&subroutine_arg0 + 2 + (temp_r7 * 4));
block_6:
        gStageData.respawnY = var_r0;
    }
    gStageData.unk24 = 0;
    gStageData.unk20 = 0;
    temp_r4->qSpeedGround = 0;
    if ((gStageData.gameMode == 2) && (arg1 == 0)) {
        temp_r0 = arg0 - 0xD;
        switch (temp_r0) {
        case 0:
        case 11:
        case 22:
        case 32:
        case 42:
            temp_r4->qSpeedGround = 0;
            break;
        }
    }
    temp_r4->qWorldX = -1;
    temp_r4->qWorldY = -1;
    temp_r4->spriteData = (arg1 * 0x3C) + &gUnknown_03001B00;
    if (gStageData.gameMode != 7) {
        temp_r0_2 = (u32) (temp_r4->unk2A << 0x1C) >> 0x1C;
        if (temp_r0_2 != 1) {
            if (temp_r0_2 == 2) {
                var_r1 = &temp_r4->unkE4;
                var_r0_2 = &gUnknown_030010D0;
            } else {
                goto block_17;
            }
        } else {
            var_r1 = &temp_r4->unkE4;
            var_r0_2 = &gUnknown_0300110C;
        }
    } else {
block_17:
        var_r1 = &temp_r4->unkE4;
        var_r0_2 = NULL;
    }
    *var_r1 = (u32) var_r0_2;
}

void sub_8013F4C(Player *arg0) {
    s32 temp_r0_12;
    s32 var_r2;
    s8 *temp_r4;
    s8 *var_r1_2;
    void (*var_r1)(Player *);
    void *temp_r0;
    void *temp_r0_10;
    void *temp_r0_11;
    void *temp_r0_2;
    void *temp_r0_3;
    void *temp_r0_4;
    void *temp_r0_5;
    void *temp_r0_6;
    void *temp_r0_7;
    void *temp_r0_8;
    void *temp_r0_9;
    void *temp_r1;
    void *temp_r1_2;
    void *temp_r1_3;
    void *temp_r1_4;
    void *temp_r1_5;

    arg0->qWorldX = gStageData.respawnX << 8;
    arg0->qWorldY = gStageData.respawnY << 8;
    if ((gStageData.gameMode != 7) && (gStageData.zone == 8)) {
        var_r1 = sub_800F7C0;
        if (arg0 == gPlayers) {
            var_r1 = sub_800F22C;
        }
        arg0->callback = var_r1;
    } else {
        arg0->callback = Player_800522C;
    }
    arg0->qSpeedAirX = 0;
    arg0->qSpeedAirY = 0;
    arg0->moveState = 0x08000000;
    if (((gStageData.currMapIndex == 0xB) && (gStageData.entryIndex == 0)) || ((gStageData.currMapIndex == 1) && (gStageData.entryIndex == 1))) {
        arg0->moveState |= 1;
    }
    temp_r1 = arg0 + 0x24;
    arg0->unk24 = 6;
    arg0->unk25 = 0xE;
    temp_r1_2 = temp_r1 + 3;
    temp_r1->unk3 = 1;
    temp_r1_3 = temp_r1_2 + 0x61;
    temp_r1_2->unk61 = 0x980;
    temp_r1_4 = temp_r1_3 + 4;
    temp_r1_3->unk4 = 0x780;
    temp_r1_5 = temp_r1_4 + 4;
    temp_r1_4->unk4 = 8;
    temp_r1_5->unk4 = 0x40;
    arg0->charFlags.anim0 = 0;
    arg0->charFlags.anim1 = -1;
    arg0->charFlags.anim2 = -1U;
    arg0->charFlags.state1 = -1U;
    temp_r0 = arg0 + 0x40;
    arg0->unk40 = 0;
    temp_r0_2 = temp_r0 + 2;
    temp_r0->unk2 = 0;
    temp_r0_3 = temp_r0_2 + 2;
    temp_r0_2->unk2 = 0;
    temp_r0_4 = temp_r0_3 + 2;
    temp_r0_3->unk2 = 0;
    temp_r0_5 = temp_r0_4 + 2;
    temp_r0_4->unk2 = 0;
    temp_r0_6 = temp_r0_5 + 2;
    temp_r0_5->unk2 = 0;
    temp_r0_6->unk2 = 0;
    (temp_r0_6 + 2)->unk2 = 0;
    *((temp_r1_5 + 4) - 0x42) = 0x168;
    arg0->unk54 = 0;
    (arg0 + 0x54)->unk4 = 0x3C;
    arg0->filler58[1] = 0xA;
    temp_r0_7 = arg0 + 0x56;
    arg0->unk56 = 0xE;
    temp_r0_7->unk1 = 0x3C;
    temp_r0_8 = (temp_r0_7 + 1) - 7;
    temp_r0_8->unk0 = 0;
    temp_r0_8->unkE = 0;
    temp_r0_9 = (temp_r0_8 + 0xE) - 4;
    temp_r0_9->unk0 = 0;
    temp_r0_10 = temp_r0_9 + 1;
    temp_r0_9->unk1 = 0;
    temp_r0_11 = temp_r0_10 + 1;
    temp_r0_10->unk1 = 0;
    temp_r0_11->unk44 = 0x100;
    (temp_r0_11 + 0x44)->unk2 = 0x100;
    if (gStageData.gameMode != 7) {
        sub_8014258(arg0);
    }
    var_r1_2 = &arg0->unk78;
    var_r2 = 3;
    temp_r4 = var_r1_2;
    do {
        *var_r1_2 = 0;
        var_r1_2 += 4;
        temp_r0_12 = var_r2;
        var_r2 -= 1;
    } while (temp_r0_12 != 0);
    *temp_r4 = 0x7F;
}

void sub_801409C(Player *arg0) {
    Player *temp_r5;
    s16 temp_r0;
    s16 temp_r0_2;
    s16 temp_r0_3;
    s16 temp_r0_4;
    s16 temp_r0_5;
    s16 temp_r0_6;
    u16 temp_r1;
    u16 temp_r1_2;
    u16 temp_r1_3;
    u16 temp_r1_4;

    temp_r5 = &gPlayers[(u32) (arg0->unk2B << 0x1E) >> 0x1E];
    if ((arg0->charFlags.anim1 == 0xCB) && (arg0->charFlags.anim0 != 0xCB)) {
        Player_StopSong(arg0, 0x214U);
    }
    if ((arg0->charFlags.anim1 == 0x5C) && ((arg0->charFlags.anim0 != 0x5C) || (temp_r5->charFlags.anim0 == 0xD0))) {
        Player_StopSong(arg0, SE_TAILS__FLYING);
    }
    temp_r1 = (u16) arg0->charFlags.anim1;
    if (((u32) (u16) (temp_r1 - 0xCE) <= 1U) || (temp_r0 = (s16) temp_r1, (temp_r0 == 0xD1)) || (temp_r0 == 0xD2) || (temp_r0 == 0xD5) || (temp_r0 == 0xD4)) {
        temp_r1_2 = (u16) arg0->charFlags.anim0;
        if ((u32) (u16) (temp_r1_2 - 0xCE) > 1U) {
            temp_r0_2 = (s16) temp_r1_2;
            if ((temp_r0_2 != 0xD1) && (temp_r0_2 != 0xD2) && (temp_r0_2 != 0xD5) && (temp_r0_2 != 0xD4)) {
                Player_StopSong(arg0, SE_TAILS__FLYING);
            }
        }
    }
    temp_r0_3 = arg0->charFlags.anim1;
    if ((temp_r0_3 == 0x6F) || (temp_r0_3 == 0xB1) || (temp_r0_3 == 0xB2)) {
        temp_r0_4 = arg0->charFlags.anim0;
        if ((temp_r0_4 != 0x6F) && (temp_r0_4 != 0xB1) && (temp_r0_4 != 0xB2)) {
            Player_StopSong(arg0, SE_GRINDING);
        }
    }
    temp_r1_3 = (u16) arg0->charFlags.anim1;
    if (((u32) (u16) (temp_r1_3 - 0xD6) <= 1U) || (temp_r0_5 = (s16) temp_r1_3, (temp_r0_5 == 0xD9)) || (temp_r0_5 == 0xDA)) {
        temp_r1_4 = (u16) arg0->charFlags.anim0;
        if ((u32) (u16) (temp_r1_4 - 0xD6) > 1U) {
            temp_r0_6 = (s16) temp_r1_4;
            if ((temp_r0_6 != 0xD9) && (temp_r0_6 != 0xDA)) {
                Player_StopSong(arg0, 0x21AU);
            }
        }
    }
    if (((u32) (u16) ((u16) arg0->charFlags.anim1 - 0xBC) <= 1U) && ((u32) (u16) ((u16) arg0->charFlags.anim0 - 0xBC) > 1U)) {
        Player_StopSong(arg0, SE_CREAM__FLYING);
    }
    if ((arg0->charFlags.anim1 == 0xF7) && (arg0->charFlags.anim0 != 0xF7)) {
        Player_StopSong(arg0, 0x211U);
    }
}

void sub_80141EC(void *arg0, u8 arg1, u8 arg2) {
    s32 var_r0;

    memcpy(&subroutine_arg0, &gUnknown_080CE644, 0x64);
    if (gStageData.gameMode != 7) {
        var_r0 = *((((arg1 * 5) + arg2) * 4) + sp);
    } else {
        var_r0 = 0x42;
    }
    arg0->unkC = var_r0;
}

void sub_8014230(Player *arg0, void *arg1) {
    s16 temp_r0;
    s32 var_r0;

    temp_r0 = arg0->qSpeedGround;
    var_r0 = (temp_r0 >> 5) + (temp_r0 >> 6);
    if (var_r0 < 0) {
        var_r0 = 0 - var_r0;
    }
    if (var_r0 > 7) {
        if (var_r0 > 0x80) {
            var_r0 = 0x80;
        }
    } else {
        var_r0 = 8;
    }
    arg1->unk1C = (s8) var_r0;
}

void sub_8014258(Player *arg0) {
    s8 *var_r2;
    s8 var_r0;
    u16 temp_r3;

    temp_r3 = gStageData.rings;
    if (arg0->unkC & 1) {
        if ((u32) temp_r3 > 0x95U) {
            var_r2 = arg0 + 0x2D;
            var_r0 = (0xF & arg0->unk2D) | 0x40;
        } else if ((u32) temp_r3 > 0x63U) {
            var_r2 = arg0 + 0x2D;
            var_r0 = (0xF & arg0->unk2D) | 0x30;
        } else if ((u32) temp_r3 > 0x31U) {
            var_r2 = arg0 + 0x2D;
            var_r0 = (0xF & arg0->unk2D) | 0x20;
        } else if ((u32) temp_r3 > 0xAU) {
            var_r2 = arg0 + 0x2D;
            var_r0 = (0xF & arg0->unk2D) | 0x10;
        } else {
            goto block_9;
        }
    } else {
block_9:
        var_r2 = arg0 + 0x2D;
        var_r0 = 0xF & arg0->unk2D;
    }
    *var_r2 = var_r0;
}

void sub_80142CC(Player *arg0) {
    s32 *temp_r1;
    s32 *temp_r4;
    s32 *temp_r5;
    s32 *var_r2;
    s32 temp_r2_2;
    s32 var_r0;
    u32 temp_r2;
    u8 *var_r1;
    void *temp_r1_2;

    if (gStageData.gameMode != 7) {
        temp_r2 = arg0->moveState;
        if ((0x80 & arg0->unk2B) && (arg0->unkC & 1) && !(0x800000 & temp_r2)) {
            var_r2 = &arg0->unk8C;
            *var_r2 = 0xA00;
            var_r1 = &arg0->filler79[0xF];
            var_r0 = 0xC00;
        } else if (temp_r2 & 2) {
            var_r2 = &arg0->unk8C;
            *var_r2 = 0xA00;
            var_r1 = &arg0->filler79[0xF];
            var_r0 = 0xC00;
        } else {
            var_r2 = &arg0->unk8C;
            *var_r2 = 0x780;
            var_r1 = &arg0->filler79[0xF];
            var_r0 = 0x980;
        }
        *var_r1 = var_r0;
        temp_r4 = &arg0->unk90;
        temp_r2_2 = ((u8) arg0->unk2D >> 4) * 4;
        *temp_r4 = (s32) *(temp_r2_2 + &gUnknown_080CECB2);
        temp_r5 = &arg0->unk94;
        *temp_r5 = (s32) *(temp_r2_2 + (&gUnknown_080CECB2 + 2));
        if ((s16) arg0->unk5E != 0) {
            *temp_r4 *= 2;
            *temp_r5 *= 2;
            return;
        }
        if ((gStageData.gameMode == 6) && ((s16) arg0->unk60 != 0)) {
            *var_r2 = (s32) *var_r2 >> 2;
            *var_r1 = (s32) ((s32) *var_r1 >> 2);
            *temp_r4 = (s32) *temp_r4 >> 1;
            *temp_r5 = (s32) *temp_r5 >> 1;
        }
    } else {
        temp_r1 = &arg0->unk8C;
        *temp_r1 = 0x780;
        temp_r1_2 = temp_r1 - 4;
        temp_r1_2->unk0 = 0x980;
        temp_r1_2->unk8 = 0xC;
        (temp_r1_2 + 8)->unk4 = 0x40;
    }
}

void sub_80143E0(Player *arg0) {
    s16 var_r1;
    s16 var_r1_2;
    u8 temp_r2;

    if (arg0->unkC & 1) {
        temp_r2 = 0x80 & arg0->unk2B;
        if (temp_r2 != 0) {
            if (!(arg0->moveState & 4)) {
                arg0->boostEffectCounter = *((((u8) arg0->unk2D >> 4) * 2) + &gUnknown_080CECC6);
                var_r1 = arg0->qSpeedGround;
                if ((s32) var_r1 < 0) {
                    var_r1 = 0 - var_r1;
                }
                if ((s32) var_r1 <= 0x4BF) {
                    Player_BoostModeDisengage(arg0);
                }
            }
        } else if (!(arg0->moveState & 4)) {
            var_r1_2 = arg0->qSpeedGround;
            if ((s32) var_r1_2 < 0) {
                var_r1_2 = 0 - var_r1_2;
            }
            if ((s32) var_r1_2 >= (s32) arg0->unk8C) {
                if ((s32) (s16) arg0->boostEffectCounter >= (s32) *((((u8) arg0->unk2D >> 4) * 2) + &gUnknown_080CECC6)) {
                    Player_BoostModeEngage(arg0);
                    if ((0x1C & arg0->unk2B) == 4) {
                        gCamera.unk20 = 0x400;
                        Player_PlaySong(arg0, 0xDDU);
                    }
                }
            } else {
                goto block_14;
            }
        } else {
block_14:
            arg0->boostEffectCounter = (u16) temp_r2;
        }
    }
}

void sub_80144B4(Player *arg0) {
    s16 var_r3;
    s32 var_r0_2;
    s32 var_r1;
    s8 *var_r2;
    s8 var_r0;

    var_r3 = arg0->qSpeedGround;
    if ((s32) var_r3 < 0) {
        var_r3 = 0 - var_r3;
    }
    if ((s32) var_r3 <= 0x140) {
        var_r2 = arg0 + 0x2E;
        var_r0 = -0x10 & arg0->unk2E;
    } else {
        if ((s32) var_r3 <= 0x280) {
            var_r2 = arg0 + 0x2E;
            var_r0_2 = -0x10 & arg0->unk2E;
            var_r1 = 1;
        } else if ((s32) var_r3 <= 0x400) {
            var_r2 = arg0 + 0x2E;
            var_r0_2 = -0x10 & arg0->unk2E;
            var_r1 = 2;
        } else if (((s32) var_r3 <= 0x700) || (arg0->moveState & 0x800000)) {
            var_r2 = arg0 + 0x2E;
            var_r0_2 = -0x10 & arg0->unk2E;
            var_r1 = 3;
        } else if ((s32) var_r3 <= 0x900) {
            var_r2 = arg0 + 0x2E;
            var_r0_2 = -0x10 & arg0->unk2E;
            var_r1 = 4;
        } else {
            var_r2 = arg0 + 0x2E;
            var_r0_2 = -0x10 & arg0->unk2E;
            var_r1 = 5;
        }
        var_r0 = var_r0_2 | var_r1;
    }
    *var_r2 = var_r0;
}

void Player_8014550(Player *p) {
    s16 *temp_r0;
    s32 temp_r3;
    u16 temp_r1;
    u16 temp_r6;
    u8 *temp_r5;
    u8 temp_r2;

    if (((u32) (u8) (gStageData.unk4 - 5) > 1U) && (temp_r0 = &p->framesInvulnerable, ((s32) temp_r0->unk0 <= 0)) && ((s32) temp_r0->unk2 <= 0)) {
        if (p->moveState & 0x20000) {
            p->unk27 = 1;
            Player_StopSong(p, SE_GRINDING);
            p->moveState &= 0xFFFDFFFF;
        }
        p->qCamOffsetY = 0;
        if (gStageData.gameMode != 7) {
            Player_BoostModeDisengage(p);
            temp_r3 = 0x1C & p->unk2B;
            if ((temp_r3 != 8) && ((u32) (u8) (gStageData.act - 1) > 1U) && (gStageData.act != 8) && (gStageData.act != 9)) {
                temp_r5 = &p->unk13C;
                temp_r2 = *temp_r5;
                temp_r1 = 0x30 & temp_r2;
                if (temp_r1 != 0) {
                    *temp_r5 = 0xCF & temp_r2;
                    goto block_18;
                }
                if (gStageData.rings == 0) {
                    Player_HitWithoutRingsUpdate(p);
                    return;
                }
                if (temp_r3 == 4) {
                    temp_r6 = gStageData.rings;
                    gStageData.rings = temp_r1;
                    sub_802AE64(p, (s16) temp_r6);
                    if (((u32) gStageData.gameMode > 4U) && ((0x1C & p->unk2B) == 4)) {
                        sub_80274AC(temp_r6, gStageData.rings);
                    }
                }
                goto block_18;
            }
        }
block_18:
        p->moveState &= ~0x20;
        p->sprColliding = NULL;
        SetPlayerCallback(p, Player_8008CD0);
        temp_r0->unk0 = 0x78;
    }
}

void sub_8014670(Player *p) {
    s16 *temp_r1;
    s16 *temp_r1_2;
    s16 *temp_r1_5;
    s16 temp_r0;
    u16 *temp_r1_3;
    u16 *temp_r1_4;
    u16 *temp_r2_2;
    u8 *temp_r2;

    if (gStageData.unk4 == 3) {
        if (p->charFlags.anim0 != 0x66) {
            temp_r1 = &p->framesInvulnerable;
            if ((s32) *temp_r1 > 0) {
                *temp_r1 = (u16) *temp_r1 - 1;
            }
        }
        temp_r1_2 = &p->framesInvincible;
        if ((s32) *temp_r1_2 > 0) {
            temp_r0 = (u16) *temp_r1_2 - 1;
            *temp_r1_2 = temp_r0;
            if ((temp_r0 << 0x10) == 0) {
                temp_r2 = &p->unk13C;
                *temp_r2 &= 0xBF;
            }
        }
        temp_r1_3 = &p->unk5E;
        if ((s32) (s16) *temp_r1_3 > 0) {
            *temp_r1_3 -= 1;
        }
        temp_r1_4 = &p->unk60;
        if ((s32) (s16) *temp_r1_4 > 0) {
            *temp_r1_4 -= 1;
        }
        temp_r1_5 = &p->unk62;
        if ((s32) *temp_r1_5 > 0) {
            *temp_r1_5 = (u16) *temp_r1_5 - 1;
        }
        temp_r2_2 = &p->unk66;
        if ((s32) (s16) *temp_r2_2 > 0) {
            *temp_r2_2 -= 1;
        }
    }
}

void sub_8014710(Player *arg0) {
    u8 temp_r0;

    if (((0x1C & arg0->unk2B) == 4) && (gStageData.unk4 == 3) && !(arg0->unkC & 0x40000) && !(arg0->moveState & 0x100)) {
        if (((s8) arg0->unk57 == 0) || (temp_r0 = arg0->unk57 - 1, arg0->unk57 = temp_r0, ((temp_r0 << 0x18) == 0))) {
            if ((s8) arg0->unk56 == 0) {
                goto block_10;
            }
            arg0->unk56 -= 1;
            arg0->unk57 = 0x78;
            sub_801782C(arg0, (s8) arg0->unk56);
            goto block_9;
        }
block_9:
        if (0 != 0) {
block_10:
            Player_PlaySong(arg0, SE_157);
            Player_HitWithoutRings(arg0);
        }
    }
}

void Player_801479C(Player *p) {
    s16 temp_r1;
    s16 temp_r3;
    s16 temp_r4_2;
    s32 temp_r4;
    u8 *temp_r0;
    u8 temp_r3_2;

    temp_r0 = &p->filler79[0xF];
    temp_r4 = *temp_r0;
    temp_r3 = (s16) *temp_r0;
    if ((s32) p->qSpeedGround > (s32) temp_r3) {
        p->qSpeedGround = (s16) temp_r4;
    } else if ((s64) (p->qSpeedGround + temp_r3) < 0) {
        p->qSpeedGround = 0 - temp_r4;
    }
    temp_r4_2 = p->qSpeedGround;
    temp_r3_2 = p->unk26;
    p->qSpeedAirX = (s16) ((s32) (temp_r4_2 * ((s32) (*((temp_r3_2 * 8) + 0x200 + gSineTable) << 0x10) >> 0x16)) >> 8);
    temp_r1 = p->moveState & 4;
    if (temp_r1 == 0) {
        p->qSpeedAirY = temp_r1;
    }
    p->qSpeedAirY = ((s32) (temp_r4_2 * ((s32) (*((temp_r3_2 * 8) + gSineTable) << 0x10) >> 0x16)) >> 8) + (u16) p->qSpeedAirY;
}

s16 sub_801480C(Player *p) {
    u32 temp_r1;
    u32 temp_r1_2;
    u8 temp_r6;
    u8 var_r5;
    void (*var_r1)(Player *);

    var_r5 = p->unk26;
    if (!(gStageData.buttonConfig.jump & p->keyInput2)) {
        goto block_29;
    }
    temp_r6 = sub_8031BAC(p);
    if (temp_r6 == 2) {
        goto block_29;
    }
    if (p->moveState & 0x10000) {
        var_r5 = ((u32) (0 - ((var_r5 + 0x40) << 0x18)) >> 0x18) - 0x40;
    }
    if (sub_8012E54((u8) (var_r5 + 0x80), p) > 3) {
        if (gStageData.gameMode != 7) {
            if (p->moveState & 0x800000) {
                if (temp_r6 != 0) {
                    p->qWorldY += 0xFFFFFE00;
                }
                var_r1 = Player_8007EAC;
            } else {
                temp_r1 = p->unkC;
                if (0x40 & temp_r1) {
                    if (temp_r6 != 0) {
                        p->qWorldY += 0xFFFFFE00;
                    }
                    var_r1 = Player_8006250;
                } else if (((temp_r1 & 6) == 4) && (0x80 & p->keyInput)) {
                    var_r1 = sub_801DFC4;
                } else {
                    if (temp_r6 != 0) {
                        p->qWorldY += 0xFFFFFE00;
                    }
                    var_r1 = Player_8006310;
                }
            }
            SetPlayerCallback(p, var_r1);
        } else {
            if (temp_r6 != 0) {
                p->qWorldY += 0xFFFFFE00;
            }
            SetPlayerCallback(p, Player_8006250);
        }
        temp_r1_2 = p->moveState;
        if (0x20 & temp_r1_2) {
            p->moveState = temp_r1_2 & ~0x20;
            p->sprColliding = NULL;
        }
        return 1;
    }
block_29:
    return 0;
}

void sub_8014940(Player *p) {
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_6;
    s32 temp_r0_7;
    s32 temp_r1_2;
    s32 temp_r5;
    s32 temp_r6;
    u16 temp_r0;
    u16 temp_r0_4;
    u16 temp_r0_5;
    u16 temp_r0_8;
    u16 temp_r4;
    u16 var_r2;
    u32 temp_r1;
    u32 var_r0;

    temp_r5 = p->unk90 * 2;
    temp_r6 = p->unk8C;
    if (p->charFlags.anim0 != 0x66) {
        temp_r1 = p->moveState;
        if (!(8 & temp_r1)) {
            var_r2 = (u16) p->qSpeedAirX;
            temp_r4 = p->keyInput;
            if (0x20 & temp_r4) {
                if (!(0x2000 & temp_r1)) {
                    p->moveState = temp_r1 | 1;
                }
                temp_r0 = (s16) var_r2 - temp_r5;
                temp_r0_2 = temp_r0 << 0x10;
                var_r2 = temp_r0;
                temp_r0_3 = temp_r0_2 >> 0x10;
                temp_r1_2 = 0 - temp_r6;
                if (temp_r0_3 < temp_r1_2) {
                    temp_r0_4 = temp_r0_3 + temp_r5;
                    var_r2 = temp_r0_4;
                    if ((s32) (s16) temp_r0_4 > temp_r1_2) {
                        var_r0 = temp_r1_2 << 0x10;
                        goto block_14;
                    }
                }
            } else if (0x10 & temp_r4) {
                if (!(0x2000 & temp_r1)) {
                    p->moveState = temp_r1 & ~1;
                }
                temp_r0_5 = (s16) var_r2 + temp_r5;
                temp_r0_6 = temp_r0_5 << 0x10;
                var_r2 = temp_r0_5;
                temp_r0_7 = temp_r0_6 >> 0x10;
                if (temp_r0_7 > temp_r6) {
                    temp_r0_8 = temp_r0_7 - temp_r5;
                    var_r2 = temp_r0_8;
                    if ((s32) (s16) temp_r0_8 < temp_r6) {
                        var_r0 = temp_r6 << 0x10;
block_14:
                        var_r2 = (u16) (var_r0 >> 0x10);
                    }
                }
            }
            p->qSpeedAirX = (s16) var_r2;
        }
    }
}

void Player_80149E4(Player *p) {
    s16 temp_r0;
    u16 temp_r2;
    u32 temp_r0_2;
    u32 var_r1;

    temp_r2 = (u16) p->qSpeedAirY;
    var_r1 = ((s32) (0 - (p->moveState & 0x10000)) >> 0x1F) & 0x80;
    temp_r0 = p->qSpeedAirX;
    if ((temp_r0 != 0) || (temp_r2 != 0)) {
        var_r1 = (u32) (ArcTan2(temp_r0, (s16) temp_r2) << 0x10) >> 0x18;
    }
    temp_r0_2 = (u32) (((var_r1 - 0x20) & ~0x3F) << 0x18) >> 0x1E;
    switch (temp_r0_2) {                            /* irregular */
    case 0:
        sub_8011D08(p);
        return;
    case 2:
        sub_8011E70(p);
        return;
    case 1:
        sub_8011FB8(p);
        return;
    case 3:
        sub_8012118(p);
        return;
    }
}

s32 sub_8014A60(Player *arg0) {
    u32 temp_r2;

    if ((0xF0 & arg0->keyInput) == 0x80) {
        if ((arg0->qSpeedGround == 0) && !((arg0->unk26 + 0x20) & 0xC0) && !(arg0->moveState & 0x20006)) {
            SetPlayerCallback(arg0, Player_8007FE8);
            return 1;
        }
        if ((u32) (u16) ((u16) arg0->qSpeedGround + 0x7F) > 0xFEU) {
            temp_r2 = arg0->moveState;
            if (!(0x20006 & temp_r2) && ((arg0->unkC & 6) == 2) && !(temp_r2 & 0x800000)) {
                SetPlayerCallback(arg0, Player_800891C);
                Player_PlaySong(arg0, 0x6DU);
                return 1;
            }
        }
        goto block_10;
    }
block_10:
    return 0;
}

void sub_8014AF8(Player *p) {
    s16 *var_r1;
    s16 var_r0;
    s16 var_r0_2;

    if (gStageData.gameMode != 7) {
        if ((p->qSpeedGround == 0) && !((p->unk26 + 0x20) & 0xC0) && !(gStageData.buttonConfig.trick & p->keyInput) && !(p->moveState & 0x08820046)) {
            var_r1 = &p->idleAndCamCounter;
            if ((s32) *var_r1 > 0) {
                var_r0 = (u16) *var_r1 - 1;
                goto block_16;
            }
            if (gCurTask->data->unk4 == 0) {
                var_r0_2 = 6;
            } else if (((u32) gStageData.gameMode <= 4U) && ((0xF & p->unk2A) == 4) && !(0xF & gPlayers[(u32) (p->unk2B << 0x1E) >> 0x1E].unk2A)) {
                var_r0_2 = 0xFB;
            } else {
                var_r0_2 = 7;
            }
            p->charFlags.anim0 = var_r0_2;
            return;
        }
        var_r1 = &p->idleAndCamCounter;
        var_r0 = 0x168;
block_16:
        *var_r1 = var_r0;
    }
}

s16 sub_8014BC4(Player *arg0) {
    Player *temp_r4;
    s16 *temp_r0;
    s16 *temp_r0_3;
    s16 *var_r4;
    s16 temp_r0_2;
    s16 temp_r2;
    u32 temp_r2_2;
    u8 *temp_r1;
    u8 temp_r3;

    if (gStageData.gameMode == 7) {
        goto block_30;
    }
    if (gStageData.currMapIndex == 1) {
        goto block_30;
    }
    if (gStageData.currMapIndex == 0xB) {
        goto block_30;
    }
    temp_r2 = gStageData.buttonConfig.trick & arg0->keyInput;
    if (temp_r2 != 0) {
        temp_r2_2 = arg0->moveState;
        if (0x800000 & temp_r2_2) {
            return 1;
        }
        if ((s32) (s16) arg0->unk40 <= 0x1D) {
            arg0->unk40 = (u16) (arg0->unk40 + 1);
            goto block_30;
        }
        if (!(temp_r2_2 & 0x400000)) {
            Player_PlaySong(arg0, SE_TAGACTION_BUILDUP);
        }
        arg0->moveState |= 0x400000;
        temp_r0 = &arg0->unk42;
        if (*temp_r0 != 0x3C) {
            goto block_30;
        }
        Player_BoostModeDisengage(arg0);
        sub_80193A4(arg0);
        if ((arg0->moveState & 0x24) == 4) {
            SetPlayerCallback(arg0, sub_800E150);
        } else {
            SetPlayerCallback(arg0, Player_80077CC);
        }
        Player_StopSong(arg0, SE_TAGACTION_BUILDUP);
        Player_PlaySong(arg0, 0x21BU);
        arg0->moveState = (arg0->moveState & 0xFFBFFFF5) | 0x800000;
        *temp_r0 = 0;
        return 1;
    }
    temp_r1 = arg0->Padding40;
    if ((arg0->unkC & 0x800000) && (temp_r3 = arg0->unk2C, ((4 & temp_r3) != 0)) && (temp_r0_2 = *temp_r1, (temp_r0_2 != 0)) && ((s32) temp_r0_2 <= 0x1D)) {
        arg0->unk2C = (u8) (-5 & temp_r3);
        *temp_r1 = temp_r2;
        sub_800C3AC(arg0);
    } else {
        *temp_r1 = 0;
        if (arg0->moveState & 0x800000) {
            temp_r4 = &gPlayers[(u32) (arg0->unk2B << 0x1E) >> 0x1E];
            sub_800BF78(arg0);
            temp_r4->moveState &= 0xFE7FFFFF;
            arg0->moveState &= 0xFE7FFFFF;
            sub_80193CC(arg0);
            Player_StopSong(arg0, SE_TAGACTION_BUILDUP);
            var_r4 = &arg0->unk42;
        } else {
            temp_r0_3 = &arg0->unk42;
            var_r4 = temp_r0_3;
            if (*temp_r0_3 != 0) {
                Player_StopSong(arg0, SE_TAGACTION_BUILDUP);
            }
            sub_80193A4(arg0);
            arg0->moveState &= 0xFFBFFFFF;
        }
        *var_r4 = 0;
    }
block_30:
    return 0;
}

s32 sub_8014D70(Player *arg0) {
    Player *temp_r1;
    s16 temp_r0;
    s16 var_r0;
    s16 var_r0_2;

    if ((arg0->moveState & 0x800000) && ((arg0->unk26 + 0x20) & 0xC0)) {
        temp_r0 = arg0->charFlags.anim0;
        switch (temp_r0) {
        case 8:
        case 9:
            var_r0 = 8;
block_7:
            arg0->charFlags.anim0 = var_r0;
            SetPlayerCallback(arg0, Player_8005380);
            break;
        case 18:
            var_r0 = 0x10;
            goto block_7;
        case 0:
        case 3:
        case 14:
            var_r0 = 0;
            goto block_7;
        case 21:
            if (arg0->unkC & 0x40) {
                var_r0_2 = 0x14;
            } else {
                var_r0_2 = 0x6C;
            }
            arg0->charFlags.anim0 = var_r0_2;
            SetPlayerCallback(arg0, Player_800DAF4);
            break;
        }
        temp_r1 = &gPlayers[(u32) (arg0->unk2B << 0x1E) >> 0x1E];
        temp_r1->moveState &= 0xFE7FFFFF;
        arg0->moveState &= 0xFE7FFFFF;
    }
    return 0;
}

void sub_8014E70(Player *p) {
    s16 temp_r0;
    s16 temp_r0_3;
    s16 temp_r0_4;
    s16 temp_r2_2;
    s16 var_r1;
    s16 var_r3;
    s32 temp_r0_2;
    s32 temp_r1;
    s32 temp_r2;
    s32 var_r0;
    s32 var_r8;
    u32 temp_r0_5;
    u32 temp_r1_2;
    u32 var_r2;
    u8 *temp_r0_6;
    u8 *temp_r6;
    u8 var_r4;

    var_r8 = 0;
    var_r3 = 0;
loop_1:
    var_r2 = 0x40;
    temp_r0 = p->qSpeedGround;
    if (temp_r0 != 0) {
        if ((s32) temp_r0 > 0) {
            goto block_5;
        }
    } else if (!(p->moveState & 1)) {
block_5:
        var_r2 = 0xC0;
    }
    temp_r0_2 = var_r3 << 0x10;
    if (temp_r0_2 != 0) {
        var_r1 = p->qSpeedGround;
        if ((s32) var_r1 < 0) {
            var_r1 = 0 - var_r1;
        }
        if ((s32) var_r1 <= 0x300) {
            var_r2 = (u32) ((var_r2 << 0x18) + 0x80000000) >> 0x18;
            goto block_11;
        }
    } else {
block_11:
        temp_r6 = &p->unk26;
        var_r4 = *temp_r6 + var_r2;
        if (p->moveState & 0x10000) {
            var_r4 = ((u32) (0 - ((var_r4 + 0x40) << 0x18)) >> 0x18) - 0x40;
        }
        temp_r2 = sub_8011BFC(var_r4, p) << 8;
        if (temp_r2 <= 0) {
            var_r8 = 1;
            temp_r1 = (s32) ((var_r4 + 0x20) & 0xC0) >> 6;
            switch (temp_r1) {                      /* irregular */
            case 0:
                p->qWorldY += temp_r2;
                *temp_r6 = (u8) temp_r1;
                temp_r0_3 = var_r3;
                if (temp_r0_3 == 0) {
                    p->qSpeedAirY = temp_r0_3;
                    p->qSpeedGround = temp_r0_3;
                }
                break;
            case 1:
                var_r0 = p->qWorldX - temp_r2;
block_28:
                p->qWorldX = var_r0;
                temp_r2_2 = var_r3;
                if (temp_r2_2 == 0) {
                    temp_r1_2 = p->moveState;
                    if (!(0x800000 & temp_r1_2)) {
                        p->moveState = temp_r1_2 | 0x40;
                    }
                    p->qSpeedAirX = temp_r2_2;
                    p->qSpeedGround = temp_r2_2;
                }
                break;
            case 2:
                p->qWorldY -= temp_r2;
                *temp_r6 = 0;
                temp_r0_4 = var_r3;
                if (temp_r0_4 == 0) {
                    p->qSpeedAirY = temp_r0_4;
                    p->qSpeedAirX = temp_r0_4;
                    p->qSpeedGround = temp_r0_4;
                }
                p->moveState |= 4;
                break;
            case 3:
                var_r0 = p->qWorldX + temp_r2;
                goto block_28;
            }
        }
    }
    temp_r0_5 = temp_r0_2 + 0x10000;
    var_r3 = (s16) (temp_r0_5 >> 0x10);
    if ((s32) ((s32) temp_r0_5 >> 0x10) <= 1) {
        goto loop_1;
    }
    if (var_r8 != 0) {
        temp_r0_6 = &p->unk99;
        temp_r0_6->unk0 = 0;
        temp_r0_6->unk1 = 0;
    }
}

void sub_8014FA4(Player *arg0) {
    s32 temp_r0;
    s32 temp_r2;
    s32 var_r0;
    s32 var_r2;
    u8 *temp_r0_2;
    u8 temp_r7;

    var_r2 = 0x40;
    if (!(arg0->moveState & 1)) {
        var_r2 = 0xC0;
    }
    temp_r7 = arg0->unk26 + var_r2;
    subroutine_arg0.unk0 = (u8) arg0->unk28;
    subroutine_arg0.unk1 = (u8) arg0->unk29;
    temp_r2 = sub_8011BFC(temp_r7, arg0) << 8;
    arg0->unk28 = (u8) subroutine_arg0.unk0;
    arg0->unk29 = (u8) subroutine_arg0.unk1;
    if (temp_r2 <= 0) {
        temp_r0 = (s32) ((temp_r7 + 0x20) & 0xC0) >> 6;
        switch (temp_r0) {                          /* irregular */
        case 0:
            arg0->qWorldY += temp_r2;
            arg0->qSpeedAirY = 0 - arg0->qSpeedAirY;
            break;
        case 1:
            var_r0 = arg0->qWorldX - temp_r2;
block_14:
            arg0->qWorldX = var_r0;
block_15:
            arg0->qSpeedAirX = 0 - arg0->qSpeedAirX;
            break;
        case 2:
            arg0->qWorldY -= temp_r2;
            arg0->qSpeedAirY = 0 - arg0->qSpeedAirY;
            goto block_15;
        case 3:
            var_r0 = arg0->qWorldX + temp_r2;
            goto block_14;
        }
        arg0->qSpeedGround = 0 - arg0->qSpeedGround;
        temp_r0_2 = &arg0->unk99;
        temp_r0_2->unk0 = 0;
        temp_r0_2->unk1 = 0;
    }
}

s16 sub_8015064(Player *arg0, ? arg3) {
    s16 var_r0;
    s16 var_sb;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r6;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 var_r5;
    u32 temp_r0;

    temp_r6 = arg0->qWorldX;
    var_r5 = arg0->qWorldY;
    var_sb = 0;
    if (arg0->moveState & 0x100) {
        return 1;
    }
    if ((sub_8016FA8(arg0) << 0x10) != 0) {
        temp_r0 = arg0->moveState | 0x100;
        arg0->moveState = temp_r0;
        if (temp_r0 & 0x80) {
            var_r0 = -0x2A0;
        } else {
            var_r0 = -0x4E0;
        }
        arg0->qSpeedAirY = var_r0;
        if (arg0->moveState & 0x10000) {
            var_r5 = gCamera.unk10 << 8;
        } else {
            var_r5 = (gCamera.unk14 << 8) - 1;
        }
        Player_HitWithoutRingsUpdate(arg0);
        var_sb = 1;
    }
    var_r0_2 = (gCamera.unk18 + 0xC) << 8;
    if (temp_r6 >= var_r0_2) {
        temp_r1 = (gCamera.unk1C << 8) + 0xFFFFF4FF;
        var_r0_2 = temp_r6;
        if (var_r0_2 > temp_r1) {
            var_r0_2 = temp_r1;
        }
    }
    var_r0_3 = gCamera.unk10 << 8;
    if (var_r5 >= var_r0_3) {
        temp_r1_2 = (gCamera.unk14 << 8) - 1;
        var_r0_3 = var_r5;
        if (var_r0_3 > temp_r1_2) {
            var_r0_3 = temp_r1_2;
        }
    }
    if (var_r0_2 != temp_r6) {
        arg0->qSpeedAirX = 0;
        arg0->qSpeedGround = 0;
    }
    if (var_r0_3 != var_r5) {
        arg0->qSpeedAirY = 0;
        arg0->qSpeedGround = 0;
    }
    arg0->qWorldX = var_r0_2;
    arg0->qWorldY = var_r0_3;
    return var_sb;
}

void sub_8015144(Player *p) {
    s16 temp_r4;
    s16 var_r0;
    s32 temp_r0;
    s32 var_r1;
    u8 temp_r3;

    temp_r3 = p->unk26;
    if ((s32) (u8) (temp_r3 + 0x60) <= 0xBF) {
        if (!(p->moveState & 2)) {
            if (p->qSpeedGround != 0) {
                var_r0 = (u16) p->qSpeedGround + ((s32) (((s32) (*((temp_r3 * 8) + gSineTable) << 0x10) >> 0x16) * 3) >> 5);
                goto block_11;
            }
        } else {
            temp_r4 = p->qSpeedGround;
            if (temp_r4 != 0) {
                temp_r0 = ((s32) (*((temp_r3 * 8) + gSineTable) << 0x10) >> 0x16) * 0x3C;
                var_r1 = temp_r0 >> 8;
                if ((s32) temp_r4 > 0) {
                    if (var_r1 <= 0) {
                        goto block_9;
                    }
                } else if (var_r1 >= 0) {
block_9:
                    var_r1 = temp_r0 >> 0xA;
                }
                var_r0 = (u16) p->qSpeedGround + var_r1;
block_11:
                p->qSpeedGround = var_r0;
            }
        }
    }
}

void sub_80151C4(Player *arg0) {
    u16 temp_r1;
    u16 temp_r2;
    u16 var_r0;

    temp_r2 = ((s32) (((s32) (*((arg0->unk26 * 8) + gSineTable) << 0x10) >> 0x16) * 5) >> 5) + arg0->qSpeedGround;
    arg0->qSpeedGround = temp_r2;
    temp_r1 = arg0->keyInput;
    if (0x20 & temp_r1) {
        if ((u32) (temp_r2 << 0x10) > 0x01000000U) {
            var_r0 = temp_r2 - 8;
            goto block_6;
        }
    } else if ((0x10 & temp_r1) && ((u32) ((temp_r2 + 0x100) << 0x10) > 0x01000000U)) {
        var_r0 = temp_r2 + 8;
block_6:
        arg0->qSpeedGround = var_r0;
    }
}

void sub_8015228(Player *p) {
    u8 sp8;
    s16 var_r0;
    s32 temp_r0;
    s32 temp_r5;
    s32 var_r0_2;
    s32 var_sl;
    s8 *temp_r7;
    u8 *temp_r3;
    u8 *temp_r4;
    u8 *temp_r4_2;
    u8 *var_r4;
    u8 temp_r0_2;
    u8 temp_r4_3;
    void (*var_r1)(Player *);

    temp_r0 = (s32) p->qWorldX >> 8;
    temp_r5 = (s32) p->qWorldY >> 8;
    if (gStageData.gameMode == 7) {
        return;
    }
    var_r0 = p->qSpeedGround;
    if ((s32) var_r0 < 0) {
        var_r0 = 0 - var_r0;
    }
    if ((s32) var_r0 > 0x7F) {
        return;
    }
    temp_r7 = &p->unk25;
    temp_r3 = &p->unk27;
    if (sub_80517FC(temp_r5 + *temp_r7, temp_r0, (s32) *temp_r3, 8, NULL, sub_805217C) <= 8) {
        return;
    }
    if (p->moveState & 0x10000) {
        temp_r4 = &p->unk24;
        var_sl = sub_80517FC(temp_r5 - *temp_r7, (temp_r0 - 2) - (s8) *temp_r4, (s32) *temp_r3, -8, &sp8, sub_805217C);
        var_r4 = &subroutine_arg0 + 9;
        var_r0_2 = sub_80517FC(temp_r5 - *temp_r7, temp_r0 + 2 + (s8) *temp_r4, (s32) *temp_r3, -8, var_r4, sub_805217C);
    } else {
        temp_r4_2 = &p->unk24;
        var_sl = sub_80517FC(temp_r5 + *temp_r7, (temp_r0 - 2) - (s8) *temp_r4_2, (s32) *temp_r3, 8, &sp8, sub_805217C);
        var_r4 = &subroutine_arg0 + 9;
        var_r0_2 = sub_80517FC(temp_r5 + *temp_r7, temp_r0 + 2 + (s8) *temp_r4_2, (s32) *temp_r3, 8, var_r4, sub_805217C);
    }
    if ((var_sl > 8) && (var_r0_2 == 0) && ((temp_r4_3 = *var_r4, (temp_r4_3 == 0xFF)) || (temp_r4_3 == 1) || (temp_r4_3 == 0x7F) || (temp_r4_3 == 0x81))) {
        if (p->moveState & 1) {
            var_r1 = sub_800DFEC;
        } else {
            goto block_26;
        }
        goto block_27;
    }
    if ((var_sl == 0) && (var_r0_2 > 8) && ((temp_r0_2 = sp8, (temp_r0_2 == 0xFF)) || (temp_r0_2 == 1) || (temp_r0_2 == 0x7F) || (temp_r0_2 == 0x81))) {
        if (p->moveState & 1) {
block_26:
            var_r1 = sub_800E01C;
block_27:
            SetPlayerCallback(p, var_r1);
            return;
        }
        SetPlayerCallback(p, sub_800DFEC);
    }
}

void sub_80153BC(Player *arg0) {
    s32 var_r5;
    s8 *temp_r1_3;
    u32 temp_r1;
    u32 temp_r1_2;

    var_r5 = 0;
    if ((sub_8004E20((s16) ((s32) (arg0->qWorldX << 8) >> 0x10), (s16) ((s32) (arg0->qWorldY << 8) >> 0x10), &subroutine_arg0) << 0x10) != 0) {
        temp_r1 = arg0->moveState;
        if (!(temp_r1 & 0x80)) {
            var_r5 = 1;
            arg0->qSpeedAirX = (s16) ((s32) ((u16) arg0->qSpeedAirX << 0x10) >> 0x12);
            arg0->qSpeedAirY = (s16) ((s32) ((u16) arg0->qSpeedAirY << 0x10) >> 0x12);
        }
        arg0->moveState = temp_r1 | 0x80;
    } else {
        temp_r1_2 = arg0->moveState;
        if (0x80 & temp_r1_2) {
            var_r5 = 1;
        }
        arg0->moveState = temp_r1_2 & ~0x80;
        temp_r1_3 = &arg0->unk56;
        temp_r1_3->unk0 = 0xE;
        temp_r1_3->unk1 = 0x78;
    }
    if ((var_r5 != 0) && (gStageData.unk4 == 3) && !(arg0->moveState & 0x100)) {
        sub_80172F0(arg0, subroutine_arg0);
        Player_PlaySong(arg0, 0x9CU);
    }
    sub_8014710(arg0);
}

s16 sub_8015460(Player *arg0) {
    s16 var_r5;
    s32 temp_r1;
    u16 temp_r1_2;
    u16 var_r0;
    u16 var_r0_2;
    u32 temp_r1_3;
    u32 temp_r1_4;

    var_r5 = 0;
    sub_8004E20((s16) ((s32) (arg0->qWorldX << 8) >> 0x10), (s16) ((s8) arg0->unk25 + ((s32) arg0->qWorldY >> 8)), &subroutine_arg0);
    temp_r1 = subroutine_arg0 << 8;
    if (((s32) arg0->qWorldY > temp_r1) || ((s32) arg0->qSpeedAirY > 0)) {
        arg0->qSpeedAirY = (u16) arg0->qSpeedAirY - 0x10;
    } else {
        arg0->qWorldY = temp_r1;
        arg0->qSpeedAirY = 0;
    }
    temp_r1_2 = arg0->keyInput;
    if (0x10 & temp_r1_2) {
        temp_r1_3 = arg0->moveState;
        if (1 & temp_r1_3) {
            arg0->moveState = temp_r1_3 & ~1;
            var_r0 = 0;
            goto block_12;
        }
        if ((s32) (s16) arg0->qSpeedAirX <= 0xFF) {
            var_r0_2 = arg0->qSpeedAirX + 8;
            goto block_15;
        }
        goto block_16;
    }
    if (0x20 & temp_r1_2) {
        temp_r1_4 = arg0->moveState;
        var_r0 = temp_r1_4 & 1;
        if (var_r0 == 0) {
            arg0->moveState = temp_r1_4 | 1;
block_12:
            arg0->qSpeedAirX = var_r0;
            var_r5 = 3;
        } else {
            if ((s32) (s16) arg0->qSpeedAirX > 0xFFFFFF00) {
                var_r0_2 = arg0->qSpeedAirX - 8;
block_15:
                arg0->qSpeedAirX = var_r0_2;
            }
block_16:
            var_r5 = 1;
        }
    } else if (0x40 & temp_r1_2) {
        arg0->qSpeedAirX = (u16) ((s32) (arg0->qSpeedAirX << 0x10) >> 0x11);
        if (arg0->qSpeedAirY != 0) {
            arg0->qSpeedAirY = (u16) arg0->qSpeedAirY - 0x20;
        }
        var_r5 = 2;
    } else if (0x80 & temp_r1_2) {
        var_r5 = 4;
    } else {
        arg0->qSpeedAirX = (u16) ((s32) (arg0->qSpeedAirX << 0x10) >> 0x11);
    }
    Player_80149E4(arg0);
    arg0->moveState &= ~0x40;
    return var_r5;
}

s32 sub_8015568(Player *arg0) {
    Player *temp_r5;
    Player *temp_r5_2;
    Player *temp_r5_3;
    Player *temp_r5_4;
    Player *temp_r5_5;
    Player *temp_r5_6;
    Player *temp_r5_7;
    s16 temp_r6;
    u16 *temp_r0_2;
    u32 temp_r0;
    u32 temp_r1;
    u32 temp_r1_2;
    u32 temp_r1_3;
    u32 temp_r1_4;
    u32 temp_r1_5;
    u32 temp_r1_6;
    u32 temp_r1_7;
    u32 var_r1;
    void (*var_r1_2)(Player *);

    if (gStageData.gameMode == 7) {
        goto block_83;
    }
    if ((s32) ((arg0->unk26 + 0x40) << 0x18) <= 0) {
        goto block_83;
    }
    if (!(gStageData.buttonConfig.attack & arg0->keyInput2)) {
        goto block_83;
    }
    temp_r0 = (u32) (arg0->unk2A << 0x1C) >> 0x1C;
    switch (temp_r0) {                              /* irregular */
    case 0:
        temp_r5 = &gPlayers[(u32) (arg0->unk2B << 0x1E) >> 0x1E];
        sub_80193A4(arg0);
        Player_StopSong(arg0, SE_TAGACTION_BUILDUP);
        if (arg0->moveState & 0x400000) {
            arg0->unk42 = 0;
            arg0->moveState &= 0xFFBFFFFF;
        }
        temp_r1 = arg0->moveState;
        if (0x800000 & temp_r1) {
            arg0->moveState = temp_r1 & 0xFF7FFFFF;
            temp_r5->qWorldX = arg0->qWorldX;
            temp_r5->qWorldY = arg0->qWorldY;
            temp_r5->moveState &= 0xFEFFFFFF;
        }
        if ((s16) arg0->unk54 != 0) {
block_65:
            SetPlayerCallback(arg0, sub_800C87C);
            sub_801EBC0(0xDU, arg0);
            return 1;
        }
        var_r1 = arg0->unkC & 0x18;
        switch (var_r1) {                           /* switch 1; irregular */
        case 0:                                     /* switch 1 */
            var_r1_2 = sub_8019FF8;
block_82:
            SetPlayerCallback(arg0, var_r1_2);
            return 1;
        case 8:                                     /* switch 1 */
            var_r1_2 = sub_801A05C;
            goto block_82;
        }
        break;
    case 1:
        temp_r5_2 = &gPlayers[(u32) (arg0->unk2B << 0x1E) >> 0x1E];
        sub_80193A4(arg0);
        Player_StopSong(arg0, SE_TAGACTION_BUILDUP);
        if (arg0->moveState & 0x400000) {
            arg0->unk42 = 0;
            arg0->moveState &= 0xFFBFFFFF;
        }
        temp_r1_2 = arg0->moveState;
        if (0x800000 & temp_r1_2) {
            arg0->moveState = temp_r1_2 & 0xFF7FFFFF;
            temp_r5_2->qWorldX = arg0->qWorldX;
            temp_r5_2->qWorldY = arg0->qWorldY;
            temp_r5_2->moveState &= 0xFEFFFFFF;
        }
        var_r1 = arg0->unkC & 0x18;
        switch (var_r1) {                           /* switch 2; irregular */
        case 0:                                     /* switch 2 */
            var_r1_2 = sub_801AA54;
            goto block_82;
        case 8:                                     /* switch 2 */
            var_r1_2 = sub_801AAEC;
            goto block_82;
        case 16:                                    /* switch 2 */
            var_r1_2 = sub_801AB10;
            goto block_82;
        }
        break;
    case 2:
        temp_r5_3 = &gPlayers[(u32) (arg0->unk2B << 0x1E) >> 0x1E];
        sub_80193A4(arg0);
        Player_StopSong(arg0, SE_TAGACTION_BUILDUP);
        if (arg0->moveState & 0x400000) {
            arg0->unk42 = 0;
            arg0->moveState &= 0xFFBFFFFF;
        }
        temp_r1_3 = arg0->moveState;
        if (0x800000 & temp_r1_3) {
            arg0->moveState = temp_r1_3 & 0xFF7FFFFF;
            temp_r5_3->qWorldX = arg0->qWorldX;
            temp_r5_3->qWorldY = arg0->qWorldY;
            temp_r5_3->moveState &= 0xFEFFFFFF;
        }
        if ((s16) arg0->unk54 != 0) {
            goto block_65;
        }
        var_r1 = arg0->unkC & 0x18;
        switch (var_r1) {                           /* switch 3; irregular */
        case 0:                                     /* switch 3 */
            var_r1_2 = sub_801BCCC;
            goto block_82;
        case 8:                                     /* switch 3 */
            var_r1_2 = sub_801BD1C;
            goto block_82;
        }
        break;
    case 3:
        temp_r5_4 = &gPlayers[(u32) (arg0->unk2B << 0x1E) >> 0x1E];
        sub_80193A4(arg0);
        Player_StopSong(arg0, SE_TAGACTION_BUILDUP);
        if (arg0->moveState & 0x400000) {
            arg0->unk42 = 0;
            arg0->moveState &= 0xFFBFFFFF;
        }
        temp_r1_4 = arg0->moveState;
        if (0x800000 & temp_r1_4) {
            arg0->moveState = temp_r1_4 & 0xFF7FFFFF;
            temp_r5_4->qWorldX = arg0->qWorldX;
            temp_r5_4->qWorldY = arg0->qWorldY;
            temp_r5_4->moveState &= 0xFEFFFFFF;
        }
        if ((s16) arg0->unk54 == 0) {
            var_r1 = arg0->unkC & 0x18;
            switch (var_r1) {                       /* switch 4; irregular */
            case 0:                                 /* switch 4 */
                var_r1_2 = sub_801D7B0;
                goto block_82;
            case 8:                                 /* switch 4 */
                var_r1_2 = sub_801D804;
                goto block_82;
            }
        } else {
            goto block_65;
        }
        break;
    case 4:
        temp_r0_2 = &arg0->unk54;
        temp_r6 = (s16) *temp_r0_2;
        if (temp_r6 != 0) {
            temp_r5_5 = &gPlayers[(u32) (*(temp_r0_2 - 0x29) << 0x1E) >> 0x1E];
            sub_80193A4(arg0);
            Player_StopSong(arg0, SE_TAGACTION_BUILDUP);
            if (arg0->moveState & 0x400000) {
                arg0->unk42 = 0;
                arg0->moveState &= 0xFFBFFFFF;
            }
            temp_r1_5 = arg0->moveState;
            if (0x800000 & temp_r1_5) {
                arg0->moveState = temp_r1_5 & 0xFF7FFFFF;
                temp_r5_5->qWorldX = arg0->qWorldX;
                temp_r5_5->qWorldY = arg0->qWorldY;
                temp_r5_5->moveState &= 0xFEFFFFFF;
            }
            goto block_65;
        }
        if (((0xF0 & arg0->keyInput) == 0x80) && (arg0->unkC & 0x20)) {
            temp_r5_6 = &gPlayers[(u32) (arg0->unk2B << 0x1E) >> 0x1E];
            sub_80193A4(arg0);
            Player_StopSong(arg0, SE_TAGACTION_BUILDUP);
            if (arg0->moveState & 0x400000) {
                arg0->unk42 = temp_r6;
                arg0->moveState &= 0xFFBFFFFF;
            }
            temp_r1_6 = arg0->moveState;
            if (0x800000 & temp_r1_6) {
                arg0->moveState = temp_r1_6 & 0xFF7FFFFF;
                temp_r5_6->qWorldX = arg0->qWorldX;
                temp_r5_6->qWorldY = arg0->qWorldY;
                temp_r5_6->moveState &= 0xFEFFFFFF;
            }
            var_r1_2 = sub_801E888;
            goto block_82;
        }
        temp_r5_7 = &gPlayers[(u32) (arg0->unk2B << 0x1E) >> 0x1E];
        sub_80193A4(arg0);
        Player_StopSong(arg0, SE_TAGACTION_BUILDUP);
        if (arg0->moveState & 0x400000) {
            arg0->unk42 = 0;
            arg0->moveState &= 0xFFBFFFFF;
        }
        temp_r1_7 = arg0->moveState;
        if (0x800000 & temp_r1_7) {
            arg0->moveState = temp_r1_7 & 0xFF7FFFFF;
            temp_r5_7->qWorldX = arg0->qWorldX;
            temp_r5_7->qWorldY = arg0->qWorldY;
            temp_r5_7->moveState &= 0xFEFFFFFF;
        }
        var_r1 = arg0->unkC & 0x18;
        if (var_r1 != 0) {
            if (var_r1 != 0x18) {
block_83:
                return 0;
            }
            var_r1_2 = Player_8009780;
            goto block_82;
        }
        var_r1_2 = sub_801E69C;
        goto block_82;
    }
}

void sub_8015A44(Player *arg0) {
    Player *temp_r4;
    s16 temp_r7;
    s16 var_r0;
    s16 var_sb;
    s32 temp_r0;
    s32 temp_r1;
    s32 var_r2;
    u32 temp_r0_5;
    u32 temp_r1_2;
    u32 var_r0_2;
    u8 temp_r0_2;
    u8 temp_r0_3;
    u8 temp_r0_4;
    u8 temp_r1_3;
    u8 temp_r2;

    temp_r2 = arg0->unk2B;
    temp_r0 = 0x1C & temp_r2;
    if (temp_r0 == 8) {
        return;
    }
    if (temp_r0 == 0x14) {
        return;
    }
    if (gStageData.unk4 != 3) {
        return;
    }
    if (arg0->framesInvulnerable != 0) {
        return;
    }
    if (arg0->moveState & 0x01000000) {
        return;
    }
    var_sb = 0;
loop_11:
    temp_r7 = var_sb;
    temp_r4 = &gPlayers[temp_r7];
    if (temp_r4 == arg0) {
        goto block_63;
    }
    temp_r1 = 0x1C & temp_r4->unk2B;
    if (temp_r1 == 0x14) {
        goto block_63;
    }
    if (temp_r1 == 8) {
        goto block_63;
    }
    temp_r1_2 = temp_r4->moveState;
    if (0x01000000 & temp_r1_2) {
        goto block_63;
    }
    if (arg0->moveState & 0x20000000) {
        goto block_63;
    }
    if (temp_r1_2 & 0x20000000) {
        goto block_63;
    }
    var_r2 = (s32) ((arg0->qWorldX - temp_r4->qWorldX) << 8) >> 0x10;
    if (var_r2 < 0) {
        var_r2 = 0 - var_r2;
    }
    if (var_r2 > 0x40) {
        goto block_63;
    }
    var_r0 = (s16) ((u32) ((arg0->qWorldY - temp_r4->qWorldY) << 8) >> 0x10);
    if ((s32) var_r0 < 0) {
        var_r0 = 0 - var_r0;
    }
    if ((s32) var_r0 > 0x40) {
        goto block_63;
    }
    if (sub_80210BC(temp_r4, 1U, arg0, 1U) != 0) {
        if (gStageData.gameMode != 7) {
            goto block_62;
        }
        if (arg0->charFlags.anim0 != 0xA) {
            if (temp_r4->charFlags.anim0 != 0xA) {
                goto block_62;
            }
            sub_8015C90(arg0);
            temp_r4->framesInvulnerable = 0x78;
            if (gStageData.gameMode != 7) {
                return;
            }
            temp_r1_3 = gStageData.unk8E;
            if ((temp_r1_3 == var_sb) || (temp_r1_3 == gStageData.playerIndex)) {
                goto block_60;
            }
        } else if (temp_r4->charFlags.anim0 != 0xA) {
            Player_8014550(arg0);
            temp_r0_2 = gStageData.unk8E;
            if ((temp_r0_2 == temp_r7) || (temp_r0_2 == gStageData.playerIndex)) {
                var_r0_2 = var_sb << 0x18;
                goto block_54;
            }
        } else {
            goto block_62;
        }
    } else if (sub_80210BC(temp_r4, 1U, arg0, 0U) != 0) {
        if (gStageData.gameMode != 7) {
            if (temp_r4 != &gPlayers[(u32) (temp_r2 << 0x1E) >> 0x1E]) {
                Player_8014550(arg0);
                return;
            }
            goto block_62;
        }
        Player_8014550(arg0);
        temp_r0_3 = gStageData.unk8E;
        if ((temp_r0_3 == temp_r7) || (temp_r0_3 == gStageData.playerIndex)) {
            var_r0_2 = var_sb << 0x18;
block_54:
            sub_80276A8((u8) (var_r0_2 >> 0x18));
            sub_80293E8(temp_r4);
        }
    } else if (sub_80210BC(temp_r4, 0U, arg0, 1U) != 0) {
        sub_8015C90(arg0);
        temp_r4->framesInvulnerable = 0x78;
        if ((gStageData.gameMode == 7) && ((temp_r0_4 = gStageData.unk8E, (temp_r0_4 == temp_r7)) || (temp_r0_4 == gStageData.playerIndex))) {
block_60:
            sub_80276A8(gStageData.playerIndex);
            sub_80293E8(arg0);
        }
    } else {
        if (sub_80210BC(temp_r4, 0U, arg0, 0U) != 0) {
block_62:
            sub_8015C90(arg0);
            return;
        }
block_63:
        temp_r0_5 = (var_sb << 0x10) + 0x10000;
        var_sb = (s16) (temp_r0_5 >> 0x10);
        if ((s32) ((s32) temp_r0_5 >> 0x10) <= 3) {
            goto loop_11;
        }
    }
}

void sub_8015C90(Player *arg0, s32 arg1) {
    s16 temp_r0;
    s16 temp_r0_2;
    s32 temp_r1;
    u16 var_r0;
    u8 *var_r5;

    arg0->framesInvulnerable = 4;
    if (0xC0000 & arg1) {
        if (0x40000 & arg1) {
            var_r0 = *(((u32) (*((arg0 + 0x4A) - 0x20) << 0x1C) >> 0x1A) + &gUnknown_080CE6B8);
        } else {
            var_r0 = 0 - *(((u32) (arg0->unk2A << 0x1C) >> 0x1A) + &gUnknown_080CE6B8);
        }
        arg0->qSpeedAirX = var_r0;
    }
    if (!(0x20000 & arg1)) {
        arg0->qSpeedAirY = 0 - *(((u32) (arg0->unk2A << 0x1C) >> 0x1A) + (&gUnknown_080CE6B8 + 2));
        var_r5 = arg0 + 0x2A;
    } else {
        arg0->qSpeedAirY = 0;
        var_r5 = arg0 + 0x2A;
    }
    if (arg0->moveState & 0x20000) {
        arg0->unk27 = 1;
        Player_StopSong(arg0, SE_GRINDING);
        arg0->moveState &= 0xFFFDFFFF;
    }
    temp_r1 = 0xF & *var_r5;
    if (temp_r1 == 3) {
        temp_r0 = arg0->charFlags.anim0;
        if (((s32) temp_r0 <= 0xF2) && ((s32) temp_r0 >= 0xF0)) {
            goto block_18;
        }
        goto block_17;
    }
    if ((temp_r1 != 1) || (temp_r0_2 = arg0->charFlags.anim0, ((s32) temp_r0_2 > 0xC4)) || ((s32) temp_r0_2 < 0xC1)) {
block_17:
        if (arg0->charFlags.anim0 == 0x85) {
            goto block_18;
        }
    } else {
block_18:
        arg0->charFlags.anim0 = 0x18;
    }
    SetPlayerCallback(arg0, Player_800DAF4);
}

s32 sub_8015D7C(void *arg0) {
    s32 sp0;
    s16 temp_r1;
    s16 var_r1;
    u16 temp_r0;

    if ((gStageData.gameMode != 6) || (gStageData.unk4 != 3) || (arg0->unk4 & 0x59000200) || (gCamera.unk1C != *gUnknown_080D05A8[gStageData.currMapIndex]) || (gCamera.unk14 != *((gStageData.currMapIndex * 4) + &gUnknown_080D05A8[0][1]))) {
        goto block_5;
    }
    memcpy(&sp0, &gUnknown_080CE6CC, 0xD8);
    var_r1 = 0;
    if (sp0 != 0) {
loop_8:
        temp_r1 = var_r1;
        if (arg0->unk0 != *((temp_r1 * 4) + sp)) {
            temp_r0 = temp_r1 + 1;
            var_r1 = (s16) temp_r0;
            if (*(((s32) (temp_r0 << 0x10) >> 0xE) + sp) == 0) {
                goto block_10;
            }
            goto loop_8;
        }
block_5:
        return 0;
    }
block_10:
    return 1;
}

s32 sub_8015E0C(Player *arg0) {
    Player *temp_r5;
    Player *temp_r5_10;
    Player *temp_r5_11;
    Player *temp_r5_12;
    Player *temp_r5_14;
    Player *temp_r5_15;
    Player *temp_r5_16;
    Player *temp_r5_3;
    Player *temp_r5_4;
    Player *temp_r5_5;
    Player *temp_r5_6;
    Player *temp_r5_7;
    Player *temp_r5_8;
    Player *temp_r5_9;
    Player *temp_r6_2;
    Player *temp_r6_5;
    s16 temp_r5_13;
    s16 temp_r5_2;
    s16 temp_r6;
    s16 temp_r6_3;
    s16 temp_r6_4;
    s16 temp_r6_6;
    s32 temp_r1_12;
    s32 temp_r1_2;
    s32 temp_r2;
    s32 temp_r2_3;
    u16 *var_r0;
    u32 temp_r0;
    u32 temp_r1;
    u32 temp_r1_10;
    u32 temp_r1_11;
    u32 temp_r1_13;
    u32 temp_r1_14;
    u32 temp_r1_15;
    u32 temp_r1_16;
    u32 temp_r1_17;
    u32 temp_r1_18;
    u32 temp_r1_19;
    u32 temp_r1_20;
    u32 temp_r1_21;
    u32 temp_r1_3;
    u32 temp_r1_4;
    u32 temp_r1_5;
    u32 temp_r1_6;
    u32 temp_r1_7;
    u32 temp_r1_8;
    u32 temp_r1_9;
    u32 temp_r2_2;
    void (*var_r1)(Player *);

    if (gStageData.buttonConfig.attack & arg0->keyInput2) {
        temp_r0 = (u32) (arg0->unk2A << 0x1C) >> 0x1C;
        switch (temp_r0) {
        case 0:
            var_r0 = arg0 + 0x54;
            temp_r6 = arg0->unk54;
            if (temp_r6 != 0) {
block_100:
                temp_r5 = &gPlayers[(u32) (*(var_r0 - 0x29) << 0x1E) >> 0x1E];
                sub_80193A4(arg0);
                Player_StopSong(arg0, SE_TAGACTION_BUILDUP);
                if (arg0->moveState & 0x400000) {
                    arg0->unk42 = 0;
                    arg0->moveState &= 0xFFBFFFFF;
                }
                temp_r1 = arg0->moveState;
                if (0x800000 & temp_r1) {
                    arg0->moveState = temp_r1 & 0xFF7FFFFF;
                    temp_r5->qWorldX = arg0->qWorldX;
                    temp_r5->qWorldY = arg0->qWorldY;
                    temp_r5->moveState &= 0xFEFFFFFF;
                }
                SetPlayerCallback(arg0, sub_800C910);
                sub_801EBC0(0xDU, arg0);
                return 1;
            }
            temp_r1_2 = 0xF0 & arg0->keyInput;
            switch (temp_r1_2) {                    /* switch 1; irregular */
            case 0x40:                              /* switch 1 */
                if (!(0x10000 & arg0->unkC)) {
                default:                            /* switch 1 */
block_21:
                    temp_r2 = 0xC000 & arg0->unkC;
                    switch (temp_r2) {              /* switch 2; irregular */
                    case 0x4000:                    /* switch 2 */
                        temp_r5_2 = arg0->moveState & 2;
                        if (temp_r5_2 == 0) {
                            temp_r6_2 = &gPlayers[(u32) (arg0->unk2B << 0x1E) >> 0x1E];
                            sub_80193A4(arg0);
                            Player_StopSong(arg0, SE_TAGACTION_BUILDUP);
                            if (arg0->moveState & 0x400000) {
                                arg0->unk42 = temp_r5_2;
                                arg0->moveState &= 0xFFBFFFFF;
                            }
                            temp_r1_3 = arg0->moveState;
                            if (0x800000 & temp_r1_3) {
                                arg0->moveState = temp_r1_3 & 0xFF7FFFFF;
                                temp_r6_2->qWorldX = arg0->qWorldX;
                                temp_r6_2->qWorldY = arg0->qWorldY;
                                temp_r6_2->moveState &= 0xFEFFFFFF;
                            }
                            var_r1 = Player_8006424;
                            goto block_125;
                        }
                        goto block_126;
                    case 0x8000:                    /* switch 2 */
                        temp_r5_3 = &gPlayers[(u32) (arg0->unk2B << 0x1E) >> 0x1E];
                        sub_80193A4(arg0);
                        Player_StopSong(arg0, SE_TAGACTION_BUILDUP);
                        if (arg0->moveState & 0x400000) {
                            arg0->unk42 = 0;
                            arg0->moveState &= 0xFFBFFFFF;
                        }
                        temp_r1_4 = arg0->moveState;
                        if (0x800000 & temp_r1_4) {
                            arg0->moveState = temp_r1_4 & 0xFF7FFFFF;
                            temp_r5_3->qWorldX = arg0->qWorldX;
                            temp_r5_3->qWorldY = arg0->qWorldY;
                            temp_r5_3->moveState &= 0xFEFFFFFF;
                        }
                        var_r1 = sub_801A0C0;
                        goto block_125;
                    }
                } else {
                    temp_r5_4 = &gPlayers[(u32) (arg0->unk2B << 0x1E) >> 0x1E];
                    sub_80193A4(arg0);
                    Player_StopSong(arg0, SE_TAGACTION_BUILDUP);
                    if (arg0->moveState & 0x400000) {
                        arg0->unk42 = temp_r6;
                        arg0->moveState &= 0xFFBFFFFF;
                    }
                    temp_r1_5 = arg0->moveState;
                    if (0x800000 & temp_r1_5) {
                        arg0->moveState = temp_r1_5 & 0xFF7FFFFF;
                        temp_r5_4->qWorldX = arg0->qWorldX;
                        temp_r5_4->qWorldY = arg0->qWorldY;
                        temp_r5_4->moveState &= 0xFEFFFFFF;
                    }
                    var_r1 = sub_801A120;
block_125:
                    SetPlayerCallback(arg0, var_r1);
                    return 1;
                }
                break;
            case 0x80:                              /* switch 1 */
                if (0x20000 & arg0->unkC) {
                    temp_r5_5 = &gPlayers[(u32) (arg0->unk2B << 0x1E) >> 0x1E];
                    sub_80193A4(arg0);
                    Player_StopSong(arg0, SE_TAGACTION_BUILDUP);
                    if (arg0->moveState & 0x400000) {
                        arg0->unk42 = temp_r6;
                        arg0->moveState &= 0xFFBFFFFF;
                    }
                    temp_r1_6 = arg0->moveState;
                    if (0x800000 & temp_r1_6) {
                        arg0->moveState = temp_r1_6 & 0xFF7FFFFF;
                        temp_r5_5->qWorldX = arg0->qWorldX;
                        temp_r5_5->qWorldY = arg0->qWorldY;
                        temp_r5_5->moveState &= 0xFEFFFFFF;
                    }
                    var_r1 = sub_801A17C;
                    goto block_125;
                }
                goto block_21;
            }
            break;
        case 1:
            temp_r1_7 = arg0->unkC;
            if (((0xF0 & arg0->keyInput) == 0x80) && (0x20000 & temp_r1_7)) {
                temp_r5_6 = &gPlayers[(u32) (arg0->unk2B << 0x1E) >> 0x1E];
                sub_80193A4(arg0);
                Player_StopSong(arg0, SE_TAGACTION_BUILDUP);
                if (arg0->moveState & 0x400000) {
                    arg0->unk42 = 0;
                    arg0->moveState &= 0xFFBFFFFF;
                }
                temp_r1_8 = arg0->moveState;
                if (0x800000 & temp_r1_8) {
                    arg0->moveState = temp_r1_8 & 0xFF7FFFFF;
                    temp_r5_6->qWorldX = arg0->qWorldX;
                    temp_r5_6->qWorldY = arg0->qWorldY;
                    temp_r5_6->moveState &= 0xFEFFFFFF;
                }
                var_r1 = sub_801A46C;
                goto block_125;
            }
            temp_r2_2 = 0xC000 & temp_r1_7;
            switch (temp_r2_2) {                    /* switch 3; irregular */
            case 0xC000:                            /* switch 3 */
                temp_r5_7 = &gPlayers[(u32) (arg0->unk2B << 0x1E) >> 0x1E];
                sub_80193A4(arg0);
                Player_StopSong(arg0, SE_TAGACTION_BUILDUP);
                if (arg0->moveState & 0x400000) {
                    arg0->unk42 = 0;
                    arg0->moveState &= 0xFFBFFFFF;
                }
                temp_r1_9 = arg0->moveState;
                if (0x800000 & temp_r1_9) {
                    arg0->moveState = temp_r1_9 & 0xFF7FFFFF;
                    temp_r5_7->qWorldX = arg0->qWorldX;
                    temp_r5_7->qWorldY = arg0->qWorldY;
                    temp_r5_7->moveState &= 0xFEFFFFFF;
                }
                var_r1 = sub_801AB7C;
                goto block_125;
            case 0x4000:                            /* switch 3 */
                temp_r5_8 = &gPlayers[(u32) (arg0->unk2B << 0x1E) >> 0x1E];
                sub_80193A4(arg0);
                Player_StopSong(arg0, SE_TAGACTION_BUILDUP);
                if (arg0->moveState & 0x400000) {
                    arg0->unk42 = 0;
                    arg0->moveState &= 0xFFBFFFFF;
                }
                temp_r1_10 = arg0->moveState;
                if (0x800000 & temp_r1_10) {
                    arg0->moveState = temp_r1_10 & 0xFF7FFFFF;
                    temp_r5_8->qWorldX = arg0->qWorldX;
                    temp_r5_8->qWorldY = arg0->qWorldY;
                    temp_r5_8->moveState &= 0xFEFFFFFF;
                }
                var_r1 = sub_801AB34;
                goto block_125;
            case 0x8000:                            /* switch 3 */
                temp_r5_9 = &gPlayers[(u32) (arg0->unk2B << 0x1E) >> 0x1E];
                sub_80193A4(arg0);
                Player_StopSong(arg0, SE_TAGACTION_BUILDUP);
                if (arg0->moveState & 0x400000) {
                    arg0->unk42 = 0;
                    arg0->moveState &= 0xFFBFFFFF;
                }
                temp_r1_11 = arg0->moveState;
                if (0x800000 & temp_r1_11) {
                    arg0->moveState = temp_r1_11 & 0xFF7FFFFF;
                    temp_r5_9->qWorldX = arg0->qWorldX;
                    temp_r5_9->qWorldY = arg0->qWorldY;
                    temp_r5_9->moveState &= 0xFEFFFFFF;
                }
                var_r1 = sub_801AB58;
                goto block_125;
            }
            break;
        case 2:
            var_r0 = &arg0->unk54;
            temp_r6_3 = (s16) *var_r0;
            if (temp_r6_3 != 0) {
                goto block_100;
            }
            temp_r1_12 = arg0->unkC & 0xC000;
            switch (temp_r1_12) {                   /* switch 4; irregular */
            case 0x4000:                            /* switch 4 */
                if (arg0->moveState & 2) {
                    goto block_126;
                }
                temp_r5_10 = &gPlayers[(u32) (arg0->unk2B << 0x1E) >> 0x1E];
                sub_80193A4(arg0);
                Player_StopSong(arg0, SE_TAGACTION_BUILDUP);
                if (arg0->moveState & 0x400000) {
                    arg0->unk42 = temp_r6_3;
                    arg0->moveState &= 0xFFBFFFFF;
                }
                temp_r1_13 = arg0->moveState;
                if (0x800000 & temp_r1_13) {
                    arg0->moveState = temp_r1_13 & 0xFF7FFFFF;
                    temp_r5_10->qWorldX = arg0->qWorldX;
                    temp_r5_10->qWorldY = arg0->qWorldY;
                    temp_r5_10->moveState &= 0xFEFFFFFF;
                }
                var_r1 = Player_8006424;
                goto block_125;
            case 0x8000:                            /* switch 4 */
                temp_r5_11 = &gPlayers[(u32) (arg0->unk2B << 0x1E) >> 0x1E];
                sub_80193A4(arg0);
                Player_StopSong(arg0, SE_TAGACTION_BUILDUP);
                if (arg0->moveState & 0x400000) {
                    arg0->unk42 = temp_r6_3;
                    arg0->moveState &= 0xFFBFFFFF;
                }
                temp_r1_14 = arg0->moveState;
                if (0x800000 & temp_r1_14) {
                    arg0->moveState = temp_r1_14 & 0xFF7FFFFF;
                    temp_r5_11->qWorldX = arg0->qWorldX;
                    temp_r5_11->qWorldY = arg0->qWorldY;
                    temp_r5_11->moveState &= 0xFEFFFFFF;
                }
                var_r1 = sub_801BD84;
                goto block_125;
            }
            break;
        case 3:
            var_r0 = &arg0->unk54;
            temp_r6_4 = (s16) *var_r0;
            if (temp_r6_4 != 0) {
                goto block_100;
            }
            temp_r1_15 = arg0->unkC;
            if (((0xF0 & arg0->keyInput) == 0x80) && (0x20000 & temp_r1_15)) {
                temp_r5_12 = &gPlayers[(u32) (arg0->unk2B << 0x1E) >> 0x1E];
                sub_80193A4(arg0);
                Player_StopSong(arg0, SE_TAGACTION_BUILDUP);
                if (arg0->moveState & 0x400000) {
                    arg0->unk42 = temp_r6_4;
                    arg0->moveState &= 0xFFBFFFFF;
                }
                temp_r1_16 = arg0->moveState;
                if (0x800000 & temp_r1_16) {
                    arg0->moveState = temp_r1_16 & 0xFF7FFFFF;
                    temp_r5_12->qWorldX = arg0->qWorldX;
                    temp_r5_12->qWorldY = arg0->qWorldY;
                    temp_r5_12->moveState &= 0xFEFFFFFF;
                }
                var_r1 = sub_801D84C;
                goto block_125;
            }
            if ((0xC000 & temp_r1_15) != 0x4000) {
                goto block_126;
            }
            temp_r5_13 = arg0->moveState & 2;
            if (temp_r5_13 != 0) {
                goto block_126;
            }
            temp_r6_5 = &gPlayers[(u32) (arg0->unk2B << 0x1E) >> 0x1E];
            sub_80193A4(arg0);
            Player_StopSong(arg0, SE_TAGACTION_BUILDUP);
            if (arg0->moveState & 0x400000) {
                arg0->unk42 = temp_r5_13;
                arg0->moveState &= 0xFFBFFFFF;
            }
            temp_r1_17 = arg0->moveState;
            if (0x800000 & temp_r1_17) {
                arg0->moveState = temp_r1_17 & 0xFF7FFFFF;
                temp_r6_5->qWorldX = arg0->qWorldX;
                temp_r6_5->qWorldY = arg0->qWorldY;
                temp_r6_5->moveState &= 0xFEFFFFFF;
            }
            var_r1 = Player_8006424;
            goto block_125;
        case 4:
            var_r0 = &arg0->unk54;
            temp_r6_6 = (s16) *var_r0;
            if (temp_r6_6 != 0) {
                goto block_100;
            }
            temp_r1_18 = arg0->unkC;
            if (((0xF0 & arg0->keyInput) == 0x80) && (0x20000 & temp_r1_18)) {
                temp_r5_14 = &gPlayers[(u32) (arg0->unk2B << 0x1E) >> 0x1E];
                sub_80193A4(arg0);
                Player_StopSong(arg0, SE_TAGACTION_BUILDUP);
                if (arg0->moveState & 0x400000) {
                    arg0->unk42 = temp_r6_6;
                    arg0->moveState &= 0xFFBFFFFF;
                }
                temp_r1_19 = arg0->moveState;
                if (0x800000 & temp_r1_19) {
                    arg0->moveState = temp_r1_19 & 0xFF7FFFFF;
                    temp_r5_14->qWorldX = arg0->qWorldX;
                    temp_r5_14->qWorldY = arg0->qWorldY;
                    temp_r5_14->moveState &= 0xFEFFFFFF;
                }
                var_r1 = sub_801E7BC;
                goto block_125;
            }
            temp_r2_3 = 0xC000 & temp_r1_18;
            switch (temp_r2_3) {                    /* switch 5; irregular */
            case 0x4000:                            /* switch 5 */
                temp_r5_15 = &gPlayers[(u32) (arg0->unk2B << 0x1E) >> 0x1E];
                sub_80193A4(arg0);
                Player_StopSong(arg0, SE_TAGACTION_BUILDUP);
                if (arg0->moveState & 0x400000) {
                    arg0->unk42 = 0;
                    arg0->moveState &= 0xFFBFFFFF;
                }
                temp_r1_20 = arg0->moveState;
                if (0x800000 & temp_r1_20) {
                    arg0->moveState = temp_r1_20 & 0xFF7FFFFF;
                    temp_r5_15->qWorldX = arg0->qWorldX;
                    temp_r5_15->qWorldY = arg0->qWorldY;
                    temp_r5_15->moveState &= 0xFEFFFFFF;
                }
                var_r1 = sub_801E6F4;
                goto block_125;
            case 0x8000:                            /* switch 5 */
                temp_r5_16 = &gPlayers[(u32) (arg0->unk2B << 0x1E) >> 0x1E];
                sub_80193A4(arg0);
                Player_StopSong(arg0, SE_TAGACTION_BUILDUP);
                if (arg0->moveState & 0x400000) {
                    arg0->unk42 = 0;
                    arg0->moveState &= 0xFFBFFFFF;
                }
                temp_r1_21 = arg0->moveState;
                if (0x800000 & temp_r1_21) {
                    arg0->moveState = temp_r1_21 & 0xFF7FFFFF;
                    temp_r5_16->qWorldX = arg0->qWorldX;
                    temp_r5_16->qWorldY = arg0->qWorldY;
                    temp_r5_16->moveState &= 0xFEFFFFFF;
                }
                var_r1 = sub_801E758;
                goto block_125;
            }
            break;
        }
    } else {
    default:
block_126:
        return 0;
    }
}

s32 sub_80167A4(Player *arg0) {
    Player *temp_r4;
    Player *temp_r4_2;
    Player *temp_r4_4;
    Player *temp_r4_5;
    Player *temp_r4_6;
    Player *temp_r4_7;
    Player *temp_r6;
    s16 temp_r4_3;
    s16 temp_r6_2;
    u32 temp_r0;
    u32 temp_r0_2;
    u32 temp_r0_3;
    u32 temp_r0_4;
    u32 temp_r0_5;
    u32 temp_r1;
    u32 temp_r1_2;
    u32 temp_r1_3;
    u32 temp_r1_4;
    u32 temp_r1_5;
    u32 temp_r1_6;
    u32 temp_r1_7;
    u32 temp_r1_8;
    void (*var_r1)(Player *);

    if (!(gStageData.buttonConfig.jump & arg0->keyInput2)) {
        goto block_93;
    }
    temp_r0 = (u32) (arg0->unk2A << 0x1C) >> 0x1C;
    switch (temp_r0) {                              /* irregular */
    case 0:
        if ((arg0->unkC & 0x180) != 0x100) {
block_93:
            return 0;
        }
        temp_r4 = &gPlayers[(u32) (arg0->unk2B << 0x1E) >> 0x1E];
        sub_80193A4(arg0);
        Player_StopSong(arg0, SE_TAGACTION_BUILDUP);
        if (arg0->moveState & 0x400000) {
            arg0->unk42 = 0;
            arg0->moveState &= 0xFFBFFFFF;
        }
        temp_r1 = arg0->moveState;
        if (0x800000 & temp_r1) {
            arg0->moveState = temp_r1 & 0xFF7FFFFF;
            temp_r4->qWorldX = arg0->qWorldX;
            temp_r4->qWorldY = arg0->qWorldY;
            temp_r4->moveState &= 0xFEFFFFFF;
        }
        if (arg0->unkB8 != -1U) {
            SetPlayerCallback(arg0, Player_8007620);
            Player_8007620(arg0);
        } else {
            SetPlayerCallback(arg0, sub_8019B4C);
            sub_8019B4C(arg0);
        }
block_92:
        return 1;
    case 1:
        temp_r4_2 = &gPlayers[(u32) (arg0->unk2B << 0x1E) >> 0x1E];
        sub_80193A4(arg0);
        Player_StopSong(arg0, SE_TAGACTION_BUILDUP);
        if (arg0->moveState & 0x400000) {
            arg0->unk42 = 0;
            arg0->moveState &= 0xFFBFFFFF;
        }
        temp_r1_2 = arg0->moveState;
        if (0x800000 & temp_r1_2) {
            arg0->moveState = temp_r1_2 & 0xFF7FFFFF;
            temp_r4_2->qWorldX = arg0->qWorldX;
            temp_r4_2->qWorldY = arg0->qWorldY;
            temp_r4_2->moveState &= 0xFEFFFFFF;
        }
        temp_r0_2 = arg0->unkC & 0x180;
        switch (temp_r0_2) {                        /* switch 1; irregular */
        case 0x80:                                  /* switch 1 */
            var_r1 = sub_801A9EC;
block_91:
            SetPlayerCallback(arg0, var_r1);
            goto block_92;
        case 0x100:                                 /* switch 1 */
            if (arg0->moveState & 0x80) {
                goto block_93;
            }
            var_r1 = sub_801ABA0;
            goto block_91;
        case 0x180:                                 /* switch 1 */
            if (arg0->moveState & 0x80) {
                goto block_93;
            }
            var_r1 = sub_801ABA0;
            goto block_91;
        }
        break;
    case 2:
        temp_r4_3 = arg0->moveState & 0x80;
        if (temp_r4_3 == 0) {
            temp_r6 = &gPlayers[(u32) (arg0->unk2B << 0x1E) >> 0x1E];
            sub_80193A4(arg0);
            Player_StopSong(arg0, SE_TAGACTION_BUILDUP);
            if (arg0->moveState & 0x400000) {
                arg0->unk42 = temp_r4_3;
                arg0->moveState &= 0xFFBFFFFF;
            }
            temp_r1_3 = arg0->moveState;
            if (0x800000 & temp_r1_3) {
                arg0->moveState = temp_r1_3 & 0xFF7FFFFF;
                temp_r6->qWorldX = arg0->qWorldX;
                temp_r6->qWorldY = arg0->qWorldY;
                temp_r6->moveState &= 0xFEFFFFFF;
            }
            temp_r1_4 = arg0->unkC & 0x180;
            switch (temp_r1_4) {                    /* switch 2; irregular */
            case 0x0:                               /* switch 2 */
                var_r1 = sub_801BDD8;
                goto block_91;
            case 0x80:                              /* switch 2 */
                var_r1 = sub_801ADF4;
                goto block_91;
            case 0x100:                             /* switch 2 */
                if (arg0->unkB8 != -1U) {
                    SetPlayerCallback(arg0, Player_8007620);
                    Player_8007620(arg0);
                } else {
                    SetPlayerCallback(arg0, sub_801BEA0);
                    sub_801BEA0(arg0);
                }
                goto block_92;
            case 0x180:                             /* switch 2 */
                var_r1 = sub_801BF08;
                goto block_91;
            }
        } else {
            temp_r0_3 = arg0->unkC;
            temp_r6_2 = 0x200000 & temp_r0_3;
            if (temp_r6_2 != 0) {
                temp_r4_4 = &gPlayers[(u32) (arg0->unk2B << 0x1E) >> 0x1E];
                sub_80193A4(arg0);
                Player_StopSong(arg0, SE_TAGACTION_BUILDUP);
                if (arg0->moveState & 0x400000) {
                    arg0->unk42 = 0;
                    arg0->moveState &= 0xFFBFFFFF;
                }
                temp_r1_5 = arg0->moveState;
                if (0x800000 & temp_r1_5) {
                    arg0->moveState = temp_r1_5 & 0xFF7FFFFF;
                    temp_r4_4->qWorldX = arg0->qWorldX;
                    temp_r4_4->qWorldY = arg0->qWorldY;
                    temp_r4_4->moveState &= 0xFEFFFFFF;
                }
                var_r1 = sub_801BF6C;
                goto block_91;
            }
            if (!(temp_r0_3 & 0x400000)) {
                goto block_93;
            }
            temp_r4_5 = &gPlayers[(u32) (arg0->unk2B << 0x1E) >> 0x1E];
            sub_80193A4(arg0);
            Player_StopSong(arg0, SE_TAGACTION_BUILDUP);
            if (arg0->moveState & 0x400000) {
                arg0->unk42 = temp_r6_2;
                arg0->moveState &= 0xFFBFFFFF;
            }
            temp_r1_6 = arg0->moveState;
            if (0x800000 & temp_r1_6) {
                arg0->moveState = temp_r1_6 & 0xFF7FFFFF;
                temp_r4_5->qWorldX = arg0->qWorldX;
                temp_r4_5->qWorldY = arg0->qWorldY;
                temp_r4_5->moveState &= 0xFEFFFFFF;
            }
            var_r1 = sub_801AE70;
            goto block_91;
        }
        break;
    case 3:
        temp_r4_6 = &gPlayers[(u32) (arg0->unk2B << 0x1E) >> 0x1E];
        sub_80193A4(arg0);
        Player_StopSong(arg0, SE_TAGACTION_BUILDUP);
        if (arg0->moveState & 0x400000) {
            arg0->unk42 = 0;
            arg0->moveState &= 0xFFBFFFFF;
        }
        temp_r1_7 = arg0->moveState;
        if (0x800000 & temp_r1_7) {
            arg0->moveState = temp_r1_7 & 0xFF7FFFFF;
            temp_r4_6->qWorldX = arg0->qWorldX;
            temp_r4_6->qWorldY = arg0->qWorldY;
            temp_r4_6->moveState &= 0xFEFFFFFF;
        }
        if (arg0->moveState & 0x80) {
            var_r1 = sub_801D950;
            goto block_91;
        }
        temp_r0_4 = arg0->unkC & 0x180;
        switch (temp_r0_4) {                        /* switch 3; irregular */
        case 0x80:                                  /* switch 3 */
            var_r1 = sub_801D8A8;
            goto block_91;
        case 0x100:                                 /* switch 3 */
            var_r1 = sub_801C348;
            goto block_91;
        case 0x180:                                 /* switch 3 */
            var_r1 = sub_801C2D8;
            goto block_91;
        }
        break;
    case 4:
        temp_r4_7 = &gPlayers[(u32) (arg0->unk2B << 0x1E) >> 0x1E];
        sub_80193A4(arg0);
        Player_StopSong(arg0, SE_TAGACTION_BUILDUP);
        if (arg0->moveState & 0x400000) {
            arg0->unk42 = 0;
            arg0->moveState &= 0xFFBFFFFF;
        }
        temp_r1_8 = arg0->moveState;
        if (0x800000 & temp_r1_8) {
            arg0->moveState = temp_r1_8 & 0xFF7FFFFF;
            temp_r4_7->qWorldX = arg0->qWorldX;
            temp_r4_7->qWorldY = arg0->qWorldY;
            temp_r4_7->moveState &= 0xFEFFFFFF;
        }
        temp_r0_5 = arg0->unkC & 0x180;
        switch (temp_r0_5) {                        /* switch 4; irregular */
        case 0x80:                                  /* switch 4 */
            var_r1 = sub_801E828;
            goto block_91;
        case 0x100:                                 /* switch 4 */
            var_r1 = sub_801E038;
            goto block_91;
        case 0x180:                                 /* switch 4 */
            var_r1 = sub_801E8E0;
            goto block_91;
        }
        break;
    }
}

void sub_8016D04(Player *p) {
    SetPlayerCallback(p, sub_800BBA0);
    Player_PlaySong(p, 0x9EU);
    p->unk56 = 0xE;
    p->unk57 = 0x78;
}

void sub_8016D30(Player *p) {
    s32 var_r0;
    u16 var_r3;

    p->qWorldX += p->qSpeedAirX;
    if ((p->moveState ^ p->moveState2) & 0x10000) {
        p->qSpeedAirY = 0 - (u16) p->qSpeedAirY;
    }
    var_r3 = (u16) p->qSpeedAirY;
    if ((s32) p->qSpeedAirY > 0xF00) {
        var_r3 = 0xF00;
    }
    p->qSpeedAirY = (s16) var_r3;
    if (p->moveState & 0x10000) {
        var_r0 = p->qWorldY - p->qSpeedAirY;
    } else {
        var_r0 = p->qWorldY + p->qSpeedAirY;
    }
    p->qWorldY = var_r0;
}

s32 sub_8016D88(Player *arg0) {
    u32 temp_r1;
    void (*var_r1)(Player *);

    if ((arg0->charFlags.anim0 == 2) && (gStageData.buttonConfig.jump & arg0->keyInput2)) {
        if (gStageData.gameMode != 7) {
            temp_r1 = arg0->unkC & 6;
            switch (temp_r1) {                      /* irregular */
            case 2:
                var_r1 = Player_800872C;
block_12:
                SetPlayerCallback(arg0, var_r1);
                goto block_15;
            case 4:
                var_r1 = sub_801DFC4;
                goto block_12;
            case 6:
                var_r1 = sub_801E65C;
                goto block_12;
            }
        } else {
            SetPlayerCallback(arg0, Player_800872C);
block_15:
            return 1;
        }
    } else {
        return 0;
    }
}

void sub_8016E00(Player *p) {
    s16 *temp_r4;
    s16 var_r0;
    s16 var_r1;

    temp_r4 = &p->unk4E;
    if (*temp_r4 != 0) {
        var_r0 = (u16) *temp_r4 - 1;
        goto block_7;
    }
    if ((p->unk26 + 0x20) & 0xC0) {
        var_r1 = p->qSpeedGround;
        if ((s32) var_r1 < 0) {
            var_r1 = 0 - var_r1;
        }
        if ((s32) var_r1 <= 0x1DF) {
            SetPlayerCallback(p, Player_800DAF4);
            var_r0 = 0x1E;
block_7:
            *temp_r4 = var_r0;
        }
    }
}

void sub_8016E50(Player *p) {
    s16 var_r0;

    if (p->moveState & 0x80) {
        var_r0 = (u16) p->qSpeedAirY + 0xC;
    } else {
        var_r0 = (u16) p->qSpeedAirY + 0x2A;
    }
    p->qSpeedAirY = var_r0;
}

void sub_8016E70(Player *arg0) {
    u32 temp_r1;

    if ((s32) arg0->qSpeedAirY >= 0) {
        sub_8012C34(arg0);
        sub_8012CF8(arg0);
    } else {
        sub_8012CF8(arg0);
        sub_8012C34(arg0);
    }
    temp_r1 = arg0->moveState;
    if (!(4 & temp_r1)) {
        arg0->moveState = temp_r1 & 0xFFF7FFFF;
    }
}

void sub_8016EB0(Player *p) {
    s8 var_r1;

    var_r1 = (s8) p->unk26;
    if ((s32) var_r1 < 0) {
        var_r1 += 2;
        if ((s32) var_r1 > 0) {
            goto block_5;
        }
    } else if ((s32) var_r1 > 0) {
        var_r1 -= 2;
        if ((s32) var_r1 < 0) {
block_5:
            var_r1 = 0;
        }
    }
    p->unk26 = (u8) var_r1;
}

s32 sub_8016EDC(Player *arg0) {
    if (((0xF0 & arg0->keyInput) == 0x40) && (arg0->qSpeedGround == 0) && !((arg0->unk26 + 0x20) & 0xC0) && !(arg0->moveState & 0x20006)) {
        SetPlayerCallback(arg0, Player_80082BC);
        return 1;
    }
    return 0;
}

void sub_8016F28(Player *p) {
    Player *temp_r5;
    u32 temp_r1;

    temp_r5 = &gPlayers[(u32) (p->unk2B << 0x1E) >> 0x1E];
    sub_80193A4(p);
    Player_StopSong(p, SE_TAGACTION_BUILDUP);
    if (p->moveState & 0x400000) {
        p->unk42 = 0;
        p->moveState &= 0xFFBFFFFF;
    }
    temp_r1 = p->moveState;
    if (0x800000 & temp_r1) {
        p->moveState = temp_r1 & 0xFF7FFFFF;
        temp_r5->qWorldX = p->qWorldX;
        temp_r5->qWorldY = p->qWorldY;
        temp_r5->moveState &= 0xFEFFFFFF;
    }
}

s32 sub_8016FA8(Player *arg0) {
    s32 temp_r4;

    temp_r4 = arg0->qWorldY;
    if ((arg0 == &gPlayers[gStageData.playerIndex]) || (gStageData.unk4 != 1)) {
        if (arg0->moveState & 0x10000) {
            if (temp_r4 <= (s32) (gCamera.unk10 << 8)) {
                goto block_4;
            }
            goto block_6;
        }
        if (temp_r4 < (s32) ((gCamera.unk14 << 8) - 1)) {
            goto block_6;
        }
block_4:
        return 1;
    }
block_6:
    return 0;
}

void sub_8017004(Player *p) {
    u32 temp_r1;

    temp_r1 = p->moveState;
    if ((0x24 & temp_r1) == 0x20) {
        if ((gStageData.gameMode != 7) && (temp_r1 & 0x800000)) {
            SetPlayerCallback(p, Player_80077CC);
        } else {
            SetPlayerCallback(p, Player_8005380);
        }
        p->qSpeedGround = (s16) (u16) p->qSpeedAirX;
        p->unk26 = 0;
    }
}

s32 sub_8017058(Player *arg0) {
    u32 temp_r1;

    if ((gStageData.gameMode == 7) || (temp_r1 = arg0->moveState, ((0x8000 & temp_r1) != 0)) || (temp_r1 & 0x800000) || ((sub_8015E0C(arg0) == 0) && (sub_80167A4(arg0) == 0))) {
        return 0;
    }
    return 1;
}

void sub_80170A0(Player *p) {
    u16 temp_r1;

    temp_r1 = TaskCreate(sub_8018238, 0x30U, 0x3100U, 0U, sub_8019318)->data;
    temp_r1->unk28 = p;
    temp_r1->unk0 = VramMalloc(0x14U);
    temp_r1->unk8 = 0x1000;
    if (!(p->moveState & 1)) {
        temp_r1->unk8 = (s32) (0x400 | 0x1000);
    }
    if (p->moveState & 0x10000) {
        temp_r1->unk8 = (s32) (temp_r1->unk8 | 0x800);
    }
    temp_r1->unkC = 0x533;
    temp_r1->unk10 = 0;
    temp_r1->unk12 = 0;
    temp_r1->unk14 = 0;
    temp_r1->unk16 = 0;
    temp_r1->unk18 = 0xFFFF;
    temp_r1->unk1A = 0;
    temp_r1->unk1B = 0xFF;
    temp_r1->unk1C = 0x10;
    temp_r1->unk1F = 0;
    temp_r1->unk20 = -1;
}

void sub_8017134(Player *arg0) {
    s16 var_r0;
    u16 temp_r4;

    temp_r4 = TaskCreate(sub_801952C, 0x2CU, 0x3100U, 0U, sub_801932C)->data;
    temp_r4->unk0 = VramMalloc(4U);
    temp_r4->unk8 = 0x1000;
    temp_r4->unkC = 0x534;
    temp_r4->unk10 = 0;
    temp_r4->unk12 = 0;
    temp_r4->unk14 = 0;
    temp_r4->unk16 = 0;
    temp_r4->unk18 = 0xFFFF;
    temp_r4->unk1A = 0;
    temp_r4->unk1B = 0xFF;
    temp_r4->unk1C = 0x10;
    temp_r4->unk1F = 0;
    temp_r4->unk20 = -1;
    temp_r4->unk28 = (s16) ((s32) arg0->qWorldX >> 8);
    if (arg0->moveState & 0x10000) {
        var_r0 = ((s32) arg0->qWorldY >> 8) - 0xE;
    } else {
        var_r0 = ((s32) arg0->qWorldY >> 8) + 0xE;
    }
    temp_r4->unk2A = var_r0;
}

void sub_80171C0(Player *arg0) {
    s32 temp_r1;
    u16 temp_r4;

    temp_r4 = TaskCreate(sub_801952C, 0x2CU, 0x3100U, 0U, sub_8019340)->data;
    temp_r4->unk0 = VramMalloc(0x14U);
    temp_r1 = arg0->spriteData->s.frameFlags & 0x3000;
    temp_r4->unk8 = temp_r1;
    if ((s32) arg0->qSpeedGround > 0) {
        temp_r4->unk8 = (s32) (temp_r1 | 0x400);
    }
    temp_r4->unkC = 0x531;
    temp_r4->unk10 = 0;
    temp_r4->unk12 = 0;
    temp_r4->unk14 = (s16) (arg0->spriteData->s.oamFlags + 0x40);
    temp_r4->unk16 = 0;
    temp_r4->unk18 = 0xFFFF;
    temp_r4->unk1A = 0;
    temp_r4->unk1B = 0xFF;
    temp_r4->unk1C = 0x10;
    temp_r4->unk1F = 0;
    temp_r4->unk20 = -1;
    temp_r4->unk28 = (s16) ((s32) arg0->qWorldX >> 8);
    temp_r4->unk2A = (s16) (((s32) arg0->qWorldY >> 8) + 0xE);
}

void sub_8017258(Player *arg0) {
    s32 temp_r1;
    u16 temp_r4;

    temp_r4 = TaskCreate(sub_801952C, 0x2CU, 0x3100U, 0U, sub_8019340)->data;
    temp_r4->unk0 = VramMalloc(0x19U);
    temp_r1 = arg0->spriteData->s.frameFlags & 0x3000;
    temp_r4->unk8 = temp_r1;
    if ((s32) arg0->qSpeedGround > 0) {
        temp_r4->unk8 = (s32) (temp_r1 | 0x400);
    }
    temp_r4->unkC = 0x543;
    temp_r4->unk10 = 0;
    temp_r4->unk12 = 0;
    temp_r4->unk14 = (s16) (arg0->spriteData->s.oamFlags + 0x40);
    temp_r4->unk16 = 0;
    temp_r4->unk18 = 0xFFFF;
    temp_r4->unk1A = 0;
    temp_r4->unk1B = 0xFF;
    temp_r4->unk1C = 0x10;
    temp_r4->unk1F = 0;
    temp_r4->unk20 = -1;
    temp_r4->unk28 = (s16) ((s32) arg0->qWorldX >> 8);
    temp_r4->unk2A = (s16) (((s32) arg0->qWorldY >> 8) + 0xE);
}

void sub_80172F0(Player *arg0, u16 arg1) {
    u16 temp_r4;

    temp_r4 = TaskCreate(sub_801957C, 0x2CU, 0x3100U, 0U, sub_8019354)->data;
    temp_r4->unk0 = VramMalloc(0xCU);
    temp_r4->unk8 = 0;
    temp_r4->unkC = 0x3CB;
    temp_r4->unk10 = 0;
    temp_r4->unk12 = 0;
    temp_r4->unk14 = 0;
    temp_r4->unk16 = 0;
    temp_r4->unk18 = 0xFFFF;
    temp_r4->unk1A = 0;
    temp_r4->unk1B = 0xFF;
    temp_r4->unk1C = 0x10;
    temp_r4->unk1F = 0;
    temp_r4->unk20 = -1;
    temp_r4->unk28 = (s16) ((s32) arg0->qWorldX >> 8);
    temp_r4->unk2A = arg1;
}

void sub_8017364(Player *arg0) {
    Task *temp_r0;
    Task *temp_r6;
    u16 temp_r1;

    temp_r6 = arg0->unkD8;
    if (temp_r6 == NULL) {
        temp_r0 = TaskCreate(sub_80182D4, 0x30U, 0x3100U, 0U, sub_8019368);
        arg0->unkD8 = temp_r0;
        temp_r1 = temp_r0->data;
        temp_r1->unk28 = arg0;
        temp_r1->unk2C = (s16) ((s32) arg0->qWorldY >> 8);
        temp_r1->unk0 = VramMalloc(0xCU);
        temp_r1->unk8 = 0x1000;
        if (!(arg0->moveState & 1)) {
            temp_r1->unk8 = (s32) (0x400 | 0x1000);
        }
        temp_r1->unkC = 0x3CC;
        temp_r1->unk10 = (s16) temp_r6;
        temp_r1->unk12 = (s16) temp_r6;
        temp_r1->unk14 = (s16) temp_r6;
        temp_r1->unk16 = (s16) temp_r6;
        temp_r1->unk18 = 0xFFFF;
        temp_r1->unk1A = 0;
        temp_r1->unk1B = 0xFF;
        temp_r1->unk1C = 0x10;
        temp_r1->unk1F = 0;
        temp_r1->unk20 = -1;
    }
}

void sub_80173F0(Player *arg0) {
    Sprite *temp_r1;
    Sprite *temp_r1_2;
    s16 temp_r3_2;
    s16 var_r2;
    s32 temp_r2;
    s32 temp_r4;
    u16 temp_r3;
    u16 temp_r5;
    u16 temp_r7;
    u16 var_r5;
    void *temp_r0;

    temp_r5 = TaskCreate(sub_801839C, 0xE0U, 0x3100U, 0U, sub_8019318)->data;
    temp_r7 = temp_r5;
    temp_r0 = VramMalloc(0xDU);
    temp_r7->unk0 = temp_r0;
    temp_r5->unk7C = (s16) ((s32) arg0->qWorldX >> 8);
    temp_r5->unk7E = (s16) ((s32) arg0->qWorldY >> 8);
    temp_r1 = temp_r5 + 4;
    temp_r5->unk4 = temp_r0;
    temp_r1->frameFlags = 0x1000;
    temp_r1->anim = 0x38F;
    temp_r1->x = 0;
    temp_r1->y = 0;
    temp_r1->oamFlags = 0;
    temp_r1->qAnimDelay = 0;
    temp_r1->prevAnim = 0xFFFF;
    temp_r1->variant = 1;
    temp_r1->prevVariant = 0xFF;
    temp_r1->animSpeed = 0x10;
    temp_r1->palId = 0;
    temp_r1->hitboxes[0].index = -1;
    UpdateSpriteAnimation(temp_r1);
    temp_r5->unk80 = 0;
    temp_r5->unk82 = 0;
    temp_r5->unkB0 = 0;
    temp_r5->unkB2 = 0;
    temp_r1_2 = temp_r5 + 0x2C;
    temp_r5->unk2C = (void *) (temp_r0 + 0x120);
    temp_r1_2->frameFlags = 0x1000;
    temp_r1_2->anim = 0x38F;
    temp_r1_2->x = 0;
    temp_r1_2->y = 0;
    temp_r1_2->oamFlags = 0;
    temp_r1_2->qAnimDelay = 0;
    temp_r1_2->prevAnim = -1U;
    temp_r1_2->variant = 2;
    temp_r1_2->prevVariant = -1U;
    temp_r1_2->animSpeed = 0x10;
    temp_r1_2->palId = 0;
    temp_r1_2->hitboxes[0].index = -1;
    UpdateSpriteAnimation(temp_r1_2);
    var_r5 = (u16) sa2__sub_8004418((s16) ((s32) (arg0->qSpeedAirY << 0x10) >> 0x16), (s16) ((s32) (arg0->qSpeedAirX << 0x10) >> 0x16));
    var_r2 = 1;
    do {
        temp_r3_2 = var_r2;
        temp_r4 = temp_r3_2 * 4;
        *(temp_r7 + 0x80 + temp_r4) = 0;
        *(temp_r7 + 0x82 + temp_r4) = 0;
        temp_r2 = ((s32) (var_r2 << 0x10) >> 0x12) + 8;
        *(temp_r7 + 0xB0 + temp_r4) = (s16) ((s16) gSineTable[var_r5 + 0x100] >> temp_r2);
        *(temp_r7 + 0xB2 + temp_r4) = (s16) ((s16) gSineTable[var_r5] >> temp_r2);
        var_r5 = (var_r5 + 0xE0) & 0x3FF;
        temp_r3 = temp_r3_2 + 1;
        var_r2 = (s16) temp_r3;
    } while ((s32) (s16) temp_r3 <= 0xB);
}

void sub_8017584(Player *p) {
    s32 var_r0;
    u8 *temp_r1;

    if ((gStageData.act != 7) && ((u32) gStageData.gameMode <= 5U)) {
        if (p == gPlayers) {
            var_r0 = 0x06012800;
        } else {
            var_r0 = 0x06013000;
        }
        p->Padding114[0].unk0 = var_r0;
        temp_r1 = p->Padding114;
        temp_r1->unk8 = 0x1000;
        temp_r1->unkC = (u16) gUnknown_08E2EAF4.unk0;
        temp_r1->unk10 = 0;
        temp_r1->unk12 = 0;
        temp_r1->unk14 = 0;
        temp_r1->unk16 = 0;
        temp_r1->unk18 = 0xFFFF;
        temp_r1->unk1A = (s8) gUnknown_08E2EAF4.unk2;
        temp_r1->unk1B = 0xFF;
        temp_r1->unk1C = 0x10;
        temp_r1->unk1F = 0;
        temp_r1->unk20 = -1;
        p->unk13C = 0;
        p->unk13D = 0;
    }
}

void sub_8017618(Player *p) {
    PlayerSprite **temp_r2;
    s32 temp_r7;
    s32 var_r0_2;
    s32 var_r8;
    u16 var_r0;
    u8 *temp_r3;
    u8 *temp_r4;
    u8 temp_r0;
    u8 temp_r1;
    u8 var_r5;

    var_r8 = 0;
    if ((u32) gStageData.gameMode > 5U) {
        return;
    }
    if ((u32) (u8) (gStageData.unk4 - 5) <= 1U) {
        return;
    }
    if (gStageData.unk85 != 0) {
        p->unk13D = 0;
        return;
    }
    if (gStageData.act == 7) {
        return;
    }
    temp_r1 = p->unk13C;
    var_r5 = 0x40 & temp_r1;
    if (var_r5 == 0) {
        var_r5 = 0x20 & temp_r1;
        if (var_r5 == 0) {
            var_r5 = 0x10 & temp_r1;
            if ((var_r5 == 0) && (p->unkC & 0x40000) && ((p->moveState & 0x180) == 0x80)) {
                var_r5 = 0x80;
            }
        }
    }
    temp_r3 = &p->unk13C;
    temp_r0 = *temp_r3;
    temp_r7 = (0xF & temp_r0) + 1;
    *temp_r3 = (0xF0 & temp_r0) | (temp_r7 & 0xF);
    if (var_r5 == 0) {
        *temp_r3 = var_r5;
        p->unk13D = var_r5;
        return;
    }
    temp_r4 = p->Padding114;
    if (p->unk13D != var_r5) {
        switch (var_r5) {                           /* irregular */
        case 0x40:
            temp_r4->unkC = (u16) gUnknown_08E2EAF4.unk8;
            temp_r4->unk1A = (s8) gUnknown_08E2EAF4.unkA;
block_29:
            temp_r4->unk18 = 0xFFFF;
            temp_r4->unk1B = 0xFF;
            p->unk13D = var_r5;
            goto block_30;
        case 0x20:
            temp_r4->unkC = (u16) gUnknown_08E2EAF4.unk4;
            var_r0 = gUnknown_08E2EAF4.unk6;
block_27:
            temp_r4->unk1A = (s8) var_r0;
            Player_PlaySong(p, 0x97U);
            goto block_29;
        case 0x10:
            temp_r4->unkC = (u16) gUnknown_08E2EAF4.unk0;
            var_r0 = gUnknown_08E2EAF4.unk2;
            goto block_27;
        case 0x80:
            temp_r4->unkC = (u16) gUnknown_08E2EAF4.unkC;
            temp_r4->unk1A = (s8) gUnknown_08E2EAF4.unkE;
            Player_PlaySong(p, 0x97U);
            goto block_29;
        }
    } else {
block_30:
        temp_r4->unk10 = (s16) (((s32) p->qWorldX >> 8) - gCamera.x);
        temp_r4->unk12 = (s16) (((s32) p->qWorldY >> 8) - gCamera.y);
        temp_r2 = &p->spriteData;
        temp_r4->unk14 = (s16) ((u16) (*temp_r2)->s.oamFlags - 0x40);
        temp_r4->unk8 = (s32) (temp_r4->unk8 & 0xFFFFCFFF);
        temp_r4->unk8 = (s32) ((*temp_r2)->s.frameFlags & 0x3000);
        UpdateSpriteAnimation((Sprite *) temp_r4);
        if (p == gPlayers) {
            if (temp_r7 & 2) {
                var_r8 = 1;
            }
        } else if (!(temp_r7 & 2)) {
            var_r8 = 1;
        }
        if (gStageData.unk4 == 1) {
            if (gStageData.unk4 & gStageData.unkBC) {
                var_r0_2 = temp_r4->unk8 | 0x80;
            } else {
                var_r0_2 = temp_r4->unk8 & ~0x80;
            }
            temp_r4->unk8 = var_r0_2;
            if (2 & gStageData.unkBC) {
                return;
            }
            goto block_42;
        }
        temp_r4->unk8 = (s32) (temp_r4->unk8 & ~0x80);
block_42:
        if (var_r8 != 0) {
            DisplaySprite((Sprite *) temp_r4);
        }
    }
}

void sub_801782C(Player *arg0, u16 arg1) {
    s32 sp4;
    s16 temp_r1;
    s32 temp_r4;
    u16 temp_r5;

    temp_r1 = (s16) arg1;
    if ((s32) temp_r1 <= 5) {
        if ((temp_r1 == 5) && (&gPlayers[gStageData.playerIndex] == arg0)) {
            gUnknown_03001CF0.unk4 = 0x10;
        }
        temp_r5 = TaskCreate(sub_80184F8, 0x30U, 0x3100U, 0U, sub_80193EC)->data;
        temp_r5->unk2C = arg0;
        temp_r5->unk28 = 0;
        temp_r4 = (s16) arg1 * 6;
        sp4 = 0;
        temp_r5->unk0 = VramMalloc((u32) *(temp_r4 + (&gUnknown_08E2EAD0 + 4)));
        temp_r5->unk8 = 0;
        temp_r5->unkC = (u16) *(temp_r4 + &gUnknown_08E2EAD0);
        temp_r5->unk1A = (s8) *(temp_r4 + (&gUnknown_08E2EAD0 + 2));
        temp_r5->unk10 = (s16) (((s32) arg0->qWorldX >> 8) - gCamera.x);
        temp_r5->unk12 = (s16) ((((s32) arg0->qWorldY >> 8) - gCamera.y) - 0x10);
        temp_r5->unk14 = 0;
        temp_r5->unk16 = 0;
        temp_r5->unk18 = 0xFFFF;
        temp_r5->unk1B = 0xFF;
        temp_r5->unk1C = 0x10;
        temp_r5->unk1F = 0;
        temp_r5->unk20 = -1;
        UpdateSpriteAnimation((Sprite *) temp_r5);
    }
}

void sub_8017914(Player *arg0) {
    s16 var_r0;
    u16 temp_r0;

    temp_r0 = TaskCreate(sub_8019698, 0x30U, 0x3100U, 0U, sub_8019400)->data;
    temp_r0->unk28 = arg0;
    if (gStageData.zone == 6) {
        temp_r0->unk0 = VramMalloc(0xFU);
        var_r0 = 0x3E8;
    } else {
        temp_r0->unk0 = VramMalloc(0xFU);
        var_r0 = 0x3CA;
    }
    temp_r0->unkC = var_r0;
    temp_r0->unk1A = 0;
    temp_r0->unk8 = 0x1000;
    if (arg0->moveState & 1) {
        temp_r0->unk8 = (s32) (0x400 | 0x1000);
    }
    temp_r0->unk10 = 0;
    temp_r0->unk12 = 0;
    temp_r0->unk14 = 0;
    temp_r0->unk16 = 0;
    temp_r0->unk18 = 0xFFFF;
    temp_r0->unk1B = 0xFF;
    temp_r0->unk1C = 0x10;
    temp_r0->unk1F = 0;
    temp_r0->unk20 = -1;
    Player_PlaySong(arg0, 0x11AU);
}

void sub_80179BC(void *arg0) {
    Task *temp_r0;
    Task *temp_r5;
    s32 temp_r1;
    u16 temp_r1_2;

    temp_r1 = 0x1C & arg0->unk2B;
    if ((temp_r1 != 0) && (temp_r1 != 0x14)) {
        temp_r5 = arg0->unkDC;
        if (temp_r5 == NULL) {
            temp_r0 = TaskCreate(sub_80191C8, 0x30U, 0x3100U, 0U, sub_8019390);
            arg0->unkDC = temp_r0;
            temp_r1_2 = temp_r0->data;
            temp_r1_2->unk28 = arg0;
            temp_r1_2->unk0 = VramMalloc(8U);
            temp_r1_2->unk8 = 0x1000;
            if (arg0->unk4 & 0x10000) {
                temp_r1_2->unk8 = (s32) (0x800 | 0x1000);
            }
            temp_r1_2->unkC = 0x5E3;
            temp_r1_2->unk10 = (s16) temp_r5;
            temp_r1_2->unk12 = (s16) temp_r5;
            temp_r1_2->unk14 = (s16) temp_r5;
            temp_r1_2->unk16 = (s16) temp_r5;
            temp_r1_2->unk18 = 0xFFFF;
            temp_r1_2->unk1A = 0;
            temp_r1_2->unk1B = 0xFF;
            temp_r1_2->unk1C = 0x10;
            temp_r1_2->unk1F = 0;
            temp_r1_2->unk20 = -1;
        }
    }
}

void sub_8017A58(void *arg0) {
    s32 temp_r1;
    s32 var_r0;
    u16 temp_r0;

    temp_r1 = 0x1C & arg0->unk2B;
    if ((temp_r1 != 0) && (temp_r1 != 0x14)) {
        temp_r0 = TaskCreate(sub_8019240, 0x30U, 0x3100U, 0U, NULL)->data;
        temp_r0->unk28 = arg0;
        temp_r0->unk2C = 0x1E;
        if ((u32) gStageData.gameMode <= 5U) {
            var_r0 = 0x06014180;
            goto block_6;
        }
        if (gStageData.gameMode == 6) {
            var_r0 = 0x060141A0;
block_6:
            temp_r0->unk0 = var_r0;
        }
        temp_r0->unk14 = 0x280;
        temp_r0->unkC = 0x535;
        temp_r0->unk1A = 0;
        temp_r0->unkE = 0;
        temp_r0->unk16 = 0;
        temp_r0->unk18 = 0xFFFF;
        temp_r0->unk1B = 0xFF;
        temp_r0->unk1C = 0x10;
        temp_r0->unk1F = 0;
        temp_r0->unk8 = 0xC1200;
        temp_r0->unk20 = -1;
    }
}

void sub_8017AF4(Player *arg0) {
    s16 var_r0;
    u16 temp_r4;

    temp_r4 = TaskCreate(sub_801952C, 0x2CU, 0x3100U, 0U, sub_8019428)->data;
    temp_r4->unk0 = VramMalloc(4U);
    temp_r4->unk8 = 0x1000;
    temp_r4->unkC = 0x534;
    temp_r4->unk10 = 0;
    temp_r4->unk12 = 0;
    temp_r4->unk14 = 0;
    temp_r4->unk16 = 0;
    temp_r4->unk18 = 0xFFFF;
    temp_r4->unk1A = 0;
    temp_r4->unk1B = 0xFF;
    temp_r4->unk1C = 8;
    temp_r4->unk1F = 0;
    temp_r4->unk20 = -1;
    temp_r4->unk28 = (s16) ((s32) arg0->qWorldX >> 8);
    if (arg0->moveState & 0x10000) {
        var_r0 = ((s32) arg0->qWorldY >> 8) - 0xE;
    } else {
        var_r0 = ((s32) arg0->qWorldY >> 8) + 0xE;
    }
    temp_r4->unk2A = var_r0;
}

void sub_8017B80(Player *arg0) {
    u16 temp_r1;

    temp_r1 = TaskCreate(sub_80195CC, 0x2CU, 0x3100U, 0U, sub_8019464)->data;
    temp_r1->unk28 = arg0;
    temp_r1->unk0 = VramMalloc(0x10U);
    temp_r1->unk8 = 0x1000;
    if (!(arg0->moveState & 1)) {
        temp_r1->unk8 = (s32) (0x400 | 0x1000);
    }
    temp_r1->unkC = 0x2B;
    temp_r1->unk10 = 0;
    temp_r1->unk12 = 0;
    temp_r1->unk14 = 0;
    temp_r1->unk16 = 0;
    temp_r1->unk18 = 0xFFFF;
    temp_r1->unk1A = 1;
    temp_r1->unk1B = 0xFF;
    temp_r1->unk1C = 0x10;
    temp_r1->unk1F = 0;
    temp_r1->unk20 = -1;
}

void sub_8017BFC(Player *arg0) {
    s16 temp_r1_2;
    s16 var_r0;
    s32 temp_r2;
    u16 temp_r1;
    u16 temp_r5;

    temp_r5 = TaskCreate(sub_8018550, 0x50U, 0x3100U, 0U, sub_801948C)->data;
    temp_r5->unk28 = arg0;
    temp_r5->unk0 = VramMalloc(0x10U);
    temp_r5->unk8 = 0x1000;
    temp_r5->unkC = 0x6B;
    temp_r5->unk10 = 0;
    temp_r5->unk12 = 0;
    temp_r5->unk14 = 0x600;
    temp_r5->unk16 = 0;
    temp_r5->unk18 = 0xFFFF;
    temp_r5->unk1A = 3;
    temp_r5->unk1B = 0xFF;
    temp_r5->unk1C = 0x10;
    temp_r5->unk1F = 0;
    temp_r5->unk20 = -1;
    temp_r5->unk2C = 0;
    temp_r5->unk2D = 0;
    var_r0 = 0;
    do {
        temp_r1_2 = var_r0;
        temp_r2 = temp_r1_2 * 4;
        *(temp_r5 + 0x2E + temp_r2) = (s16) ((s32) arg0->qWorldX >> 8);
        *(temp_r5 + 0x30 + temp_r2) = (s16) ((s32) arg0->qWorldY >> 8);
        temp_r1 = temp_r1_2 + 1;
        var_r0 = (s16) temp_r1;
    } while ((s32) (s16) temp_r1 <= 7);
}

void sub_8017CA8(Player *arg0) {
    u16 temp_r4;

    temp_r4 = TaskCreate(sub_801862C, 0x2CU, 0x3100U, 0U, sub_80194A0)->data;
    temp_r4->unk28 = arg0;
    temp_r4->unk0 = VramMalloc(8U);
    temp_r4->unk8 = 0x1000;
    temp_r4->unkC = 0x53F;
    temp_r4->unk10 = 0;
    temp_r4->unk12 = 0;
    temp_r4->unk14 = 0x3C0;
    temp_r4->unk16 = 0;
    temp_r4->unk18 = 0xFFFF;
    temp_r4->unk1A = 0;
    temp_r4->unk1B = 0xFF;
    temp_r4->unk1C = 0x10;
    temp_r4->unk1F = 0;
    temp_r4->unk20 = -1;
}

void Player_8017D18(Player *arg0) {
    s16 temp_r2_2;
    s16 var_r0;
    s32 temp_r1_2;
    u16 temp_r1;
    u16 temp_r2;
    void *temp_r0;
    void *temp_r1_3;
    void *var_r4;

    temp_r1 = TaskCreate(sub_80186A0, 0xCCU, 0x3100U, 0U, sub_80194B4)->data;
    temp_r1->unk8 = arg0;
    temp_r1->unk4 = 0;
    temp_r0 = VramMalloc(0x10U);
    temp_r1->unk0 = temp_r0;
    var_r4 = temp_r0;
    var_r0 = 0;
    do {
        temp_r2_2 = var_r0;
        temp_r1_2 = temp_r2_2 * 0x30;
        (temp_r1 + temp_r1_2)->unk34 = 0;
        temp_r1_3 = temp_r1 + (temp_r1_2 + 0xC);
        temp_r1_3->unk0 = var_r4;
        temp_r1_3->unk8 = 0x1000;
        temp_r1_3->unkC = 0x525;
        temp_r1_3->unk10 = 0;
        temp_r1_3->unk12 = 0;
        temp_r1_3->unk14 = 0x500;
        temp_r1_3->unk16 = 0;
        temp_r1_3->unk18 = 0xFFFF;
        temp_r1_3->unk1A = 0;
        temp_r1_3->unk1B = 0xFF;
        temp_r1_3->unk1C = 0x10;
        temp_r1_3->unk1F = 0;
        temp_r1_3->unk20 = -1;
        var_r4 += 0x80;
        temp_r2 = temp_r2_2 + 1;
        var_r0 = (s16) temp_r2;
    } while ((s32) (s16) temp_r2 <= 3);
}

void sub_8017DB4(Player *arg0) {
    s16 temp_r2_2;
    s16 var_r0;
    s32 temp_r1_2;
    u16 temp_r1;
    u16 temp_r2;
    void *temp_r0;
    void *temp_r1_3;
    void *var_r4;

    temp_r1 = TaskCreate(sub_8018984, 0xCCU, 0x3100U, 0U, sub_8019504)->data;
    temp_r1->unk8 = arg0;
    temp_r1->unk4 = 0;
    temp_r0 = VramMalloc(0x10U);
    temp_r1->unk0 = temp_r0;
    var_r4 = temp_r0;
    var_r0 = 0;
    do {
        temp_r2_2 = var_r0;
        temp_r1_2 = temp_r2_2 * 0x30;
        (temp_r1 + temp_r1_2)->unk34 = 0;
        temp_r1_3 = temp_r1 + (temp_r1_2 + 0xC);
        temp_r1_3->unk0 = var_r4;
        temp_r1_3->unk8 = 0x1000;
        temp_r1_3->unkC = 0x525;
        temp_r1_3->unk10 = 0;
        temp_r1_3->unk12 = 0;
        temp_r1_3->unk14 = 0x500;
        temp_r1_3->unk16 = 0;
        temp_r1_3->unk18 = 0xFFFF;
        temp_r1_3->unk1A = 0;
        temp_r1_3->unk1B = 0xFF;
        temp_r1_3->unk1C = 0x10;
        temp_r1_3->unk1F = 0;
        temp_r1_3->unk20 = -1;
        var_r4 += 0x80;
        temp_r2 = temp_r2_2 + 1;
        var_r0 = (s16) temp_r2;
    } while ((s32) (s16) temp_r2 <= 3);
}

void sub_8017E50(Player *arg0) {
    s16 temp_r2_2;
    s16 var_r0;
    s32 temp_r1_2;
    u16 temp_r1;
    u16 temp_r2;
    void *temp_r0;
    void *temp_r1_3;
    void *var_r4;

    temp_r1 = TaskCreate(sub_8018AF8, 0xCCU, 0x3100U, 0U, sub_80194C8)->data;
    temp_r1->unk8 = arg0;
    temp_r1->unk4 = 0;
    temp_r1->unk6 = (s16) (arg0->moveState & 1);
    temp_r0 = VramMalloc(0x10U);
    temp_r1->unk0 = temp_r0;
    var_r4 = temp_r0;
    var_r0 = 0;
    do {
        temp_r2_2 = var_r0;
        temp_r1_2 = temp_r2_2 * 0x30;
        (temp_r1 + temp_r1_2)->unk34 = 0;
        temp_r1_3 = temp_r1 + (temp_r1_2 + 0xC);
        temp_r1_3->unk0 = var_r4;
        temp_r1_3->unk8 = 0x1000;
        temp_r1_3->unkC = 0x525;
        temp_r1_3->unk10 = 0;
        temp_r1_3->unk12 = 0;
        temp_r1_3->unk14 = 0x500;
        temp_r1_3->unk16 = 0;
        temp_r1_3->unk18 = 0xFFFF;
        temp_r1_3->unk1A = 0;
        temp_r1_3->unk1B = 0xFF;
        temp_r1_3->unk1C = 0x10;
        temp_r1_3->unk1F = 0;
        temp_r1_3->unk20 = -1;
        var_r4 += 0x80;
        temp_r2 = temp_r2_2 + 1;
        var_r0 = (s16) temp_r2;
    } while ((s32) (s16) temp_r2 <= 3);
}

void sub_8017EF4(Player *arg0) {
    s16 temp_r2_2;
    s16 var_r0;
    s32 temp_r1_2;
    u16 temp_r1;
    u16 temp_r2;
    void *temp_r0;
    void *temp_r1_3;
    void *var_r4;

    temp_r1 = TaskCreate(sub_8018C6C, 0xCCU, 0x3100U, 0U, sub_80194DC)->data;
    temp_r1->unk8 = arg0;
    temp_r1->unk4 = 0;
    temp_r1->unk6 = (s16) (arg0->moveState & 1);
    temp_r0 = VramMalloc(0x10U);
    temp_r1->unk0 = temp_r0;
    var_r4 = temp_r0;
    var_r0 = 0;
    do {
        temp_r2_2 = var_r0;
        temp_r1_2 = temp_r2_2 * 0x30;
        (temp_r1 + temp_r1_2)->unk34 = 0;
        temp_r1_3 = temp_r1 + (temp_r1_2 + 0xC);
        temp_r1_3->unk0 = var_r4;
        temp_r1_3->unk8 = 0x1000;
        temp_r1_3->unkC = 0x525;
        temp_r1_3->unk10 = 0;
        temp_r1_3->unk12 = 0;
        temp_r1_3->unk14 = 0x500;
        temp_r1_3->unk16 = 0;
        temp_r1_3->unk18 = 0xFFFF;
        temp_r1_3->unk1A = 0;
        temp_r1_3->unk1B = 0xFF;
        temp_r1_3->unk1C = 0x10;
        temp_r1_3->unk1F = 0;
        temp_r1_3->unk20 = -1;
        var_r4 += 0x80;
        temp_r2 = temp_r2_2 + 1;
        var_r0 = (s16) temp_r2;
    } while ((s32) (s16) temp_r2 <= 3);
}

void sub_8017F98(Player *arg0) {
    s16 temp_r2_2;
    s16 var_r0;
    s32 temp_r1_2;
    u16 temp_r1;
    u16 temp_r2;
    void *temp_r0;
    void *temp_r1_3;
    void *var_r4;

    temp_r1 = TaskCreate(sub_8018814, 0xCCU, 0x3100U, 0U, sub_80194B4)->data;
    temp_r1->unk8 = arg0;
    temp_r1->unk4 = 0;
    temp_r0 = VramMalloc(0x10U);
    temp_r1->unk0 = temp_r0;
    var_r4 = temp_r0;
    var_r0 = 0;
    do {
        temp_r2_2 = var_r0;
        temp_r1_2 = temp_r2_2 * 0x30;
        (temp_r1 + temp_r1_2)->unk34 = 0;
        temp_r1_3 = temp_r1 + (temp_r1_2 + 0xC);
        temp_r1_3->unk0 = var_r4;
        temp_r1_3->unk8 = 0x1000;
        temp_r1_3->unkC = 0x525;
        temp_r1_3->unk10 = 0;
        temp_r1_3->unk12 = 0;
        temp_r1_3->unk14 = 0x500;
        temp_r1_3->unk16 = 0;
        temp_r1_3->unk18 = 0xFFFF;
        temp_r1_3->unk1A = 0;
        temp_r1_3->unk1B = 0xFF;
        temp_r1_3->unk1C = 0x10;
        temp_r1_3->unk1F = 0;
        temp_r1_3->unk20 = -1;
        var_r4 += 0x80;
        temp_r2 = temp_r2_2 + 1;
        var_r0 = (s16) temp_r2;
    } while ((s32) (s16) temp_r2 <= 3);
}

void sub_8018034(Player *arg0) {
    s16 temp_r2_2;
    s16 var_r0;
    s32 temp_r1_2;
    u16 temp_r1;
    u16 temp_r2;
    void *temp_r0;
    void *temp_r1_3;
    void *var_r4;

    temp_r1 = TaskCreate(sub_8018DDC, 0xCCU, 0x3100U, 0U, sub_80194DC)->data;
    temp_r1->unk8 = arg0;
    temp_r1->unk4 = 0;
    temp_r1->unk6 = (s16) (arg0->moveState & 1);
    temp_r0 = VramMalloc(0x10U);
    temp_r1->unk0 = temp_r0;
    var_r4 = temp_r0;
    var_r0 = 0;
    do {
        temp_r2_2 = var_r0;
        temp_r1_2 = temp_r2_2 * 0x30;
        (temp_r1 + temp_r1_2)->unk34 = 0;
        temp_r1_3 = temp_r1 + (temp_r1_2 + 0xC);
        temp_r1_3->unk0 = var_r4;
        temp_r1_3->unk8 = 0x1000;
        temp_r1_3->unkC = 0x525;
        temp_r1_3->unk10 = 0;
        temp_r1_3->unk12 = 0;
        temp_r1_3->unk14 = 0x500;
        temp_r1_3->unk16 = 0;
        temp_r1_3->unk18 = 0xFFFF;
        temp_r1_3->unk1A = 0;
        temp_r1_3->unk1B = 0xFF;
        temp_r1_3->unk1C = 0x10;
        temp_r1_3->unk1F = 0;
        temp_r1_3->unk20 = -1;
        var_r4 += 0x80;
        temp_r2 = temp_r2_2 + 1;
        var_r0 = (s16) temp_r2;
    } while ((s32) (s16) temp_r2 <= 3);
}

void sub_80180D8(Player *arg0) {
    Task **temp_r4;
    Task *temp_r0;
    s32 var_r0;
    u16 temp_r0_2;

    temp_r4 = &arg0->taskTagAction;
    if (*temp_r4 == NULL) {
        temp_r0 = TaskCreate(sub_8018F90, 0x30U, 0x3100U, 0U, sub_80193E8);
        *temp_r4 = temp_r0;
        temp_r0_2 = temp_r0->data;
        temp_r0_2->unk28 = arg0;
        if ((u32) gStageData.gameMode <= 5U) {
            var_r0 = 0x06014580;
        } else {
            var_r0 = 0x060145A0;
        }
        temp_r0_2->unk0 = var_r0;
        temp_r0_2->unk8 = 0x1000;
        temp_r0_2->unkC = 0x53C;
        temp_r0_2->unk10 = 0;
        temp_r0_2->unk12 = 0;
        temp_r0_2->unk14 = 0x3C0;
        temp_r0_2->unk16 = 0;
        temp_r0_2->unk18 = 0xFFFF;
        temp_r0_2->unk1A = 0;
        temp_r0_2->unk1B = 0xFF;
        temp_r0_2->unk1C = 0x10;
        temp_r0_2->unk1F = 0;
        temp_r0_2->unk20 = -1;
    }
}

void sub_801816C(Player *arg0) {
    s32 temp_r1_2;
    u16 temp_r1_3;
    u32 *temp_r1;
    u32 temp_r0;
    u32 temp_r0_2;
    u32 var_r6;

    temp_r1 = &arg0->unkD4;
    if (*temp_r1 == 0) {
        var_r6 = 0;
        if (arg0 != gPlayers) {
loop_3:
            temp_r0 = (var_r6 << 0x10) + 0x10000;
            var_r6 = temp_r0 >> 0x10;
            temp_r1_2 = (s32) temp_r0 >> 0x10;
            if (temp_r1_2 <= 3) {
                if (arg0 != &gPlayers[temp_r1_2]) {
                    goto loop_3;
                }
            }
        }
        temp_r0_2 = (u32) TaskCreate(sub_8018F90, 0x30U, 0x3100U, 0U, NULL);
        *temp_r1 = temp_r0_2;
        temp_r1_3 = temp_r0_2->unk6;
        temp_r1_3->unk28 = arg0;
        temp_r1_3->unk0 = 0;
        temp_r1_3->unk8 = 0x80000;
        temp_r1_3->unkC = (u16) *(((u32) (arg0->unk2A << 0x1C) >> 0x1A) + &gUnknown_08E2EB04);
        temp_r1_3->unk10 = 0;
        temp_r1_3->unk12 = 0;
        temp_r1_3->unk14 = 0;
        temp_r1_3->unk16 = 0;
        temp_r1_3->unk18 = 0xFFFF;
        temp_r1_3->unk1A = (s8) *(((u32) (arg0->unk2A << 0x1C) >> 0x1A) + (&gUnknown_08E2EB04 + 2));
        temp_r1_3->unk1B = 0xFF;
        temp_r1_3->unk1C = 0x10;
        temp_r1_3->unk1F = (s8) var_r6;
        temp_r1_3->unk20 = -1;
        (*temp_r1)->unk8 = sub_8019628;
    }
}

void sub_8018238(void) {
    s16 temp_r0;
    s16 temp_r2;
    s16 var_r0;
    s16 var_r0_2;
    u16 temp_r1;
    void *temp_r3;

    temp_r1 = gCurTask->data;
    temp_r3 = temp_r1->unk28;
    temp_r0 = temp_r3->unk30;
    if (((temp_r0 != 0xA) && (temp_r0 != 0xF7)) || (temp_r3->unk4 & 0x200)) {
        TaskDestroy(gCurTask);
        return;
    }
    if ((s32) temp_r3->unk46 <= 0xFF) {
        var_r0 = 0x532;
    } else {
        var_r0 = 0x533;
    }
    temp_r1->unkC = var_r0;
    temp_r1->unk1A = 0;
    temp_r1->unk10 = (s16) (((s32) temp_r3->unk10 >> 8) - gCamera.x);
    temp_r2 = ((s32) temp_r3->unk14 >> 8) - gCamera.y;
    temp_r1->unk12 = temp_r2;
    if (temp_r3->unk4 & 0x10000) {
        var_r0_2 = temp_r2 - 9;
    } else {
        var_r0_2 = temp_r2 + 9;
    }
    temp_r1->unk12 = var_r0_2;
    UpdateSpriteAnimation((Sprite *) temp_r1);
    DisplaySprite((Sprite *) temp_r1);
}

void sub_80182D4(void) {
    Player *temp_r5;
    s32 temp_r0;
    s32 temp_r3;
    s32 var_r0;
    u16 temp_r1;
    u32 temp_r2;

    temp_r1 = gCurTask->data;
    temp_r5 = temp_r1->unk28;
    temp_r2 = temp_r5->moveState;
    if (((0x01041000 & temp_r2) != 0x1000) || (temp_r3 = (s32) (temp_r5->qWorldY << 8) >> 0x10, temp_r0 = temp_r1->unk2C - 8, (temp_r3 < temp_r0)) || (temp_r3 > (s32) (temp_r0 + 0x10))) {
        Player_StopSong(temp_r5, 0x119U);
        temp_r5->unkD8 = 0;
        TaskDestroy(gCurTask);
        return;
    }
    if (temp_r2 & 1) {
        temp_r1->unk10 = (s16) (((s32) temp_r5->qWorldX >> 8) - gCamera.x);
        var_r0 = temp_r1->unk8 | 0x400;
    } else {
        temp_r1->unk10 = (s16) (((s32) temp_r5->qWorldX >> 8) - gCamera.x);
        var_r0 = temp_r1->unk8 & 0xFFFFFBFF;
    }
    temp_r1->unk8 = var_r0;
    temp_r1->unk12 = (s16) ((s8) temp_r5->unk25 + (((s32) temp_r5->qWorldY >> 8) - gCamera.y) + 2);
    UpdateSpriteAnimation((Sprite *) temp_r1);
    DisplaySprite((Sprite *) temp_r1);
}

void sub_801839C(void) {
    Vec2_16 *sp0;
    u16 *sp4;
    Sprite *temp_r6;
    Sprite *temp_r6_2;
    s16 temp_r2_2;
    s16 temp_r3_3;
    s16 var_r0;
    s16 var_r0_2;
    s32 temp_r2_3;
    s32 temp_r3;
    u16 *temp_r1_2;
    u16 *temp_r1_3;
    u16 temp_r1;
    u16 temp_r2;
    u16 temp_r3_2;
    void *temp_r4;

    temp_r1 = gCurTask->data;
    var_r0 = 0;
    do {
        temp_r2_2 = var_r0;
        temp_r3 = temp_r2_2 * 4;
        temp_r1_2 = temp_r1 + 0x80 + temp_r3;
        *temp_r1_2 += *(temp_r1 + 0xB0 + temp_r3);
        temp_r1_3 = temp_r1 + 0x82 + temp_r3;
        *temp_r1_3 += *(temp_r1 + 0xB2 + temp_r3);
        temp_r2 = temp_r2_2 + 1;
        var_r0 = (s16) temp_r2;
    } while ((s32) (s16) temp_r2 <= 0xB);
    temp_r6 = temp_r1 + 4;
    temp_r6->x = (temp_r1->unk7C - gCamera.x) + ((s32) (temp_r1->unk80 << 0x10) >> 0x14);
    temp_r6->y = (temp_r1->unk7E - gCamera.y) + ((s32) (temp_r1->unk82 << 0x10) >> 0x14);
    UpdateSpriteAnimation(temp_r6);
    DisplaySprite(temp_r6);
    temp_r6_2 = temp_r6 + 0x28;
    temp_r6_2->x = (temp_r1->unk7C - gCamera.x) + ((s32) (temp_r1->unk84 << 0x10) >> 0x14);
    temp_r6_2->y = (temp_r1->unk7E - gCamera.y) + ((s32) (temp_r1->unk86 << 0x10) >> 0x14);
    UpdateSpriteAnimation(temp_r6_2);
    DisplaySprite(temp_r6_2);
    var_r0_2 = 0;
    sp0 = temp_r1 + 0x54;
    sp4 = temp_r1 + 0x7E;
    do {
        temp_r3_3 = var_r0_2;
        temp_r4 = temp_r1 + ((temp_r3_3 * 4) + 0x54);
        temp_r2_3 = (s32) ((var_r0_2 << 0x10) + 0x20000) >> 0xE;
        temp_r4->unk0 = (s16) ((temp_r1->unk7C - gCamera.x) + ((s32) (*(temp_r1 + 0x80 + temp_r2_3) << 0x10) >> 0x14));
        temp_r4->unk2 = (s16) ((*sp4 - gCamera.y) + ((s32) (*(temp_r2_3 + (temp_r1 + 0x82)) << 0x10) >> 0x14));
        temp_r3_2 = temp_r3_3 + 1;
        var_r0_2 = (s16) temp_r3_2;
    } while ((s32) (s16) temp_r3_2 <= 9);
    DisplaySprites(temp_r6_2, sp0, 0xAU);
}

void sub_80184F8(void) {
    u16 temp_r0;
    u16 temp_r1;
    void *temp_r4;

    temp_r1 = gCurTask->data;
    temp_r4 = temp_r1->unk2C;
    temp_r0 = temp_r1->unk28 + 1;
    temp_r1->unk28 = temp_r0;
    if ((s32) (s16) temp_r0 > 0x27) {
        TaskDestroy(gCurTask);
        return;
    }
    temp_r1->unk10 = (s16) (((s32) temp_r4->unk10 >> 8) - gCamera.x);
    temp_r1->unk12 = (s16) ((((s32) temp_r4->unk14 >> 8) - gCamera.y) - (((s32) (temp_r0 << 0x10) >> 0x11) + 0x10));
    DisplaySprite((Sprite *) temp_r1);
}

void sub_8018550(void) {
    s32 temp_r0;
    s32 temp_r1;
    s32 temp_r7;
    u16 temp_r3;
    void *temp_r4;

    memcpy(&subroutine_arg0, &gUnknown_080CE7A4, 4);
    temp_r3 = gCurTask->data;
    temp_r4 = temp_r3->unk28;
    temp_r3->unk2C = (u8) ((temp_r3->unk2C + 1) & 3);
    if ((temp_r4->unk30 != 0xAA) || ((u32) temp_r4->unk36 > 1U)) {
        TaskDestroy(gCurTask);
        return;
    }
    temp_r3->unk2D = (u8) ((temp_r3->unk2D + 1) & 7);
    temp_r0 = temp_r3 + 0x2E;
    *(((s8) temp_r3->unk2D * 4) + temp_r0) = (s16) ((s32) temp_r4->unk10 >> 8);
    temp_r7 = temp_r3 + 0x30;
    *(temp_r7 + ((s8) temp_r3->unk2D * 4)) = (s16) ((s32) temp_r4->unk14 >> 8);
    if ((temp_r4->unk36 == 1) && ((s32) temp_r4->unk1A >= 0)) {
        temp_r1 = ((temp_r3->unk2D - (*((s8) temp_r3->unk2C + sp) - 8)) & 7) * 4;
        temp_r3->unk10 = (s16) (*(temp_r0 + temp_r1) - gCamera.x);
        temp_r3->unk12 = (s16) (*(temp_r7 + temp_r1) - gCamera.y);
        UpdateSpriteAnimation((Sprite *) temp_r3);
        DisplaySprite((Sprite *) temp_r3);
    }
}

void sub_801862C(void) {
    s32 var_r0;
    u16 temp_r1;
    void *temp_r3;

    temp_r1 = gCurTask->data;
    temp_r3 = temp_r1->unk28;
    if ((u32) (u16) (temp_r3->unk30 - 0xF0) > 3U) {
        TaskDestroy(gCurTask);
        return;
    }
    temp_r1->unk10 = (s16) (((s32) temp_r3->unk10 >> 8) - gCamera.x);
    temp_r1->unk12 = (s16) (((s32) temp_r3->unk14 >> 8) - gCamera.y);
    if (temp_r3->unk4 & 1) {
        var_r0 = temp_r1->unk8 & 0xFFFFFBFF;
    } else {
        var_r0 = temp_r1->unk8 | 0x400;
    }
    temp_r1->unk8 = var_r0;
    UpdateSpriteAnimation((Sprite *) temp_r1);
    DisplaySprite((Sprite *) temp_r1);
}

void sub_80186A0(void) {
    Sprite *temp_r4_2;
    s16 temp_r1_2;
    s16 var_r0;
    s16 var_r2;
    s32 temp_r0_3;
    s32 temp_r3;
    s32 temp_r4;
    u16 temp_r0;
    u16 temp_r1;
    u16 temp_r1_3;
    u16 var_r0_2;
    u32 temp_r0_2;
    u32 temp_r0_4;
    u32 temp_r5;
    u32 var_r0_3;
    void *temp_r2;
    void *temp_r7;

    temp_r1 = gCurTask->data;
    temp_r7 = temp_r1->unk8;
    temp_r1_2 = temp_r7->unk30;
    if ((temp_r1_2 != 0xFE) && (temp_r1_2 != 0x10C)) {
        TaskDestroy(gCurTask);
        return;
    }
    temp_r0 = temp_r1->unk4;
    temp_r1_3 = temp_r0 + 1;
    temp_r1->unk4 = temp_r1_3;
    if (((u32) (u16) (temp_r0 - 8) <= 6U) && (temp_r1_3 & 1)) {
        temp_r0_2 = ((s16) temp_r1->unk4 - 9) << 0xF;
        temp_r5 = temp_r0_2 >> 0x10;
        temp_r0_3 = (s32) temp_r0_2 >> 0x10;
        temp_r4 = temp_r0_3 * 2;
        temp_r2 = temp_r1 + ((temp_r0_3 * 0x30) + 0xC);
        temp_r2->unk28 = 1;
        temp_r3 = (s32) temp_r7->unk10 >> 8;
        temp_r2->unk2A = (s16) temp_r3;
        temp_r2->unk2C = (u16) ((s32) temp_r7->unk14 >> 8);
        if (temp_r7->unk4 & 1) {
            var_r0 = temp_r3 + (s8) *(temp_r4 + &gUnknown_080CE7A8);
        } else {
            var_r0 = temp_r3 - (s8) *(temp_r4 + &gUnknown_080CE7A8);
        }
        temp_r2->unk2A = var_r0;
        if (temp_r7->unk4 & 0x10000) {
            var_r0_2 = temp_r2->unk2C - *(((s32) (temp_r5 << 0x10) >> 0xF) + (&gUnknown_080CE7A8 + 1));
        } else {
            var_r0_2 = (s8) *(((s32) (temp_r5 << 0x10) >> 0xF) + (&gUnknown_080CE7A8 + 1)) + temp_r2->unk2C;
        }
        temp_r2->unk2C = var_r0_2;
    }
    var_r2 = 0;
    do {
        temp_r4_2 = temp_r1 + ((var_r2 * 0x30) + 0xC);
        if (temp_r4_2->unk28 != 0) {
            temp_r4_2->x = temp_r4_2->unk2A - gCamera.x;
            temp_r4_2->y = temp_r4_2->unk2C - gCamera.y;
            if (temp_r7->unk4 & 0x10000) {
                var_r0_3 = temp_r4_2->frameFlags | 0x800;
            } else {
                var_r0_3 = temp_r4_2->frameFlags & 0xFFFFF7FF;
            }
            temp_r4_2->frameFlags = var_r0_3;
            UpdateSpriteAnimation(temp_r4_2);
            DisplaySprite(temp_r4_2);
            if (temp_r4_2->frameFlags & 0x4000) {
                temp_r4_2->unk28 = 0U;
            }
        }
        temp_r0_4 = (var_r2 << 0x10) + 0x10000;
        var_r2 = (s16) (temp_r0_4 >> 0x10);
    } while ((s32) ((s32) temp_r0_4 >> 0x10) <= 3);
}

void sub_8018814(void) {
    Sprite *temp_r4_2;
    s16 var_r0;
    s16 var_r2;
    s32 temp_r0_3;
    s32 temp_r3;
    s32 temp_r4;
    u16 temp_r0;
    u16 temp_r1;
    u16 temp_r1_2;
    u16 var_r0_2;
    u32 temp_r0_2;
    u32 temp_r0_4;
    u32 temp_r5;
    u32 var_r0_3;
    void *temp_r2;
    void *temp_r7;

    temp_r1 = gCurTask->data;
    temp_r7 = temp_r1->unk8;
    if (temp_r7->unk30 != 0x102) {
        TaskDestroy(gCurTask);
        return;
    }
    temp_r0 = temp_r1->unk4;
    temp_r1_2 = temp_r0 + 1;
    temp_r1->unk4 = temp_r1_2;
    if (((u32) (u16) (temp_r0 - 2) <= 6U) && (temp_r1_2 & 1)) {
        temp_r0_2 = ((s16) temp_r1->unk4 - 3) << 0xF;
        temp_r5 = temp_r0_2 >> 0x10;
        temp_r0_3 = (s32) temp_r0_2 >> 0x10;
        temp_r4 = temp_r0_3 * 2;
        temp_r2 = temp_r1 + ((temp_r0_3 * 0x30) + 0xC);
        temp_r2->unk28 = 1;
        temp_r3 = (s32) temp_r7->unk10 >> 8;
        temp_r2->unk2A = (s16) temp_r3;
        temp_r2->unk2C = (u16) ((s32) temp_r7->unk14 >> 8);
        if (temp_r7->unk4 & 1) {
            var_r0 = temp_r3 + (s8) *(temp_r4 + &gUnknown_080CE7A8);
        } else {
            var_r0 = temp_r3 - (s8) *(temp_r4 + &gUnknown_080CE7A8);
        }
        temp_r2->unk2A = var_r0;
        if (temp_r7->unk4 & 0x10000) {
            var_r0_2 = temp_r2->unk2C - *(((s32) (temp_r5 << 0x10) >> 0xF) + (&gUnknown_080CE7A8 + 1));
        } else {
            var_r0_2 = (s8) *(((s32) (temp_r5 << 0x10) >> 0xF) + (&gUnknown_080CE7A8 + 1)) + temp_r2->unk2C;
        }
        temp_r2->unk2C = var_r0_2;
    }
    var_r2 = 0;
    do {
        temp_r4_2 = temp_r1 + ((var_r2 * 0x30) + 0xC);
        if (temp_r4_2->unk28 != 0) {
            temp_r4_2->x = temp_r4_2->unk2A - gCamera.x;
            temp_r4_2->y = temp_r4_2->unk2C - gCamera.y;
            if (temp_r7->unk4 & 0x10000) {
                var_r0_3 = temp_r4_2->frameFlags | 0x800;
            } else {
                var_r0_3 = temp_r4_2->frameFlags & 0xFFFFF7FF;
            }
            temp_r4_2->frameFlags = var_r0_3;
            UpdateSpriteAnimation(temp_r4_2);
            DisplaySprite(temp_r4_2);
            if (temp_r4_2->frameFlags & 0x4000) {
                temp_r4_2->unk28 = 0U;
            }
        }
        temp_r0_4 = (var_r2 << 0x10) + 0x10000;
        var_r2 = (s16) (temp_r0_4 >> 0x10);
    } while ((s32) ((s32) temp_r0_4 >> 0x10) <= 3);
}

void sub_8018984(void) {
    Sprite *temp_r4_2;
    s16 var_r0;
    s16 var_r2;
    s32 temp_r0_3;
    s32 temp_r3;
    s32 temp_r4;
    u16 temp_r0;
    u16 temp_r1;
    u16 temp_r1_2;
    u16 var_r0_2;
    u32 temp_r0_2;
    u32 temp_r0_4;
    u32 temp_r5;
    u32 var_r0_3;
    void *temp_r2;
    void *temp_r7;

    temp_r1 = gCurTask->data;
    temp_r7 = temp_r1->unk8;
    if (temp_r7->unk30 != 0x10D) {
        TaskDestroy(gCurTask);
        return;
    }
    temp_r0 = temp_r1->unk4;
    temp_r1_2 = temp_r0 + 1;
    temp_r1->unk4 = temp_r1_2;
    if (((u32) (u16) (temp_r0 - 0x10) <= 6U) && (temp_r1_2 & 1)) {
        temp_r0_2 = ((s16) temp_r1->unk4 - 0x11) << 0xF;
        temp_r5 = temp_r0_2 >> 0x10;
        temp_r0_3 = (s32) temp_r0_2 >> 0x10;
        temp_r4 = temp_r0_3 * 2;
        temp_r2 = temp_r1 + ((temp_r0_3 * 0x30) + 0xC);
        temp_r2->unk28 = 1;
        temp_r3 = (s32) temp_r7->unk10 >> 8;
        temp_r2->unk2A = (s16) temp_r3;
        temp_r2->unk2C = (u16) ((s32) temp_r7->unk14 >> 8);
        if (temp_r7->unk4 & 1) {
            var_r0 = temp_r3 + (s8) *(temp_r4 + &gUnknown_080CE7B0);
        } else {
            var_r0 = temp_r3 - (s8) *(temp_r4 + &gUnknown_080CE7B0);
        }
        temp_r2->unk2A = var_r0;
        if (temp_r7->unk4 & 0x10000) {
            var_r0_2 = temp_r2->unk2C - *(((s32) (temp_r5 << 0x10) >> 0xF) + (&gUnknown_080CE7B0 + 1));
        } else {
            var_r0_2 = (s8) *(((s32) (temp_r5 << 0x10) >> 0xF) + (&gUnknown_080CE7B0 + 1)) + temp_r2->unk2C;
        }
        temp_r2->unk2C = var_r0_2;
    }
    var_r2 = 0;
    do {
        temp_r4_2 = temp_r1 + ((var_r2 * 0x30) + 0xC);
        if (temp_r4_2->unk28 != 0) {
            temp_r4_2->x = temp_r4_2->unk2A - gCamera.x;
            temp_r4_2->y = temp_r4_2->unk2C - gCamera.y;
            if (temp_r7->unk4 & 0x10000) {
                var_r0_3 = temp_r4_2->frameFlags | 0x800;
            } else {
                var_r0_3 = temp_r4_2->frameFlags & 0xFFFFF7FF;
            }
            temp_r4_2->frameFlags = var_r0_3;
            UpdateSpriteAnimation(temp_r4_2);
            DisplaySprite(temp_r4_2);
            if (temp_r4_2->frameFlags & 0x4000) {
                temp_r4_2->unk28 = 0U;
            }
        }
        temp_r0_4 = (var_r2 << 0x10) + 0x10000;
        var_r2 = (s16) (temp_r0_4 >> 0x10);
    } while ((s32) ((s32) temp_r0_4 >> 0x10) <= 3);
}

void sub_8018AF8(void) {
    Sprite *temp_r4_2;
    s16 var_r0;
    s16 var_r2;
    s32 temp_r0_4;
    s32 temp_r3;
    s32 temp_r4;
    u16 temp_r0_2;
    u16 temp_r1;
    u16 temp_r1_2;
    u16 var_r0_2;
    u32 temp_r0_3;
    u32 temp_r0_5;
    u32 temp_r5;
    u32 var_r0_3;
    void *temp_r0;
    void *temp_r2;

    temp_r1 = gCurTask->data;
    temp_r0 = temp_r1->unk8;
    if (temp_r0->unk30 != 0x103) {
        TaskDestroy(gCurTask);
        return;
    }
    temp_r0_2 = temp_r1->unk4;
    temp_r1_2 = temp_r0_2 + 1;
    temp_r1->unk4 = temp_r1_2;
    if (((u32) (u16) (temp_r0_2 - 8) <= 6U) && (temp_r1_2 & 1)) {
        temp_r0_3 = ((s16) temp_r1->unk4 - 9) << 0xF;
        temp_r5 = temp_r0_3 >> 0x10;
        temp_r0_4 = (s32) temp_r0_3 >> 0x10;
        temp_r4 = temp_r0_4 * 2;
        temp_r2 = temp_r1 + ((temp_r0_4 * 0x30) + 0xC);
        temp_r2->unk28 = 1;
        temp_r3 = (s32) temp_r0->unk10 >> 8;
        temp_r2->unk2A = (s16) temp_r3;
        temp_r2->unk2C = (u16) ((s32) temp_r0->unk14 >> 8);
        if (temp_r1->unk6 != 0) {
            var_r0 = temp_r3 + (s8) *(temp_r4 + &gUnknown_080CE7B8);
        } else {
            var_r0 = temp_r3 - (s8) *(temp_r4 + &gUnknown_080CE7B8);
        }
        temp_r2->unk2A = var_r0;
        if (temp_r0->unk4 & 0x10000) {
            var_r0_2 = temp_r2->unk2C - *(((s32) (temp_r5 << 0x10) >> 0xF) + (&gUnknown_080CE7B8 + 1));
        } else {
            var_r0_2 = (s8) *(((s32) (temp_r5 << 0x10) >> 0xF) + (&gUnknown_080CE7B8 + 1)) + temp_r2->unk2C;
        }
        temp_r2->unk2C = var_r0_2;
    }
    var_r2 = 0;
    do {
        temp_r4_2 = temp_r1 + ((var_r2 * 0x30) + 0xC);
        if (temp_r4_2->unk28 != 0) {
            temp_r4_2->x = temp_r4_2->unk2A - gCamera.x;
            temp_r4_2->y = temp_r4_2->unk2C - gCamera.y;
            if (temp_r0->unk4 & 0x10000) {
                var_r0_3 = temp_r4_2->frameFlags | 0x800;
            } else {
                var_r0_3 = temp_r4_2->frameFlags & 0xFFFFF7FF;
            }
            temp_r4_2->frameFlags = var_r0_3;
            UpdateSpriteAnimation(temp_r4_2);
            DisplaySprite(temp_r4_2);
            if (temp_r4_2->frameFlags & 0x4000) {
                temp_r4_2->unk28 = 0U;
            }
        }
        temp_r0_5 = (var_r2 << 0x10) + 0x10000;
        var_r2 = (s16) (temp_r0_5 >> 0x10);
    } while ((s32) ((s32) temp_r0_5 >> 0x10) <= 3);
}

void sub_8018C6C(void) {
    Sprite *temp_r4_2;
    s16 var_r0;
    s16 var_r2;
    s32 temp_r0_4;
    s32 temp_r3;
    s32 temp_r4;
    u16 temp_r0_2;
    u16 temp_r1;
    u16 temp_r1_2;
    u16 var_r0_2;
    u32 temp_r0_3;
    u32 temp_r0_5;
    u32 temp_r5;
    u32 var_r0_3;
    void *temp_r0;
    void *temp_r2;

    temp_r1 = gCurTask->data;
    temp_r0 = temp_r1->unk8;
    if (temp_r0->unk30 != 0x104) {
        TaskDestroy(gCurTask);
        return;
    }
    temp_r0_2 = temp_r1->unk4;
    temp_r1_2 = temp_r0_2 + 1;
    temp_r1->unk4 = temp_r1_2;
    if (((u32) (u16) (temp_r0_2 - 0xC) <= 6U) && (temp_r1_2 & 1)) {
        temp_r0_3 = ((s16) temp_r1->unk4 - 0xD) << 0xF;
        temp_r5 = temp_r0_3 >> 0x10;
        temp_r0_4 = (s32) temp_r0_3 >> 0x10;
        temp_r4 = temp_r0_4 * 2;
        temp_r2 = temp_r1 + ((temp_r0_4 * 0x30) + 0xC);
        temp_r2->unk28 = 1;
        temp_r3 = (s32) temp_r0->unk10 >> 8;
        temp_r2->unk2A = (s16) temp_r3;
        temp_r2->unk2C = (u16) ((s32) temp_r0->unk14 >> 8);
        if (temp_r1->unk6 != 0) {
            var_r0 = temp_r3 + (s8) *(temp_r4 + &gUnknown_080CE7B8);
        } else {
            var_r0 = temp_r3 - (s8) *(temp_r4 + &gUnknown_080CE7B8);
        }
        temp_r2->unk2A = var_r0;
        if (temp_r0->unk4 & 0x10000) {
            var_r0_2 = temp_r2->unk2C - *(((s32) (temp_r5 << 0x10) >> 0xF) + (&gUnknown_080CE7B8 + 1));
        } else {
            var_r0_2 = (s8) *(((s32) (temp_r5 << 0x10) >> 0xF) + (&gUnknown_080CE7B8 + 1)) + temp_r2->unk2C;
        }
        temp_r2->unk2C = var_r0_2;
    }
    var_r2 = 0;
    do {
        temp_r4_2 = temp_r1 + ((var_r2 * 0x30) + 0xC);
        if (temp_r4_2->unk28 != 0) {
            temp_r4_2->x = temp_r4_2->unk2A - gCamera.x;
            temp_r4_2->y = temp_r4_2->unk2C - gCamera.y;
            if (temp_r0->unk4 & 0x10000) {
                var_r0_3 = temp_r4_2->frameFlags | 0x800;
            } else {
                var_r0_3 = temp_r4_2->frameFlags & 0xFFFFF7FF;
            }
            temp_r4_2->frameFlags = var_r0_3;
            UpdateSpriteAnimation(temp_r4_2);
            DisplaySprite(temp_r4_2);
            if (temp_r4_2->frameFlags & 0x4000) {
                temp_r4_2->unk28 = 0U;
            }
        }
        temp_r0_5 = (var_r2 << 0x10) + 0x10000;
        var_r2 = (s16) (temp_r0_5 >> 0x10);
    } while ((s32) ((s32) temp_r0_5 >> 0x10) <= 3);
}

void sub_8018DDC(void) {
    Sprite *temp_r4_3;
    Task *temp_r4;
    s16 temp_r1_2;
    s16 var_r0;
    s16 var_r2;
    s32 temp_r3_2;
    s32 temp_r4_2;
    u16 temp_r1;
    u16 temp_r1_3;
    u16 var_r0_2;
    u32 temp_r0_2;
    u32 temp_r5;
    u32 var_r0_3;
    void *temp_r0;
    void *temp_r2;
    void *temp_r3;

    temp_r4 = gCurTask;
    temp_r1 = temp_r4->data;
    temp_r0 = temp_r1->unk8;
    temp_r3 = temp_r0->unkE0;
    if ((temp_r3->unk18 == 0x2F7) && (temp_r3->unk26 == 2)) {
        TaskDestroy(temp_r4);
        return;
    }
    temp_r1_2 = temp_r0->unk30;
    if ((temp_r1_2 != 0x100) && (temp_r1_2 != 0x108)) {
        TaskDestroy(gCurTask);
        return;
    }
    temp_r1_3 = temp_r1->unk4 + 1;
    temp_r1->unk4 = temp_r1_3;
    if (((s32) (s16) temp_r1_3 > 9) && (temp_r1_3 & 4)) {
        temp_r5 = (u32) (((s16) temp_r1->unk4 - 0xA) & 0xF) >> 2;
        temp_r4_2 = temp_r5 * 2;
        temp_r2 = temp_r1 + ((temp_r5 * 0x30) + 0xC);
        temp_r2->unk28 = 1;
        temp_r3_2 = (s32) temp_r0->unk10 >> 8;
        temp_r2->unk2A = (s16) temp_r3_2;
        temp_r2->unk2C = (u16) ((s32) temp_r0->unk14 >> 8);
        if (temp_r1->unk6 != 0) {
            var_r0 = temp_r3_2 + (s8) *(temp_r4_2 + &gUnknown_080CE7C0);
        } else {
            var_r0 = temp_r3_2 - (s8) *(temp_r4_2 + &gUnknown_080CE7C0);
        }
        temp_r2->unk2A = var_r0;
        if (temp_r0->unk4 & 0x10000) {
            var_r0_2 = temp_r2->unk2C - *((temp_r5 * 2) + (&gUnknown_080CE7C0 + 1));
        } else {
            var_r0_2 = (s8) *((temp_r5 * 2) + (&gUnknown_080CE7C0 + 1)) + temp_r2->unk2C;
        }
        temp_r2->unk2C = var_r0_2;
        temp_r2->unk18 = 0xFFFF;
        temp_r2->unk1B = 0xFF;
        temp_r2->unk8 = (s32) (temp_r2->unk8 & 0xFFFFBFFF);
    }
    var_r2 = 0;
    do {
        temp_r4_3 = temp_r1 + ((var_r2 * 0x30) + 0xC);
        if (temp_r4_3->unk28 != 0) {
            temp_r4_3->x = temp_r4_3->unk2A - gCamera.x;
            temp_r4_3->y = temp_r4_3->unk2C - gCamera.y;
            if (temp_r0->unk4 & 0x10000) {
                var_r0_3 = temp_r4_3->frameFlags | 0x800;
            } else {
                var_r0_3 = temp_r4_3->frameFlags & 0xFFFFF7FF;
            }
            temp_r4_3->frameFlags = var_r0_3;
            UpdateSpriteAnimation(temp_r4_3);
            DisplaySprite(temp_r4_3);
            if (temp_r4_3->frameFlags & 0x4000) {
                temp_r4_3->unk28 = 0U;
            }
        }
        temp_r0_2 = (var_r2 << 0x10) + 0x10000;
        var_r2 = (s16) (temp_r0_2 >> 0x10);
    } while ((s32) ((s32) temp_r0_2 >> 0x10) <= 3);
}

void sub_8018F90(void) {
    s32 temp_r1_2;
    s32 temp_r2;
    s32 var_r0;
    s32 var_r1;
    u16 temp_r1;
    u32 temp_r2_2;
    void *temp_r0;
    void *temp_r3;

    temp_r1 = gCurTask->data;
    temp_r3 = temp_r1->unk28;
    temp_r2 = temp_r3->unk4;
    if (0x100 & temp_r2) {
        temp_r0 = temp_r3->unkD0;
        if (temp_r0 == NULL) {
            return;
        }
        temp_r0->unk6->unk1A = 1;
        temp_r3->unkD0->unk8 = sub_8019150;
        return;
    }
    temp_r1_2 = temp_r1->unk8;
    if (0x4000 & temp_r1_2) {
        gCurTask->main = sub_80190C8;
        temp_r2_2 = (u32) (gPlayers[(u32) (temp_r3->unk2B << 0x1E) >> 0x1E].unk2A << 0x1C) >> 0x1C;
        if ((u32) gStageData.gameMode <= 5U) {
            var_r0 = 0x06014580;
        } else {
            var_r0 = 0x060145A0;
        }
        temp_r1->unk0 = var_r0;
        temp_r1->unk8 = 0x1000;
        temp_r1->unk10 = 0;
        temp_r1->unk12 = 0;
        temp_r1->unk14 = 0x600;
        temp_r1->unk16 = 0;
        temp_r1->unk18 = 0xFFFF;
        temp_r1->unk1B = 0xFF;
        temp_r1->unk1C = 0x10;
        temp_r1->unk1F = 0;
        temp_r1->unk20 = -1;
        if ((temp_r2_2 == 0) || (temp_r2_2 == 3) || (temp_r2_2 == 4)) {
            temp_r1->unkC = 0x53D;
            temp_r1->unk1A = 0;
            return;
        }
        temp_r1->unkC = 0x53D;
        temp_r1->unk1A = 1;
        return;
    }
    if (temp_r2 & 1) {
        var_r1 = temp_r1_2 & 0xFFFFFBFF;
    } else {
        var_r1 = temp_r1_2 | 0x400;
    }
    temp_r1->unk8 = var_r1;
    temp_r1->unk10 = (s16) (((s32) temp_r3->unk10 >> 8) - gCamera.x);
    temp_r1->unk12 = (s16) (((s32) temp_r3->unk14 >> 8) - gCamera.y);
    UpdateSpriteAnimation((Sprite *) temp_r1);
    DisplaySprite((Sprite *) temp_r1);
}

void sub_80190C8(void) {
    Player *temp_r3;
    u16 temp_r1;
    void *temp_r0;
    void *temp_r2;

    temp_r1 = gCurTask->data;
    temp_r2 = temp_r1->unk28;
    temp_r3 = &gPlayers[(u32) (temp_r2->unk2B << 0x1E) >> 0x1E];
    if (temp_r2->unk4 & 0x100) {
        temp_r0 = temp_r2->unkD0;
        if (temp_r0 != NULL) {
            temp_r0->unk6->unk1A = 1;
            temp_r2->unkD0->unk8 = sub_8019150;
        }
    } else {
        temp_r1->unk10 = (s16) (((s32) temp_r3->qWorldX >> 8) - gCamera.x);
        temp_r1->unk12 = (s16) (((s32) temp_r3->qWorldY >> 8) - gCamera.y);
        UpdateSpriteAnimation((Sprite *) temp_r1);
        DisplaySprite((Sprite *) temp_r1);
    }
}

void sub_8019150(void) {
    s32 temp_r2;
    s32 var_r2;
    u16 temp_r1;
    void *temp_r3;

    temp_r1 = gCurTask->data;
    temp_r3 = temp_r1->unk28;
    temp_r2 = temp_r1->unk8;
    if (0x4000 & temp_r2) {
        TaskDestroy(temp_r3->unkD0);
        temp_r3->unkD0 = NULL;
        return;
    }
    if (temp_r3->unk4 & 1) {
        var_r2 = temp_r2 & 0xFFFFFBFF;
    } else {
        var_r2 = temp_r2 | 0x400;
    }
    temp_r1->unk8 = var_r2;
    temp_r1->unk10 = (s16) (((s32) temp_r3->unk10 >> 8) - gCamera.x);
    temp_r1->unk12 = (s16) (((s32) temp_r3->unk14 >> 8) - gCamera.y);
    UpdateSpriteAnimation((Sprite *) temp_r1);
    DisplaySprite((Sprite *) temp_r1);
}

void sub_80191C8(void) {
    s32 temp_r1_2;
    s32 var_r0;
    u16 temp_r1;
    void *temp_r3;

    temp_r1 = gCurTask->data;
    temp_r3 = temp_r1->unk28;
    temp_r1_2 = temp_r3->unk60;
    if (temp_r1_2 == 0) {
        temp_r3->unkDC = temp_r1_2;
        TaskDestroy(gCurTask);
        return;
    }
    temp_r1->unk10 = (s16) (((s32) temp_r3->unk10 >> 8) - gCamera.x);
    temp_r1->unk12 = (s16) (((s32) temp_r3->unk14 >> 8) - gCamera.y);
    if (temp_r3->unk4 & 0x10000) {
        var_r0 = temp_r1->unk8 | 0x800;
    } else {
        var_r0 = temp_r1->unk8 & 0xFFFFF7FF;
    }
    temp_r1->unk8 = var_r0;
    UpdateSpriteAnimation((Sprite *) temp_r1);
    DisplaySprite((Sprite *) temp_r1);
}

void sub_8019240(void) {
    void *sp10;
    s16 temp_r4_3;
    s16 temp_r6;
    s16 var_r1;
    s32 temp_r1_2;
    u16 temp_r0;
    u16 temp_r1;
    u16 temp_r4;
    u16 temp_r4_2;

    memcpy(&subroutine_arg0, &gUnknown_080CE7C8, 0x10);
    temp_r1 = gCurTask->data;
    sp10 = temp_r1->unk28;
    temp_r0 = temp_r1->unk2C - 1;
    temp_r1->unk2C = temp_r0;
    if ((temp_r0 << 0x10) == 0) {
        sub_8003DF0(0x75U);
        TaskDestroy(gCurTask);
        return;
    }
    temp_r4 = temp_r1->unk2C;
    UpdateSpriteAnimation((Sprite *) temp_r1);
    var_r1 = 0;
    temp_r6 = (s16) temp_r4;
    do {
        temp_r4_3 = var_r1;
        temp_r1_2 = temp_r4_3 + ((1 & temp_r6) * 4);
        temp_r1->unk10 = (s16) (((s32) ((temp_r6 * (s8) (&subroutine_arg0)[temp_r1_2]) << 0x16) >> 0x18) + (((s32) sp10->unk10 >> 8) - gCamera.x));
        temp_r1->unk12 = (s16) (((s32) ((temp_r6 * (&subroutine_arg0)[temp_r1_2]) << 0x16) >> 0x18) + (((s32) sp10->unk14 >> 8) - gCamera.y) + 8);
        DisplaySprite((Sprite *) temp_r1);
        temp_r4_2 = temp_r4_3 + 1;
        var_r1 = (s16) temp_r4_2;
    } while ((s32) (s16) temp_r4_2 <= 3);
}

void sub_8019318(Task *arg0) {
    VramFree(*arg0->data);
}

void sub_801932C(Task *arg0) {
    VramFree(*arg0->data);
}

void sub_8019340(Task *arg0) {
    VramFree(*arg0->data);
}

void sub_8019354(Task *arg0) {
    VramFree(*arg0->data);
}

void sub_8019368(Task *arg0) {
    VramFree(*arg0->data);
}

void sub_801937C(void *arg0) {
    VramFree(*arg0->unk6);
}

void sub_8019390(Task *arg0) {
    VramFree(*arg0->data);
}

void sub_80193A4(Player *arg0) {
    Task **temp_r2;
    Task *temp_r0;

    temp_r2 = &arg0->taskTagAction;
    temp_r0 = *temp_r2;
    if (temp_r0 != NULL) {
        temp_r0->data->unk1A = 1;
        (*temp_r2)->main = sub_8019150;
    }
}

void sub_80193CC(Player *arg0) {
    Task **temp_r4;
    Task *temp_r0;

    temp_r4 = &arg0->taskTagAction;
    temp_r0 = *temp_r4;
    if (temp_r0 != NULL) {
        TaskDestroy(temp_r0);
        *temp_r4 = NULL;
    }
}

void sub_80193E8(Task *arg0) {

}

void sub_80193EC(Task *arg0) {
    VramFree(*arg0->data);
}

void sub_8019400(Task *arg0) {
    VramFree(*arg0->data);
}

void sub_8019414(void *arg0) {
    VramFree(*arg0->unk6);
}

void sub_8019428(Task *arg0) {
    VramFree(*arg0->data);
}

void sub_801943C(void *arg0) {
    VramFree(*arg0->unk6);
}

void sub_8019450(void *arg0) {
    VramFree(*arg0->unk6);
}

void sub_8019464(Task *arg0) {
    VramFree(*arg0->data);
}

void sub_8019478(void *arg0) {
    VramFree(*arg0->unk6);
}

void sub_801948C(Task *arg0) {
    VramFree(*arg0->data);
}

void sub_80194A0(Task *arg0) {
    VramFree(*arg0->data);
}

void sub_80194B4(Task *arg0) {
    VramFree(*arg0->data);
}

void sub_80194C8(Task *arg0) {
    VramFree(*arg0->data);
}

void sub_80194DC(Task *arg0) {
    VramFree(*arg0->data);
}

void sub_80194F0(void *arg0) {
    VramFree(*arg0->unk6);
}

void sub_8019504(Task *arg0) {
    VramFree(*arg0->data);
}

void sub_8019518(void *arg0) {
    VramFree(*arg0->unk6);
}

void sub_801952C(void) {
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    if (temp_r1->unk8 & 0x4000) {
        TaskDestroy(gCurTask);
        return;
    }
    temp_r1->unk10 = (s16) (temp_r1->unk28 - gCamera.x);
    temp_r1->unk12 = (s16) (temp_r1->unk2A - gCamera.y);
    UpdateSpriteAnimation((Sprite *) temp_r1);
    DisplaySprite((Sprite *) temp_r1);
}

void sub_801957C(void) {
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    if (temp_r1->unk8 & 0x4000) {
        TaskDestroy(gCurTask);
        return;
    }
    temp_r1->unk10 = (s16) (temp_r1->unk28 - gCamera.x);
    temp_r1->unk12 = (s16) (temp_r1->unk2A - gCamera.y);
    UpdateSpriteAnimation((Sprite *) temp_r1);
    DisplaySprite((Sprite *) temp_r1);
}

void sub_80195CC(void) {
    u16 temp_r1;
    void *temp_r3;

    temp_r1 = gCurTask->data;
    temp_r3 = temp_r1->unk28;
    if ((temp_r1->unk8 & 0x4000) || (temp_r3->unk30 != 0xA7)) {
        TaskDestroy(gCurTask);
        return;
    }
    temp_r1->unk10 = (s16) (((s32) temp_r3->unk10 >> 8) - gCamera.x);
    temp_r1->unk12 = (s16) (((s32) temp_r3->unk14 >> 8) - gCamera.y);
    UpdateSpriteAnimation((Sprite *) temp_r1);
    DisplaySprite((Sprite *) temp_r1);
}

void sub_8019628(void) {
    s32 temp_r2;
    s32 temp_r5;
    u16 temp_r0;
    void *temp_r0_2;
    void *temp_r1;

    temp_r0 = gCurTask->data;
    temp_r1 = temp_r0->unk28;
    temp_r2 = temp_r1->unk4;
    if (0x100 & temp_r2) {
        temp_r0_2 = temp_r1->unkD0;
        if (temp_r0_2 != NULL) {
            temp_r0_2->unk6->unk1A = 1;
            temp_r1->unkD0->unk8 = sub_8019150;
        }
    } else {
        temp_r5 = 0x01000000 & temp_r2;
        if (temp_r5 == 0) {
            TaskDestroy(temp_r1->unkD4);
            temp_r1->unkD4 = (Task *) temp_r5;
            return;
        }
        UpdateSpriteAnimation((Sprite *) temp_r0);
        DisplaySprite((Sprite *) temp_r0);
    }
}

void sub_8019698(void) {
    Player *temp_r4;
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    temp_r4 = temp_r1->unk28;
    if (temp_r4->callback != Player_800BD88) {
        Player_StopSong(temp_r4, 0x11AU);
        TaskDestroy(gCurTask);
        return;
    }
    Player_PlayOrContinueSong(temp_r4, 0x11A);
    temp_r1->unk10 = (s16) (((s32) temp_r4->qWorldX >> 8) - gCamera.x);
    temp_r1->unk12 = (s16) (((s32) temp_r4->qWorldY >> 8) - gCamera.y);
    UpdateSpriteAnimation((Sprite *) temp_r1);
    DisplaySprite((Sprite *) temp_r1);
}

void sub_8019704(void *arg0) {
    VramFree(*arg0->unk6);
}

void sub_8019718(Player *p) {
    u16 temp_r1;
    u32 temp_r0;
    void *temp_r3;

    if (gStageData.gameMode == 6) {
        gStageData.unk9C = 0;
        return;
    }
    if (gStageData.zone != 8) {
        if (&gPlayers[gStageData.playerIndex] == p) {
            goto block_6;
        }
    } else if (p == gPlayers) {
block_6:
        if (gStageData.unk9C == 0) {
            temp_r0 = (u32) TaskCreate(Task_80198A8, 0x40U, 0x4000U, 0U, TaskDestructor_8019A78);
            gStageData.unk9C = temp_r0;
            temp_r1 = temp_r0->unk6;
            temp_r3 = temp_r1 + 0xC;
            if (((u32) gStageData.gameMode <= 5U) || (gStageData.gameMode == 6)) {
                temp_r1->unkC = 0x06012000;
            }
            temp_r3->unk8 = 0x2000;
            temp_r3->unkC = 0;
            temp_r3->unk10 = 0;
            temp_r3->unk12 = 0;
            temp_r3->unk14 = 0x480;
            temp_r3->unk16 = 0;
            temp_r3->unk18 = 0xFFFF;
            temp_r3->unk1A = 0;
            temp_r3->unk1B = 0xFF;
            temp_r3->unk1C = 0x10;
            temp_r3->unk1F = 2;
            temp_r3->unk20 = -1;
            temp_r3->unk28 = -1;
            temp_r1->unk0 = 0;
            temp_r1->unk2 = 0x100;
            temp_r1->unk4 = 0x100;
            temp_r1->unk6 = 0;
            temp_r1->unk8 = 0;
            temp_r1->unk3C = 2;
            if (gStageData.zone != 8) {
                sub_8019AB4((u16) (*(((u32) (p->unk2A << 0x1C) >> 0x1B) + gPlayerCharacterIdleAnims) + gUnknown_080CE7E2.unk21C), 0x10U);
            } else {
                sub_8019AB4(0x521U, 0x10U);
            }
            gUnknown_03001BF0.unkC0 = p;
            gUnknown_03001BF0.unkC4 = 0;
            sub_8019A7C();
        }
    }
}

void sub_8019858(Player *arg0) {
    u16 *temp_r5;
    void *temp_r3;
    void *temp_r6;

    temp_r3 = (gUnknown_03001BF0.unkC4 * 0x18) + &gUnknown_03001BF0;
    temp_r5 = arg0->spriteData;
    temp_r6 = temp_r5 + 0xC;
    gUnknown_03001BF0.unkC4 = (u8) ((gUnknown_03001BF0.unkC4 + 1) & 7);
    temp_r3->unk0 = (s32) arg0->qWorldX;
    temp_r3->unk4 = (s32) arg0->qWorldY;
    temp_r3->unk8 = (s32) temp_r6->unk8;
    temp_r3->unkC = (s32) arg0->moveState;
    temp_r3->unk10 = (u16) arg0->charFlags.anim2;
    temp_r3->unk12 = (u16) *temp_r5;
    temp_r3->unk14 = (s8) arg0->charFlags.state1;
    temp_r3->unk15 = (u8) temp_r6->unk1C;
}

void Task_80198A8(void) {
    Sprite *temp_r4;
    u16 temp_r2;
    u16 var_r0_2;
    u32 temp_r1;
    u32 temp_r2_3;
    u32 var_r0_3;
    u32 var_r2;
    u8 temp_r1_2;
    u8 temp_r2_2;
    u8 var_r0;
    void *temp_r5;

    temp_r2 = gCurTask->data;
    if (!(0x80 & gUnknown_03001BF0.unkC0->unk2B)) {
        return;
    }
    if (gStageData.unk85 != 0) {
        return;
    }
    if ((gStageData.zone == 8) && (gPlayers->moveState & 0x100)) {
        return;
    }
    temp_r2_2 = temp_r2->unk3C;
    temp_r5 = (((gUnknown_03001BF0.unkC4 - (temp_r2_2 - 8)) & 7 & 6) * 0x18) + &gUnknown_03001BF0;
    if (temp_r2_2 == 6) {
        var_r0 = 2;
    } else {
        var_r0 = temp_r2_2 + 2;
    }
    temp_r2->unk3C = var_r0;
    temp_r4 = temp_r2 + 0xC;
    temp_r4->anim = temp_r5->unk10;
    temp_r4->variant = temp_r5->unk14;
    temp_r4->animSpeed = temp_r5->unk15;
    temp_r4->frameFlags = temp_r5->unk8 | 0x40000;
    temp_r4->x = ((s32) temp_r5->unk0 >> 8) - gCamera.x;
    temp_r4->y = ((s32) temp_r5->unk4 >> 8) - gCamera.y;
    temp_r2->unk0 = (u16) temp_r5->unk12;
    temp_r2->unk6 = (u16) temp_r4->x;
    temp_r2->unk8 = (u16) temp_r4->y;
    UpdateSpriteAnimation(temp_r4);
    temp_r1 = temp_r4->frameFlags;
    if (0x20 & temp_r1) {
        temp_r4->frameFlags = temp_r1 & ~0x1F;
        temp_r1_2 = gNextFreeAffineIndex;
        gNextFreeAffineIndex = temp_r1_2 + 1;
        temp_r4->frameFlags |= (u8) (temp_r1_2 | 0x20);
        if (temp_r5->unkC & 1) {
            var_r0_2 = 0x100;
        } else {
            var_r0_2 = 0xFF00;
        }
        temp_r2->unk2 = var_r0_2;
        if (temp_r5->unkC & 0x10000) {
            temp_r2->unk2 = (u16) (0 - temp_r2->unk2);
        }
        TransformSprite(temp_r4, (SpriteTransform *) temp_r2);
    } else {
        temp_r2_3 = -0x40 & temp_r1;
        temp_r4->frameFlags = temp_r2_3;
        if (temp_r5->unkC & 0x10000) {
            var_r2 = temp_r2_3 | 0x800;
        } else {
            var_r2 = temp_r2_3 & 0xFFFFF7FF;
        }
        temp_r4->frameFlags = var_r2;
    }
    if (gStageData.unk4 == 1) {
        if (gStageData.unk4 & gStageData.unkBC) {
            var_r0_3 = temp_r4->frameFlags | 0x80;
        } else {
            var_r0_3 = temp_r4->frameFlags & ~0x80;
        }
        temp_r4->frameFlags = var_r0_3;
        if (2 & gStageData.unkBC) {
            return;
        }
        goto block_28;
    }
    temp_r4->frameFlags &= ~0x80;
block_28:
    if (1 != 0) {
        DisplaySprite(temp_r4);
    }
}

void Player_BoostModeEngage(Player *p) {
    p->unk2B = (u8) (p->unk2B | 0x80);
}

void Player_BoostModeDisengage(Player *p) {
    p->unk2B = (u8) (0x7F & p->unk2B);
    p->boostEffectCounter = 0;
}

void TaskDestructor_8019A78(Task *arg0) {

}

void sub_8019A7C(void) {
    ? *var_r1;
    u32 temp_r0;
    u32 var_r3;

    var_r1 = &gUnknown_03001BF0;
    var_r3 = 0;
    do {
        var_r1->unk0 = 0;
        var_r1->unk4 = 0;
        var_r1->unk8 = 0;
        var_r1->unkC = 0;
        var_r1->unk10 = 0;
        var_r1->unk12 = 0;
        var_r1->unk14 = 0;
        var_r1->unk15 = 0x10;
        temp_r0 = (var_r3 << 0x10) + 0x10000;
        var_r1 += 0x18;
        var_r3 = temp_r0 >> 0x10;
    } while ((s32) ((s32) temp_r0 >> 0x10) <= 7);
}

void sub_8019AB4(u16 arg0, u16 arg1) {
    s32 temp_r1;
    u16 temp_r4;
    u32 temp_r5;
    void *temp_r2;

    temp_r2 = **(((u32) (arg0 << 0x10) >> 0xE) + gAnimations);
    if (temp_r2->unk0 == -2) {
        temp_r1 = temp_r2->unk4;
        temp_r5 = (temp_r2 + 4)->unk4;
        temp_r4 = (temp_r5 >> 0x10) + arg1;
        if (0x20000 & gFlags) {
            CopyPalette(gRefSpriteTables->palettes + (temp_r1 << 5), (u8) temp_r4, (u16) (u8) temp_r5);
            return;
        }
        (void *)0x040000D4->unk0 = (void *) (gRefSpriteTables->palettes + (temp_r1 << 5));
        (void *)0x040000D4->unk4 = &gObjPalette[temp_r4];
        (void *)0x040000D4->unk8 = (s32) (((u32) ((u8) temp_r5 * 2) >> 1) | 0x80000000);
        gFlags |= 2;
    }
}

void sub_8019B4C(Player *p) {
    PlayerSprite *temp_r2;
    s16 temp_r0;
    s16 temp_r0_2;
    s16 temp_r0_3;
    s16 temp_r1;
    s16 var_r0;

    Player_800D880(p);
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    p->moveState |= 6;
    sub_8012FF0(p);
    p->charFlags.anim0 = 0xAB;
    p->charFlags.state1 = 0;
    p->unk26 = 0;
    if (p->moveState & 1) {
        if ((s32) p->qSpeedAirX > 0xFFFFFC00) {
            temp_r0 = (u16) p->qSpeedAirX + 0xFFFFFC00;
            p->qSpeedAirX = temp_r0;
            temp_r1 = temp_r0;
            if ((s32) temp_r1 < 0xFFFFFA00) {
                var_r0 = -0x600;
                goto block_11;
            }
            if ((s32) temp_r1 > 0xFFFFFC00) {
                p->qSpeedAirX = 0xFFFFFC00;
            }
        }
    } else if ((s32) p->qSpeedAirX <= 0x3FF) {
        temp_r0_2 = (u16) p->qSpeedAirX + 0x400;
        p->qSpeedAirX = temp_r0_2;
        temp_r0_3 = temp_r0_2;
        if ((s32) temp_r0_3 > 0x600) {
            p->qSpeedAirX = 0x600;
        } else if ((s32) temp_r0_3 <= 0x3FF) {
            var_r0 = 0x400;
block_11:
            p->qSpeedAirX = var_r0;
        }
    }
    p->qSpeedAirY = -0x180;
    p->idleAndCamCounter = 4;
    Player_PlaySong(p, 0x70U);
    SetPlayerCallback(p, sub_8019CF0);
    sub_8019CF0(p);
}

void sub_8019C24(Player *p) {
    PlayerSprite *temp_r2;
    s16 temp_r0;
    s16 temp_r0_2;
    u32 temp_r0_3;

    Player_800D880(p);
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    Player_8012FE0(p);
    if (p->moveState & 1) {
        if ((s32) p->qSpeedAirX > 0xFFFFFD00) {
            temp_r0 = (u16) p->qSpeedAirX + 0xFFFFFD00;
            p->qSpeedAirX = temp_r0;
            if ((s32) temp_r0 < 0xFFFFFB00) {
                p->qSpeedAirX = -0x500;
            }
        }
    } else if ((s32) p->qSpeedAirX <= 0x2FF) {
        temp_r0_2 = (u16) p->qSpeedAirX + 0x300;
        p->qSpeedAirX = temp_r0_2;
        if ((s32) temp_r0_2 > 0x500) {
            p->qSpeedAirX = 0x500;
        }
    }
    p->qSpeedAirY = -0x100;
    p->moveState |= 0x8004;
    temp_r0_3 = (u32) (p->unk2A << 0x1C) >> 0x1C;
    switch (temp_r0_3) {                            /* irregular */
    case 0:
        p->charFlags.anim0 = 0xA9;
        break;
    case 4:
        p->charFlags.anim0 = 0x108;
        sub_8018034(p);
        break;
    }
    SetPlayerCallback(p, sub_801A224);
    sub_801A224(p);
}

void sub_8019CF0(Player *p) {
    PlayerSprite *temp_r2;
    s16 *temp_r1;
    s16 *temp_r1_2;
    s16 temp_r0_2;
    s16 temp_r0_3;
    u16 temp_r0;

    temp_r0 = p->charFlags.state1;
    if (temp_r0 != 0) {
        if (temp_r0 == 1) {
            temp_r1 = &p->idleAndCamCounter;
            temp_r0_2 = (u16) *temp_r1 - 1;
            *temp_r1 = temp_r0_2;
            if ((temp_r0_2 << 0x10) == 0) {
                p->charFlags.state1 += 1;
                Player_8012FE0(p);
                p->moveState &= ~2;
                temp_r2 = p->spriteData;
                temp_r2->s.frameFlags &= 0xFFFFBFFF;
                SetPlayerCallback(p, Player_800DAF4);
                return;
            }
        }
        goto block_6;
    }
    temp_r1_2 = &p->idleAndCamCounter;
    temp_r0_3 = (u16) *temp_r1_2 - 1;
    *temp_r1_2 = temp_r0_3;
    if ((temp_r0_3 << 0x10) == 0) {
        p->charFlags.state1 += 1;
        *temp_r1_2 = 0x14;
    }
block_6:
    if ((sub_8015064(p) << 0x10) == 0) {
        sub_8016E50(p);
        sub_8016D30(p);
        Player_80149E4(p);
        sub_8017004(p);
        if (!(p->moveState & 4)) {
            SetPlayerCallback(p, Player_8005380);
        }
    }
}

void sub_8019DA0(Player *p) {
    s16 *var_r1;
    s16 temp_r0;
    s16 temp_r0_2;
    s16 temp_r1;
    s16 var_r0;

    temp_r1 = p->moveState & 1;
    if (temp_r1 != 0) {
        temp_r0 = (u16) p->qSpeedGround + 0xE;
        p->qSpeedGround = temp_r0;
        if ((s32) (temp_r0 << 0x10) > 0) {
            p->qSpeedGround = 0;
        }
    } else {
        temp_r0_2 = (u16) p->qSpeedGround - 0xE;
        p->qSpeedGround = temp_r0_2;
        if ((s32) (temp_r0_2 << 0x10) < 0) {
            p->qSpeedGround = temp_r1;
        }
    }
    if ((p->spriteData->s.frameFlags & 0x4000) || (p->qSpeedGround == 0)) {
        p->charFlags.state1 = 1;
        p->unk2B = (u8) (p->unk2B | 0x40);
        SetPlayerCallback(p, sub_8019E94);
        if ((s8) p->unk5A == -1) {
            Player_PlaySong(p, 0x213U);
            var_r1 = &p->idleAndCamCounter;
            var_r0 = 0x40;
        } else {
            Player_PlaySong(p, 0x6FU);
            var_r1 = &p->idleAndCamCounter;
            var_r0 = 0x20;
        }
        *var_r1 = var_r0;
    }
    if ((sub_8015064(p) << 0x10) == 0) {
        Player_801479C(p);
        sub_8016D30(p);
        sub_8014E70(p);
        sub_8012EB8(p);
        sub_8016E00(p);
        if (p->moveState & 4) {
            SetPlayerCallback(p, Player_800DB30);
            Player_StopSong(p, 0x213U);
            Player_StopSong(p, 0x6FU);
        }
    }
}

void sub_8019E94(Player *p) {
    s16 *temp_r1_2;
    s16 temp_r0;
    s16 temp_r0_2;
    s16 temp_r0_3;
    s16 temp_r1;
    u8 *temp_r2;
    u8 temp_r0_4;

    temp_r1 = p->moveState & 1;
    if (temp_r1 != 0) {
        temp_r0 = (u16) p->qSpeedGround + 0xE;
        p->qSpeedGround = temp_r0;
        if ((s32) (temp_r0 << 0x10) > 0) {
            p->qSpeedGround = 0;
        }
    } else {
        temp_r0_2 = (u16) p->qSpeedGround - 0xE;
        p->qSpeedGround = temp_r0_2;
        if ((s32) (temp_r0_2 << 0x10) < 0) {
            p->qSpeedGround = temp_r1;
        }
    }
    temp_r1_2 = &p->idleAndCamCounter;
    temp_r0_3 = (u16) *temp_r1_2 - 1;
    *temp_r1_2 = temp_r0_3;
    if (temp_r0_3 == -1) {
        p->charFlags.state1 = 2;
        p->unk2B = (u8) (p->unk2B | 0x40);
        p->qSpeedGround = 0;
        SetPlayerCallback(p, sub_801A1D4);
    }
    if ((sub_8015064(p) << 0x10) == 0) {
        Player_801479C(p);
        sub_8016D30(p);
        sub_8014E70(p);
        sub_8012EB8(p);
        sub_8016E00(p);
        if (p->moveState & 4) {
            SetPlayerCallback(p, Player_800DB30);
            Player_StopSong(p, 0x213U);
            Player_StopSong(p, 0x6FU);
        }
        temp_r2 = &p->unk5A;
        if (((s8) *temp_r2 != -1) && !(p->unkC & 0x18)) {
            temp_r0_4 = (*temp_r2 + 1) & 0xF;
            *temp_r2 = temp_r0_4;
            if ((7 & temp_r0_4) == 7) {
                sub_8017AF4(p);
            }
        }
    }
}

void sub_8019F80(Player *p) {
    u16 temp_r0;

    if (p->spriteData->s.frameFlags & 0x4000) {
        temp_r0 = p->charFlags.state1;
        if (temp_r0 == 0) {
            p->charFlags.state1 = temp_r0 + 1;
        }
    }
    sub_801350C(p);
    if ((sub_8015064(p) << 0x10) == 0) {
        sub_8016E50(p);
        sub_8016D30(p);
        sub_8016EB0(p);
        Player_80149E4(p);
        sub_8017004(p);
        if ((s32) p->qSpeedAirY > 0) {
            p->charFlags.state1 = 2;
            p->moveState &= 0xFFFF7FFD;
            SetPlayerCallback(p, Player_800DAF4);
        }
    }
}

void sub_8019FF8(Player *p) {
    PlayerSprite *temp_r2;
    s16 var_r0;
    u32 temp_r1;

    Player_800D880(p);
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    sub_8012FA0(p);
    temp_r1 = p->moveState | 0x8000;
    p->moveState = temp_r1;
    p->charFlags.anim0 = 0xA5;
    if (temp_r1 & 1) {
        var_r0 = -0x300;
    } else {
        var_r0 = 0x300;
    }
    p->qSpeedGround = var_r0;
    p->unk5A = 0;
    SetPlayerCallback(p, sub_8019DA0);
    sub_8019DA0(p);
}

void sub_801A05C(Player *p) {
    PlayerSprite *temp_r2;
    s16 var_r0;
    u32 temp_r1;

    Player_800D880(p);
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    sub_8012FA0(p);
    temp_r1 = p->moveState | 0x8000;
    p->moveState = temp_r1;
    p->charFlags.anim0 = 0xA6;
    if (temp_r1 & 1) {
        var_r0 = -0x500;
    } else {
        var_r0 = 0x500;
    }
    p->qSpeedGround = var_r0;
    p->unk5A = 0xFF;
    SetPlayerCallback(p, sub_8019DA0);
    sub_8019DA0(p);
}

void sub_801A0C0(Player *p) {
    PlayerSprite *temp_r2;

    Player_800D880(p);
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    sub_8012FC0(p);
    p->moveState |= 0x8006;
    p->charFlags.anim0 = 0xA7;
    p->idleAndCamCounter = 0x10;
    Player_PlaySong(p, 0x71U);
    sub_8017B80(p);
    SetPlayerCallback(p, sub_801A280);
    sub_801A280(p);
}

void sub_801A120(Player *p) {
    PlayerSprite *temp_r2;

    Player_800D880(p);
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    sub_8012FC0(p);
    p->moveState |= 0x8006;
    p->charFlags.anim0 = 0xAC;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = -0x500;
    Player_PlaySong(p, 0x70U);
    SetPlayerCallback(p, sub_8019F80);
    sub_8019F80(p);
}

void sub_801A17C(Player *p) {
    PlayerSprite *temp_r2;

    Player_800D880(p);
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    sub_8012FC0(p);
    p->moveState |= 0x8004;
    p->charFlags.anim0 = 0xAA;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    sub_8017BFC(p);
    SetPlayerCallback(p, sub_801A2DC);
    sub_801A2DC(p);
}

void sub_801A1D4(Player *p) {
    if (p->spriteData->s.frameFlags & 0x4000) {
        SetPlayerCallback(p, Player_8005380);
    }
    if ((sub_8015064(p) << 0x10) == 0) {
        Player_801479C(p);
        sub_8016D30(p);
        sub_8014E70(p);
        sub_8012EB8(p);
        sub_8016E00(p);
    }
}

void sub_801A224(Player *p) {
    if ((p->spriteData->s.frameFlags & 0x4000) && (p->charFlags.state1 == 0)) {
        p->charFlags.state1 = 1;
    }
    sub_801350C(p);
    sub_8014940(p);
    if ((sub_8015064(p) << 0x10) == 0) {
        sub_8016E50(p);
        sub_8016D30(p);
        sub_8016EB0(p);
        Player_80149E4(p);
        sub_8017004(p);
    }
}

void sub_801A280(Player *p) {
    s16 *temp_r1;
    s16 temp_r0;

    sub_801350C(p);
    sub_8014940(p);
    if ((sub_8015064(p) << 0x10) == 0) {
        sub_8016E50(p);
        sub_8016D30(p);
        sub_8016EB0(p);
        Player_80149E4(p);
        sub_8017004(p);
        temp_r1 = &p->idleAndCamCounter;
        temp_r0 = (u16) *temp_r1 - 1;
        *temp_r1 = temp_r0;
        if ((temp_r0 << 0x10) == 0) {
            SetPlayerCallback(p, sub_800DF10);
        }
    }
}

void sub_801A2DC(Player *p) {
    u16 temp_r0;

    if ((sub_8015064() << 0x10) == 0) {
        Player_80149E4(p);
        sub_8017004(p);
        if (p->spriteData->s.frameFlags & 0x4000) {
            temp_r0 = p->charFlags.state1;
            if (temp_r0 == 0) {
                p->charFlags.state1 = temp_r0 + 1;
                p->qSpeedAirX = (s16) temp_r0;
                p->qSpeedAirY = 0x300;
                SetPlayerCallback(p, sub_801A330);
            }
        }
    }
}

void sub_801A330(Player *p) {
    s16 temp_r1;

    if ((sub_8015064() << 0x10) == 0) {
        sub_8016E50(p);
        sub_8016D30(p);
        sub_8016EB0(p);
        Player_80149E4(p);
        sub_8017004(p);
        temp_r1 = p->moveState & 4;
        if (temp_r1 == 0) {
            p->qSpeedAirX = temp_r1;
            p->qSpeedAirY = -0x480;
            SetPlayerCallback(p, sub_801A38C);
            Player_PlaySong(p, 0xDFU);
        }
    }
}

void sub_801A38C(Player *p) {
    if ((sub_8015064() << 0x10) == 0) {
        sub_8016E50(p);
        sub_8016D30(p);
        sub_8016EB0(p);
        Player_80149E4(p);
        sub_8017004(p);
        if ((s32) p->qSpeedAirY > 0) {
            p->charFlags.state1 = 2;
            Player_8012FE0(p);
            SetPlayerCallback(p, Player_800DAF4);
        }
    }
}

void sub_801A3DC(Player *p) {
    PlayerSprite *temp_r2;
    s16 var_r0;
    u32 temp_r0;
    u32 temp_r1;

    Player_800D880(p);
    temp_r1 = p->moveState;
    if (2 & temp_r1) {
        p->moveState = temp_r1 & ~2;
        sub_8012FA0(p);
    }
    sub_8016F28(p);
    temp_r0 = (u32) (p->unk2A << 0x1C) >> 0x1C;
    switch (temp_r0) {                              /* irregular */
    case 1:
        var_r0 = 0xC5;
block_7:
        p->charFlags.anim0 = var_r0;
        break;
    case 2:
        var_r0 = 0xDB;
        goto block_7;
    }
    p->charFlags.state1 = 0;
    p->unk2F = 1;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    Player_BoostModeDisengage(p);
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    p->moveState |= 0x40004;
    SetPlayerCallback(p, sub_801A644);
    sub_801A644(p);
}

void sub_801A46C(Player *p) {
    PlayerSprite *temp_r2;
    u32 temp_r0;
    u32 temp_r1;

    Player_800D880(p);
    temp_r1 = p->moveState;
    if (2 & temp_r1) {
        p->moveState = temp_r1 & ~2;
        sub_8012FA0(p);
    }
    sub_8016F28(p);
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    temp_r0 = (u32) (p->unk2A << 0x1C) >> 0x1C;
    switch (temp_r0) {                              /* irregular */
    case 1:
        p->charFlags.anim0 = 0xBB;
        Player_PlaySong(p, 0xE6U);
        break;
    case 2:
        p->charFlags.anim0 = 0xDD;
        break;
    }
    p->unk2F = 1;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    Player_BoostModeDisengage(p);
    p->moveState |= 0x40004;
    SetPlayerCallback(p, sub_801AD10);
    sub_801AD10(p);
}

void sub_801A504(Player *p) {
    p->moveState &= ~2;
    sub_8012FA0(p);
    sub_8016F28(p);
    p->moveState = (p->moveState & ~4) | 0x40000;
    sub_8004E20((s16) ((s32) (p->qWorldX << 8) >> 0x10), (s16) ((s32) (p->qWorldY << 8) >> 0x10), &subroutine_arg0);
    p->charFlags.anim0 = 0xC1;
    if ((s32) p->qSpeedAirY <= 0xFF) {
        p->qSpeedAirY = 0x100;
    }
    p->qWorldY = (subroutine_arg0 << 8) + p->qSpeedAirY;
    p->qSpeedAirY = (s16) ((s32) ((u16) p->qSpeedAirY << 0x10) >> 0x12);
    p->qSpeedGround = 0;
    p->unk26 = 0;
    p->unk2D = (u8) (-0x10 & p->unk2D);
    SetPlayerCallback(p, sub_801A87C);
    sub_801A87C(p);
}

void sub_801A5A0(Player *p) {
    if (!(gStageData.buttonConfig.jump & p->keyInput)) {
        p->charFlags.state1 = 2;
        p->unk2B = (u8) (p->unk2B | 0x40);
        SetPlayerCallback(p, sub_801AC04);
        return;
    }
    if ((p->charFlags.state1 == 0) && (p->spriteData->s.frameFlags & 0x4000)) {
        p->charFlags.state1 = 1;
        p->unk2B = (u8) (p->unk2B | 0x40);
    }
    sub_8014940(p);
    p->qSpeedAirX = (s16) ((s32) (p->qSpeedAirX * 0xF) >> 4);
    if ((s32) p->qSpeedAirY <= 0x7F) {
        p->qSpeedAirY = (u16) p->qSpeedAirY + 0x10;
    }
    if ((sub_8015064(p) << 0x10) == 0) {
        sub_8016D30(p);
        Player_80149E4(p);
        sub_8017004(p);
    }
}

void sub_801A644(Player *p) {
    s32 var_r2;
    u16 temp_r0;

    var_r2 = 0x4E0;
    if (p->moveState & 0x80) {
        var_r2 = 0x2A0;
    }
    if ((p->charFlags.state1 == 0) && (p->spriteData->s.frameFlags & 0x4000)) {
        p->charFlags.state1 = 1;
        p->qSpeedAirY = (s16) ((s32) ((0 - var_r2) * 5) >> 2);
    }
    temp_r0 = p->charFlags.state1;
    if ((temp_r0 == 1) && ((s32) p->qSpeedAirY >= 0)) {
        p->charFlags.state1 = 2;
        SetPlayerCallback(p, sub_800DF10);
        return;
    }
    if ((temp_r0 << 0x10) != 0) {
        sub_8014940(p);
        if ((sub_8015064(p) << 0x10) == 0) {
            sub_8016E50(p);
            sub_8016D30(p);
            sub_8016EB0(p);
            Player_80149E4(p);
            sub_8017004(p);
        }
    }
}

void sub_801A6E0(Player *p) {
    s16 var_r0;
    s16 var_r1;
    u16 temp_r1_2;
    u8 *temp_r1;
    u8 temp_r0;

    temp_r1 = p->Padding8;
    if ((s16) *temp_r1 != 0) {
        *temp_r1 = (u16) (*temp_r1 - 1);
        if (gStageData.buttonConfig.attack & p->keyInput) {
            p->charFlags.anim0 = 0xBF;
            SetPlayerCallback(p, Player_800DAF4);
            Player_StopSong(p, SE_CREAM__FLYING);
            return;
        }
    }
    if (p->unk2F != 1) {
        if (((s32) p->qSpeedAirY < -0xC0) || (p->qSpeedAirY = (u16) p->qSpeedAirY - 0x18, temp_r0 = p->unk2F + 1, p->unk2F = temp_r0, (temp_r0 == 0x20))) {
            p->unk2F = 1U;
        }
    } else {
        if ((gStageData.buttonConfig.jump & p->keyInput2) && ((s32) p->qSpeedAirY >= -0xC0) && ((s16) p->Padding8[0] != 0)) {
            p->unk2F = 2U;
        }
        p->qSpeedAirY = (u16) p->qSpeedAirY + 8;
    }
    sub_801A7FC(p);
    var_r1 = p->qSpeedAirX;
    if ((s32) var_r1 < 0) {
        var_r1 = 0 - var_r1;
    }
    if ((s32) var_r1 > 0x800) {
        temp_r1_2 = (u16) p->qSpeedAirX;
        if ((s32) p->qSpeedAirX > 0) {
            var_r0 = temp_r1_2 - (p->unk90 * 2);
        } else {
            var_r0 = temp_r1_2 + (p->unk90 * 2);
        }
        p->qSpeedAirX = var_r0;
    }
    sub_800E04C(p);
    if (((sub_8015064(p) << 0x10) == 0) && !(p->moveState & 4)) {
        Player_StopSong(p, SE_CREAM__FLYING);
        SetPlayerCallback(p, Player_8005380);
    }
}

void sub_801A7FC(Player *arg0) {
    s16 var_r0;
    u16 temp_r2;

    if (arg0->unk148 == 0) {
        arg0->charFlags.anim0 = 0xBE;
        Player_StopSong(arg0, SE_CREAM__FLYING);
        sub_801EBC0(5U, arg0);
        return;
    }
    temp_r2 = arg0->keyInput;
    if (((0x20 & temp_r2) && !(arg0->moveState & 1)) || ((0x10 & temp_r2) && (arg0->moveState & 1))) {
        var_r0 = 0xBD;
        goto block_10;
    }
    if ((arg0->charFlags.anim0 != 0xBD) || (arg0->spriteData->s.frameFlags & 0x4000)) {
        var_r0 = 0xBC;
block_10:
        arg0->charFlags.anim0 = var_r0;
    }
    Player_PlayOrContinueSong(arg0, 0xE3);
}

void sub_801A87C(Player *p) {
    s16 temp_r0;
    s16 temp_r0_2;

    if ((sub_801480C(p) << 0x10) != 0) {
        p->qCamOffsetY = 0;
        return;
    }
    temp_r0 = sub_8015460(p);
    p->qWorldX += p->qSpeedAirX;
    p->qWorldY += p->qSpeedAirY;
    temp_r0_2 = temp_r0;
    switch (temp_r0_2) {
    case 0:
        p->charFlags.anim0 = 0xC1;
    default:
block_9:
        if ((sub_8015064(p) << 0x10) == 0) {
            sub_8017004(p);
        }
        return;
    case 1:
        p->charFlags.anim0 = 0xC4;
        goto block_9;
    case 2:
        sub_801ADC0(p);
        return;
    case 3:
        p->charFlags.anim0 = 0xC2;
        goto block_9;
    case 4:
        p->moveState = (p->moveState | 4) & 0xFFFBFFFF;
        p->qSpeedGround = 0;
        p->qSpeedAirX = 0;
        p->qSpeedAirY = 0;
        p->charFlags.anim0 = 0x18;
        Player_800DAF4(p);
        return;
    }
}

void sub_801A930(Player *p) {
    s16 *temp_r1;
    s16 *temp_r2;
    s16 temp_r0;
    s16 temp_r6;
    u16 temp_r2_2;

    temp_r6 = sub_801480C(p);
    if (temp_r6 != 0) {
        p->qCamOffsetY = 0;
        return;
    }
    temp_r0 = sub_8015460(p);
    p->qWorldX += p->qSpeedAirX;
    p->qWorldY += p->qSpeedAirY;
    if (temp_r0 != 2) {
        SetPlayerCallback(p, sub_801A87C);
        sub_801A87C(p);
        p->qCamOffsetY = temp_r6;
        return;
    }
    temp_r1 = &p->idleAndCamCounter;
    if ((s32) *temp_r1 > 0) {
        *temp_r1 = (u16) *temp_r1 - 1;
    } else {
        temp_r2 = &p->qCamOffsetY;
        if ((s32) *temp_r2 > 0xFFFFFBB0) {
            *temp_r2 = (u16) *temp_r2 - 0x20;
        }
    }
    temp_r2_2 = p->charFlags.state1;
    if ((temp_r2_2 == 0) && (p->spriteData->s.frameFlags & 0x4000)) {
        p->charFlags.state1 = temp_r2_2 + 1;
    }
    if ((sub_8015064(p) << 0x10) == 0) {
        sub_8017004(p);
    }
}

void sub_801A9EC(Player *p) {
    PlayerSprite *temp_r2;

    Player_800D880(p);
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    sub_8016F28(p);
    sub_8012FA0(p);
    p->qSpeedAirY = -0x1D4;
    p->charFlags.anim0 = 0xC0;
    p->unk2F = 1;
    Player_BoostModeDisengage(p);
    p->moveState |= 0x40004;
    SetPlayerCallback(p, sub_801A5A0);
    sub_801A5A0(p);
}

void sub_801AA54(Player *p) {
    if ((s16) p->unk54 == 0) {
        sub_801EBC0(9U, p);
    }
    sub_801AC58(p, 0U);
}

void sub_801AA78(Player *p) {
    sub_8005B04();
    sub_8015144(p);
    if ((sub_8015064(p) << 0x10) == 0) {
        Player_801479C(p);
        sub_8016D30(p);
        sub_8014E70(p);
        sub_8012EB8(p);
        sub_8016E00(p);
        if (p->spriteData->s.frameFlags & 0x4000) {
            SetPlayerCallback(p, Player_8005380);
        }
        if (p->moveState & 4) {
            SetPlayerCallback(p, Player_800DB30);
        }
    }
}

void sub_801AAEC(Player *p) {
    if ((s16) p->unk54 == 0) {
        sub_801EBC0(0xAU, p);
    }
    sub_801AC58(p, 1U);
}

void sub_801AB10(Player *p) {
    if ((s16) p->unk54 == 0) {
        sub_801EBC0(9U, p);
    }
    sub_801AC58(p, 2U);
}

void sub_801AB34(Player *p) {
    if ((s16) p->unk54 == 0) {
        sub_801EBC0(9U, p);
    }
    sub_801ACBC(p, 0U);
}

void sub_801AB58(Player *p) {
    if ((s16) p->unk54 == 0) {
        sub_801EBC0(0xAU, p);
    }
    sub_801ACBC(p, 1U);
}

void sub_801AB7C(Player *p) {
    if ((s16) p->unk54 == 0) {
        sub_801EBC0(9U, p);
    }
    sub_801ACBC(p, 2U);
}

void sub_801ABA0(Player *p) {
    u32 temp_r1;

    Player_800D880(p);
    temp_r1 = p->moveState;
    if (2 & temp_r1) {
        p->moveState = temp_r1 & ~2;
        sub_8012FA0(p);
    }
    p->Padding8[0] = 0xF0;
    p->unk2F = 1;
    sub_8016F28(p);
    Player_BoostModeDisengage(p);
    p->moveState |= 0x40004;
    SetPlayerCallback(p, sub_801A6E0);
    sub_801A6E0(p);
}

void sub_801AC04(Player *p) {
    sub_8014940(p);
    if ((sub_8015064(p) << 0x10) == 0) {
        sub_8016E50(p);
        sub_8016D30(p);
        Player_80149E4(p);
        sub_8017004(p);
        if (p->spriteData->s.frameFlags & 0x4000) {
            p->charFlags.anim0 = 0xBF;
            SetPlayerCallback(p, Player_800DAF4);
        }
    }
}

void sub_801AC58(Player *arg0, u16 arg1) {
    PlayerSprite *temp_r2;
    s16 var_r0;

    Player_800D880(arg0);
    temp_r2 = arg0->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    sub_8012FA0(arg0);
    if (arg1 == 1) {
        if (arg0->qSpeedGround == 0) {
            var_r0 = 0xB6;
        } else {
            var_r0 = 0xB7;
        }
    } else if (arg0->qSpeedGround == 0) {
        var_r0 = 0xB4;
    } else {
        var_r0 = 0xB5;
    }
    arg0->charFlags.anim0 = var_r0;
    SetPlayerCallback(arg0, sub_801AA78);
    sub_801AA78(arg0);
}

void sub_801ACBC(Player *arg0, u16 arg1) {
    PlayerSprite *temp_r2;
    s16 var_r0;

    Player_800D880(arg0);
    temp_r2 = arg0->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    sub_8012FA0(arg0);
    arg0->moveState |= 4;
    if (arg1 == 1) {
        var_r0 = 0xBA;
    } else {
        var_r0 = 0xB9;
    }
    arg0->charFlags.anim0 = var_r0;
    SetPlayerCallback(arg0, Player_800DAF4);
    Player_800DAF4(arg0);
}

void sub_801AD10(Player *p) {
    u16 temp_r2;

    if ((sub_8015064() << 0x10) == 0) {
        Player_80149E4(p);
        sub_8017004(p);
        temp_r2 = p->charFlags.state1;
        if ((temp_r2 == 0) && (p->spriteData->s.frameFlags & 0x4000)) {
            p->charFlags.state1 = temp_r2 + 1;
            p->qSpeedAirX = (s16) temp_r2;
            p->qSpeedAirY = 0x100;
            SetPlayerCallback(p, sub_801AD64);
        }
    }
}

void sub_801AD64(Player *p) {
    if ((sub_8015064() << 0x10) == 0) {
        sub_8016E50(p);
        sub_8016D30(p);
        sub_8016EB0(p);
        Player_80149E4(p);
        sub_8017004(p);
        if ((s32) p->qSpeedAirY < -0x80) {
            p->qSpeedAirY = (u16) p->qSpeedAirY - 8;
        }
        if (!(p->moveState & 4)) {
            SetPlayerCallback(p, Player_8005380);
        }
    }
}

void sub_801ADC0(Player *arg0) {
    arg0->charFlags.anim0 = 0xC3;
    arg0->qSpeedGround = 0;
    arg0->qCamOffsetY = 0;
    arg0->idleAndCamCounter = 0x28;
    SetPlayerCallback(arg0, sub_801A930);
    sub_801A930(arg0);
}

void sub_801ADF4(Player *p) {
    s16 var_r0;
    u32 temp_r1;

    Player_800D880(p);
    temp_r1 = p->moveState;
    if (2 & temp_r1) {
        p->moveState = temp_r1 & ~2;
        Player_8012FE0(p);
    }
    p->Padding8[4] = 0x78;
    p->unk2F = 1;
    Player_BoostModeDisengage(p);
    if (p->moveState & 1) {
        var_r0 = -0x100;
    } else {
        var_r0 = 0x100;
    }
    p->qSpeedAirX = var_r0;
    p->qSpeedAirY = -0x80;
    p->moveState |= 0x40004;
    SetPlayerCallback(p, sub_801B608);
    sub_801B608(p);
}

void sub_801AE70(Player *p) {
    s16 temp_r0;
    s16 temp_r0_2;
    u32 temp_r1;
    u32 temp_r1_2;
    u8 *temp_r6;

    Player_800D880(p);
    temp_r1 = p->moveState;
    if (2 & temp_r1) {
        p->moveState = temp_r1 & ~2;
        Player_8012FE0(p);
    }
    temp_r0 = (u16) p->qSpeedAirY + 0x180;
    p->qSpeedAirY = temp_r0;
    if ((s32) (temp_r0 << 0x10) < 0) {
        p->qSpeedAirY = 0;
    }
    p->qSpeedGround = 0x100;
    temp_r1_2 = p->moveState;
    if (temp_r1_2 & 0x80) {
        p->qSpeedGround = 0x80;
    }
    if (temp_r1_2 & 1) {
        temp_r0_2 = 0 - (u16) p->qSpeedGround;
        p->qSpeedGround = temp_r0_2;
        p->qSpeedAirX = temp_r0_2;
        p->Padding8[0] = 0x80;
    } else {
        p->qSpeedAirX = (s16) (u16) p->qSpeedGround;
        p->Padding8[0] = 0;
    }
    p->Padding8[4] = 0xF0;
    p->unk2F = 1;
    p->charFlags.anim0 = 0xD9;
    Player_BoostModeDisengage(p);
    p->unk26 = 0;
    temp_r6 = &p->Padding8[2];
    *temp_r6 = 0;
    p->Padding8[3] = 0;
    Player_BoostModeDisengage(p);
    *temp_r6 |= 4;
    p->moveState = (p->moveState | 0x40004) & ~8;
    SetPlayerCallback(p, sub_801BA2C);
    sub_801BA2C(p);
}

void sub_801AF50(Player *p) {
    s16 var_r0;
    s32 temp_r0_2;
    u32 temp_r0;
    u32 temp_r2;

    if (p->spriteData->s.frameFlags & 0x4000) {
        SetPlayerCallback(p, Player_8005380);
    }
    var_r0 = p->qSpeedGround;
    temp_r2 = (u32) var_r0 >> 0x1F;
    if ((s32) var_r0 < 0) {
        var_r0 = 0 - var_r0;
    }
    temp_r0 = (var_r0 << 0x10) + 0xFFE00000;
    temp_r0_2 = (s32) temp_r0 >> 0x10;
    if (temp_r0_2 < 0) {
        p->qSpeedGround = 0;
    } else if (temp_r2 != 0) {
        p->qSpeedGround = 0 - temp_r0_2;
    } else {
        p->qSpeedGround = (s16) (temp_r0 >> 0x10);
    }
    sub_8015144(p);
    if ((sub_8015064(p) << 0x10) == 0) {
        Player_801479C(p);
        sub_8016D30(p);
        sub_8014E70(p);
        sub_8012EB8(p);
        sub_8016E00(p);
        if (p->moveState & 4) {
            SetPlayerCallback(p, Player_800DB30);
        }
    }
}

void sub_801AFEC(Player *p) {
    s16 temp_r0_2;
    s16 temp_r1;
    s16 temp_r7;
    s16 var_r0;
    s16 var_r0_3;
    u16 temp_r0;
    u16 temp_r1_2;
    u16 temp_r1_3;
    u16 var_r0_2;
    u32 temp_r2;
    u8 *temp_r5;
    u8 *temp_r6;

    temp_r6 = &p->Padding8[6];
    *temp_r6 = (u16) (*temp_r6 - 1);
    temp_r5 = &p->Padding8[4];
    temp_r0 = *temp_r5 + 1;
    *temp_r5 = temp_r0;
    temp_r7 = (s16) *temp_r6;
    if (temp_r7 == 0) {
        p->charFlags.state1 = 2;
        p->unk2B = (u8) (p->unk2B | 0x40);
        SetPlayerCallback(p, sub_801B11C);
        *temp_r5 = (u16) temp_r7;
        Player_StopSong(p, 0x214U);
        return;
    }
    if ((s32) (s16) temp_r0 > 0xB3) {
        p->charFlags.state1 = 1;
        p->unk2B = (u8) (p->unk2B | 0x40);
        Player_StopSong(p, 0x214U);
        SetPlayerCallback(p, sub_801B1B0);
        *temp_r6 = 0x78U;
        return;
    }
    if (gStageData.buttonConfig.attack & p->keyInput2) {
        *temp_r6 = 0x1EU;
    }
    var_r0 = p->qSpeedGround;
    temp_r2 = (u32) var_r0 >> 0x1F;
    if ((s32) var_r0 < 0) {
        var_r0 = 0 - var_r0;
    }
    temp_r1 = var_r0;
    if ((s32) temp_r1 <= 0x3FF) {
        var_r0_2 = temp_r1 - 0x10;
    } else {
        var_r0_2 = temp_r1 - 0x40;
    }
    temp_r1_2 = var_r0_2;
    temp_r0_2 = (s16) temp_r1_2;
    if ((s32) temp_r0_2 < 0) {
        p->qSpeedGround = 0;
    } else if (temp_r2 != 0) {
        p->qSpeedGround = 0 - temp_r0_2;
    } else {
        p->qSpeedGround = (s16) temp_r1_2;
    }
    temp_r1_3 = p->keyInput;
    if (0x30 & temp_r1_3) {
        if (0x20 & temp_r1_3) {
            var_r0_3 = (u16) p->qSpeedGround - 0x10;
        } else {
            var_r0_3 = (u16) p->qSpeedGround + 0x10;
        }
        p->qSpeedGround = var_r0_3;
    }
    sub_8015144(p);
    if ((sub_8015064(p) << 0x10) == 0) {
        Player_801479C(p);
        sub_8016D30(p);
        sub_8014E70(p);
        sub_8012EB8(p);
        sub_8016E00(p);
    }
}

void sub_801B11C(Player *p) {
    s16 temp_r0;
    s16 temp_r1;
    s16 var_r0;
    u16 temp_r1_2;
    u16 var_r0_2;
    u32 temp_r2;

    if (p->spriteData->s.frameFlags & 0x4000) {
        SetPlayerCallback(p, Player_8005380);
    }
    var_r0 = p->qSpeedGround;
    temp_r2 = (u32) var_r0 >> 0x1F;
    if ((s32) var_r0 < 0) {
        var_r0 = 0 - var_r0;
    }
    temp_r1 = var_r0;
    if ((s32) temp_r1 <= 0x3FF) {
        var_r0_2 = temp_r1 - 0x20;
    } else {
        var_r0_2 = temp_r1 - 0x80;
    }
    temp_r1_2 = var_r0_2;
    temp_r0 = (s16) temp_r1_2;
    if ((s32) temp_r0 < 0) {
        p->qSpeedGround = 0;
    } else if (temp_r2 != 0) {
        p->qSpeedGround = 0 - temp_r0;
    } else {
        p->qSpeedGround = (s16) temp_r1_2;
    }
    if ((sub_8015064(p) << 0x10) == 0) {
        Player_801479C(p);
        sub_8016D30(p);
        sub_8014E70(p);
        sub_8012EB8(p);
        sub_8016E00(p);
    }
}

void sub_801B1B0(Player *p) {
    s16 temp_r0_2;
    s16 temp_r1_2;
    s16 var_r0;
    u16 temp_r0;
    u16 temp_r1_3;
    u16 var_r0_2;
    u32 temp_r2;
    u8 *temp_r1;

    temp_r1 = &p->Padding8[6];
    temp_r0 = *temp_r1 - 1;
    *temp_r1 = temp_r0;
    if ((temp_r0 << 0x10) == 0) {
        p->charFlags.state1 = 3;
        p->unk2B = (u8) (p->unk2B | 0x40);
        SetPlayerCallback(p, sub_801B11C);
        return;
    }
    var_r0 = p->qSpeedGround;
    temp_r2 = (u32) var_r0 >> 0x1F;
    if ((s32) var_r0 < 0) {
        var_r0 = 0 - var_r0;
    }
    temp_r1_2 = var_r0;
    if ((s32) temp_r1_2 <= 0x3FF) {
        var_r0_2 = temp_r1_2 - 0x20;
    } else {
        var_r0_2 = temp_r1_2 - 0x80;
    }
    temp_r1_3 = var_r0_2;
    temp_r0_2 = (s16) temp_r1_3;
    if ((s32) temp_r0_2 < 0) {
        p->qSpeedGround = 0;
    } else if (temp_r2 != 0) {
        p->qSpeedGround = 0 - temp_r0_2;
    } else {
        p->qSpeedGround = (s16) temp_r1_3;
    }
    if ((sub_8015064(p) << 0x10) == 0) {
        Player_801479C(p);
        sub_8016D30(p);
        sub_8014E70(p);
        sub_8012EB8(p);
        sub_8016E00(p);
    }
}

void sub_801B258(Player *p) {
    PlayerSprite *temp_r2;
    u32 temp_r1;

    sub_8014940(p);
    if ((sub_8015064(p) << 0x10) == 0) {
        sub_8016E50(p);
        sub_8016D30(p);
        sub_8014E70(p);
        sub_8016EB0(p);
        Player_80149E4(p);
        sub_8017004(p);
        temp_r2 = p->spriteData;
        temp_r1 = temp_r2->s.frameFlags;
        if (0x4000 & temp_r1) {
            temp_r2->s.frameFlags = temp_r1 & 0xFFFFBFFF;
            p->charFlags.anim0 = 0x14;
            p->charFlags.anim2 = *(((u32) (p->unk2A << 0x1C) >> 0x1B) + gPlayerCharacterIdleAnims) + 0x13;
            p->charFlags.state1 = 1;
            sub_8012FC0(p);
            SetPlayerCallback(p, sub_800DF5C);
        }
    }
}

void sub_801B2E4(Player *p) {
    Player *temp_r2_2;
    s32 var_r6;
    u16 temp_r3_2;
    u32 temp_r1;
    u32 temp_r1_2;
    u8 *temp_r2;
    u8 temp_r0;
    u8 temp_r3;

    var_r6 = 0;
    temp_r2 = &p->Padding8[4];
    if ((s16) *temp_r2 != 0) {
        *temp_r2 = (u16) (*temp_r2 - 1);
    }
    if (p->unk2F != 1) {
        if (((s32) p->qSpeedAirY < -0xC0) || (p->qSpeedAirY = (u16) p->qSpeedAirY - 0x18, temp_r0 = p->unk2F + 1, p->unk2F = temp_r0, (temp_r0 == 0x20))) {
            p->unk2F = 1U;
        }
    } else {
        if ((gStageData.buttonConfig.jump & p->keyInput2) && ((s32) p->qSpeedAirY >= -0xC0) && ((s16) *temp_r2 != 0)) {
            p->unk2F = 2U;
        }
        p->qSpeedAirY = (u16) p->qSpeedAirY + 8;
    }
    if (((sub_8015064(p) << 0x10) == 0) && (sub_801B458(p), sub_800E04C(p), temp_r1 = p->moveState, ((0x100 & temp_r1) == 0))) {
        if (!(4 & temp_r1)) {
            SetPlayerCallback(p, Player_8005380);
            Player_StopSong(p, SE_TAILS__FLYING);
            return;
        }
        if (temp_r1 & 0x02000000) {
            temp_r3 = p->unk2B;
            temp_r2_2 = &gPlayers[(u32) (temp_r3 << 0x1E) >> 0x1E];
            if (((u32) gStageData.gameMode <= 4U) || ((0x1C & temp_r3) == 8) || ((0x1C & temp_r2_2->unk2B) == 8)) {
                if ((u32) (u16) ((u16) temp_r2_2->charFlags.anim0 - 0x5C) > 1U) {
                    goto block_25;
                }
                goto block_24;
            }
            temp_r3_2 = temp_r2_2->charFlags.anim2;
            temp_r1_2 = temp_r2_2->unk2A << 0x1C;
            if ((temp_r3_2 != (*((temp_r1_2 >> 0x1B) + gPlayerCharacterIdleAnims) + 0x5C)) && (temp_r3_2 != (*((temp_r1_2 >> 0x1B) + gPlayerCharacterIdleAnims) + 0x5D))) {
                var_r6 = 1;
            }
block_24:
            if (var_r6 != 0) {
block_25:
                p->moveState &= 0xDDFBFFFF;
                Player_8012FE0(p);
                p->charFlags.anim0 = 0x18;
                Player_800DAF4(p);
            }
        } else {
            sub_801C1D4(p);
        }
    }
}

void sub_801B458(Player *arg0) {
    s16 var_r0;
    u16 temp_r3;

    if (arg0->unk14C == 0) {
        arg0->charFlags.anim0 = 0xD0;
        Player_StopSong(arg0, SE_TAILS__FLYING);
        return;
    }
    temp_r3 = arg0->keyInput;
    if (((0x20 & temp_r3) && !(arg0->moveState & 1)) || ((0x10 & temp_r3) && (arg0->moveState & 1))) {
        var_r0 = 0xCF;
        goto block_10;
    }
    if ((arg0->charFlags.anim0 != 0xCF) || (arg0->spriteData->s.frameFlags & 0x4000)) {
        var_r0 = 0xCE;
block_10:
        arg0->charFlags.anim0 = var_r0;
    }
    Player_PlayOrContinueSong(arg0, 0x78);
}

void sub_801B4CC(Player *p) {
    u8 *temp_r2;
    u8 temp_r0;

    temp_r2 = &p->Padding8[4];
    if ((s16) *temp_r2 != 0) {
        *temp_r2 = (u16) (*temp_r2 - 1);
    }
    if (p->unk2F != 1) {
        if (((s32) p->qSpeedAirY < 0xFFFFFE80) || (p->qSpeedAirY = (u16) p->qSpeedAirY - 0x30, temp_r0 = p->unk2F + 1, p->unk2F = temp_r0, (temp_r0 == 0x20))) {
            p->unk2F = 1U;
        }
    } else {
        if ((gStageData.buttonConfig.jump & p->keyInput2) && ((s32) p->qSpeedAirY >= 0xFFFFFE80) && ((s16) *temp_r2 != 0)) {
            p->unk2F = 2U;
        }
        p->qSpeedAirY = (u16) p->qSpeedAirY + 8;
    }
    if ((sub_8015064(p) << 0x10) == 0) {
        sub_801B58C(p);
        sub_801C00C(p);
        if (!(p->moveState & 4)) {
            SetPlayerCallback(p, Player_8005380);
            Player_StopSong(p, SE_TAILS__FLYING);
            return;
        }
        sub_801C1D4(p);
    }
}

void sub_801B58C(Player *arg0) {
    s16 var_r0;
    u16 temp_r3;

    if (arg0->unk14C == 0) {
        arg0->charFlags.anim0 = 0xD0;
        arg0->qSpeedAirY += 0x10;
        Player_StopSong(arg0, SE_TAILS__FLYING);
        return;
    }
    temp_r3 = arg0->keyInput;
    if (((0x20 & temp_r3) && !(arg0->moveState & 1)) || ((0x10 & temp_r3) && (arg0->moveState & 1))) {
        var_r0 = 0xD2;
        goto block_10;
    }
    if ((arg0->charFlags.anim0 != 0xCF) || (arg0->spriteData->s.frameFlags & 0x4000)) {
        var_r0 = 0xD1;
block_10:
        arg0->charFlags.anim0 = var_r0;
    }
    Player_PlayOrContinueSong(arg0, 0x78);
}

void sub_801B608(Player *p) {
    s16 temp_r0;
    u32 var_r0;
    void (*var_r1)(Player *);

    if (!(gStageData.buttonConfig.jump & p->keyInput)) {
        p->charFlags.anim0 = 0xD3;
        var_r1 = sub_801BFD4;
        goto block_10;
    }
    p->qSpeedAirY = (u16) p->qSpeedAirY + 8;
    sub_801B6A8(p);
    sub_8014940(p);
    temp_r0 = p->qSpeedAirX;
    if ((s32) temp_r0 < 0) {
        var_r0 = p->moveState | 1;
        goto block_6;
    }
    if ((s32) temp_r0 > 0) {
        var_r0 = p->moveState & ~1;
block_6:
        p->moveState = var_r0;
    }
    if ((sub_8015064(p) << 0x10) == 0) {
        sub_8016D30(p);
        sub_8016EB0(p);
        Player_80149E4(p);
        sub_8017004(p);
        if (!(p->moveState & 4)) {
            var_r1 = Player_8005380;
block_10:
            SetPlayerCallback(p, var_r1);
            Player_StopSong(p, SE_TAILS__FLYING);
            return;
        }
        sub_801C1D4(p);
    }
}

void sub_801B6A8(Player *arg0) {
    s16 temp_r3_2;
    u16 temp_r3;

    if (arg0->unk14C == 0) {
        arg0->charFlags.anim0 = 0xD0;
        Player_StopSong(arg0, SE_TAILS__FLYING);
        return;
    }
    temp_r3 = arg0->keyInput;
    if (((0x20 & temp_r3) && !(arg0->moveState & 1)) || ((0x10 & temp_r3) && (arg0->moveState & 1)) || (temp_r3_2 = arg0->charFlags.anim0, (temp_r3_2 != 0xD4))) {
        arg0->charFlags.anim0 = 0xD4;
    } else if (arg0->spriteData->s.frameFlags & 0x4000) {
        arg0->charFlags.anim0 = temp_r3_2;
    }
    Player_PlayOrContinueSong(arg0, 0x78);
}

void sub_801B71C(Player *p) {
    u32 temp_r1;
    u8 *temp_r2;
    u8 temp_r0;
    void (*var_r1)(Player *);

    temp_r2 = &p->Padding8[4];
    if ((s16) *temp_r2 != 0) {
        *temp_r2 = (u16) (*temp_r2 - 1);
    }
    if (p->unk2F != 1) {
        if (((s32) p->qSpeedAirY < 0xFFFFFE80) || (p->qSpeedAirY = (u16) p->qSpeedAirY - 0x30, temp_r0 = p->unk2F + 1, p->unk2F = temp_r0, (temp_r0 == 0x20))) {
            p->unk2F = 1U;
        }
    } else {
        if ((gStageData.buttonConfig.jump & p->keyInput2) && ((s32) p->qSpeedAirY >= 0xFFFFFE80) && ((s16) *temp_r2 != 0)) {
            p->unk2F = 2U;
        }
        p->qSpeedAirY = (u16) p->qSpeedAirY + 8;
    }
    if ((p->charFlags.anim0 != 0xD0) && ((s32) (s16) p->Padding8[4] <= 0xEE) && (gStageData.buttonConfig.attack & p->keyInput2)) {
        p->charFlags.state1 = 1;
        p->unk2B = (u8) (p->unk2B | 0x40);
        var_r1 = sub_801B824;
        goto block_19;
    }
    if (((sub_8015064(p) << 0x10) == 0) && (sub_801C068(p), sub_800E04C(p), temp_r1 = p->moveState, ((0x100 & temp_r1) == 0))) {
        if (!(temp_r1 & 4)) {
            Player_StopSong(p, SE_TAILS__FLYING);
            var_r1 = Player_8005380;
block_19:
            SetPlayerCallback(p, var_r1);
            return;
        }
        sub_801C1D4(p);
    }
}

void sub_801B824(Player *p) {
    u32 temp_r1_2;
    u8 *temp_r1;
    u8 temp_r0;

    temp_r1 = &p->Padding8[4];
    if ((s16) *temp_r1 != 0) {
        *temp_r1 = (u16) (*temp_r1 - 1);
    }
    if (p->unk2F != 1) {
        if (((s32) p->qSpeedAirY < 0xFFFFFE80) || (p->qSpeedAirY = (u16) p->qSpeedAirY - 0x30, temp_r0 = p->unk2F + 1, p->unk2F = temp_r0, (temp_r0 == 0x20))) {
            p->unk2F = 1U;
        }
    } else {
        p->qSpeedAirY = (u16) p->qSpeedAirY + 8;
    }
    if (p->spriteData->s.frameFlags & 0x4000) {
        p->charFlags.state1 = 0;
        SetPlayerCallback(p, sub_801B71C);
        return;
    }
    if ((sub_8015064(p) << 0x10) == 0) {
        sub_800E04C(p);
        temp_r1_2 = p->moveState;
        if (!(0x100 & temp_r1_2) && !(temp_r1_2 & 4)) {
            Player_StopSong(p, SE_TAILS__FLYING);
            SetPlayerCallback(p, Player_8005380);
        }
    }
}

void sub_801B8DC(Player *p) {
    u32 temp_r1;
    u8 *temp_r2;
    u8 temp_r0;

    temp_r2 = &p->Padding8[4];
    if ((s16) *temp_r2 != 0) {
        *temp_r2 = (u16) (*temp_r2 - 1);
    }
    if (p->unk2F != 1) {
        if (((s32) p->qSpeedAirY < -0xC0) || (p->qSpeedAirY = (u16) p->qSpeedAirY - 0x18, temp_r0 = p->unk2F + 1, p->unk2F = temp_r0, (temp_r0 == 0x20))) {
            p->unk2F = 1U;
        }
    } else {
        if ((gStageData.buttonConfig.jump & p->keyInput2) && ((s32) p->qSpeedAirY >= -0xC0) && ((s16) *temp_r2 != 0)) {
            p->unk2F = 2U;
        }
        p->qSpeedAirY = (u16) p->qSpeedAirY + 8;
    }
    if (((sub_8015064(p) << 0x10) == 0) && (sub_801B9A8(p), sub_800E04C(p), temp_r1 = p->moveState, ((0x100 & temp_r1) == 0))) {
        if (!(temp_r1 & 4)) {
            SetPlayerCallback(p, Player_8005380);
            return;
        }
        Player_PlayOrContinueSong(p, 0x21A);
        sub_801C14C(p);
    }
}

void sub_801B9A8(Player *arg0) {
    u16 temp_r3;

    if (arg0->unk14C == 0) {
        arg0->charFlags.anim0 = 0xD8;
        Player_StopSong(arg0, 0x21AU);
        return;
    }
    temp_r3 = arg0->keyInput;
    if (((0x20 & temp_r3) && !(arg0->moveState & 1)) || ((0x10 & temp_r3) && (arg0->moveState & 1))) {
        arg0->charFlags.anim0 = 0xD7;
        return;
    }
    if (arg0->charFlags.anim0 != 0xCF) {
        arg0->charFlags.anim0 = 0xD6;
        return;
    }
    if (arg0->spriteData->s.frameFlags & 0x4000) {
        arg0->charFlags.anim0 = 0xD6;
        Player_PlayOrContinueSong(arg0, 0x21A);
    }
}

void sub_801BA2C(Player *p) {
    u8 *temp_r1;
    u8 *temp_r2;
    u8 temp_r0;
    u8 temp_r0_2;
    u8 temp_r0_3;
    u8 temp_r0_4;

    temp_r1 = &p->Padding8[3];
    temp_r0 = *temp_r1;
    if (temp_r0 == 0) {
        sub_801BAFC(p);
    } else {
        temp_r0_2 = temp_r0 - 1;
        *temp_r1 = temp_r0_2;
        temp_r0_3 = temp_r0_2;
        if (temp_r0_3 == 0) {
            p->charFlags.state1 = (u16) temp_r0_3;
        }
    }
    temp_r2 = &p->Padding8[4];
    if ((s16) *temp_r2 != 0) {
        *temp_r2 = (u16) (*temp_r2 - 1);
    }
    if (p->unk2F != 1) {
        if (((s32) p->qSpeedAirY < 0xFFFFFF00) || (p->qSpeedAirY = (u16) p->qSpeedAirY - 0x20, temp_r0_4 = p->unk2F + 1, p->unk2F = temp_r0_4, (temp_r0_4 == 0x20))) {
            p->unk2F = 1U;
        }
    } else {
        if ((gStageData.buttonConfig.jump & p->keyInput2) && ((s32) p->qSpeedAirY >= 0xFFFFFF00) && ((s16) *temp_r2 != 0)) {
            p->unk2F = 2U;
        }
        p->qSpeedAirY = (u16) p->qSpeedAirY + 8;
    }
    sub_801BC48(p);
    if ((sub_8015064(p) << 0x10) == 0) {
        sub_8016D30(p);
        sub_801C098(p);
        sub_801C14C(p);
    }
}

void sub_801BAFC(Player *arg0) {
    s16 var_r0_2;
    s16 var_r0_4;
    s16 var_r0_5;
    s16 var_r1_2;
    s32 var_r0_6;
    u16 temp_r1_2;
    u16 temp_r1_3;
    u16 temp_r1_4;
    u16 var_r0;
    u16 var_r0_3;
    u32 temp_r1;
    u32 var_r1;

    if (arg0->charFlags.anim0 == 0xDA) {
        if (arg0->spriteData->s.frameFlags & 0x4000) {
            temp_r1 = arg0->moveState;
            if (temp_r1 & 1) {
                var_r1 = temp_r1 & ~1;
            } else {
                var_r1 = temp_r1 | 1;
            }
            arg0->moveState = var_r1;
            arg0->charFlags.anim0 = 0xD9;
        }
    } else {
        temp_r1_2 = arg0->keyInput;
        if (0x20 & temp_r1_2) {
            if (!(arg0->moveState & 1)) {
                arg0->charFlags.anim0 = 0xDA;
            }
            var_r0 = arg0->qSpeedAirX - 0x20;
            goto block_14;
        }
        if (0x10 & temp_r1_2) {
            if (arg0->moveState & 1) {
                arg0->charFlags.anim0 = 0xDA;
            }
            var_r0 = arg0->qSpeedAirX + 0x20;
block_14:
            arg0->qSpeedAirX = var_r0;
        }
    }
    var_r0_2 = (s16) arg0->qSpeedAirX;
    var_r1_2 = var_r0_2;
    if ((s32) var_r0_2 < 0) {
        var_r1_2 = 0 - var_r0_2;
    }
    if ((s32) var_r1_2 <= 7) {
        var_r0_3 = 0;
        goto block_28;
    }
    if ((s32) var_r0_2 < 0) {
        var_r0_2 = 0 - var_r0_2;
    }
    if ((s32) var_r0_2 > 0x300) {
        if ((s32) (s16) arg0->qSpeedAirX < 0) {
            var_r0_3 = 0xFD00;
            goto block_28;
        }
        arg0->qSpeedAirX = 0x300;
    } else {
        temp_r1_3 = arg0->qSpeedAirX;
        if ((s32) (s16) arg0->qSpeedAirX < 0) {
            var_r0_3 = temp_r1_3 + 8;
        } else {
            var_r0_3 = temp_r1_3 - 8;
        }
block_28:
        arg0->qSpeedAirX = var_r0_3;
    }
    if ((arg0->unk14C != 0) && (gStageData.buttonConfig.attack & arg0->keyInput2)) {
        arg0->Padding8[3] = 0x3C;
        arg0->charFlags.anim0 = 0xD9;
        arg0->charFlags.anim2 = 0x18C;
        arg0->charFlags.state1 = 1;
        Player_PlaySong(arg0, 0x21AU);
        if (arg0->moveState & 1) {
            var_r0_4 = -0x300;
        } else {
            var_r0_4 = 0x300;
        }
        arg0->qSpeedAirX = var_r0_4;
    }
    temp_r1_4 = (u16) arg0->qSpeedAirY;
    if ((s32) arg0->qSpeedAirY <= 0x7F) {
        var_r0_5 = temp_r1_4 + 0x18;
    } else {
        var_r0_5 = temp_r1_4 - 0x18;
    }
    arg0->qSpeedAirY = var_r0_5;
    if ((s32) gCamera.unk40 > 0) {
        var_r0_6 = gCamera.unk40 - 2;
        goto block_42;
    }
    if ((s32) gCamera.unk40 < 0) {
        var_r0_6 = gCamera.unk40 + 4;
block_42:
        gCamera.unk40 = var_r0_6;
    }
}

void sub_801BC48(Player *arg0) {
    u16 temp_r1;

    if (arg0->unk14C == 0) {
        arg0->charFlags.anim0 = 0xD8;
        Player_StopSong(arg0, 0x21AU);
        temp_r1 = arg0->keyInput;
        if (0x20 & temp_r1) {
            goto block_8;
        }
        if (0x10 & temp_r1) {
            goto block_9;
        }
    } else {
        if (arg0->Padding8[3] != 0) {
            arg0->charFlags.anim0 = 0xD9;
            arg0->charFlags.anim2 = 0x18C;
            arg0->charFlags.state1 = 1;
            if ((s32) arg0->qSpeedAirX < 0) {
block_8:
                arg0->moveState |= 1;
                return;
            }
block_9:
            arg0->moveState &= ~1;
            return;
        }
        Player_PlayOrContinueSong(arg0, 0x21A);
    }
}

void sub_801BCCC(Player *p) {
    PlayerSprite *temp_r2;

    Player_800D880(p);
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    sub_8012FA0(p);
    p->moveState |= 0x8000;
    p->charFlags.anim0 = 0xCA;
    Player_PlaySong(p, 0x79U);
    SetPlayerCallback(p, sub_801AF50);
    sub_801AF50(p);
}

void sub_801BD1C(Player *p) {
    PlayerSprite *temp_r2;

    Player_800D880(p);
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    sub_8012FA0(p);
    p->moveState |= 0x8000;
    p->charFlags.anim0 = 0xCB;
    p->Padding8[4] = 0;
    p->Padding8[6] = 0x1E;
    Player_PlaySong(p, 0x214U);
    SetPlayerCallback(p, sub_801AFEC);
    sub_801AFEC(p);
}

void sub_801BD84(Player *p) {
    PlayerSprite *temp_r2;

    Player_800D880(p);
    p->moveState |= 0x8006;
    sub_8012FC0(p);
    p->charFlags.anim0 = 0xCD;
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    Player_PlaySong(p, 0x71U);
    SetPlayerCallback(p, sub_801B258);
    sub_801B258(p);
}

void sub_801BDD8(Player *p) {
    u32 temp_r1;

    temp_r1 = p->moveState;
    if (2 & temp_r1) {
        p->moveState = temp_r1 & ~2;
        Player_8012FE0(p);
    }
    p->Padding8[4] = 0xF0;
    p->unk2F = 1;
    p->qSpeedAirY = 0;
    p->charFlags.anim0 = 0xCE;
    Player_BoostModeDisengage(p);
    p->moveState = (p->moveState | 0x40004) & ~8;
    SetPlayerCallback(p, sub_801B2E4);
    sub_801B2E4(p);
}

void sub_801BE40(Player *arg0) {
    u32 temp_r1;

    temp_r1 = arg0->moveState;
    if (2 & temp_r1) {
        arg0->moveState = temp_r1 & ~2;
        Player_8012FE0(arg0);
    }
    arg0->Padding8[4] = 0x186;
    arg0->unk2F = 1;
    arg0->qSpeedAirY = 0;
    arg0->charFlags.anim0 = 0xCE;
    Player_BoostModeDisengage(arg0);
    arg0->moveState = (arg0->moveState | 0x20040004) & ~8;
    SetPlayerCallback(arg0, sub_801B2E4);
}

void sub_801BEA0(Player *p) {
    u32 temp_r1;

    Player_800D880(p);
    temp_r1 = p->moveState;
    if (2 & temp_r1) {
        p->moveState = temp_r1 & ~2;
        Player_8012FE0(p);
    }
    p->Padding8[4] = 0x78;
    p->unk2F = 1;
    p->qSpeedAirY = -0x200;
    p->qSpeedAirX = 0;
    Player_BoostModeDisengage(p);
    p->moveState |= 0x40004;
    SetPlayerCallback(p, sub_801B4CC);
    sub_801B4CC(p);
}

void sub_801BF08(Player *p) {
    u32 temp_r1;

    Player_800D880(p);
    temp_r1 = p->moveState;
    if (2 & temp_r1) {
        p->moveState = temp_r1 & ~2;
        Player_8012FE0(p);
    }
    p->Padding8[4] = 0xF0;
    p->unk2F = 1;
    p->charFlags.anim0 = 0xD5;
    Player_BoostModeDisengage(p);
    p->moveState |= 0x40004;
    SetPlayerCallback(p, sub_801B71C);
    sub_801B71C(p);
}

void sub_801BF6C(Player *p) {
    u32 temp_r1;

    Player_800D880(p);
    temp_r1 = p->moveState;
    if (2 & temp_r1) {
        p->moveState = temp_r1 & ~2;
        Player_8012FE0(p);
    }
    p->Padding8[4] = 0xF0;
    p->unk2F = 1;
    p->charFlags.anim0 = 0xD6;
    Player_BoostModeDisengage(p);
    p->moveState = (p->moveState | 0x40004) & ~8;
    SetPlayerCallback(p, sub_801B8DC);
    sub_801B8DC(p);
}

void sub_801BFD4(Player *p) {
    p->qSpeedAirY = (u16) p->qSpeedAirY + 0x2A;
    if ((sub_8015064(p) << 0x10) == 0) {
        sub_801C00C(p);
        if (!(p->moveState & 4)) {
            SetPlayerCallback(p, Player_8005380);
        }
    }
}

void sub_801C00C(Player *arg0) {
    s16 temp_r1;
    s16 var_r0;

    arg0->unk90 = (s32) arg0->unk90 >> 1;
    sub_8014940(arg0);
    temp_r1 = arg0->qSpeedAirX;
    if ((s32) temp_r1 < -0x80) {
        var_r0 = -0x80;
        goto block_4;
    }
    if ((s32) temp_r1 > 0x80) {
        var_r0 = 0x80;
block_4:
        arg0->qSpeedAirX = var_r0;
    }
    if ((sub_8015064(arg0) << 0x10) == 0) {
        sub_8016D30(arg0);
        sub_8016EB0(arg0);
        Player_80149E4(arg0);
        sub_8017004(arg0);
    }
}

void sub_801C068(Player *arg0) {
    if (arg0->unk14C == 0) {
        arg0->charFlags.anim0 = 0xD0;
        Player_StopSong(arg0, SE_TAILS__FLYING);
        return;
    }
    arg0->charFlags.anim0 = 0xD5;
    Player_PlayOrContinueSong(arg0, 0x78);
}

void sub_801C098(Player *arg0) {
    u32 var_r0;
    u32 var_r0_2;

    sub_8012634();
    if (!(4 & arg0->Padding8[2])) {
        if ((s32) arg0->qSpeedAirX <= 0) {
            var_r0 = arg0->moveState | 1;
        } else {
            var_r0 = arg0->moveState & ~1;
        }
        arg0->moveState = var_r0;
        if ((s32) ((arg0->Padding8[0] + 0x40) << 0x18) <= 0) {
            var_r0_2 = arg0->moveState | 1;
        } else {
            var_r0_2 = arg0->moveState & ~1;
        }
        arg0->moveState = var_r0_2;
        arg0->qSpeedAirY = 0;
        SetPlayerCallback(arg0, Player_8005380);
        Player_StopSong(arg0, 0x21AU);
    }
}

void sub_801C110(void *arg0) {
    sub_8004E20((s16) ((s32) (arg0->unk10 << 8) >> 0x10), (s16) ((s32) (arg0->unk14 << 8) >> 0x10), &subroutine_arg0);
    if ((s32) (arg0->unk14 + arg0->unk1A) <= (s32) ((subroutine_arg0 + 4) << 8)) {
        arg0->unk1A = 0;
    }
}

void sub_801C14C(Player *arg0) {
    u32 temp_r1;
    void (*var_r1)(Player *);

    if (!(arg0->moveState & 0x80) && (arg0->unk14C != 0)) {
        temp_r1 = arg0->unkC & 0x180;
        switch (temp_r1) {                          /* irregular */
        case 0x0:
            var_r1 = sub_801B2E4;
block_12:
            SetPlayerCallback(arg0, var_r1);
            break;
        case 0x80:
            var_r1 = sub_801B608;
            goto block_12;
        case 0x100:
            var_r1 = sub_801B4CC;
            goto block_12;
        case 0x180:
            SetPlayerCallback(arg0, sub_801B71C);
            break;
        }
        Player_StopSong(arg0, 0x21AU);
        Player_PlayOrContinueSong(arg0, 0x78);
    }
}

void sub_801C1D4(Player *arg0) {
    s16 var_r0;
    u32 temp_r1;

    if ((arg0->moveState & 0x80) && (arg0->unk14C != 0)) {
        temp_r1 = arg0->unkC;
        if (0x200000 & temp_r1) {
            SetPlayerCallback(arg0, sub_801B8DC);
            var_r0 = 0xD6;
            goto block_6;
        }
        if (temp_r1 & 0x400000) {
            SetPlayerCallback(arg0, sub_801BA2C);
            var_r0 = 0xD9;
block_6:
            arg0->charFlags.anim0 = var_r0;
        }
        Player_StopSong(arg0, SE_TAILS__FLYING);
    }
}

void sub_801C234(Player *p) {
    p->moveState &= ~2;
    sub_8012FA0(p);
    p->moveState = (p->moveState & ~4) | 0x40000;
    sub_8004E20((s16) ((s32) (p->qWorldX << 8) >> 0x10), (s16) ((s32) (p->qWorldY << 8) >> 0x10), &subroutine_arg0);
    p->charFlags.anim0 = 0xF0;
    if ((s32) p->qSpeedAirY <= 0xFF) {
        p->qSpeedAirY = 0x100;
    }
    p->qWorldY = (subroutine_arg0 << 8) + p->qSpeedAirY;
    p->qSpeedAirY = (s16) ((s32) ((u16) p->qSpeedAirY << 0x10) >> 0x12);
    p->qSpeedGround = 0;
    p->unk26 = 0;
    sub_8016F28(p);
    sub_8017CA8(p);
    p->unk2D = (u8) (-0x10 & p->unk2D);
    SetPlayerCallback(p, sub_801CB68);
    sub_801CB68(p);
}

void sub_801C2D8(Player *p) {
    u8 *temp_r5;

    p->moveState &= ~2;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = -0x300;
    p->charFlags.anim0 = 0xEB;
    p->unk26 = 0;
    temp_r5 = &p->Padding8[2];
    *temp_r5 = 0;
    p->idleAndCamCounter = 0xF;
    Player_BoostModeDisengage(p);
    *temp_r5 |= 4;
    p->moveState |= 0x40004;
    Player_PlaySong(p, 0x74U);
    SetPlayerCallback(p, sub_801CFFC);
    sub_801CFFC(p);
}

void sub_801C348(Player *p) {
    PlayerSprite *temp_r2;
    s16 temp_r0;
    s16 temp_r0_2;
    s16 temp_r0_3;
    s16 temp_r1;
    s16 var_r0;

    Player_800D880(p);
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    p->moveState |= 6;
    sub_8012FF0(p);
    p->charFlags.anim0 = 0xED;
    p->charFlags.state1 = 0;
    p->unk26 = 0;
    if (p->moveState & 1) {
        if ((s32) p->qSpeedAirX > 0xFFFFFC00) {
            temp_r0 = (u16) p->qSpeedAirX + 0xFFFFFC00;
            p->qSpeedAirX = temp_r0;
            temp_r1 = temp_r0;
            if ((s32) temp_r1 < 0xFFFFFA00) {
                var_r0 = -0x600;
                goto block_11;
            }
            if ((s32) temp_r1 > 0xFFFFFC00) {
                p->qSpeedAirX = 0xFFFFFC00;
            }
        }
    } else if ((s32) p->qSpeedAirX <= 0x3FF) {
        temp_r0_2 = (u16) p->qSpeedAirX + 0x400;
        p->qSpeedAirX = temp_r0_2;
        temp_r0_3 = temp_r0_2;
        if ((s32) temp_r0_3 > 0x600) {
            p->qSpeedAirX = 0x600;
        } else if ((s32) temp_r0_3 <= 0x3FF) {
            var_r0 = 0x400;
block_11:
            p->qSpeedAirX = var_r0;
        }
    }
    p->qSpeedAirY = 0;
    p->idleAndCamCounter = 0x10;
    SetPlayerCallback(p, sub_801D5CC);
    sub_801D5CC(p);
}

void sub_801C414(Player *p) {
    s32 var_r1;

    if (p->spriteData->s.frameFlags & 0x4000) {
        if (p->moveState & 0x10000) {
            var_r1 = 0x300;
        } else {
            var_r1 = 0xFFFFFD00;
        }
        p->qWorldY += var_r1;
        p->qSpeedAirY = -0x300;
        p->charFlags.state1 += 1;
        Player_PlaySong(p, 0x215U);
        p->sprColliding = NULL;
        p->moveState = (p->moveState & ~0x20) | 4;
        SetPlayerCallback(p, sub_801DAD8);
        return;
    }
    if ((sub_8015064(p) << 0x10) == 0) {
        sub_8012EB8(p);
        sub_8016E00(p);
    }
}

void sub_801C4A0(Player *arg0) {
    s32 sp4;
    s16 temp_r3;
    s16 var_r1;
    s32 temp_r4;
    s32 temp_r4_2;
    s32 var_r0;
    s32 var_r0_3;
    s32 var_r1_2;
    s32 var_r1_3;
    s32 var_r4;
    s32 var_r4_2;
    s32 var_r6;
    s32 var_r6_2;
    u16 temp_r1;
    u16 var_r0_2;
    u32 temp_r0;
    u8 *temp_r2;
    u8 *temp_r7;
    void (*var_r1_4)(Player *);

    if ((s32) (s8) arg0->Padding8[1] < 0) {
        arg0->charFlags.anim0 = 0xE9;
        Player_8012FE0(arg0);
        arg0->qWorldY += 0xFFFFFB00;
        arg0->moveState = (arg0->moveState | 4) & 0xDFFFFFFF;
        SetPlayerCallback(arg0, sub_801D9D0);
        sub_801D9D0(arg0);
    } else {
        temp_r0 = arg0->moveState;
        temp_r3 = 0x20 & temp_r0;
        if (temp_r3 != 0) {
            goto block_52;
        }
        arg0->qSpeedGround = temp_r3;
        arg0->qSpeedAirX = temp_r3;
        arg0->qSpeedAirY = temp_r3;
        if (arg0->charFlags.anim0 != 0xEE) {
            arg0->charFlags.anim0 = 0xEF;
        }
        temp_r1 = arg0->keyInput;
        if (!(0x40 & temp_r1)) {
            goto block_30;
        }
        if (arg0->charFlags.anim2 != 0x23C) {
block_30:
            if ((0x80 & temp_r1) && (arg0->charFlags.anim2 == 0x23C)) {
                arg0->moveState = temp_r0 & 0xDFFFFFFF;
                temp_r2 = &arg0->unk5B;
                *temp_r2 = (*temp_r2 + 1) & 0xF;
                var_r6 = (s8) (u8) arg0->unk25 << 8;
                if (arg0->moveState & 0x10000) {
                    var_r6 = 0 - var_r6;
                }
                arg0->qWorldY += var_r6;
                temp_r4 = sub_801C884(arg0);
                arg0->qWorldY -= var_r6;
                if (temp_r4 > 0) {
                    arg0->charFlags.anim0 = 0xE9;
                    Player_8012FE0(arg0);
                    arg0->qWorldY += 0xFFFFFB00;
                    var_r0 = arg0->moveState | 4;
                    goto block_53;
                }
                if (arg0->moveState & 0x10000) {
                    var_r0_2 = 2;
                } else {
                    var_r0_2 = 3;
                }
                var_r4 = sub_8011024(var_r0_2, arg0, &subroutine_arg0, NULL);
                if (var_r4 < 0) {
                    if (arg0->moveState & 0x10000) {
                        var_r0_3 = arg0->qWorldY - (var_r4 << 8);
                    } else {
                        goto block_50;
                    }
                    goto block_51;
                }
                arg0->charFlags.anim0 = 0xEF;
                arg0->charFlags.state1 = 1;
                var_r1 = 0xC0;
                if (arg0->moveState & 0x80) {
                    var_r1 = 0x80;
                }
                arg0->qSpeedAirY = var_r1;
                if (*temp_r2 == 1) {
                    Player_StopSong(arg0, 0x7DU);
                    Player_PlaySong(arg0, 0x7DU);
                }
                goto block_47;
            }
            arg0->unk5B = 0;
            if (sub_801C884(arg0) <= 0) {
                goto block_47;
            }
            goto block_52;
        }
        arg0->moveState = temp_r0 & 0xDFFFFFFF;
        temp_r7 = &arg0->unk5B;
        *temp_r7 = (*temp_r7 + 1) & 0xF;
        var_r6_2 = (s8) (u8) arg0->unk25 << 8;
        if (arg0->moveState & 0x10000) {
            var_r6_2 = 0 - var_r6_2;
        }
        arg0->qWorldY -= var_r6_2;
        sp4 = (s32) temp_r3;
        temp_r4_2 = sub_801C884(arg0);
        arg0->qWorldY += var_r6_2;
        if (temp_r4_2 > 2) {
            sub_801DE1C(arg0);
            return;
        }
        if (temp_r4_2 > 0) {
            arg0->unk26 = subroutine_arg0;
            arg0->qSpeedGround = temp_r3;
            arg0->qSpeedAirX = temp_r3;
            arg0->qSpeedAirY = temp_r3;
            arg0->charFlags.anim0 = 0xE9;
            Player_8012FE0(arg0);
            arg0->qWorldY += 0xFFFFFB00;
            var_r0 = arg0->moveState | 4;
            goto block_53;
        }
        arg0->charFlags.anim0 = 0xEF;
        arg0->charFlags.state1 = (u16) temp_r3;
        if (*temp_r7 == 1) {
            Player_StopSong(arg0, 0x7DU);
            Player_PlaySong(arg0, 0x7DU);
        }
        if (temp_r4_2 < 0) {
            return;
        }
        if (arg0->moveState & 0x10000) {
            arg0->qWorldY += 0x900;
            var_r4_2 = sub_8011024(3U, arg0, &subroutine_arg0, NULL);
            var_r1_2 = 0xFFFFF700;
        } else {
            arg0->qWorldY += 0xFFFFF700;
            var_r4_2 = sub_8011024(2U, arg0, &subroutine_arg0, NULL);
            var_r1_2 = 0x900;
        }
        arg0->qWorldY += var_r1_2;
        if (var_r4_2 < 0) {
            if (arg0->moveState & 0x10000) {
                arg0->qWorldY += (var_r4_2 + 1) << 8;
            } else {
                arg0->qWorldY -= (var_r4_2 + 1) << 8;
            }
        } else {
            var_r1_3 = 0xC0;
            if (arg0->moveState & 0x80) {
                var_r1_3 = 0x80;
            }
            arg0->qSpeedAirY = 0 - var_r1_3;
        }
block_47:
        if (!(0xC0 & arg0->keyInput) || (arg0->charFlags.anim2 == 0x23B)) {
            var_r4 = sub_8011024(3U, arg0, &subroutine_arg0, NULL);
            if (var_r4 < 0) {
block_50:
                var_r0_3 = arg0->qWorldY + (var_r4 << 8);
block_51:
                arg0->qWorldY = var_r0_3;
                arg0->unk26 = subroutine_arg0;
                arg0->qSpeedGround = 0;
                arg0->qSpeedAirX = 0;
                arg0->qSpeedAirY = 0;
block_52:
                arg0->charFlags.anim0 = 0xE9;
                Player_8012FE0(arg0);
                arg0->qWorldY += 0xFFFFFB00;
                var_r0 = arg0->moveState | 4;
block_53:
                arg0->moveState = var_r0 & 0xDFFFFFFF;
                SetPlayerCallback(arg0, sub_801D9D0);
                sub_801D9D0(arg0);
                return;
            }
            if ((arg0->charFlags.anim2 != 0x23B) || (arg0->spriteData->s.frameFlags & 0x4000)) {
                arg0->charFlags.anim0 = 0xEF;
                arg0->charFlags.anim1 = -1;
            }
            goto block_57;
        }
block_57:
        if (gStageData.buttonConfig.jump & arg0->keyInput2) {
            if ((arg0->unkC & 0x1800) == 0x1000) {
                if (arg0->moveState & 1) {
                    if (0x20 & arg0->keyInput) {
                        var_r1_4 = sub_801DE94;
                    } else {
                        goto block_64;
                    }
                } else if (0x10 & arg0->keyInput) {
                    var_r1_4 = sub_801DE94;
                } else {
                    goto block_64;
                }
            } else {
block_64:
                var_r1_4 = Player_800657C;
            }
            SetPlayerCallback(arg0, var_r1_4);
        }
    }
}

s32 sub_801C884(Player *arg0) {
    u8 sp8;
    s32 var_r2;
    s8 *var_r1_2;
    s8 var_r0;
    u8 var_r1;

    if (arg0->moveState & 1) {
        var_r2 = sub_80517FC((((s32) arg0->qWorldX >> 8) - 2) - (s8) arg0->unk24, (s32) arg0->qWorldY >> 8, (s32) arg0->unk27, -8, &sp8, sub_805203C);
        var_r1 = sp8;
        if (1 & var_r1) {
            var_r1_2 = arg0 + 0x26;
            var_r0 = 0x40;
            goto block_6;
        }
        goto block_4;
    }
    var_r2 = sub_80517FC(((s32) arg0->qWorldX >> 8) + 2 + (s8) arg0->unk24, (s32) arg0->qWorldY >> 8, (s32) arg0->unk27, 8, &sp8, sub_805203C);
    var_r1 = sp8;
    if (!(1 & var_r1)) {
block_4:
        arg0->unk26 = var_r1;
    } else {
        var_r1_2 = arg0 + 0x26;
        var_r0 = 0xC0;
block_6:
        *var_r1_2 = var_r0;
    }
    return var_r2;
}

void sub_801C934(Player *p) {
    s32 var_r0;
    s32 var_r1;

    if (p->spriteData->s.frameFlags & 0x4000) {
        p->unk26 = 0;
        if (p->moveState & 0x10000) {
            var_r0 = p->qWorldY + (p->unk25 << 8);
        } else {
            var_r0 = p->qWorldY - (p->unk25 << 8);
        }
        p->qWorldY = var_r0;
        if (p->moveState & 1) {
            var_r1 = 0xFFFFF000;
        } else {
            var_r1 = 0x1000;
        }
        p->qWorldX += var_r1;
        Player_8005380(p);
        return;
    }
    if (p->moveState & 0x20) {
        p->charFlags.anim0 = 0xE9;
        Player_8012FE0(p);
        p->qWorldY += 0xFFFFFB00;
        p->moveState = (p->moveState | 4) & 0xDFFFFFFF;
        SetPlayerCallback(p, sub_801D9D0);
        sub_801D9D0(p);
        return;
    }
    if ((sub_8015064(p) << 0x10) == 0) {
        sub_8016D30(p);
    }
}

void sub_801CA00(Player *p) {
    s16 temp_r1_3;
    s16 var_r3_2;
    s32 temp_r0;
    s32 temp_r0_4;
    s32 temp_r1_2;
    s32 var_r3;
    u16 *temp_r0_2;
    u16 temp_r0_3;
    u16 var_r4;
    u16 var_r4_2;
    u32 temp_r1;
    u32 temp_r2;
    u32 temp_r4;
    u32 var_r2;
    u32 var_r2_2;

    var_r3 = 0;
    temp_r1 = p->moveState;
    if (temp_r1 & 0x20) {
        p->charFlags.anim0 = 0xE9;
        Player_8012FE0(p);
        p->qWorldY += 0xFFFFFB00;
        p->moveState = (p->moveState | 4) & 0xDFFFFFFF;
        SetPlayerCallback(p, sub_801D9D0);
        sub_801D9D0(p);
        return;
    }
    if (temp_r1 & 1) {
        if (0x20 & p->keyInput) {
            goto block_18;
        }
        goto block_7;
    }
    if (0x10 & p->keyInput) {
        var_r3 = 1;
    }
block_7:
    if (var_r3 == 0) {
        temp_r2 = p->moveState & ~0x10;
        p->moveState = temp_r2;
        temp_r0 = (s32) (p->Spindash_Velocity << 0x10) >> 0x18;
        var_r4 = (u16) temp_r0;
        if ((s32) (s16) temp_r0 > 8) {
            var_r4 = 8;
        }
        var_r3_2 = *(((s32) (var_r4 << 0x10) >> 0xF) + &gUnknown_080CE5B8);
        temp_r1_2 = temp_r2 & 1;
        if (temp_r1_2 != 0) {
            var_r3_2 = 0 - var_r3_2;
        }
        if (0x10000 & temp_r2) {
            if (temp_r1_2 != 0) {
                var_r2 = temp_r2 & ~1;
            } else {
                var_r2 = temp_r2 | 1;
            }
            p->moveState = var_r2;
        }
        p->qSpeedGround = var_r3_2;
        Player_800891C(p);
        Player_PlaySong(p, 0x6EU);
        return;
    }
block_18:
    temp_r0_2 = &p->Spindash_Velocity;
    var_r4_2 = *temp_r0_2;
    temp_r1_3 = (s16) var_r4_2;
    if (temp_r1_3 != 0) {
        temp_r0_3 = temp_r1_3 - ((s32) (var_r4_2 << 0x10) >> 0x15);
        temp_r0_4 = temp_r0_3 << 0x10;
        var_r4_2 = temp_r0_3;
        if (temp_r0_4 <= 0) {
            var_r4_2 = 0;
        }
    }
    if (gStageData.buttonConfig.jump & p->keyInput2) {
        temp_r4 = (u32) ((var_r4_2 << 0x10) + 0x02000000) >> 0x10;
        var_r2_2 = temp_r4;
        if ((s32) (s16) temp_r4 < 0x800) {
            var_r2_2 = 0x800;
        }
        var_r4_2 = (u16) var_r2_2;
        Player_PlaySong(p, 0x6DU);
    }
    *temp_r0_2 = var_r4_2;
    if ((sub_8015064(p) << 0x10) == 0) {
        sub_8012EB8(p);
        if ((p->moveState & 0x104) == 4) {
            Player_8012FE0(p);
            p->charFlags.anim0 = 0x18;
            Player_800DAF4(p);
        }
    }
}

void sub_801CB68(Player *p) {
    s16 temp_r0;
    s16 temp_r0_2;

    if ((sub_801480C(p) << 0x10) != 0) {
        p->qCamOffsetY = 0;
        return;
    }
    temp_r0 = sub_8015460(p);
    p->qWorldX += p->qSpeedAirX;
    p->qWorldY += p->qSpeedAirY;
    temp_r0_2 = temp_r0;
    switch (temp_r0_2) {
    case 0:
    case 1:
        p->charFlags.anim0 = 0xF0;
    default:
block_8:
        if ((sub_8015064(p) << 0x10) == 0) {
            sub_8017004(p);
        }
        return;
    case 2:
        sub_801DEE4(p);
        return;
    case 3:
        p->charFlags.anim0 = 0xF1;
        goto block_8;
    case 4:
        p->moveState = (p->moveState | 4) & 0xFFFBFFFF;
        p->qSpeedGround = 0;
        p->qSpeedAirX = 0;
        p->qSpeedAirY = 0;
        p->charFlags.anim0 = 0x18;
        Player_800DAF4(p);
        return;
    }
}

void sub_801CC14(Player *p) {
    s16 *temp_r1;
    s16 *temp_r2;
    s16 temp_r0;
    s16 temp_r6;

    temp_r6 = sub_801480C(p);
    if (temp_r6 != 0) {
        p->qCamOffsetY = 0;
        return;
    }
    temp_r0 = sub_8015460(p);
    p->qWorldX += p->qSpeedAirX;
    p->qWorldY += p->qSpeedAirY;
    if (temp_r0 != 2) {
        SetPlayerCallback(p, sub_801CB68);
        sub_801CB68(p);
        p->qCamOffsetY = temp_r6;
        return;
    }
    temp_r1 = &p->idleAndCamCounter;
    if ((s32) *temp_r1 > 0) {
        *temp_r1 = (u16) *temp_r1 - 1;
    } else {
        temp_r2 = &p->qCamOffsetY;
        if ((s32) *temp_r2 > 0xFFFFFBB0) {
            *temp_r2 = (u16) *temp_r2 - 0x20;
        }
    }
    if ((sub_8015064(p) << 0x10) == 0) {
        sub_8017004(p);
    }
}

void sub_801CCB4(Player *arg0) {
    s16 temp_r0;
    s16 temp_r0_2;
    u32 temp_r1;
    u8 *temp_r5;

    arg0->moveState &= ~2;
    sub_8012F94(arg0, 6U, 6);
    temp_r0 = (u16) arg0->qSpeedAirY + 0x180;
    arg0->qSpeedAirY = temp_r0;
    if ((s32) (temp_r0 << 0x10) < 0) {
        arg0->qSpeedAirY = 0;
    }
    arg0->qSpeedGround = 0x300;
    temp_r1 = arg0->moveState;
    if (temp_r1 & 0x80) {
        arg0->qSpeedGround = (s16) (0x300 >> 1);
    }
    if (temp_r1 & 1) {
        temp_r0_2 = 0 - (u16) arg0->qSpeedGround;
        arg0->qSpeedGround = temp_r0_2;
        arg0->qSpeedAirX = temp_r0_2;
        arg0->Padding8[0] = 0x80;
    } else {
        arg0->qSpeedAirX = (s16) (u16) arg0->qSpeedGround;
        arg0->Padding8[0] = 0;
    }
    arg0->unk26 = 0;
    temp_r5 = &arg0->Padding8[2];
    *temp_r5 = 0;
    Player_BoostModeDisengage(arg0);
    *temp_r5 |= 4;
    arg0->moveState |= 0x40004;
}

void sub_801CD50(Player *p) {
    s32 sp14;
    Player *temp_r2;
    s16 temp_r3_2;
    s32 var_r7;
    u16 temp_r2_2;
    u32 temp_r1;
    u32 temp_r1_2;
    u32 temp_r1_3;
    u8 temp_r3;

    var_r7 = 0;
    memcpy(&subroutine_arg0, &gUnknown_080CECD0, 0x14);
    memcpy(&sp14, &gUnknown_080CECE4, 0x14);
    sub_801D1D0(p);
    if ((sub_801D2FC(p) << 0x10) == 0) {
        sub_801CE94(p);
    }
    temp_r1 = p->moveState;
    if (0x02000000 & temp_r1) {
        temp_r3 = p->unk2B;
        temp_r2 = &gPlayers[(u32) (temp_r3 << 0x1E) >> 0x1E];
        if (((u32) gStageData.gameMode <= 4U) || ((0x1C & temp_r3) == 8) || ((0x1C & temp_r2->unk2B) == 8)) {
            temp_r3_2 = temp_r2->charFlags.anim0;
            temp_r1_2 = temp_r2->unk2A << 0x1C;
            if ((temp_r3_2 != *((temp_r1_2 >> 0x1A) + sp)) && (temp_r3_2 != *(&subroutine_arg0 + 2 + (temp_r1_2 >> 0x1A)))) {
                goto block_13;
            }
            goto block_12;
        }
        temp_r1_3 = temp_r2->unk2A << 0x1C;
        temp_r2_2 = temp_r2->charFlags.anim2;
        if ((temp_r2_2 != *(&sp14 + (temp_r1_3 >> 0x1A))) && (temp_r2_2 != *(&subroutine_arg0 + 0x16 + (temp_r1_3 >> 0x1A)))) {
            var_r7 = 1;
        }
block_12:
        if (var_r7 != 0) {
block_13:
            p->moveState = 0xDDFBFFFF & temp_r1;
            Player_8012FE0(p);
            p->charFlags.anim0 = 0x18;
            Player_800DAF4(p);
            return;
        }
        goto block_18;
    }
    if ((p->unkC & 0x400) && (p->unkB8 != -1U) && (gStageData.buttonConfig.attack & p->keyInput)) {
        Player_8007620(p);
        return;
    }
block_18:
    sub_8016D30(p);
    sub_8015064(p);
}

void sub_801CE94(Player *arg0) {
    Player *temp_r5;
    u32 var_r0;
    u32 var_r3;

    temp_r5 = &gPlayers[(u32) (arg0->unk2B << 0x1E) >> 0x1E];
    var_r3 = 0;
    if (gStageData.buttonConfig.jump & arg0->keyInput2) {
        var_r3 = (u32) (0 - (arg0->moveState & 0x02000000)) >> 0x1F;
    }
    if (!(gStageData.buttonConfig.jump & arg0->keyInput) && !(arg0->moveState & 0x02000000)) {
        var_r3 = 1;
    }
    if (var_r3 != 0) {
        if ((s32) arg0->qSpeedAirX <= 0) {
            var_r0 = arg0->moveState | 1;
        } else {
            var_r0 = arg0->moveState & ~1;
        }
        arg0->moveState = var_r0;
        arg0->qSpeedAirX = (s16) ((s32) ((u16) arg0->qSpeedAirX << 0x10) >> 0x12);
        SetPlayerCallback(arg0, sub_801DF80);
        return;
    }
    sub_801CF4C(arg0);
    if (arg0->moveState & 0x02000000) {
        temp_r5->qWorldX = arg0->qWorldX + arg0->qSpeedAirX;
        temp_r5->qWorldY = arg0->qWorldY + arg0->qSpeedAirY;
    }
}

void sub_801CF4C(Player *arg0) {
    s8 temp_r1;
    u32 temp_r2;
    u8 var_r4;

    var_r4 = arg0->Padding8[0];
    temp_r2 = arg0->moveState & ~0x41;
    arg0->moveState = temp_r2;
    temp_r1 = (s8) var_r4;
    if (!(temp_r1 & 0x7F)) {
        arg0->charFlags.anim0 = 0xE7;
        if (var_r4 == 0x80) {
            arg0->moveState = temp_r2 | 1;
        }
    } else {
        if ((s32) temp_r1 < 0) {
            var_r4 = 0 - temp_r1;
        }
        arg0->charFlags.anim0 = 0xE8;
        arg0->charFlags.anim2 = 0x203;
        arg0->charFlags.state1 = (u16) ((u32) (var_r4 & 0x7F) >> 5);
    }
}

void sub_801CFA4(Player *arg0) {
    s8 temp_r1;
    u32 temp_r2;
    u8 var_r4;

    var_r4 = arg0->Padding8[0];
    temp_r2 = arg0->moveState & ~0x41;
    arg0->moveState = temp_r2;
    temp_r1 = (s8) var_r4;
    if (!(temp_r1 & 0x7F)) {
        arg0->charFlags.anim0 = 0xF3;
        if (var_r4 == 0x80) {
            arg0->moveState = temp_r2 | 1;
        }
    } else {
        if ((s32) temp_r1 < 0) {
            var_r4 = 0 - temp_r1;
        }
        arg0->charFlags.anim0 = 0xE8;
        arg0->charFlags.anim2 = 0x203;
        arg0->charFlags.state1 = (u16) ((u32) (var_r4 & 0x7F) >> 5);
    }
}

void sub_801CFFC(Player *p) {
    s16 *temp_r1;
    s16 temp_r0;
    s16 temp_r0_3;
    s16 temp_r0_4;
    s16 temp_r2;
    u32 temp_r1_2;
    u8 *temp_r0_2;
    u8 *temp_r5;

    if ((sub_8015064() << 0x10) == 0) {
        sub_8016D30(p);
        Player_80149E4(p);
        sub_8017004(p);
        if (!(p->moveState & 0x100)) {
            temp_r1 = &p->idleAndCamCounter;
            temp_r0 = (u16) *temp_r1 - 1;
            *temp_r1 = temp_r0;
            temp_r2 = temp_r0;
            if (temp_r2 == 0) {
                *temp_r1 = 0xE;
                p->moveState &= ~2;
                temp_r0_2 = &p->unk24;
                temp_r0_2->unk0 = 6;
                temp_r0_2->unk1 = 6;
                temp_r0_3 = (u16) p->qSpeedAirY + 0x180;
                p->qSpeedAirY = temp_r0_3;
                if ((s32) (temp_r0_3 << 0x10) < 0) {
                    p->qSpeedAirY = temp_r2;
                }
                p->qSpeedGround = 0x300;
                temp_r1_2 = p->moveState;
                if (temp_r1_2 & 0x80) {
                    p->qSpeedGround = (s16) (0x300 >> 1);
                }
                if (temp_r1_2 & 1) {
                    temp_r0_4 = 0 - (u16) p->qSpeedGround;
                    p->qSpeedGround = temp_r0_4;
                    p->qSpeedAirX = temp_r0_4;
                    p->Padding8[0] = 0x80;
                } else {
                    p->qSpeedAirX = (s16) (u16) p->qSpeedGround;
                    p->Padding8[0] = 0;
                }
                p->charFlags.anim0 = 0xEC;
                p->unk26 = 0;
                temp_r5 = &p->Padding8[2];
                *temp_r5 = 0;
                Player_BoostModeDisengage(p);
                *temp_r5 |= 4;
                p->moveState |= 0x40004;
                SetPlayerCallback(p, sub_801DCDC);
            }
        }
    }
}

void sub_801D0E8(Player *arg0) {
    u32 temp_r4;
    u32 var_r5;

    var_r5 = 0;
    if (gStageData.buttonConfig.jump & arg0->keyInput2) {
        var_r5 = (u32) (0 - (arg0->moveState & 0x02000000)) >> 0x1F;
    }
    temp_r4 = arg0->moveState;
    if (!(gStageData.buttonConfig.jump & arg0->keyInput) && !(0x02000000 & temp_r4)) {
        var_r5 = 1;
    }
    if (0x80 & temp_r4) {
        var_r5 = 1;
    }
    if (var_r5 != 0) {
        if ((s32) arg0->qSpeedAirX <= 0) {
            arg0->moveState = temp_r4 | 1;
        } else {
            arg0->moveState = temp_r4 & ~1;
        }
        arg0->qSpeedAirX = (s16) ((s32) ((u16) arg0->qSpeedAirX << 0x10) >> 0x12);
        SetPlayerCallback(arg0, sub_801DF80);
        return;
    }
    sub_801D16C(arg0);
}

void sub_801D16C(Player *arg0) {
    s8 temp_r1;
    u32 temp_r2;
    u8 var_r4;

    var_r4 = arg0->Padding8[0];
    temp_r2 = arg0->moveState & ~0x41;
    arg0->moveState = temp_r2;
    temp_r1 = (s8) var_r4;
    if (!(temp_r1 & 0x7F)) {
        arg0->charFlags.anim0 = 0xEC;
        if (var_r4 == 0x80) {
            arg0->moveState = temp_r2 | 1;
        }
    } else {
        if ((s32) temp_r1 < 0) {
            var_r4 = 0 - temp_r1;
        }
        arg0->charFlags.anim0 = 0xE8;
        arg0->charFlags.anim2 = 0x203;
        arg0->charFlags.state1 = (u16) ((u32) (var_r4 & 0x7F) >> 5);
        SetPlayerCallback(arg0, sub_801CD50);
    }
}

void sub_801D1D0(Player *arg0) {
    s16 var_r3;
    s32 var_r0_3;
    s8 temp_r0;
    s8 temp_r0_2;
    s8 temp_r1_2;
    u16 temp_r1;
    u16 temp_r1_3;
    u16 var_r0_2;
    u32 var_r0;
    u8 var_r2;

    var_r3 = arg0->qSpeedGround;
    if ((s32) var_r3 < 0) {
        var_r3 = 0 - var_r3;
    }
    var_r2 = arg0->Padding8[0];
    if ((s32) var_r3 <= 0x2FF) {
        var_r3 += 6;
    } else if (((s32) var_r3 <= 0xEFF) && !(0x7F & var_r2)) {
        var_r3 += 3;
    }
    if ((arg0->moveState & 0x80) && ((s32) var_r3 > 0x300)) {
        var_r3 -= 9;
        if ((s32) var_r3 < 0x300) {
            var_r3 = 0x300;
        }
    }
    if ((s32) ((arg0->Padding8[0] + 0x40) << 0x18) <= 0) {
        arg0->qSpeedGround = 0 - var_r3;
    } else {
        arg0->qSpeedGround = var_r3;
    }
    temp_r1 = arg0->keyInput;
    if (0x20 & temp_r1) {
        if (var_r2 != 0x80) {
            temp_r0 = (s8) var_r2;
            if ((s32) temp_r0 < 0) {
                var_r2 = 0 - temp_r0;
            }
            var_r0 = (var_r2 << 0x18) + 0x02000000;
            goto block_26;
        }
    } else if (0x10 & temp_r1) {
        temp_r0_2 = (s8) var_r2;
        if (temp_r0_2 != 0) {
            if ((s32) temp_r0_2 > 0) {
                var_r2 = 0 - temp_r0_2;
            }
            var_r0 = (var_r2 << 0x18) + 0x02000000;
            goto block_26;
        }
    } else {
        temp_r1_2 = (s8) var_r2;
        if (0x7F & temp_r1_2) {
            var_r0 = (temp_r1_2 + 2) << 0x18;
block_26:
            var_r2 = (u8) (var_r0 >> 0x18);
        }
    }
    arg0->Padding8[0] = var_r2;
    arg0->qSpeedAirX = (s16) ((s32) (var_r3 * ((s32) (*(((u32) (var_r2 << 0x18) >> 0x15) + 0x200 + gSineTable) << 0x10) >> 0x16)) >> 8);
    temp_r1_3 = arg0->qSpeedAirY;
    if ((s32) (s16) arg0->qSpeedAirY <= 0x7F) {
        var_r0_2 = temp_r1_3 + 0x18;
    } else {
        var_r0_2 = temp_r1_3 - 0x18;
    }
    arg0->qSpeedAirY = var_r0_2;
    if ((s32) gCamera.unk40 > 0) {
        var_r0_3 = gCamera.unk40 - 2;
        goto block_34;
    }
    if ((s32) gCamera.unk40 < 0) {
        var_r0_3 = gCamera.unk40 + 4;
block_34:
        gCamera.unk40 = var_r0_3;
    }
}

s32 sub_801D2FC(Player *arg0) {
    u32 var_r0;
    u32 var_r0_2;
    u8 temp_r1;

    sub_8012634();
    temp_r1 = arg0->Padding8[2];
    if (!(4 & temp_r1)) {
        if ((s32) arg0->qSpeedAirX <= 0) {
            var_r0 = arg0->moveState | 1;
        } else {
            var_r0 = arg0->moveState & ~1;
        }
        arg0->moveState = var_r0;
        if ((((arg0->unk26 + 0x20) & ~0x3F) << 0x18) != 0) {
            if ((s32) ((arg0->Padding8[0] + 0x40) << 0x18) <= 0) {
                var_r0_2 = arg0->moveState | 1;
            } else {
                var_r0_2 = arg0->moveState & ~1;
            }
            arg0->moveState = var_r0_2;
            arg0->qSpeedAirY = 0;
            sub_8012BA4(arg0);
            SetPlayerCallback(arg0, Player_8005380);
        } else {
            SetPlayerCallback(arg0, sub_801DD2C);
            arg0->charFlags.anim0 = 0xEA;
            arg0->moveState &= ~4;
            sub_8012F74(arg0, 6U, 6);
            Player_PlaySong(arg0, 0x6FU);
        }
        goto block_13;
    }
    if (0x40 & temp_r1) {
        if ((s32) (s8) arg0->Padding8[1] >= 0) {
            sub_801D3F0(arg0);
            arg0->qSpeedGround = 0;
            arg0->qSpeedAirX = 0;
            arg0->qSpeedAirY = 0;
            SetPlayerCallback(arg0, sub_801D8E8);
        }
block_13:
        return 1;
    }
    return 0;
}

void sub_801D3F0(Player *arg0) {
    u32 sp8;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r3;
    s32 temp_r3_2;
    s32 var_r0;

    if ((s32) ((arg0->Padding8[0] + 0x40) << 0x18) <= 0) {
        arg0->moveState |= 1;
        temp_r0 = sub_8011024(0U, arg0, NULL, &sp8);
        if (temp_r0 != sp8) {
            goto block_14;
        }
        if (temp_r0 == 0) {
            return;
        }
        temp_r3 = arg0->moveState & 0x10000;
        if (temp_r3 != 0) {
            if (sub_80517FC((((s32) arg0->qWorldY >> 8) - 1) - (s8) (u8) arg0->unk25, (((s32) arg0->qWorldX >> 8) - 1) - (s8) arg0->unk24, (s32) arg0->unk27, -8, NULL, sub_805217C) < 0) {
                goto block_14;
            }
            goto block_9;
        }
        if (sub_80517FC(((s32) arg0->qWorldY >> 8) + 1 + (s8) (u8) arg0->unk25, (((s32) arg0->qWorldX >> 8) - 1) - (s8) arg0->unk24, (s32) arg0->unk27, 8, (void *) temp_r3, sub_805217C) >= 0) {
block_9:
            var_r0 = arg0->qWorldX - (temp_r0 << 8);
            goto block_16;
        }
        goto block_14;
    }
    arg0->moveState &= ~1;
    temp_r0_2 = sub_8011024(1U, arg0, NULL, &sp8);
    if (temp_r0_2 == sp8) {
        if (temp_r0_2 != 0) {
            temp_r3_2 = arg0->moveState & 0x10000;
            if ((temp_r3_2 == 0) && (sub_80517FC(((s32) arg0->qWorldY >> 8) + 1 + (s8) (u8) arg0->unk25, ((s32) arg0->qWorldX >> 8) + 1 + (s8) arg0->unk24, (s32) arg0->unk27, 8, (void *) temp_r3_2, sub_805217C) < 0)) {
                goto block_14;
            }
            var_r0 = arg0->qWorldX + (temp_r0_2 << 8);
block_16:
            arg0->qWorldX = var_r0;
        }
    } else {
block_14:
        SetPlayerCallback(arg0, sub_801DF80);
    }
}

void sub_801D550(Player *arg0) {
    s16 temp_r1_2;
    u16 temp_r0;
    u16 temp_r0_2;
    u16 temp_r1;

    temp_r1 = arg0->qSpeedAirX;
    if ((s32) (s16) arg0->qSpeedAirX <= 0) {
        temp_r0 = temp_r1 + 0x18;
        arg0->qSpeedAirX = temp_r0;
        if ((s32) (temp_r0 << 0x10) < 0) {
            goto block_4;
        }
        goto block_5;
    }
    temp_r0_2 = temp_r1 - 0x18;
    arg0->qSpeedAirX = temp_r0_2;
    if ((s32) (temp_r0_2 << 0x10) > 0) {
block_4:
        sub_801DD68(arg0);
        return;
    }
block_5:
    temp_r1_2 = arg0->moveState & 4;
    if (temp_r1_2 != 0) {
        SetPlayerCallback(arg0, sub_801DF80);
        return;
    }
    arg0->qSpeedGround = temp_r1_2;
    arg0->qSpeedAirX = temp_r1_2;
    arg0->qSpeedAirY = temp_r1_2;
    sub_8012BA4(arg0);
    arg0->unk4E = 0xF;
    Player_8005380(arg0);
    sub_8012EA8(arg0);
    SetPlayerCallback(arg0, Player_8005380);
}

void sub_801D5CC(Player *p) {
    s16 *temp_r1;
    s16 temp_r0;
    u32 temp_r1_2;
    u32 temp_r1_3;

    temp_r1 = &p->idleAndCamCounter;
    if (*temp_r1 != 0) {
        temp_r0 = (u16) *temp_r1 - 1;
        *temp_r1 = temp_r0;
        if ((temp_r0 << 0x10) == 0) {
            p->qSpeedAirY = -0x180;
            Player_PlaySong(p, 0x70U);
        }
        sub_8017004(p);
        temp_r1_2 = p->moveState;
        if ((0x24 & temp_r1_2) != 4) {
            p->moveState = temp_r1_2 | 2;
            sub_8012FC0(p);
            p->charFlags.state1 = 1;
            SetPlayerCallback(p, sub_801D684);
        }
    } else if ((sub_8015064(p) << 0x10) == 0) {
        sub_8016E50(p);
        sub_8016D30(p);
        Player_80149E4(p);
        sub_8017004(p);
        temp_r1_3 = p->moveState;
        if (!(0x100 & temp_r1_3) && ((0x24 & temp_r1_3) != 4)) {
            p->moveState = temp_r1_3 | 2;
            sub_8012FC0(p);
            p->charFlags.state1 = 1;
            SetPlayerCallback(p, sub_801D684);
        }
    }
}

void sub_801D684(Player *p) {
    s16 temp_r1;
    s16 var_r0;
    u16 temp_r0;

    if (p->spriteData->s.frameFlags & 0x4000) {
        SetPlayerCallback(p, Player_800891C);
        return;
    }
    temp_r0 = (u16) p->qSpeedGround;
    temp_r1 = p->qSpeedGround;
    if ((s32) temp_r1 > 0) {
        var_r0 = temp_r0 - 8;
        goto block_6;
    }
    if ((s32) temp_r1 < 0) {
        var_r0 = temp_r0 + 8;
block_6:
        p->qSpeedGround = var_r0;
    }
    if ((u32) (u16) ((u16) p->qSpeedGround + 0x7F) <= 0xFEU) {
        p->qSpeedGround = 0;
    }
    if (p->qSpeedGround == 0) {
        Player_8005380(p);
        sub_8012EA8(p);
        return;
    }
    sub_8015144(p);
    if ((sub_8015064(p) << 0x10) == 0) {
        Player_801479C(p);
        sub_8016D30(p);
        sub_8014E70(p);
        if ((sub_801480C(p) << 0x10) == 0) {
            sub_8012EB8(p);
            sub_8016E00(p);
            if (p->moveState & 4) {
                SetPlayerCallback(p, Player_800DB30);
            }
        }
    }
}

void Player_801D73C(Player *p) {
    s16 *temp_r1;
    s16 temp_r0;
    s16 var_r0;

    temp_r1 = &p->idleAndCamCounter;
    temp_r0 = (u16) *temp_r1 - 1;
    *temp_r1 = temp_r0;
    if ((temp_r0 << 0x10) == 0) {
        if (gPlayers[(u32) (p->unk2B << 0x1E) >> 0x1E].moveState & 1) {
            var_r0 = -0x700;
        } else {
            var_r0 = 0x700;
        }
        p->qSpeedAirX = var_r0;
        p->qSpeedAirY = -0x200;
        p->moveState |= 4;
        p->charFlags.anim0 = 0x14;
        p->charFlags.anim2 = 0x1FC;
        p->charFlags.state1 = 1;
        SetPlayerCallback(p, Player_801DF18);
    }
}

void sub_801D7B0(Player *p) {
    PlayerSprite *temp_r2;

    Player_800D880(p);
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    sub_8012FA0(p);
    p->moveState |= 0x8000;
    p->charFlags.anim0 = 0xE2;
    Player_PlaySong(p, 0x7EU);
    p->qSpeedGround = 0;
    SetPlayerCallback(p, sub_801DA04);
    sub_801DA04(p);
}

void sub_801D804(Player *p) {
    PlayerSprite *temp_r2;

    Player_800D880(p);
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    sub_8012FA0(p);
    p->moveState |= 0x8000;
    p->charFlags.anim0 = 0xE3;
    SetPlayerCallback(p, sub_801C414);
    sub_801C414(p);
}

void sub_801D84C(Player *p) {
    PlayerSprite *temp_r2;

    Player_800D880(p);
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    sub_8012FA0(p);
    p->moveState |= 0x8004;
    p->charFlags.anim0 = 0xE5;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0x100;
    Player_PlaySong(p, 0xE2U);
    SetPlayerCallback(p, sub_801DB20);
    sub_801DB20(p);
}

void sub_801D8A8(Player *p) {
    s16 temp_r1;
    s16 var_r0;

    sub_801CCB4();
    p->charFlags.anim0 = 0xE7;
    temp_r1 = p->qSpeedAirY;
    var_r0 = 0x300;
    if (((s32) temp_r1 > 0x300) || (var_r0 = 0xFFFFFD00, ((s32) temp_r1 < 0xFFFFFD00))) {
        p->qSpeedAirY = var_r0;
    }
    SetPlayerCallback(p, sub_801CD50);
    sub_801CD50(p);
}

void sub_801D8E8(Player *p) {
    PlayerSprite *temp_r2;

    p->Padding8[0] = 3;
    p->charFlags.anim0 = 0xEE;
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    p->moveState = (p->moveState & ~0xE) | 0x40000;
    sub_8012F94(p, 6U, 0xA);
    p->unk2D = (u8) (-0x10 & p->unk2D);
    SetPlayerCallback(p, sub_801DDF4);
    sub_801DDF4(p);
}

void sub_801D950(Player *p) {
    sub_801CCB4();
    p->charFlags.anim0 = 0xF3;
    SetPlayerCallback(p, sub_801DC34);
    sub_801DC34(p);
}

void sub_801D978(Player *arg0) {
    PlayerSprite *temp_r2;

    Player_800D880(arg0);
    temp_r2 = arg0->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    sub_8012FC0(arg0);
    arg0->moveState |= 0x20008004;
    arg0->charFlags.anim0 = 0xF6;
    arg0->qSpeedAirX = 0;
    arg0->qSpeedAirY = 0;
    arg0->idleAndCamCounter = 0x14;
    SetPlayerCallback(arg0, Player_801D73C);
    Player_801D73C(arg0);
}

void sub_801D9D0(Player *p) {
    if ((sub_8015064() << 0x10) == 0) {
        sub_8016E50(p);
        sub_8016D30(p);
        sub_8016EB0(p);
        Player_80149E4(p);
        sub_8017004(p);
    }
}

void sub_801DA04(Player *p) {
    sub_8015144(p);
    if ((sub_8015064(p) << 0x10) == 0) {
        Player_801479C(p);
        sub_8016D30(p);
        sub_8014E70(p);
        sub_8012EB8(p);
        sub_8016E00(p);
        if (!(p->moveState & 0x100) && (p->spriteData->s.frameFlags & 0x4000)) {
            Player_PlaySong(p, 0x7EU);
            p->charFlags.state1 += 1;
            SetPlayerCallback(p, sub_801DA74);
        }
    }
}

void sub_801DA74(Player *p) {
    sub_8015144(p);
    if ((sub_8015064(p) << 0x10) == 0) {
        Player_801479C(p);
        sub_8016D30(p);
        sub_8014E70(p);
        sub_8012EB8(p);
        sub_8016E00(p);
        if (!(p->moveState & 0x100) && (p->spriteData->s.frameFlags & 0x4000)) {
            SetPlayerCallback(p, Player_8005380);
        }
    }
}

void sub_801DAD8(Player *p) {
    if ((s32) p->qSpeedAirY > 0) {
        SetPlayerCallback(p, Player_800DAF4);
        return;
    }
    if ((sub_8015064(p) << 0x10) == 0) {
        sub_8016E50(p);
        sub_8016D30(p);
        Player_80149E4(p);
        sub_8017004(p);
    }
}

void sub_801DB20(Player *p) {
    if ((sub_8015064() << 0x10) == 0) {
        Player_80149E4(p);
        sub_8017004(p);
        if (!(p->moveState & 0x100) && (p->spriteData->s.frameFlags & 0x4000)) {
            p->charFlags.state1 += 1;
            SetPlayerCallback(p, sub_801DB70);
        }
    }
}

void sub_801DB70(Player *p) {
    void (*temp_r1)(Player *);

    if ((sub_8015064() << 0x10) == 0) {
        sub_8016E50(p);
        sub_8016D30(p);
        Player_80149E4(p);
        sub_8017004(p);
        if (!(p->moveState & 0x100) && ((temp_r1 = p->callback, (temp_r1 == Player_8005380)) || (temp_r1 == Player_80077CC))) {
            p->charFlags.state1 += 1;
            SetPlayerCallback(p, sub_801DBD0);
        }
    }
}

void sub_801DBD0(Player *p) {
    sub_8015144(p);
    if ((sub_8015064(p) << 0x10) == 0) {
        Player_801479C(p);
        sub_8016D30(p);
        sub_8014E70(p);
        sub_8012EB8(p);
        sub_8016E00(p);
        if (!(p->moveState & 0x100) && (p->spriteData->s.frameFlags & 0x4000)) {
            SetPlayerCallback(p, Player_8005380);
        }
    }
}

void sub_801DC34(Player *p) {
    sub_801D1D0();
    if ((sub_801D2FC(p) << 0x10) == 0) {
        sub_801DC60(p);
    }
    sub_8016D30(p);
    sub_8015064(p);
}

void sub_801DC60(Player *arg0) {
    u32 var_r0;
    u32 var_r4;

    var_r4 = 0;
    if (gStageData.buttonConfig.jump & arg0->keyInput2) {
        var_r4 = (u32) (0 - (arg0->moveState & 0x02000000)) >> 0x1F;
    }
    if (!(gStageData.buttonConfig.jump & arg0->keyInput) && !(arg0->moveState & 0x02000000)) {
        var_r4 = 1;
    }
    if (var_r4 != 0) {
        if ((s32) arg0->qSpeedAirX <= 0) {
            var_r0 = arg0->moveState | 1;
        } else {
            var_r0 = arg0->moveState & ~1;
        }
        arg0->moveState = var_r0;
        arg0->qSpeedAirX = (s16) ((s32) ((u16) arg0->qSpeedAirX << 0x10) >> 0x12);
        SetPlayerCallback(arg0, sub_801DF80);
        return;
    }
    sub_801CFA4(arg0);
}

void sub_801DCDC(Player *p) {
    s16 *temp_r1;
    s16 temp_r0;

    temp_r1 = &p->idleAndCamCounter;
    temp_r0 = (u16) *temp_r1 - 1;
    *temp_r1 = temp_r0;
    if ((temp_r0 << 0x10) == 0) {
        SetPlayerCallback(p, sub_801DD00);
    }
}

void sub_801DD00(Player *p) {
    sub_801D1D0();
    if ((sub_801D2FC(p) << 0x10) == 0) {
        sub_801D0E8(p);
    }
    sub_8016D30(p);
    sub_8015064(p);
}

void sub_801DD2C(Player *p) {
    sub_801D550();
    if (p->moveState & 4) {
        sub_8016E50(p);
    }
    if ((sub_8015064(p) << 0x10) == 0) {
        sub_8016D30(p);
        sub_8014E70(p);
        sub_8016E00(p);
    }
}

void sub_801DD68(Player *arg0) {
    s32 var_r2;

    sub_8012634();
    var_r2 = sub_8012E18(1U, arg0, &subroutine_arg0, NULL);
    if (var_r2 <= 0xB) {
        if (arg0->moveState & 0x10000) {
            var_r2 = 0 - var_r2;
        }
        arg0->qWorldY += var_r2 << 8;
        arg0->unk26 = subroutine_arg0;
        return;
    }
    if (!(arg0->moveState & 0x20)) {
        arg0->charFlags.anim0 = 0xE9;
        Player_8012FE0(arg0);
        arg0->qWorldY += 0xFFFFFB00;
        arg0->moveState = (arg0->moveState | 4) & 0xDFFFFFFF;
        SetPlayerCallback(arg0, sub_801D9D0);
        sub_801D9D0(arg0);
    }
}

void sub_801DDF4(Player *p) {
    sub_801C4A0();
    if ((sub_8015064(p) << 0x10) == 0) {
        sub_8016D30(p);
        sub_8017004(p);
    }
}

void sub_801DE1C(Player *arg0) {
    PlayerSprite *temp_r2;
    s32 var_r0;
    u32 temp_r0;

    arg0->charFlags.anim0 = 0xF5;
    temp_r0 = arg0->moveState & 0xDFFFFFFF;
    arg0->moveState = temp_r0;
    if (temp_r0 & 0x10000) {
        var_r0 = arg0->qWorldY + (arg0->unk25 << 8);
    } else {
        var_r0 = arg0->qWorldY - (arg0->unk25 << 8);
    }
    arg0->qWorldY = var_r0;
    temp_r2 = arg0->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    arg0->Padding8[0] = 0;
    SetPlayerCallback(arg0, sub_801C934);
    sub_801C934(arg0);
}

void sub_801DE94(Player *p) {
    Player_800D880(p);
    p->moveState |= 0x12;
    p->charFlags.anim0 = 0xF4;
    sub_8012FC0(p);
    p->Spindash_Velocity = 0x200;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->qSpeedGround = 0;
    Player_PlaySong(p, 0x6DU);
    SetPlayerCallback(p, sub_801CA00);
    sub_801CA00(p);
}

void sub_801DEE4(Player *arg0) {
    arg0->charFlags.anim0 = 0xF2;
    arg0->qSpeedGround = 0;
    arg0->qCamOffsetY = 0;
    arg0->idleAndCamCounter = 0x28;
    SetPlayerCallback(arg0, sub_801CC14);
    sub_801CC14(arg0);
}

void Player_801DF18(Player *p) {
    u32 temp_r2;

    if ((sub_8015064() << 0x10) == 0) {
        sub_8016E50(p);
        sub_8016D30(p);
        sub_8016EB0(p);
        Player_80149E4(p);
        sub_8017004(p);
        if (p->charFlags.state1 != 1) {
            p->charFlags.state1 = 1;
        }
        temp_r2 = p->moveState;
        if (!(4 & temp_r2) || (p->callback != Player_801DF18)) {
            p->moveState = temp_r2 & 0xDDFFFFFF;
            SetPlayerCallback(p, Player_800891C);
        }
    }
}

void sub_801DF80(Player *p) {
    p->charFlags.anim0 = 0xE9;
    Player_8012FE0(p);
    p->qWorldY += 0xFFFFFB00;
    p->moveState = (p->moveState | 4) & 0xDFFFFFFF;
    SetPlayerCallback(p, sub_801D9D0);
    sub_801D9D0(p);
}

void sub_801DFC4(Player *p) {
    PlayerSprite *temp_r2;
    s16 var_r0;

    Player_800D880(p);
    p->moveState |= 4;
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    sub_8012FA0(p);
    p->charFlags.anim0 = 0xF8;
    if (p->moveState & 1) {
        var_r0 = -0x400;
    } else {
        var_r0 = 0x400;
    }
    p->qSpeedAirX = var_r0;
    p->qSpeedAirY = -0x200;
    Player_PlaySong(p, 0x212U);
    sub_8016F28(p);
    SetPlayerCallback(p, sub_801E92C);
    sub_801E92C(p);
}

void sub_801E038(Player *p) {
    PlayerSprite *temp_r2;
    s16 var_r0;

    Player_800D880(p);
    p->moveState |= 4;
    sub_8012FA0(p);
    p->charFlags.anim0 = 0xFD;
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    if (p->moveState & 1) {
        var_r0 = -0x300;
    } else {
        var_r0 = 0x300;
    }
    p->qSpeedAirX = var_r0;
    p->qSpeedAirY = 0;
    p->Padding8[0] = 0x14;
    Player_PlaySong(p, 0x70U);
    SetPlayerCallback(p, sub_801EAF4);
    sub_801EAF4(p);
}

void sub_801E0AC(Player *p) {
    s16 var_r0;

    sub_8012FC0(p);
    if ((u32) (((u16) p->qSpeedAirX + 0x400) << 0x10) <= 0x08000000U) {
        if (p->moveState & 1) {
            var_r0 = -0x400;
        } else {
            var_r0 = 0x400;
        }
        p->qSpeedAirX = var_r0;
    }
    p->qSpeedAirY = 0;
    p->qSpeedGround = 0;
    p->moveState |= 0x8000;
    p->charFlags.anim0 = 0x101;
    Player_PlaySong(p, 0x6FU);
    sub_8016F28(p);
    SetPlayerCallback(p, sub_801E4C0);
    sub_801E4C0(p);
}

void sub_801E120(Player *p) {
    s16 temp_r1;
    s16 var_r2;
    s32 temp_r0;
    s32 temp_r0_4;
    u16 *temp_r0_2;
    u16 temp_r0_3;
    u16 var_r4;
    u16 var_r4_2;
    u32 temp_r4;
    u32 var_r2_2;

    if (!(0x80 & p->keyInput)) {
        temp_r0 = (s32) (p->Spindash_Velocity << 0x10) >> 0x18;
        var_r4 = (u16) temp_r0;
        if ((s32) (s16) temp_r0 > 8) {
            var_r4 = 8;
        }
        var_r2 = *(((s32) (var_r4 << 0x10) >> 0xF) + &gUnknown_080CE5B8);
        if (p->moveState & 1) {
            var_r2 = 0 - var_r2;
        }
        p->qSpeedGround = var_r2;
        SetPlayerCallback(p, Player_8005380);
        Player_PlaySong(p, 0x6EU);
    } else {
        temp_r0_2 = &p->Spindash_Velocity;
        var_r4_2 = *temp_r0_2;
        temp_r1 = (s16) var_r4_2;
        if (temp_r1 != 0) {
            temp_r0_3 = temp_r1 - ((s32) (var_r4_2 << 0x10) >> 0x15);
            temp_r0_4 = temp_r0_3 << 0x10;
            var_r4_2 = temp_r0_3;
            if (temp_r0_4 <= 0) {
                var_r4_2 = 0;
            }
        }
        if (gStageData.buttonConfig.jump & p->keyInput2) {
            temp_r4 = (u32) ((var_r4_2 << 0x10) + 0x02000000) >> 0x10;
            var_r2_2 = temp_r4;
            if ((s32) (s16) temp_r4 < 0x800) {
                var_r2_2 = 0x800;
            }
            var_r4_2 = (u16) var_r2_2;
            p->unk2B = (u8) (p->unk2B | 0x40);
            Player_PlaySong(p, 0x211U);
        }
        *temp_r0_2 = var_r4_2;
    }
    if (p->moveState & 4) {
        if ((sub_8015064(p) << 0x10) == 0) {
            sub_8016E50(p);
            sub_8016D30(p);
            sub_8014E70(p);
            sub_8016EB0(p);
            Player_80149E4(p);
            sub_8017004(p);
        }
    } else {
        sub_8015144(p);
        if ((sub_8015064(p) << 0x10) == 0) {
            Player_801479C(p);
            sub_8016D30(p);
            sub_8014E70(p);
            sub_8012EB8(p);
            sub_8016E00(p);
        }
    }
}

void sub_801E250(Player *p) {
    void (*temp_r1)(Player *);

    if ((sub_8015064() << 0x10) == 0) {
        sub_8016E50(p);
        sub_8016D30(p);
        Player_80149E4(p);
        sub_8017004(p);
        if ((p->charFlags.state1 == 0) && (p->spriteData->s.frameFlags & 0x4000)) {
            p->charFlags.state1 = 1;
        }
        temp_r1 = p->callback;
        if ((temp_r1 == Player_8005380) || (temp_r1 == Player_80077CC) || ((p->moveState & 0x4024) != 4)) {
            p->qSpeedAirY = -0x400;
            SetPlayerCallback(p, sub_801EA44);
            if (!(p->moveState & 0x4000)) {
                Player_PlaySong(p, 0xDFU);
            }
        }
    }
}

void sub_801E2E4(Player *p) {
    u16 temp_r0;
    u8 *temp_r1;
    u8 *temp_r1_2;
    u8 temp_r0_2;
    u8 temp_r0_3;

    temp_r1 = p->Padding8;
    temp_r0 = *temp_r1 - 1;
    *temp_r1 = temp_r0;
    if ((temp_r0 << 0x10) == 0) {
        p->moveState &= 0xFFFF7FFF;
        SetPlayerCallback(p, Player_800DAF4);
    }
    temp_r1_2 = &p->unk5B;
    temp_r0_2 = *temp_r1_2;
    if (temp_r0_2 != 0) {
        temp_r0_3 = temp_r0_2 - 1;
        *temp_r1_2 = temp_r0_3;
        if ((temp_r0_3 << 0x18) == 0) {
            Player_PlaySong(p, 0x81U);
        }
    }
    if ((sub_8015064(p) << 0x10) == 0) {
        sub_8016E50(p);
        sub_8016D30(p);
        Player_80149E4(p);
        sub_8017004(p);
    }
}

void sub_801E358(Player *p) {
    u16 temp_r0;
    u8 *temp_r1;
    u8 *temp_r1_2;
    u8 temp_r0_2;
    u8 temp_r0_3;

    temp_r1 = p->Padding8;
    temp_r0 = *temp_r1 - 1;
    *temp_r1 = temp_r0;
    if ((temp_r0 << 0x10) == 0) {
        p->qSpeedAirY = -0x400;
        p->moveState &= 0xFFFF7FFF;
        SetPlayerCallback(p, Player_800DAF4);
        return;
    }
    temp_r1_2 = &p->unk5B;
    temp_r0_2 = *temp_r1_2;
    if (temp_r0_2 != 0) {
        temp_r0_3 = temp_r0_2 - 1;
        *temp_r1_2 = temp_r0_3;
        if ((temp_r0_3 << 0x18) == 0) {
            Player_PlaySong(p, 0x81U);
        }
    }
    if ((sub_8015064(p) << 0x10) == 0) {
        sub_8016E50(p);
        sub_8016D30(p);
        Player_80149E4(p);
        sub_8017004(p);
    }
}

void sub_801E3D8(Player *p) {
    s16 temp_r1_2;
    s16 var_r0;
    s16 var_r0_2;
    u16 temp_r0;
    u8 *temp_r1;

    temp_r1 = p->Padding8;
    temp_r0 = *temp_r1 - 1;
    *temp_r1 = temp_r0;
    if ((temp_r0 << 0x10) == 0) {
        if (p->moveState & 0x80) {
            var_r0 = -0x1F8;
        } else {
            var_r0 = -0x3A8;
        }
        p->qSpeedAirY = var_r0;
        temp_r1_2 = p->qSpeedAirX;
        if ((s32) temp_r1_2 < 0xFFFFFD00) {
            var_r0_2 = -0x300;
            goto block_7;
        }
        var_r0_2 = 0x300;
        if ((s32) temp_r1_2 > 0x300) {
block_7:
            p->qSpeedAirX = var_r0_2;
        }
        SetPlayerCallback(p, sub_801EA9C);
        return;
    }
    Player_80149E4(p);
    sub_8017004(p);
}

void sub_801E44C(Player *p) {
    s16 var_r0;
    u16 temp_r0;
    u8 *temp_r5;

    temp_r5 = p->Padding8;
    temp_r0 = *temp_r5 - 1;
    *temp_r5 = temp_r0;
    if ((s16) temp_r0 == 1) {
        Player_PlaySong(p, 0x80U);
    }
    if ((s16) *temp_r5 == 0) {
        p->qSpeedAirY = -0x5B0;
        if (p->moveState & 1) {
            var_r0 = -0x200;
        } else {
            var_r0 = 0x200;
        }
        p->qSpeedAirX = var_r0;
        SetPlayerCallback(p, Player_800DAF4);
        return;
    }
    if ((sub_8015064(p) << 0x10) == 0) {
        sub_8016E50(p);
        sub_8016D30(p);
    }
}

void sub_801E4C0(Player *p) {
    PlayerSprite *temp_r2;
    PlayerSprite *temp_r2_2;
    s16 temp_r0_2;
    s16 temp_r0_3;
    s16 temp_r1;
    s16 temp_r1_3;
    u16 temp_r0;
    u32 temp_r1_2;
    u32 var_r0;
    void (*var_r1)(Player *);

    temp_r0 = (u16) p->qSpeedAirX;
    temp_r1 = p->qSpeedAirX;
    if ((s32) temp_r1 < 0) {
        temp_r0_2 = temp_r0 + 0x10;
        p->qSpeedAirX = temp_r0_2;
        if ((s32) (temp_r0_2 << 0x10) > 0) {
            goto block_5;
        }
    } else if ((s32) temp_r1 > 0) {
        temp_r0_3 = temp_r0 - 0x10;
        p->qSpeedAirX = temp_r0_3;
        if ((s32) (temp_r0_3 << 0x10) < 0) {
block_5:
            p->qSpeedAirX = 0;
        }
    }
    if (p->charFlags.state1 == 0) {
        temp_r2 = p->spriteData;
        temp_r1_2 = temp_r2->s.frameFlags;
        if (0x4000 & temp_r1_2) {
            temp_r2->s.frameFlags = temp_r1_2 & 0xFFFFBFFF;
            p->charFlags.state1 = 1;
        }
    }
    if (p->qSpeedAirX == 0) {
        temp_r1_3 = p->moveState & 4;
        if (temp_r1_3 == 0) {
            p->qSpeedAirY = temp_r1_3;
            p->qSpeedAirX = temp_r1_3;
            p->qSpeedGround = temp_r1_3;
            temp_r2_2 = p->spriteData;
            temp_r2_2->s.frameFlags &= 0xFFFFBFFF;
            p->charFlags.state1 = 2;
            var_r1 = sub_801EB94;
            goto block_16;
        }
        goto block_13;
    }
    if (p->moveState & 4) {
block_13:
        if ((sub_8015064(p) << 0x10) == 0) {
            sub_8016E50(p);
            sub_8016D30(p);
            sub_8016EB0(p);
            Player_80149E4(p);
            sub_8017004(p);
            if (!(p->moveState & 4)) {
                sub_8012FF0(p);
                p->charFlags.anim0 = 0x101;
                var_r1 = sub_801E4C0;
block_16:
                SetPlayerCallback(p, var_r1);
            }
        }
    } else if ((sub_8015064(p) << 0x10) == 0) {
        sub_8016D30(p);
        if ((sub_8012EA8(p) << 0x10) != 0) {
            var_r0 = p->moveState | 4;
        } else {
            var_r0 = p->moveState & ~4;
        }
        p->moveState = var_r0;
        sub_8016E00(p);
        sub_8014E70(p);
    }
}

void sub_801E5E0(Player *p) {
    if (!(gStageData.buttonConfig.jump & p->keyInput)) {
        p->charFlags.state1 = 1;
        p->unk2B = (u8) (p->unk2B | 0x40);
        SetPlayerCallback(p, Player_800DAF4);
        return;
    }
    sub_8014940(p);
    p->qSpeedAirX = (s16) ((s32) (p->qSpeedAirX * 0xF) >> 4);
    if ((s32) p->qSpeedAirY <= 0x7F) {
        p->qSpeedAirY = (u16) p->qSpeedAirY + 0x10;
    }
    if ((sub_8015064(p) << 0x10) == 0) {
        sub_8016D30(p);
        Player_80149E4(p);
        sub_8017004(p);
    }
}

void sub_801E65C(Player *p) {
    sub_8012FC0(p);
    p->charFlags.anim0 = 0xF7;
    sub_8016F28(p);
    sub_80170A0(p);
    Player_PlaySong(p, 0x211U);
    SetPlayerCallback(p, sub_801E120);
    sub_801E120(p);
}

void sub_801E69C(Player *p) {
    PlayerSprite *temp_r2;

    Player_800D880(p);
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    sub_8012FA0(p);
    p->qSpeedGround = 0;
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0;
    p->unk5B = 0x1E;
    p->moveState |= 0x8000;
    p->charFlags.anim0 = 0xFF;
    SetPlayerCallback(p, sub_801E980);
    sub_801E980(p);
}

void sub_801E6F4(Player *p) {
    PlayerSprite *temp_r2;

    Player_800D880(p);
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    sub_8012FA0(p);
    p->moveState |= 0x8004;
    p->charFlags.anim0 = 0x103;
    p->Padding8[0] = 0x10;
    p->unk5B = 0xA;
    sub_8017E50(p);
    SetPlayerCallback(p, sub_801E2E4);
    sub_801E2E4(p);
}

void sub_801E758(Player *p) {
    PlayerSprite *temp_r2;

    Player_800D880(p);
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    sub_8012FA0(p);
    p->moveState |= 0x8004;
    p->charFlags.anim0 = 0x104;
    p->Padding8[0] = 0x10;
    p->unk5B = 0xA;
    sub_8017EF4(p);
    SetPlayerCallback(p, sub_801E358);
    sub_801E358(p);
}

void sub_801E7BC(Player *p) {
    PlayerSprite *temp_r2;

    Player_800D880(p);
    p->moveState |= 0x8004;
    temp_r2 = p->spriteData;
    temp_r2->s.frameFlags &= 0xFFFFBFFF;
    sub_8012FA0(p);
    p->qSpeedAirX = 0;
    p->qSpeedAirY = 0x100;
    p->Padding8[0] = 0xA;
    p->moveState |= 0x8000;
    p->charFlags.anim0 = 0x100;
    sub_8018034(p);
    SetPlayerCallback(p, sub_801E9E0);
    sub_801E9E0(p);
}

void sub_801E828(Player *p) {
    Player_800D880(p);
    sub_8012FA0(p);
    p->qSpeedAirY = 0;
    p->qSpeedAirX = 0;
    p->unk26 = 0;
    p->charFlags.anim0 = 0x105;
    p->unk2F = 1;
    Player_BoostModeDisengage(p);
    p->Padding8[0] = 0x14;
    p->moveState |= 4;
    SetPlayerCallback(p, sub_801E3D8);
    sub_801E3D8(p);
}

void sub_801E888(Player *p) {
    Player_800D880(p);
    p->moveState |= 4;
    sub_8012FA0(p);
    p->qSpeedAirY = 0;
    p->charFlags.anim0 = 0x102;
    p->unk2F = 1;
    Player_BoostModeDisengage(p);
    p->Padding8[0] = 4;
    sub_8017F98(p);
    SetPlayerCallback(p, sub_801E44C);
    sub_801E44C(p);
}

void sub_801E8E0(Player *p) {
    Player_800D880(p);
    sub_8012FA0(p);
    p->qSpeedAirY = 0;
    p->charFlags.anim0 = 0x106;
    p->unk2F = 1;
    Player_BoostModeDisengage(p);
    p->moveState |= 0x40004;
    SetPlayerCallback(p, sub_801E5E0);
    sub_801E5E0(p);
}

void sub_801E92C(Player *p) {
    if (gStageData.buttonConfig.attack & p->keyInput2) {
        SetPlayerCallback(p, sub_801E0AC);
        return;
    }
    if ((sub_8015064(p) << 0x10) == 0) {
        sub_8016E50(p);
        sub_8016D30(p);
        sub_8016EB0(p);
        Player_80149E4(p);
        sub_8017004(p);
    }
}

void sub_801E980(Player *p) {
    u8 *temp_r1;
    u8 temp_r0;
    u8 temp_r0_2;

    temp_r1 = &p->unk5B;
    temp_r0 = *temp_r1;
    if (temp_r0 != 0) {
        temp_r0_2 = temp_r0 - 1;
        *temp_r1 = temp_r0_2;
        if ((temp_r0_2 << 0x18) == 0) {
            Player_PlaySong(p, 0x216U);
        }
    }
    if ((sub_8015064(p) << 0x10) == 0) {
        sub_8016E50(p);
        sub_8014E70(p);
        if (p->spriteData->s.frameFlags & 0x4000) {
            SetPlayerCallback(p, Player_8005380);
        }
    }
}

void sub_801E9E0(Player *p) {
    u8 *temp_r0;

    temp_r0 = p->Padding8;
    *temp_r0 = (u16) (*temp_r0 - 1);
    if ((sub_8015064(p) << 0x10) == 0) {
        sub_8014E70(p);
        sub_8016EB0(p);
        Player_80149E4(p);
        sub_8017004(p);
        if ((p->charFlags.state1 == 0) && (p->spriteData->s.frameFlags & 0x4000)) {
            p->charFlags.state1 = 1;
            SetPlayerCallback(p, sub_801E250);
        }
    }
}

void sub_801EA44(Player *p) {
    if ((s32) p->qSpeedAirY > 0) {
        p->charFlags.state1 = 2;
        p->moveState &= 0xFFFF7FFF;
        SetPlayerCallback(p, Player_800DAF4);
        return;
    }
    if ((sub_8015064(p) << 0x10) == 0) {
        sub_8016E50(p);
        sub_8016D30(p);
        Player_80149E4(p);
        sub_8017004(p);
    }
}

void sub_801EA9C(Player *p) {
    if ((sub_8014BC4() << 0x10) == 0) {
        if ((p->charFlags.state1 == 0) && ((s32) p->qSpeedAirY >= 0)) {
            p->charFlags.state1 = 1;
        }
        sub_8014940(p);
        if ((sub_8015064(p) << 0x10) == 0) {
            sub_8016E50(p);
            sub_8016D30(p);
            sub_8016EB0(p);
            Player_80149E4(p);
            sub_8017004(p);
        }
    }
}

void sub_801EAF4(Player *p) {
    u8 *temp_r5;

    temp_r5 = p->Padding8;
    *temp_r5 = (u16) (*temp_r5 - 1);
    if ((sub_8015064(p) << 0x10) == 0) {
        sub_8016D30(p);
        sub_8016EB0(p);
        Player_80149E4(p);
        sub_8017004(p);
        if ((s32) (s16) *temp_r5 <= 0) {
            SetPlayerCallback(p, sub_801EB44);
        }
    }
}

void sub_801EB44(Player *p) {
    sub_8014940(p);
    if ((sub_8015064(p) << 0x10) == 0) {
        sub_8016E50(p);
        sub_8016D30(p);
        sub_8016EB0(p);
        Player_80149E4(p);
        sub_8017004(p);
        if (!(p->moveState & 4)) {
            SetPlayerCallback(p, Player_8005380);
        }
    }
}

void sub_801EB94(Player *p) {
    if (p->spriteData->s.frameFlags & 0x4000) {
        SetPlayerCallback(p, Player_8005380);
    }
    sub_8014E70(p);
}

void sub_801EBC0(u16 arg0, Player *arg1) {
    Task *temp_r0;
    s16 temp_r1;
    s8 temp_r0_4;
    u16 temp_r0_2;
    u16 temp_r6;
    u8 temp_r0_3;

    temp_r6 = arg0;
    temp_r0 = gStageData.task98;
    if ((temp_r0 != NULL) && (arg1 != NULL)) {
        temp_r0_2 = temp_r0->data;
        temp_r1 = (s16) temp_r6;
        if (temp_r1 != 6) {
            if (temp_r1 != 7) {
                if (temp_r0_2->unk50 != arg1) {
                    sub_801ECAC(arg1);
                    return;
                }
                temp_r0_3 = temp_r0_2->unk18;
                if ((temp_r0_3 != temp_r1) && (temp_r0_3 != 0xF)) {
                    switch (temp_r1) {
                    case 0:
                    case 1:
                    case 12:
                        sub_8020444(arg1);
                        break;
                    case 9:
                    case 10:
                    case 13:
                        sub_8020488(arg1);
                        break;
                    case 4:
                        sub_802051C(arg1);
                        break;
                    case 5:
                        sub_8020530(arg1);
                        break;
                    }
                    temp_r0_2->unk50 = arg1;
                    temp_r0_2->unk18 = (u8) temp_r6;
                    temp_r0_4 = arg1->moveState & 1;
                    if (temp_r0_4 != 0) {
                        temp_r0_2->unk1C = 1;
                    } else {
                        temp_r0_2->unk1C = temp_r0_4;
                    }
                    temp_r0_2->unk1D = (u8) arg1->unk26;
                }
            } else {
                temp_r0_2->unk50 = arg1;
                temp_r0_2->unk54 = 0;
                sub_8020558(arg1);
            }
        } else {
            temp_r0_2->unk50 = arg1;
            temp_r0_2->unk54 = 0;
            sub_8020544(arg1);
        }
    }
}

void sub_801ECAC(Player *arg0) {
    Player *temp_r0;
    Player *temp_r0_2;
    Player *temp_r4;
    Task *temp_r6;
    s32 var_r1;
    s32 var_r1_2;
    s8 temp_r0_3;
    u16 temp_r1;
    u8 var_r1_3;

    temp_r6 = gStageData.task98;
    temp_r1 = temp_r6->data;
    temp_r4 = temp_r1->unk50;
    if ((temp_r4 != arg0) && (arg0 != NULL)) {
        if ((0xF & arg0->unk2A) == 1) {
            if (temp_r1->unk54 != NULL) {
                temp_r4->unk54 = 0;
            }
            temp_r1->unk54 = NULL;
        } else {
            temp_r1->unk54 = temp_r4;
        }
        temp_r1->unk50 = arg0;
        temp_r0 = temp_r1->unk54;
        if ((temp_r0 != NULL) && ((0x1C & temp_r0->unk2B) == 0x14)) {
            temp_r0_2 = temp_r1->unk50;
            if (temp_r0_2->moveState & 1) {
                var_r1 = 0x1800;
            } else {
                var_r1 = 0xFFFFE800;
            }
            temp_r1->unk0 = (s32) (temp_r0_2->qWorldX + var_r1);
            if (temp_r0_2->moveState & 0x10000) {
                var_r1_2 = 0x1800;
            } else {
                var_r1_2 = 0xFFFFE800;
            }
            temp_r1->unk4 = (s32) (temp_r0_2->qWorldY + var_r1_2);
        }
        temp_r1->unk18 = 0xF;
        temp_r0_3 = arg0->moveState & 1;
        if (temp_r0_3 != 0) {
            temp_r1->unk1C = 1;
        } else {
            temp_r1->unk1C = temp_r0_3;
        }
        temp_r1->unk1D = (u8) arg0->unk26;
        if ((u32) gStageData.gameMode > 4U) {
            var_r1_3 = 0;
            if (gPlayers != arg0) {
loop_22:
                var_r1_3 += 1;
                if ((u32) var_r1_3 <= 3U) {
                    if (&gPlayers[var_r1_3] != arg0) {
                        goto loop_22;
                    }
                }
            }
            if (var_r1_3 == gStageData.playerIndex) {
                sub_80276A8(var_r1_3);
            }
        }
        temp_r6->main = sub_801F064;
    }
}

void sub_801EDB4(void) {
    s32 var_r0;
    u16 temp_r3;
    void *temp_r5;

    temp_r3 = gCurTask->data;
    temp_r3->unk8 = (s32) (temp_r3->unk0 + 0x1800);
    temp_r3->unkC = (s32) (temp_r3->unk4 + 0xFFFFE800);
    temp_r3->unk10 = 0;
    temp_r3->unk12 = 0;
    temp_r3->unk14 = 0x100;
    temp_r3->unk16 = 0;
    temp_r3->unk1A = 0x3C;
    temp_r3->unk1B = 0;
    temp_r3->unk19 = 0;
    temp_r5 = temp_r3 + 0x20;
    if ((u32) gStageData.gameMode <= 5U) {
        var_r0 = 0x06014000;
        goto block_4;
    }
    if (gStageData.gameMode == 6) {
        var_r0 = 0x06014020;
block_4:
        temp_r3->unk20 = var_r0;
    }
    temp_r5->unk8 = 0x1000;
    temp_r5->unkC = (u16) gUnknown_08E2EB18.unk0;
    temp_r5->unk10 = (s16) ((s32) temp_r3->unk50->unk10 >> 8);
    temp_r5->unk12 = (s16) ((s32) temp_r3->unk50->unk14 >> 8);
    temp_r5->unk14 = 0x540;
    temp_r5->unk16 = 0;
    temp_r5->unk18 = 0xFFFF;
    temp_r5->unk1A = (s8) gUnknown_08E2EB18.unk2;
    temp_r5->unk1B = 0xFF;
    temp_r5->unk1C = 0x10;
    temp_r5->unk1F = 0;
    temp_r5->unk20 = -1;
    temp_r5->unk28 = -1;
    gCurTask->main = sub_802056C;
}

void sub_801EE74(void) {
    u16 temp_r2;
    void *temp_r2_2;

    temp_r2 = gCurTask->data;
    temp_r2->unk8 = (s32) temp_r2->unk0;
    temp_r2->unkC = (s32) temp_r2->unk4;
    temp_r2->unk10 = 0;
    temp_r2->unk12 = 0;
    temp_r2->unk16 = (u16) (0xFFF9 & temp_r2->unk16);
    temp_r2->unk18 = 0;
    temp_r2->unk19 = 0;
    temp_r2->unk1A = 0;
    temp_r2_2 = temp_r2 + 0x20;
    temp_r2_2->unkC = (u16) gUnknown_08E2EB18.unk0;
    temp_r2_2->unk1A = (s8) gUnknown_08E2EB18.unk2;
    temp_r2_2->unk16 = 0;
    temp_r2_2->unk18 = 0xFFFF;
    temp_r2_2->unk1B = 0xFF;
    temp_r2_2->unk20 = -1;
    temp_r2_2->unk28 = -1;
    gCurTask->main = sub_801EEE8;
    sub_801EEE8();
}

void sub_801EEE8(void) {
    s32 var_r1;
    s32 var_r1_2;
    u16 temp_r1;
    u16 var_r0;
    void *temp_r0;
    void *temp_r2;

    temp_r1 = gCurTask->data;
    temp_r2 = temp_r1->unk50;
    if (temp_r2->unk4 & 1) {
        var_r1 = 0x1800;
    } else {
        var_r1 = 0xFFFFE800;
    }
    temp_r1->unk8 = (s32) (temp_r2->unk10 + var_r1);
    temp_r0 = temp_r1->unk50;
    if (temp_r0->unk4 & 0x10000) {
        var_r1_2 = 0x1800;
    } else {
        var_r1_2 = 0xFFFFE800;
    }
    temp_r1->unkC = (s32) (temp_r0->unk14 + var_r1_2);
    if ((s32) temp_r0->unk10 < (s32) temp_r1->unk0) {
        var_r0 = 1 | temp_r1->unk16;
    } else {
        var_r0 = 0xFFFE & temp_r1->unk16;
    }
    temp_r1->unk16 = var_r0;
    sub_8020130(1U);
    sub_8020284();
}

void sub_801EF6C(void) {
    u16 temp_r3;
    void *temp_r3_2;

    temp_r3 = gCurTask->data;
    temp_r3->unk8 = (s32) temp_r3->unk0;
    temp_r3->unkC = (s32) temp_r3->unk4;
    temp_r3->unk10 = 0;
    temp_r3->unk12 = 0;
    temp_r3->unk16 = (u16) ((0xFFFB & temp_r3->unk16) | 2);
    temp_r3->unk18 = 1;
    temp_r3->unk19 = 4;
    temp_r3->unk1A = 0;
    temp_r3_2 = temp_r3 + 0x20;
    temp_r3_2->unkC = (u16) gUnknown_08E2EB18.unk10;
    temp_r3_2->unk1A = (s8) gUnknown_08E2EB18.unk12;
    temp_r3_2->unk16 = 0;
    temp_r3_2->unk18 = 0xFFFF;
    temp_r3_2->unk1B = 0xFF;
    temp_r3_2->unk20 = -1;
    temp_r3_2->unk28 = -1;
    gCurTask->main = sub_801EFE8;
    sub_801EFE8();
}

void sub_801EFE8(void) {
    s32 temp_r2;
    u16 temp_r1;
    u16 var_r0;
    void *temp_r3;

    temp_r1 = gCurTask->data;
    temp_r1->unk1B = (u8) ((temp_r1->unk1B + 1) & 0x3F);
    temp_r3 = temp_r1->unk50;
    temp_r2 = temp_r1->unk1B * 0x10;
    temp_r1->unk8 = (s32) (temp_r3->unk10 + ((s16) gSineTable[temp_r2 + 0x100] >> 1));
    temp_r1->unkC = (s32) (temp_r3->unk14 + ((s16) gSineTable[temp_r2] >> 1));
    if (temp_r3->unk4 & 1) {
        var_r0 = 1 | temp_r1->unk16;
    } else {
        var_r0 = 0xFFFE & temp_r1->unk16;
    }
    temp_r1->unk16 = var_r0;
    sub_8020130(4U);
    sub_8020284();
}

void sub_801F064(void) {
    u16 temp_r3;
    void *temp_r3_2;

    temp_r3 = gCurTask->data;
    temp_r3->unk8 = (s32) temp_r3->unk0;
    temp_r3->unkC = (s32) temp_r3->unk4;
    temp_r3->unk10 = 0;
    temp_r3->unk12 = 0;
    temp_r3->unk16 = (u16) ((0xFFFD & temp_r3->unk16) | 4);
    temp_r3->unk18 = 0xF;
    temp_r3->unk19 = 0xC;
    temp_r3->unk1A = 0x1E;
    temp_r3_2 = temp_r3 + 0x20;
    temp_r3_2->unkC = (u16) gUnknown_08E2EB18.unk30;
    temp_r3_2->unk1A = (s8) gUnknown_08E2EB18.unk32;
    temp_r3_2->unk16 = 0;
    temp_r3_2->unk18 = 0xFFFF;
    temp_r3_2->unk1B = 0xFF;
    temp_r3_2->unk20 = -1;
    temp_r3_2->unk28 = -1;
    gCurTask->main = sub_80205F4;
}

void sub_801F0DC(void) {
    s32 temp_r1_2;
    u16 temp_r1;
    u32 temp_r6;
    void *temp_r2;
    void *temp_r3;

    temp_r1 = gCurTask->data;
    temp_r3 = temp_r1->unk50;
    temp_r6 = (u32) (((u32) (temp_r3->unk2A << 0x1C) >> 0xA) + 0xF0000) >> 0x10;
    temp_r1_2 = temp_r6 * 4;
    temp_r1->unk10 = 0;
    temp_r1->unk12 = 0;
    temp_r1->unk18 = 4;
    if ((0xF & temp_r3->unk2A) != 1) {
        temp_r1->unk19 = (s8) temp_r6;
    } else {
        temp_r1->unk19 = 6;
    }
    temp_r1->unk16 = (u16) (0xFFFD & temp_r1->unk16);
    temp_r1->unk1A = 0x3C;
    temp_r2 = temp_r1 + 0x20;
    temp_r2->unk8 = (s32) ((temp_r2->unk8 & 0x400) | 0x1000);
    temp_r2->unkC = (u16) *(temp_r1_2 + &gUnknown_08E2EB18);
    temp_r2->unk1A = (s8) *(temp_r1_2 + (&gUnknown_08E2EB18 + 2));
    temp_r2->unk16 = 0;
    temp_r2->unk18 = 0xFFFF;
    temp_r2->unk1B = 0xFF;
    temp_r2->unk20 = -1;
    temp_r2->unk28 = -1;
    gCurTask->main = sub_801F184;
}

void sub_801F184(void) {
    s32 var_r1;
    s32 var_r1_2;
    u16 temp_r1;
    u8 temp_r0;
    void (*var_r0)();
    void *temp_r2;
    void *temp_r2_2;
    void *temp_r2_3;

    temp_r1 = gCurTask->data;
    temp_r2 = temp_r1->unk50;
    if (temp_r2->unk4 & 1) {
        var_r1 = 0x1800;
    } else {
        var_r1 = 0xFFFFE800;
    }
    temp_r1->unk8 = (s32) (temp_r2->unk10 + var_r1);
    temp_r2_2 = temp_r1->unk50;
    if (temp_r2_2->unk4 & 0x10000) {
        var_r1_2 = 0x1800;
    } else {
        var_r1_2 = 0xFFFFE800;
    }
    temp_r1->unkC = (s32) (temp_r2_2->unk14 + var_r1_2);
    sub_8020130(1U);
    sub_8020284();
    temp_r0 = temp_r1->unk1A - 1;
    temp_r1->unk1A = temp_r0;
    if ((temp_r0 << 0x18) == 0) {
        temp_r2_3 = temp_r1->unk50;
        if ((0xF & temp_r2_3->unk2A) != 1) {
            var_r0 = sub_801FC2C;
            goto block_14;
        }
        if (temp_r2_3->unk4 & 0x100) {
            temp_r1->unk1A = 0x3CU;
            return;
        }
        if ((temp_r2_3->unkC & 0x18) == 0x10) {
            var_r0 = sub_801EF6C;
        } else {
            var_r0 = sub_801EE74;
        }
block_14:
        gCurTask->main = var_r0;
    }
}

void sub_801F258(void) {
    s32 var_r1;
    s32 var_r5;
    u16 temp_r1;
    void *temp_r2;
    void *temp_r4;

    temp_r1 = gCurTask->data;
    var_r5 = 0;
    temp_r4 = temp_r1->unk50;
    temp_r1->unk8 = (s32) temp_r4->unk10;
    if (temp_r4->unk4 & 0x10000) {
        var_r1 = 0x1000;
    } else {
        var_r1 = 0xFFFFF000;
    }
    temp_r1->unkC = (s32) (temp_r4->unk14 + var_r1);
    temp_r1->unk1A = 0x18;
    temp_r1->unk10 = 0;
    temp_r1->unk12 = 0;
    temp_r1->unk18 = 5;
    temp_r1->unk19 = 7;
    temp_r1->unk16 = (u16) (0xFFF9 & temp_r1->unk16);
    temp_r2 = temp_r1 + 0x20;
    if (temp_r1->unk50->unk4 & 1) {
        var_r5 = 0x400;
    }
    temp_r2->unk8 = var_r5;
    temp_r2->unkC = (u16) gUnknown_08E2EB18.unk0;
    temp_r2->unk1A = (s8) gUnknown_08E2EB18.unk2;
    temp_r2->unk16 = 0;
    temp_r2->unk18 = 0xFFFF;
    temp_r2->unk1B = 0xFF;
    temp_r2->unk20 = -1;
    temp_r2->unk28 = -1;
    gCurTask->main = sub_801F2FC;
}

void sub_801F2FC(void) {
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 temp_r2_2;
    s32 temp_r2_3;
    s32 var_r0;
    u16 temp_r1;
    u16 var_r0_2;
    u8 temp_r0;
    void (*var_r0_3)();
    void *temp_r1_4;
    void *temp_r2;

    temp_r1 = gCurTask->data;
    temp_r2 = temp_r1->unk50;
    temp_r1->unk8 = (s32) temp_r2->unk10;
    if (temp_r2->unk4 & 0x10000) {
        var_r0 = temp_r2->unk14 + 0xC00;
    } else {
        var_r0 = temp_r2->unk14 + 0xFFFFF400;
    }
    temp_r1->unkC = var_r0;
    if (temp_r1->unk50->unk4 & 1) {
        var_r0_2 = 1 | temp_r1->unk16;
    } else {
        var_r0_2 = 0xFFFE & temp_r1->unk16;
    }
    temp_r1->unk16 = var_r0_2;
    temp_r0 = temp_r1->unk1A;
    if (temp_r0 != 0) {
        temp_r1->unk1A = (u8) (temp_r0 - 1);
        sub_8020130(4U);
    } else {
        sub_8020130(6U);
    }
    sub_8020284();
    temp_r0_2 = temp_r1->unk8;
    temp_r1_2 = temp_r1->unk0;
    temp_r2_2 = temp_r0_2 - temp_r1_2;
    if (temp_r2_2 >= 0) {
        if (temp_r2_2 > 0x3FE) {

        } else {
            goto block_13;
        }
    } else if ((s32) (temp_r1_2 - temp_r0_2) <= 0x3FE) {
block_13:
        temp_r0_3 = temp_r1->unkC;
        temp_r1_3 = temp_r1->unk4;
        temp_r2_3 = temp_r0_3 - temp_r1_3;
        if (temp_r2_3 >= 0) {
            if (temp_r2_3 > 0x4FE) {

            } else {
                goto block_17;
            }
        } else if ((s32) (temp_r1_3 - temp_r0_3) <= 0x4FE) {
block_17:
            temp_r1->unk2C = (u16) gUnknown_08E2EB18.unk1C;
            temp_r1->unk3A = (s8) gUnknown_08E2EB18.unk1E;
            gCurTask->main = sub_801F418;
        }
    }
    temp_r1_4 = temp_r1->unk50;
    if (temp_r1_4->unk30 != 0xBE) {
        if ((temp_r1_4->unkC & 0x18) == 0x10) {
            var_r0_3 = sub_801EF6C;
        } else {
            var_r0_3 = sub_801EE74;
        }
        gCurTask->main = var_r0_3;
    }
}

void sub_801F418(void) {
    s32 var_r0;
    u16 temp_r1;
    u16 var_r0_2;
    void (*var_r0_3)();
    void *temp_r1_2;
    void *temp_r2;

    temp_r1 = gCurTask->data;
    temp_r2 = temp_r1->unk50;
    temp_r1->unk0 = (s32) temp_r2->unk10;
    if (temp_r2->unk4 & 0x10000) {
        var_r0 = temp_r2->unk14 + 0xC00;
    } else {
        var_r0 = temp_r2->unk14 + 0xFFFFF400;
    }
    temp_r1->unk4 = var_r0;
    if (temp_r1->unk50->unk4 & 1) {
        var_r0_2 = 1 | temp_r1->unk16;
    } else {
        var_r0_2 = 0xFFFE & temp_r1->unk16;
    }
    temp_r1->unk16 = var_r0_2;
    sub_8020284();
    temp_r1_2 = temp_r1->unk50;
    if (temp_r1_2->unk30 != 0xBE) {
        if ((temp_r1_2->unkC & 0x18) == 0x10) {
            var_r0_3 = sub_801EF6C;
        } else {
            var_r0_3 = sub_801EE74;
        }
        gCurTask->main = var_r0_3;
    }
}

void sub_801F4B4(void) {
    u16 temp_r3;
    void *temp_r2;
    void *temp_r3_2;

    temp_r3 = gCurTask->data;
    temp_r2 = temp_r3->unk50;
    temp_r3->unk8 = (s32) temp_r2->unk10;
    temp_r3->unkC = (s32) temp_r2->unk14;
    temp_r3->unk0 = (s32) temp_r2->unk10;
    temp_r3->unk4 = (s32) temp_r2->unk14;
    temp_r3->unk10 = 0;
    temp_r3->unk12 = 0;
    temp_r3->unk18 = 4;
    temp_r3->unk19 = 9;
    temp_r3->unk16 = (u16) (0xFFF9 & temp_r3->unk16);
    temp_r3_2 = temp_r3 + 0x20;
    temp_r3_2->unk8 = 0x1000;
    temp_r3_2->unkC = (u16) gUnknown_08E2EB18.unk24;
    temp_r3_2->unk1A = (s8) gUnknown_08E2EB18.unk26;
    temp_r3_2->unk16 = 0;
    temp_r3_2->unk18 = 0xFFFF;
    temp_r3_2->unk1B = 0xFF;
    temp_r3_2->unk20 = -1;
    temp_r3_2->unk28 = -1;
    gCurTask->main = sub_8020660;
}

void sub_801F534(void) {
    u16 temp_r3;
    void *temp_r2;
    void *temp_r3_2;

    temp_r3 = gCurTask->data;
    temp_r2 = temp_r3->unk50;
    temp_r3->unk8 = (s32) temp_r2->unk10;
    temp_r3->unkC = (s32) temp_r2->unk14;
    temp_r3->unk0 = (s32) temp_r2->unk10;
    temp_r3->unk4 = (s32) temp_r2->unk14;
    temp_r3->unk10 = 0;
    temp_r3->unk12 = 0;
    temp_r3->unk18 = 4;
    temp_r3->unk19 = 0xA;
    temp_r3->unk16 = (u16) (0xFFF9 & temp_r3->unk16);
    temp_r3_2 = temp_r3 + 0x20;
    temp_r3_2->unk8 = 0x1000;
    temp_r3_2->unkC = (u16) gUnknown_08E2EB18.unk28;
    temp_r3_2->unk1A = (s8) gUnknown_08E2EB18.unk2A;
    temp_r3_2->unk16 = 0;
    temp_r3_2->unk18 = 0xFFFF;
    temp_r3_2->unk1B = 0xFF;
    temp_r3_2->unk20 = -1;
    temp_r3_2->unk28 = -1;
    gCurTask->main = sub_80206B0;
}

void sub_801F5B4(void) {
    Player *temp_r0;
    u16 temp_r3;
    void *temp_r3_2;

    temp_r3 = gCurTask->data;
    temp_r0 = temp_r3->unk50;
    temp_r3->unk8 = (s32) temp_r0->unkB0;
    temp_r3->unkC = (s32) temp_r0->unkB4;
    temp_r3->unk16 = (u16) (temp_r3->unk16 | 2);
    temp_r3->unk18 = 9;
    temp_r3->unk19 = 2;
    temp_r3->unk1A = 0x1E;
    temp_r3_2 = temp_r3 + 0x20;
    temp_r3_2->unkC = (u16) gUnknown_08E2EB18.unk8;
    temp_r3_2->unk1A = (s8) gUnknown_08E2EB18.unkA;
    temp_r3_2->unk16 = 0;
    temp_r3_2->unk18 = 0xFFFF;
    temp_r3_2->unk1B = 0xFF;
    temp_r3_2->unk20 = -1;
    temp_r3_2->unk28 = -1;
    Player_PlaySong(temp_r3->unk50, 0x210U);
    gCurTask->main = sub_801F630;
}

void sub_801F630(void) {
    u16 temp_r1;
    u16 var_r0;
    u8 temp_r0;
    void (*var_r0_2)();
    void *temp_r2;

    temp_r1 = gCurTask->data;
    temp_r2 = temp_r1->unk50;
    if (temp_r2->unkBC != -1) {
        temp_r1->unk8 = (s32) temp_r2->unkB0;
        temp_r1->unkC = (s32) temp_r2->unkB4;
    }
    if ((s32) temp_r1->unk8 < (s32) temp_r1->unk0) {
        var_r0 = 1 | temp_r1->unk16;
    } else {
        var_r0 = 0xFFFE & temp_r1->unk16;
    }
    temp_r1->unk16 = var_r0;
    sub_8020130(2U);
    sub_8020284();
    temp_r0 = temp_r1->unk1A - 1;
    temp_r1->unk1A = temp_r0;
    if ((temp_r0 << 0x18) == 0) {
        temp_r1->unk16 = (u16) (0xFFFD & temp_r1->unk16);
        if ((temp_r1->unk50->unkC & 0x18) == 0x10) {
            var_r0_2 = sub_801EF6C;
        } else {
            var_r0_2 = sub_801EE74;
        }
        gCurTask->main = var_r0_2;
    }
}

void sub_801F6D8(void) {
    u16 temp_r2;
    void *temp_r2_2;

    temp_r2 = gCurTask->data;
    temp_r2->unk16 = (u16) (0xFFFD & temp_r2->unk16);
    temp_r2->unk18 = 0xB;
    temp_r2->unk19 = 3;
    temp_r2->unk1A = 0x1E;
    temp_r2_2 = temp_r2 + 0x20;
    temp_r2_2->unkC = (u16) gUnknown_08E2EB18.unkC;
    temp_r2_2->unk1A = (s8) gUnknown_08E2EB18.unkE;
    temp_r2_2->unk16 = 0;
    temp_r2_2->unk18 = 0xFFFF;
    temp_r2_2->unk1B = 0xFF;
    temp_r2_2->unk20 = -1;
    temp_r2_2->unk28 = -1;
    gCurTask->main = sub_801F740;
}

void sub_801F740(void) {
    s32 var_r1;
    s32 var_r1_2;
    u16 temp_r1;
    u16 var_r0;
    u8 temp_r0_2;
    void *temp_r0;
    void *temp_r2;

    temp_r1 = gCurTask->data;
    temp_r2 = temp_r1->unk50;
    if (temp_r2->unk4 & 1) {
        var_r1 = 0x1800;
    } else {
        var_r1 = 0xFFFFE800;
    }
    temp_r1->unk8 = (s32) (temp_r2->unk10 + var_r1);
    temp_r0 = temp_r1->unk50;
    if (temp_r0->unk4 & 0x10000) {
        var_r1_2 = 0x1800;
    } else {
        var_r1_2 = 0xFFFFE800;
    }
    temp_r1->unkC = (s32) (temp_r0->unk14 + var_r1_2);
    if ((s32) temp_r0->unk10 < (s32) temp_r1->unk0) {
        var_r0 = 1 | temp_r1->unk16;
    } else {
        var_r0 = 0xFFFE & temp_r1->unk16;
    }
    temp_r1->unk16 = var_r0;
    sub_8020130(1U);
    sub_8020284();
    temp_r0_2 = temp_r1->unk1A - 1;
    temp_r1->unk1A = temp_r0_2;
    if ((temp_r0_2 << 0x18) == 0) {
        gCurTask->main = sub_801EE74;
    }
}

void sub_801F7E0(void) {
    u16 temp_r2;
    void *temp_r2_2;

    temp_r2 = gCurTask->data;
    temp_r2->unk16 = (u16) (0xFFFD & temp_r2->unk16);
    temp_r2->unk18 = 0xB;
    temp_r2->unk19 = 3;
    temp_r2->unk1A = 0x1E;
    temp_r2_2 = temp_r2 + 0x20;
    temp_r2_2->unkC = (u16) gUnknown_08E2EB18.unkC;
    temp_r2_2->unk1A = (s8) gUnknown_08E2EB18.unkE;
    temp_r2_2->unk16 = 0;
    temp_r2_2->unk18 = 0xFFFF;
    temp_r2_2->unk1B = 0xFF;
    temp_r2_2->unk20 = -1;
    temp_r2_2->unk28 = -1;
    gCurTask->main = sub_801F848;
}

void sub_801F848(void) {
    s32 temp_r2;
    u16 temp_r1;
    u16 var_r0;
    u8 temp_r0;
    void *temp_r3;

    temp_r1 = gCurTask->data;
    temp_r3 = temp_r1->unk50;
    temp_r2 = temp_r1->unk1B * 0x10;
    temp_r1->unk8 = (s32) (temp_r3->unk10 + ((s16) gSineTable[temp_r2 + 0x100] >> 1));
    temp_r1->unkC = (s32) (temp_r3->unk14 + ((s16) gSineTable[temp_r2] >> 1));
    if (temp_r3->unk4 & 1) {
        var_r0 = 1 | temp_r1->unk16;
    } else {
        var_r0 = 0xFFFE & temp_r1->unk16;
    }
    temp_r1->unk16 = var_r0;
    sub_8020130(1U);
    sub_8020284();
    temp_r0 = temp_r1->unk1A - 1;
    temp_r1->unk1A = temp_r0;
    if ((temp_r0 << 0x18) == 0) {
        gCurTask->main = sub_801EF6C;
    }
}

void sub_801F8D8(void) {
    Player *temp_r2;
    s32 var_r1;
    u16 temp_r1;
    void *temp_r1_2;

    temp_r1 = gCurTask->data;
    temp_r2 = temp_r1->unk50;
    if (temp_r2->moveState & 1) {
        var_r1 = 0xFFFFE800;
    } else {
        var_r1 = 0x1800;
    }
    temp_r1->unk8 = (s32) (temp_r2->qWorldX + var_r1);
    temp_r1->unkC = (s32) temp_r1->unk50->qWorldY;
    temp_r1->unk16 = (u16) (2 | temp_r1->unk16);
    temp_r1->unk18 = 9;
    temp_r1->unk19 = 8;
    temp_r1->unk1A = 0xA;
    temp_r1_2 = temp_r1 + 0x20;
    temp_r1_2->unkC = (u16) gUnknown_08E2EB18.unk20;
    temp_r1_2->unk1A = (s8) gUnknown_08E2EB18.unk22;
    temp_r1_2->unk16 = 0;
    temp_r1_2->unk18 = 0xFFFF;
    temp_r1_2->unk1B = 0xFF;
    temp_r1_2->unk20 = -1;
    temp_r1_2->unk28 = -1;
    Player_PlaySong(temp_r1->unk50, 0x210U);
    gCurTask->main = sub_801F970;
}

void sub_801F970(void) {
    u16 temp_r1;
    u16 var_r0;
    u8 temp_r0;

    temp_r1 = gCurTask->data;
    if (temp_r1->unk50->unk4 & 1) {
        var_r0 = 1 | temp_r1->unk16;
    } else {
        var_r0 = 0xFFFE & temp_r1->unk16;
    }
    temp_r1->unk16 = var_r0;
    sub_8020130(2U);
    sub_8020284();
    temp_r0 = temp_r1->unk1A - 1;
    temp_r1->unk1A = temp_r0;
    if ((temp_r0 << 0x18) == 0) {
        temp_r1->unk1A = 0xFU;
        gCurTask->main = sub_801F9D4;
    }
}

void sub_801F9D4(void) {
    s32 var_r0_2;
    u16 temp_r1;
    u16 var_r0;

    temp_r1 = gCurTask->data;
    if (temp_r1->unk50->unk4 & 1) {
        var_r0 = 1 | temp_r1->unk16;
    } else {
        var_r0 = 0xFFFE & temp_r1->unk16;
    }
    temp_r1->unk16 = var_r0;
    sub_8020130(0U);
    temp_r1->unk1A = (u8) (temp_r1->unk1A - 1);
    if (temp_r1->unk1C != 0) {
        var_r0_2 = temp_r1->unk50->unk10 - ((0xF - temp_r1->unk1A) * 0x600);
    } else {
        var_r0_2 = temp_r1->unk50->unk10 + ((0xF - temp_r1->unk1A) * 0x600);
    }
    temp_r1->unk0 = var_r0_2;
    sub_8020284();
    if (temp_r1->unk1A == 0) {
        gCurTask->main = sub_801EE74;
    }
}

void sub_801FA64(void) {
    Player *temp_r2;
    s32 var_r1;
    u16 temp_r1;
    void *temp_r1_2;

    temp_r1 = gCurTask->data;
    temp_r2 = temp_r1->unk50;
    if (temp_r2->moveState & 1) {
        var_r1 = 0xFFFFE800;
    } else {
        var_r1 = 0x1800;
    }
    temp_r1->unk8 = (s32) (temp_r2->qWorldX + var_r1);
    temp_r1->unkC = (s32) temp_r1->unk50->qWorldY;
    temp_r1->unk16 = (u16) (2 | temp_r1->unk16);
    temp_r1->unk18 = 9;
    temp_r1->unk19 = 8;
    temp_r1->unk1A = 0xA;
    temp_r1_2 = temp_r1 + 0x20;
    temp_r1_2->unkC = (u16) gUnknown_08E2EB18.unk20;
    temp_r1_2->unk1A = (s8) gUnknown_08E2EB18.unk22;
    temp_r1_2->unk16 = 0;
    temp_r1_2->unk18 = 0xFFFF;
    temp_r1_2->unk1B = 0xFF;
    temp_r1_2->unk20 = -1;
    temp_r1_2->unk28 = -1;
    Player_PlaySong(temp_r1->unk50, 0x210U);
    gCurTask->main = sub_801FAFC;
}

void sub_801FAFC(void) {
    s32 temp_r1_2;
    s32 temp_r6;
    u16 temp_r1;
    u16 var_r0;
    u8 temp_r0;

    temp_r1 = gCurTask->data;
    if (temp_r1->unk50->unk4 & 1) {
        var_r0 = 1 | temp_r1->unk16;
    } else {
        var_r0 = 0xFFFE & temp_r1->unk16;
    }
    temp_r1->unk16 = var_r0;
    sub_8020130(2U);
    sub_8020284();
    temp_r0 = temp_r1->unk1A - 1;
    temp_r1->unk1A = temp_r0;
    if ((temp_r0 << 0x18) == 0) {
        temp_r6 = (s32) (*((temp_r1->unk1D * 8) + 0x200 + gSineTable) * 2) / 20;
        temp_r1->unk8 = temp_r6;
        temp_r1_2 = (s32) (*((temp_r1->unk1D * 8) + gSineTable) * 2) / 20;
        temp_r1->unkC = temp_r1_2;
        if (temp_r1->unk1C != 0) {
            temp_r1->unk8 = (s32) (0 - temp_r6);
            temp_r1->unkC = (s32) (0 - temp_r1_2);
        }
        temp_r1->unk1A = 0xFU;
        gCurTask->main = sub_801FBA8;
    }
}

void sub_801FBA8(void) {
    u16 temp_r1;
    u16 var_r0;
    void *temp_r3;

    temp_r1 = gCurTask->data;
    if (temp_r1->unk50->unk4 & 1) {
        var_r0 = 1 | temp_r1->unk16;
    } else {
        var_r0 = 0xFFFE & temp_r1->unk16;
    }
    temp_r1->unk16 = var_r0;
    sub_8020130(0U);
    temp_r1->unk1A = (u8) (temp_r1->unk1A - 1);
    temp_r3 = temp_r1->unk50;
    temp_r1->unk0 = (s32) (temp_r3->unk10 + ((0xF - temp_r1->unk1A) * temp_r1->unk8));
    temp_r1->unk4 = (s32) (temp_r3->unk14 + ((0xF - temp_r1->unk1A) * temp_r1->unkC));
    sub_8020284();
    if (temp_r1->unk1A == 0) {
        gCurTask->main = sub_801EE74;
    }
}

void sub_801FC2C(void) {
    s32 temp_r1;
    u16 temp_r5;
    u32 temp_r4;
    void *temp_r5_2;

    temp_r5 = gCurTask->data;
    temp_r4 = (u32) (((u32) (temp_r5->unk50->unk2A << 0x1C) >> 0xA) + 0xD0000) >> 0x10;
    temp_r1 = temp_r4 * 4;
    temp_r5->unk8 = (s32) temp_r5->unk0;
    temp_r5->unkC = (s32) temp_r5->unk4;
    temp_r5->unk10 = 0;
    temp_r5->unk12 = 0;
    temp_r5->unk16 = (u16) ((0xFFFD & temp_r5->unk16) | 4);
    temp_r5->unk18 = 0;
    temp_r5->unk19 = (s8) temp_r4;
    temp_r5->unk1A = 0;
    temp_r5_2 = temp_r5 + 0x20;
    temp_r5_2->unkC = (u16) *(temp_r1 + &gUnknown_08E2EB18);
    temp_r5_2->unk1A = (s8) *(temp_r1 + (&gUnknown_08E2EB18 + 2));
    temp_r5_2->unk16 = 0;
    temp_r5_2->unk18 = 0xFFFF;
    temp_r5_2->unk1B = 0xFF;
    temp_r5_2->unk20 = -1;
    temp_r5_2->unk28 = -1;
    gCurTask->main = sub_801FCD8;
}

void sub_801FCD8(void) {
    Player *temp_r0_2;
    s16 temp_r1_2;
    s32 var_r0;
    s32 var_r0_2;
    u16 temp_r1;
    u16 var_r0_3;
    void *temp_r0;
    void *temp_r2;
    void *temp_r2_2;

    temp_r1 = gCurTask->data;
    temp_r2 = temp_r1->unk50;
    if (temp_r2->unk4 & 1) {
        var_r0 = temp_r2->unk10 + 0x1800;
    } else {
        var_r0 = temp_r2->unk10 + 0xFFFFE800;
    }
    temp_r1->unk8 = var_r0;
    temp_r2_2 = temp_r1->unk50;
    if (temp_r2_2->unk4 & 0x10000) {
        var_r0_2 = temp_r2_2->unk14 + 0x1800;
    } else {
        var_r0_2 = temp_r2_2->unk14 + 0xFFFFE800;
    }
    temp_r1->unkC = var_r0_2;
    if ((s32) temp_r1->unk50->unk10 < (s32) temp_r1->unk0) {
        var_r0_3 = 1 | temp_r1->unk16;
    } else {
        var_r0_3 = 0xFFFE & temp_r1->unk16;
    }
    temp_r1->unk16 = var_r0_3;
    sub_8020130(1U);
    sub_8020284();
    temp_r0 = temp_r1->unk50;
    if ((s16) temp_r0->unk54 != 0) {
        temp_r0->unk54 = (u16) (temp_r0->unk54 - 1);
    }
    temp_r0_2 = temp_r1->unk54;
    if ((s16) temp_r0_2->unk54 != 0) {
        temp_r0_2->unk54 -= 1;
    }
    temp_r1_2 = (s16) temp_r1->unk50->unk54;
    if (temp_r1_2 == 0) {
        temp_r1->unk54->unk54 = (u16) temp_r1_2;
        temp_r1->unk16 = (u16) (0xFFFB & temp_r1->unk16);
        sub_801ECAC(temp_r1->unk54);
    }
}

void sub_801FDAC(void) {
    Player *temp_r3;
    s32 temp_r1;
    s32 temp_r1_2;
    u16 temp_r0;
    u32 temp_r5;
    u32 temp_r5_2;
    void (*var_r0)();
    void *temp_r3_2;
    void *temp_r3_3;

    temp_r0 = gCurTask->data;
    temp_r3 = temp_r0->unk50;
    if (temp_r3->unkBC == -1U) {
        temp_r5 = (u32) (((u32) (temp_r3->unk2A << 0x1C) >> 0xA) + 0x100000) >> 0x10;
        temp_r1 = temp_r5 * 4;
        temp_r0->unk16 = (u16) (0xFFFD & temp_r0->unk16);
        temp_r0->unk18 = 0xB;
        temp_r0->unk19 = (s8) temp_r5;
        temp_r0->unk1A = 0x1E;
        temp_r3_2 = temp_r0 + 0x20;
        temp_r3_2->unkC = (u16) *(temp_r1 + &gUnknown_08E2EB18);
        temp_r3_2->unk1A = (s8) *(temp_r1 + (&gUnknown_08E2EB18 + 2));
        temp_r3_2->unk16 = 0;
        temp_r3_2->unk18 = 0xFFFF;
        temp_r3_2->unk1B = 0xFF;
        temp_r3_2->unk20 = -1;
        temp_r3_2->unk28 = -1;
        var_r0 = sub_8020038;
    } else {
        temp_r5_2 = (u32) (((u32) (temp_r3->unk2A << 0x1C) >> 0xA) + 0xE0000) >> 0x10;
        temp_r1_2 = temp_r5_2 * 4;
        temp_r0->unk8 = (s32) temp_r3->unkB0;
        temp_r0->unkC = (s32) temp_r3->unkB4;
        temp_r0->unk16 = (u16) (2 | temp_r0->unk16);
        temp_r0->unk18 = 9;
        temp_r0->unk19 = (s8) temp_r5_2;
        temp_r0->unk1A = 0x1E;
        temp_r3_3 = temp_r0 + 0x20;
        temp_r3_3->unkC = (u16) *(temp_r1_2 + &gUnknown_08E2EB18);
        temp_r3_3->unk1A = (s8) *(temp_r1_2 + (&gUnknown_08E2EB18 + 2));
        temp_r3_3->unk16 = 0;
        temp_r3_3->unk18 = 0xFFFF;
        temp_r3_3->unk1B = 0xFF;
        temp_r3_3->unk20 = -1;
        temp_r3_3->unk28 = -1;
        Player_PlaySong(temp_r0->unk50, 0x210U);
        var_r0 = sub_801FED0;
    }
    gCurTask->main = var_r0;
}

void sub_801FED0(void) {
    Player *temp_r0_3;
    s16 temp_r1_2;
    u16 temp_r1;
    u16 var_r0;
    u8 temp_r0;
    void *temp_r0_2;
    void *temp_r2;

    temp_r1 = gCurTask->data;
    temp_r2 = temp_r1->unk50;
    if (temp_r2->unkBC != -1) {
        temp_r1->unk8 = (s32) temp_r2->unkB0;
        temp_r1->unkC = (s32) temp_r2->unkB4;
    }
    if ((s32) temp_r1->unk8 < (s32) temp_r1->unk0) {
        var_r0 = 1 | temp_r1->unk16;
    } else {
        var_r0 = 0xFFFE & temp_r1->unk16;
    }
    temp_r1->unk16 = var_r0;
    sub_8020130(2U);
    sub_8020284();
    temp_r0 = temp_r1->unk1A - 1;
    temp_r1->unk1A = temp_r0;
    if ((temp_r0 << 0x18) == 0) {
        temp_r1->unk16 = (u16) (0xFFFD & temp_r1->unk16);
        gCurTask->main = sub_801FC2C;
        return;
    }
    temp_r0_2 = temp_r1->unk50;
    if ((s16) temp_r0_2->unk54 != 0) {
        temp_r0_2->unk54 = (u16) (temp_r0_2->unk54 - 1);
    }
    temp_r0_3 = temp_r1->unk54;
    if ((s16) temp_r0_3->unk54 != 0) {
        temp_r0_3->unk54 -= 1;
    }
    temp_r1_2 = (s16) temp_r1->unk50->unk54;
    if (temp_r1_2 == 0) {
        temp_r1->unk54->unk54 = (u16) temp_r1_2;
        temp_r1->unk16 = (u16) (0xFFF9 & temp_r1->unk16);
        sub_801ECAC(temp_r1->unk54);
    }
}

void sub_801FFA8(void) {
    s32 temp_r1;
    u16 temp_r5;
    u32 temp_r3;
    void *temp_r5_2;

    temp_r5 = gCurTask->data;
    temp_r3 = (u32) (((u32) (temp_r5->unk50->unk2A << 0x1C) >> 0xA) + 0x100000) >> 0x10;
    temp_r1 = temp_r3 * 4;
    temp_r5->unk16 = (u16) (0xFFFD & temp_r5->unk16);
    temp_r5->unk18 = 0xB;
    temp_r5->unk19 = (s8) temp_r3;
    temp_r5->unk1A = 0x1E;
    temp_r5_2 = temp_r5 + 0x20;
    temp_r5_2->unkC = (u16) *(temp_r1 + &gUnknown_08E2EB18);
    temp_r5_2->unk1A = (s8) *(temp_r1 + (&gUnknown_08E2EB18 + 2));
    temp_r5_2->unk16 = 0;
    temp_r5_2->unk18 = 0xFFFF;
    temp_r5_2->unk1B = 0xFF;
    temp_r5_2->unk20 = -1;
    temp_r5_2->unk28 = -1;
    gCurTask->main = sub_8020038;
    sub_8020038();
}

void sub_8020038(void) {
    Player *temp_r0_4;
    s16 temp_r1;
    s32 var_r0;
    s32 var_r0_2;
    u16 temp_r4;
    u16 var_r0_3;
    u8 temp_r0_2;
    void *temp_r0;
    void *temp_r0_3;
    void *temp_r2;

    temp_r4 = gCurTask->data;
    sub_8020130(1U);
    sub_8020284();
    temp_r2 = temp_r4->unk50;
    if (temp_r2->unk4 & 1) {
        var_r0 = temp_r2->unk10 + 0x1800;
    } else {
        var_r0 = temp_r2->unk10 + 0xFFFFE800;
    }
    temp_r4->unk8 = var_r0;
    temp_r0 = temp_r4->unk50;
    if (temp_r0->unk4 & 0x10000) {
        var_r0_2 = temp_r0->unk14 + 0x1800;
    } else {
        var_r0_2 = temp_r0->unk14 + 0xFFFFE800;
    }
    temp_r4->unkC = var_r0_2;
    if ((s32) temp_r0->unk10 < (s32) temp_r4->unk0) {
        var_r0_3 = 1 | temp_r4->unk16;
    } else {
        var_r0_3 = 0xFFFE & temp_r4->unk16;
    }
    temp_r4->unk16 = var_r0_3;
    temp_r0_2 = temp_r4->unk1A - 1;
    temp_r4->unk1A = temp_r0_2;
    if ((temp_r0_2 << 0x18) == 0) {
        gCurTask->main = sub_801FC2C;
        return;
    }
    temp_r0_3 = temp_r4->unk50;
    if ((s16) temp_r0_3->unk54 != 0) {
        temp_r0_3->unk54 = (u16) (temp_r0_3->unk54 - 1);
    }
    temp_r0_4 = temp_r4->unk54;
    if ((s16) temp_r0_4->unk54 != 0) {
        temp_r0_4->unk54 -= 1;
    }
    temp_r1 = (s16) temp_r4->unk50->unk54;
    if (temp_r1 == 0) {
        temp_r4->unk54->unk54 = (u16) temp_r1;
        temp_r4->unk16 = (u16) (0xFFFB & temp_r4->unk16);
        sub_801ECAC(temp_r4->unk54);
    }
}

void sub_8020130(u16 arg0, ? arg3) {
    Player *temp_r2_2;
    s16 temp_r0_2;
    s16 temp_r1_2;
    s16 temp_r2;
    s32 temp_r0;
    s32 temp_r0_3;
    s32 temp_r3;
    s32 temp_r4;
    s32 temp_r6;
    s32 temp_r6_2;
    s32 temp_r7;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r1;
    s32 var_r1_2;
    u16 temp_r1;
    u16 var_r2;
    u32 temp_r1_3;

    temp_r1 = gCurTask->data;
    temp_r7 = temp_r1->unk8;
    temp_r0 = temp_r1->unkC;
    var_r2 = 0;
    if ((gStageData.unk85 != 0) && (gStageData.act != 8) && (gStageData.act != 9) && (gStageData.unk4 != 9)) {
        return;
    }
    temp_r6 = (s32) (temp_r7 - temp_r1->unk0) >> 8;
    temp_r4 = (s32) (temp_r0 - temp_r1->unk4) >> 8;
    if ((temp_r6 != 0) || (temp_r4 != 0)) {
        var_r2 = (u16) sa2__sub_8004418((s16) temp_r4, (s16) temp_r6);
    }
    var_r1 = temp_r6;
    if (temp_r6 < 0) {
        var_r1 = 0 - temp_r6;
    }
    var_r0 = temp_r4;
    if (temp_r4 < 0) {
        var_r0 = 0 - temp_r4;
    }
    if (var_r1 > var_r0) {
        var_r0_2 = temp_r6;
    } else {
        var_r0_2 = temp_r4;
    }
    if (var_r0_2 < 0) {
        var_r0_2 = 0 - var_r0_2;
    }
    temp_r0_2 = (s16) arg0;
    var_r1_2 = temp_r0_2 * (var_r0_2 << 5);
    if (var_r1_2 > 0x7FFF) {
        var_r1_2 = 0x7FFF;
    } else {
        temp_r0_3 = temp_r0_2 << 7;
        if (var_r1_2 < temp_r0_3) {
            var_r1_2 = temp_r0_3;
        }
    }
    temp_r1->unk14 = (s16) var_r1_2;
    temp_r2 = (s16) var_r2;
    temp_r1_2 = temp_r1->unk14;
    temp_r3 = (s32) ((temp_r1_2 * ((s32) ((u16) gSineTable[temp_r2 + 0x100] << 0x10) >> 0x16)) << 8) >> 0x10;
    temp_r6_2 = temp_r1->unk0 + temp_r3;
    temp_r1->unk0 = temp_r6_2;
    temp_r1_3 = (((s32) ((u16) gSineTable[temp_r2] << 0x10) >> 0x16) * temp_r1_2) << 8;
    temp_r1->unk4 = (s32) (temp_r1->unk4 + ((s32) temp_r1_3 >> 0x10));
    if (temp_r3 < 0) {
        if (temp_r7 > temp_r6_2) {
            goto block_25;
        }
    } else if (temp_r7 < temp_r6_2) {
block_25:
        temp_r1->unk0 = temp_r7;
    }
    if ((s32) ((temp_r1_3 >> 0x10) << 0x10) < 0) {
        if (temp_r0 > (s32) temp_r1->unk4) {
            temp_r1->unk4 = temp_r0;
        }
    } else if (temp_r0 < (s32) temp_r1->unk4) {
        temp_r1->unk4 = temp_r0;
    }
    temp_r2_2 = temp_r1->unk50;
    if (temp_r2_2->moveState & 0x100) {
        if (temp_r1->unk54 != 0) {
            sub_801EBC0(0U);
            return;
        }
        sub_801EBC0(4U, temp_r2_2);
    }
}

void sub_8020284(void) {
    Sprite *temp_r4;
    s32 temp_r1_3;
    u16 temp_r1;
    u32 temp_r1_2;
    u32 temp_r1_4;
    u32 temp_r2;
    u32 var_r0;
    u32 var_r0_2;
    u32 var_r2;
    void *temp_r0;
    void *temp_r3;

    temp_r1 = gCurTask->data;
    temp_r3 = temp_r1->unk50;
    temp_r4 = temp_r1 + 0x20;
    if ((0x1C & temp_r3->unk2B) == 0x14) {
        return;
    }
    temp_r4->x = (s16) (((s32) temp_r1->unk0 >> 8) - gCamera.x) + temp_r1->unk10;
    temp_r4->y = (s16) (((s32) temp_r1->unk4 >> 8) - gCamera.y) + temp_r1->unk12;
    temp_r4->oamFlags = temp_r3->unkE0->unk20 + 0x40;
    temp_r1_2 = temp_r4->frameFlags & 0xFFFFCFFF;
    temp_r4->frameFlags = temp_r1_2;
    temp_r2 = (temp_r3->unkE0->unk14 & 0x3000) | temp_r1_2;
    temp_r4->frameFlags = temp_r2;
    if ((u32) temp_r1->unk19 > 0xCU) {
        temp_r4->palId = temp_r3->unkE0->unk2B;
        var_r2 = temp_r2 | 0x40000;
    } else {
        temp_r4->palId = 0;
        var_r2 = temp_r2 & 0xFFFBFFFF;
    }
    temp_r4->frameFlags = var_r2;
    if (1 & temp_r1->unk16) {
        var_r0 = temp_r4->frameFlags & 0xFFFFFBFF;
    } else {
        var_r0 = temp_r4->frameFlags | 0x400;
    }
    temp_r4->frameFlags = var_r0;
    if (temp_r1->unk50->unk4 & 0x10000) {
        var_r0_2 = temp_r4->frameFlags | 0x800;
    } else {
        var_r0_2 = temp_r4->frameFlags & 0xFFFFF7FF;
    }
    temp_r4->frameFlags = var_r0_2;
    UpdateSpriteAnimation(temp_r4);
    temp_r0 = temp_r1->unk50;
    temp_r1_3 = temp_r0->unk0;
    if ((temp_r1_3 == sub_800EAEC) || (temp_r1_3 == sub_800EAAC) || (temp_r1_4 = (u32) (temp_r0->unk2B << 0x1E) >> 0x1E, (gPlayers[temp_r1_4].callback == sub_800EAEC)) || (gPlayers[temp_r1_4].callback == sub_800EAAC)) {
        temp_r1->unk16 = (u16) (8 | temp_r1->unk16);
    }
    if (!(8 & temp_r1->unk16)) {
        DisplaySprite(temp_r4);
    }
}

void sub_80203D4(Player *p) {
    Task *temp_r0;
    Task *temp_r5;
    u16 temp_r1;

    temp_r5 = gStageData.task98;
    if ((temp_r5 == NULL) && ((0xF & p->unk2A) == 1)) {
        temp_r0 = TaskCreate(sub_801EDB4, 0x58U, 0x3010U, 0U, sub_8020434);
        gStageData.task98 = temp_r0;
        temp_r1 = temp_r0->data;
        temp_r1->unk0 = (s32) p->qWorldX;
        temp_r1->unk4 = (s32) p->qWorldY;
        temp_r1->unk50 = p;
        temp_r1->unk54 = temp_r5;
    }
}

void sub_8020434(Task *arg0) {
    gStageData.task98 = NULL;
}

void sub_8020444(Player *arg0) {
    void (*var_r0)();

    if ((0xF & arg0->unk2A) == 1) {
        if ((arg0->unkC & 0x18) != 0x10) {
            var_r0 = sub_801EE74;
        } else {
            var_r0 = sub_801EF6C;
        }
    } else {
        var_r0 = sub_801FC2C;
    }
    gStageData.task98->main = var_r0;
}

void sub_8020488(Player *arg0) {
    s32 temp_r2;
    void (*var_r0)();

    if ((0xF & arg0->unk2A) == 1) {
        temp_r2 = arg0->unkC & 0x18;
        if (temp_r2 != 8) {
            if (arg0->unkBC == -1U) {
                if (temp_r2 != 0x10) {
                    var_r0 = sub_801F6D8;
                } else {
                    var_r0 = sub_801F7E0;
                }
            } else {
                var_r0 = sub_801F5B4;
            }
        } else if (arg0->moveState & 4) {
            var_r0 = sub_801F8D8;
        } else {
            var_r0 = sub_801FA64;
        }
    } else if (arg0->unkBC == -1U) {
        var_r0 = sub_801FFA8;
    } else {
        var_r0 = sub_801FDAC;
    }
    gStageData.task98->main = var_r0;
}

void sub_802051C(void) {
    gStageData.task98->main = sub_801F0DC;
}

void sub_8020530(void) {
    gStageData.task98->main = sub_801F258;
}

void sub_8020544(void) {
    gStageData.task98->main = sub_801F4B4;
}

void sub_8020558(void) {
    gStageData.task98->main = sub_801F534;
}

void sub_802056C(void) {
    s32 var_r1;
    u16 temp_r1;
    u8 temp_r0;
    void (*var_r0)();
    void *temp_r2;

    temp_r1 = gCurTask->data;
    temp_r2 = temp_r1->unk50;
    if (temp_r2->unk4 & 1) {
        var_r1 = 0x1800;
    } else {
        var_r1 = 0xFFFFE800;
    }
    temp_r1->unk8 = (s32) (temp_r2->unk10 + var_r1);
    temp_r1->unkC = (s32) (temp_r1->unk50->unk14 + 0xFFFFE800);
    sub_8020130(1U);
    sub_8020284();
    temp_r0 = temp_r1->unk1A - 1;
    temp_r1->unk1A = temp_r0;
    if ((temp_r0 << 0x18) == 0) {
        if ((temp_r1->unk50->unkC & 0x18) == 0x10) {
            var_r0 = sub_801EF6C;
        } else {
            var_r0 = sub_801EE74;
        }
        gCurTask->main = var_r0;
    }
}

void sub_80205F4(void) {
    u16 temp_r4;
    u8 temp_r0;
    void (*var_r0)();
    void *temp_r3;

    temp_r4 = gCurTask->data;
    sub_8020130(0U);
    temp_r0 = temp_r4->unk1A - 1;
    temp_r4->unk1A = temp_r0;
    if ((temp_r0 << 0x18) == 0) {
        temp_r3 = temp_r4->unk50;
        if ((0xF & temp_r3->unk2A) == 1) {
            if ((temp_r3->unkC & 0x18) != 0x10) {
                var_r0 = sub_801EE74;
            } else {
                var_r0 = sub_801EF6C;
            }
        } else {
            var_r0 = sub_801FC2C;
        }
        gStageData.task98->main = var_r0;
    }
    sub_8020284();
}

void sub_8020660(void) {
    u16 temp_r1;
    u16 var_r0;
    void *temp_r1_2;

    temp_r1 = gCurTask->data;
    if (temp_r1->unk50->unk4 & 1) {
        var_r0 = 1 | temp_r1->unk16;
    } else {
        var_r0 = 0xFFFE & temp_r1->unk16;
    }
    temp_r1->unk16 = var_r0;
    temp_r1_2 = temp_r1->unk50;
    temp_r1->unk8 = (s32) temp_r1_2->unk10;
    temp_r1->unkC = (s32) temp_r1_2->unk14;
    temp_r1->unk0 = (s32) temp_r1_2->unk10;
    temp_r1->unk4 = (s32) temp_r1_2->unk14;
    sub_8020284();
}

void sub_80206B0(void) {
    u16 temp_r1;
    u16 var_r0;
    void *temp_r1_2;

    temp_r1 = gCurTask->data;
    if (temp_r1->unk50->unk4 & 1) {
        var_r0 = 1 | temp_r1->unk16;
    } else {
        var_r0 = 0xFFFE & temp_r1->unk16;
    }
    temp_r1->unk16 = var_r0;
    temp_r1_2 = temp_r1->unk50;
    temp_r1->unk8 = (s32) temp_r1_2->unk10;
    temp_r1->unkC = (s32) temp_r1_2->unk14;
    temp_r1->unk0 = (s32) temp_r1_2->unk10;
    temp_r1->unk4 = (s32) temp_r1_2->unk14;
    sub_8020284();
}

u32 sub_8020700(Sprite *s, s32 worldX, s32 worldY, s16 p3, Player *p, s16 p5) {
    PlayerSprite *temp_r3;
    Sprite *temp_r6;
    s16 temp_r1;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 temp_r2;
    s32 temp_r2_3;
    s32 temp_r2_4;
    s32 var_r5;
    s8 temp_r4;
    s8 temp_r4_2;
    s8 temp_r6_2;
    s8 temp_r6_3;
    u8 temp_r2_2;
    u8 temp_r3_2;
    void *temp_r3_3;
    void *temp_r3_4;

    temp_r3 = p->spriteData;
    temp_r6 = &temp_r3->s;
    if (p->moveState & 0x100) {
        goto block_22;
    }
    temp_r2 = (u16) p3 << 0x10;
    if (*(s->hitboxes + (temp_r2 >> 0xD)) == -1) {
        goto block_22;
    }
    temp_r1 = (s16) (u16) (s32) p5;
    if (temp_r3->s.hitboxes[temp_r1].index == -1) {
        goto block_22;
    }
    if (temp_r1 == 0) {
        temp_r3_2 = p->unk24;
        subroutine_arg0.unk0 = (u8) (0 - temp_r3_2);
        temp_r2_2 = (u8) p->unk25;
        subroutine_arg0.unk1 = (u8) (0 - temp_r2_2);
        subroutine_arg0.unk2 = temp_r3_2;
        subroutine_arg0.unk3 = temp_r2_2;
    } else {
        subroutine_arg0.unk0 = (u8) temp_r6->hitboxes[temp_r1].b.left;
        subroutine_arg0.unk1 = (u8) temp_r6->hitboxes[temp_r1].b.top;
        subroutine_arg0.unk2 = (u8) temp_r6->hitboxes[temp_r1].b.right;
        subroutine_arg0.unk3 = (u8) temp_r6->hitboxes[temp_r1].b.bottom;
    }
    var_r5 = (s32) p->qWorldY >> 8;
    if ((u32) (u16) ((u16) p->charFlags.anim0 - 0x5C) <= 1U) {
        if (p->moveState & 0x10000) {
            var_r5 -= 0x20;
        } else {
            var_r5 += 0x20;
        }
    }
    temp_r3_3 = s + (temp_r2 >> 0xD);
    temp_r4 = temp_r3_3->unk24;
    temp_r1_2 = worldX + temp_r4;
    temp_r6_2 = (s8) subroutine_arg0.unk0;
    temp_r2_3 = ((s32) p->qWorldX >> 8) + temp_r6_2;
    if (temp_r1_2 <= temp_r2_3) {
        if ((s32) (temp_r1_2 + ((s8) temp_r3_3->unk26 - temp_r4)) < temp_r2_3) {
            if (temp_r1_2 >= temp_r2_3) {
                goto block_16;
            }
            goto block_22;
        }
        goto block_17;
    }
block_16:
    if ((s32) (temp_r2_3 + ((s8) subroutine_arg0.unk2 - temp_r6_2)) >= temp_r1_2) {
block_17:
        temp_r3_4 = s + (temp_r2 >> 0xD);
        temp_r4_2 = temp_r3_4->unk25;
        temp_r2_4 = worldY + temp_r4_2;
        temp_r6_3 = (s8) subroutine_arg0.unk1;
        temp_r1_3 = var_r5 + temp_r6_3;
        if (temp_r2_4 <= temp_r1_3) {
            if ((s32) (temp_r2_4 + ((s8) temp_r3_4->unk27 - temp_r4_2)) < temp_r1_3) {
                if (temp_r2_4 >= temp_r1_3) {
                    goto block_20;
                }
                goto block_22;
            }
            goto block_21;
        }
block_20:
        if ((s32) (temp_r1_3 + ((s8) subroutine_arg0.unk3 - temp_r6_3)) >= temp_r2_4) {
block_21:
            return 1U;
        }
        goto block_22;
    }
block_22:
    return 0U;
}

u32 sub_8020874(Sprite *s, s32 worldX, s32 worldY, s16 p3, Player *p, s16 p5, u8 p6) {
    ? spC;
    s32 sp10;
    PlayerSprite *temp_r3;
    Sprite *temp_r6;
    s16 temp_r1;
    u16 temp_r2;
    u8 temp_r2_2;
    u8 temp_r3_2;

    sp10 = worldY;
    temp_r2 = (u16) p3;
    temp_r3 = p->spriteData;
    temp_r6 = &temp_r3->s;
    if ((p->moveState & 0x100) || (*(s->hitboxes + ((s32) (temp_r2 << 0x10) >> 0xD)) == -1) || (temp_r1 = (s16) (u16) (s32) p5, (temp_r3->s.hitboxes[temp_r1].index == -1))) {
        return 0U;
    }
    if (temp_r1 == 0) {
        temp_r3_2 = p->unk24;
        spC.unk0 = (u8) (0 - temp_r3_2);
        temp_r2_2 = (u8) p->unk25;
        spC.unk1 = (u8) (0 - temp_r2_2);
        spC.unk2 = temp_r3_2;
        spC.unk3 = temp_r2_2;
    } else {
        spC.unk0 = (u8) temp_r6->hitboxes[temp_r1].b.left;
        spC.unk1 = (u8) temp_r6->hitboxes[temp_r1].b.top;
        spC.unk2 = (u8) temp_r6->hitboxes[temp_r1].b.right;
        spC.unk3 = (u8) temp_r6->hitboxes[temp_r1].b.bottom;
    }
    return sub_8020A58(s, (s16) temp_r2, worldX, sp10, &spC, p, (u8) (s32) (u8) (s32) p6);
}

u32 sub_8020950(Sprite *s, s32 worldX, s32 worldY, Player *p, u8 param4) {
    s32 spC;
    s8 sp10;
    s16 temp_r0_3;
    s32 var_r4;
    u16 temp_r1_2;
    u32 temp_r0;
    u32 temp_r1;
    u32 temp_r1_3;
    u8 temp_r3;
    u8 temp_r4;
    u8 var_r7;
    void *temp_r0_2;

    var_r7 = (u8) (s32) param4;
    temp_r4 = p->unk24;
    sp10 = 0 - temp_r4;
    temp_r3 = (u8) p->unk25;
    temp_r0_2 = &subroutine_arg0 + 0x11;
    subroutine_arg0.unk11 = (s8) (0 - temp_r3);
    temp_r0_2->unk1 = temp_r4;
    (temp_r0_2 + 1)->unk1 = temp_r3;
    memcpy(&spC, &sp10, 4);
    var_r4 = 0;
    if ((s->hitboxes[0].index == -1) || (temp_r1 = p->moveState, ((0x100 & temp_r1) != 0))) {
        return 0U;
    }
    if ((0x20 & temp_r1) && (p->sprColliding == s)) {
        var_r4 = 1;
        p->moveState = (temp_r1 & ~0x20) | 4;
    }
    temp_r1_2 = (u16) p->charFlags.anim0;
    if (((u32) (u16) (temp_r1_2 - 0xCE) <= 2U) || (temp_r0_3 = (s16) temp_r1_2, (temp_r0_3 == 0xBC)) || (temp_r0_3 == 0xBD) || (temp_r0_3 == 0xBE)) {
        var_r7 = 1;
    }
    temp_r0 = sub_8020A58(s, 0, worldX, worldY, &spC, p, (u8) (s32) var_r7);
    if (temp_r0 != 0) {
        if (0x10000 & temp_r0) {
            p->moveState = (p->moveState | 0x20) & ~4;
            p->sprColliding = s;
            if ((var_r4 == 0) && (s == NULL)) {
                p->qSpeedGround = (s16) (u16) p->qSpeedAirX;
            }
        }
    } else if (var_r4 != 0) {
        temp_r1_3 = p->moveState;
        if (!(0x20 & temp_r1_3)) {
            p->moveState = (temp_r1_3 & ~0x40) | 4;
            p->sprColliding = (Sprite *) temp_r0;
        }
    }
    return temp_r0;
}

u32 sub_8020A58(Sprite *s, s16 param1, s32 worldX, s32 worldY, void *param4, Player *p, u8 param6) {
    Sprite *sp0;
    s32 sp4;
    s32 sp8;
    s32 spC;
    s32 sp10;
    s32 sp14;
    s16 temp_r2_3;
    s32 temp_r0;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 temp_r3;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 var_r1;
    s32 var_r2;
    s32 var_r5;
    s32 var_r6_2;
    s32 var_r6_3;
    s32 var_r7;
    s8 temp_r0_2;
    s8 temp_r0_3;
    s8 temp_r0_4;
    s8 temp_r4_2;
    s8 temp_r4_3;
    s8 temp_r5;
    u32 temp_r1_4;
    u32 temp_r1_5;
    u32 var_r6;
    u32 var_r7_2;
    u8 var_r3;
    void *temp_r0_5;
    void *temp_r1_3;
    void *temp_r3_2;
    void *temp_r4;

    sp0 = s;
    sp4 = worldY;
    sp8 = (s32) (u8) (s32) param6;
    temp_r0 = (s32) p->qWorldX >> 8;
    var_r7 = (s32) p->qWorldY >> 8;
    var_r6 = 0;
    if ((u32) (u16) ((u16) p->charFlags.anim0 - 0x5C) <= 1U) {
        if (p->moveState & 0x10000) {
            var_r7 -= 0x20;
        } else {
            var_r7 += 0x20;
        }
    }
    temp_r1 = (u16) param1 << 0x10;
    temp_r4 = sp0 + (temp_r1 >> 0xD);
    temp_r0_2 = (s8) temp_r4->unk24;
    sp14 = (s32) temp_r0_2;
    temp_r3 = temp_r0_2 + worldX;
    temp_r0_3 = param4->unk0;
    temp_r2 = temp_r0 + temp_r0_3;
    sp10 = (s32) temp_r0_3;
    if (temp_r3 <= temp_r2) {
        if ((s32) (temp_r3 + ((s8) temp_r4->unk26 - sp14)) < temp_r2) {
            if (temp_r3 < temp_r2) {
                goto block_52;
            }
            goto block_8;
        }
        goto block_10;
    }
block_8:
    if ((s32) (temp_r2 + (param4->unk2 - sp10)) < temp_r3) {
        goto block_52;
    }
block_10:
    temp_r3_2 = sp0 + (temp_r1 >> 0xD);
    temp_r4_2 = temp_r3_2->unk25;
    temp_r2_2 = sp4 + temp_r4_2;
    temp_r0_4 = param4->unk1;
    temp_r1_2 = var_r7 + temp_r0_4;
    spC = (s32) temp_r0_4;
    if (temp_r2_2 <= temp_r1_2) {
        if ((s32) (temp_r2_2 + ((s8) temp_r3_2->unk27 - temp_r4_2)) < temp_r1_2) {
            if (temp_r2_2 < temp_r1_2) {
                goto block_52;
            }
            goto block_14;
        }
        goto block_16;
    }
block_14:
    if ((s32) (temp_r1_2 + (param4->unk3 - spC)) < temp_r2_2) {
        goto block_52;
    }
block_16:
    temp_r1_3 = sp0 + (temp_r1 >> 0xD);
    temp_r0_5 = temp_r1_3 + 0x24;
    temp_r5 = temp_r1_3->unk24;
    temp_r4_3 = temp_r0_5->unk2;
    if ((s32) (((s32) (temp_r5 + temp_r4_3) >> 1) + worldX) <= temp_r0) {
        var_r5 = (worldX + temp_r4_3) - (sp10 + temp_r0);
        var_r0 = 0x40000;
    } else {
        var_r5 = (worldX + temp_r5) - (param4->unk2 + temp_r0);
        var_r0 = 0x80000;
    }
    if ((s32) (sp4 + ((s32) ((s8) *((temp_r0_5 + 2) - 1) + (s8) temp_r1_3->unk27) >> 1)) > var_r7) {
        var_r3 = (sp4 + (sp0 + (temp_r1 >> 0xD))->unk25) - (var_r7 + param4->unk3);
        temp_r1_4 = p->moveState;
        var_r7_2 = temp_r1_4;
        if (temp_r1_4 & 0x10000) {
            var_r1 = var_r3 - 2;
            if (var_r1 > 0) {
                goto block_30;
            }
            goto block_31;
        }
        var_r1 = var_r3 + 5;
        if (var_r1 > 0) {
            goto block_27;
        }
        goto block_28;
    }
    var_r3 = (sp4 + (s8) (sp0 + (temp_r1 >> 0xD))->unk27) - (var_r7 + spC);
    temp_r1_5 = p->moveState;
    var_r7_2 = temp_r1_5;
    if (temp_r1_5 & 0x10000) {
        var_r1 = var_r3 - 5;
        if (var_r1 < 0) {
block_27:
            var_r1 = 0;
        }
block_28:
        var_r6_2 = var_r0 | 0x10000;
    } else {
        var_r1 = var_r3 + 2;
        if (var_r1 < 0) {
block_30:
            var_r1 = 0;
        }
block_31:
        var_r6_2 = var_r0 | 0x20000;
    }
    var_r2 = var_r5;
    if (var_r5 < 0) {
        var_r2 = 0 - var_r5;
    }
    var_r0_2 = var_r1;
    if (var_r0_2 < 0) {
        var_r0_2 = 0 - var_r0_2;
    }
    if (var_r2 < var_r0_2) {
        var_r6_3 = var_r6_2 & 0xC0000;
        goto block_45;
    }
    var_r6_3 = var_r6_2 & 0x30000;
    if (0x10000 & var_r6_3) {
        if (((s32) p->qSpeedAirY < 0) && (sp8 == 0)) {
            return 0U;
        }
        temp_r2_3 = 4 & var_r7_2;
        if ((temp_r2_3 == 0) && ((p->unk26 + 0x20) & 0x40)) {
            p->qSpeedGround = temp_r2_3;
        }
        goto block_45;
    }
block_45:
    var_r6 = var_r6_3 | (((var_r5 << 8) & 0xFF00) | var_r3);
    if (0xC0000 & var_r6) {
        if (!(var_r6 & 0xFF00)) {
            var_r0_3 = 0xFFF300FF;
            goto block_49;
        }
    } else {
        var_r0_3 = 0xFFFF00FF;
block_49:
        var_r6 &= var_r0_3;
    }
    if (!(0x30000 & var_r6)) {
        var_r6 &= 0xFFFFFF00;
    }
block_52:
    return var_r6;
}

u32 sub_8020CE0(Sprite *s, s32 worldX, s32 worldY, u16 param3, Player *p) {
    s8 sp4;
    Sprite *temp_r7;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r2;
    s32 temp_r2_3;
    s32 temp_r4_2;
    s32 var_r0;
    s32 var_r1;
    s8 temp_r3_2;
    s8 temp_r4_3;
    s8 temp_r5;
    s8 temp_r7_2;
    u32 var_r5;
    u8 temp_r3;
    u8 temp_r4;
    void *temp_r0;
    void *temp_r2_2;
    void *temp_r3_3;

    temp_r7 = &p->spriteData->s;
    temp_r4 = p->unk24;
    sp4 = 0 - temp_r4;
    temp_r3 = (u8) p->unk25;
    temp_r0 = &subroutine_arg0 + 5;
    subroutine_arg0.unk5 = (s8) (0 - temp_r3);
    temp_r0->unk1 = temp_r4;
    (temp_r0 + 1)->unk1 = temp_r3;
    memcpy(&subroutine_arg0, &sp4, 4);
    if (sub_802C080(p) == 0) {
        temp_r2 = param3 << 0x10;
        if ((*(s->hitboxes + (temp_r2 >> 0xD)) != -1) && (temp_r7->hitboxes[0].index != -1)) {
            var_r5 = (u32) (p->qWorldY << 8) >> 0x10;
            if ((u32) (u16) ((u16) p->charFlags.anim0 - 0x5C) <= 1U) {
                if (p->moveState & 0x10000) {
                    var_r0 = var_r5 << 0x10;
                    var_r1 = 0xFFE00000;
                } else {
                    var_r0 = var_r5 << 0x10;
                    var_r1 = 0x200000;
                }
                var_r5 = (u32) (var_r0 + var_r1) >> 0x10;
            }
            temp_r2_2 = s + (temp_r2 >> 0xD);
            temp_r3_2 = temp_r2_2->unk24;
            temp_r4_2 = worldX + temp_r3_2;
            temp_r7_2 = subroutine_arg0.unk0;
            temp_r1 = (s16) ((u32) (p->qWorldX << 8) >> 0x10) + temp_r7_2;
            if (temp_r4_2 <= temp_r1) {
                if ((s32) (temp_r4_2 + ((s8) temp_r2_2->unk26 - temp_r3_2)) < temp_r1) {
                    if (temp_r4_2 >= temp_r1) {
                        goto block_11;
                    }
                    goto block_17;
                }
                goto block_12;
            }
block_11:
            if ((s32) (temp_r1 + ((s8) subroutine_arg0.unk2 - temp_r7_2)) >= temp_r4_2) {
block_12:
                temp_r3_3 = s + (temp_r2 >> 0xD);
                temp_r4_3 = temp_r3_3->unk25;
                temp_r2_3 = worldY + temp_r4_3;
                temp_r5 = subroutine_arg0.unk1;
                temp_r1_2 = (s16) var_r5 + temp_r5;
                if (temp_r2_3 <= temp_r1_2) {
                    if ((s32) (temp_r2_3 + ((s8) temp_r3_3->unk27 - temp_r4_3)) < temp_r1_2) {
                        if (temp_r2_3 >= temp_r1_2) {
                            goto block_15;
                        }
                        goto block_17;
                    }
                    goto block_16;
                }
block_15:
                if ((s32) (temp_r1_2 + ((s8) subroutine_arg0.unk3 - temp_r5)) >= temp_r2_3) {
block_16:
                    Player_8014550(p);
                    return 1U;
                }
                goto block_17;
            }
            goto block_17;
        }
    }
block_17:
    return 0U;
}

u32 sub_8020E3C(Sprite *s, s32 param1, s32 param2, s16 param3, Player *p) {
    PlayerSprite *temp_r0;
    Sprite *temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 temp_r2_3;
    s8 temp_r4;
    s8 temp_r4_2;
    s8 temp_r5;
    s8 temp_r5_2;
    void *temp_r3;
    void *temp_r3_2;

    temp_r0 = p->spriteData;
    temp_r0_2 = &temp_r0->s;
    if (!(p->moveState & 0x100)) {
        temp_r0_3 = (u16) param3 << 0x10;
        temp_r2 = temp_r0_3 >> 0xD;
        if ((*(s->hitboxes + temp_r2) != -1) && (temp_r0_2->unk28 != -1)) {
            temp_r3 = s + temp_r2;
            temp_r4 = temp_r3->unk24;
            temp_r2_2 = param1 + temp_r4;
            temp_r5 = temp_r0->unk38;
            temp_r1 = ((s32) p->qWorldX >> 8) + temp_r5;
            if (temp_r2_2 <= temp_r1) {
                if ((s32) (temp_r2_2 + ((s8) temp_r3->unk26 - temp_r4)) < temp_r1) {
                    if (temp_r2_2 >= temp_r1) {
                        goto block_6;
                    }
                    goto block_12;
                }
                goto block_7;
            }
block_6:
            if ((s32) (temp_r1 + ((s8) temp_r0->unk3A - temp_r5)) >= temp_r2_2) {
block_7:
                temp_r3_2 = s + (temp_r0_3 >> 0xD);
                temp_r4_2 = temp_r3_2->unk25;
                temp_r2_3 = param2 + temp_r4_2;
                temp_r5_2 = temp_r0_2->unk2D;
                temp_r1_2 = ((s32) p->qWorldY >> 8) + temp_r5_2;
                if (temp_r2_3 <= temp_r1_2) {
                    if ((s32) (temp_r2_3 + ((s8) temp_r3_2->unk27 - temp_r4_2)) < temp_r1_2) {
                        if (temp_r2_3 >= temp_r1_2) {
                            goto block_10;
                        }
                        goto block_12;
                    }
                    goto block_11;
                }
block_10:
                if ((s32) (temp_r1_2 + ((s8) temp_r0_2->unk2F - temp_r5_2)) >= temp_r2_3) {
block_11:
                    return 1U;
                }
                goto block_12;
            }
            goto block_12;
        }
    }
block_12:
    return 0U;
}

s32 sub_8020F30(void *arg0, u16 arg1, void *arg2, u16 arg3) {
    ? sp4;
    s16 temp_r0;
    s16 temp_r3_2;
    s32 temp_r1;
    s32 temp_r2_2;
    s32 temp_r2_7;
    s32 temp_r2_8;
    s32 temp_r3;
    s32 temp_r3_6;
    s32 temp_r4;
    s8 temp_r1_2;
    s8 temp_r3_5;
    s8 temp_r4_2;
    s8 temp_r4_3;
    u16 temp_r2;
    u8 temp_r2_3;
    u8 temp_r2_5;
    u8 temp_r3_3;
    u8 temp_r3_4;
    void *temp_r2_4;
    void *temp_r2_6;

    temp_r2 = arg1;
    temp_r4 = arg2->unkE0;
    temp_r3 = arg0->unkE0;
    if (arg2->unk4 & 0x100) {
        goto block_21;
    }
    if (*(temp_r3 + 0x2C + ((s32) (temp_r2 << 0x10) >> 0xD)) == -1) {
        goto block_21;
    }
    temp_r3_2 = (s16) arg3;
    temp_r2_2 = temp_r3_2 * 8;
    if (*(temp_r4 + 0x2C + temp_r2_2) == -1) {
        goto block_21;
    }
    if (temp_r3_2 == 0) {
        temp_r3_3 = arg2->unk24;
        subroutine_arg0.unk0 = (u8) (0 - temp_r3_3);
        temp_r2_3 = arg2->unk25;
        subroutine_arg0.unk1 = (u8) (0 - temp_r2_3);
        subroutine_arg0.unk2 = temp_r3_3;
        subroutine_arg0.unk3 = temp_r2_3;
    } else {
        temp_r2_4 = temp_r4 + 0xC + temp_r2_2;
        subroutine_arg0.unk0 = (u8) temp_r2_4->unk24;
        subroutine_arg0.unk1 = (u8) temp_r2_4->unk25;
        subroutine_arg0.unk2 = (u8) temp_r2_4->unk26;
        subroutine_arg0.unk3 = (u8) temp_r2_4->unk27;
    }
    temp_r0 = (s16) temp_r2;
    if (temp_r0 == 0) {
        temp_r3_4 = arg0->unk24;
        sp4.unk0 = (u8) (0 - temp_r3_4);
        temp_r2_5 = arg0->unk25;
        sp4.unk1 = (u8) (0 - temp_r2_5);
        sp4.unk2 = temp_r3_4;
        sp4.unk3 = temp_r2_5;
    } else {
        temp_r2_6 = temp_r3 + 0xC + (temp_r0 * 8);
        sp4.unk0 = (u8) temp_r2_6->unk24;
        sp4.unk1 = (u8) temp_r2_6->unk25;
        sp4.unk2 = (u8) temp_r2_6->unk26;
        sp4.unk3 = (u8) temp_r2_6->unk27;
    }
    temp_r3_5 = sp4.unk0;
    temp_r2_7 = ((s32) arg0->unk10 >> 8) + temp_r3_5;
    temp_r4_2 = (s8) subroutine_arg0.unk0;
    temp_r1 = ((s32) arg2->unk10 >> 8) + temp_r4_2;
    if (temp_r2_7 <= temp_r1) {
        if ((s32) (temp_r2_7 + (sp4.unk2 - temp_r3_5)) < temp_r1) {
            if (temp_r2_7 >= temp_r1) {
                goto block_15;
            }
            goto block_21;
        }
        goto block_16;
    }
block_15:
    if ((s32) (temp_r1 + ((s8) subroutine_arg0.unk2 - temp_r4_2)) >= temp_r2_7) {
block_16:
        temp_r4_3 = sp4.unk1;
        temp_r3_6 = ((s32) arg0->unk14 >> 8) + temp_r4_3;
        temp_r1_2 = (s8) subroutine_arg0.unk1;
        temp_r2_8 = ((s32) arg2->unk14 >> 8) + temp_r1_2;
        if (temp_r3_6 <= temp_r2_8) {
            if ((s32) (temp_r3_6 + (sp4.unk3 - temp_r4_3)) < temp_r2_8) {
                if (temp_r3_6 >= temp_r2_8) {
                    goto block_19;
                }
                goto block_21;
            }
            goto block_20;
        }
block_19:
        if ((s32) (temp_r2_8 + ((s8) subroutine_arg0.unk3 - temp_r1_2)) >= temp_r3_6) {
block_20:
            return 1;
        }
        goto block_21;
    }
block_21:
    return 0;
}

s32 sub_80210BC(Player *arg0, u16 arg1, Player *arg2, u16 arg3) {
    ? sp4;
    s32 sp8;
    s32 spC;
    PlayerSprite *temp_r3;
    PlayerSprite *temp_r6;
    s16 temp_r0;
    s16 temp_r3_2;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r2_2;
    s32 temp_r2_8;
    s32 temp_r2_9;
    s32 temp_r6_2;
    s32 temp_r7;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 var_r0_4;
    s32 var_r0_5;
    s32 var_r1;
    s32 var_r2;
    s32 var_r3;
    s32 var_r4;
    s32 var_r4_2;
    s8 temp_r0_4;
    s8 temp_r0_5;
    s8 temp_r3_6;
    s8 temp_r3_7;
    s8 temp_r3_8;
    s8 temp_r5;
    u16 temp_r2;
    u8 temp_r2_3;
    u8 temp_r2_6;
    u8 temp_r2_7;
    u8 temp_r3_3;
    u8 temp_r3_4;
    u8 temp_r3_5;
    void *temp_r2_4;
    void *temp_r2_5;

    temp_r2 = arg1;
    temp_r6 = arg2->spriteData;
    temp_r3 = arg0->spriteData;
    var_r4 = 0;
    if ((arg2->moveState & 0x100) || (*(temp_r3 + 0x2C + ((s32) (temp_r2 << 0x10) >> 0xD)) == -1) || (temp_r3_2 = (s16) arg3, temp_r2_2 = temp_r3_2 * 8, (*(temp_r6 + 0x2C + temp_r2_2) == -1))) {
        return 0;
    }
    if (gStageData.gameMode != 7) {
        if (temp_r3_2 == 0) {
            temp_r3_3 = arg2->unk24;
            subroutine_arg0.unk0 = (u8) (0 - temp_r3_3);
            temp_r2_3 = arg2->unk25;
            subroutine_arg0.unk1 = (u8) (0 - temp_r2_3);
            subroutine_arg0.unk2 = temp_r3_3;
            subroutine_arg0.unk3 = temp_r2_3;
        } else {
            temp_r2_4 = temp_r2_2 + (temp_r6 + 0xC);
            subroutine_arg0.unk0 = (u8) temp_r2_4->unk24;
            subroutine_arg0.unk1 = (u8) temp_r2_4->unk25;
            subroutine_arg0.unk2 = (u8) temp_r2_4->unk26;
            subroutine_arg0.unk3 = (u8) temp_r2_4->unk27;
        }
        temp_r0 = (s16) temp_r2;
        if (temp_r0 != 0) {
            temp_r2_5 = temp_r3 + 0xC + (temp_r0 * 8);
            sp4.unk0 = (u8) temp_r2_5->unk24;
            sp4.unk1 = (u8) temp_r2_5->unk25;
            sp4.unk2 = (u8) temp_r2_5->unk26;
            sp4.unk3 = (u8) temp_r2_5->unk27;
        } else {
            goto block_11;
        }
    } else {
        temp_r3_4 = arg2->unk24;
        subroutine_arg0.unk0 = (u8) (0 - temp_r3_4);
        temp_r2_6 = arg2->unk25;
        subroutine_arg0.unk1 = (u8) (0 - temp_r2_6);
        subroutine_arg0.unk2 = temp_r3_4;
        subroutine_arg0.unk3 = temp_r2_6;
block_11:
        temp_r3_5 = arg0->unk24;
        sp4.unk0 = (u8) (0 - temp_r3_5);
        temp_r2_7 = arg0->unk25;
        sp4.unk1 = (u8) (0 - temp_r2_7);
        sp4.unk2 = temp_r3_5;
        sp4.unk3 = temp_r2_7;
    }
    temp_r7 = (s32) arg2->qWorldX >> 8;
    temp_r0_2 = (s32) arg2->qWorldY >> 8;
    temp_r6_2 = (s32) arg0->qWorldX >> 8;
    temp_r0_3 = (s32) arg0->qWorldY >> 8;
    temp_r3_6 = sp4.unk0;
    temp_r2_8 = temp_r6_2 + temp_r3_6;
    temp_r0_4 = (s8) subroutine_arg0.unk0;
    sp8 = (s32) temp_r0_4;
    temp_r1 = temp_r7 + temp_r0_4;
    if (temp_r2_8 <= temp_r1) {
        if ((s32) (temp_r2_8 + (sp4.unk2 - temp_r3_6)) < temp_r1) {
            if (temp_r2_8 < temp_r1) {

            } else {
                goto block_16;
            }
        } else {
            goto block_18;
        }
    } else {
block_16:
        if ((s32) (temp_r1 + ((s8) subroutine_arg0.unk2 - sp8)) < temp_r2_8) {

        } else {
block_18:
            temp_r3_7 = sp4.unk1;
            temp_r2_9 = temp_r0_3 + temp_r3_7;
            temp_r0_5 = (s8) subroutine_arg0.unk1;
            sp8 = (s32) temp_r0_5;
            temp_r1_2 = temp_r0_5 + temp_r0_2;
            if (temp_r2_9 <= temp_r1_2) {
                if ((s32) (temp_r2_9 + (sp4.unk3 - temp_r3_7)) < temp_r1_2) {
                    if (temp_r2_9 < temp_r1_2) {

                    } else {
                        goto block_22;
                    }
                } else {
                    goto block_24;
                }
            } else {
block_22:
                if ((s32) (temp_r1_2 + ((s8) subroutine_arg0.unk3 - sp8)) < temp_r2_9) {

                } else {
block_24:
                    temp_r5 = sp4.unk0;
                    temp_r3_8 = sp4.unk2;
                    spC = ((s32) (sp4.unk1 + (s8) (u8) sp4.unk3) >> 1) + temp_r0_3;
                    if ((s32) (temp_r6_2 + ((s32) (temp_r5 + temp_r3_8) >> 1)) <= temp_r7) {
                        var_r3 = (temp_r6_2 + temp_r3_8) - (temp_r7 + (s8) subroutine_arg0.unk0);
                        var_r0 = 0x40000;
                    } else {
                        var_r3 = (temp_r6_2 + temp_r5) - (temp_r7 + (s8) subroutine_arg0.unk2);
                        var_r0 = 0x80000;
                    }
                    if (spC > temp_r0_2) {
                        var_r2 = (sp4.unk1 + temp_r0_3) - ((s8) subroutine_arg0.unk3 + temp_r0_2);
                        if (!(arg2->moveState & 0x10000)) {
                            goto block_31;
                        }
                        goto block_32;
                    }
                    var_r2 = (sp4.unk3 + temp_r0_3) - ((s8) subroutine_arg0.unk1 + temp_r0_2);
                    if (arg2->moveState & 0x10000) {
block_31:
                        var_r4_2 = var_r0 | 0x10000;
                    } else {
block_32:
                        var_r4_2 = var_r0 | 0x20000;
                    }
                    var_r1 = var_r3;
                    if (var_r3 < 0) {
                        var_r1 = 0 - var_r3;
                    }
                    var_r0_2 = var_r2;
                    if (var_r2 < 0) {
                        var_r0_2 = 0 - var_r2;
                    }
                    if (var_r1 < var_r0_2) {
                        var_r0_3 = 0xC0000;
                    } else {
                        var_r0_3 = 0x30000;
                    }
                    var_r4 = (var_r4_2 & var_r0_3) | (((var_r3 << 8) & 0xFF00) | (u8) var_r2);
                    if (0xC0000 & var_r4) {
                        if (!(var_r4 & 0xFF00)) {
                            var_r0_4 = 0xFFF300FF;
                            goto block_44;
                        }
                    } else {
                        var_r0_4 = 0xFFFF00FF;
block_44:
                        var_r4 &= var_r0_4;
                    }
                    if (0x30000 & var_r4) {
                        if (!(0xFF & var_r4)) {
                            var_r0_5 = 0xFFFCFF00;
                            goto block_49;
                        }
                    } else {
                        var_r0_5 = 0xFFFFFF00;
block_49:
                        var_r4 &= var_r0_5;
                    }
                }
            }
        }
    }
    return var_r4;
}

void ResolvePlayerSpriteCollision(Sprite *s, Player *p) {
    s32 temp_r3;
    u32 temp_r1;

    if (s->hitboxes[0].index != -1) {
        temp_r1 = p->moveState;
        temp_r3 = 0x100 & temp_r1;
        if ((temp_r3 == 0) && (0x20 & temp_r1) && (p->sprColliding == s)) {
            p->moveState = (temp_r1 & ~0x20) | 4;
            p->sprColliding = (Sprite *) temp_r3;
        }
    }
}

void sub_80213F0(Player *p) {
    Player_8014550(p);
}
#endif
