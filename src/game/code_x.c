#include "global.h"
#include "core.h"
#include "trig.h"
#include "game/shared/stage/player.h"
#include "game/stage.h"
#include "constants/move_states.h"

void sub_80B75E4(Struc_3001150 *strc, Player *partner, Player *player);
void sub_80B7AB0(Struc_3001150_1C *strc, u16 arg1);
void sub_80B8E24(Struc_3001150_1C *strc, Player *p, s32 param2, s32 param3);
u16 InputBufferGetCurrent(Struc_3001150_1C *strc);
bool32 sub_80B7AEC(Struc_3001150_1C *strc, Player *partner, Player *p); // B
bool32 sub_80B7C1C(Struc_3001150_1C *strc, Player *partner, Player *p); // B
bool32 sub_80B7CD0(Struc_3001150_1C *strc, Player *partner, Player *p); // B
bool32 sub_80B7D74(Struc_3001150_1C *strc, Player *partner, Player *p); // B
bool32 sub_80B7E1C(Struc_3001150_1C *strc, Player *partner, Player *p); // B
bool32 sub_80B7F00(Struc_3001150_1C *strc, Player *partner, Player *p); // B
bool32 sub_80B7F90(Struc_3001150_1C *strc, Player *partner, Player *p); // B
bool32 sub_80B8034(Struc_3001150_1C *strc, Player *partner, Player *p); // B
bool32 sub_80B80C8(Struc_3001150_1C *strc, Player *partner, Player *p); // B
u16 sub_80B836C(Struc_3001150_1C *strc, Player *partner, Player *p); // A
u16 sub_80B83FC(Struc_3001150_1C *strc, Player *partner, Player *p); // A
bool32 sub_80B8168(Struc_3001150_1C *strc, Player *partner, Player *p); // B
u16 sub_80B8218(Struc_3001150_1C *strc, Player *partner, Player *p);
u16 sub_80B82D8(Struc_3001150_1C *strc, Player *partner, Player *p);
u16 sub_80B84C8(Struc_3001150_1C *strc, Player *partner, Player *p);
u16 sub_80B8584(Struc_3001150_1C *strc, Player *partner, Player *p);
u16 sub_80B8620(Struc_3001150_1C *strc, Player *partner, Player *p);
u16 sub_80B86E4(Struc_3001150_1C *strc, Player *partner, Player *p);
u16 sub_80B87B0(Struc_3001150_1C *strc, Player *partner, Player *p); // A
u16 sub_80B8840(Struc_3001150_1C *strc, Player *partner, Player *p);
u16 sub_80B88E0(Struc_3001150_1C *strc, Player *partner, Player *p);
u16 sub_80B8980(Struc_3001150_1C *strc, Player *partner, Player *p);
u16 sub_80B8A20(Struc_3001150_1C *strc, Player *partner, Player *p); // A
void sub_80B8D18(Struc_3001150_1C *arg0, u32 arg1);
u16 sub_80B8E88(Struc_3001150_1C *strc);
void sub_80B8E90(Struc_3001150_1C *strc, u16 input);
bool32 sub_80B8EC4(Struc_3001150_1C *strc, Player *partner, Player *p); // B
bool32 sub_80B8F14(Struc_3001150_1C *strc, Player *partner, Player *p); // B
bool32 sub_80B8F70(Struc_3001150_1C *strc, Player *partner, Player *p); // B
bool32 sub_80B8FB8(Struc_3001150_1C *strc, Player *partner, Player *p); // B
bool32 sub_80B9008(Struc_3001150_1C *strc, Player *partner, Player *p); // B
bool32 sub_80B9024(Struc_3001150_1C *strc, Player *partner, Player *p); // B
bool32 sub_80B90B4(Struc_3001150_1C *strc, Player *partner, Player *p); // B
u16 sub_80B9148(struct Struc_3001150_1C *strc, Player *partner, Player *p); // A
u16 sub_80B915C(Struc_3001150_1C *strc, Player *partner, Player *p); // A
u16 sub_80B9194(Struc_3001150_1C *strc, Player *partner, Player *p); // A
u16 sub_80B91EC(Struc_3001150_1C *strc, Player *partner, Player *p); // A
u16 sub_80B9234(Struc_3001150_1C *strc, Player *partner, Player *p); // A
u16 sub_80B926C(Struc_3001150_1C *strc, Player *partner, Player *p); // A
u16 sub_80B92A4(Struc_3001150_1C *strc, Player *partner, Player *p); // A
u16 sub_80B9324(Struc_3001150_1C *strc, Player *partner, Player *p);
u16 sub_80B92E0(Struc_3001150_1C *strc, Player *partner, Player *p); // A
u16 sub_80B9374(Struc_3001150_1C *strc, Player *partner, Player *p); // A
u16 sub_80B93A4(Struc_3001150_1C *strc, Player *partner, Player *p); // A
u16 sub_80B93E4(Struc_3001150_1C *strc, Player *partner, Player *p); // A
u16 sub_80B94B0(Struc_3001150_1C *strc, Player *partner, Player *p); // A
u32 sub_80B94F0(Struc_3001150_1C *strc, Player *partner, Player *p); // A
u32 sub_80B9548(Struc_3001150_1C *strc, Player *partner, Player *p); // A
u16 sub_80B95A0(Struc_3001150_1C *strc, Player *partner, Player *p);
void sub_80B9604(Struc_3001150_164 *strc, Player *p);
s32 sub_80B9650(Player *partner, Player *player, Struc_3001150_164 *strc164, s32 arg3, s32 arg4);
void sub_80B9744(Struc_3001150_164 *strc);
void sub_80B9774(Struc_3001150_164 *strc, Player *partner);
bool32 sub_80B97A4(Struc_3001150_164 *strc, Player *partner);
void sub_80B8C2C(Struc_3001150_1C *arg0); /* extern */
void sub_80B8C6C(Struc_3001150_1C *strc); /* extern */
void sub_80B8C70(Struc_3001150_1C *arg0, Player *partner, Player *player); /* extern */
bool32 sub_80B8CAC(Struc_3001150_1C *, s32, Player *, Player *); /* extern */
bool32 sub_80B8D60(Struc_3001150_1C *, s32, Player *, Player *); /* extern */
void sub_80B8DA8(Struc_3001150_1C *arg0, s32 arg1, s32 arg2); /* extern */
void sub_80B8DC8(Struc_3001150_1C *arg0); /* extern */
void sub_80B8E10(Struc_3001150_1C *arg0, Player *partner, Player *player); /* extern */
void sub_80B8E54(Struc_3001150_1C *strc); /* extern */
bool32 sub_80B8E5C(Struc_3001150_1C *strc); /* extern */
u16 sub_80B9454(Struc_3001150_1C *strc, Player *partner, Player *p); /* extern */
void nullsub_80B9770(Struc_3001150_164 *strc164); /* extern */
void sub_80B77D0(void *arg0, void *arg1, void *arg2); /* static */
u16 sub_80B8B24(Struc_3001150_1C *strc, Player *partner, Player *p); /* static */
void sub_80B7914(Struc_3001150 *strc);
void sub_80B794C(Struc_3001150 *strc);
void sub_80B79C8(Struc_3001150 *strc, Player *partner, Player *player);
bool32 sub_80B7AA4(Struc_3001150 *strc);

extern Struc_3001150_1C gUnknown_080E310C;

// TODO: Match the functions needing a cast, with correct return type!
const Strc_80E3254 gUnknown_080E3254[19] = {
    { sub_80B9148, NULL, 0 },
    { sub_80B915C, sub_80B8EC4, 1 },
    { sub_80B9194, sub_80B8F14, 2 },
    { sub_80B91EC, sub_80B7AEC, 3 },
    { sub_80B9234, sub_80B8F70, 0 },
    { sub_80B926C, sub_80B8FB8, 0 },
    { sub_80B92A4, NULL, 0 },
    { sub_80B92E0, sub_80B7C1C, 4 },
    { sub_80B836C, sub_80B9008, 5 },
    { sub_80B83FC, sub_80B7CD0, 6 },
    { sub_80B9374, sub_80B9024, 6 },
    { sub_80B93A4, sub_80B90B4, 6 },
    { (void *)sub_80B9548, sub_80B80C8, 6 },
    { sub_80B93E4, sub_80B8168, 6 },
    { sub_80B87B0, sub_80B7D74, 4 },
    { sub_80B94B0, sub_80B7E1C, 6 },
    { (void *)sub_80B94F0, sub_80B7F90, 6 },
    { (void *)sub_80B9548, sub_80B8034, 6 },
    { sub_80B8A20, sub_80B7F00, 6 },
};

// TODO
#if 0
void sub_80B75E4(Struc_3001150* strc, Player* partner, Player* player) {
    Struc_3001150_1C* unk1C;
    s32 var_r1;
    s32 var_r2;
    s32 var_r3;

    unk1C = &strc->unk1C;
    sub_80B77D0(strc, partner, player);
    sub_80B8E10(unk1C, partner, player);
    if ((gStageData.act != 7) && (gStageData.act != 9) && (gStageData.zone != 7) && (sub_80B8E5C(unk1C) != 0)) {
        sub_80B8DA8(unk1C, unk1C->unk2C, unk1C->unk30);
    } else {
        if (player->moveState & 1) {
            var_r2 = +Q(12);
        } else {
            var_r2 = -Q(12);        
        }
        sub_80B8DA8(unk1C, player->qWorldX + strc->unk8 + var_r2, player->qWorldY + strc->unkA);
        var_r3 = unk1C->unkC - partner->qWorldX;
        var_r1 = unk1C->unk10 - partner->qWorldY;
        
        if ((ABS(var_r3) < Q(24)) && (ABS(var_r1) < Q(24)))
        {
            if (sub_80B8D60(unk1C, 4, partner, player)) {
                return;
            }
            if (sub_80B8D60(unk1C, 5, partner, player)) {
                return;
            }
            if (!sub_80B8CAC(unk1C, 1, partner, player)) {
                return;
            }
            sub_80B8D18(unk1C, 1U);
            return;
        }
    }

    sub_80B8DC8(unk1C);

    if (((gStageData.act == ACT_BOSS)
      || (gStageData.act == ACT_BONUS_ENEMIES)
      || (gStageData.zone == ZONE_FINAL)
      || ((!sub_80B8D60(unk1C, 14, partner, player))
       && (!sub_80B8D60(unk1C, 17, partner, player))
       && (!sub_80B8D60(unk1C, 16, partner, player))
       && (!sub_80B8D60(unk1C, 15, partner, player))
       && (!sub_80B8D60(unk1C, 18, partner, player))))
    && (!sub_80B8D60(unk1C, 9, partner, player))
    && (!sub_80B8D60(unk1C, 10, partner, player))
    && (!sub_80B8D60(unk1C, 11, partner, player))
    && (!sub_80B8D60(unk1C, 12, partner, player))
    && (!sub_80B8D60(unk1C, 13, partner, player))
    && (!sub_80B8D60(unk1C, 8, partner, player))
    && (!sub_80B8D60(unk1C, 7, partner, player))
    && (!sub_80B8D60(unk1C, 3, partner, player))
    && (!sub_80B8D60(unk1C, 2, partner, player))) {
        sub_80B8D60(unk1C, 1, partner, player);
    }
}

void sub_80B77D0(Struc_3001150* strc, Player* partner, Player* player) {
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r2;
    s32 partnerChar;
    s32 var_r1;
    u32 var_r0;

    if ((strc->unkC & 0x3F) == 0x3F) {
        if (!(0xF00 & PseudoRandom32())) {
            if (((partner->charFlags.character == TAILS) && (player->charFlags.character == SONIC))
             || ( (partner->charFlags.character == CREAM)))
             {
                var_r0 = (u32) (PseudoRandom32() << 15) >> 19;
                strc->unk8 = var_r0 - Q(16);
            } else {
                var_r0 = (u32) (PseudoRandom32() << 14) >> 18;
                strc->unk8 = var_r0 - Q(32);
            }
        }
    }
}

void sub_80B7878(Struc_3001150* strc, Player* partner, Player* player) {
    s32 var_r3;
    s16 var_r6;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 var_r1;

    var_r6 = 0;
    if (partner->framesInvulnerable != 0) {
        strc->unk18 = ((( (u32)PseudoRandom32() >> 4) & 0xFF)  + 30);
    }
    var_r3 = strc->unk16;
    if (player->keyInput2 & ~0xC0) {
        var_r3 += 0x5A;
    } else if (player->keyInput & ~0xC0) {
        var_r3 += 2;
    }
    temp_r0_2 = PseudoRandom32();
    var_r1 = (((u32) temp_r0_2 >> 4) & 0xFF) + 120;
    if (var_r1 > var_r3) {
        var_r1 = var_r3;
    }
    strc->unk16 = (s16) var_r1;
    if ((var_r1 << 0x10) != 0) {
        var_r6 = 1;
        strc->unk16 = (s16) (var_r1 - 1);
    }
    if ((s16) strc->unk18 != 0) {
        var_r6 = 0;
        strc->unk18--;
    }
    strc->unk14 = var_r6;
}

void sub_80B7914(Struc_3001150 *strc) {
    DmaCopy32(3, &gUnknown_08E2EFA8, strc, 0x468);
    sub_80B8C2C(&strc->unk1C);
    sub_80B9744(&strc->unk164);
}

void sub_80B794C(Struc_3001150 *strc) {
    sub_80B8C6C(&strc->unk1C);
    sub_80B9770(&strc->unk164);
}

void sub_80B7968(Struc_3001150* strc, Player* partner, Player* player) {
    Struc_3001150_1C* temp_r0 = &strc->unk1C;
    s32 temp_r4 = strc->unk0;

    sub_80B79C8(strc, partner, player);
    gUnknown_08E2F410[temp_r4](strc, partner, player);
    sub_80B8C70(temp_r0, partner, player);
    sub_80B8E54(temp_r0);
    sub_80B7878(strc, partner, player);
    strc->unkC++;
}

void sub_80B79C8(Struc_3001150* strc, Player* partner, Player* player) {
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r2;
    s32 qDX;
    s32 qDY;
    s32 temp_r6;
    s32 var_r1;
    s32 var_r1_2;
    s32 var_r1_3;
    s32 var_r1_4;
    s32 var_r3;
    s32 var_r4;
    s32 qPlayerX, qPlayerY;
    s32 qPartnerX, qPartnerY;

    qPartnerX = partner->qWorldX;
    qPartnerY = partner->qWorldY;
    qPlayerX = player->qWorldX;
    qPlayerY = player->qWorldY;
    qDX = qPlayerX - qPartnerX;
    qDY = qPlayerY - qPartnerY;

    if (!(partner->moveState & 0x100)) {
        sub_80B9774(&strc->unk164, player);

        if (ABS(qDX) < Q(720)) {
            if (ABS(qDY) < Q(480)) {
                strc->unk10 = 0;
                return;
            }
        }

        if (++strc->unk10 >= 240) {
            var_r1_3 = ABS(qDX);
            if (var_r1_3 > 0x2CFFF) {
                var_r3 = qDX;
            } else {
                var_r3 = 0;                
            }
            var_r1_4 = ABS(qDY);

            if (var_r1_4 > 0x1DFFF) {
                var_r4 = qDY;
            } else {
                var_r4 = 0;                
            }
            temp_r0_2 = sub_80B9650(partner, player, &strc->unk164, var_r3, var_r4);
            if (temp_r0_2 != 0) {
                strc->unk10 = 0;
            } else {
                Player_HitWithoutRingsUpdate(partner);
                strc->unk10 = 0;
            }
        }
    }
}

u16 sub_80B7A94(Struc_3001150* strc) {
    return InputBufferGetCurrent(&strc->unk1C);
}

bool32 sub_80B7AA4(Struc_3001150* strc) {
    return strc->unk14;
}

void nullsub_80B7AAC(void) {

}

void sub_80B7AB0(Struc_3001150_1C* strc, u16 arg1) {
    strc->unk40 = arg1 & ~strc->inputBuffer[strc->inputBufferIndex];
    strc->inputBufferIndex = (strc->inputBufferIndex + 1) & 0x7F;
    strc->inputBuffer[strc->inputBufferIndex] = arg1;
}

// TODO: Match without gotos!
u32 sub_80B7AEC(Struc_3001150_1C* strc, Player* partner, Player* p) {
    s16 temp_r1;
    s16 temp_r1_2;
    s32 temp_r0;
    s32 temp_r1_3;
    s32 temp_r2;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r1_2;
    s32 var_r1_3;
    s32 var_r3;
    u32 temp_r3;
    u32 result;

    if (strc->unk0 == 3) 
        goto ret0;
    {
        temp_r3 = partner->moveState;
        if (temp_r3 & 4)
            goto ret0;
        
        {
            if (p->moveState & 4) {
                if (strc->unk28 < (strc->unk8 + Q(8))) {
                    var_r3 = 0xF00;
                } else {
                    var_r3 = 0x100;                    
                }
            } else if (partner->charFlags.anim0 == 122) {
                if (p->charFlags.anim0 != 122) {
                    if (strc->unk18 < -Q(8)) {
                        var_r3 = Q(3);
                    } else {
                        var_r3 = Q(15);                        
                    }
                } else {
                    var_r3 = 0x100;
                }
            } else {
                if (temp_r3 & 0x01000000) {
                    ret0:
                    return 0U;
                }
                if (partner->charFlags.anim0 == 0x21) {
                    if (p->charFlags.anim0 != 0x21) {
                        var_r3 = 0x1000;
                    } else {
                        var_r1_2 = strc->unk14;
                        if (var_r1_2 < 0) {
                            var_r1_2 = 0 - var_r1_2;
                        }
                        var_r0 = strc->unk18;
                        if (var_r0 < 0) {
                            var_r0 = 0 - var_r0;
                        }
                        var_r3 = (var_r1_2 + var_r0) >> 8;
                    }
                } else {
                    if ((strc->unk14 ^ partner->qSpeedGround) >= 0) {
                        var_r1_3 = partner->qSpeedGround << 6;
    
                        if (ABS(strc->unk14) < ABS(var_r1_3)) {
                            var_r3 = 0x100;
                            if (strc->unk18 <= -Q(8)) {
                                var_r3 <<= 2;
                            }
                        } else {
                            var_r3 = 0x20;
                            if (strc->unk18 <= -Q(8)) {
                                var_r3 = 0x40;
                            }
                        }
                    } else {
                        temp_r1_3 = strc->unk18;
                        if (strc->unk18 > 0) {
                            var_r3 = 0x20;
                        } else if (strc->unk18 <= -Q(16)) {
                            var_r3 = 0x200;
                        } else {
                            var_r3 = 0x80;                            
                        }
                    
                    }
                }
            }
block_34:
            temp_r0 = PseudoRandom32();
            result = 0;
            if ((u32) var_r3 > (u32) ((u32) (temp_r0 << 8) >> 0x10)) {
                result = 1;
            }
            return result;
        }
    }
block_11:
    return result;
}

u32 sub_80B7C1C(Struc_3001150_1C* strc, Player* partner, Player* p) {
    s32 temp_r0;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 var_r0_4;
    s32 var_r2;
    u32 var_r1;
    u32 var_r3;

    if ((strc->unk0 == 7) || (partner->moveState & 4) || ((temp_r1 = partner->unkC & 6, (temp_r1 != 2)) && (temp_r1 != 6))) {
        return 0U;
    }
    temp_r1_2 = strc->unk14;
    var_r2 = temp_r1_2;
    if (temp_r1_2 < 0) {
        var_r2 = 0 - temp_r1_2;
    }
    if (var_r2 > Q(120)) {
        var_r0 = ABS(temp_r1_2);
        var_r3 = (var_r0 - Q(120)) >> 0xB;
        var_r0_2 = var_r3;
        if (var_r0_2 > 0x100) {
            var_r0_2 = 0x100;
        }
        var_r3 = var_r0_2 + 0x100;
    } else {
        temp_r1_3 = strc->unk18;
        if (strc->unk18 < -Q(120)) {
            var_r3 = (ABS(strc->unk18) - Q(120)) >> 0xB;
            var_r0_4 = var_r3;
            if (var_r0_4 > 0x80) {
                var_r0_4 = 0x80;
            }
            var_r3 = var_r0_4 + 0x80;
        } else {
            var_r3 = 0x10;
        }
    }
    temp_r0 = PseudoRandom32();
    gPseudoRandom = temp_r0;
    var_r1 = 0;
    if (var_r3 > (u32) ((u32) (temp_r0 << 8) >> 0x10)) {
        var_r1 = 1;
    }
    return var_r1;
}

u32 sub_80B7CD0(Struc_3001150_1C* strc, Player* partner, Player* p) {
    s16 temp_r1_3;
    s32 temp_r0;
    s32 temp_r1_2;
    s32 temp_r2;
    u32 var_r1;
    u32 var_r3;

    if (strc->unk0 != 9) {
        if (MOVESTATE_IN_AIR & partner->moveState)
        {
            if(!(partner->moveState & MOVESTATE_80))
            {
                temp_r1_2 = partner->unkC & 0x180;
                if( (((partner->charFlags.character == TAILS) && ((temp_r1_2 == 0) || (temp_r1_2 == 0x180)))
                  || ((partner->charFlags.character == CREAM) && ((temp_r1_2 == 0x100) || (temp_r1_2 == 0x180))))
                    && (strc->unk18 < -Q(16))) 
                {
                    if (partner->qSpeedAirY > -Q(0.65625)) 
                    {
                        var_r3 = 0x200;
                        if (partner->qSpeedAirY < +Q(0.65625)) 
                        {
                            var_r3 = 0x2000;
                        }
                        temp_r0 = PseudoRandom32();
                        var_r1 = 0;
                        if (var_r3 > (u32) ((u32) (temp_r0 << 8) >> 0x10)) {
                            var_r1 = 1;
                        }
                        return var_r1;
                    }
                }
            }
        }
    }
    return 0U;
}

u32 sub_80B7D74(Struc_3001150_1C* strc, Player* partner, Player* p) {
    u32 temp_r0;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r2;
    s32 max;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r1_2;
    u32 var_r1;

    if (!(((strc->unk0 != 0xE) && !(partner->moveState & 4)) && (((0 - ~strc->unk34) | ~strc->unk34) < 0)))
    {
        return 0U;
    }
    {
        temp_r2 = partner->unkC & 0x18;
        if (((partner->charFlags.character == SONIC) && ((temp_r2 == 0) || (temp_r2 == 8))) || ((partner->charFlags.character == CREAM) && ((temp_r2 == 0) || (temp_r2 == 8) || (temp_r2 == 0x10)))) {
            var_r1_2 = Q(72);
        } else {
            var_r1_2 = Q(48);
        }

        if ((ABS(strc->unk14) > var_r1_2) || (ABS(strc->unk18) > (max = Q(32)))){
            return 0U;
        } else {
            temp_r0 = PseudoRandom32();
            var_r1 = 0;
            temp_r0 = (temp_r0 << 8) >> 0x10;
            if (max > temp_r0) {
                var_r1 = 1;
            }
        }
    }

    return var_r1;
}
#endif // TODO

// (86.94%) https://decomp.me/scratch/S6QH2
NONMATCH("asm/non_matching/game/cx__sub_80B7E1C.inc", bool32 sub_80B7E1C(Struc_3001150_1C *strc, Player *partner, Player *p))
{
    s32 temp_r0;
    s32 character;
    s32 temp_r3;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r6;
    u32 var_r1;
    s32 max;

    if ((strc->unk0 != 0xF) && (partner->moveState & 4)) {
        if (((0 - ~strc->unk34) | ~strc->unk34) < 0) {
            temp_r3 = partner->unkC & 0xC000;
            var_r6 = 0;
            if ((partner->charFlags.character == CREAM) && ((temp_r3 == 0x4000) || (temp_r3 == 0xC000))) {
                var_r6 = 0x4000;
            } else {
                do {
                    if (partner->charFlags.character == SONIC) {
                        if ((temp_r3 == 0x4000) || (temp_r3 == 0x8000)) {
                            asm("");
                            var_r6 = Q(32);
                            break;
                        }
                        asm("");
                    }
                    if (partner->charFlags.character == TAILS) {
                        if ((temp_r3 == 0x4000) || (temp_r3 == 0x8000)) {
                            var_r6 = Q(32);
                            break;
                        }
                        asm("");
                    }
                    if (partner->charFlags.character == KNUCKLES) {
                        if ((temp_r3 == 0x4000)) {
                            var_r6 = Q(32);
                            break;
                        }
                        asm("");
                    }
                    if (partner->charFlags.character == AMY) {
                        if ((temp_r3 == 0x4000) || (temp_r3 == 0x20)) {
                            var_r6 = Q(32);
                            break;
                        }
                        asm("");
                    }
                } while (0);
            }

            if (ABS(strc->unk14) <= var_r6) {
                if (ABS(strc->unk18) > (max = Q(32))) {
                block_25:
                    return 0U;
                }
                temp_r0 = PseudoRandom32();
                var_r1 = 0;
                if (max > (u32)((u32)(temp_r0 << 8) >> 0x10)) {
                    var_r1 = 1;
                }
                return var_r1;
            }
            goto block_25;
        } else {
            goto block_25;
        }
    } else {
        goto block_25;
    }

    return 1;
}
END_NONMATCH

bool32 sub_80B7F00(Struc_3001150_1C* strc, Player* partner, Player* p) {
    s32 temp_r0_2;
    u32 var_r1;
    s32 max;

    if(strc->unk0 != 18) 
    {
        if(strc->unk0 == 9)
        {
            if ((partner->moveState & 4) && (((0 - ~strc->unk34) | ~strc->unk34) < 0))
            {
                u32 unkC = (partner->unkC & 0x180);
                if ( ((partner->charFlags.character) == TAILS) && (unkC == 0x180)) 
                {
                    if (ABS(strc->unk14) <= (max = Q(32))) {
                        if (ABS(strc->unk18) <= Q(32)) {
                            temp_r0_2 = PseudoRandom32();
                            var_r1 = FALSE;
                            if (max > (u32) ((u32) (temp_r0_2 << 8) >> 0x10)) {
                                var_r1 = TRUE;
                            }
                            return var_r1;
                        }
                    }
                }
            }
        }
    }
    return 0U;
}

u32 sub_80B7F90(Struc_3001150_1C* strc, Player* partner, Player* p) {
    s32 temp_r0;
    s32 temp_r1;
    s32 temp_r2;
    s32 var_r1_2;
    u32 var_r1;
    s32 max;

    if ((strc->unk0 != 0x10) && (partner->moveState & 4)) {
        if ((((0 - ~strc->unk34) | ~strc->unk34) < 0) && ((u32) strc->unk1C <= SQUARE(120))) {
            if ((ABS(strc->unk14) <= Q(32)) && (strc->unk18 > 0xFFF))
            {
                u32 unkC = partner->unkC;
                if((((partner->charFlags.character == SONIC)) || (partner->charFlags.character == KNUCKLES) || (partner->charFlags.character == CREAM) || (partner->charFlags.character == AMY))
             && (unkC & 0x20000))
            {
                max = Q(32);
                temp_r0 = PseudoRandom32();
                var_r1 = 0;
                if (max > (u32) ((u32) (temp_r0 << 8) >> 0x10)) {
                    var_r1 = 1;
                }
                return var_r1;
            }
            goto block_16;
            }
        }
    }
block_16:
    return 0U;
}

u32 sub_80B8034(Struc_3001150_1C* strc, Player* partner, Player* p) {
    s32 temp_r0;
    s32 temp_r1;
    s32 var_r0;
    u32 var_r1;
    s32 max;

    if ((strc->unk0 != 0x11) && (partner->moveState & 4)) {
        temp_r1 = ~strc->unk34;
        if ((((0 - temp_r1) | temp_r1) < 0) && ((u32)strc->unk1C <= SQUARE(120))) {
            if ((ABS(strc->unk14) <= (max= Q(32))) && (strc->unk18 <= -Q(16))) {
                s32 unkC = partner->unkC;
                if((partner->charFlags.character == SONIC) && (unkC & 0x10000)) 
                {
                    temp_r0 = PseudoRandom32();
                    var_r1 = 0;
                    if (max > (u32) ((u32) (temp_r0 << 8) >> 0x10)) {
                        var_r1 = 1;
                    }
                    return var_r1;
                }
            }
            goto block_13;
        }
    }
block_13:
    return 0U;
}

u32 sub_80B80C8(Struc_3001150_1C* strc, Player* partner, Player* p) {
    s16 temp_r1;
    s32 temp_r0;
    s32 var_r1_2;
    u32 var_r1;
    u32 var_r3;

    if ((strc->unk0 != 0xC) && (partner->moveState & 4))
    {
        u32 unkC = partner->unkC;
        if( (partner->charFlags.character == SONIC)
         && (unkC & 0x10000)
         && ((u32) strc->unk1C <= SQUARE(120))) 
        {
            if ((ABS(strc->unk14) <= 0x2000) && (strc->unk18 <= -Q(16))) {
                temp_r1 = partner->qSpeedAirY;
                if (temp_r1 > -0xA8) {
                    var_r3 = 0x100;
                    if (temp_r1 <= 0xA7) {
                        var_r3 = 0x1000;
                    }
                    temp_r0 = PseudoRandom32();
                    var_r1 = 0;
                    if (var_r3 > (u32) ((u32) (temp_r0 << 8) >> 0x10)) {
                        var_r1 = 1;
                    }
                    return var_r1;
                }
            }
            goto block_15;
        }
    }
block_15:
    return 0U;
}

u32 sub_80B8168(Struc_3001150_1C* strc, Player* partner, Player* p) {
    s16 temp_r1;
    s32 temp_r0;
    s32 temp_r2;
    s32 var_r1_2;
    s32 var_r1_3;
    u32 var_r1;
    u32 var_r3;

    if ((strc->unk0 != 0xD) && (partner->moveState & 4)) {
        temp_r2 = partner->unkC & 0x180;
        if ((partner->charFlags.character == KNUCKLES)
            && ((temp_r2 == 0x80) || (temp_r2 == 0x100) || (temp_r2 == 0x180))) {
            if (ABS(strc->unk14) >= +Q(80)) {
                if (temp_r2 == 0x180) {
                    var_r1_3 = -Q(80);
                } else {
                    var_r1_3 = Q(0);
                }
                if (strc->unk18 >= var_r1_3) {
                    temp_r1 = partner->qSpeedAirY;
                    if (temp_r1 > -0xA8) {
                        var_r3 = 0x100;
                        if (temp_r1 <= 0xA7) {
                            var_r3 = 0x1000;
                        }
                        temp_r0 = PseudoRandom32();
                        var_r1 = 0;
                        if (var_r3 > (u32) ((u32) (temp_r0 << 8) >> 0x10)) {
                            var_r1 = 1;
                        }
                        return var_r1;
                    }
                }
                goto block_18;
            }
            goto block_18;
        }
    }
block_18:
    return 0U;
}

// (97.30&) https://decomp.me/scratch/Xf7QW
NONMATCH("asm/non_matching/game/cx__sub_80B8218.inc", u16 sub_80B8218(Struc_3001150_1C *strc, Player *partner, Player *p))
{
    u16 var_r3 = strc->inputBuffer[strc->inputBufferIndex];

    if (strc->unk3E-- <= 0) {
        var_r3 &= 0xFFCF;
        if (strc->unk14 > +Q(2)) {
            var_r3 |= 0x10;
        }
        if (strc->unk14 < -Q(2)) {
            var_r3 |= 0x20;
        }
        if ((strc->unk10 >= partner->qWorldY) || !(partner->moveState & MOVESTATE_IN_AIR) || (partner->qSpeedAirY >= 0)) {
            var_r3 &= ~gStageData.buttonConfig.jump;
            strc->unk0 = 0;
            strc->func = gUnknown_080E3254->funcA;
            strc->unk2 = (((u32)PseudoRandom32() >> 8) & 0x1F) + 60;
        }
    }
    return var_r3;
}
END_NONMATCH

u16 sub_80B82D8(Struc_3001150_1C *strc, Player *partner, Player *p)
{
    s32 temp_r0;
    u16 var_r1;
    u16 var_r3;

    var_r3 = strc->inputBuffer[strc->inputBufferIndex];
    if (var_r3 & gStageData.buttonConfig.jump) {
        var_r3 &= ~gStageData.buttonConfig.jump;
    } else {
        if ((0xF & strc->unk3E) == 0xF) {
            var_r3 |= gStageData.buttonConfig.jump;
        }
    }

    if (strc->unk3E-- <= 0) {
        var_r3 &= ~(gStageData.buttonConfig.jump | 0x80);
        strc->unk0 = 0;
        strc->func = gUnknown_080E3254->funcA;
        strc->unk2 = (((u32)PseudoRandom32() >> 8) & 0x1F) + 0x3C;
    }
    return var_r3;
}

u16 sub_80B836C(Struc_3001150_1C* strc, Player* partner, Player* p) {
    s32 temp_r0;
    u16 var_r3;

    var_r3 = strc->inputBuffer[strc->inputBufferIndex];
    if (partner->moveState & 4) {
        var_r3 &= 0xFFCF;
        if (strc->unk14 > +Q(2)) {
            var_r3 |= 0x10;
        }
        if (strc->unk14 < -Q(2)) {
            var_r3 |= 0x20;
        }
    } else {
        strc->unk0 = 0;
        strc->func = gUnknown_080E3254->funcA;
        temp_r0 = PseudoRandom32();
        gPseudoRandom = temp_r0;
        strc->unk2 = (((u32) temp_r0 >> 8) & 0x1F) + 0x3C;
    }
    return var_r3;
}

u16 sub_80B83FC(Struc_3001150_1C* strc, Player* partner, Player* p) {
    s32 temp_r0_2;
    u16 var_r3;

    var_r3 = strc->inputBuffer[strc->inputBufferIndex];

    if (!(partner->moveState & 4)) {
        strc->unk0 = 0;
        strc->func = gUnknown_080E3254->funcA;
        temp_r0_2 = PseudoRandom32();
        gPseudoRandom = temp_r0_2;
        strc->unk2 = (((u32) temp_r0_2 >> 8) & 0x1F) + 0x3C;
        var_r3 = var_r3 & ~gStageData.buttonConfig.jump;
    } else {
        var_r3 = var_r3 & 0xFFCF;

        if (strc->unk14 > +Q(2)) {
            var_r3 |= 0x10;
        }
        if (strc->unk14 < -Q(2)) {
            var_r3 |= 0x20;
        }
        var_r3 = var_r3 ^ gStageData.buttonConfig.jump;
        if (strc->unk18 > 0) {
            if (!(p->moveState & 4)) {
                var_r3 &= ~gStageData.buttonConfig.jump;
            } else if (strc->unk18 > Q(16)) {
                var_r3 &= ~gStageData.buttonConfig.jump;
            }
        }
    }
    return var_r3;
}

u16 sub_80B84C8(Struc_3001150_1C* strc, Player* partner, Player* p) {
    s32 temp_r0;
    u16 var_r3;

    var_r3 = strc->inputBuffer[strc->inputBufferIndex];
    if (!(partner->moveState & 4)) {
        strc->unk0 = 0;
        strc->func = gUnknown_080E3254->funcA;
        temp_r0 = PseudoRandom32();
        gPseudoRandom = temp_r0;
        strc->unk2 = (((u32) temp_r0 >> 8) & 0x1F) + 0x3C;
        var_r3 = var_r3 & ~gStageData.buttonConfig.jump;
    } else {
        var_r3 = var_r3 & 0xFFCF;
        if (strc->unk14 > +Q(2)) {
            var_r3 |= 0x10;
        }
        if (strc->unk14 < -Q(2)) {
            var_r3 |= 0x20;
        }
        var_r3 = var_r3 | gStageData.buttonConfig.jump;
        if (strc->unk18 < -Q(16)) {
            var_r3 &= ~gStageData.buttonConfig.jump;
        }
    }
    return var_r3;
}

u16 sub_80B8584(Struc_3001150_1C* strc, Player* partner, Player* p) {
    s32 temp_r0;
    s32 temp_r1_2;
    u16 var_r3;
    u8 temp_r1;

    var_r3 = strc->inputBuffer[strc->inputBufferIndex];
    var_r3 &= ~gStageData.buttonConfig.attack;

    if (!(partner->moveState & 4)) {
        strc->unk0 = 0;
        strc->func = gUnknown_080E3254->funcA;
        temp_r0 = PseudoRandom32();
        gPseudoRandom = temp_r0;
        strc->unk2 = (((u32) temp_r0 >> 8) & 0x1F) + 0x3C;
    } else {
        var_r3 &= 0xFFCF;
        if (strc->unk14 > +Q(2)) {
            var_r3 |= 0x10;
        }
        if (strc->unk14 < -Q(2)) {
            var_r3 |= 0x20;
        }
    }
    return var_r3;
}

u16 sub_80B8620(Struc_3001150_1C* strc, Player* partner, Player* p) {
    s32 temp_r0;
    u16 var_r3;

    var_r3 = strc->inputBuffer[strc->inputBufferIndex];
    if (!(partner->moveState & MOVESTATE_IN_AIR)) {
        if ((u32) (u16) ((u16) partner->charFlags.anim0 - 0xEE) <= 1U) {
            strc->func = sub_80B86E4;
            var_r3 &= ~gStageData.buttonConfig.jump;
        } else {
            var_r3 &= ~gStageData.buttonConfig.jump;
            strc->unk0 = 0;
            strc->func = gUnknown_080E3254->funcA;
            temp_r0 = PseudoRandom32();
            gPseudoRandom = temp_r0;
            strc->unk2 = (((u32) temp_r0 >> 8) & 0x1F) + 0x3C;
        }
    } else {
        var_r3 &= 0xFFCF;
        if (strc->unk14 > +Q(2)) {
            var_r3 |= 0x10;
        }
        if (strc->unk14 < -Q(2)) {
            var_r3 |= 0x20;
        }
    }
    return var_r3;
}

// TODO: Match without gotos!
u16 sub_80B86E4(Struc_3001150_1C* strc, Player* partner, Player* p) {
    s32 temp_r0;
    s32 temp_r1_2;
    s32 var_r0;
    u16 var_r3;
    u8 temp_r1;

    var_r3 = strc->inputBuffer[strc->inputBufferIndex];
    if (partner->moveState & MOVESTATE_IN_AIR) {
        var_r3 = var_r3 & 0xFF3F;
        strc->unk0 = 0;
        block_2:
        strc->func = gUnknown_080E3254->funcA;
        strc->unk2 = (((u32) PseudoRandom32() >> 8) & 0x1F) + 60;
    } else if (partner->charFlags.anim0 != 238 && partner->charFlags.anim0 != 239) {
        var_r3 = var_r3 & 0xFF3F;
        strc->unk0 = 0;
        goto block_2;
    } else {
        if (strc->unk18 < -Q(8)) {
            var_r3 = var_r3 & 0xFF7F;
            var_r3 = var_r3 | 0x40;
        } else if (strc->unk18 > +Q(8)) {
            var_r3 = var_r3 & 0xFFBF;
            var_r3 = var_r3 | 0x80;
        } else {
            var_r3 = var_r3 & 0xFF3F;
        }
    }
    return var_r3;
}

u16 sub_80B87B0(Struc_3001150_1C* strc, Player* partner, Player* p) {
    u16 var_r3 = strc->inputBuffer[strc->inputBufferIndex];
    s32 temp_r1 = gStageData.buttonConfig.attack | 0x80;

    if (var_r3 & temp_r1) {
        var_r3 = var_r3 & ~temp_r1;
    } else {
        if ((strc->unk14 < 0) && !(partner->moveState & 1)) {
            var_r3 = (var_r3 & ~0x10);
            var_r3 |= 0x20;
        }
        if ((strc->unk14 > 0) && (partner->moveState & 1)) {
            var_r3 = (var_r3 & ~0x20);
            var_r3 |= 0x10;
        }
        var_r3 = var_r3 | gStageData.buttonConfig.attack;
        strc->func = sub_80B9454;
    }

    return var_r3;
}

u16 sub_80B8840(Struc_3001150_1C* strc, Player* partner, Player* p) {
    s32 temp_r0;
    u16 var_r3 = strc->inputBuffer[strc->inputBufferIndex];

    if (!(partner->moveState & 4)) {
        strc->unk0 = 0;
        strc->func = gUnknown_080E3254->funcA;
        temp_r0 = PseudoRandom32();
        gPseudoRandom = temp_r0;
        strc->unk2 = (((u32) temp_r0 >> 8) & 0x1F) + 0x3C;
        var_r3 = var_r3 & ~(gStageData.buttonConfig.attack | 0x80);
    } else {
        var_r3 = var_r3 & 0xFFCF;
        if (strc->unk14 > +Q(2)) {
            var_r3 |= 0x10;
        }
        if (strc->unk14 < -Q(2)) {
            var_r3 |= 0x20;
        }
    }
    return var_r3;
}

u16 sub_80B88E0(Struc_3001150_1C* strc, Player* partner, Player* p) {
    s32 temp_r0;
    s32 temp_r1_2;
    u16 var_r3;
    u8 temp_r1;

    var_r3 = strc->inputBuffer[strc->inputBufferIndex];
    if (!(partner->moveState & 4)) {
        strc->unk0 = 0;
        strc->func = gUnknown_080E3254->funcA;
        temp_r0 = PseudoRandom32();
        gPseudoRandom = temp_r0;
        strc->unk2 = (((u32) temp_r0 >> 8) & 0x1F) + 0x3C;
        var_r3 = var_r3 & ~(gStageData.buttonConfig.attack | 0x80);
    } else {
        var_r3 = var_r3 & 0xFFCF;
        if (strc->unk14 > +Q(2)) {
            var_r3 |= 0x10;
        }
        if (strc->unk14 < -Q(2)) {
            var_r3 |= 0x20;
        }
    }
    return var_r3;
}

u16 sub_80B8980(Struc_3001150_1C* strc, Player* partner, Player* p) {
    s32 temp_r0;
    s32 temp_r1_2;
    u16 var_r3;

    var_r3 = strc->inputBuffer[strc->inputBufferIndex];
    if (!(partner->moveState & 4)) {
        strc->unk0 = 0;
        strc->func = gUnknown_080E3254->funcA;
        temp_r0 = PseudoRandom32();
        gPseudoRandom = temp_r0;
        strc->unk2 = (((u32) temp_r0 >> 8) & 0x1F) + 0x3C;
        var_r3 = var_r3 & ~(gStageData.buttonConfig.attack | 0x40);
    } else {
        var_r3 = var_r3 & 0xFFCF;
        temp_r1_2 = strc->unk14;
        if (temp_r1_2 > +Q(2)) {
            var_r3 |= 0x10;
        }
        if (temp_r1_2 < -Q(2)) {
            var_r3 |= 0x20;
        }
    }
    return var_r3;
}

u16 sub_80B8A20(Struc_3001150_1C* strc, Player* partner, Player* player) {
    s32 temp_r0_2;
    s32 temp_r2;
    s32 temp_r2_2;
    u16 var_r3;
    u16 var_r3_2;

    var_r3 = strc->inputBuffer[strc->inputBufferIndex];
    if (!(partner->moveState & 4)) {
        strc->unk0 = 0;
        strc->func = gUnknown_080E3254->funcA;
        temp_r0_2 = PseudoRandom32();
        strc->unk2 = (((u32) temp_r0_2 >> 8) & 0x1F) + 0x3C;
        var_r3 &= ~gStageData.buttonConfig.jump;
    } else {
        var_r3 ^= gStageData.buttonConfig.jump;
        temp_r2 = strc->unk18;
        if (temp_r2 > 0) {
            if (!(player->moveState & MOVESTATE_IN_AIR)) {
                var_r3 &= ~gStageData.buttonConfig.jump;
            } else if (temp_r2 > 0x1000) {
                var_r3 &= ~gStageData.buttonConfig.jump;
            }
        }
        if (var_r3 & gStageData.buttonConfig.attack) {
            var_r3 = var_r3 & ~gStageData.buttonConfig.attack;
        } else {
            temp_r2_2 = strc->unk14;
            if ((temp_r2_2 < 0) && !(partner->moveState & 1)) {
                var_r3 = (var_r3 & ~0x10);
                var_r3 |= 0x20;
            }
            if ((temp_r2_2 > 0) && (partner->moveState & 1)) {
                var_r3 = (var_r3 & ~0x20);
                var_r3 |= 0x10;
            }
            var_r3 = var_r3 | gStageData.buttonConfig.attack;
            strc->func = sub_80B8B24;
        }
    }
    return var_r3;
}

u16 sub_80B8B24(Struc_3001150_1C* strc, Player* partner, Player* p) {
    s32 temp_r2;
    u16 var_r3;

    var_r3 = strc->inputBuffer[strc->inputBufferIndex];
    if (!(partner->moveState & MOVESTATE_IN_AIR)) {
        strc->unk0 = 0;
        strc->func = gUnknown_080E3254->funcA;
        strc->unk2 = (((u32) PseudoRandom32() >> 8) & 0x1F) + 0x3C;
        return var_r3 & ~gStageData.buttonConfig.jump;
    } else {
        var_r3 = var_r3 ^ gStageData.buttonConfig.jump;
        temp_r2 = strc->unk18;
        if (temp_r2 > 0) {
            if (!(p->moveState & MOVESTATE_IN_AIR)) {
                var_r3 &= ~gStageData.buttonConfig.jump;
                asm("");
            } else if (temp_r2 > 0x1000) {
                var_r3 &= ~gStageData.buttonConfig.jump;
            }
        }
        var_r3 = var_r3 & 0xFFCF;

        if (strc->unk14 > +Q(2)) {
            var_r3 |= 0x10;
        }
        if (strc->unk14 < -Q(2)) {
            var_r3 |= 0x20;
        }
        strc->unk0 = 9;
        strc->func = gUnknown_080E3254[9].funcA;
        strc->unk2 = (((u32) PseudoRandom32() >> 8) & 0x1F) + 0x3C;
    }
    return var_r3;
}


void sub_80B8C2C(Struc_3001150_1C *arg0)
{
    DmaFill16(3, 0, arg0, sizeof(*arg0));
    DmaCopy16(3, &gUnknown_080E310C, arg0, sizeof(*arg0));
    sub_80B8D18(arg0, 0U);
}

void sub_80B8C6C(Struc_3001150_1C *strc) { }

void sub_80B8C70(Struc_3001150_1C *arg0, Player *partner, Player *player)
{
    sub_80B7AB0(arg0, arg0->func(arg0, partner, player));

    // TODO: Might be off-by-one error?
    if (arg0->unk2-- < 0) {
        sub_80B8D18(arg0, 0U);
    }
}

u8 sub_080B8CA8(u8 *arg0) { return *arg0; }

bool32 sub_80B8CAC(struct Struc_3001150_1C *strc, s32 index, Player *partner, Player *p)
{
    Struc_3001150_BoolRes func = gUnknown_080E3254[index].funcB;

    if (func != NULL) {
        return func(strc, partner, p);
    }

    return 1;
}

void sub_80B8CE0(Struc_3001150_1C *strc, u32 arg1)
{
    u8 temp_r0 = strc->unk0;
    if ((temp_r0 != arg1) && (gUnknown_080E3254[temp_r0].someCount <= gUnknown_080E3254[arg1].someCount)) {
        sub_80B8D18(strc, arg1);
    }
}

void sub_80B8D18(Struc_3001150_1C *arg0, u32 arg1)
{
    s32 temp_r1;

    arg0->unk0 = arg1;
    arg0->func = gUnknown_080E3254[arg1].funcA;
    temp_r1 = PseudoRandom32();
    arg0->unk2 = (((u32)temp_r1 >> 8) & 0x1F) + 0x3C;
}

bool32 sub_80B8D60(struct Struc_3001150_1C *strc, s32 index, Player *partner, Player *p)
{
    Struc_3001150_BoolRes temp_r3;
    s32 var_r0;

    temp_r3 = gUnknown_080E3254[index].funcB;
    if (temp_r3 != NULL) {
        var_r0 = temp_r3(strc, partner, p);
    } else {
        var_r0 = 1;
    }

    if (var_r0 != 0) {
        sub_80B8CE0(strc, index);
    } else {
        return 0;
    }

    return 1;
}

void sub_80B8DA8(Struc_3001150_1C *arg0, s32 arg1, s32 arg2)
{
    arg0->unkC = arg1;
    arg0->unk10 = arg2;
}

void sub_80B8DB0(Struc_3001150_1C *arg0, s32 *arg1, s32 *arg2)
{
    if (arg1 != NULL) {
        *arg1 = arg0->unkC;
    }
    if (arg2 != NULL) {
        *arg2 = arg0->unk10;
    }
}

void sub_80B8DC8(Struc_3001150_1C *arg0)
{
    s16 temp_r0_2;
    s32 temp_r5;
    s32 temp_r6;
    s32 temp_r0;
    s32 temp_r2;
    s32 temp_r1;

    temp_r6 = arg0->unkC - arg0->unk4;
    temp_r5 = arg0->unk10 - arg0->unk8;
    temp_r0 = I(temp_r6);
    temp_r1 = I(temp_r5);
    temp_r2 = SQUARE(temp_r0) + SQUARE(temp_r1);
    temp_r0_2 = SA2_LABEL(sub_8004418)(temp_r5, temp_r6);
    arg0->unk14 = temp_r6;
    arg0->unk18 = temp_r5;
    arg0->unk1C = (temp_r2);
    arg0->unk20 = temp_r0_2;
}

void sub_80B8E10(Struc_3001150_1C *arg0, Player *partner, Player *player)
{
    arg0->unk4 = partner->qWorldX;
    arg0->unk8 = partner->qWorldY;
    arg0->unk24 = player->qWorldX;
    arg0->unk28 = player->qWorldY;
}

void sub_80B8E24(Struc_3001150_1C *strc, Player *p, s32 param2, s32 param3)
{
    s32 temp_r0;
    s32 temp_r2;
    u32 temp_r1;

    temp_r2 = (param2 - p->qWorldX);
    temp_r0 = (param3 - p->qWorldY);
    temp_r2 >>= 8;
    temp_r0 >>= 8;
    temp_r1 = (temp_r2 * temp_r2) + (temp_r0 * temp_r0);
    if ((u32)strc->unk34 >= temp_r1) {
        strc->unk2C = param2;
        strc->unk30 = param3;
        strc->unk34 = (s32)temp_r1;
    }
}

void sub_80B8E54(Struc_3001150_1C *strc) { strc->unk34 = -1; }

bool32 sub_80B8E5C(Struc_3001150_1C *strc)
{
    if (strc->unk34 == -1) {
        return 0;
    }

    return 1;
}

u16 InputBufferGetCurrent(Struc_3001150_1C *strc) { return strc->inputBuffer[strc->inputBufferIndex]; }

u16 sub_80B8E88(Struc_3001150_1C *strc) { return strc->unk40; }

void sub_80B8E90(Struc_3001150_1C *strc, u16 input)
{
    strc->unk40 = input & ~strc->inputBuffer[strc->inputBufferIndex];
    strc->inputBuffer[strc->inputBufferIndex] = input;
}

// TODO: Match this mess without gotos!
u32 sub_80B8EC4(Struc_3001150_1C *strc, Player *partner, Player *p)
{
    s32 temp_r0;
    s32 rand;
    u32 var_r1;
    u32 var_r3;

    temp_r0 = p->charFlags.anim0;
    if (temp_r0 == 1) {
        goto set100;
    }

    if (temp_r0 == 0) {
        goto setF00;
    }

    if (temp_r0 != 2) {
        goto set20;
    }

set100:
    var_r3 = 0x100;
    goto skip;

set20:
    asm("");
    var_r3 = 0x20;

    if (temp_r0 != 6) {
        goto skip;
    }

    if (var_r3 == 0xF00) {
    set800:
        var_r3 = 0x800;
        asm("");
        goto skip;
    }

setF00:
    var_r3 = 0xF00;
    asm("");
skip:

    rand = PseudoRandom32();
    var_r1 = 0;
    if (var_r3 > (u32)((u32)(rand << 8) >> 0x10)) {
        var_r1 = 1;
    }
    return var_r1;
}

u32 sub_80B8F14(Struc_3001150_1C *strc, Player *partner, Player *p)
{
    s32 temp_r0;
    s32 var_r1_2;
    u32 var_r1;
    u32 var_r3;

    if ((strc->unk0 == 3) || (partner->moveState & 4)) {
        return 0U;
    }
    var_r1_2 = strc->unk14;
    if (var_r1_2 < 0) {
        var_r1_2 = 0 - var_r1_2;
    }
    if (var_r1_2 > 0x1800) {
        var_r3 = 0x8000;
    } else {
        var_r3 = 0x100;
    }
    temp_r0 = (gPseudoRandom * 0x196225) + 0x3C6EF35F;
    gPseudoRandom = temp_r0;
    var_r1 = 0;
    if (var_r3 > (u32)((u32)(temp_r0 << 8) >> 0x10)) {
        var_r1 = 1;
    }
    return var_r1;
}

// TODO: Match this mess without gotos!
u32 sub_80B8F70(Struc_3001150_1C *strc, Player *partner, Player *p)
{
    s16 temp_r0;
    s32 temp_r0_2;
    u32 var_r1;
    u32 var_r3;

#ifndef NON_MATCHING
    temp_r0 = p->charFlags.anim0;
    if (temp_r0 != 1) {
        asm("");
        goto check_6;
    } else {
        var_r3 = 0x1000;
        goto skip;
    }
check_6:
    if (temp_r0 == 6) {
        var_r3 = 0x10;
        asm("");
        goto skip;
    } else {
        var_r3 = 0x20;
    }
skip:
#else
    temp_r0 = p->charFlags.anim0;
    switch (temp_r0) {
        case 1: {
            var_r3 = 0x1000;
        } break;

        case 6: {
            var_r3 = 0x10;
        } break;

        default: {
            var_r3 = 0x20;
        } break;
    }
#endif

    temp_r0_2 = PseudoRandom32();
    var_r1 = 0;
    if (var_r3 > (u32)((u32)(temp_r0_2 << 8) >> 0x10)) {
        var_r1 = 1;
    }
    return var_r1;
}

// (70.68%) https://decomp.me/scratch/Cznjy
NONMATCH("asm/non_matching/game/cx__sub_80B8FB8.inc", bool32 sub_80B8FB8(Struc_3001150_1C *strc, Player *partner, Player *p))
{
    s16 temp_r0;
    s32 temp_r0_2;
    u32 var_r1;
    u32 var_r3;
    s32 anim0 = p->charFlags.anim0;

    switch (anim0) {
        case 0: {
            var_r3 = 0x20;
        } break;

        case 1: {
            var_r3 = 0x20;
        } break;

        case 2: {
            var_r3 = 0x1000;
        } break;

        case 6: {
            var_r3 = 0x10;
        } break;

        default: {
            var_r3 = 0x20;
        } break;
    }

    temp_r0_2 = PseudoRandom32();
    var_r1 = 0;
    if (var_r3 > (u32)((u32)(temp_r0_2 << 8) >> 0x10)) {
        var_r1 = 1;
    }
    return var_r1;
}
END_NONMATCH

/* ----- */

bool32 sub_80B9008(Struc_3001150_1C *strc, Player *partner, Player *p)
{
    if ((strc->unk0 != 8) && (partner->moveState & 4)) {
        return TRUE;
    }
    return FALSE;
}

bool32 sub_80B9024(Struc_3001150_1C *strc, Player *partner, Player *p)
{
    s16 temp_r1_2;
    u32 var_r1;
    u32 var_r3;

    if (strc->unk0 != 10) {
        if (4 & partner->moveState) {
            if (!(partner->moveState & 0x80)) {
                u32 unkC = (partner->unkC & 0x180);

                if (((partner->charFlags.character) == CREAM) && (unkC == 0x80) && (strc->unk18 < -Q(8))) {
                    temp_r1_2 = partner->qSpeedAirY;
                    if (temp_r1_2 > -0xA8) {
                        u32 rand;
                        var_r3 = 0x200;
                        if (temp_r1_2 < 0xA8) {
                            var_r3 = 0x2000;
                        }

                        rand = PseudoRandom32();
                        var_r1 = 0;
                        rand = (rand << 8) >> 16;

                        if (var_r3 > rand) {
                            var_r1 = TRUE;
                        }

                        return var_r1;
                    }
                }
            }
        }
    }

    return FALSE;
}

bool32 sub_80B90B4(Struc_3001150_1C *strc, Player *partner, Player *p)
{
    s16 temp_r1_2;
    u32 var_r1;
    u32 var_r3;

    if (strc->unk0 != 0xB) {
        if (4 & partner->moveState) {
            if (!(partner->moveState & 0x80)) {
                u32 unkC = (partner->unkC & 0xC000);

                if (((partner->charFlags.character) == 4) && (unkC == 0x4000) && (strc->unk18 < -Q(8))) {
                    temp_r1_2 = partner->qSpeedAirY;
                    if (temp_r1_2 > -0xA8) {
                        u32 rand;
                        var_r3 = 0x200;
                        if (temp_r1_2 < 0xA8) {
                            var_r3 = 0x2000;
                        }

                        rand = PseudoRandom32();
                        var_r1 = 0;
                        rand = (rand << 8) >> 16;

                        if (var_r3 > rand) {
                            var_r1 = TRUE;
                        }

                        return var_r1;
                    }
                }
            }
        }
    }

    return FALSE;
}

u16 sub_80B9148(Struc_3001150_1C *strc, Player *partner, Player *p) { return strc->inputBuffer[strc->inputBufferIndex]; }

u16 sub_80B915C(Struc_3001150_1C *strc, Player *partner, Player *p)
{
    strc->unk3E = (((u32)PseudoRandom32() >> 8) & 0x1F) + 6;
    strc->func = sub_80B95A0;
    return 0U;
}

u16 sub_80B9194(Struc_3001150_1C *strc, Player *partner, Player *p)
{
    s32 temp_r0_2;
    u16 var_r4;

    var_r4 = 0;
    if (strc->unkC > partner->qWorldX) {
        var_r4 = 0x10;
    } else if (strc->unkC < partner->qWorldX) {
        var_r4 = 0x20;
    }
    strc->unk0 = 0;
    strc->func = gUnknown_080E3254[0].funcA;
    strc->unk2 = (((u32)PseudoRandom32() >> 8) & 0x1F) + 0x3C;
    return var_r4;
}

u16 sub_80B91EC(Struc_3001150_1C *strc, Player *partner, Player *p)
{
    u16 input = strc->inputBuffer[strc->inputBufferIndex];

    if (partner->moveState & MOVESTATE_IN_AIR) {
        return input;
    }

    strc->func = sub_80B9324;
    return sub_80B9324(strc, partner, p);
}

u16 sub_80B9234(Struc_3001150_1C *strc, Player *partner, Player *p)
{
    s32 temp_r1;

    strc->func = sub_80B95A0;
    strc->unk3E = (((u32)PseudoRandom32() >> 8) & 0x3F) + 0x20;
    return 0x40U;
}

u16 sub_80B926C(Struc_3001150_1C *strc, Player *partner, Player *p)
{
    s32 temp_r1;

    strc->func = sub_80B95A0;
    strc->unk3E = (((u32)PseudoRandom32() >> 8) & 0x3F) + 0x20;
    return 0x80U;
}

u16 sub_80B92A4(Struc_3001150_1C *strc, Player *partner, Player *p)
{
    s32 temp_r1;

    strc->unk0 = 0;
    strc->func = gUnknown_080E3254[0].funcA;
    temp_r1 = (gPseudoRandom * 0x196225) + 0x3C6EF35F;
    gPseudoRandom = temp_r1;
    strc->unk2 = (((u32)temp_r1 >> 8) & 0x1F) + 0x3C;
    return 0x80U;
}

u16 sub_80B92E0(Struc_3001150_1C *strc, Player *partner, Player *p)
{
    s32 temp_r0;

    if (partner->qSpeedGround == 0) {
        strc->func = sub_80B82D8;
        temp_r0 = (gPseudoRandom * 0x196225) + 0x3C6EF35F;
        gPseudoRandom = temp_r0;
        strc->unk3E = (temp_r0 & 0x3F) + 0x10;
    }
    return 0x80U;
}

u16 sub_80B9324(Struc_3001150_1C *strc, Player *partner, Player *p)
{
    u16 result = strc->inputBuffer[strc->inputBufferIndex];

    if ((result & ~(DPAD_SIDEWAYS)) == 0) {
        result &= DPAD_SIDEWAYS;
        result |= gStageData.buttonConfig.jump;
        strc->func = sub_80B8218;
        strc->unk3E = 4;

    } else {
        result &= DPAD_SIDEWAYS;
    }

    return result;
}

u16 sub_80B9374(Struc_3001150_1C *strc, Player *partner, Player *p)
{
    u16 result = strc->inputBuffer[strc->inputBufferIndex];
    result &= ~gStageData.buttonConfig.jump;
    strc->func = sub_80B84C8;
    return result;
}

u16 sub_80B93A4(Struc_3001150_1C *strc, Player *partner, Player *p)
{
    u16 input = strc->inputBuffer[strc->inputBufferIndex];
    if (!(input & gStageData.buttonConfig.attack)) {
        input = input | gStageData.buttonConfig.attack;
        strc->func = sub_80B8584;
    } else {
        input = input & ~gStageData.buttonConfig.attack;
    }
    return input;
}

u16 sub_80B93E4(Struc_3001150_1C *strc, Player *partner, Player *p)
{
    u16 input = strc->inputBuffer[strc->inputBufferIndex];

    if (input & gStageData.buttonConfig.jump) {
        input &= ~gStageData.buttonConfig.jump;
    } else {
        input |= gStageData.buttonConfig.jump;
        strc->func = sub_80B8620;
        input &= ~DPAD_SIDEWAYS;

        if (strc->unk14 > +Q(2)) {
            input |= DPAD_RIGHT;
        }
        if (strc->unk14 < -Q(2)) {
            input |= DPAD_LEFT;
        }
    }

    return input;
}

u16 sub_80B9454(Struc_3001150_1C *strc, Player *partner, Player *p)
{
    u16 result = strc->inputBuffer[strc->inputBufferIndex];

    result &= ~gStageData.buttonConfig.attack;

    strc->unk0 = 0;
    strc->func = gUnknown_080E3254[0].funcA;
    strc->unk2 = (((u32)PseudoRandom32() >> 8) & 0x1F) + 60;
    return result;
}

u16 sub_80B94B0(Struc_3001150_1C *strc, Player *partner, Player *p)
{
    u16 var_r2;
    u32 temp_r2;

    temp_r2 = strc->inputBuffer[strc->inputBufferIndex];
    if (!(temp_r2 & gStageData.buttonConfig.attack)) {
        var_r2 = temp_r2 | gStageData.buttonConfig.attack;
        strc->func = sub_80B8840;
    } else {
        var_r2 = temp_r2 & ~gStageData.buttonConfig.attack;
    }
    return var_r2;
}

// TODO: This is supposed to return a u16
u32 sub_80B94F0(Struc_3001150_1C *strc, Player *partner, Player *p)
{
    u16 attackBtn;
    s32 temp_r1;
    u32 var_r2;

    var_r2 = strc->inputBuffer[strc->inputBufferIndex];
    attackBtn = gStageData.buttonConfig.attack;
    temp_r1 = attackBtn | (DPAD_ANY & ~DPAD_DOWN);
    if ((var_r2 & temp_r1) || !(DPAD_DOWN & var_r2)) {
        var_r2 = (u16)((var_r2 & ~temp_r1) | DPAD_DOWN);
    } else {
        var_r2 = var_r2 | gStageData.buttonConfig.attack;
        strc->func = sub_80B88E0;
    }
    return var_r2;
}

// TODO: This is supposed to return a u16
u32 sub_80B9548(Struc_3001150_1C *strc, Player *partner, Player *p)
{
    u16 attackBtn;
    s32 temp_r1;
    u32 var_r2;

    var_r2 = strc->inputBuffer[strc->inputBufferIndex];
    attackBtn = gStageData.buttonConfig.attack;
    temp_r1 = attackBtn | (DPAD_ANY & ~DPAD_UP);
    if ((var_r2 & temp_r1) || !(DPAD_UP & var_r2)) {
        var_r2 = (u16)((var_r2 & ~temp_r1) | DPAD_UP);
    } else {
        var_r2 = var_r2 | gStageData.buttonConfig.attack;
        strc->func = sub_80B8980;
    }
    return var_r2;
}

u16 sub_80B95A0(Struc_3001150_1C *strc, Player *partner, Player *p)
{
    u16 result = strc->inputBuffer[strc->inputBufferIndex];

    if (strc->unk3E-- <= 0) {
        strc->unk0 = 0;
        strc->func = gUnknown_080E3254[0].funcA;
        strc->unk2 = (((u32)PseudoRandom32() >> 8) & 0x1F) + 60;
    }
    return result;
}

void sub_80B9604(Struc_3001150_164 *arg0, Player *p)
{
    Struc_3001150_164_0 *strc;

    strc = &arg0->unk0[arg0->unk0Index];
    strc->qWorldX = p->qWorldX;
    strc->qWorldY = p->qWorldY;
    strc->unk8 = p->qSpeedAirX;
    strc->unkC = p->qSpeedAirY;
    strc->unk10 = p->qSpeedGround;
    strc->unk12 = p->unk26;
    strc->unk14 = p->layer;
    arg0->unk0Index = ((u16)arg0->unk0Index + 1) % ARRAY_COUNT(arg0->unk0);
}

s32 sub_80B9650(Player *partner, Player *player, Struc_3001150_164 *strc164, s32 arg3, s32 arg4)
{
    Struc_3001150_164_0 *temp_r6;
    s32 index;
    s32 max;
    s32 qDX;
    s32 qDY;

    max = (strc164->unk0Index + 1) % ARRAY_COUNT(strc164->unk0);
    if (!(partner->moveState & (MOVESTATE_80000000 | MOVESTATE_10000000 | MOVESTATE_40000 | MOVESTATE_20000))) {
        index = strc164->unk0Index;
        while (index != max) {
            temp_r6 = &strc164->unk0[index];
            if ((s8)temp_r6->unk14 != -1) {
                qDX = player->qWorldX - temp_r6->qWorldX;
                qDY = player->qWorldY - temp_r6->qWorldY;

                // NOTE: Unsure about the use of DISPLAY_WIDTH / DISPLAY_HEIGHT!
                if ((ABS(qDX) >= Q(2 * DISPLAY_WIDTH)) || (ABS(qDY) >= Q(2 * DISPLAY_HEIGHT))) {
                    if (((arg3 == 0) || !((qDX ^ arg3) & 0x80000000)) && ((arg4 == 0) || !((qDY ^ arg4) & 0x80000000))) {
                        partner->qWorldX = temp_r6->qWorldX;
                        partner->qWorldY = temp_r6->qWorldY;
                        partner->qSpeedAirX = temp_r6->unk8;
                        partner->qSpeedAirY = temp_r6->unkC;
                        partner->qSpeedGround = temp_r6->unk10;
                        partner->unk26 = temp_r6->unk12;
                        partner->layer = temp_r6->unk14;
                        return TRUE;
                    }
                }
            }

            index = (index - 1) % ARRAY_COUNT(strc164->unk0);
        }
    }

    return FALSE;
}

// Clears the array
void sub_80B9744(Struc_3001150_164 *strc)
{
    s32 i;

    for (i = 0; i < (s32)ARRAY_COUNT(strc->unk0); i++) {
        strc->unk0[i].unk14 |= -1;
    };
    strc->unk0Index = 0;
}

void nullsub_80B9770(Struc_3001150_164 *strc164) { }

void sub_80B9774(Struc_3001150_164 *strc, Player *player)
{
    if (!(player->moveState & (MOVESTATE_80000000 | MOVESTATE_10000000 | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_IN_AIR))
        && !sub_80B97A4(strc, player)) {
        sub_80B9604(strc, player);
    }
}

bool32 sub_80B97A4(Struc_3001150_164 *strc, Player *player)
{
    s32 i, maxIndex;
    s32 qDx, qDy;
    Struc_3001150_164_0 *temp_r4;

    maxIndex = (strc->unk0Index + 1) % ARRAY_COUNT(strc->unk0);
    i = strc->unk0Index;
    while (i != maxIndex) {
        temp_r4 = &strc->unk0[i];

        if ((s8)temp_r4->unk14 != -1) {
            qDx = player->qWorldX - temp_r4->qWorldX;
            qDy = player->qWorldY - temp_r4->qWorldY;

            if (ABS(qDx) < Q(60) && ABS(qDy) < Q(40) && (temp_r4->unk14 == player->layer)) {
                return TRUE;
            }
        }

        i = (i - 1) % ARRAY_COUNT(strc->unk0);
    }

    return FALSE;
}
