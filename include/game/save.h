#ifndef GUARD_SAVE_H
#define GUARD_SAVE_H

#include "global.h"

#include "sakit/globals.h"

#include "game/player_controls.h"
#include "constants/zones.h"
#include "constants/characters.h"

#define PLAYER_NAME_END_CHAR 0xFFFF

#define NUM_MULTIPLAYER_SCORES 10
#define MAX_MULTIPLAYER_SCORE  99

#define TIME_RECORDS_PER_COURSE 3

// Used in struc_30008A0
struct VsRecords {
    u32 playerId;
    u16 playerName[MAX_PLAYER_NAME_LENGTH];

    bool8 slotFilled;

    u8 wins;
    u8 losses;
    u8 draws;
};

// Used in struc_3000CF0
struct VsRecords2 {
    u8 unk0;
    u8 wins;
    u8 draws;
    u8 losses;
    u32 unk4;
    u16 playerName[MAX_PLAYER_NAME_LENGTH];
};

struct TimeRecords {
    u16 table[NUM_COURSE_ZONES][ACTS_PER_ZONE][TIME_RECORDS_PER_COURSE];
};

#define NUM_TIME_RECORD_ROWS                                                            \
    (NUM_COURSE_ZONES * ACTS_PER_ZONE * NUM_CHARACTERS * TIME_RECORDS_PER_COURSE)

// TODO: There are multiple kinds of SaveGame structs, figure out their use cases
//       Maybe struc_3000CF0 is the equivalent of struct SaveSectorData ?

// 0x03000530
struct SaveGame {
    /* 0x00 */ u32 id;
    /* 0x04 */ u16 playerName[MAX_PLAYER_NAME_LENGTH];
    /* 0x10 */ u8
        unlockedCharacters; // 0x10 | Bitfield determining access to playable characters
    /* 0x11 */ u8 unlockedZones; // 0x11 | Up to the index of this value all Zones are
                                 // accessible (1 to 9)
    /* 0x12 */ u8 continueZone; // 0x12 | Zone the player continues at on startup after
                                // character select (0 to 6)
    /* 0x13 */ u8 unk13;
    /* 0x14 */ u16 chaoCount[NUM_COURSE_ZONES]; // 0x14 - 0x21 |
    /* 0x22 */ u8
        specialKeys[NUM_COURSE_ZONES]; // 0x22 - 0x28 | Each counter counts for one Zone
    /* 0x29 */ u8 zoneBits[9]; // 0x29-0x31 | (struct ZoneCompletion)
    /* 0x32 */ u8 collectedEmeralds; // 0x32 | Stored bitwise: x7654321b
    /* 0x33 */ u8 unk33;
    /* 0x34 */ u16 unk34;
    /* 0x36 */ u8 unk36; /* Live count? */
    /* 0x37 */ u8 collectedMedals[9]
                                 [ACTS_PER_ZONE]; // 0x37 | (struct MedalCollection)
                                                  // xxxxxGSBb Medals collected for
                                                  // completion time in each [Zone][Act]
    /* 0x5B */ u8 unk5B;
    /* 0x5C */ u8 unk5C;
    /* 0x5D */ u8 unk5D;
    /* 0x5E */ u16 unk5E; // Unsure about type

    /* 0x60 */ u8 vsWins;
    /* 0x61 */ u8 vsLosses;
    /* 0x62 */ u8 vsDraws;
    /* 0x63 */ u8 unk63; // Vs???

    /* 0x64 */ VsRecords vsRecords[10]; // 0x64 | Records in Multiplayer Matches

    /* 0x12C */ struct TimeRecords timeRecords;
    /* 0x35C */ struct ButtonConfig buttonConfig;

    /* 0x364 */ u8 unk364;
    /* 0x365 */ u8 unk365;
    /* 0x366 */ u8 unk366;
    /* 0x367 */ u8 unk367;
};

#define MULTIPLAYER_RESULT_WIN  0
#define MULTIPLAYER_RESULT_LOSS 1
#define MULTIPLAYER_RESULT_DRAW 2

// extern struct SaveGame *gLoadedSaveGame;

void InsertMultiplayerProfile(u32 playerId, u16 *name);
void RecordOwnMultiplayerResult(s16 result);
void RecordMultiplayerResult(u32 id, u16 *name, s16 result);

void SaveInit(void);
bool16 SaveGameExists(void);
s16 NewSaveGame(void);
s16 LoadSaveGame(void);
void LoadCompletedSaveGame(void);
bool32 WriteSaveGame(void);

#endif
