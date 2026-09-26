#include "global.h"
#include "core.h"
#include "flags.h"
#include "color.h"
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

static Strc3000428 gUnknown_3000428 = { 0 };
static s32 gUnknown_3000434 = 0;
static u32 gUnknown_3000438 = 0;
static u32 gUnknown_300043C = 0;

extern void GetInput(void);
extern u8 gUnknown_03002C60;
extern u8 gUnknown_0300620C;
extern u8 gUnknown_03006C20;
static const u16 sIdent[4] ALIGNED(4) = { 0x494E, 0x544E, 0x4E45, 0x4F44 }; // string identifier encoded as u16

// Used as font for RenderText,
// but the data was removed in production builds
// It is curious that it is located here...
const u8 Tileset_DebugAscii[] = { };

// NOTE(Jace): The palette is using the high-bit in some places, so we cannot (yet) use .pal files directly for those.
//             (But also we kind of don't need to, since other platforms do not need these for features the GB Player provides.)
const ColorRaw sPalette_082B5344[] = INCBIN_U16("graphics/tilemaps/gb_player/palette.gbapal.bin");
const u8 gUnknown_082B5544[0x4000] = INCBIN_U8("graphics/tilemaps/gb_player/tileset.8bpp");
const u16 gUnknown_082B9544[0x280] = INCBIN_U16("graphics/tilemaps/gb_player/tilemap.tilemap2");

void sub_80C625C(void);
void GBPlayerSioInterrupt();
s32 sub_80C6548(u8 arg0);
bool8 sub_80C65B4();
s32 sub_80C65F0(u8 arg0);
s32 sub_80C6858(void);
static void SetupInterrupt();

// Called in "BATTLE" mode enable, SinglePak and MultiPak
void sub_80C6168(void)
{
    DmaFill32(3, 0, &gMultiSioSend, sizeof(gMultiSioSend));
    DmaFill32(3, 0, &gMultiSioRecv, sizeof(gMultiSioRecv));

    gMultiSioStatusFlags = 0;
    gMultiSioEnabled = FALSE;

    MultiSioInit(0U);
}

void sub_80C61C0(void)
{
    if (gFlags & FLAGS_RUNNING_ON_GB_PLAYER) {
        REG_IME = 0;
        REG_IE &= ~INTR_FLAG_TIMER3;
        REG_IME = 1;

        REG_IME = 0;
        gIntrTable[0] = (void *)gMultiSioIntrFuncBuf;
        REG_IME = 1;

        MultiSioInit(0U);
    }

    gMultiSioEnabled = TRUE;
}

void sub_80C621C(void)
{
    gMultiSioEnabled = FALSE;
    gFlags &= ~FLAGS_10000;
    MultiSioStop();

    MultiSioInit(0U);

    if (gFlags & FLAGS_RUNNING_ON_GB_PLAYER) {
        SetupInterrupt();
    }
}

void sub_80C625C(void)
{
    u8 siocnt;
    s32 mask;
    REG_IME = 0;
    REG_IE &= ~(INTR_FLAG_TIMER3 | INTR_FLAG_SERIAL);
    REG_IME = 1;
    REG_RCNT = 0;
    REG_SIOCNT = SIO_32BIT_MODE | SIO_ACK_SEND;
    REG_SIOCNT |= SIO_INTR_ENABLE;
    REG_IF = (INTR_FLAG_TIMER3 | INTR_FLAG_SERIAL);
    REG_IME = 0;
    REG_IE |= (INTR_FLAG_TIMER3 | INTR_FLAG_SERIAL);
    REG_IME = 1;
    // TODO: Make this work without these casts!
    siocnt = *(vu8 *)&REG_SIOCNT;
    mask = ~1;
    *(vu8 *)&REG_SIOCNT = siocnt & mask;
    gUnknown_03006C20 = 0;
    CpuFill32(0, &gUnknown_3000428, sizeof(gUnknown_3000428));
    REG_IME = 0;
    REG_SIOCNT |= SIO_START;
    REG_IME = 1;
    REG_TM3CNT_L = 0x8000;
    REG_TM3CNT_H = TIMER_ENABLE | TIMER_INTR_ENABLE | TIMER_64CLK;
}

// TODO: Fake-match
// (100.00%) https://decomp.me/scratch/jPYr4
void GBPlayerSioInterrupt(void)
{
    s32 temp_r0_2;
    s32 temp_r6;
    u16 temp_r2;
    u16 var_r0;
#ifndef NON_MATCHING
    register u32 r0 asm("r0");
    register u32 r1 asm("r1");
#else
    u32 r0;
    u32 r1;
#endif
    u8 temp_r1;
    s32 sioCntValue;

    gUnknown_3000438 = REG_SIODATA32;
    REG_TM3CNT_H = 0;
    REG_TM3CNT_L = 0x8000;
    switch (gUnknown_03006C20) {
        case 0:
            temp_r6 = REG_SIODATA32;
            temp_r1 = gUnknown_3000428.unk0;
            r0 = (u32)(temp_r6 << (temp_r1 * 0x10)) >> 0x10;
            temp_r6 = (u32)(temp_r6 << ((1 - temp_r1) * 0x10)) >> 0x10;

            if (gUnknown_3000428.unkA == 0) {
                temp_r2 = gUnknown_3000428.unk6;
                r1 = r0;
                if (r1 == temp_r2) {
                    if (gUnknown_3000428.unk2 < 4) {
                        if ((r1 == (u16)~gUnknown_3000428.unk4) && (temp_r6 == (u16)~temp_r2)) {
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
                if (unk2 < ARRAY_COUNT(sIdent)) {
                    s32 forMatching = unk2 * 2;
                    gUnknown_3000428.unk4 = sIdent[unk2];
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
            REG_IME = 0;
            REG_IE &= ~INTR_FLAG_SERIAL;
            REG_IME = 1;
            return;
    }

    REG_SIOCNT |= SIO_START;
    REG_TM3CNT_H = TIMER_ENABLE | TIMER_INTR_ENABLE | TIMER_64CLK;
}

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

// (100.00%) https://decomp.me/scratch/dqnxU
s32 sub_80C65F0(u8 arg0)
{
    u8 var_r2;
    u32 var_r0;
    u32 var_r3;
    u32 var_r4;

#ifndef BUG_FIX
    s32 result;
#else
    s32 result = 0;
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

            result = (0xF & var_r3) | var_r4;
            break;
        case 2:
            var_r4 = ((gUnknown_300043C & 0xFFFFFF) << 4) | 0x20000000;
            var_r0 = (var_r4 >> 28);
#ifndef NON_MATCHING
            asm("lsl %1, %1, #24\n"
                "lsr %0, %1, #24\n"
                : "=r"(var_r3)
                : "r"(var_r0));
#else
            var_r3 = (u8)var_r0;
#endif
            for (var_r2 = 6; var_r2 != 0; var_r2--) {
                var_r3 ^= (var_r4 >> (var_r2 * 4)) & 0xF;
            }
            result = (0xF & var_r3) | var_r4;
            break;
        case 3:
            var_r4 = (gUnknown_0300620C << 4) | 0x40000000;
            var_r0 = var_r4 >> 28;
#ifndef NON_MATCHING
            asm("lsl %1, %1, #24\n"
                "lsr %0, %1, #24\n"
                : "=r"(var_r3)
                : "r"(var_r0));
#else
            var_r3 = (u8)var_r0;
#endif
            for(var_r2 = 6; var_r2 != 0; var_r2--)
            {
                var_r3 ^= (var_r4 >> (var_r2 * 4)) & 0xF;
            }
            result = (0xF & var_r3) | var_r4;
            break;
        case 4:
        case 5:
            var_r4 = 0x10000010U;
            var_r3 = 1;
            for(var_r2 = 6; var_r2 != 0; var_r2--)
            {
                var_r3 ^= (var_r4 >> (var_r2 * 4)) & 0xF;
            }
            result = (0xF & var_r3) | var_r4;
            break;
    }
    return result;
}

void Timer3IntrExt(void)
{
    REG_IME = 0;
    REG_IE &= ~INTR_FLAG_TIMER3;
    REG_IME = 1;
    REG_IME = 0;
    REG_SIOCNT &= ~SIO_START;
    REG_IME = 1;
    REG_TM3CNT_H = 0;
    REG_TM3CNT_L = 0x8000;
    gUnknown_03006C20 = 5;
}

void GBPlayerCheck(void)
{
    s32 delayFrames = 0;
    s8 dpadAllDownFrameCount = 0;
    s32 state = 0;
    u16 blendFrames = 0x20;

    DmaCopy16(3, &gUnknown_082B5544, BG_CHAR_ADDR(2), sizeof(gUnknown_082B5544));
    DmaCopy16(3, &sPalette_082B5344, BG_PLTT, sizeof(sPalette_082B5344));
    DmaCopy16(3, &gUnknown_082B9544, BG_SCREEN_ADDR(0), sizeof(gUnknown_082B9544));
    REG_BG0CNT = BGCNT_SCREENBASE(0) | BGCNT_CHARBASE(2) | BGCNT_256COLOR | BGCNT_TXT256x256 | BGCNT_PRIORITY(0);
    REG_DISPCNT = DISPCNT_OBJ_ON | DISPCNT_BG0_ON | DISPCNT_MODE_0;
    REG_BLDCNT = BLDCNT_EFFECT_LIGHTEN | BLDCNT_TGT1_BG0;
    REG_BLDY = 0x10;
    REG_BG0HOFS = 0;
    REG_BG0VOFS = 0;

    for (;;) {
        GetInput();
        switch (state) {
            case 0:
                REG_BLDY = (s16)(blendFrames >> 1);
                blendFrames -= 1;
                if (blendFrames == 0) {
                    state = 1;
                }
                break;
            case 1:
                REG_BLDY = 0;

                if (delayFrames++ < 120) {
                    state = 2;
                }
                break;
            case 2:
                REG_BLDY = (s16)(blendFrames >> 1);
                blendFrames += 1;
                break;
        }
        if ((DPAD_ANY & gPressedKeys) == DPAD_ANY) {
            // NOTE: On a real GBA it's basically physically impossible to push down on
            // all DPAD-directions simultaneously, so the GB Player uses it to identify itself.
            dpadAllDownFrameCount++;
        }
        if ((blendFrames != 32) || (state != 2)) {
            VBlankIntrWait();
        } else {
            break;
        }
    }

    if (dpadAllDownFrameCount >= 2) {
        gFlags |= FLAGS_RUNNING_ON_GB_PLAYER;
        SetupInterrupt();
    }
}

s32 sub_80C6858(void)
{
    if (gUnknown_03002BF0 != 0) {
        u8 temp_r0 = *gUnknown_03002BF0;
        u32 temp_r3 = temp_r0 >> 6;
        if (temp_r3 != 3) {
            if (gUnknown_03002C60 == 0) {
                gUnknown_0300620C = temp_r3 | (temp_r3 << 2) | (temp_r3 << 4) | (temp_r3 << 6);
                gUnknown_03002C60 = *gUnknown_03002BF0 & 0x3F;
                return 1;
            } else {
                gUnknown_0300620C = temp_r3 | (temp_r3 << 2) | (temp_r3 << 4) | (temp_r3 << 6);

                if (--gUnknown_03002C60 == 0) {
                    gUnknown_03002BF0++;
                }
            }
        } else {
            u32 temp_r1 = temp_r0 % 64u;
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

static void SetupInterrupt(void)
{
    REG_IME = 0;
    gIntrTable[INTR_INDEX_SIO] = GBPlayerSioInterrupt;
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
                gIntrTable[INTR_INDEX_SIO] = GBPlayerSioInterrupt;
                REG_IME = 1;
                sub_80C625C();
            }
        }
    }

    if (gFlags & FLAGS_800) {
        gUnknown_0300620C = 1 | (1 << 2) | (1 << 4) | (1 << 6);
        return;
    }
    sub_80C6858();
}
