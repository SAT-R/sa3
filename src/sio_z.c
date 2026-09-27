#include "global.h"
#include "core.h"
#include "flags.h"
#include "color.h"
#include "multi_sio.h"

// (Data from GBATEK: https://problemkaputt.de/gbatek.htm#gbagameboyplayer )
// This is the usual handshaking values:
// Received Response
//    ||       ||
// 0000494E 494EB6B1
// xxxx494E 494EB6B1
// B6B1494E 544EB6B1
// B6B1544E 544EABB1
// ABB1544E 4E45ABB1
// ABB14E45 4E45B1BA
// B1BA4E45 4F44B1BA
// B1BA4F44 4F44B0BB
// B0BB4F44 8000B0BB
// B0BB8002 10000010
// 10000010 20000013
// 20000013 40000004
// 30000003 40000004
// 30000003 40000004
// 30000003 40000004
// 30000003 400000yy
// 30000003 40000004
//
// yy =
// Rumble Off : 0x04
// Rumble On  : 0x2A (0b00101010)

#define GBP_HANDSHAKE_FINAL_MESSAGE_IDENT  0x8002
#define GBP_HANDSHAKE_FINAL_RESPONSE_IDENT 0x8000

typedef struct GBPCommunication {
    bool8 applyHwordShift; // always 0
    u8 unk1;
    u16 identIndex;
    u16 prevIdent;
    u16 prevChecksum; // TODO: Name | It is the bitwise NOT of the previous message, not a sum
    u16 unk8;
    u16 unkA;
} GBPCommunication;

typedef enum {
    GBPIS_HANDSHAKE,
    GBPIS_1,
    GBPIS_2,
    GBPIS_3,
    GBPIS_4,
    GBPIS_5,
} EGBPInterruptState;

static GBPCommunication sGbPlayerComm = { 0 };
static s32 sMsgResponse = 0;
static u32 sMsgReceived = 0;
static u32 gUnknown_300043C = 0;

extern void GetInput(void);
extern u8 gUnknown_03002C60;
extern u8 gUnknown_0300620C;
extern EGBPInterruptState sGBPInterruptState;
static const u16 sIdent[4] ALIGNED(4) = { 0x494E, 0x544E, 0x4E45, 0x4F44 }; // string identifier encoded as u16

// Used as font for RenderText,
// but the data was removed in production builds
// It is curious that it is located here...
const u8 Tileset_DebugAscii[] = {};

// NOTE(Jace): The palette is using the high-bit in some places, so we cannot (yet) use .pal files directly for those.
//             (But also we kind of don't need to, since other platforms do not need these for features the GB Player provides.)
const ColorRaw sPalette_082B5344[] = INCBIN_U16("graphics/tilemaps/gb_player/palette.gbapal.bin");
const u8 gUnknown_082B5544[0x4000] = INCBIN_U8("graphics/tilemaps/gb_player/tileset.8bpp");
const u16 gUnknown_082B9544[0x280] = INCBIN_U16("graphics/tilemaps/gb_player/tilemap.tilemap2");

void sub_80C625C(void);
void GBPlayerSioInterrupt();
static bool32 GotUnexpectedMessage(EGBPInterruptState stateIndex);
bool8 sub_80C65B4();
s32 GBPReponseFromStateIndex(EGBPInterruptState state_index);
s32 sub_80C6858(void);
static void SetupInterrupt();

static inline void GBPSendResponse(EGBPInterruptState state_index)
{
    sMsgResponse = GBPReponseFromStateIndex(state_index);
    REG_SIODATA32 = sMsgResponse;
}

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
        gIntrTable[INTR_INDEX_SIO] = (void *)gMultiSioIntrFuncBuf;
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
    sGBPInterruptState = 0;
    CpuFill32(0, &sGbPlayerComm, sizeof(sGbPlayerComm));
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
    s32 prevRecvLo;
    u16 temp_r2;
    u16 var_r0;
#ifndef NON_MATCHING
    register u32 r0 asm("r0");
    register u32 r1 asm("r1");
#else
    u32 r0;
    u32 r1;
#endif
    bool8 applyHwordShift; // always 0
    s32 sioCntValue;

    sMsgReceived = REG_SIODATA32;
    REG_TM3CNT_H = 0;
    REG_TM3CNT_L = 0x8000;
    switch (sGBPInterruptState) {
        case GBPIS_HANDSHAKE: {
            prevRecvLo = REG_SIODATA32;
            applyHwordShift = sGbPlayerComm.applyHwordShift;
            r0 = (u32)(prevRecvLo << (applyHwordShift * 0x10)) >> 0x10;
            prevRecvLo = (u32)(prevRecvLo << ((1 - applyHwordShift) * 0x10)) >> 0x10;

            if (sGbPlayerComm.unkA == 0) {
                temp_r2 = sGbPlayerComm.prevChecksum;
                r1 = r0;
                if (r1 == temp_r2) {
                    if (sGbPlayerComm.identIndex < ARRAY_COUNT(sIdent)) {
                        if ((r1 == (u16)~sGbPlayerComm.prevIdent) && (prevRecvLo == (u16)~temp_r2)) {
                            sGbPlayerComm.identIndex++;
                        }
                    } else {
                        sGbPlayerComm.unkA = prevRecvLo;
                        if (prevRecvLo == GBP_HANDSHAKE_FINAL_MESSAGE_IDENT) {
                            sGBPInterruptState = GBPIS_1;
                            GBPSendResponse(sGBPInterruptState);
                            sGbPlayerComm.identIndex = 0;

                            break;
                        } else {
                            sGbPlayerComm.unkA = 0;
                            sGbPlayerComm.identIndex = 0;
                        }
                    }
                } else {
                    sGbPlayerComm.identIndex = 0;
                }
            }
            {
                u16 identIndex = sGbPlayerComm.identIndex;
                if (sGbPlayerComm.identIndex < ARRAY_COUNT(sIdent)) {
                    s32 forMatching = identIndex * 2;
                    sGbPlayerComm.prevIdent = sIdent[identIndex];
                } else {
                    sGbPlayerComm.prevIdent = GBP_HANDSHAKE_FINAL_RESPONSE_IDENT;
                }

                sGbPlayerComm.prevChecksum = (u16)~prevRecvLo;
                REG_SIODATA32 = ((sGbPlayerComm.prevIdent << ((1 - sGbPlayerComm.applyHwordShift) << 4))
                                 + (sGbPlayerComm.prevChecksum << (sGbPlayerComm.applyHwordShift << 4)));
            }

        } break;

        case GBPIS_1: {
            if (GotUnexpectedMessage(sGBPInterruptState)) {
                sGbPlayerComm.identIndex = 0U;
                CpuFill32(0, &sGbPlayerComm, sizeof(sGbPlayerComm));
                sGBPInterruptState = GBPIS_HANDSHAKE;
            } else {
                sGBPInterruptState = GBPIS_2;
            }

            GBPSendResponse(sGBPInterruptState);
        } break;

        case GBPIS_2: {
            if (GotUnexpectedMessage(sGBPInterruptState)) {
                sGbPlayerComm.identIndex = 0U;
                CpuFill32(0, &sGbPlayerComm, sizeof(sGbPlayerComm));
                sGBPInterruptState = GBPIS_HANDSHAKE;
            } else {
                sGBPInterruptState = GBPIS_3;
            }

            GBPSendResponse(sGBPInterruptState);
        } break;

        case GBPIS_3: {
            if (GotUnexpectedMessage(sGBPInterruptState)) {
                sGbPlayerComm.identIndex = 0U;
                CpuFill32(0, &sGbPlayerComm, sizeof(sGbPlayerComm));
                sGBPInterruptState = GBPIS_HANDSHAKE;
            }

            GBPSendResponse(sGBPInterruptState);
        } break;

        case GBPIS_4:
        case GBPIS_5:
        default:
            REG_IME = 0;
            REG_IE &= ~INTR_FLAG_SERIAL;
            REG_IME = 1;
            return;
    }

    REG_SIOCNT |= SIO_START;
    REG_TM3CNT_H = TIMER_ENABLE | TIMER_INTR_ENABLE | TIMER_64CLK;
}

static bool32 GotUnexpectedMessage(EGBPInterruptState stateIndex)
{
    u32 highDigit = sMsgReceived >> 28;

    if (!sub_80C65B4()) {
        switch (stateIndex) {
            case GBPIS_1: {
                gUnknown_300043C = ((sMsgReceived << 4) >> 8) & 0x1;
                if (highDigit != 1) {
                    return TRUE;
                }
            } break;

            default:
                return TRUE;

            case GBPIS_2:
                if (highDigit == 2) {
                    if (gUnknown_300043C == ((sMsgReceived << 4) >> 8)) {
                        break;
                    }
                }
                return TRUE;

            case GBPIS_3:
                if (highDigit != 3) {
                    return TRUE;
                }
                break;
        }
    } else {
        return TRUE;
    }

    return FALSE;
}

bool8 sub_80C65B4(void)
{
    u32 temp_r0;
    s32 temp_r4;
    u8 var_r3;
    s32 var_r5;
    u8 var_r0;

    temp_r0 = sMsgReceived;
    temp_r4 = sMsgReceived >> 4;
    var_r5 = 0xF;
    var_r5 &= temp_r0;
    var_r3 = temp_r4 >> 24;

    for (var_r0 = 6; var_r0 != 0; var_r0--) {
        var_r3 ^= ((u32)temp_r4 >> ((var_r0 - 1) * 4)) & 0xF;
    }

    if (var_r3 == var_r5) {
        return FALSE;
    }
    return TRUE;
}

// (100.00%) https://decomp.me/scratch/dqnxU
s32 GBPReponseFromStateIndex(EGBPInterruptState stateIndex)
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

    switch (stateIndex) {
        case GBPIS_1:
            var_r4 = 0x10000010U;
            var_r3 = 1;
            for (var_r2 = 6; var_r2 != 0; var_r2--) {
                var_r3 ^= (var_r4 >> (var_r2 * 4)) & 0xF;
            }

            result = (0xF & var_r3) | var_r4;
            break;
        case GBPIS_2:
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
        case GBPIS_3:
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
            for (var_r2 = 6; var_r2 != 0; var_r2--) {
                var_r3 ^= (var_r4 >> (var_r2 * 4)) & 0xF;
            }
            result = (0xF & var_r3) | var_r4;
            break;
        case GBPIS_4:
        case GBPIS_5:
            var_r4 = 0x10000010U;
            var_r3 = 1;
            for (var_r2 = 6; var_r2 != 0; var_r2--) {
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
    sGBPInterruptState = 5;
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
    if (gUnknown_03002BF0 != NULL) {
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
            u32 temp_r1 = temp_r0 & 0x3F;
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
    s32 v = (u8)sGBPInterruptState;
    if ((v >= GBPIS_HANDSHAKE)) {
        if (v > GBPIS_4) {
            if (v == GBPIS_5) {
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
