#include "global.h"
#include "core.h"
#include "game/game.h"
#include "game/save.h"
#include "game/stage.h"

// TODO: Merge with "./src/sio_stuff_x.c"

void sub_8024314();
s16 sub_802610C();

s16 sub_8023A88() {
    s32 var_r0;
    s16 var_r1;
    s16 var_r1_2;

    gStageData.playerIndex = SIO_MULTI_CNT->id;
    if (gStageData.playerIndex != 0) {
        return 0U;
    }
    var_r0 = sub_802610C();
    if (var_r0 >= 0) {
        if (gMultiSioStatusFlags & 0xC0C) {
            var_r0 = -4;
        } else {
            union MultiSioData *send = &gMultiSioSend;
            send->patStuffX.unk2 = 0;
            for(var_r1 = 0; var_r1 < 2; var_r1++)
            {
                if (CheckBit(gMultiSioStatusFlags, var_r1)) {
                    union MultiSioData *recv = &gMultiSioRecv[var_r1];
                    if(recv->patStuffX.unk0 == 0x6C01) {
                        recv->patStuffX.unk0 == 0x6C01;
                        send->patStuffX.unk2 |= 1 << var_r1;
                        send->patStuffX.unlockedCharacters = LOADED_SAVE->unlockedCharacters;
                        send->patStuffX.unlockedZones = LOADED_SAVE->unlockedZones;
                        send->patStuffX.saveGameUnk36 = LOADED_SAVE->unk36;
    
                        for(var_r1_2 = 0; var_r1_2 < (s32)ARRAY_COUNT(send->patStuffX.unk6); var_r1_2++)
                        {
                            send->patStuffX.unk6[var_r1_2] = LOADED_SAVE->unlockedStages[var_r1_2];
                        }
    
                        send->patStuffX.unkD = 1;
                        send->patStuffX.difficulty = LOADED_SAVE->difficulty;
                        send->patStuffX.disableTimeLimit = LOADED_SAVE->disableTimeLimit;
                        send->patStuffX.collectedEmeralds = LOADED_SAVE->collectedEmeralds;
                        send->patStuffX.saveGameUnk34 = LOADED_SAVE->unk34;
                    }
                }
            }

            sub_8024314();
            var_r0 = send->pat0.unk2;
        }
    }
    return var_r0;
}

#if 0
s16 sub_8023BB0(void) {
    s16 temp_r0;
    s16 temp_r2;
    s16 var_r0;
    s16 var_r1;
    u16 temp_r0_2;
    u8 temp_r4;

    gStageData.playerIndex = (u8) (SIO_MULTI_CNT->id);
    var_r0 = sub_802610C();
    if ((s32) var_r0 >= 0) {
        if (gMultiSioStatusFlags & 0xC0C) {
            return -4;
        }
        gUnknown_03001060.unk7 = gMultiSioSend.pat0.unk2;
        temp_r4 = gMultiSioSend.pat0.unk2;
        sub_8024324();
        temp_r0 = (s16) temp_r4;
        if (temp_r0 != 3) {
            return temp_r0;
        }
        var_r1 = 0;
loop_7:
        temp_r2 = var_r1;
        if (!((3 >> temp_r2) & 1) || (gMultiSioRecv[temp_r2].pat0.unk0 == 0x6C02)) {
            temp_r0_2 = temp_r2 + 1;
            var_r1 = (s16) temp_r0_2;
            if ((s32) (s16) temp_r0_2 > 1) {
                var_r0 = (s16) temp_r4 | 0x10;
                /* Duplicate return node #11. Try simplifying control flow for better match */
                return var_r0;
            }
            goto loop_7;
        }
        return 3;
    }
    return var_r0;
}

s16 sub_8023C5C(void) {
    s16 var_r0;
    u32 temp_r0;
    u8 var_r2;
    u8 var_r6;

    temp_r0 = SIO_MULTI_CNT->id;
    gStageData.playerIndex = (u8) temp_r0;
    if (temp_r0 != 0) {
        var_r0 = sub_802610C();
        if ((s32) var_r0 >= 0) {
            if (0xC0C & gMultiSioStatusFlags) {
                return -4;
            }
            if (!(gMultiSioStatusFlags & 1)) {
                goto block_5;
            }
            if (((0xFF00 & gMultiSioRecv->pat0.unk0) != 0x6C00) && (gMultiSioRecv->pat0.unk0 != 0)) {
                return -5;
            }
            gMultiSioSend.pat0.unk2 = gMultiSioRecv->pat0.unk2;
            var_r6 = gMultiSioRecv->pat0.unk2;
            if (gMultiSioRecv->pat0.unk0 == 0x6C02) {
                var_r6 |= 0x10;
            } else if (gMultiSioRecv->pat0.unk0 == 0x6C01) {
                gLoadedSaveGame.unlockedCharacters = gMultiSioRecv->pat0.unk3;
                gLoadedSaveGame.unlockedZones = gMultiSioRecv->pat3_0.unk4;
                gLoadedSaveGame.unk36 = gMultiSioRecv->pat3_0.filler5[0];
                var_r2 = 0;
                do {
                    gLoadedSaveGame.unlockedStages[var_r2] = *(&gMultiSioRecv->pat1.unk6 + var_r2);
                    var_r2 += 1;
                } while ((u32) var_r2 <= 6U);
                gStageData.zone = 1;
                gLoadedSaveGame.difficulty = gMultiSioRecv->pat0.unkE;
                gLoadedSaveGame.disableTimeLimit = gMultiSioRecv->pat0.unkF;
                gLoadedSaveGame.collectedEmeralds = gMultiSioRecv->pat4.unk10;
                gLoadedSaveGame.unk34 = (u16) gMultiSioRecv->pat4.unk11;
            }
            sub_8024314();
            var_r0 = (s16) var_r6;
            /* Duplicate return node #16. Try simplifying control flow for better match */
            return var_r0;
        }
        return var_r0;
    }
block_5:
    return 0;
}

s16 sub_8023D60(void) {
    s16 var_r0;
    u8 temp_r0;
    u8 var_r4;

    gStageData.playerIndex = (u8) (SIO_MULTI_CNT->id);
    var_r0 = sub_802610C();
    if ((s32) var_r0 >= 0) {
        if (0xC0C & gMultiSioStatusFlags) {
            return -4;
        }
        if (!(gMultiSioStatusFlags & 1)) {
            return 0;
        }
        var_r4 = 0;
        if ((u32) (u16) (gMultiSioRecv->pat0.unk0 + 0xFFFF93FE) <= 1U) {
            gMultiSioSend.pat0.unk2 = gMultiSioRecv->pat0.unk2;
            temp_r0 = 0xFF & gMultiSioRecv->pat0.unk2;
            gUnknown_03001060.unk7 = temp_r0;
            var_r4 = temp_r0;
        }
        if (gMultiSioRecv->pat0.unk0 == 0x6C03) {
            var_r4 = (u8) (u16) ((s16) var_r4 | 0x10);
        }
        sub_8024324();
        var_r0 = (s16) var_r4;
        /* Duplicate return node #10. Try simplifying control flow for better match */
        return var_r0;
    }
    return var_r0;
}

s16 sub_8023E04(void) {
    s16 var_r0;
    s16 var_r4;

    var_r0 = sub_802610C();
    if ((s32) var_r0 >= 0) {
        if (0xC0C & gMultiSioStatusFlags) {
            return -4;
        }
        if (!(gMultiSioStatusFlags & 1)) {
            return 0;
        }
        var_r4 = 0;
        if ((u32) (u16) (gMultiSioRecv->pat0.unk0 + 0xFFFF93FD) <= 1U) {
            var_r4 = gMultiSioRecv->pat3_0.unk4 + 1;
        }
        if (gMultiSioRecv->pat0.unk0 == 0x6C04) {
            var_r4 = (s16) (u16) (var_r4 | 0x10);
        }
        sub_8024354(1U, 0xFFU);
        var_r0 = var_r4;
        /* Duplicate return node #10. Try simplifying control flow for better match */
        return var_r0;
    }
    return var_r0;
}

s16 sub_8023E80(void) {
    s16 var_r0;
    s16 var_r4;

    var_r0 = sub_802610C();
    if ((s32) var_r0 >= 0) {
        if (0xC0C & gMultiSioStatusFlags) {
            return -4;
        }
        if (!(gMultiSioStatusFlags & 2)) {
            return 0;
        }
        var_r4 = 0;
        if ((u32) (u16) (gMultiSioRecv[1].pat0.unk0 + 0xFFFF93F9) <= 1U) {
            var_r4 = gMultiSioRecv[1].pat3_0.unk4 + 1;
        }
        if (gMultiSioRecv[1].pat0.unk0 == 0x6C08) {
            var_r4 = (s16) (u16) (var_r4 | 0x10);
        }
        sub_8024394(0U, 0xFFU);
        var_r0 = var_r4;
        /* Duplicate return node #10. Try simplifying control flow for better match */
        return var_r0;
    }
    return var_r0;
}

s16 sub_8023EFC(void) {
    s16 var_r0;
    s16 var_r4;

    var_r0 = sub_802610C();
    if ((s32) var_r0 >= 0) {
        if (0xC0C & gMultiSioStatusFlags) {
            return -4;
        }
        if (!(gMultiSioStatusFlags & 2)) {
            return 0;
        }
        var_r4 = 0;
        if ((gMultiSioRecv[1].pat0.unk0 == 0x6C08) || (gMultiSioRecv[1].pat0.unk0 == 0x6C0A)) {
            var_r4 = 0x10;
        }
        sub_80243C4(0U, 0xFFU);
        var_r0 = var_r4;
        /* Duplicate return node #9. Try simplifying control flow for better match */
        return var_r0;
    }
    return var_r0;
}

s16 sub_8023F60(void) {
    s16 var_r0;
    u8 var_r5;

    var_r0 = sub_802610C();
    if ((s32) var_r0 >= 0) {
        if (0xC0C & gMultiSioStatusFlags) {
            return -4;
        }
        if (!(gMultiSioStatusFlags & 1)) {
            return 0;
        }
        var_r5 = 0;
        if ((u32) (u16) (gMultiSioRecv->pat0.unk0 + 0xFFFF93F5) <= 1U) {
            var_r5 = gMultiSioRecv->pat5.filler3[1];
        }
        sub_80243E4(var_r5);
        if (gMultiSioRecv->pat0.unk0 == 0x6C0C) {
            var_r5 = (u8) (u16) ((s16) var_r5 | 0x1000);
        }
        var_r0 = (s16) var_r5;
        /* Duplicate return node #10. Try simplifying control flow for better match */
        return var_r0;
    }
    return var_r0;
}

s16 sub_8023FE0(void) {
    s16 var_r0;
    s16 var_r4;

    var_r0 = sub_802610C();
    if ((s32) var_r0 >= 0) {
        if (0xC0C & gMultiSioStatusFlags) {
            return -4;
        }
        if (!(gMultiSioStatusFlags & 1)) {
            return 0;
        }
        var_r4 = 0;
        if (gMultiSioRecv->pat0.unk0 == 0x6C0C) {
            var_r4 = gMultiSioRecv->pat5.filler3[1] | 0x1000;
        }
        sub_80243F8(gMultiSioRecv->pat5.filler3[1]);
        var_r0 = var_r4;
        /* Duplicate return node #8. Try simplifying control flow for better match */
        return var_r0;
    }
    return var_r0;
}

s16 sub_8024040(void) {
    u16 temp_r4;

    temp_r4 = sub_8025D58();
    sub_8024304();
    gUnknown_03001060.unk7 = 0;
    return (s16) temp_r4;
}

void sub_8024068(void) {
    sub_8024334();
}

s16 sub_8024074(u8 arg0) {
    s16 var_r0;

    var_r0 = sub_802610C();
    if ((s32) var_r0 >= 0) {
        if (!(gMultiSioStatusFlags & 0xC0C)) {
            sub_8024354(0U, arg0);
            return 0;
        }
        var_r0 = -4;
        /* Duplicate return node #4. Try simplifying control flow for better match */
        return var_r0;
    }
    return var_r0;
}

s16 sub_80240B4(u8 arg0) {
    s16 var_r0;

    var_r0 = sub_802610C();
    if ((s32) var_r0 >= 0) {
        if (!(gMultiSioStatusFlags & 0xC0C)) {
            sub_8024374(0U, arg0);
            return 0;
        }
        var_r0 = -4;
        /* Duplicate return node #4. Try simplifying control flow for better match */
        return var_r0;
    }
    return var_r0;
}

s16 sub_80240F4(void) {
    s16 var_r0;

    var_r0 = sub_802610C();
    if ((s32) var_r0 >= 0) {
        if (0xC0C & gMultiSioStatusFlags) {
            return -4;
        }
        if (gMultiSioStatusFlags & 1) {
            sub_8024374(1U, 0xFFU);
        }
        var_r0 = 0;
        /* Duplicate return node #6. Try simplifying control flow for better match */
        return var_r0;
    }
    return var_r0;
}

s16 sub_8024130(void) {
    s16 var_r0;
    s16 var_r4;

    var_r0 = sub_802610C();
    if ((s32) var_r0 >= 0) {
        if (0xC0C & gMultiSioStatusFlags) {
            return -4;
        }
        if (!(gMultiSioStatusFlags & 2)) {
            return 0;
        }
        var_r4 = 0;
        if (gMultiSioRecv[1].pat0.unk0 == 0x6C0A) {
            var_r4 = 0x10;
        }
        sub_80243B4();
        var_r0 = var_r4;
        /* Duplicate return node #8. Try simplifying control flow for better match */
        return var_r0;
    }
    return var_r0;
}

s16 sub_8024188(u8 arg0) {
    s16 var_r0;

    var_r0 = sub_802610C();
    if ((s32) var_r0 >= 0) {
        sub_8024394(1U, arg0);
        var_r0 = 0;
    }
    return var_r0;
}

s16 sub_80241AC(u8 arg0) {
    s16 var_r0;
    s16 var_r4;

    var_r0 = sub_802610C();
    if ((s32) var_r0 >= 0) {
        if (gMultiSioStatusFlags & 0xC0C) {
            return -4;
        }
        var_r4 = 0;
        if ((gMultiSioRecv->pat0.unk0 == 0x6C08) || (gMultiSioRecv->pat0.unk0 == 0x6C0B)) {
            var_r4 = 0x10;
        }
        sub_80243C4(1U, arg0);
        var_r0 = var_r4;
        /* Duplicate return node #7. Try simplifying control flow for better match */
        return var_r0;
    }
    return var_r0;
}

s16 sub_8024208(void) {
    s16 var_r0;
    s16 var_r4;

    var_r0 = sub_802610C();
    if ((s32) var_r0 >= 0) {
        if (gMultiSioStatusFlags & 0xC0C) {
            return -4;
        }
        var_r4 = 0;
        if (gMultiSioRecv->pat0.unk0 == 0x6C0A) {
            var_r4 = 0x10;
        }
        sub_80243B4();
        var_r0 = var_r4;
        /* Duplicate return node #6. Try simplifying control flow for better match */
        return var_r0;
    }
    return var_r0;
}

s16 sub_8024254(u8 arg0) {
    s16 var_r0;

    var_r0 = sub_802610C();
    if ((s32) var_r0 >= 0) {
        if (0xC0C & gMultiSioStatusFlags) {
            return -4;
        }
        if (gMultiSioStatusFlags & 2) {
            sub_80243E4(arg0);
        }
        var_r0 = 0;
        /* Duplicate return node #6. Try simplifying control flow for better match */
        return var_r0;
    }
    return var_r0;
}

s16 sub_8024298(u8 arg0) {
    s16 var_r0;
    s16 var_r5;

    var_r5 = saved_reg_r5;
    var_r0 = sub_802610C();
    if ((s32) var_r0 >= 0) {
        if (0xC0C & gMultiSioStatusFlags) {
            return -4;
        }
        if (!(gMultiSioStatusFlags & 2)) {
            return 0;
        }
        sub_80243F8(arg0);
        if (gMultiSioRecv[1].pat0.unk0 == 0x6C0C) {
            var_r5 = (s16) (u16) ((s16) saved_reg_r5 | 0x1000);
        }
        var_r0 = var_r5;
        /* Duplicate return node #8. Try simplifying control flow for better match */
        return var_r0;
    }
    return var_r0;
}

void sub_8024304(void) {
    gMultiSioSend.pat0.unk0 = 0;
    gMultiSioSend.pat0.unk2 = 0;
}

void sub_8024314(void) {
    gMultiSioSend.pat0.unk0 = 0x6C01;
}

void sub_8024324(void) {
    gMultiSioSend.pat0.unk0 = 0x6C02;
}

void sub_8024334(void) {
    gMultiSioSend.pat0.unk0 = 0x6C03;
    gMultiSioSend.pat3_0.unk4 = 0;
    gMultiSioSend.pat0.unk3 = 0;
    gMultiSioSend.pat3_0.filler5[0] = 0xFF;
    gMultiSioSend.pat5.filler3[0] = -1U;
}

void sub_8024354(u8 arg0, u8 arg1) {
    u8 temp_r1;

    temp_r1 = arg1;
    gMultiSioSend.pat0.unk0 = 0x6C03;
    gMultiSioSend.pat3_0.unk4 = temp_r1;
    gMultiSioSend.pat3_0.filler5[arg0] = temp_r1;
}

void sub_8024374(u8 arg0, u8 arg1) {
    u8 temp_r1;

    temp_r1 = arg1;
    gMultiSioSend.pat0.unk0 = 0x6C04;
    gMultiSioSend.pat3_0.unk4 = temp_r1;
    gMultiSioSend.pat3_0.filler5[arg0] = temp_r1;
}

void sub_8024394(u8 arg0, u8 arg1) {
    u8 temp_r1;

    temp_r1 = arg1;
    gMultiSioSend.pat0.unk0 = 0x6C07;
    gMultiSioSend.pat3_0.unk4 = temp_r1;
    gMultiSioSend.pat3_0.filler5[arg0] = temp_r1;
}

void sub_80243B4(void) {
    gMultiSioSend.pat0.unk0 = 0x6C0A;
}

void sub_80243C4(u8 arg0, u8 arg1) {
    u8 temp_r1;

    temp_r1 = arg1;
    gMultiSioSend.pat0.unk0 = 0x6C08;
    gMultiSioSend.pat3_0.unk4 = temp_r1;
    gMultiSioSend.pat3_0.filler5[arg0] = temp_r1;
}

void sub_80243E4(u8 arg0) {
    gMultiSioSend.pat0.unk0 = 0x6C0B;
    gMultiSioSend.pat5.filler3[1] = arg0;
}

void sub_80243F8(u8 arg0) {
    gMultiSioSend.pat0.unk0 = 0x6C0C;
    gMultiSioSend.pat5.filler3[1] = arg0;
}

u8 sub_802440C(? arg3) {
    s16 temp_r0_4;
    s16 temp_r3;
    s16 var_r0;
    s16 var_r1;
    s16 var_r1_2;
    s32 temp_r4;
    u16 temp_r0_3;
    u32 temp_r0;
    u32 temp_r0_2;
    union MultiSioData *temp_r2;

    temp_r0 = SIO_MULTI_CNT->id;
    gStageData.playerIndex = (u8) temp_r0;
    if (temp_r0 != 0) {
        return 0U;
    }
    var_r0 = sub_802610C();
    if ((s32) var_r0 >= 0) {
        gMultiSioSend.pat0.unk2 = (u8) temp_r0;
        var_r1 = 0;
        do {
            temp_r3 = var_r1;
            temp_r4 = 1 << temp_r3;
            if (gMultiSioStatusFlags & temp_r4) {
                temp_r2 = &gMultiSioRecv[temp_r3];
                if (temp_r2->pat0.unk0 == 0x6601) {
                    gMultiSioSend.pat0.unk2 |= temp_r4;
                    *((temp_r3 * 4) + &gUnknown_0300106C) = temp_r2->pat0.unk4;
                    var_r1_2 = 0;
                    do {
                        temp_r0_4 = var_r1_2;
                        *((temp_r0_4 * 2) + (temp_r3 * 0xC) + &gUnknown_0300107C) = temp_r2->pat0.unk8[temp_r0_4];
                        temp_r0_3 = temp_r0_4 + 1;
                        var_r1_2 = (s16) temp_r0_3;
                    } while ((s32) (s16) temp_r0_3 <= 5);
                }
            }
            temp_r0_2 = (var_r1 << 0x10) + 0x10000;
            var_r1 = (s16) (temp_r0_2 >> 0x10);
        } while ((s32) ((s32) temp_r0_2 >> 0x10) <= 3);
        sub_8025BA0();
        var_r0 = (s16) gMultiSioSend.pat0.unk2;
    }
    return (u8) var_r0;
}

u8 sub_80244E4(void) {
    s16 temp_r2;
    s16 temp_r3;
    s16 var_r0;
    s16 var_r1;
    u16 temp_r0_2;
    u8 temp_r0;

    gStageData.playerIndex = (u8) (SIO_MULTI_CNT->id);
    var_r0 = sub_802610C();
    if ((s32) var_r0 >= 0) {
        temp_r0 = gMultiSioStatusFlags & 0xF;
        gMultiSioSend.pat0.unk2 = temp_r0;
        gUnknown_03001060.unk7 = temp_r0;
        sub_8025BB0();
        if ((temp_r0 != 3) && (temp_r0 != 7) && (temp_r0 != 0xF)) {
            return temp_r0;
        }
        var_r1 = 0;
        temp_r3 = (s16) temp_r0;
loop_7:
        temp_r2 = var_r1;
        if (!((temp_r3 >> temp_r2) & 1) || (gMultiSioRecv[temp_r2].pat0.unk0 == 0x6602)) {
            temp_r0_2 = temp_r2 + 1;
            var_r1 = (s16) temp_r0_2;
            if ((s32) (s16) temp_r0_2 > 3) {
                var_r0 = (s16) temp_r0 | 0x10;
                /* Duplicate return node #11. Try simplifying control flow for better match */
                return (u8) var_r0;
            }
            goto loop_7;
        }
        return (u8) temp_r3;
    }
    return (u8) var_r0;
}

s16 sub_8024584(void) {
    s16 temp_r0;
    s16 temp_r0_5;
    s16 temp_r3;
    s16 var_r1;
    s16 var_r1_2;
    u16 temp_r0_4;
    u32 temp_r0_2;
    u32 temp_r0_3;
    u8 var_r4;
    union MultiSioData *temp_r2;

    temp_r0_2 = SIO_MULTI_CNT->id;
    gStageData.playerIndex = (u8) temp_r0_2;
    if (temp_r0_2 != 0) {
        temp_r0 = sub_802610C();
        if ((s32) temp_r0 < 0) {
            return temp_r0;
        }
        var_r1 = 0;
        do {
            temp_r3 = var_r1;
            if (gMultiSioStatusFlags & (1 << temp_r3)) {
                temp_r2 = &gMultiSioRecv[temp_r3];
                if ((u32) (u16) (temp_r2->pat0.unk0 + 0xFFFF99FF) <= 1U) {
                    *((temp_r3 * 4) + &gUnknown_0300106C) = temp_r2->pat0.unk4;
                    var_r1_2 = 0;
                    do {
                        temp_r0_5 = var_r1_2;
                        *((temp_r0_5 * 2) + (temp_r3 * 0xC) + &gUnknown_0300107C) = temp_r2->pat0.unk8[temp_r0_5];
                        temp_r0_4 = temp_r0_5 + 1;
                        var_r1_2 = (s16) temp_r0_4;
                    } while ((s32) (s16) temp_r0_4 <= 5);
                }
            }
            temp_r0_3 = (var_r1 << 0x10) + 0x10000;
            var_r1 = (s16) (temp_r0_3 >> 0x10);
        } while ((s32) ((s32) temp_r0_3 >> 0x10) <= 3);
        if (!(gMultiSioStatusFlags & 1)) {
            goto block_10;
        }
        var_r4 = 0;
        if (((0xFF00 & gMultiSioRecv->pat0.unk0) != 0x6600) && (gMultiSioRecv->pat0.unk0 != 0)) {
            return -5;
        }
        if ((u32) (u16) (gMultiSioRecv->pat0.unk0 + 0xFFFF99FF) <= 1U) {
            gMultiSioSend.pat0.unk2 = gMultiSioRecv->pat0.unk2;
            var_r4 = gMultiSioRecv->pat0.unk2;
        }
        if (gMultiSioRecv->pat0.unk0 == 0x6602) {
            var_r4 = (u8) (u16) ((s16) var_r4 | 0x10);
        }
        sub_8025BA0();
        return (s16) var_r4;
    }
block_10:
    return 0;
}

s16 sub_80246B4(void) {
    s16 temp_r0_3;
    s16 temp_r3;
    s16 var_r0;
    s16 var_r1;
    s16 var_r1_2;
    u16 temp_r0_2;
    u32 temp_r0;
    u8 temp_r0_4;
    u8 var_r4;
    union MultiSioData *temp_r2;

    gStageData.playerIndex = (u8) (SIO_MULTI_CNT->id);
    var_r0 = sub_802610C();
    if ((s32) var_r0 >= 0) {
        var_r1 = 0;
        do {
            temp_r3 = var_r1;
            if (gMultiSioStatusFlags & (1 << temp_r3)) {
                temp_r2 = &gMultiSioRecv[temp_r3];
                if ((u32) (u16) (temp_r2->pat0.unk0 + 0xFFFF99FF) <= 1U) {
                    *((temp_r3 * 4) + &gUnknown_0300106C) = temp_r2->pat0.unk4;
                    var_r1_2 = 0;
                    do {
                        temp_r0_3 = var_r1_2;
                        *((temp_r0_3 * 2) + (temp_r3 * 0xC) + &gUnknown_0300107C) = temp_r2->pat0.unk8[temp_r0_3];
                        temp_r0_2 = temp_r0_3 + 1;
                        var_r1_2 = (s16) temp_r0_2;
                    } while ((s32) (s16) temp_r0_2 <= 5);
                }
            }
            temp_r0 = (var_r1 << 0x10) + 0x10000;
            var_r1 = (s16) (temp_r0 >> 0x10);
        } while ((s32) ((s32) temp_r0 >> 0x10) <= 3);
        if (!(1 & gMultiSioStatusFlags)) {
            return 0;
        }
        var_r4 = 0;
        if ((u32) (u16) (gMultiSioRecv->pat0.unk0 + 0xFFFF99FE) <= 1U) {
            temp_r0_4 = 0xF & gMultiSioStatusFlags;
            gMultiSioRecv->pat0.unk2 = temp_r0_4;
            gMultiSioSend.pat0.unk2 = temp_r0_4;
            gUnknown_03001060.unk7 = temp_r0_4;
            var_r4 = temp_r0_4;
        }
        if (gMultiSioRecv->pat0.unk0 == 0x6603) {
            var_r4 = (u8) (u16) ((s16) var_r4 | 0x10);
        }
        sub_8025BB0();
        var_r0 = (s16) var_r4;
        /* Duplicate return node #14. Try simplifying control flow for better match */
        return var_r0;
    }
    return var_r0;
}

u16 sub_80247D4(void) {
    s32 sp0;
    s16 temp_r2;
    s16 temp_r3;
    s16 var_r2;
    s16 var_r2_2;
    u16 temp_r0;
    u16 temp_r3_2;
    u16 var_r5;
    u32 temp_r0_2;
    u8 *temp_r1;
    u8 *temp_r1_2;
    u8 *temp_r1_3;
    u8 *var_r2_3;
    u8 temp_r0_3;
    u8 temp_r4;
    u8 var_r0;
    u8 var_r7;
    union MultiSioData *var_r1;

    sp0 = (s32) gUnknown_03001060.unk7;
    var_r7 = 0;
    var_r5 = 0;
    var_r2 = 0;
    do {
        temp_r2 = var_r2;
        temp_r1 = &(&gMultiSioSend.pat0.unkF)[temp_r2];
        if (*temp_r1 != 0xFF) {
            var_r7 |= 1 << *temp_r1;
        }
        temp_r0 = temp_r2 + 1;
        var_r2 = (s16) temp_r0;
    } while ((s32) (s16) temp_r0 <= 3);
    var_r2_2 = 0;
    do {
        temp_r3 = var_r2_2;
        if ((sp0 >> temp_r3) & 1) {
            if (temp_r3 == 0) {
                var_r1 = &gMultiSioSend;
            } else {
                var_r1 = &gMultiSioRecv[temp_r3];
            }
            temp_r0_3 = var_r1->pat0.unk3;
            temp_r3_2 = var_r1->pat0.unk0;
            if ((temp_r3_2 == 0x6604) || (temp_r3_2 == 0x6608)) {
                temp_r1_2 = &(&var_r1->pat0.unkF)[temp_r0_3];
                (&gMultiSioSend.pat0.unkF)[temp_r0_3] = *temp_r1_2;
                *(temp_r0_3 + &gUnknown_030010AC) = 0xFF & *temp_r1_2;
            } else {
                temp_r1_3 = &(&var_r1->pat0.unkF)[temp_r0_3];
                if (*temp_r1_3 == 0xFF) {
                    var_r2_3 = &(&gMultiSioSend.pat0.unkF)[temp_r0_3];
                    var_r0 = 0xFF | *var_r2_3;
                    goto block_17;
                }
                temp_r4 = *temp_r1_3;
                if (((s32) var_r7 >> temp_r4) & 1) {
                    var_r5 |= 0x10 << temp_r0_3;
                } else {
                    var_r5 |= 1 << temp_r0_3;
                    var_r2_3 = temp_r0_3 + &gUnknown_030010AC;
                    (&gMultiSioSend.pat0.unkF)[temp_r0_3] = temp_r4;
                    var_r0 = 0xFF & *temp_r1_3;
block_17:
                    *var_r2_3 = var_r0;
                }
            }
        }
        temp_r0_2 = (var_r2_2 << 0x10) + 0x10000;
        var_r2_2 = (s16) (temp_r0_2 >> 0x10);
    } while ((s32) ((s32) temp_r0_2 >> 0x10) <= 3);
    return var_r5;
}

u16 sub_80248F4(void) {
    s16 temp_r3;
    s16 var_r2;
    u16 var_r4;
    u32 temp_r0;
    u8 *temp_r1;
    u8 *temp_r3_2;
    u8 temp_r2;
    union MultiSioData *temp_r0_2;

    var_r4 = 0;
    var_r2 = 0;
    do {
        temp_r3 = var_r2;
        if (((s32) gUnknown_03001060.unk7 >> temp_r3) & 1) {
            temp_r0_2 = &gMultiSioRecv[temp_r3];
            temp_r2 = temp_r0_2->pat0.unk3;
            if (temp_r0_2->pat0.unk0 == 0x6605) {
                var_r4 |= 0x100 << temp_r2;
                temp_r3_2 = &gUnknown_03001060.unk4C[temp_r2];
                temp_r1 = &(&gMultiSioSend.pat0.unkF)[temp_r2];
                *temp_r1 |= 0xFF;
                *temp_r3_2 |= 0xFF;
            }
        }
        temp_r0 = (var_r2 << 0x10) + 0x10000;
        var_r2 = (s16) (temp_r0 >> 0x10);
    } while ((s32) ((s32) temp_r0 >> 0x10) <= 3);
    return var_r4;
}

s16 sub_8024984(u8 arg0) {
    s16 temp_r0_2;
    s16 temp_r2;
    s16 var_r0;
    s16 var_r3;
    s16 var_r3_2;
    u16 temp_r0;
    u16 temp_r0_3;
    u8 temp_r4;
    u8 temp_r5;
    u8 temp_r6;

    temp_r5 = arg0;
    temp_r6 = gUnknown_03001060.unk7;
    temp_r4 = gStageData.playerIndex;
    var_r0 = sub_802610C();
    if ((s32) var_r0 >= 0) {
        (&gMultiSioSend.pat0.unkF)[temp_r4] = temp_r5;
        gUnknown_03001060.unk4C[0] = temp_r5;
        var_r3 = 0;
        do {
            temp_r0_2 = var_r3;
            (&gMultiSioSend.pat0.unkF)[temp_r0_2] = gUnknown_03001060.unk4C[temp_r0_2];
            temp_r0 = temp_r0_2 + 1;
            var_r3 = (s16) temp_r0;
        } while ((s32) (s16) temp_r0 <= 3);
        gMultiSioSend.pat0.unk8[2] = 0;
        gMultiSioSend.pat0.unk8[2] |= sub_80247D4();
        gMultiSioSend.pat0.unk8[2] |= sub_80248F4();
        sub_8025714(temp_r5);
        if ((temp_r6 != 3) && (temp_r6 != 7) && (temp_r6 != 0xF)) {
            goto block_6;
        }
        var_r3_2 = 0;
loop_8:
        temp_r2 = var_r3_2;
        if (!(((s32) temp_r6 >> temp_r2) & 1) || (gMultiSioRecv[temp_r2].pat0.unk0 == 0x6604)) {
            temp_r0_3 = temp_r2 + 1;
            var_r3_2 = (s16) temp_r0_3;
            if ((s32) (s16) temp_r0_3 > 3) {
                var_r0 = 2;
                /* Duplicate return node #12. Try simplifying control flow for better match */
                return var_r0;
            }
            goto loop_8;
        }
block_6:
        return 0;
    }
    return var_r0;
}

s16 sub_8024A4C(u16 arg0) {
    s16 temp_r0_2;
    s16 var_r0;
    s16 var_r3;
    u16 temp_r0;

    var_r0 = sub_802610C();
    if ((s32) var_r0 >= 0) {
        if ((gMultiSioStatusFlags & 1) && ((u32) (u16) (gMultiSioRecv->pat0.unk0 + 0xFFFF99FD) <= 1U)) {
            var_r3 = 0;
            do {
                temp_r0_2 = var_r3;
                (&gMultiSioSend.pat0.unkF)[temp_r0_2] = (&gMultiSioRecv->pat0.unkF)[temp_r0_2];
                temp_r0 = temp_r0_2 + 1;
                var_r3 = (s16) temp_r0;
            } while ((s32) (s16) temp_r0 <= 3);
        }
        sub_8025BEC((u8) arg0);
        var_r0 = 0;
    }
    return var_r0;
}

s16 sub_8024AC0(u16 arg0) {
    s16 temp_r0_3;
    s16 var_r0;
    s16 var_r1;
    s16 var_r5;
    u16 temp_r0_2;
    u32 temp_r0;

    var_r5 = 0;
    temp_r0 = SIO_MULTI_CNT->id;
    gStageData.playerIndex = (u8) temp_r0;
    var_r0 = sub_802610C();
    if ((s32) var_r0 >= 0) {
        if ((gMultiSioStatusFlags & 1) && (((u32) (u16) (gMultiSioRecv->pat0.unk0 + 0xFFFF99FD) <= 1U) || (gMultiSioRecv->pat0.unk0 == 0x6606))) {
            var_r1 = 0;
            do {
                temp_r0_3 = var_r1;
                *(temp_r0_3 + &gUnknown_030010AC) = (&gMultiSioRecv->pat0.unkF)[temp_r0_3];
                temp_r0_2 = temp_r0_3 + 1;
                var_r1 = (s16) temp_r0_2;
            } while ((s32) (s16) temp_r0_2 <= 3);
            if (!(((s32) gMultiSioRecv->pat0.unk8[2] >> temp_r0) & 1) && (gMultiSioRecv->pat0.unk8[2] & (0x10 << temp_r0))) {
                (&gMultiSioSend.pat0.unkF)[temp_r0] = 0xFF;
                return 2;
            }
            var_r5 = 1;
            goto block_10;
        }
block_10:
        sub_8025C20((u8) arg0);
        var_r0 = var_r5;
        /* Duplicate return node #11. Try simplifying control flow for better match */
        return var_r0;
    }
    return var_r0;
}

s16 sub_8024B84(u16 arg0) {
    u32 sp0;
    s16 temp_r1_2;
    s16 var_r0;
    s16 var_r0_2;
    s16 var_r0_3;
    s16 var_sl;
    u16 temp_r1;
    u32 temp_r0;
    u8 *temp_r2;

    var_sl = 0;
    temp_r0 = SIO_MULTI_CNT->id;
    gStageData.playerIndex = (u8) temp_r0;
    var_r0 = sub_802610C();
    if ((s32) var_r0 >= 0) {
        sp0 = arg0 << 0x18;
        if ((gMultiSioStatusFlags & 1) && ((u32) (u16) (gMultiSioRecv->pat0.unk0 + 0xFFFF99FD) <= 1U)) {
            var_r0_2 = 0;
            do {
                temp_r1_2 = var_r0_2;
                temp_r2 = &(&gMultiSioRecv->pat0.unkF)[temp_r1_2];
                (&gMultiSioSend.pat0.unkF)[temp_r1_2] = *temp_r2;
                *(temp_r1_2 + &gUnknown_030010AC) = 0xFF & *temp_r2;
                temp_r1 = temp_r1_2 + 1;
                var_r0_2 = (s16) temp_r1;
            } while ((s32) (s16) temp_r1 <= 3);
            if ((0x100 << temp_r0) & gMultiSioRecv->pat0.unk8[2]) {
                var_r0_3 = 1;
                goto block_9;
            }
            if (gMultiSioRecv->pat0.unk8[2] & (0x1000 << temp_r0)) {
                var_r0_3 = 2;
block_9:
                var_sl = var_r0_3;
            }
        }
        sub_8025C64(sp0 >> 0x18);
        var_r0 = var_sl;
    }
    return var_r0;
}

s16 sub_8024C68(u16 arg0) {
    s16 temp_r0;
    s16 temp_r0_6;
    s16 var_r0;
    s16 var_r3_2;
    s16 var_r5;
    u16 temp_r0_2;
    u16 temp_r0_5;
    u16 temp_r1_2;
    u32 temp_r0_3;
    u32 var_r3;
    u8 temp_r0_4;
    u8 temp_r1;

    temp_r0_2 = arg0;
    var_r5 = 0;
    temp_r0_3 = SIO_MULTI_CNT->id;
    gStageData.playerIndex = (u8) temp_r0_3;
    temp_r0 = sub_802610C();
    if ((s32) temp_r0 < 0) {
        return temp_r0;
    }
    temp_r1 = temp_r0_3 - 2;
    temp_r0_4 = temp_r1;
    var_r3 = temp_r0_3;
    if ((u32) temp_r0_4 <= 1U) {
        var_r3 = (u32) temp_r0_4;
    }
    gUnknown_03001060.unk4C[var_r3] = (u8) temp_r0_2;
    var_r3_2 = 0;
    do {
        temp_r0_6 = var_r3_2;
        (&gMultiSioSend.pat0.unkF)[temp_r0_6] = gUnknown_03001060.unk4C[temp_r0_6];
        temp_r0_5 = temp_r0_6 + 1;
        var_r3_2 = (s16) temp_r0_5;
    } while ((s32) (s16) temp_r0_5 <= 3);
    if (gMultiSioStatusFlags & 1) {
        if (temp_r0_3 <= 1U) {
            if (((u32) (u16) (gMultiSioRecv->pat0.unk0 + 0xFFFF99FD) <= 1U) || (gMultiSioRecv->pat0.unk0 == 0x6606)) {
                if (gMultiSioRecv->pat0.unk0 == 0x6604) {
                    var_r5 = 1;
                }
                if (gMultiSioRecv->pat0.unk0 == 0x6606) {
                    goto block_13;
                }
            }
        } else if ((u32) temp_r1 <= 1U) {
            temp_r1_2 = gMultiSioRecv[temp_r0_3 & 1].pat0.unk0;
            if (((u32) (u16) (temp_r1_2 + 0xFFFF99F9) > 1U) && (temp_r1_2 != 0x660A)) {
                var_r5 = 1;
            } else {
block_13:
                var_r5 = 2;
            }
        }
    }
    if (temp_r0_3 <= 1U) {
        sub_8025714((u8) temp_r0_2);
    } else {
        sub_8025714(0xFFU);
    }
    switch (temp_r0_3) {                            /* irregular */
    case 1:
        var_r0 = 0;
        if (var_r5 == 2) {
            return 2;
        }
        return var_r0;
    case 3:
        if (var_r5 == 2) {
            return 2;
        }
        if ((gMultiSioRecv[1].pat0.unk0 == 0x6604) || (gMultiSioRecv[1].pat0.unk0 == 0x6606)) {
            return 1;
        }
        return 0;
    default:
    case 2:
        var_r0 = var_r5;
        /* Duplicate return node #33. Try simplifying control flow for better match */
        return var_r0;
    }
}

s16 sub_8024DC8(void) {
    s16 var_r0;
    s16 var_r4;

    var_r4 = 0;
    gStageData.playerIndex = (u8) (SIO_MULTI_CNT->id);
    var_r0 = sub_802610C();
    if ((s32) var_r0 >= 0) {
        if ((gMultiSioStatusFlags & 1) && (gMultiSioRecv->pat0.unk0 == 0x6606)) {
            var_r4 = 1;
        }
        sub_8025770();
        var_r0 = var_r4;
    }
    return var_r0;
}

s16 sub_8024E1C(u8 arg0) {
    s16 var_r0;
    s32 var_r0_2;
    u16 temp_r1;
    u16 temp_r2;
    u8 temp_r0;
    u8 temp_r5;
    u8 temp_r6;
    u8 var_r4;
    union MultiSioData *var_r1;
    union MultiSioData *var_r1_2;
    union MultiSioData *var_r1_3;

    temp_r0 = arg0;
    temp_r5 = gUnknown_03001060.unk7;
    temp_r6 = gStageData.playerIndex;
    var_r0 = sub_802610C();
    if ((s32) var_r0 >= 0) {
        if (((u32) temp_r6 <= 1U) && !((4 << temp_r6) & temp_r5)) {
            var_r4 = temp_r6 + 2;
            (&gMultiSioSend.pat0.unkF)[var_r4] = temp_r0;
        } else {
            var_r4 = temp_r6;
        }
        gMultiSioSend.pat0.unk8[2] = 0;
        gMultiSioSend.pat0.unk8[2] |= sub_80247D4();
        gMultiSioSend.pat0.unk8[2] |= sub_80248F4();
        sub_8025874(temp_r0);
        if ((temp_r5 == 3) || (temp_r5 == 7) || (temp_r5 == 0xF)) {
            if (((u32) temp_r6 <= 1U) && (var_r4 != temp_r6)) {
                if (var_r4 == 2) {
                    var_r0_2 = (temp_r5 >> 3) & 1;
                    var_r1 = &gMultiSioRecv[1];
                } else {
                    var_r0_2 = (temp_r5 >> 2) & 1;
                    var_r1 = gMultiSioRecv;
                }
                if (var_r0_2 != 0) {
                    var_r1 += 0x30;
                }
                temp_r1 = var_r1->pat0.unk0;
                if ((temp_r1 != 0x6608) && (temp_r1 != 0x660B)) {
                    goto block_24;
                }
                goto block_25;
            }
            var_r1_2 = &gMultiSioRecv[3];
            if (var_r4 == 0) {
                var_r1_2 -= 0x18;
            }
            temp_r2 = var_r1_2->pat0.unk0;
            if (temp_r2 == 0x660B) {
                var_r1_3 = &gMultiSioRecv[1];
                if ((temp_r5 >> 3) & 1) {
                    var_r1_3 += 0x30;
                }
                if (var_r1_3->pat0.unk0 != temp_r2) {
                    goto block_24;
                }
block_25:
                var_r0 = 1;
                /* Duplicate return node #26. Try simplifying control flow for better match */
                return var_r0;
            }
            goto block_24;
        }
block_24:
        return 0;
    }
    return var_r0;
}

s16 sub_8024F1C(u8 arg0) {
    s16 var_r0;
    u32 temp_r0;
    u32 var_r5;
    u8 *temp_r1;

    temp_r0 = SIO_MULTI_CNT->id;
    gStageData.playerIndex = (u8) temp_r0;
    var_r5 = temp_r0;
    if (var_r5 <= 1U) {
        var_r5 += 2;
    }
    var_r0 = sub_802610C();
    if ((s32) var_r0 >= 0) {
        temp_r1 = &(&gMultiSioSend.pat0.unkF)[var_r5];
        *temp_r1 |= 0xFF;
        gMultiSioSend.pat0.unk8[2] = 0;
        gMultiSioSend.pat0.unk8[2] |= sub_80247D4();
        gMultiSioSend.pat0.unk8[2] |= sub_80248F4();
        sub_8025C8C(arg0);
        var_r0 = 1;
    }
    return var_r0;
}

s16 sub_8024F84(u8 arg0) {
    s16 temp_r0_2;
    s16 var_r0;
    s16 var_r1;
    u16 temp_r0;

    var_r0 = sub_802610C();
    if ((s32) var_r0 >= 0) {
        if ((gMultiSioStatusFlags & 1) && ((u32) (u16) (gMultiSioRecv->pat0.unk0 + 0xFFFF99F9) <= 1U)) {
            var_r1 = 0;
            do {
                temp_r0_2 = var_r1;
                *(temp_r0_2 + &gUnknown_030010AC) = (&gMultiSioRecv->pat0.unkF)[temp_r0_2];
                temp_r0 = temp_r0_2 + 1;
                var_r1 = (s16) temp_r0;
            } while ((s32) (s16) temp_r0 <= 3);
            if (!(((s32) gMultiSioRecv->pat0.unk8[2] >> saved_reg_r6) & 1) && (gMultiSioRecv->pat0.unk8[2] & (0x10 << saved_reg_r6))) {
                *(saved_reg_r8 + 0xF + saved_reg_r6) = 0xFF;
                return 2;
            }
            goto block_8;
        }
block_8:
        sub_80257AC(arg0);
        var_r0 = 0;
        /* Duplicate return node #9. Try simplifying control flow for better match */
        return var_r0;
    }
    return var_r0;
}

s16 sub_8025024(u16 arg0) {
    s16 temp_r0_3;
    s16 var_r0;
    s16 var_r1;
    s16 var_r5;
    u16 temp_r0_2;
    u32 temp_r0;
    u32 var_r4;

    var_r5 = 0;
    temp_r0 = SIO_MULTI_CNT->id;
    gStageData.playerIndex = (u8) temp_r0;
    var_r4 = temp_r0;
    if (var_r4 <= 1U) {
        var_r4 += 2;
    }
    var_r0 = sub_802610C();
    if ((s32) var_r0 >= 0) {
        if ((gMultiSioStatusFlags & 1) && ((u32) (u16) (gMultiSioRecv->pat0.unk0 + 0xFFFF99F9) <= 1U)) {
            var_r1 = 0;
            do {
                temp_r0_3 = var_r1;
                (&gMultiSioSend.pat0.unkF)[temp_r0_3] = *(temp_r0_3 + &gUnknown_030010AC);
                temp_r0_2 = temp_r0_3 + 1;
                var_r1 = (s16) temp_r0_2;
            } while ((s32) (s16) temp_r0_2 <= 3);
            if (!(((s32) gMultiSioRecv->pat0.unk8[2] >> var_r4) & 1) && (gMultiSioRecv->pat0.unk8[2] & (0x10 << var_r4))) {
                (&gMultiSioSend.pat0.unkF)[var_r4] = 0xFF;
                return 2;
            }
            var_r5 = 1;
            goto block_11;
        }
block_11:
        sub_8025808((u8) arg0);
        var_r0 = var_r5;
        /* Duplicate return node #12. Try simplifying control flow for better match */
        return var_r0;
    }
    return var_r0;
}

s16 sub_80250EC(u8 arg0) {
    s16 var_r0;
    s16 var_r6;
    u16 var_r1_2;
    u32 temp_r0;
    u32 var_r2;
    u8 temp_r5;
    union MultiSioData *var_r1;
    union MultiSioData *var_r1_3;

    temp_r5 = gUnknown_03001060.unk7;
    var_r6 = 0;
    temp_r0 = SIO_MULTI_CNT->id;
    gStageData.playerIndex = (u8) temp_r0;
    var_r0 = sub_802610C();
    if ((s32) var_r0 >= 0) {
        if ((temp_r0 <= 1U) && !((4 << temp_r0) & temp_r5)) {
            var_r2 = temp_r0 + 2;
        } else {
            var_r2 = temp_r0;
        }
        if (gMultiSioStatusFlags & 1) {
            if ((u32) (u8) (var_r2 - 2) <= 1U) {
                if (var_r2 == 3) {
                    var_r1 = &gMultiSioRecv[2];
                    if ((temp_r0 <= 1U) && !(temp_r5 & (4 << temp_r0))) {
                        goto block_15;
                    }
                } else if ((temp_r0 <= 1U) && !((4 << temp_r0) & temp_r5)) {
                    var_r1 = &gMultiSioRecv[1];
                } else {
                    var_r1 = &gMultiSioRecv[3];
                    if (!((temp_r5 >> 3) & 1)) {
block_15:
                        var_r1 -= 0x30;
                    }
                }
                var_r1_2 = var_r1->pat0.unk0;
                if (((u32) (u16) (var_r1_2 + 0xFFFF99F9) <= 1U) || (var_r1_2 == 0x660B) || (var_r1_2 == 0x660A)) {
                    if (var_r1_2 != 0x6608) {
                        goto block_26;
                    }
                    goto block_27;
                }
            } else {
                if (temp_r0 == 0) {
                    var_r1_3 = &gMultiSioRecv[2];
                    goto block_25;
                }
                if (temp_r0 == 1) {
                    var_r1_3 = &gMultiSioRecv[3];
block_25:
                    var_r1_2 = var_r1_3->pat0.unk0;
block_26:
                    if (var_r1_2 == 0x660B) {
block_27:
                        var_r6 = 1;
                    }
                }
            }
        }
        sub_8025874(arg0);
        var_r0 = var_r6;
    }
    return var_r0;
}

s16 sub_80251F8(u16 arg0) {
    u32 sp0;
    s16 temp_r1_2;
    s16 var_r0;
    s16 var_r0_2;
    s16 var_sl;
    u16 temp_r1;
    u32 temp_r0;
    u32 var_r5;
    u8 *temp_r2;

    var_sl = 0;
    temp_r0 = SIO_MULTI_CNT->id;
    gStageData.playerIndex = (u8) temp_r0;
    var_r5 = temp_r0;
    var_r0 = sub_802610C();
    if ((s32) var_r0 >= 0) {
        if (var_r5 <= 1U) {
            var_r5 = (u32) (u8) (var_r5 + 2);
        }
        sp0 = arg0 << 0x18;
        if ((gMultiSioStatusFlags & 1) && ((u32) (u16) (gMultiSioRecv->pat0.unk0 + 0xFFFF99F9) <= 1U)) {
            var_r0_2 = 0;
            do {
                temp_r1_2 = var_r0_2;
                temp_r2 = &(&gMultiSioRecv->pat0.unkF)[temp_r1_2];
                (&gMultiSioSend.pat0.unkF)[temp_r1_2] = *temp_r2;
                *(temp_r1_2 + &gUnknown_030010AC) = 0xFF & *temp_r2;
                temp_r1 = temp_r1_2 + 1;
                var_r0_2 = (s16) temp_r1;
            } while ((s32) (s16) temp_r1 <= 3);
            if ((0x100 << var_r5) & gMultiSioRecv->pat0.unk8[2]) {
                var_sl = 1;
            } else if (gMultiSioRecv->pat0.unk8[2] & (0x1000 << var_r5)) {
                var_sl = 2;
            }
        }
        sub_8025C8C((u8) (sp0 >> 0x18));
        var_r0 = var_sl;
    }
    return var_r0;
}

s16 sub_80252E8(void) {
    s16 temp_r0_2;
    s16 var_r0;
    s16 var_r1;
    s16 var_r4;
    u16 temp_r0;

    var_r4 = 0;
    gStageData.playerIndex = (u8) (SIO_MULTI_CNT->id);
    var_r0 = sub_802610C();
    if ((s32) var_r0 >= 0) {
        if ((gMultiSioStatusFlags & 1) && (gMultiSioRecv->pat0.unk0 == 0x660A)) {
            var_r1 = 0;
            do {
                temp_r0_2 = var_r1;
                *(temp_r0_2 + &gUnknown_030010AC) = (&gMultiSioRecv->pat0.unkF)[temp_r0_2];
                temp_r0 = temp_r0_2 + 1;
                var_r1 = (s16) temp_r0;
            } while ((s32) (s16) temp_r0 <= 3);
            var_r4 = 1;
        }
        sub_8025CD8();
        var_r0 = var_r4;
    }
    return var_r0;
}

s16 sub_8025360(void) {
    s16 temp_r2;
    s16 var_r0;
    s16 var_r1;
    u16 temp_r0;
    u8 temp_r4;

    temp_r4 = gUnknown_03001060.unk7;
    var_r0 = sub_802610C();
    if ((s32) var_r0 >= 0) {
        sub_8025D10();
        if ((temp_r4 != 3) && (temp_r4 != 7) && (temp_r4 != 0xF)) {
            goto block_4;
        }
        var_r1 = 0;
loop_6:
        temp_r2 = var_r1;
        if (!(((s32) temp_r4 >> temp_r2) & 1) || (gMultiSioRecv[temp_r2].pat0.unk0 == 0x660C)) {
            temp_r0 = temp_r2 + 1;
            var_r1 = (s16) temp_r0;
            if ((s32) (s16) temp_r0 > 3) {
                var_r0 = 1;
                /* Duplicate return node #10. Try simplifying control flow for better match */
                return var_r0;
            }
            goto loop_6;
        }
block_4:
        return 0;
    }
    return var_r0;
}

s16 sub_80253CC(void) {
    s16 var_r0;
    u8 var_r1;

    gStageData.playerIndex = (u8) (SIO_MULTI_CNT->id);
    var_r0 = sub_802610C();
    if ((s32) var_r0 >= 0) {
        sub_8025D00();
        if ((gMultiSioStatusFlags & 1) && ((u32) (u16) (gMultiSioRecv->pat0.unk0 + 0xFFFF99F5) <= 1U)) {
            gUnknown_03001060.unk4C[0] = gMultiSioRecv->pat0.unkF;
            gUnknown_03001060.unk4C[1] = gMultiSioRecv->pat4.unk10;
            gUnknown_03001060.unk4C[2] = gMultiSioRecv->pat4.unk11;
            gUnknown_03001060.unk4C[3] = gMultiSioRecv->pat4.unk12;
            var_r1 = 0;
loop_4:
            if ((u32) gUnknown_03001060.unk4C[var_r1] <= 4U) {
                var_r1 += 1;
                if ((u32) var_r1 > 3U) {
                    return 1;
                }
                goto loop_4;
            }
            goto block_7;
        }
block_7:
        var_r0 = 0;
        /* Duplicate return node #8. Try simplifying control flow for better match */
        return var_r0;
    }
    return var_r0;
}

s16 sub_8025460(u8 arg0) {
    s16 temp_r0;
    s16 temp_r2;
    s16 var_r1;
    u16 temp_r0_2;
    u8 temp_r4;
    u8 temp_r6;

    temp_r4 = arg0;
    temp_r6 = gUnknown_03001060.unk7;
    temp_r0 = sub_802610C();
    if ((s32) temp_r0 < 0) {
        return temp_r0;
    }
    gUnknown_03001060.unk50 = (u16) temp_r4;
    sub_8025D20(temp_r4);
    var_r1 = 0;
loop_4:
    temp_r2 = var_r1;
    if (!(((s32) temp_r6 >> temp_r2) & 1) || (gMultiSioRecv[temp_r2].pat0.unk0 == 0x660E)) {
        temp_r0_2 = temp_r2 + 1;
        var_r1 = (s16) temp_r0_2;
        if ((s32) (s16) temp_r0_2 > 3) {
            return 1;
        }
        goto loop_4;
    }
    return 0;
}

s16 sub_80254CC(void) {
    s16 temp_r0;
    s16 temp_r2;
    s16 var_r1;
    u16 temp_r0_2;
    u8 temp_r5;

    temp_r5 = gUnknown_03001060.unk7;
    temp_r0 = sub_802610C();
    if ((s32) temp_r0 < 0) {
        return temp_r0;
    }
    gUnknown_03001060.unk50 = 0;
    sub_8025D20();
    var_r1 = 0;
loop_4:
    temp_r2 = var_r1;
    if (!(((s32) temp_r5 >> temp_r2) & 1) || (gMultiSioRecv[temp_r2].pat0.unk0 == 0x660D)) {
        temp_r0_2 = temp_r2 + 1;
        var_r1 = (s16) temp_r0_2;
        if ((s32) (s16) temp_r0_2 > 3) {
            return 1;
        }
        goto loop_4;
    }
    return 0;
}

s16 sub_8025534(void) {
    s16 temp_r3;
    s16 var_r0;
    s16 var_r2;
    u16 temp_r0;
    u32 temp_r0_2;
    u8 temp_r4;

    temp_r4 = gUnknown_03001060.unk7;
    var_r0 = sub_802610C();
    if ((s32) var_r0 >= 0) {
        sub_8025D34(gUnknown_03001060.unk50);
        if ((temp_r4 != 3) && (temp_r4 != 7) && (temp_r4 != 0xF)) {
            goto block_4;
        }
        var_r2 = 0;
loop_6:
        temp_r3 = var_r2;
        if (!(((s32) temp_r4 >> temp_r3) & 1) || (temp_r0 = gMultiSioRecv[temp_r3].pat0.unk0, (temp_r0 == 0x660E)) || (temp_r0 == 0x6810)) {
            temp_r0_2 = (var_r2 << 0x10) + 0x10000;
            var_r2 = (s16) (temp_r0_2 >> 0x10);
            if ((s32) ((s32) temp_r0_2 >> 0x10) > 3) {
                var_r0 = 1;
                /* Duplicate return node #11. Try simplifying control flow for better match */
                return var_r0;
            }
            goto loop_6;
        }
block_4:
        return 0;
    }
    return var_r0;
}

s16 sub_80255B0(void) {
    s16 var_r0;

    var_r0 = sub_802610C();
    if ((s32) var_r0 >= 0) {
        sub_8025D20(gUnknown_03001060.unk50);
        if ((gMultiSioStatusFlags & 1) && ((u32) (u16) (gMultiSioRecv->pat0.unk0 + 0xFFFF99F3) <= 1U)) {
            gUnknown_03001060.unk50 = (u16) gMultiSioRecv->pat3_0.filler5[0];
            if ((gMultiSioRecv->pat0.unk0 << 0x10) == 0x660E0000) {
                return 1;
            }
        }
        var_r0 = 0;
        /* Duplicate return node #6. Try simplifying control flow for better match */
        return var_r0;
    }
    return var_r0;
}

s16 sub_8025614(void) {
    s16 var_r0;

    var_r0 = sub_802610C();
    if ((s32) var_r0 >= 0) {
        sub_8025D34(gUnknown_03001060.unk50);
        if ((gMultiSioStatusFlags & 1) && ((gMultiSioRecv->pat0.unk0 == 0x660E) || ((u32) gMultiSioRecv->pat0.unk0 > 0x680FU))) {
            gUnknown_03001060.unk50 = (u16) gMultiSioRecv->pat3_0.filler5[0];
            if (gMultiSioRecv->pat0.unk0 == 0x660E) {
                return 1;
            }
        }
        var_r0 = 0;
        /* Duplicate return node #7. Try simplifying control flow for better match */
        return var_r0;
    }
    return var_r0;
}

s16 sub_8025674(void) {
    s16 temp_r2;
    s16 var_r0;
    s16 var_r1;
    u16 temp_r0;
    u8 temp_r4;

    temp_r4 = gUnknown_03001060.unk7;
    var_r0 = sub_802610C();
    if ((s32) var_r0 >= 0) {
        sub_8025D48();
        if ((temp_r4 != 3) && (temp_r4 != 7) && (temp_r4 != 0xF)) {
            goto block_4;
        }
        var_r1 = 0;
loop_6:
        temp_r2 = var_r1;
        if (!(((s32) temp_r4 >> temp_r2) & 1) || (gMultiSioRecv[temp_r2].pat0.unk0 == 0x660F)) {
            temp_r0 = temp_r2 + 1;
            var_r1 = (s16) temp_r0;
            if ((s32) (s16) temp_r0 > 3) {
                var_r0 = 1;
                /* Duplicate return node #10. Try simplifying control flow for better match */
                return var_r0;
            }
            goto loop_6;
        }
block_4:
        return 0;
    }
    return var_r0;
}

void MultiSio_SendPlayerName(void) {
    gMultiSioSend.pat0.unk0 = 0;
    gMultiSioSend.pat0.unk2 = 0;
    gMultiSioSend.pat0.unk4 = gLoadedSaveGame.playerId;
    gMultiSioSend.pat0.unk8[0] = gLoadedSaveGame.playerName[0];
    gMultiSioSend.pat0.unk8[1] = gLoadedSaveGame.playerName[1];
    gMultiSioSend.pat0.unk8[2] = gLoadedSaveGame.playerName[2];
    gMultiSioSend.unkE = (u16) gLoadedSaveGame.playerName[3];
    gMultiSioSend.unk10 = (u16) gLoadedSaveGame.playerName[4];
    gMultiSioSend.unk12 = (u16) gLoadedSaveGame.playerName[5];
}

void sub_8025714(u8 arg0) {
    u32 temp_r0;
    u8 *temp_r1;

    temp_r0 = SIO_MULTI_CNT->id;
    gStageData.playerIndex = (u8) temp_r0;
    gMultiSioSend.pat0.unk0 = 0x6604;
    gMultiSioSend.pat0.unk3 = (u8) temp_r0;
    if (temp_r0 <= 1U) {
        (&gMultiSioSend.pat0.unkF)[temp_r0] = gUnknown_03001060.unk4C[temp_r0];
    } else {
        temp_r1 = &(&gMultiSioSend.pat0.unkF)[temp_r0];
        *temp_r1 |= 0xFF;
    }
    gMultiSioSend.pat3_0.unk4 = arg0;
}

void sub_8025770(void) {
    u32 temp_r0;

    temp_r0 = SIO_MULTI_CNT->id;
    gStageData.playerIndex = (u8) temp_r0;
    gMultiSioSend.pat0.unk3 = (u8) temp_r0;
    gMultiSioSend.pat0.unk0 = 0x6606;
    gMultiSioSend.pat0.unkF = gUnknown_03001060.unk4C[0];
    gMultiSioSend.pat4.unk10 = gUnknown_03001060.unk4C[1];
}

void sub_80257AC(u8 arg0) {
    u32 temp_r0;
    u32 var_r2;
    u8 *temp_r0_2;

    temp_r0 = SIO_MULTI_CNT->id;
    gStageData.playerIndex = (u8) temp_r0;
    var_r2 = temp_r0;
    gMultiSioSend.pat0.unkF = gUnknown_03001060.unk4C[0];
    gMultiSioSend.pat4.unk10 = gUnknown_03001060.unk4C[1];
    if (var_r2 <= 1U) {
        var_r2 += 2;
    }
    temp_r0_2 = &(&gMultiSioSend.pat0.unkF)[var_r2];
    *temp_r0_2 |= 0xFF;
    gMultiSioSend.pat0.unk0 = 0x6607;
    gMultiSioSend.pat0.unk3 = (u8) var_r2;
    gMultiSioSend.pat3_0.unk4 = arg0;
}

void sub_8025808(u8 arg0) {
    u32 temp_r0;
    u32 var_r2;
    u8 var_r2_2;

    temp_r0 = SIO_MULTI_CNT->id;
    gStageData.playerIndex = (u8) temp_r0;
    var_r2 = temp_r0;
    if ((var_r2 <= 1U) && !(gUnknown_03001060.unk7 & (4 << var_r2))) {
        var_r2 += 2;
    }
    gMultiSioSend.pat0.unk0 = 0x6607;
    gMultiSioSend.pat0.unk3 = (u8) var_r2;
    var_r2_2 = 0;
    do {
        (&gMultiSioSend.pat0.unkF)[var_r2_2] = *(var_r2_2 + &gUnknown_030010AC);
        var_r2_2 += 1;
    } while ((u32) var_r2_2 <= 3U);
    gMultiSioSend.pat3_0.unk4 = arg0;
}

void sub_8025874(u8 arg0) {
    u32 temp_r0;
    u32 var_r2;

    temp_r0 = SIO_MULTI_CNT->id;
    gStageData.playerIndex = (u8) temp_r0;
    var_r2 = temp_r0;
    if ((var_r2 <= 1U) && !(gUnknown_03001060.unk7 & (4 << var_r2))) {
        var_r2 += 2;
    }
    gMultiSioSend.pat0.unk0 = 0x6608;
    gMultiSioSend.pat0.unk3 = (u8) var_r2;
    if (var_r2 > 1U) {
        (&gMultiSioSend.pat0.unkF)[var_r2] = gUnknown_03001060.unk4C[var_r2];
    }
    gMultiSioSend.pat3_0.unk4 = arg0;
}

s16 sub_80258D4(void) {
    u16 temp_r4;

    temp_r4 = sub_8025D58();
    MultiSio_SendPlayerName();
    gUnknown_03001060.unk7 = 0;
    return (s16) temp_r4;
}

void sub_80258FC(void) {
    sub_8025BC0();
}

s16 sub_8025908(u8 arg0) {
    s16 var_r0;

    var_r0 = sub_802610C();
    if ((s32) var_r0 >= 0) {
        gMultiSioSend.pat0.unk8[2] = 0;
        gMultiSioSend.pat0.unk8[2] |= sub_80247D4();
        gMultiSioSend.pat0.unk8[2] |= sub_80248F4();
        sub_8025BEC(arg0);
        var_r0 = 0;
    }
    return var_r0;
}

s16 sub_8025948(u8 arg0) {
    s16 var_r0;
    u8 temp_r5;

    temp_r5 = gStageData.playerIndex;
    var_r0 = sub_802610C();
    if ((s32) var_r0 >= 0) {
        (&gMultiSioSend.pat0.unkF)[temp_r5] = 0xFF;
        gMultiSioSend.pat0.unk8[2] = 0;
        gMultiSioSend.pat0.unk8[2] |= sub_80247D4();
        gMultiSioSend.pat0.unk8[2] |= sub_80248F4();
        sub_8025C64((u32) arg0);
        var_r0 = 1;
    }
    return var_r0;
}

s16 sub_8025998(void) {
    s16 var_r0;
    u8 temp_r4;

    temp_r4 = gUnknown_03001060.unk7;
    var_r0 = sub_802610C();
    if ((s32) var_r0 >= 0) {
        sub_8025770();
        if (((temp_r4 != 3) && (temp_r4 != 7) && (temp_r4 != 0xF)) || (gUnknown_03001060.unk4C[1] = gMultiSioRecv[1].pat3_0.unk4, ((u32) (u16) (gMultiSioRecv[1].pat0.unk0 + 0xFFFF99FA) > 1U))) {
            return 0;
        }
        var_r0 = 1;
        /* Duplicate return node #7. Try simplifying control flow for better match */
        return var_r0;
    }
    return var_r0;
}

void sub_80259EC(void) {
    sub_8025BC0();
}

s16 sub_80259F8(u8 arg0) {
    s16 var_r0;

    var_r0 = sub_802610C();
    if ((s32) var_r0 >= 0) {
        gMultiSioSend.pat0.unk8[2] = 0;
        gMultiSioSend.pat0.unk8[2] |= sub_80247D4();
        gMultiSioSend.pat0.unk8[2] |= sub_80248F4();
        sub_80257AC(arg0);
        var_r0 = 0;
    }
    return var_r0;
}

s16 sub_8025A38(void) {
    s16 var_r0;
    u8 temp_r4;
    union MultiSioData *var_r1;

    temp_r4 = gUnknown_03001060.unk7;
    var_r0 = sub_802610C();
    if ((s32) var_r0 >= 0) {
        sub_8025CD8();
        if ((temp_r4 == 3) || (temp_r4 == 7) || (temp_r4 == 0xF)) {
            var_r1 = &gMultiSioRecv[1];
            if ((temp_r4 >> 3) & 1) {
                var_r1 += 0x30;
            }
            if ((u32) (u16) (var_r1->pat0.unk0 + 0xFFFF99F6) <= 1U) {
                return 1;
            }
            goto block_8;
        }
block_8:
        var_r0 = 0;
        /* Duplicate return node #9. Try simplifying control flow for better match */
        return var_r0;
    }
    return var_r0;
}

s16 sub_8025A90(void) {
    s16 var_r0;

    var_r0 = sub_802610C();
    if ((s32) var_r0 >= 0) {
        sub_8025D00();
        var_r0 = 0;
    }
    return var_r0;
}

s16 sub_8025AA8(void) {
    s16 var_r0;

    gStageData.playerIndex = (u8) (SIO_MULTI_CNT->id);
    var_r0 = sub_802610C();
    if ((s32) var_r0 >= 0) {
        sub_8025D10();
        if ((gMultiSioStatusFlags & 1) && (gMultiSioRecv->pat0.unk0 == 0x660D)) {
            return 1;
        }
        var_r0 = 0;
        /* Duplicate return node #5. Try simplifying control flow for better match */
        return var_r0;
    }
    return var_r0;
}

s16 sub_8025AFC(void) {
    s16 var_r0;

    var_r0 = sub_802610C();
    if ((s32) var_r0 >= 0) {
        sub_8025D20(gUnknown_03001060.unk50);
        if ((gMultiSioStatusFlags & 1) && (gMultiSioRecv->pat0.unk0 == 0x660D)) {
            return 1;
        }
        var_r0 = 0;
        /* Duplicate return node #5. Try simplifying control flow for better match */
        return var_r0;
    }
    return var_r0;
}

s16 sub_8025B48(void) {
    s16 var_r0;

    var_r0 = sub_802610C();
    if ((s32) var_r0 >= 0) {
        sub_8025D48();
        if ((u32) gMultiSioRecv->pat0.unk0 <= 0x660FU) {
            return 0;
        }
        var_r0 = 1;
        /* Duplicate return node #4. Try simplifying control flow for better match */
        return var_r0;
    }
    return var_r0;
}

void sub_8025B78(void) {
    gMultiSioSend.pat0.unk8[2] = 0;
    gMultiSioSend.pat0.unk8[2] |= sub_80247D4();
    gMultiSioSend.pat0.unk8[2] |= sub_80248F4();
}

void sub_8025BA0(void) {
    gMultiSioSend.pat0.unk0 = 0x6601;
}

void sub_8025BB0(void) {
    gMultiSioSend.pat0.unk0 = 0x6602;
}

void sub_8025BC0(void) {
    gMultiSioSend.pat0.unk0 = 0x6603;
    gMultiSioSend.pat0.unk3 = 0;
    gMultiSioSend.pat3_0.unk4 = 0;
    gMultiSioSend.pat1.unk6 = 0;
    gMultiSioSend.pat3.unk8 = 0;
    gMultiSioSend.pat0.unk8[2] = 0;
    gMultiSioSend.pat0.unkF = 0xFF;
    gMultiSioSend.pat4.unk10 = -1U;
    gMultiSioSend.pat4.unk11 = -1U;
    gMultiSioSend.pat4.unk12 = -1U;
}

void sub_8025BEC(u8 arg0) {
    u32 temp_r1;

    temp_r1 = SIO_MULTI_CNT->id;
    gStageData.playerIndex = (u8) temp_r1;
    gMultiSioSend.pat0.unk0 = 0x6603;
    gMultiSioSend.pat0.unk3 = (u8) temp_r1;
    (&gMultiSioSend.pat0.unkF)[temp_r1] = 0xFF;
    gMultiSioSend.pat3_0.unk4 = arg0;
}

void sub_8025C20(u8 arg0) {
    u32 temp_r2;

    temp_r2 = SIO_MULTI_CNT->id;
    gStageData.playerIndex = (u8) temp_r2;
    gMultiSioSend.pat0.unk0 = 0x6603;
    gMultiSioSend.pat0.unk3 = (u8) temp_r2;
    (&gMultiSioSend.pat0.unkF)[temp_r2] = gUnknown_03001060.unk4C[temp_r2];
    gMultiSioSend.pat3_0.unk4 = arg0;
}

void sub_8025C64(u8 arg0) {
    u32 temp_r1;

    temp_r1 = SIO_MULTI_CNT->id;
    gStageData.playerIndex = (u8) temp_r1;
    gMultiSioSend.pat0.unk0 = 0x6605;
    gMultiSioSend.pat0.unk3 = (u8) temp_r1;
    gMultiSioSend.pat3_0.unk4 = arg0;
}

void sub_8025C8C(u8 arg0) {
    u32 temp_r0;
    u32 var_r2;

    temp_r0 = SIO_MULTI_CNT->id;
    gStageData.playerIndex = (u8) temp_r0;
    var_r2 = temp_r0;
    if ((var_r2 <= 1U) && !(gUnknown_03001060.unk7 & (4 << var_r2))) {
        var_r2 += 2;
    }
    gMultiSioSend.pat0.unk0 = 0x6605;
    gMultiSioSend.pat0.unk3 = (u8) var_r2;
    gMultiSioSend.pat3_0.unk4 = arg0;
}

void sub_8025CD8(void) {
    u32 temp_r0;

    temp_r0 = SIO_MULTI_CNT->id;
    gStageData.playerIndex = (u8) temp_r0;
    gMultiSioSend.pat0.unk3 = (u8) temp_r0;
    gMultiSioSend.pat0.unk0 = 0x660A;
}

void sub_8025D00(void) {
    gMultiSioSend.pat0.unk0 = 0x660B;
}

void sub_8025D10(void) {
    gMultiSioSend.pat0.unk0 = 0x660C;
}

void sub_8025D20(u8 arg0) {
    gMultiSioSend.pat0.unk0 = 0x660D;
    gMultiSioSend.pat3_0.filler5[0] = arg0;
}

void sub_8025D34(u8 arg0) {
    gMultiSioSend.pat0.unk0 = 0x660E;
    gMultiSioSend.pat3_0.filler5[0] = arg0;
}

void sub_8025D48(void) {
    gMultiSioSend.pat0.unk0 = 0x660F;
}

u16 sub_8025D58(void) {
    s32 sp0;
    s16 temp_r1_2;
    s16 var_r0;
    u16 temp_r1;
    u32 temp_r0;
    u8 *temp_r2;

    sub_80260F0();
    sp0 = 0;
    (void *)0x040000D4->unk0 = &sp0;
    (void *)0x040000D4->unk4 = &gMultiSioSend;
    (void *)0x040000D4->unk8 = 0x85000006;
    sp0 = 0;
    (void *)0x040000D4->unk0 = &sp0;
    (void *)0x040000D4->unk4 = gMultiSioRecv;
    (void *)0x040000D4->unk8 = 0x85000018;
    sp0 = 0;
    (void *)0x040000D4->unk0 = &sp0;
    (void *)0x040000D4->unk4 = (union MultiSioData *) &gUnknown_03001060;
    (void *)0x040000D4->unk8 = 0x85000001;
    var_r0 = 0;
    do {
        temp_r1_2 = var_r0;
        temp_r2 = &gUnknown_03001060.unk4C[temp_r1_2];
        *temp_r2 |= 0xFF;
        gUnknown_03001060.filler0[temp_r1_2] = 0;
        temp_r1 = temp_r1_2 + 1;
        var_r0 = (s16) temp_r1;
    } while ((s32) (s16) temp_r1 <= 3);
    MultiSioInit(0U);
    temp_r0 = MultiSioMain(&gMultiSioSend, gMultiSioRecv, 0U);
    gMultiSioStatusFlags = temp_r0;
    gStageData.playerIndex = (u8) (SIO_MULTI_CNT->id);
    gMultiSioEnabled = 1;
    if (0x80 & temp_r0) {
        MultiSioStart();
    }
    return (u16) gStageData.playerIndex;
}

s16 sub_8025E24(u8 arg0) {
    s32 var_r6;
    u8 *temp_r1;
    u8 temp_r0;
    u8 temp_r3;
    u8 var_r0;

    temp_r3 = arg0;
    var_r6 = 0;
    if (0x81 & gMultiSioStatusFlags) {
        if (!(gMultiSioStatusFlags & (1 << temp_r3))) {
            temp_r1 = &gUnknown_03001060.filler0[temp_r3];
            temp_r0 = *temp_r1 + 1;
            *temp_r1 = temp_r0;
            if ((u32) temp_r0 > 0xB4U) {
                return -2;
            }
            goto block_5;
        }
        gUnknown_03001060.filler0[temp_r3] = 0;
        goto block_5;
    }
block_5:
    if (0x100 & gMultiSioStatusFlags) {
        var_r6 = 1;
    }
    if ((0x1000 & gMultiSioStatusFlags) || ((var_r6 != 0) && !(gMultiSioStatusFlags & 1) && (gMultiSioRecv->pat0.unk0 != 0)) || ((gUnknown_03001060.unk7 != 0) && (gUnknown_03001060.unk7 != (gMultiSioStatusFlags & 0xF)))) {
        gUnknown_03001060.filler0[6] += 1;
        if ((s32) gUnknown_03001060.filler0[6] >= (s32) ((s8) gUnknown_03001060.filler0[4] + 8)) {
            return -1;
        }
        goto block_16;
    }
    gUnknown_03001060.filler0[6] = 0;
block_16:
    if ((s32) (s8) gUnknown_03001060.filler0[4] > 0) {
        var_r0 = gUnknown_03001060.filler0[4] - 1;
        goto block_20;
    }
    if ((s32) (s8) gUnknown_03001060.filler0[4] < 0) {
        var_r0 = gUnknown_03001060.filler0[4] + 1;
block_20:
        gUnknown_03001060.filler0[4] = var_r0;
    }
    return 0;
}

void sub_8025EEC(void) {
    Background *temp_r1;
    Background *temp_r1_2;
    u16 temp_r6;

    gTilemapsRef = gTilemaps;
    gStageData.language = gLoadedSaveGame.language;
    temp_r6 = TaskCreate(Task_90_8026080, 0x90U, 0x2000U, 0U, NULL)->data;
    temp_r6->unk8C = 0x12C;
    gDispCnt = 0x340;
    temp_r6->unk0 = 0;
    temp_r6->unk2 = 2;
    temp_r6->unk4 = 0;
    temp_r6->unk6 = 0x400;
    temp_r6->unk8 = 0xFF;
    temp_r6->unkA = 0;
    ScreenFadeUpdateValues((ScreenFade *) temp_r6);
    gBgCntRegs[0] = 0x1F0D;
    gBgCntRegs[1] = 0x1708;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    temp_r1 = temp_r6 + 0x4C;
    temp_r1->graphics.dest = (void *)0x0600C000;
    temp_r1->graphics.anim = 0;
    temp_r1->layoutVram = (u16 *)0x0600F800;
    temp_r1->unk18 = 0;
    temp_r1->unk1A = 0;
    temp_r1->tilemapId = TM_MULTI_CONNECTION_ERROR;
    temp_r1->unk1E = 0;
    temp_r1->unk20 = 0;
    temp_r1->unk22 = 0;
    temp_r1->unk24 = 0;
    temp_r1->targetTilesX = 0x20;
    temp_r1->targetTilesY = 0x20;
    temp_r6->unk76 = 0;
    temp_r1->flags = 0;
    DrawBackground(temp_r1);
    temp_r1_2 = temp_r6 + 0xC;
    temp_r1_2->graphics.dest = (void *)0x06008000;
    temp_r1_2->graphics.anim = 0;
    temp_r1_2->layoutVram = (u16 *)0x0600B800;
    temp_r1_2->unk18 = 0;
    temp_r1_2->unk1A = 0;
    temp_r1_2->tilemapId = TM_UNKNOWN_387 + gStageData.language;
    temp_r1_2->unk1E = 0;
    temp_r1_2->unk20 = 0;
    temp_r1_2->unk22 = 0;
    temp_r1_2->unk24 = 0;
    temp_r1_2->targetTilesX = 0x20;
    temp_r1_2->targetTilesY = 0x20;
    temp_r6->unk36 = 0;
    temp_r1_2->flags = 0x11;
    DrawBackground(temp_r1_2);
    m4aMPlayAllStop();
    m4aSongNumStart(0x64U);
    gFlags = gFlags & 0xFFFFBFFF & 0xFFFF7FFF;
    m4aSoundVSyncOn();
    sub_8001E84();
    gMultiSioEnabled = 0;
    MultiSioStop();
    MultiSioInit(0U);
}

void Task_90_8026080(void) {
    u16 temp_r2;
    u16 temp_r5;

    temp_r5 = gCurTask->data;
    if (((UpdateScreenFade((ScreenFade *) temp_r5) << 0x18) != 0) && ((temp_r2 = temp_r5->unk8C - 1, temp_r5->unk8C = temp_r2, ((3 & gPressedKeys) != 0)) || ((temp_r2 << 0x10) == 0))) {
        temp_r5->unk0 = 0;
        temp_r5->unk2 = 1;
        temp_r5->unk4 = 0;
        temp_r5->unk6 = 0x400;
        temp_r5->unk8 = 0xFF;
        temp_r5->unkA = 0;
        ScreenFadeUpdateValues((ScreenFade *) temp_r5);
        gCurTask->main = Task_90_802618C;
    }
}

void sub_80260F0(void) {
    gMultiSioEnabled = 0;
    MultiSioStop();
    MultiSioInit(0U);
}

s16 sub_802610C(void) {
    if (gStageData.playerIndex == (SIO_MULTI_CNT->id)) {
        return sub_8025E24(gStageData.playerIndex);
    }
    return -1;
}

void sub_802613C(void) {
    gFlags &= 0xFFFFFBFF;
    TaskCreate(Task_8026178, 0U, 0x2000U, 0U, NULL);
}

void sub_802616C(u8 arg0) {
    gUnknown_03001060.filler0[4] = arg0;
}

void Task_8026178(void) {
    sub_8001D58(sub_8025EEC, 0);
}

void Task_90_802618C(void) {
    if ((UpdateScreenFade((ScreenFade *) gCurTask->data) << 0x18) != 0) {
        LaunchTitleScreen();
    }
}

void sub_80261B0(void) {
    Player *temp_r1;
    s16 temp_r0_2;
    s16 temp_r0_4;
    s16 temp_r2_3;
    s16 var_r1;
    s16 var_r1_2;
    s16 var_r1_3;
    u16 temp_r0;
    u16 temp_r0_3;
    u16 temp_r2_2;
    u8 *temp_r2;
    union MultiSioData *temp_r2_4;

    var_r1 = 0;
    gUnknown_03001CC0.unk0 = (u8) ((gUnknown_03001CC0.unk0 + 1) & 3);
    gUnknown_03001CC0.unk1 = 0;
    do {
        temp_r0_2 = var_r1;
        temp_r2 = (temp_r0_2 * 5) + (&gUnknown_03001CC0 + 2);
        *temp_r2 |= 0xFF;
        temp_r0 = temp_r0_2 + 1;
        var_r1 = (s16) temp_r0;
    } while ((s32) (s16) temp_r0 <= 7);
    var_r1_2 = 0;
    do {
        temp_r2_3 = var_r1_2;
        temp_r1 = &gPlayers[temp_r2_3];
        temp_r1->unk2C = (u8) ((-0x39 & temp_r1->unk2C) | 0x20);
        temp_r2_2 = temp_r2_3 + 1;
        var_r1_2 = (s16) temp_r2_2;
    } while ((s32) (s16) temp_r2_2 <= 3);
    gMultiSioSend.pat4.unk12 = 0xFF;
    var_r1_3 = 0;
    do {
        temp_r0_4 = var_r1_3;
        temp_r2_4 = &gMultiSioRecv[temp_r0_4];
        temp_r2_4->pat4.unk12 |= 0xFF;
        temp_r0_3 = temp_r0_4 + 1;
        var_r1_3 = (s16) temp_r0_3;
    } while ((s32) (s16) temp_r0_3 <= 3);
}

void sub_8026254(void *arg0) {
    s16 temp_r2;
    s16 var_r1;
    s32 temp_r0;
    s32 temp_r1;
    s32 temp_r3;
    s32 var_r0_2;
    u16 temp_r5;
    u16 var_r0;
    u16 var_r0_3;
    u8 temp_r0_2;
    u8 temp_r4_2;
    void *temp_r0_3;
    void *temp_r0_4;
    void *temp_r4;
    void *temp_r6;
    void *temp_r7;

    if ((gStageData.gameMode == 7) && (gMultiSioSend.pat0.unk0 == 0x600E)) {
        return;
    }
    if (gStageData.unk4 == 4) {
        sub_8026720();
        return;
    }
    if (gMultiSioSend.pat0.unk0 == 0x68FC) {
        return;
    }
    switch (gStageData.unk4) {                      /* irregular */
    case 5:
        if ((gMultiSioSend.pat0.unk0 != 0x68E0) && (gMultiSioSend.pat0.unk0 != 0x68E8)) {
            gMultiSioSend.pat0.unk0 = 0x68E0;
        }
        break;
    case 8:
        var_r0 = 0x68FA;
block_20:
        gMultiSioSend.pat0.unk0 = var_r0;
        break;
    case 1:
        var_r0 = 0x6801;
        goto block_20;
    case 2:
        var_r0 = 0x6802;
        goto block_20;
    case 7:
        var_r0 = 0x68FE;
        goto block_20;
    default:
        var_r0 = 0x6810;
        goto block_20;
    }
    gMultiSioSend.pat4.x = (s16) gStageData.timer;
    gMultiSioSend.pat1.unk4 = (u16) ((s32) arg0->unk10 >> 8);
    temp_r0 = arg0->unk14;
    if (temp_r0 < 0) {
        var_r0_2 = 0;
    } else {
        var_r0_2 = temp_r0 >> 8;
    }
    gMultiSioSend.pat1.unk6 = (u16) var_r0_2;
    gMultiSioSend.pat3.unk8 = arg0->unk4;
    gMultiSioSend.pat0.unk8[2] = (0xFFFFF800 & gMultiSioSend.pat0.unk8[2]) | (0x7FF & arg0->unk34);
    gMultiSioSend.pat4.unkD = (7 & gMultiSioSend.pat4.unkD) | (arg0->unk36 * 8);
    if (gStageData.gameMode != 7) {
        if ((gStageData.gameMode == 5) && (gStageData.act == 8)) {
            var_r0_3 = gStageData.unk8C;
        } else {
            var_r0_3 = gStageData.rings;
        }
    } else {
        var_r0_3 = arg0->unk30;
    }
    gMultiSioSend.unkE = (u16) ((0xFFFFFC00 & gMultiSioSend.unkE) | (0x3FF & var_r0_3));
    gMultiSioSend.pat0.unkF = (((-0x7D & gMultiSioSend.pat0.unkF) | (((u8) arg0->unk13C >> 4) * 4)) & 0x7F) | ((arg0->unk27 & 1) << 7);
    gMultiSioSend.pat4.unk10 = (u8) ((u16) arg0->unk1C >> 8);
    gMultiSioSend.pat4.unk11 = arg0->unk26;
    if ((gMultiSioSend.pat0.unk0 == 0x68E0) || (gMultiSioSend.pat0.unk0 == 0x68E8)) {
        sub_80278C4();
        return;
    }
    if (gUnknown_03001CC0.unk1 == 0) {
        if (gUnknown_03001CC0.unk2 != 0xFF) {
            temp_r0_2 = (gUnknown_03001CC0.unk0 + 1) & 3;
            gUnknown_03001CC0.unk0 = temp_r0_2;
            gMultiSioSend.pat4.unk12 = (temp_r0_2 << 6) | gUnknown_03001CC0.unk2;
            gMultiSioSend.pat4.unk13 = gUnknown_03001CC0.unk3;
            gMultiSioSend.raw[0x14] = gUnknown_03001CC0.unk4;
            gMultiSioSend.raw[0x15] = gUnknown_03001CC0.unk5;
            gMultiSioSend.raw[0x16] = gUnknown_03001CC0.unk6;
            gUnknown_03001CC0.unk1 = 6U;
            var_r1 = 0;
            temp_r6 = &gUnknown_03001CC0 + 2;
            temp_r4 = &gUnknown_03001CC0 + 3;
            temp_r7 = &gUnknown_03001CC0 + 4;
loop_37:
            temp_r2 = var_r1;
            temp_r5 = temp_r2 + 1;
            temp_r3 = temp_r5 * 5;
            temp_r4_2 = *(temp_r3 + temp_r6);
            if (temp_r4_2 != 0xFF) {
                temp_r1 = temp_r2 * 5;
                *(temp_r1 + temp_r6) = temp_r4_2;
                *(temp_r1 + temp_r4) = *(temp_r3 + temp_r4);
                *(temp_r1 + temp_r7) = *(temp_r3 + temp_r7);
                temp_r0_3 = &gUnknown_03001CC0 + 5;
                *(temp_r1 + temp_r0_3) = *(temp_r3 + temp_r0_3);
                temp_r0_4 = &gUnknown_03001CC0 + 6;
                *(temp_r1 + temp_r0_4) = *(temp_r3 + temp_r0_4);
                var_r1 = (s16) temp_r5;
                if ((s32) (s16) temp_r5 <= 6) {
                    goto loop_37;
                }
            } else {
                *((temp_r2 * 5) + temp_r6) = 0xFF;
            }
            gUnknown_03001CC0.unk25 = 0xFF;
            return;
        }
        gMultiSioSend.pat4.unk12 = 0xFF;
        return;
    }
    gUnknown_03001CC0.unk1 = (u8) (gUnknown_03001CC0.unk1 - 1);
}

void sub_8026478(void) {
    s16 temp_r2;
    s16 var_r1;
    u16 temp_r0;

    if (gStageData.unk4 == 2) {
        if (gStageData.playerIndex == 0) {
            var_r1 = 1;
loop_3:
            temp_r2 = var_r1;
            if (!(((s32) gUnknown_03001060.unk7 >> temp_r2) & 1) || (gMultiSioRecv[temp_r2].pat0.unk0 == 0x6802)) {
                temp_r0 = temp_r2 + 1;
                var_r1 = (s16) temp_r0;
                if ((s32) (s16) temp_r0 > 3) {
                    gStageData.unk4 = 3;
                    return;
                }
                goto loop_3;
            }
        } else if (gMultiSioRecv->pat0.unk0 == 0x6810) {
            gStageData.unk4 = 3;
        }
    }
}

s32 sub_80264F0(void) {
    Player *temp_r5;
    s16 temp_r3;
    s16 var_r2;
    u16 temp_r1;
    u32 temp_r0;
    u8 temp_r2;
    union MultiSioData *temp_r4;

    temp_r5 = &gPlayers[gStageData.playerIndex];
    if ((sub_802610C() << 0x10) != 0) {
        sub_802613C();
        return -1;
    }
    var_r2 = 0;
loop_3:
    temp_r3 = var_r2;
    if ((0x1C & gPlayers[temp_r3].unk2B) != 0xC) {
        goto block_55;
    }
    temp_r4 = &gMultiSioRecv[temp_r3];
    temp_r1 = temp_r4->pat0.unk0;
    if (temp_r1 != 0x68E0) {
        switch ((s32) temp_r1) {                    /* irregular */
        case 0x68D1:
block_46:
            if (temp_r4->pat4.unk12 == 0xFF) {
                gStageData.levelTimer = temp_r4->pat4.unk13 | (temp_r4->raw[0x14] << 8);
            }
            goto block_52;
        case 0x68FA:
            if ((u32) (u8) (gStageData.unk4 - 3) <= 1U) {
                temp_r5->qSpeedGround = 0;
                gStageData.unk4 = 8;
                temp_r5->moveState &= 0xEFFFFFFF;
                SetPlayerCallback(temp_r5, Player_800EB4C);
            }
            goto block_25;
        case 0x68FC:
            sub_8004D30();
            goto block_25;
        case 0x6:
            if ((u32) gStageData.unk4 > 1U) {
                goto block_25;
            }
            goto block_57;
        case 0x68E8:
            gStageData.unk5 = temp_r4->pat4.unk12;
            goto block_39;
        case 0x68D0:
            if (gStageData.unk4 == 3) {
                if (gStageData.unkB9 == 0) {
                    gStageData.unkB9 = temp_r4->pat4.unk10;
                    sub_800341C();
                } else {
                    temp_r2 = temp_r4->pat4.unk10;
                    if (((u32) gStageData.unkB9 > (u32) temp_r2) && (temp_r2 != 0)) {
                        gStageData.unkB9 = temp_r2;
                    }
                }
            }
            goto block_46;
        case 0x68FE:
            if (gStageData.unk4 != 7) {
                sub_8002414();
                SetPlayerCallback(temp_r5, Player_800DF9C);
            }
            goto block_25;
        }
    } else {
        if ((u32) gStageData.unk4 <= 1U) {
            goto block_57;
        }
        if ((u32) gStageData.unk4 <= 4U) {
            gStageData.unk4 = 5;
            if (gStageData.gameMode == 6) {
                gStageData.unk5 = temp_r4->pat4.unk12;
                gStageData.levelTimer = (u16) temp_r4->patU.levelTimer;
block_39:
                gStageData.task90->main = Task_800303C;
            } else {
                gStageData.levelTimer = (u16) temp_r4->patU.levelTimer;
                temp_r5->qSpeedGround = 0;
                if (gStageData.act == 7) {
                    Player_800613C(temp_r5);
                } else {
                    Player_8005DAC(temp_r5);
                }
            }
            goto block_25;
        }
        if (gStageData.unk4 == 5) {
            gStageData.levelTimer = (u16) temp_r4->patU.levelTimer;
        }
block_52:
        if ((gStageData.gameMode == 5) && (temp_r4->pat3.unk8 & 0x100)) {
        case 0x68FF:
block_25:
            return 1;
        }
block_55:
        temp_r0 = (var_r2 << 0x10) + 0x10000;
        var_r2 = (s16) (temp_r0 >> 0x10);
        if ((s32) ((s32) temp_r0 >> 0x10) <= 3) {
            goto loop_3;
        }
block_57:
        return 0;
    }
}

void sub_8026720(void) {
    Player *temp_r5;
    u16 var_r0;

    temp_r5 = &gPlayers[gStageData.playerIndex];
    if (gStageData.unkB9 == (1 << gStageData.playerIndex)) {
        var_r0 = 0x68D0;
    } else {
        var_r0 = 0x68D1;
    }
    gMultiSioSend.pat0.unk0 = var_r0;
    gMultiSioSend.pat4.x = (s16) gStageData.timer;
    gMultiSioSend.pat1.unk4 = (u16) ((s32) temp_r5->qWorldX >> 8);
    gMultiSioSend.pat1.unk6 = (u16) ((s32) temp_r5->qWorldY >> 8);
    gMultiSioSend.pat3.unk8 = temp_r5->moveState;
    gMultiSioSend.pat0.unk8[2] = (0xFFFFF800 & gMultiSioSend.pat0.unk8[2]) | (0x7FF & temp_r5->charFlags.anim2);
    gMultiSioSend.pat4.unkD = (7 & gMultiSioSend.pat4.unkD) | (temp_r5->charFlags.state1 * 8);
    gMultiSioSend.unkE = (u16) ((0xFFFFFC00 & gMultiSioSend.unkE) | (0x3FF & gStageData.rings));
    gMultiSioSend.pat0.unkF &= -0x7D;
    gMultiSioSend.pat4.unk10 = gStageData.unkB9;
    gMultiSioSend.pat4.unk11 = temp_r5->unk26;
    if (gMultiSioSend.pat4.unk12 == 0xFF) {
        gMultiSioSend.pat4.unk13 = (u8) gStageData.levelTimer;
        gMultiSioSend.raw[0x14] = (u8) ((u16) gStageData.levelTimer >> 8);
    }
}

void sub_80267E8(void) {
    s32 sp0;
    Player *temp_r4;
    u8 temp_r0;

    temp_r4 = &gPlayers[gStageData.playerIndex];
    temp_r0 = Player_8015D7C(temp_r4);
    sp0.unk0 = 0x38;
    sp0.unk1 = 0x22;
    sp0.unk2 = temp_r0;
    sp0.unk3 = (u8) temp_r4->layer;
    gUnknown_03001060.unk9 = (gUnknown_03001060.unk9 & ~(1 << (gStageData.playerIndex + 4))) | (temp_r0 << (gStageData.playerIndex + 4));
    sub_8026AB8(&sp0);
}

void sub_8026850(void) {
    s32 sp0;
    Player *temp_r4;
    u8 temp_r0;

    temp_r4 = &gPlayers[gStageData.playerIndex];
    temp_r0 = Player_8015D7C(temp_r4);
    sp0.unk0 = 0x38;
    sp0.unk1 = 0xB;
    sp0.unk2 = temp_r0;
    sp0.unk3 = (u8) temp_r4->layer;
    gUnknown_03001060.unk9 = (gUnknown_03001060.unk9 & ~(1 << (gStageData.playerIndex + 4))) | (temp_r0 << (gStageData.playerIndex + 4));
    sub_8026AB8(&sp0);
}

u16 sub_80268B8(u16 arg0) {
    Player *temp_r0;
    Player *temp_r4;
    s16 temp_r3;
    s16 temp_r5;
    s16 temp_r6;
    s16 var_r0;
    s16 var_r1;
    s16 var_r2;
    s32 temp_r4_2;
    s32 var_r5;
    u16 temp_r1;
    u16 temp_r6_2;
    u32 temp_r1_2;
    union MultiSioData *temp_r7;

    temp_r1 = arg0;
    temp_r6 = (s16) arg0;
    temp_r7 = &gMultiSioRecv[temp_r6];
    temp_r4 = &gPlayers[temp_r6];
    temp_r0 = &gPlayers[gStageData.playerIndex];
    if ((0xFF00 & temp_r7->pat0.unk0) != 0x6800) {

    } else {
        if ((temp_r6 == 0) && (gStageData.playerIndex != 0)) {
            gStageData.timer = (u32) (u16) temp_r7->pat4.x;
        }
        temp_r5 = (temp_r7->pat1.unk4 << 8) - temp_r4->qWorldX;
        temp_r4->qSpeedAirX = temp_r5;
        temp_r3 = (temp_r7->pat1.unk6 << 8) - temp_r4->qWorldY;
        temp_r4->qSpeedAirY = temp_r3;
        var_r2 = temp_r4->qSpeedAirX;
        if ((s32) var_r2 < 0) {
            var_r2 = 0 - var_r2;
        }
        var_r1 = temp_r4->qSpeedAirY;
        if ((s32) var_r1 < 0) {
            var_r1 = 0 - var_r1;
        }
        var_r0 = temp_r5;
        if ((s32) var_r2 < (s32) var_r1) {
            var_r0 = temp_r3;
        }
        temp_r4->qSpeedGround = var_r0;
        if ((var_r0 << 0x10) == 0) {
            temp_r4->qSpeedGround = 0x10;
        }
        temp_r4->qWorldX = temp_r7->pat1.unk4 << 8;
        temp_r4->qWorldY = temp_r7->pat1.unk6 << 8;
        temp_r4->charFlags.anim0 = -1;
        temp_r4->charFlags.anim2 = (u16) ((u32) (temp_r7->pat0.unk8[2] << 0x15) >> 0x15);
        temp_r4->charFlags.state1 = (u16) ((u8) temp_r7->pat4.unkD >> 3);
        temp_r4->unk26 = temp_r7->pat4.unk11;
        temp_r4->qSpeedGround = temp_r7->pat4.unk10 << 8;
        temp_r4->moveState = temp_r7->pat3.unk8;
        temp_r4->unk13C = (0xF & temp_r4->unk13C) | (((u32) (temp_r7->pat0.unkF << 0x19) >> 0x1B) * 0x10);
        temp_r4->layer = (u8) ((u8) temp_r7->pat0.unkF >> 7);
        if (gStageData.gameMode != 7) {
            if ((gStageData.gameMode == 5) && (gStageData.act == 8)) {
                temp_r1_2 = (u32) (temp_r7->unkE << 0x16) >> 0x16;
                var_r5 = temp_r1 << 0x10;
                if ((u32) gStageData.unk8C < temp_r1_2) {
                    gStageData.unk8C = (u16) temp_r1_2;
                }
            } else if (gStageData.zone == 8) {
                var_r5 = temp_r1 << 0x10;
                if (var_r5 == 0) {
                    if ((u32) gStageData.rings < (u32) ((u32) (temp_r7->unkE << 0x16) >> 0x16)) {
                        PlayRingCollectSE();
                    }
                    gStageData.rings = (u16) ((u32) (temp_r7->unkE << 0x16) >> 0x16);
                }
            } else if ((temp_r0 == temp_r4) || (var_r5 = temp_r1 << 0x10, (temp_r0 == &gPlayers[(u32) (temp_r4->unk2B << 0x1E) >> 0x1E]))) {
                var_r5 = temp_r1 << 0x10;
                if ((gStageData.unk4 != 1) && ((u32) gStageData.rings < (u32) ((u32) (temp_r7->unkE << 0x16) >> 0x16)) && (gStageData.unkBB == 0)) {
                    temp_r6_2 = gStageData.rings;
                    PlayRingCollectSE();
                    gStageData.rings = (u16) ((u32) (temp_r7->unkE << 0x16) >> 0x16);
                    if (gStageData.currentLevel != 0x48) {
                        temp_r4_2 = Div((s32) gStageData.rings, 0x64);
                        if ((temp_r4_2 != Div((s32) temp_r6_2, 0x64)) && (gStageData.gameMode == 5)) {
                            AddLives(1);
                        }
                    }
                }
            }
        } else {
            temp_r4->charFlags.anim0 = (s16) ((u32) (temp_r7->unkE << 0x16) >> 0x16);
            var_r5 = temp_r1 << 0x10;
        }
        sub_8026B10(var_r5 >> 0x10);
    }
    return temp_r7->pat0.unk0;
}

void sub_8026AB8(s32 *arg0) {
    s16 temp_r1;
    s16 var_r1;
    s32 temp_r2;
    u16 temp_r0;
    u8 *temp_r3;

    var_r1 = 0;
loop_1:
    temp_r1 = var_r1;
    temp_r2 = temp_r1 * 5;
    temp_r3 = temp_r2 + (&gUnknown_03001CC0 + 2);
    if (*temp_r3 == 0xFF) {
        *temp_r3 = arg0->unk0;
        *(temp_r2 + (&gUnknown_03001CC0 + 3)) = arg0->unk1;
        *(temp_r2 + (&gUnknown_03001CC0 + 4)) = arg0->unk2;
        *(temp_r2 + (&gUnknown_03001CC0 + 5)) = arg0->unk3;
        *(temp_r2 + (&gUnknown_03001CC0 + 6)) = arg0->unk4;
        return;
    }
    temp_r0 = temp_r1 + 1;
    var_r1 = (s16) temp_r0;
    if ((s32) (s16) temp_r0 > 7) {
        return;
    }
    goto loop_1;
}

void sub_8026B10(u16 arg0) {
    s32 sp0;
    u32 sp8;
    Player *temp_r0_3;
    Player *temp_r1_3;
    Player *temp_r1_5;
    Player *temp_r1_6;
    Player *temp_r2;
    Player *temp_r2_2;
    Player *temp_r2_3;
    Player *temp_r2_4;
    Player *temp_r2_5;
    Player *temp_r3_3;
    Player *temp_r4_2;
    Player *temp_r4_8;
    Player *temp_r6;
    Player *temp_r6_2;
    s16 temp_r0;
    s16 temp_r0_14;
    s16 temp_r0_4;
    s16 temp_r4_3;
    s16 temp_r4_4;
    s16 temp_r4_5;
    s16 temp_r4_6;
    s16 var_r3;
    s16 var_r3_2;
    s16 var_r3_3;
    s16 var_r3_4;
    s32 temp_r0_5;
    s32 temp_r0_6;
    s32 temp_r3_2;
    s32 temp_r3_4;
    s32 temp_r4_7;
    s32 var_ip;
    u16 temp_r0_10;
    u16 temp_r0_11;
    u16 temp_r0_12;
    u16 temp_r0_13;
    u16 temp_r1;
    u16 temp_r1_4;
    u32 temp_r0_2;
    u32 temp_r0_7;
    u32 temp_r0_8;
    u32 temp_r0_9;
    u32 temp_r3;
    u8 temp_r1_2;
    u8 temp_r2_6;
    u8 var_r1;
    u8 var_r1_2;
    union MultiSioData *temp_r4;
    void (*temp_r1_7)(Player *);
    void (*var_r4)(Player *);

    temp_r1 = arg0;
    temp_r0 = (s16) arg0;
    temp_r4 = &gMultiSioRecv[temp_r0];
    temp_r6 = &gPlayers[temp_r0];
    temp_r1_2 = temp_r4->pat4.unk12;
    if (temp_r1_2 != 0xFF) {
        sp8 = (u32) (temp_r1_2 << 0x18) >> 0x1E;
        temp_r3 = 0x38 & temp_r1_2;
        if (sp8 != ((u32) (temp_r6->unk2C << 0x1A) >> 0x1D)) {
            switch (temp_r3) {                      /* switch 1 */
            case 0x8:                               /* switch 1 */
                sub_802AE64(temp_r6, (s16) ((temp_r4->raw[0x14] << 8) | temp_r4->pat4.unk13));
                temp_r0_2 = (u32) (temp_r6->unk2B << 0x1E) >> 0x1E;
                if (temp_r0_2 == gStageData.playerIndex) {
                    temp_r0_3 = &gPlayers[temp_r0_2];
                    temp_r0_4 = (u16) temp_r0_3->framesInvulnerable + 0x3C;
                    temp_r0_3->framesInvulnerable = temp_r0_4;
                    if ((s32) temp_r0_4 <= 0x78) {

                    } else {
                        temp_r0_3->framesInvulnerable = 0x78;
                    }
                }
            default:                                /* switch 1 */
block_109:
                temp_r1_3 = &gPlayers[(s16) temp_r1];
                temp_r1_3->unk2C = (u8) ((-0x39 & temp_r1_3->unk2C) | (sp8 * 8));
                break;
            case 0x18:                              /* switch 1 */
                *(gStageData.taskEntitiesManager->data->unk4 + ((temp_r4->raw[0x16] << 0x18) | ((temp_r4->raw[0x15] << 0x10) | ((temp_r4->raw[0x14] << 8) | temp_r4->pat4.unk13)))) = -3;
                goto block_109;
            case 0x20:                              /* switch 1 */
                temp_r1_4 = gStageData.taskEntitiesManager->data;
                if ((gStageData.act == 9) && (*(temp_r1_4->unk8 + ((temp_r4->raw[0x16] << 0x18) | ((temp_r4->raw[0x15] << 0x10) | ((temp_r4->raw[0x14] << 8) | temp_r4->pat4.unk13)))) != -2)) {
                    gUnknown_03001D00 += 1;
                    m4aSongNumStart(0x8AU);
                }
                *(temp_r1_4->unk8 + ((temp_r4->raw[0x16] << 0x18) | ((temp_r4->raw[0x15] << 0x10) | ((temp_r4->raw[0x14] << 8) | temp_r4->pat4.unk13)))) = temp_r1 - 6;
                goto block_109;
            case 0x10:                              /* switch 1 */
                if (&gPlayers[gStageData.playerIndex] != &gPlayers[(u32) (temp_r6->unk2B << 0x1E) >> 0x1E]) {

                } else {
                    gStageData.unk21 = 7 & temp_r1_2;
                    gStageData.unk24 = (u32) gStageData.levelTimer;
                    gStageData.respawnX = (temp_r4->raw[0x14] << 8) | temp_r4->pat4.unk13;
                    gStageData.respawnY = (temp_r4->raw[0x16] << 8) | temp_r4->raw[0x15];
                }
                goto block_109;
            case 0x30:                              /* switch 1 */
                temp_r4_2 = &gPlayers[(u32) (temp_r6->unk2B << 0x1E) >> 0x1E];
                temp_r0_5 = (temp_r4->raw[0x14] << 8) | temp_r4->pat4.unk13;
                gCamera.x = temp_r0_5;
                gCamera.sa2__unk10 = temp_r0_5;
                temp_r0_6 = (temp_r4->raw[0x16] << 8) | temp_r4->raw[0x15];
                gCamera.y = temp_r0_6;
                gCamera.sa2__unk14 = temp_r0_6;
                temp_r4_2->qWorldX = (((temp_r4->raw[0x14] << 8) | temp_r4->pat4.unk13) + 0x78) << 8;
                temp_r4_2->qWorldY = ((((temp_r4->raw[0x16] << 8) | temp_r4->raw[0x15]) - (s8) (u8) temp_r4_2->spriteOffsetY) + 0x50) << 8;
                temp_r0_7 = temp_r4_2->moveState & 0xFFFEFFFF;
                temp_r4_2->moveState = temp_r0_7;
                temp_r3_2 = 0x100 & temp_r0_7;
                if (temp_r3_2 == 0) {
                    temp_r4_2->layer = temp_r6->layer;
                    temp_r4_2->qSpeedAirX = 0x400;
                    temp_r4_2->qSpeedGround = 0x400;
                    temp_r0_8 = temp_r4_2->moveState & 0xEFFFFFDF;
                    temp_r4_2->moveState = temp_r0_8;
                    temp_r4_2->sprColliding = (Sprite *) temp_r3_2;
                    if (temp_r0_8 & 0x800000) {
                        sub_8016F28(temp_r4_2);
                    }
                    if (!(temp_r4_2->moveState & 0x01000000)) {
                        Player_8005380(temp_r4_2);
                    }
                }
                gStageData.unkB7 = 2;
                goto block_109;
            case 0x28:                              /* switch 1 */
                if ((temp_r1 != 0) && (gStageData.playerIndex != 0)) {

                } else {
                    sub_802790C((temp_r4->raw[0x14] << 8) | temp_r4->pat4.unk13, (temp_r4->raw[0x16] << 8) | temp_r4->raw[0x15]);
                    if (gStageData.playerIndex != 0) {

                    } else {
                        gStageData.unk8F = 1;
                        sp0.unk0 = 0x28;
                        sp0 = (sp0 & 0xFF0000FF) | (((temp_r4->raw[0x14] << 8) | temp_r4->pat4.unk13) << 8);
                        sp0.unk3 = (u8) temp_r4->raw[0x15];
                        sp0.unk4 = (u8) temp_r4->raw[0x16];
                        sub_8026AB8();
                    }
                }
                goto block_109;
            case 0x38:                              /* switch 1 */
                temp_r0_9 = temp_r4->pat4.unk13 - 1;
                switch (temp_r0_9) {                /* switch 2; irregular */
                case 0:                             /* switch 2 */
                    temp_r3_3 = &gPlayers[(u32) (temp_r6->unk2B << 0x1E) >> 0x1E];
                    gStageData.unkC = temp_r4->raw[0x14];
                    gStageData.nextMapIndex = (u16) temp_r4->raw[0x15];
                    temp_r3_3->moveState &= 0xEFFFFFFF;
                    if (temp_r4->raw[0x15] == 1) {
                        gStageData.zone = temp_r4->raw[0x16];
                        var_r4 = Player_800AE14;
                    } else {
                        var_r4 = Player_800AD24;
                    }
                    SetPlayerCallback(temp_r3_3, var_r4);
                    SetPlayerCallback(temp_r6, var_r4);
                    break;
                case 31:                            /* switch 2 */
                    if ((gStageData.warpId == temp_r4->raw[0x14]) && (gStageData.currentLevel == temp_r4->raw[0x15]) && (gStageData.zone == temp_r4->raw[0x16])) {

                    } else {
                        gStageData.warpId = temp_r4->raw[0x14];
                        gStageData.currentLevel = (u16) temp_r4->raw[0x15];
                        gStageData.zone = temp_r4->raw[0x16];
                        sub_8003D2C();
                        WarpToMap((s16) gStageData.currentLevel, (s16) gStageData.warpId);
                    }
                    break;
                case 4:                             /* switch 2 */
                    gStageData.unkB6 = 1;
                    break;
                case 2:                             /* switch 2 */
                    temp_r2 = &gPlayers[(u32) (temp_r6->unk2B << 0x1E) >> 0x1E];
                    if (temp_r2->moveState & 0x100) {

                    } else {
                        Player_8009518(temp_r2);
                    }
                    break;
                case 6:                             /* switch 2 */
                    if (((s32) temp_r4->raw[0x14] >> gStageData.playerIndex) & 1) {
                        gStageData.rings += temp_r4->raw[0x15];
                    }
                    var_r3 = 0;
                    do {
                        temp_r4_3 = var_r3;
                        if (((s32) temp_r4->raw[0x14] >> (temp_r4_3 & 1)) & 1) {
                            sub_8017A58(&gPlayers[temp_r4_3]);
                        }
                        temp_r0_10 = temp_r4_3 + 1;
                        var_r3 = (s16) temp_r0_10;
                    } while ((s32) (s16) temp_r0_10 <= 3);
                    break;
                case 7:                             /* switch 2 */
                    var_r3_2 = 0;
                    do {
                        temp_r4_4 = var_r3_2;
                        if (((s32) temp_r4->raw[0x14] >> temp_r4_4) & 1) {
                            temp_r2_2 = &gPlayers[temp_r4_4];
                            temp_r2_2->timerSlowItem = 0x258;
                            temp_r2_2->timerSpeedup = 0;
                            temp_r2_2->unk62 = 0;
                            sub_80179BC(temp_r2_2);
                        }
                        temp_r0_11 = temp_r4_4 + 1;
                        var_r3_2 = (s16) temp_r0_11;
                    } while ((s32) (s16) temp_r0_11 <= 3);
                    break;
                case 8:                             /* switch 2 */
                    var_r3_3 = 0;
                    do {
                        temp_r4_5 = var_r3_3;
                        if (((s32) temp_r4->raw[0x14] >> temp_r4_5) & 1) {
                            temp_r1_5 = &gPlayers[temp_r4_5];
                            temp_r1_5->timerSpeedup = 0x4B0;
                            temp_r1_5->timerSlowItem = 0;
                            temp_r1_5->unk62 = 0;
                        }
                        temp_r0_12 = temp_r4_5 + 1;
                        var_r3_3 = (s16) temp_r0_12;
                    } while ((s32) (s16) temp_r0_12 <= 3);
                    break;
                case 9:                             /* switch 2 */
                    var_r3_4 = 0;
                    do {
                        temp_r4_6 = var_r3_4;
                        if (((s32) temp_r4->raw[0x14] >> temp_r4_6) & 1) {
                            temp_r1_6 = &gPlayers[temp_r4_6];
                            temp_r1_6->unk62 = 0x258;
                            temp_r1_6->timerSpeedup = 0;
                            temp_r1_6->timerSlowItem = 0;
                            sub_80179BC(temp_r1_6);
                        }
                        temp_r0_13 = temp_r4_6 + 1;
                        var_r3_4 = (s16) temp_r0_13;
                    } while ((s32) (s16) temp_r0_13 <= 3);
                    break;
                case 34:                            /* switch 2 */
                    gStageData.lives = temp_r4->raw[0x15] - 1;
                    AddLives(1);
                    break;
                case 33:                            /* switch 2 */
                    gUnknown_03001060.unk8 = 0;
                    gUnknown_03001060.unk9 = 0;
                    /* fallthrough */
                case 10:                            /* switch 2 */
                    temp_r6_2 = &gPlayers[gStageData.playerIndex];
                    var_ip = 1;
                    if (((s32) gUnknown_03001060.unk8 >> gStageData.playerIndex) & 1) {
                        var_ip = 0;
                    }
                    temp_r0_14 = (s16) temp_r1;
                    temp_r4_7 = 1 << temp_r0_14;
                    gUnknown_03001060.unk8 = gUnknown_03001060.unk8 | (1 << gStageData.playerIndex) | temp_r4_7;
                    temp_r3_4 = 1 << (temp_r0_14 + 4);
                    gUnknown_03001060.unk9 &= ~(temp_r3_4 | temp_r4_7);
                    var_r1 = gUnknown_03001060.unk9;
                    if (temp_r4->raw[0x14] != 0) {
                        var_r1 |= temp_r3_4;
                    }
                    gUnknown_03001060.unk9 = var_r1;
                    var_r1_2 = gUnknown_03001060.unk9;
                    if (temp_r4->raw[0x15] != 0) {
                        var_r1_2 |= temp_r4_7;
                    }
                    gUnknown_03001060.unk9 = var_r1_2;
                    temp_r1_7 = temp_r6_2->callback;
                    if (temp_r1_7 == Player_8008A8C) {

                    } else if (temp_r1_7 == Player_800ED80) {

                    } else if (var_ip == 0) {

                    } else {
                        sub_8026850();
                        if (!(((s32) gUnknown_03001060.unk9 >> (gStageData.playerIndex + 4)) & 1)) {

                        } else {
                            sub_800ED50(temp_r6_2);
                            temp_r2_3 = &gPlayers[(u32) (temp_r6_2->unk2B << 0x1E) >> 0x1E];
                            if ((0x1C & temp_r2_3->unk2B) != 8) {

                            } else {
                                sub_800ED50(temp_r2_3);
                            }
                        }
                    }
                    break;
                case 32:                            /* switch 2 */
                    temp_r4_8 = &gPlayers[gStageData.playerIndex];
                    if (temp_r4_8->callback != Player_800ED80) {

                    } else {
                        Player_8008C1C(temp_r4_8);
                        temp_r2_4 = &gPlayers[(u32) (temp_r4_8->unk2B << 0x1E) >> 0x1E];
                        if ((0x1C & temp_r2_4->unk2B) == 8) {
                            Player_8008C1C(temp_r2_4);
                        }
                        sp0.unk0 = 0x38;
                        sp0.unk1 = 0x21;
                        sub_8026AB8(&sp0);
                    }
                    break;
                case 11:                            /* switch 2 */
                    sub_807A0E8(&temp_r4->pat4.unk12, (s16) temp_r1);
                    break;
                case 35:                            /* switch 2 */
                    gStageData.lives = temp_r4->raw[0x14];
                    break;
                case 36:                            /* switch 2 */
                    gStageData.levelTimer = (temp_r4->raw[0x15] << 8) | temp_r4->raw[0x14];
                    break;
                case 5:                             /* switch 2 */
                    if (gStageData.gameMode == 6) {
                        if (gStageData.taskCheese != NULL) {
                            temp_r2_5 = &gPlayers[temp_r4->raw[0x14]];
                            if ((0xF & temp_r2_5->unk2A) != 1) {
                                temp_r2_5->unk54 = 0x258;
                            }
                            sub_801EBC0(0, temp_r2_5);
                        }
                    } else if ((gStageData.gameMode == 7) && ((temp_r1 == 0) || (gStageData.playerIndex == 0))) {
                        if ((gStageData.playerIndex != 0) || (gStageData.levelTimer != 0)) {
                            sub_80293E8(&gPlayers[temp_r4->raw[0x14]]);
                            gStageData.mpOpponentPlayerIndex = temp_r4->raw[0x14];
                        }
                        if (gStageData.playerIndex == 0) {
                            temp_r2_6 = temp_r4->raw[0x14];
                            sp0.unk0 = 0x38;
                            sp0.unk1 = 6;
                            if (gStageData.levelTimer == 0) {
                                sp0.unk2 = (u8) gStageData.mpOpponentPlayerIndex;
                            } else {
                                sp0.unk2 = temp_r2_6;
                                gStageData.mpOpponentPlayerIndex = temp_r2_6;
                            }
                            sub_8026AB8(&sp0);
                        }
                    }
                    break;
                }
                goto block_109;
            }
        }
    }
}

void sub_80274AC(u16 arg0, u16 arg1) {
    s32 sp0;

    sp0.unk0 = 8;
    sp0 = (sp0 & 0xFF0000FF) | ((u32) (arg0 << 0x10) >> 8);
    sp0.unk3 = (u8) arg1;
    sp0.unk4 = (s8) ((u32) (arg1 << 0x10) >> 0x18);
    gStageData.unkBB = 7;
    sub_8026AB8(&sp0);
}

void sub_80274F4(u8 arg0, u16 x, s16 y) {
    s32 sp0;

    sp0.unk0 = (s8) ((arg0 & 7) | 0x10);
    sp0 = (sp0 & 0xFF0000FF) | ((u32) (x << 0x10) >> 8);
    sp0.unk3 = (u8) (u16) y;
    sp0.unk4 = (s8) ((u32) (y << 0x10) >> 0x18);
    sub_8026AB8(&sp0);
}

void sub_8027538(s32 arg0) {
    s32 sp0;
    u32 temp_r0;

    temp_r0 = arg0 - gStageData.taskEntitiesManager->data->unk4;
    sp0.unk0 = 0x18;
    sp0 = (u8) sp0 | (temp_r0 << 8);
    sp0.unk4 = (s8) (temp_r0 >> 0x18);
    sub_8026AB8(&sp0);
}

void sub_8027578(s32 arg0) {
    s32 sp0;
    u32 temp_r0;

    temp_r0 = arg0 - gStageData.taskEntitiesManager->data->unk8;
    sp0.unk0 = 0x20;
    sp0 = (u8) sp0 | (temp_r0 << 8);
    sp0.unk4 = (s8) (temp_r0 >> 0x18);
    sub_8026AB8(&sp0);
}

void sub_80275B8(u32 level, u8 arg1, u8 arg2) {
    ? sp0;
    u8 temp_r0;

    temp_r0 = (u8) level;
    sp0.unk0 = 0x38;
    sp0.unk1 = 1;
    sp0.unk2 = arg2;
    if (temp_r0 == 1) {
        sp0.unk4 = arg1;
    }
    sp0.unk3 = temp_r0;
    sub_8026AB8();
}

void sub_80275F0(u8 arg0, s8 arg1, u8 arg2) {
    s32 sp0;

    sp0.unk0 = 0x38;
    sp0.unk1 = 0x20;
    sp0.unk2 = arg2;
    sp0.unk4 = arg1;
    sp0.unk3 = arg0;
    sub_8026AB8(&sp0);
}

void sub_8027620(s32 arg0, u16 arg1) {
    s32 sp0;

    sp0.unk0 = 0x30;
    sp0 = (sp0 & 0xFF0000FF) | ((u32) (arg0 << 0x10) >> 8);
    sp0.unk3 = (u8) arg1;
    sp0.unk4 = (s8) ((u32) (arg1 << 0x10) >> 0x18);
    sub_8026AB8(&sp0);
}

void sub_8027658(void) {
    s32 sp0;

    sp0.unk0 = 0x38;
    sp0.unk1 = 5;
    sub_8026AB8(&sp0);
}

void sub_8027674(u8 param0, u16 param1) {
    s32 sp0;

    sp0.unk0 = 0x38;
    sp0.unk1 = 0xC;
    sp0.unk2 = param0;
    sp0.unk3 = (u8) param1;
    sp0.unk4 = (s8) ((u32) (param1 << 0x10) >> 0x18);
    sub_8026AB8(&sp0);
}

void sub_80276A8(u8 charId) {
    s32 sp0;
    u8 temp_r3;

    temp_r3 = charId;
    sp0.unk0 = 0x38;
    sp0.unk1 = 6;
    if ((gStageData.playerIndex == 0) && (gStageData.levelTimer == 0)) {
        sp0.unk2 = (u8) gStageData.mpOpponentPlayerIndex;
    } else {
        sp0.unk2 = temp_r3;
        gStageData.mpOpponentPlayerIndex = temp_r3;
    }
    sub_8026AB8(&sp0);
}

void sub_80276F4(u16 somePlayerFlags, u16 playerIndex) {
    s32 sp0;

    gStageData.unk8F = 1;
    sp0.unk0 = 0x28;
    sp0 = (sp0 & 0xFF0000FF) | ((u32) (somePlayerFlags << 0x10) >> 8);
    sp0.unk3 = (u8) playerIndex;
    sp0.unk4 = (s8) ((u32) (playerIndex << 0x10) >> 0x18);
    sub_8026AB8(&sp0);
}

void sub_802773C(u16 arg0, u16 arg1) {
    ? sp0;

    sp0.unk0 = 0x38;
    sp0.unk1 = 7;
    sp0.unk2 = (s8) (1 << arg0);
    sp0.unk3 = (s8) arg1;
    sub_8026AB8();
}

void sub_8027768(u16 arg0, u16 arg1) {
    s32 sp0;
    s8 var_r0;
    u16 temp_r3;

    temp_r3 = arg1;
    sp0.unk0 = 0x38;
    sp0.unk1 = 8;
    if (arg0 & 1) {
        if (temp_r3 == 0) {
            var_r0 = 5;
        } else {
            goto block_5;
        }
    } else if (temp_r3 != 0) {
        var_r0 = 5;
    } else {
block_5:
        var_r0 = 0xA;
    }
    sp0.unk2 = var_r0;
    sub_8026AB8(&sp0);
}

void sub_80277AC(u16 arg0, u16 arg1) {
    s32 sp0;
    s8 var_r0;
    u16 temp_r3;

    temp_r3 = arg1;
    sp0.unk0 = 0x38;
    sp0.unk1 = 9;
    if (arg0 & 1) {
        if (temp_r3 == 0) {
            var_r0 = 0xA;
        } else {
            goto block_5;
        }
    } else if (temp_r3 != 0) {
        var_r0 = 0xA;
    } else {
block_5:
        var_r0 = 5;
    }
    sp0.unk2 = var_r0;
    sub_8026AB8(&sp0);
}

void sub_80277F0(u16 arg0, u16 arg1) {
    s32 sp0;
    u16 temp_r3;

    temp_r3 = arg1;
    sp0.unk0 = 0x38;
    sp0.unk1 = 0xA;
    if (arg0 & 1) {
        if (temp_r3 == 0) {
            goto block_4;
        }
        goto block_5;
    }
    if (temp_r3 != 0) {
block_4:
        sp0.unk2 = 5;
    } else {
block_5:
        sp0.unk2 = 0xA;
    }
    sub_8026AB8(&sp0);
}

void sub_8027834(void) {
    s32 sp0;

    sp0.unk0 = 0x38;
    sp0.unk1 = 0x23;
    sp0.unk3 = (u8) gStageData.lives;
    sub_8026AB8(&sp0);
}

void sub_802785C(void) {
    s32 sp0;

    sp0.unk0 = 0x38;
    sp0.unk1 = 0x21;
    sub_8026AB8(&sp0);
}

void sub_8027878(u8 arg0) {
    s32 sp0;

    sp0.unk0 = 0x38;
    sp0.unk1 = 0x24;
    sp0.unk2 = arg0;
    sub_8026AB8(&sp0);
}

void sub_802789C(void) {
    s32 sp0;

    sp0.unk0 = 0x38;
    sp0.unk1 = 0x25;
    sp0.unk2 = (u16) gStageData.levelTimer;
    sub_8026AB8(&sp0);
}

void sub_80278C4(void) {
    gMultiSioSend.pat4.unk12 = gStageData.unk5;
    gMultiSioSend.patU.levelTimer = (s16) gStageData.levelTimer;
}

void sub_80278DC(void) {
    s32 sp0;

    sp0.unk0 = 0x38;
    sp0.unk1 = 3;
    sub_8026AB8(&sp0);
}

void sub_80278F8(void *arg0) {
    gStageData.nextMapIndex = arg0->unk2;
}

void sub_8027904(void) {

}

void sub_8027908(void) {

}

void sub_802790C(u16 arg0, u16 arg1) {
    Player *temp_r2;
    s32 temp_r0;
    u16 temp_r3;

    temp_r3 = arg0;
    temp_r2 = &gPlayers[arg1];
    temp_r2->unk69 = (u8) temp_r3;
    gStageData.unk8F = 1;
    temp_r0 = 0xF0 & temp_r3;
    switch (temp_r0) {                              /* irregular */
    case 16:
        temp_r2->unk66 = 0x384;
        return;
    case 32:
        sub_80296F8((u16) (u8) temp_r3);
        return;
    }
}

void sub_8027960(void) {
    s32 sp4;
    s16 temp_r7;
    s32 temp_r3;
    s32 temp_r5_2;
    u16 temp_r2;
    u8 temp_r5;

    gDispCnt = 0x1340;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    sp4 = 0;
    (void *)0x040000D4->unk0 = &sp4;
    (void *)0x040000D4->unk4 = (s32) (((0xC & gBgCntRegs[2]) << 0xC) + 0x06000000);
    (void *)0x040000D4->unk8 = 0x85000010;
    gBgSprites_Unknown1[2] = 0;
    gBgSprites_Unknown2[2][0] = 0;
    gBgSprites_Unknown2[2][1] = 0;
    gBgSprites_Unknown2[2][2] = 0xFF;
    gBgSprites_Unknown2[2][3] = 0x40;
    gBgSprites_Unknown1[1] = 0;
    gBgSprites_Unknown2[1][0] = 0;
    gBgSprites_Unknown2[1][1] = 0;
    gBgSprites_Unknown2[1][2] = -1U;
    gBgSprites_Unknown2[1][3] = 0x40;
    gBgSprites_Unknown1->unk0 = 0;
    gBgSprites_Unknown2[0][0] = 0;
    gBgSprites_Unknown2[0][1] = 0;
    gBgSprites_Unknown2[0][2] = -1U;
    gBgSprites_Unknown2[0][3] = 0x40;
    temp_r7 = (s16) sub_8025D58();
    if (temp_r7 != 0) {
        sub_802613C();
        return;
    }
    temp_r5 = gLoadedSaveGame.language;
    temp_r2 = TaskCreate(Task_F4_80283CC, 0xF4U, 0x1000U, 0U, (void (*)(Task *)) temp_r7)->data;
    temp_r2->unkF0 = temp_r7;
    temp_r2->unkDC = 0;
    temp_r2->unkDD = 0;
    temp_r5_2 = temp_r5 * 8;
    temp_r3 = *(temp_r5_2 + &gUnknown_080CEED8);
    temp_r2->unkE0 = temp_r3;
    temp_r2->unkE4 = (s32) (*(temp_r5_2 + (&gUnknown_080CEED8 + 4)) - temp_r3);
    temp_r2->unkE8 = (s32) temp_r7;
    temp_r2->unkEC = (s32) temp_r7;
    m4aSongNumStart(0x44U);
    sub_80280AC(temp_r2);
    sub_8027FD4(temp_r2);
    temp_r2->unk0 = temp_r7;
    temp_r2->unk2 = 2;
    temp_r2->unk4 = temp_r7;
    temp_r2->unk6 = 0x200;
    temp_r2->unk8 = 0xFF;
    temp_r2->unkA = temp_r7;
    ScreenFadeUpdateValues((ScreenFade *) temp_r2);
    *(s16 *)0x05000000 = temp_r7;
    gUnknown_03001060.filler0[3] = 0;
    gUnknown_03001060.filler0[2] = 0;
    gUnknown_03001060.filler0[1] = 0;
    gUnknown_03001060.filler0[0] = 0;
    sub_80C6168();
}

void Task_F4_8027ADC(void) {
    u16 temp_r5;

    temp_r5 = gCurTask->data;
    gUnknown_03001060.filler0[3] = 0;
    gUnknown_03001060.filler0[2] = 0;
    gUnknown_03001060.filler0[1] = 0;
    gUnknown_03001060.filler0[0] = 0;
    gMultiSioEnabled = 0;
    sub_80260F0();
    temp_r5->unk0 = 0;
    temp_r5->unk2 = 1;
    temp_r5->unk4 = 0;
    temp_r5->unk6 = 0x200;
    temp_r5->unk8 = 0xFF;
    temp_r5->unkA = 0;
    ScreenFadeUpdateValues((ScreenFade *) temp_r5);
    gCurTask->main = Task_F4_8028418;
}

void sa2__sub_8081604(void) {
    s16 temp_r5;
    s8 temp_r1;
    u16 temp_r6;
    u16 temp_r7;
    u32 temp_r0;
    void (*var_r0)();
    void *temp_r1_2;
    void *temp_r1_3;

    temp_r6 = gCurTask->data;
    temp_r7 = temp_r6;
    temp_r0 = (u32) ((s32) (sa2__sub_8081D70() << 0x18) >> 8) >> 0x10;
    temp_r6->unkDC = (s8) temp_r0;
    if (0x30 & *(u8 *)0x04000128) {
        sub_802613C();
        return;
    }
    temp_r1 = 0xE & gMultiBootParam.client_bit;
    if (temp_r1 != 0) {
        if ((gMultiBootParam.probe_count == 0) && ((s32) (s16) temp_r0 > 1)) {
            sub_80285A0();
            if (8 & gPressedKeys) {
                temp_r6->unkDD = 1;
                gFlags |= 0xC000;
                m4aMPlayAllStop();
                gFlags &= ~4;
                m4aSoundVSyncOff();
                (void *)0x040000B0->unkA = (u16) (0xC5FF & (void *)0x040000B0->unkA);
                (void *)0x040000B0->unkA = (u16) (0x7FFF & (void *)0x040000B0->unkA);
                temp_r1_2 = (void *)0x040000B0 + 0xC;
                temp_r1_2->unkA = (u16) (0xC5FF & temp_r1_2->unkA);
                temp_r1_2->unkA = (u16) (0x7FFF & temp_r1_2->unkA);
                temp_r1_3 = temp_r1_2 + 0xC;
                temp_r1_3->unkA = (u16) (0xC5FF & temp_r1_3->unkA);
                temp_r1_3->unkA = (u16) (0x7FFF & temp_r1_3->unkA);
                (void *)0x040000D4->unkA = (u16) (0xC5FF & (void *)0x040000D4->unkA);
                (void *)0x040000D4->unkA = (u16) (0x7FFF & (void *)0x040000D4->unkA);
                MultiBootStartMaster(&gMultiBootParam, temp_r6->unkE0 + 0xC0, temp_r6->unkE4 - 0xC0, 4U, 1);
            }
        }
    } else {
        temp_r6->unkDD = temp_r1;
        gFlags = gFlags & 0xFFFFBFFF & 0xFFFF7FFF;
        m4aSoundVSyncOn();
    }
    if ((temp_r7->unkDD == 0) && (2 & gPressedKeys)) {
        m4aSongNumStart(0x6BU);
        var_r0 = Task_F4_8027ADC;
        goto block_14;
    }
    temp_r5 = sub_8028530();
    if ((temp_r5 == 0) && (MultiBootCheckComplete(&gMultiBootParam) != 0)) {
        sub_8028160(temp_r7);
        temp_r7->unkDE = (s8) temp_r5;
        gMultiSioSend.pat2.unk0 = (u8) temp_r5;
        gMultiSioRecv->pat2.unk0 = (u8) temp_r5;
        gMultiSioRecv[1].pat2.unk0 = (u8) temp_r5;
        gMultiSioRecv[2].pat2.unk0 = (u8) temp_r5;
        gMultiSioRecv[3].pat2.unk0 = (u8) temp_r5;
        gMultiSioSend.pat0.unk2 = (u8) temp_r5;
        gMultiSioSend.pat0.unk0 = 0xF001;
        gMultiSioRecv->pat0.unk2 = 0;
        gMultiSioRecv[1].pat0.unk2 = 0;
        gMultiSioRecv[2].pat0.unk2 = 0;
        gMultiSioRecv[3].pat0.unk2 = 0;
        var_r0 = sub_8028448;
block_14:
        gCurTask->main = var_r0;
    }
}

void sub_8027D3C(void) {
    u16 temp_r4;

    temp_r4 = gCurTask->data;
    MultiSioStop();
    *(s16 *)0x04000208 = 0;
    *gIntrTable = Sio32MultiLoadIntr;
    *(s16 *)0x04000208 = 1;
    if (temp_r4->unkDE == 4) {
        if (gLoadedSaveGame.language != 0) {
            Sio32MultiLoadInit(gMultiSioStatusFlags & 0x80, &gUnknown_08E5F6B0);
        } else {
            Sio32MultiLoadInit(gMultiSioStatusFlags & 0x80, &gUnknown_08E5C244);
        }
    } else {
        Sio32MultiLoadInit(gMultiSioStatusFlags & 0x80, *((temp_r4->unkDE * 4) + &gUnknown_080CEF08));
    }
    gCurTask->main = sa2__sub_8081A5C;
    sub_8028338();
}

void sa2__sub_8081A5C(void) {
    u32 sp0;
    s32 *var_r2;
    s32 var_r0;
    u16 temp_r4;
    u16 temp_r6;
    u32 temp_r3;
    u32 var_r1;

    temp_r4 = gCurTask->data;
    temp_r6 = temp_r4;
    sp0 = 0;
    if (Sio32MultiLoadMain(&sp0) != 0) {
        gCurTask->main = sub_8028478;
    }
    temp_r3 = temp_r4->unkEC;
    if (sp0 > temp_r3) {
        var_r2 = temp_r4 + 0xE8;
        var_r1 = sp0 - temp_r3;
        var_r0 = temp_r4->unkE8;
        goto block_6;
    }
    if (sp0 < temp_r3) {
        var_r2 = temp_r4 + 0xE8;
        var_r0 = (temp_r4->unkE8 + 0x2000) - temp_r3;
        temp_r4->unkE8 = var_r0;
        var_r1 = sp0;
block_6:
        *var_r2 = var_r0 + var_r1;
        temp_r4->unkEC = sp0;
    }
    sa2__sub_8081E90(temp_r6);
    sub_8028338();
}

void Task_F4_8027E70(void) {
    s16 temp_r1;
    s16 temp_r1_3;
    s16 var_r2;
    u16 temp_r1_2;
    u16 temp_r3;
    u16 var_r4;
    u32 temp_r0_2;
    u32 temp_r6;
    void *temp_r0;

    temp_r3 = gCurTask->data;
    if ((gMultiSioStatusFlags & 0x20) && ((u32) temp_r3->unkDE <= 8U)) {
        gCurTask->main = sub_8027D3C;
    }
    if (gMultiSioStatusFlags & 0x10) {
        temp_r3->unkDD = 1U;
    }
    gMultiSioSend.pat2.unk0 = (u8) ((u32) (0 - gLoadedSaveGame.language) >> 0x1F);
    gMultiSioStatusFlags = MultiSioMain(&gMultiSioSend, gMultiSioRecv, (u32) temp_r3->unkDD);
    if (temp_r3->unkDF == 0) {
        MultiSioStart();
        temp_r3->unkDF = 1U;
    }
    temp_r6 = (u32) (gMultiSioStatusFlags & 0xF00) >> 8;
    var_r4 = 1;
loop_8:
    if (sa2__sub_8081E38(temp_r3, var_r4) == 0) {
        sub_802613C();
        return;
    }
    temp_r1 = (s16) var_r4;
    if (((temp_r6 << temp_r1) != 0) && (gMultiSioRecv[temp_r1].pat0.unk0 == 0x6001)) {
        var_r2 = 0;
        do {
            temp_r1_3 = var_r2;
            temp_r0 = (temp_r1_3 * 4) + &gUnknown_03000970;
            temp_r0->unk0 = 0;
            temp_r0->unk1 = 0;
            temp_r0->unk2 = (s8) var_r2;
            temp_r0->unk3 = 0;
            temp_r1_2 = temp_r1_3 + 1;
            var_r2 = (s16) temp_r1_2;
        } while ((s32) (s16) temp_r1_2 <= 3);
        TasksDestroyInPriorityRange(0U, 0xFFFFU);
        gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;
        gBgSpritesCount = 0;
        gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;
        sub_8028708();
        return;
    }
    temp_r0_2 = (var_r4 << 0x10) + 0x10000;
    var_r4 = (u16) (temp_r0_2 >> 0x10);
    if ((s32) ((s32) temp_r0_2 >> 0x10) > 3) {
        sa2__sub_8081E90(temp_r3);
        if (temp_r3->unkDE != gMultiSioRecv->pat0.unk2) {
            temp_r3->unkDE = (u8) gMultiSioRecv->pat0.unk2;
        }
        sub_8028338();
        return;
    }
    goto loop_8;
}

void sub_8027FD4(void *arg0) {
    u8 *sp0;
    ? sp4;
    Sprite *temp_r1;
    Sprite *temp_r1_2;
    s32 temp_r4;

    memcpy(&sp0, &gUnknown_080CEF2C, 0x24);
    temp_r1 = arg0 + 0x8C;
    arg0->unk8C = 0x06010000;
    temp_r4 = gLoadedSaveGame.language * 6;
    temp_r1->anim = *(&sp0 + temp_r4);
    temp_r1->variant = (u8) *(&sp0 + 2 + temp_r4);
    temp_r1->prevVariant = 0xFF;
    temp_r1->x = 0x78;
    temp_r1->y = 0x8C;
    temp_r1->oamFlags = 0;
    temp_r1->animCursor = 0;
    temp_r1->qAnimDelay = 0;
    temp_r1->animSpeed = 0x10;
    temp_r1->palId = 0;
    temp_r1->frameFlags = 0;
    temp_r1->hitboxes[0].index = -1;
    UpdateSpriteAnimation(temp_r1);
    temp_r1_2 = arg0 + 0xB4;
    arg0->unkB4 = (s32) ((*(&sp4 + temp_r4) << 5) + 0x06010000);
    temp_r1_2->anim = 0x596;
    temp_r1_2->variant = 0xF;
    temp_r1_2->prevVariant = -1U;
    temp_r1_2->x = 0x70;
    temp_r1_2->y = 0x68;
    temp_r1_2->oamFlags = 0;
    temp_r1_2->animCursor = 0;
    temp_r1_2->qAnimDelay = 0;
    temp_r1_2->animSpeed = 0x10;
    temp_r1_2->palId = 0;
    temp_r1_2->frameFlags = 0;
    temp_r1_2->hitboxes[0].index = -1;
    UpdateSpriteAnimation(temp_r1_2);
}

void sub_80280AC(void *arg0) {
    Background *temp_r2;
    Background *temp_r2_2;

    gBgCntRegs[0] = 0x1E0F;
    gBgCntRegs[1] = 0x1C0A;
    temp_r2 = arg0 + 0xC;
    temp_r2->graphics.dest = (void *)0x0600C000;
    temp_r2->graphics.anim = 0;
    temp_r2->layoutVram = (u16 *)0x0600F000;
    temp_r2->unk18 = 0;
    temp_r2->unk1A = 0;
    temp_r2->tilemapId = TM_MULTI_CONNECTION_PENDING;
    temp_r2->unk1E = 0;
    temp_r2->unk20 = 0;
    temp_r2->unk22 = 0;
    temp_r2->unk24 = 0;
    temp_r2->targetTilesX = 0x20;
    temp_r2->targetTilesY = 0x20;
    arg0->unk36 = 0;
    temp_r2->flags = 0;
    DrawBackground(temp_r2);
    temp_r2_2 = arg0 + 0x4C;
    temp_r2_2->graphics.dest = (void *)0x06008000;
    temp_r2_2->graphics.anim = 0;
    temp_r2_2->layoutVram = (u16 *)0x0600E000;
    temp_r2_2->unk18 = 0;
    temp_r2_2->unk1A = 0;
    temp_r2_2->tilemapId = TM_UNKNOWN_375 + gLoadedSaveGame.language;
    temp_r2_2->unk1E = 0;
    temp_r2_2->unk20 = 0;
    temp_r2_2->unk22 = 0;
    temp_r2_2->unk24 = 0;
    temp_r2_2->targetTilesX = 0x20;
    temp_r2_2->targetTilesY = 0x20;
    arg0->unk76 = 0;
    temp_r2_2->flags = 0x11;
    DrawBackground(temp_r2_2);
}

void sub_8028160(void *arg0) {
    s32 sp0;
    s32 sp4;
    Background *temp_r2;
    Background *temp_r2_2;
    Sprite *temp_r1;
    Sprite *temp_r1_2;

    sp4 = 0x06010000;
    gDispCnt |= 0x2000;
    gBgCntRegs[0] = 0x1E0F;
    gBgCntRegs[1] = 0x1C0A;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgScrollRegs[1][0] = -32;
    gBgScrollRegs[1][1] = -16;
    sp0 = 0;
    (void *)0x040000D4->unk0 = &sp0;
    (void *)0x040000D4->unk4 = 0x06009FE0;
    (void *)0x040000D4->unk8 = 0x85000008;
    gBgSprites_Unknown1[1] = 0xFF;
    gBgSprites_Unknown2[1][0] = 0;
    gBgSprites_Unknown2[1][1] = 0;
    gBgSprites_Unknown2[1][2] = -1U;
    gBgSprites_Unknown2[1][3] = 0x20;
    temp_r2 = arg0 + 0xC;
    temp_r2->graphics.dest = (void *)0x0600C000;
    temp_r2->graphics.anim = 0;
    temp_r2->layoutVram = (u16 *)0x0600F000;
    temp_r2->unk18 = 0;
    temp_r2->unk1A = 0;
    temp_r2->tilemapId = TM_MULTI_SINGLE_PAK_TRANSFER_MASTER;
    temp_r2->unk1E = 0;
    temp_r2->unk20 = 0;
    temp_r2->unk22 = 0;
    temp_r2->unk24 = 0;
    temp_r2->targetTilesX = 0x1E;
    temp_r2->targetTilesY = 0x14;
    arg0->unk36 = 0;
    temp_r2->flags = 0;
    DrawBackground(temp_r2);
    temp_r2_2 = arg0 + 0x4C;
    temp_r2_2->graphics.dest = (void *)0x06008000;
    temp_r2_2->graphics.anim = 0;
    temp_r2_2->layoutVram = (u16 *)0x0600E000;
    temp_r2_2->unk18 = 0;
    temp_r2_2->unk1A = 0;
    temp_r2_2->tilemapId = TM_NOTIFICATION_PLEASE_WAIT_JP + gLoadedSaveGame.language;
    temp_r2_2->unk1E = 0;
    temp_r2_2->unk20 = 0;
    temp_r2_2->unk22 = 0;
    temp_r2_2->unk24 = 0;
    temp_r2_2->targetTilesX = 0xE;
    temp_r2_2->targetTilesY = 3;
    arg0->unk76 = 0;
    temp_r2_2->flags = 1;
    DrawBackground(temp_r2_2);
    gWinRegs->unk0 = 0xB8D0;
    gWinRegs[2] = 0x898;
    gWinRegs[4] = 0;
    gWinRegs[5] = 0x13;
    temp_r1 = arg0 + 0x8C;
    arg0->unk8C = sp4;
    temp_r1->anim = 0x5AD;
    temp_r1->variant = 0;
    temp_r1->prevVariant = -1U;
    temp_r1->x = 0x50;
    temp_r1->y = 0x6C;
    temp_r1->oamFlags = 0;
    temp_r1->animCursor = 0;
    temp_r1->qAnimDelay = 0;
    temp_r1->animSpeed = 0x10;
    temp_r1->palId = 0;
    temp_r1->frameFlags = 0;
    temp_r1->hitboxes[0].index = -1;
    UpdateSpriteAnimation(temp_r1);
    sp4 += 0x600;
    temp_r1_2 = arg0 + 0xB4;
    arg0->unkB4 = sp4;
    temp_r1_2->anim = 0x5AD;
    temp_r1_2->variant = 1;
    temp_r1_2->prevVariant = -1U;
    temp_r1_2->x = 0x70;
    temp_r1_2->y = 0x58;
    temp_r1_2->oamFlags = 0;
    temp_r1_2->animCursor = 0;
    temp_r1_2->qAnimDelay = 0;
    temp_r1_2->animSpeed = 0x10;
    temp_r1_2->palId = 0;
    temp_r1_2->frameFlags = 0;
    temp_r1_2->hitboxes[0].index = -1;
    UpdateSpriteAnimation(temp_r1_2);
}

void sub_8028338(void) {
    Sprite *temp_r7;
    Sprite *temp_r7_2;
    u16 temp_r6;

    temp_r6 = gCurTask->data;
    temp_r6->unkF0 = (u16) ((temp_r6->unkF0 + 1) & 0x3FF);
    temp_r7 = temp_r6 + 0x8C;
    temp_r7->y = ((s32) (((s32) ((u16) gSineTable[(temp_r6->unkF0 * 8) & 0x3FF] << 0x10) >> 0x1A) + 8) >> 1) + 0x67;
    UpdateSpriteAnimation(temp_r7);
    DisplaySprite(temp_r7);
    temp_r7_2 = temp_r6 + 0xB4;
    temp_r7_2->y = ((s32) (((s32) ((u16) gSineTable[((temp_r6->unkF0 * 8) + 0x20) & 0x3FF] << 0x10) >> 0x1A) + 8) >> 1) + 0x5D;
    UpdateSpriteAnimation(temp_r7_2);
    DisplaySprite(temp_r7_2);
}

void Task_F4_80283CC(void) {
    u16 temp_r4;

    temp_r4 = gCurTask->data;
    if ((UpdateScreenFade((ScreenFade *) temp_r4) << 0x18) != 0) {
        gMultiBootParam.masterp = temp_r4->unkE0;
        gMultiBootParam.server_type = 0;
        MultiBootInit(&gMultiBootParam);
        gCurTask->main = sa2__sub_8081604;
    }
}

void Task_F4_8028418(void) {
    if ((UpdateScreenFade((ScreenFade *) gCurTask->data) << 0x18) != 0) {
        LaunchChaoMenu(1, 4);
        TaskDestroy(gCurTask);
    }
}

void sub_8028448(void) {
    sub_80284E8(gCurTask->data);
    gCurTask->main = Task_F4_8027E70;
    MultiSioStart();
    sub_8028338();
}

void sub_8028478(void) {
    sub_80284E8(gCurTask->data);
    gCurTask->main = Task_F4_80284A4;
    sub_8028338();
}

void Task_F4_80284A4(void) {
    if (0x10 & gMultiSioStatusFlags) {
        if (gMultiSioStatusFlags & 0x40) {
            gMultiSioSend.pat0.unk2 += 1;
        }
        gCurTask->main = Task_F4_8027E70;
    }
    Task_F4_8027E70();
    sub_8028338();
}

void sub_80284E8(void *arg0) {
    *(s16 *)0x04000208 = 0;
    *gIntrTable = (void (*)()) gMultiSioIntrFuncBuf;
    *(s16 *)0x04000208 = 1;
    MultiSioInit((u32) (gMultiSioStatusFlags & 0xF00) >> 8);
    arg0->unkDD = 0;
    arg0->unkDF = 0;
    gMultiSioStatusFlags = 0;
}

s16 sub_8028530(void) {
    s32 temp_r0;

    temp_r0 = MultiBootMain(&gMultiBootParam);
    if ((temp_r0 == 0x50) || (temp_r0 == 0x60) || (temp_r0 == 0x70) || (temp_r0 == 0x71)) {
        sub_802613C();
        return 1;
    }
    return 0;
}

s8 sa2__sub_8081D70(void) {
    u32 var_r2;
    u8 var_r1;

    var_r2 = 1;
    var_r1 = 1;
    do {
        if ((((s32) gMultiBootParam.response_bit >> var_r1) & 1) && (((s32) gMultiBootParam.client_bit >> var_r1) & 1)) {
            var_r2 = (u32) ((var_r2 << 0x18) + 0x01000000) >> 0x18;
        }
        var_r1 += 1;
    } while ((u32) var_r1 <= 3U);
    return (s8) var_r2;
}

void sub_80285A0(u16 arg0) {
    Sprite *temp_r6;
    Sprite *temp_r6_2;
    u16 temp_r5;

    temp_r5 = gCurTask->data;
    temp_r6 = temp_r5 + 0x8C;
    UpdateSpriteAnimation(temp_r6);
    DisplaySprite(temp_r6);
    temp_r6_2 = temp_r5 + 0xB4;
    temp_r6_2->anim = 0x596;
    temp_r6_2->variant = arg0 + 0xD;
    UpdateSpriteAnimation(temp_r6_2);
    DisplaySprite(temp_r6_2);
}

s32 sa2__sub_8081E38(u16 arg1) {
    u16 temp_r2;
    u8 *temp_r0;
    u8 temp_r1;

    temp_r2 = arg1;
    if ((1 << (temp_r2 + 8)) & gMultiSioStatusFlags) {
        if (!((1 << temp_r2) & gMultiSioStatusFlags)) {
            temp_r0 = &gUnknown_03001060.filler0[temp_r2];
            temp_r1 = *temp_r0;
            *temp_r0 = temp_r1 + 1;
            if ((u32) temp_r1 > 0xB4U) {
                return 0;
            }
            goto block_5;
        }
        gUnknown_03001060.filler0[temp_r2] = 0;
        goto block_5;
    }
block_5:
    return 1;
}

void sa2__sub_8081E90(void *arg0) {
    u8 var_r3;

    var_r3 = (u8) ((u32) (0x90 * arg0->unkE8) / 73728U);
    if ((u32) var_r3 > 0x90U) {
        var_r3 = 0x90;
    }
    *(s16 *)0x05000000 = 0;
    gWinRegs->unk0 = 0xB8D0;
    gWinRegs[2] = (0x98 - var_r3) | 0x800;
}

void sub_8028688(void) {
    s32 sp0;
    s32 sp4;
    s32 sp8;
    u32 var_r1;

    sp0 = 0;
    CpuSet(&sp0, &gUnknown_03000970, 0x05000004U);
    sp4 = 0;
    CpuSet(&sp4, &gStageData, 0x05000032U);
    gStageData.gameMode = 7;
    gStageData.difficulty = 0;
    gStageData.playerIndex = (u8) (SIO_MULTI_CNT->id);
    sp8 = 0;
    CpuSet(&sp8, &gUnknown_03001060, 0x05000016U);
    var_r1 = 0;
    do {
        gUnknown_03001060.unkC[var_r1] = var_r1;
        gUnknown_03001060.unk4C[var_r1] = (u8) var_r1;
        var_r1 = (u32) (u8) (var_r1 + 1);
    } while (var_r1 <= 3U);
}

void sub_8028708(void) {
    gTilemapsRef = &gUnknown_080D1C0C;
    gRefSpriteTables = &gSpriteTables;
    gMultiSioEnabled = 1;
    gFlags &= 0xFFFFBFFF;
    m4aSoundVSyncOn();
    sub_8028688();
    gStageData.language = (u8) ((u32) (0 - gLoadedSaveGame.language) >> 0x1F);
    sub_80287B8();
}

void sub_8028770(void) {
    gMultiSioEnabled = 1;
    gFlags &= 0xFFFFBFFF;
    gTilemapsRef = gUnknown_02035000;
    gRefSpriteTables = (SpriteTables *)0x02022000;
    sub_8025D58();
    sub_80287B8();
}

void sub_80287B8(void) {
    gUnknown_03001060.unk7 = 0;
    sub_80287CC();
}

void sub_80287CC(void) {
    u16 temp_r1;

    temp_r1 = TaskCreate(Task_80288F0, 0x494U, 0x1000U, 0U, NULL)->data;
    temp_r1->unk488 = 0;
    temp_r1->unk48A = 0;
    temp_r1->unk48B = 0;
    temp_r1->unk48C = 0;
    temp_r1->unk48D = 0;
    temp_r1->unk492 = 0;
    sub_8028DEC(temp_r1);
    m4aMPlayAllStop();
    m4aSongNumStart(0x321U);
    gDispCnt &= 0xFEFF;
}

void sub_8028850(void) {
    u16 temp_r4;

    temp_r4 = TaskCreate(Task_80288F0, 0x494U, 0x1000U, 0U, NULL)->data;
    temp_r4->unk488 = 0;
    temp_r4->unk48A = 1;
    temp_r4->unk48B = 0;
    temp_r4->unk48C = 0;
    temp_r4->unk48D = 0;
    temp_r4->unk492 = sub_80293BC();
    sub_8028DEC(temp_r4);
    m4aMPlayAllStop();
    m4aSongNumStart(0x323U);
    *(s16 *)0x05000000 = 0;
    *gBgPalette = 0;
    gDispCnt &= 0xFEFF;
}

void Task_80288F0(void) {
    s32 sp0;
    Sprite *temp_r0;
    s16 temp_r5;
    s32 temp_r4;
    s32 var_r1;
    s32 var_r3;
    u16 temp_r1;
    u16 temp_r7;
    u16 temp_sb;

    temp_r7 = gCurTask->data;
    temp_sb = temp_r7;
    if (((s32) (sub_802610C() << 0x10) < 0) || (temp_r5 = sub_8029368(), (temp_r5 != 0))) {
        sub_802613C();
        return;
    }
    gBldRegs.bldCnt = (u16) temp_r5;
    gBldRegs.bldY = (u16) temp_r5;
    gDispCnt = 0x1840;
    gUnknown_03001060.unk7 = ((u32) (gMultiSioStatusFlags & 0xF00) >> 8) | (1 << (SIO_MULTI_CNT->id));
    gMultiSioSend.pat0.unk0 = 0x6001;
    gMultiSioSend.pat0.unk2 = gUnknown_03001060.unk7;
    gMultiSioSend.pat0.unk3 = gStageData.language;
    gMultiSioSend.pat3_0.filler5[0] = (temp_r7->unk48C * 0x10) | temp_r7->unk48B;
    gMultiSioSend.pat5.filler3[1] = gStageData.mpOpponentPlayerIndex;
    sub_8029150(0U, gUnknown_03001060.unk7, temp_r7->unk488);
    *(s16 *)0x05000000 = temp_r5;
    if (gStageData.playerIndex != 0) {
        gStageData.mpOpponentPlayerIndex = gMultiSioRecv->pat5.filler3[1];
        if (gStageData.language != gMultiSioRecv->pat0.unk3) {
            gStageData.language = gMultiSioRecv->pat0.unk3;
            temp_r0 = temp_r7 + 0x460;
            temp_r0->variant = (u8) ((u32) (0 - gMultiSioRecv->pat0.unk3) >> 0x1F);
            UpdateSpriteAnimation(temp_r0);
        }
    }
    if ((gMultiSioRecv->pat0.unk0 == 0x6001) || (gStageData.playerIndex == 0)) {
        temp_r1 = temp_sb->unk488 + 5;
        temp_sb->unk488 = temp_r1;
        if ((s32) (temp_r1 << 0x10) > 0x01860000) {
            if (gStageData.playerIndex == 0) {
                temp_r4 = (0x196225 * gPseudoRandom) + 0x3C6EF35F;
                gPseudoRandom = temp_r4;
                sp0 = temp_r4;
                var_r3 = (sp0 & 0xF) << 0x10;
                if (var_r3 != 0) {
                    var_r1 = temp_r4;
                    do {
                        var_r1 = (0x196225 * var_r1) + 0x3C6EF35F;
                        sp0 = var_r1;
                        var_r3 += 0xFFFF0000;
                    } while ((var_r3 >> 0x10) != 0);
                    gPseudoRandom = var_r1;
                }
                gPseudoRandom = sp0;
            }
            temp_sb->unk492 = sub_80293BC();
            sub_80292C8(temp_sb);
            temp_sb->unk488 = 0x12CU;
            gCurTask->main = Task_8028AA4;
        }
    }
}

void Task_8028AA4(void) {
    s32 temp_r1;
    s8 temp_r1_2;
    s8 temp_r1_3;
    s8 temp_r1_4;
    u16 temp_r0_2;
    u16 temp_r4;
    u16 temp_r5;
    u32 temp_r0;

    temp_r4 = gCurTask->data;
    temp_r5 = temp_r4;
    if (((s32) (sub_802610C() << 0x10) < 0) || ((sub_8029368() << 0x10) != 0)) {
        sub_802613C();
        return;
    }
    temp_r0 = (u32) (gMultiSioStatusFlags & 0xF00) >> 8;
    gUnknown_03001060.unk7 = (1 << (SIO_MULTI_CNT->id)) | temp_r0;
    gMultiSioSend.pat0.unk0 = 0x6001;
    gMultiSioSend.pat0.unk2 = gUnknown_03001060.unk7;
    gMultiSioSend.pat3_0.filler5[0] = (temp_r4->unk48C * 0x10) | temp_r4->unk48B;
    gMultiSioSend.pat5.filler3[1] = gStageData.mpOpponentPlayerIndex;
    if (gStageData.playerIndex == 0) {
        temp_r1 = (0x196225 * gPseudoRandom) + 0x3C6EF35F;
        gPseudoRandom = temp_r1;
        temp_r4->unk48B = (u8) (temp_r1 & 7);
        temp_r4->unk48C = (u8) (((u32) temp_r1 >> 3) & 1);
        temp_r4->unk48D = (s8) (((u32) temp_r1 >> 6) & 7);
        temp_r1_2 = ((u32) temp_r1 >> 9) & 3;
        temp_r4->unk48E = temp_r1_2;
        temp_r1_3 = (temp_r1_2 + 1) & 3;
        temp_r4->unk48F = temp_r1_3;
        temp_r1_4 = (temp_r1_3 + 1) & 3;
        temp_r4->unk490 = temp_r1_4;
        temp_r4->unk491 = (s8) ((temp_r1_4 + 1) & 3);
    }
    if (temp_r4->unk48A == 0) {
        if ((temp_r0 == 3) || (temp_r0 == 7) || (temp_r0 == 0xF)) {
            DisplaySprite(temp_r5 + 0x460);
            if (gStageData.playerIndex == 0) {
                if (8 & gPressedKeys) {
                    sub_8029324();
                }
            } else if (gMultiSioRecv->pat0.unk0 == 0x6002) {
                temp_r5->unk48C = (u8) gMultiSioRecv->pat5.filler3[0];
                temp_r5->unk48B = (u8) gMultiSioRecv->pat3_0.filler5[0];
                temp_r5->unk48D = (u8) gMultiSioRecv->pat3_0.unk4;
                temp_r5->unk48E = (u8) gMultiSioRecv->pat5.filler3[2];
                temp_r5->unk48F = (u8) gMultiSioRecv->pat5.filler3[3];
                temp_r5->unk490 = (u8) gMultiSioRecv->pat4.unkA;
                temp_r5->unk491 = (u8) gMultiSioRecv->pat4.unkB;
                sub_8029324();
            }
        } else {
            gDispCnt &= 0xFEFF;
        }
    } else {
        temp_r0_2 = temp_r4->unk488 - 1;
        temp_r4->unk488 = temp_r0_2;
        if ((temp_r0_2 << 0x10) == 0) {
            temp_r4->unk48A = 0U;
            m4aSongNumStart(0x321U);
        }
    }
    sub_8029150(1U, gUnknown_03001060.unk7, -1);
}

void sub_8028C94(void) {
    s16 temp_r3;
    u16 temp_r4;
    u16 temp_r8;
    u8 var_r2;
    u8 var_r7;

    temp_r4 = gCurTask->data;
    temp_r8 = temp_r4;
    var_r7 = 0;
    if (((s32) (sub_802610C() << 0x10) < 0) || ((sub_8029368() << 0x10) != 0)) {
        sub_802613C();
        return;
    }
    sub_8029150(1U, gUnknown_03001060.unk7, -1);
    gMultiSioSend.pat0.unk0 = 0x6002;
    gMultiSioSend.pat0.unk2 = gUnknown_03001060.unk7;
    gMultiSioSend.pat3_0.unk4 = temp_r4->unk48D;
    gMultiSioSend.pat3_0.filler5[0] = temp_r4->unk48B;
    gMultiSioSend.pat5.filler3[0] = temp_r4->unk48C;
    gMultiSioSend.pat5.filler3[2] = temp_r4->unk48E;
    gMultiSioSend.pat5.filler3[3] = temp_r4->unk48F;
    gMultiSioSend.pat4.unkA = temp_r4->unk490;
    gMultiSioSend.pat4.unkB = temp_r4->unk491;
    var_r2 = 0;
    do {
        if ((((s32) gUnknown_03001060.unk7 >> var_r2) & 1) && (gMultiSioRecv[var_r2].pat0.unk0 == 0x6002)) {
            var_r7 |= 1 << var_r2;
        }
        var_r2 += 1;
    } while ((u32) var_r2 <= 3U);
    temp_r3 = (s16) temp_r8->unk488;
    if (temp_r3 != 0) {
        temp_r8->unk488 = (u16) (temp_r8->unk488 - 1);
        return;
    }
    if (gUnknown_03001060.unk7 == var_r7) {
        gUnknown_03001060.unk54 = temp_r8->unk48B;
        gUnknown_03001060.unk55 = temp_r8->unk48C;
        gUnknown_03001060.unk56 = temp_r8->unk48D;
        gStageData.mpOpponentPlayerIndex = 0xFF;
        gStageData.unk8F = (u8) temp_r3;
        gStageData.warpId = *(temp_r8 + 0x48E + gStageData.playerIndex);
        sub_800214C();
        sub_80022E8(0);
    }
}

void sub_8028DEC(Background *arg0) {
    u8 *sp0;
    s32 sp8;
    s32 sp20;
    s32 sp30;
    s32 sp34;
    s32 sp38;
    u8 **sp3C;
    u16 sp40;
    u8 sp44;
    u32 sp48;
    Background *temp_r6;
    Background *var_r7_2;
    Background *var_r7_3;
    Sprite *temp_r7;
    s16 temp_r4_2;
    s16 temp_r5;
    s16 temp_r6_3;
    s16 var_r3;
    s16 var_r3_3;
    u16 *temp_r7_2;
    u16 *temp_r7_3;
    u16 *temp_r7_4;
    u16 temp_r4;
    u16 temp_r6_2;
    u32 temp_r0_2;
    u32 temp_r0_5;
    u32 var_r3_2;
    u32 var_r3_4;
    u8 **temp_r0;
    u8 *var_sl;
    u8 temp_r0_3;
    u8 temp_r0_4;
    u8 temp_r4_3;
    u8 temp_r4_4;
    void *temp_r7_5;
    void *var_r7;

    temp_r6 = arg0 + 0x40;
    temp_r0 = &sp0 + 0x28;
    sp3C = temp_r0;
    memcpy(temp_r0, &gUnknown_080CEF50, 8);
    gDispCnt = 0x1040;
    gBgCntRegs[0] = 0x1E08;
    gBgCntRegs[3] = 0x5C0F;
    sp30 = 0;
    (void *)0x040000D4->unk0 = &sp30;
    (void *)0x040000D4->unk4 = 0x0600C4C0;
    (void *)0x040000D4->unk8 = 0x85000008;
    gBgSprites_Unknown1[3] = 0x26;
    gBgSprites_Unknown2[3][0] = 0;
    gBgSprites_Unknown2[3][1] = 0;
    gBgSprites_Unknown2[3][2] = 0xFF;
    gBgSprites_Unknown2[3][3] = 0x40;
    sp30 = 0;
    CpuSet(&sp30, arg0, 0x05000010U);
    arg0->graphics.dest = (void *)0x0600C000;
    arg0->layoutVram = (u16 *)0x0600E000;
    arg0->tilemapId = 4;
    arg0->targetTilesX = 0x1E;
    arg0->targetTilesY = 0x19;
    arg0->flags = 3;
    DrawBackground(arg0);
    sp34 = 0;
    CpuSet(&sp34, temp_r6, 0x05000010U);
    temp_r6->graphics.dest = (void *)0x06008000;
    temp_r6->layoutVram = (u16 *)0x0600F000;
    temp_r6->tilemapId = (gStageData.language * 2) + 5;
    temp_r6->targetTilesX = 0x12;
    temp_r6->targetTilesY = 4;
    temp_r6->flags = 0;
    DrawBackground(temp_r6);
    gBgScrollRegs[0][0] = -48;
    gBgScrollRegs[0][1] = -64;
    sp38 = 0;
    (void *)0x040000D4->unk0 = &sp38;
    (void *)0x040000D4->unk4 = (s32) (((0xC & gBgCntRegs[0]) << 0xC) + 0x06000480);
    (void *)0x040000D4->unk8 = 0x85000008;
    gBgSprites_Unknown1->unk0 = 0x24;
    gBgSprites_Unknown2[0][0] = 0;
    gBgSprites_Unknown2[0][1] = 0;
    gBgSprites_Unknown2[0][2] = -1U;
    gBgSprites_Unknown2[0][3] = 0x20;
    var_sl = (u8 *)0x06010000;
    var_r3 = 0;
    do {
        temp_r4_2 = var_r3;
        temp_r7 = arg0 + ((temp_r4_2 * 0x30) + 0x80);
        temp_r7->tiles = var_sl;
        temp_r7->frameFlags = 0x1000;
        temp_r7->anim = ((temp_r4_2 * 2) + sp)->unk28;
        temp_r7->variant = 0;
        temp_r7->x = 0x78;
        temp_r7->y = (temp_r4_2 * 0x28) + 0x14;
        temp_r7->oamFlags = 0x280;
        temp_r7->qAnimDelay = 0;
        sp40 = -1U;
        temp_r7->prevAnim = 0xFFFF;
        sp44 = -1U;
        temp_r7->prevVariant = 0xFF;
        temp_r7->animSpeed = 0x10;
        temp_r7->palId = (u8) var_r3;
        temp_r7->hitboxes[0].index = -1;
        temp_r7->unk28 = -1;
        UpdateSpriteAnimation(temp_r7);
        temp_r4 = temp_r4_2 + 1;
        var_sl += 0x800;
        var_r3 = (s16) temp_r4;
    } while ((s32) (s16) temp_r4 <= 3);
    sp38 = 0;
    CpuSet(&sp38, &sp0, 0x0500000AU);
    sp8 = 0x1000;
    sp0 = var_sl;
    sp0.unk18 = (u16) (sp0.unk18 | sp40);
    sp0.unk1B = (u8) (sp0.unk1B | sp44);
    sp0.unk1C = 0x10;
    sp20 = -1;
    CpuSet(&sp0, arg0 + 0x140, 0x0400000AU);
    var_r7 = arg0 + 0x168;
    sp8 |= 0xC0000;
    var_r3_2 = 1;
    do {
        sp48 = var_r3_2;
        CpuSet(&sp0, var_r7, 0x0400000AU);
        temp_r0_2 = (sp48 << 0x10) + 0x10000;
        var_r7 += 0x28;
        var_r3_2 = temp_r0_2 >> 0x10;
    } while ((s32) ((s32) temp_r0_2 >> 0x10) <= 0x14);
    var_r7_2 = arg0 + 0x140;
    var_r3_3 = 0;
    do {
        temp_r6_3 = var_r3_3;
        temp_r4_3 = ((temp_r6_3 * 4) + &gUnknown_03000970)->unk1;
        sp48 = (u32) var_r3_3;
        temp_r0_3 = (u8) Div((s32) temp_r4_3, 0xA);
        temp_r4_4 = temp_r4_3 - (temp_r0_3 * 0xA);
        temp_r0_4 = temp_r0_3;
        var_r7_2->unkC = 0x598;
        var_r7_2->unk1A = (s8) var_r3_3;
        var_r7_2->unk10 = 0x28;
        temp_r5 = (temp_r6_3 * 0x28) + 0x14;
        var_r7_2->unk12 = temp_r5;
        var_r7_2->prevScrollX = 0x598;
        var_r7_2->unk42 = (s8) (temp_r0_4 + 0xB);
        var_r7_2->unk38 = 0xAA;
        var_r7_2->unk3A = temp_r5;
        temp_r7_2 = &var_r7_2->targetTilesY + 0x28;
        temp_r7_2->unkC = 0x598;
        temp_r7_2->unk1A = (s8) (temp_r4_4 + 0xB);
        temp_r7_2->unk10 = 0xB4;
        temp_r7_2->unk12 = temp_r5;
        temp_r7_3 = temp_r7_2 + 0x28;
        temp_r7_3->unkC = 0x598;
        temp_r7_3->unk1A = 0xA;
        temp_r7_3->unk10 = 0xC8;
        temp_r7_3->unk12 = temp_r5;
        temp_r7_4 = temp_r7_3 + 0x28;
        temp_r7_4->unkC = 0x598;
        temp_r7_4->unk1A = (s8) ((gStageData.language * 3) + 4 + (((s32) arg0->unk492 >> (temp_r6_3 * 2)) & 3));
        temp_r7_4->unk10 = 0x50;
        temp_r7_4->unk12 = temp_r5;
        temp_r6_2 = temp_r6_3 + 1;
        var_r7_2 = (Background *) (temp_r7_4 + 0x28);
        var_r3_3 = (s16) temp_r6_2;
    } while ((s32) (s16) temp_r6_2 <= 3);
    temp_r7_5 = arg0 + 0x460;
    arg0->unk460 = (u8 *) (var_sl + 0xB40);
    temp_r7_5->unkC = 0x599;
    temp_r7_5->unk1A = (s8) ((u32) (0 - gStageData.language) >> 0x1F);
    temp_r7_5->unk8 = 0x1000;
    temp_r7_5->unk10 = 0x78;
    temp_r7_5->unk12 = 0x50;
    var_r7_3 = arg0 + 0x140;
    var_r3_4 = 0;
    do {
        sp48 = var_r3_4;
        UpdateSpriteAnimation((Sprite *) var_r7_3);
        temp_r0_5 = (var_r3_4 << 0x10) + 0x10000;
        var_r7_3 += 0x28;
        var_r3_4 = temp_r0_5 >> 0x10;
    } while ((s32) ((s32) temp_r0_5 >> 0x10) <= 0x14);
}

void sub_8029150(u8 arg0, u8 arg1, u16 arg2) {
    s32 sp4;
    Sprite *temp_r5;
    Sprite *temp_r5_2;
    s16 temp_r0_2;
    s16 temp_r2;
    s16 temp_r2_2;
    s16 temp_r4_2;
    s16 temp_r4_3;
    s16 temp_r4_5;
    s16 var_r1;
    s16 var_r1_2;
    s16 var_r1_3;
    u16 temp_r0;
    u16 temp_r4;
    u16 temp_r4_4;
    u16 temp_r8;
    u16 var_r0;
    u16 var_r0_2;
    u16 var_r2;
    u16 var_r5;
    u32 temp_r0_3;

    sp4 = (s32) arg1;
    temp_r8 = gCurTask->data;
    var_r5 = 0;
    temp_r2 = ~(s16) arg2;
    var_r1 = 0;
    do {
        if (((u32) ((0 - temp_r2) | temp_r2) >> 0x1F) != 0) {
            temp_r0 = (s16) arg2 - (0x32 * var_r1);
            var_r2 = temp_r0;
            temp_r0_2 = (s16) temp_r0;
            if ((s32) temp_r0_2 < 0) {
                var_r2 = 0;
            } else if ((s32) temp_r0_2 > 0xF0) {
                var_r2 = 0xF0;
            }
            if (var_r1 & 1) {
                var_r0 = 0xF0 - (s16) var_r2;
            } else {
                var_r0 = (u16) ((u32) ((var_r2 << 0x10) + 0xFF100000) >> 0x10);
            }
            var_r5 = var_r0;
        }
        temp_r2_2 = var_r1;
        if (!(((s32) gUnknown_03001060.unk7 >> temp_r2_2) & 1)) {
            var_r0_2 = (4 - temp_r2_2) * 0x28;
        } else {
            var_r0_2 = 0;
        }
        temp_r4_2 = var_r1;
        temp_r4 = temp_r4_2 + 1;
        sa2__sub_80078D4(3U, (u8) (temp_r4_2 * 0x28), (u8) (temp_r4 * 0x28), var_r5, (u16) (s32) var_r0_2);
        var_r1 = (s16) temp_r4;
    } while ((s32) (s16) temp_r4 <= 3);
    if (arg0 != 0) {
        var_r1_2 = 0;
        do {
            temp_r4_3 = var_r1_2;
            if ((sp4 >> temp_r4_3) & 1) {
                temp_r5 = temp_r8 + ((temp_r4_3 * 0x30) + 0x80);
                UpdateSpriteAnimation(temp_r5);
                DisplaySprite(temp_r5);
                var_r1_3 = 0;
                if ((s32) (temp_r8->unk48A + 4) > 0) {
                    do {
                        temp_r4_5 = var_r1_3;
                        temp_r5_2 = temp_r8 + ((temp_r4_3 * 0xC8) + 0x140) + (temp_r4_5 * 0x28);
                        UpdateSpriteAnimation(temp_r5_2);
                        DisplaySprite(temp_r5_2);
                        temp_r4_4 = temp_r4_5 + 1;
                        var_r1_3 = (s16) temp_r4_4;
                    } while ((s32) (s16) temp_r4_4 < (s32) (temp_r8->unk48A + 4));
                }
            }
            temp_r0_3 = (var_r1_2 << 0x10) + 0x10000;
            var_r1_2 = (s16) (temp_r0_3 >> 0x10);
        } while ((s32) ((s32) temp_r0_3 >> 0x10) <= 3);
    }
}

void sub_80292C8(void *arg0) {
    Sprite *temp_r0;
    s16 temp_r4_2;
    s16 var_r0;
    u16 temp_r4;

    var_r0 = 0;
    do {
        temp_r4_2 = var_r0;
        temp_r0 = (temp_r4_2 * 0xC8) + arg0 + 0x1E0;
        temp_r0->anim = 0x598;
        temp_r0->variant = (gStageData.language * 3) + 4 + (((s32) arg0->unk492 >> (temp_r4_2 * 2)) & 3);
        temp_r0->prevVariant = 0xFF;
        UpdateSpriteAnimation(temp_r0);
        temp_r4 = temp_r4_2 + 1;
        var_r0 = (s16) temp_r4;
    } while ((s32) (s16) temp_r4 <= 3);
}

void sub_8029324(void) {
    gDispCnt |= 0x100;
    gCurTask->data->unk488 = 0x78;
    m4aSongNumStart(0x32AU);
    gCurTask->main = sub_8028C94;
}

s16 sub_8029368(void) {
    s16 temp_r3;
    s16 var_r2;
    u32 temp_r0;

    var_r2 = 0;
loop_1:
    temp_r3 = var_r2;
    if ((((s32) gUnknown_03001060.unk7 >> temp_r3) & 1) && (gMultiSioRecv[temp_r3].pat0.unk0 == 0x60FF)) {
        return 1;
    }
    temp_r0 = (var_r2 << 0x10) + 0x10000;
    var_r2 = (s16) (temp_r0 >> 0x10);
    if ((s32) ((s32) temp_r0 >> 0x10) > 3) {
        return 0;
    }
    goto loop_1;
}
#endif
