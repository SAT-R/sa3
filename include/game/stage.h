#ifndef GUARD_SA3_GAME_STAGE_H
#define GUARD_SA3_GAME_STAGE_H

#include "game/player_controls.h"

typedef struct {
    u8 filler0[0x16];
    u16 unk16; // bitfield
    u8 filler18[0x38];
    Player *unk50;
} StageDataTask98; /* size: ??? */

/*                0x030008A0                */
typedef struct {
    /* 0x00 */ u8 unk0; // @NOTE: unk0 and unk1 referenced as single u16 before, could it
                        // be a union?
    /* 0x01 */ u8 unk1;
    /* 0x02 */ u8 unk2;
    /* 0x03 */ u8 gameMode; // (0x0: normal, 0x1: Demo, 0x2: ???, 0x3: Time Attack,
                            // x7: multiplayer?)
    /* 0x04 */ u8 unk4;
    /* 0x05 */ u8 unk5;
    /* 0x06 */ u8 charId; // 0-3
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

    /* 0x2C */ u8 unk2C;
    /* 0x2D */ u8 unk2D;
    /* 0x2E */ u16 unk2E[8]; // [0] Used as timer for blue switches
    /* 0x3E */ u16 unk3E[8]; // [2] Used as timer for red switches
    /* 0x4E */ u16 unk4E[8];
    /* 0x5E */ u16 unk5E[8];
    /* 0x6E */ u16 unk6E[8];

    /* 0x7E */ u8 filler7E[0x2];
    /* 0x80 */ u16 *unk80; // (type not checked, used in sub_8002838) | 0x80
    /* 0x84 */ u8 unk84; // | 0x84
    /* 0x85 */ u8 unk85; // | 0x85
    /* 0x86 */ u8 unk86; // | 0x86
    /* 0x87 */ u8 flagSpKey; // SP-key-flag of current act | 0x87
    /* 0x88 */ u8 PADDING42[0x04];
    /* 0x8C */ u16 unk8C;
    /* 0x8E */ u8 unk8E;
    /* 0x8F */ u8 unk8F;
    /* 0x90 */ u32 unk90;
    /* 0x94 */ u32 unk94;
    /* 0x98 */ struct Task *task98; // -> StageDataTask98 *
    /* 0x9C */ u32 unk9C;
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
    /* 0xBA */ u8 fillerBA[2];
    /* 0xBC */ u8 unkBC; // bitfield
    /* 0xBD */ u8 unkBD;
    /* 0xBE */ u8 unkBE[7];
} StageData;

extern StageData gStageData;

#endif // GUARD_SA3_GAME_STAGE_H