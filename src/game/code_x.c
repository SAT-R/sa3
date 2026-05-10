#include "global.h"
#include "core.h"
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
void sub_80B9774(Struc_3001150_164 *strc, Player *partner, Player *player);
bool32 sub_80B97A4(Struc_3001150_164 *strc, Player *partner, Player *player);

void sub_80B79C8(Struc_3001150 *strc, Player *partner, Player *player);

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

// (70.68%) https://decomp.me/scratch/Cznjy
NONMATCH("asm/non_matching/game/cx__sub_80B8FB8.inc", bool32 sub_80B8FB8(Struc_3001150_1C* strc, Player* partner, Player* p))
{
    s16 temp_r0;
    s32 temp_r0_2;
    u32 var_r1;
    u32 var_r3;
    s32 anim0 = p->charFlags.anim0;

    switch(anim0)
    {
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
    if (var_r3 > (u32) ((u32) (temp_r0_2 << 8) >> 0x10)) {
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

bool32 sub_80B9024(Struc_3001150_1C *strc, Player *partner, Player *p) {
    s16 temp_r1_2;
    u32 var_r1;
    u32 var_r3;

    if (strc->unk0 != 10) {
        if (4 & partner->moveState) 
        {
                if(!(partner->moveState & 0x80))
                {
                    u32 unkC = (partner->unkC & 0x180);

                    if (((partner->charFlags.character) == CREAM) 
                    && (unkC == 0x80) 
                    && (strc->unk18 < -Q(8)))
                {
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

bool32 sub_80B90B4(Struc_3001150_1C *strc, Player *partner, Player *p) {
    s16 temp_r1_2;
    u32 var_r1;
    u32 var_r3;

    if (strc->unk0 != 0xB) {
        if (4 & partner->moveState) 
        {
                if(!(partner->moveState & 0x80))
                {
                    u32 unkC = (partner->unkC & 0xC000);

                    if (((partner->charFlags.character) == 4) 
                    && (unkC == 0x4000) 
                    && (strc->unk18 < -Q(8)))
                {
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

u16 sub_80B9454(Struc_3001150_1C *strc)
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

void sub_80B9770(void) { }

void sub_80B9774(Struc_3001150_164 *strc, Player *partner, Player *player)
{
    if (!(partner->moveState & (MOVESTATE_80000000 | MOVESTATE_10000000 | MOVESTATE_40000 | MOVESTATE_20000 | MOVESTATE_IN_AIR))
        && !sub_80B97A4(strc, partner, player)) {
        sub_80B9604(strc, partner);
    }
}

bool32 sub_80B97A4(Struc_3001150_164 *strc, Player *partner, Player *player)
{
    s32 i, maxIndex;
    s32 qDx, qDy;
    Struc_3001150_164_0 *temp_r4;

    maxIndex = (strc->unk0Index + 1) % ARRAY_COUNT(strc->unk0);
    i = strc->unk0Index;
    while (i != maxIndex) {
        temp_r4 = &strc->unk0[i];

        if ((s8)temp_r4->unk14 != -1) {
            qDx = partner->qWorldX - temp_r4->qWorldX;
            qDy = partner->qWorldY - temp_r4->qWorldY;

            if (ABS(qDx) < Q(60) && ABS(qDy) < Q(40) && (temp_r4->unk14 == partner->layer)) {
                return TRUE;
            }
        }

        i = (i - 1) % ARRAY_COUNT(strc->unk0);
    }

    return FALSE;
}
