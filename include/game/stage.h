#ifndef GUARD_SA3_GAME_STAGE_H
#define GUARD_SA3_GAME_STAGE_H

#include "game/player.h" // for Player type
#include "game/player_controls.h"

typedef struct {
    /* 0x00 */ s32 qWorldX;
    /* 0x04 */ s32 qWorldY;
    /* 0x08 */ u8 filler8[0xE];
    /* 0x16 */ u16 unk16; // bitfield
    u8 unk18;
    u8 filler19[0x3];
    u8 unk1C;
    u8 unk1D;
    u8 filler1D[0x32];
    /* 0x50 */ Player *player;
    /* 0x54 */ Player *unk54;
} StageDataTask98; /* size: ??? */

// NOTE: If you want to change this value to something greater than 8,
//       make sure that Entities like ButtonPlatform retrieve the Timer ID
//       through the whole byte, not by the first set bit in me->d.uData[4].
#define TIMER_ID_COUNT 8

/*                0x030008A0                */
typedef struct {
    /* 0x00 */ u8 unk0; // @NOTE: unk0 and unk1 referenced as single u16 before; union?
    /* 0x01 */ u8 unk1;
    /* 0x02 */ u8 unk2;
    /* 0x03 */ u8 gameMode; // (0x0: normal, 0x1: Demo, 0x2: ???, 0x3: Time Attack,
                            // x7: multiplayer?)
    /* 0x04 */ u8 unk4;
    /* 0x05 */ u8 unk5; // This appears to be flag with layout 0b01010101 (see IA goal_ring)
    /* 0x06 */ u8 playerIndex; // Index of the controlled Player in gPlayers[] | 0x2B
    /* 0x07 */ u8 unk7;
    /* 0x08 */ u8 unk8;
    /* 0x09 */ u8 zone; // Currently visited Zone
    /* 0x0A */ u8 act; // Currently visited Act
    /* 0x0B */ u8 entryIndex; // Map entrance number index
    /* 0x0C */ u8 unkC;
    /* 0x0D */ u8 unkD;
    /* 0x0E */ u16 currMapIndex; // Map player's currently on
    /* 0x10 */ u16 unk10; // some kind of flag register

    /* 0x12 */ u16 nextMapIndex; // Map targeted by teleport (apparently only works with
                                 // level warps?)

    /* 0x14 */ ButtonConfig buttonConfig;

    /* 0x1C */ u32 timer;

    /* 0x20 */ u8 unk20;
    /* 0x21 */ u8 unk21;
    /* 0x22 */ u8 filler22[2];
    /* 0x24 */ u32 unk24;

    // Coordinates for start-position and
    // respawn after losing a life
    /* 0x28 */ u16 respawnX;
    /* 0x2A */ u16 respawnY;

    /* Timers
        The indices for the arrays (which are the bit number for each EnableBits value)
        are retrieved by finding the first bit set in me->d.uData[4].
    */
    /* 0x2C */ u8 platformTimerEnableBits;
    /* 0x2D */ u8 springTimerEnableBits;
    /* 0x2E */ u16 platformTimers[TIMER_ID_COUNT];
    /* 0x3E */ u16 springTimers[TIMER_ID_COUNT]; // TODO: Check name accuracy
    /* 0x4E */ u16 unk4E[TIMER_ID_COUNT];
    /* 0x5E */ s16 unk5E[TIMER_ID_COUNT];
    /* 0x6E */ u16 unk6E[TIMER_ID_COUNT];

    /* 0x7E */ u8 filler7E[0x2];
    /* 0x80 */ u16 *unk80; // (type not checked, used in sub_8002838) | 0x80
    /* 0x84 */ u8 unk84; // | 0x84
    /* 0x85 */ u8 unk85; // | 0x85
    /* 0x86 */ u8 unk86; // | 0x86
    /* 0x87 */ u8 flagSpKey; // SP-key-flag of current act | 0x87
    /* 0x88 */ u8 PADDING42[0x04];
    /* 0x8C */ u16 unk8C;
    /* 0x8E */ u8 unk8E; // PlayerIndex for Multiplayer?
    /* 0x8F */ u8 unk8F;
    /* 0x90 */ struct Task *task90;
    /* 0x94 */ u32 unk94;
    /* 0x98 */ struct Task *task98; // -> StageDataTask98 *
    /* 0x9C */ struct Task *task9C; // -> AfterImages *
    /* 0xA0 */ u32 unkA0;
    /* 0xA4 */ u32 unkA4;
    /* 0xA8 */ u32 unkA8;
    /* 0xAC */ u16 rings;
    /* 0xAE */ u16 levelTimer; // Timer that constantly increases in a level
    /* 0xB0 */ u16 unkB0;
    /* 0xB2 */ u16 unkB2;
    /* 0xB4 */ u8 lives;
    /* 0xB5 */ u8 unkB5;
    /* 0xB6 */ u8 unkB6;
    /* 0xB7 */ u8 unkB7;
    /* 0xB8 */ u8 unkB8;
    /* 0xB9 */ u8 unkB9;
    /* 0xBA */ u8 unkBA;
    /* 0xBB */ u8 unkBB;
    /* 0xBC */ u8 unkBC; // bitfield
    /* 0xBD */ u8 unkBD;
    /* 0xBE */ u8 unkBE[7];
} StageData;

extern StageData gStageData;

typedef enum {
    ACT_TYPE_ACT_1 = 0x01,
    ACT_TYPE_ACT_2 = 0x02,
    ACT_TYPE_ACT_3 = 0x04,
    ACT_TYPE_BOSS = 0x08,
    ACT_TYPE_MINIGAME_CAPSULE = 0x10,
    ACT_TYPE_MINIGAME_ENEMIES = 0x20,
    ACT_TYPE_40 = 0x40,
    ACT_TYPE_80 = 0x80,
} eActType;

#endif // GUARD_SA3_GAME_STAGE_H