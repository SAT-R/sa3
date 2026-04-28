#include "global.h"
#include "core.h"
#include "multi_sio.h"

typedef struct Strc3000428 {
    u8 unk0;
    u8 unk1;
    u16 unk2;
    u16 unk4;
    u16 unk6;
    u16 unk8;
    u16 unkA;
} Strc3000428;
extern Strc3000428 gUnknown_3000428;
s32 gUnknown_3000434;

extern void GetInput(void);
extern u8 gUnknown_03002C60;
extern u8 gUnknown_0300620C;
extern u8 gUnknown_03006C20;
extern u16 gUnknown_082B533C[8];
extern u16 gUnknown_082B5344[16 * PALETTE_LEN_4BPP];
extern u8 gUnknown_082B5544[0x4000];
extern u8 gUnknown_082B9544[0x500];
u8 *gUnknown_03002BF0;

s32 gUnknown_3000434;
extern u32 gUnknown_3000438;
extern u32 gUnknown_300043C;

void sub_80C625C(void);
void sub_80C6318();
s32 sub_80C6548(u8 arg0);
bool8 sub_80C65B4();
s32 sub_80C65F0(u8 arg0);
s32 sub_80C6858(void);
void sub_80C68E0();

void sub_80C621C(void)
{
    gMultiSioEnabled = 0;
    gFlags &= ~0x10000;
    MultiSioStop();
    MultiSioInit(0U);
    if (gFlags & 0x80000) {
        sub_80C68E0();
    }
}

void sub_80C625C(void)
{
    u8 siocnt;
    s32 mask;
    REG_IME = 0;
    REG_IE &= 0xFF3F;
    REG_IME = 1;
    REG_RCNT = 0;
    REG_SIOCNT = 0x1008;
    REG_SIOCNT |= 0x4000;
    REG_IF = 0xC0;
    REG_IME = 0;
    REG_IE |= 0xC0;
    REG_IME = 1;
    // TODO: Make this work without these casts!
    siocnt = *(vu8 *)&REG_SIOCNT;
    mask = ~1;
    *(vu8 *)&REG_SIOCNT = siocnt & mask;
    gUnknown_03006C20 = 0;
    // TODO: Make this a variable
    CpuFill32(0, (void *)IWRAM_START + 0x428, 12);
    REG_IME = 0;
    REG_SIOCNT |= 0x80;
    REG_IME = 1;
    REG_TM3CNT_L = 0x8000;
    REG_TM3CNT_H = 0xC1;
}

NONMATCH("asm/non_matching/cz2__sub_80C6318.inc", void sub_80C6318(void))
{
    s32 sp4;
    s32 sp8;
    s32 temp_r0_2;
    s32 temp_r6;
    u16 temp_r0_3;
    u16 temp_r2;
    u16 temp_r3;
    u16 temp_r5;
    u16 var_r0;
    u32 temp_r0;
    u8 temp_r1;
    s32 sioCntValue;

    gUnknown_3000438 = REG_SIODATA32;
    REG_TM3CNT_H = 0;
    REG_TM3CNT_L = 0x8000;
    switch (gUnknown_03006C20) {
        case 0:
            temp_r6 = REG_SIODATA32;
            temp_r1 = gUnknown_3000428.unk0;
            temp_r0 = (u32)(temp_r6 << (temp_r1 * 0x10)) >> 0x10;
            temp_r6 = (u32)(temp_r6 << ((1 - temp_r1) * 0x10)) >> 0x10;

            if (gUnknown_3000428.unkA == 0) {
                temp_r2 = gUnknown_3000428.unk6;
                if (temp_r0 == temp_r2) {
                    if (gUnknown_3000428.unk2 < 4) {
                        if ((temp_r0 == (u16)~gUnknown_3000428.unk4) && (temp_r6 == (u16)~temp_r2)) {
                            gUnknown_3000428.unk2++;
                        }
                    } else {
                        gUnknown_3000428.unkA = temp_r6;
                        if (temp_r6 == 0x8002) {
                            gUnknown_03006C20 = 1;
                            temp_r0_2 = sub_80C65F0(1U);
                            gUnknown_3000434 = temp_r0_2;
                            REG_SIODATA32 = temp_r0_2;
                            gUnknown_3000428.unk2 = 0;
                            break;
                        } else {
                            gUnknown_3000428.unkA = 0;
                            gUnknown_3000428.unk2 = 0;
                        }
                    }
                } else {
                    gUnknown_3000428.unk2 = 0;
                }
            }
            {
                u16 unk2 = gUnknown_3000428.unk2;
                if (unk2 < 4) {
                    gUnknown_3000428.unk4 = gUnknown_082B533C[unk2];
                } else {
                    gUnknown_3000428.unk4 = 0x8000;
                }

                gUnknown_3000428.unk6 = (u16)~temp_r6;
                REG_SIODATA32 = ((gUnknown_3000428.unk4 << ((1 - gUnknown_3000428.unk0) * 0x10))
                                 + (gUnknown_3000428.unk6 << (gUnknown_3000428.unk0 * 0x10)));
            }

            break;
        case 1:
            if (sub_80C6548(gUnknown_03006C20) != 0) {
                gUnknown_3000428.unk2 = 0U;
                CpuFill32(0, &gUnknown_3000428, 12);
                gUnknown_03006C20 = 0;
            } else {
                gUnknown_03006C20 = 2;
            }

            gUnknown_3000434 = sub_80C65F0(gUnknown_03006C20);
            ;
            REG_SIODATA32 = gUnknown_3000434;
            break;
        case 2:
            if (sub_80C6548(gUnknown_03006C20) != 0) {
                gUnknown_3000428.unk2 = 0U;
                CpuFill32(0, &gUnknown_3000428, 12);
                gUnknown_03006C20 = 0;
            } else {
                gUnknown_03006C20 = 3;
            }

            gUnknown_3000434 = sub_80C65F0(gUnknown_03006C20);
            ;
            REG_SIODATA32 = gUnknown_3000434;
            break;
        case 3:
            if (sub_80C6548(gUnknown_03006C20) != 0) {
                gUnknown_3000428.unk2 = 0U;
                CpuFill32(0, &gUnknown_3000428, 12);
                gUnknown_03006C20 = 0;
            }

            gUnknown_3000434 = sub_80C65F0(gUnknown_03006C20);
            ;
            REG_SIODATA32 = gUnknown_3000434;
            break;
        case 4:
        case 5:
        default:
        block_def:
            REG_IME = 0;
            REG_IE &= 0xFF7F;
            REG_IME = 1;
            return;
    }

    REG_SIOCNT |= 0x80;
    REG_TM3CNT_H = 0xC1;
}
END_NONMATCH

#if 0 // inner
s32 sub_80C6548(u8 arg0)
{
    u32 temp_r5;

    temp_r5 = gUnknown_3000438 >> 0x1C;
    if (!sub_80C65B4()) {
        switch (arg0) {
            case 1:
                gUnknown_300043C = ((gUnknown_3000438 * 0x10) >> 8) & arg0;
                if (temp_r5 == 1) {
                    break;
                } else {
                    return 1;
                }
                {
                block_8:
                default:
                    return 1;
                }
            case 2:
                if (temp_r5 == 2) {
                    if (gUnknown_300043C == ((gUnknown_3000438 * 0x10) >> 8)) {
                        break;
                    }
                }
                return 1;
            case 3:
                if (temp_r5 != 3) {
                    return 1;
                }
        }
    } else {
        return 1;
    }
    return 0;
}

bool8 sub_80C65B4(void)
{
    u32 temp_r0;
    s32 temp_r4;
    u8 var_r3;
    u32 temp_r0_2;
    s32 var_r5;
    u8 var_r0;

    temp_r0 = gUnknown_3000438;
    temp_r4 = gUnknown_3000438 >> 4;
    var_r5 = 0xF;
    var_r5 &= temp_r0;
    var_r3 = temp_r4 >> 24;

    for (var_r0 = 6; var_r0 != 0; var_r0--) {
        var_r3 ^= ((u32)temp_r4 >> ((var_r0 - 1) * 4)) & 0xF;
    }

    if (var_r3 == var_r5) {
        return 0;
    }
    return 1;
}

s32 sub_80C65F0(u8 arg0)
{
    u8 var_r2;
    u32 var_r0;
    u32 var_r3;
    u32 var_r4;

#ifndef BUG_FIX
    s32 arg1;
#else
    s32 arg1 = 0;
#endif

    switch (arg0) {
        case 1:
            var_r4 = 0x10000010U;
            var_r3 = 1;
            var_r2 = 6;
            do {
                var_r3 ^= (var_r4 >> (var_r2 * 4)) & 0xF;
                var_r2 -= 1;
            } while (var_r2 != 0);

            arg1 = (0xF & var_r3) | var_r4;
            break;
        case 2:
            var_r4 = ((gUnknown_300043C & 0xFFFFFF) << 4) | 0x20000000;
            var_r3 = (var_r4 >> 28);
            for (var_r2 = 6; var_r2 != 0; var_r2--) {
                var_r3 ^= (var_r4 >> (var_r2 * 4)) & 0xF;
            }
            arg1 = (0xF & var_r3) | var_r4;
            break;
        case 3:
            var_r4 = (gUnknown_0300620C << 4) | 0x40000000;
            var_r0 = var_r4 << 28;
            var_r3 = var_r0 >> 1;
            var_r2 = 6;
            do {
                var_r3 ^= (var_r4 >> (var_r2 * 4)) & 0xF;
                var_r2 -= 1;
            } while (var_r2 != 0);
            arg1 = (0xF & var_r3) | var_r4;
            break;
        case 4:
        case 5:
            var_r4 = 0x10000010U;
            var_r3 = 1;
            var_r2 = 6;
            do {
                var_r3 ^= (var_r4 >> (var_r2 * 4)) & 0xF;
                var_r2 -= 1;
            } while (var_r2 != 0);
            arg1 = (0xF & var_r3) | var_r4;
            break;
    }
    return arg1;
}

void sub_80C66DC(void)
{
    REG_IME = 0;
    REG_IE &= 0xFFBF;
    REG_IME = 1;
    REG_IME = 0;
    REG_SIOCNT &= ~0x80;
    REG_IME = 1;
    REG_TM3CNT_H = 0;
    REG_TM3CNT_L = 0x8000;
    gUnknown_03006C20 = 5;
}

void sub_80C6738(void)
{
    s32 temp_r0;
    s32 state;
    s32 var_r8;
    u16 var_r4;
    u32 var_r7;
    u16 *pBlendY;

    var_r8 = 0;
    var_r7 = 0;
    state = 0;
    var_r4 = 0x20;
    DmaCopy16(3, &gUnknown_082B5544, BG_VRAM + 0x8000, sizeof(gUnknown_082B5544));
    DmaCopy16(3, &gUnknown_082B5344, BG_PLTT, sizeof(gUnknown_082B5344));
    DmaCopy16(3, &gUnknown_082B9544, BG_VRAM + 0x0000, sizeof(gUnknown_082B9544));
    REG_BG0CNT = 0x88;
    REG_DISPCNT = 0x1100;
    REG_BLDCNT = 0x81;
    REG_BLDY = 0x10;
    REG_BG0HOFS = 0;
    REG_BG0VOFS = 0;

    pBlendY = (u16 *)&REG_BLDY;

loop_1:
    GetInput();
    switch (state) {
        case 0:
            *pBlendY = (s16)(var_r4 >> 1);
            var_r4 -= 1;
            if (var_r4 == 0) {
                state = 1;
            }
            break;
        case 1:
            *pBlendY = 0;
            temp_r0 = var_r8;
            var_r8 += 1;
            if (temp_r0 < 120) {
                state = 2;
            }
            break;
        case 2:
            *pBlendY = (s16)(var_r4 >> 1);
            var_r4 += 1;
            break;
    }
    if ((DPAD_ANY & gPressedKeys) == DPAD_ANY) {
        var_r7 = (u32)((var_r7 << 0x18) + 0x01000000) >> 0x18;
    }
    if ((var_r4 != 0x20) || (state != 2)) {
    block_16:
        VBlankIntrWait();
        goto loop_1;
    }

    if ((s32)(s8)var_r7 > 1) {
        gFlags |= 0x80000;
        sub_80C68E0();
    }
}

s32 sub_80C6858(void)
{
    u32 temp_r1;
    u32 temp_r3;
    u8 *var_r0;
    u8 *var_r4 = gUnknown_03002BF0;
    u8 temp_r0;
    u8 temp_r0_2;

    if (var_r4 != 0) {
        temp_r0 = *var_r4;
        temp_r3 = temp_r0 >> 6;
        if (temp_r3 != 3) {
            if (gUnknown_03002C60 == 0) {
                gUnknown_0300620C = temp_r3 | (temp_r3 << 2) | (temp_r3 << 4) | (temp_r3 << 6);
                gUnknown_03002C60 = 0x3F & *var_r4;
                return 1;
            } else {
                gUnknown_0300620C = temp_r3 | (temp_r3 << 2) | (temp_r3 << 4) | (temp_r3 << 6);

                if (--gUnknown_03002C60 == 0) {
                    gUnknown_03002BF0++;
                }
            }
        } else {
            temp_r1 = 0x3F & temp_r0;
            if (temp_r1 == 0) {
                gUnknown_03002BF0 = 0;
                gUnknown_0300620C = 0;
                return 0;
            } else {
                gUnknown_03002BF0 -= temp_r1;
            }
        }
    }

    return 1;
}

void sub_80C68E0(void)
{
    REG_IME = 0;
    gIntrTable[0] = sub_80C6318;
    REG_IME = 1;
    sub_80C625C();
}

void sub_80C6908(void)
{
    s32 v = (u8)gUnknown_03006C20;
    if ((v >= 0)) {
        if (v > 4) {
            if (v == 5) {
                REG_IME = 0;
                gIntrTable[0] = sub_80C6318;
                REG_IME = 1;
                sub_80C625C();
            }
        }
    }

    if (gFlags & 0x800) {
        gUnknown_0300620C = 0x55;
        return;
    }
    sub_80C6858();
}
#endif // inner
