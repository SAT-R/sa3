#include "global.h"
#include "core.h"
#include "game/shared/stage/player.h"
#include "constants/move_states.h"

void sub_80B7AB0(Struc_3001150_1C *strc, u16 arg1);
void sub_80B8E24(Struc_3001150_1C *strc, Player *p, s32 param2, s32 param3);
u16 InputBufferGetCurrent(Struc_3001150_1C *strc);
u16 sub_80B7AEC(Struc_3001150_1C *strc, Player *p);
u16 sub_80B7C1C(Struc_3001150_1C *strc, Player *p);
bool32 sub_80B7CD0(Struc_3001150_1C *strc, Player *p);
u16 sub_80B7D74(Struc_3001150_1C *strc, Player *p);
u16 sub_80B7E1C(Struc_3001150_1C *strc);
u16 sub_80B7F00(Struc_3001150_1C *strc);
u16 sub_80B7F90(Struc_3001150_1C *strc);
u16 sub_80B8034(Struc_3001150_1C *strc);
u16 sub_80B80C8(Struc_3001150_1C *strc);
u16 sub_80B836C(Struc_3001150_1C *strc);
u16 sub_80B83FC(Struc_3001150_1C *strc);
bool32 sub_80B8168(Struc_3001150_1C *strc, Player *p);
u16 sub_80B8218(Struc_3001150_1C *strc, Player *p);
u16 sub_80B82D8(Struc_3001150_1C *strc, Player *p);
u16 sub_80B84C8(Struc_3001150_1C *strc, Player *p);
u16 sub_80B8584(Struc_3001150_1C *strc, Player *p);
u16 sub_80B8620(Struc_3001150_1C *strc, Player *p);
u16 sub_80B86E4(Struc_3001150_1C *strc, Player *p);
u16 sub_80B87B0(Struc_3001150_1C *strc, Player *p);
u16 sub_80B88E0(Struc_3001150_1C *strc, Player *p);
u16 sub_80B8980(Struc_3001150_1C *strc, Player *p);
u16 sub_80B8A20(Struc_3001150_1C *strc);
u16 sub_80B8E88(Struc_3001150_1C *strc);
void sub_80B8E90(Struc_3001150_1C *strc, u16 input);
u16 sub_80B8EC4(Struc_3001150_1C *strc);
u16 sub_80B8F14(Struc_3001150_1C *strc);
u16 sub_80B8F70(Struc_3001150_1C *strc);
u16 sub_80B8FB8(Struc_3001150_1C *strc);
u16 sub_80B9008(Struc_3001150_1C *strc);
u16 sub_80B9024(Struc_3001150_1C *strc);
u16 sub_80B90B4(Struc_3001150_1C *strc);
u16 sub_80B9148(Struc_3001150_1C *strc);
u16 sub_80B915C(Struc_3001150_1C *strc);
u16 sub_80B9194(Struc_3001150_1C *strc, Player *p);
u16 sub_80B91EC(Struc_3001150_1C *strc, Player *p);
u16 sub_80B9234(Struc_3001150_1C *strc);
u16 sub_80B926C(Struc_3001150_1C *strc);
u16 sub_80B92A4(Struc_3001150_1C *strc);
u16 sub_80B92E0(Struc_3001150_1C *strc, Player *partner, Player *p);
u16 sub_80B9374(Struc_3001150_1C *strc);
u16 sub_80B93A4(Struc_3001150_1C *strc);
u16 sub_80B93E4(Struc_3001150_1C *strc);
u16 sub_80B94B0(Struc_3001150_1C *strc);
u16 sub_80B94F0(Struc_3001150_1C *strc);
u16 sub_80B9548(Struc_3001150_1C *strc);
u16 sub_80B95A0(Struc_3001150_1C *strc);
void sub_80B9604(Struc_3001150_164 *strc, Player *p);
s32 sub_80B9650(Player *partner, Player *player, Struc_3001150_164 *strc164, s32 arg3, s32 arg4);
void sub_80B9744(Struc_3001150_164 *strc);
void sub_80B9774(Struc_3001150_164 *strc, Player *partner, Player *player);
bool32 sub_80B97A4(Struc_3001150_164 *strc, Player *partner, Player *player);

void sub_80B79C8(Struc_3001150 *strc, Player *partner, Player *player);

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
