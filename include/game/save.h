#ifndef GUARD_SAVE_H
#define GUARD_SAVE_H

#include "global.h"

//#include "sakit/globals.h"

#include "game/player.h"
#include "game/player_controls.h"
#include "constants/zones.h"
#include "constants/characters.h"

#define PLAYER_NAME_END_CHAR 0xFFFF

#define CHAO_COLLECTED_BIT(num) (1 << (num))
#define CHAO_COLLECTED_ALL      0x3FF

#define NUM_MULTIPLAYER_SCORES 10
#define MAX_MULTIPLAYER_SCORE  99

#define TIME_RECORDS_PER_COURSE 3

#define ACT_COMPLETE_BIT__ACT_1         0x1
#define ACT_COMPLETE_BIT__ACT_2         0x2
#define ACT_COMPLETE_BIT__ACT_3         0x4
#define ACT_COMPLETE_BIT__BOSS          0x8
#define ACT_COMPLETE_BIT__BONUS_CAPSULE 0x10
#define ACT_COMPLETE_BIT__BONUS_ENEMIES 0x20
#define ARE_STAGE_ACTS_COMPLETE(zone)                                                                                                      \
    ((gSaveGame.unlockedStages[zone] & (ACT_COMPLETE_BIT__ACT_1 | ACT_COMPLETE_BIT__ACT_2 | ACT_COMPLETE_BIT__ACT_3)) == 0x7)
#define IS_ACT_COMPLETE(zone, act) (gSaveGame.unlockedStages[zone] & ACT_COMPLETE_BIT__##act)
// TODO: Does using the bitmap match?
typedef struct {
    u8 Act1 : 1;
    u8 Act2 : 1;
    u8 Act3 : 1;
    u8 Boss : 1;
    u8 BonusCapsule : 1;
    u8 BonusEnemies : 1;
    u8 Bit7 : 1;
} ZoneCompletion;

// TODO: Does using these match?
typedef struct {
    u8 Bronze : 1;
    u8 Silver : 1;
    u8 Gold : 1;
} MedalCollection;

// Used in struc_30008A0
typedef struct {
    u32 playerId;
    u16 playerName[MAX_PLAYER_NAME_LENGTH];

    bool8 slotFilled;

    u8 wins;
    u8 losses;
    u8 draws;
} VsRecords;

// Used in struc_3000CF0
typedef struct {
    u8 unk0;
    u8 wins;
    u8 draws;
    u8 losses;
    u32 unk4;
    u16 playerName[MAX_PLAYER_NAME_LENGTH];
} VsRecords2;

typedef struct {
    u16 table[NUM_COURSE_ZONES][ACTS_PER_ZONE][TIME_RECORDS_PER_COURSE];
} TimeRecords;

#define NUM_TIME_RECORD_ROWS (NUM_COURSE_ZONES * ACTS_PER_ZONE * NUM_CHARACTERS * TIME_RECORDS_PER_COURSE)

// TODO: There are multiple kinds of SaveGame structs, figure out their use cases
//       Maybe struc_3000CF0 is the equivalent of struct SaveSectorData ?

// 0x03000530
typedef struct {
    /* 0x00 */ u32 id;
    /* 0x04 */ u16 playerName[MAX_PLAYER_NAME_LENGTH];
    /* 0x10 */ u8 unlockedCharacters; // 0x10 | Bitfield determining access to playable characters
    /* 0x11 */ u8 unlockedZones; // 0x11 | Up to the index of this value all Zones are
                                 // accessible (1 to 9)
    /* 0x12 */ u8 continueZone; // 0x12 | Zone the player continues at on startup after
                                // character select (0 to 6)
    /* 0x13 */ u8 unk13;
    /* 0x14 */ u16 chaoCount[NUM_COURSE_ZONES]; // 0x14 - 0x21 |
    /* 0x22 */ u8 specialKeys[NUM_COURSE_ZONES]; // 0x22 - 0x28 | Each counter counts for one Zone
    /* 0x29 */ u8 unlockedStages[9]; // 0x29-0x31 | (struct ZoneCompletion)
    /* 0x32 */ u8 collectedEmeralds; // 0x32 | Stored bitwise: x7654321b
    /* 0x33 */ u8 unk33;
    /* 0x34 */ u16 unk34;
    /* 0x36 */ u8 unk36; /* Live count? */
    /* 0x37 */ u8 collectedMedals[9][ACTS_PER_ZONE]; // 0x37 | (struct MedalCollection)
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

    /* 0x12C */ TimeRecords timeRecords;
    /* 0x35C */ ButtonConfig buttonConfig;

    /* 0x364 */ u8 unk364;
    /* 0x365 */ u8 unk365;
    /* 0x366 */ u8 language;
    /* 0x367 */ u8 unk367;
} SaveGame;

extern SaveGame gSaveGame;

// TODO: From SA2. Find out whether the pointer exists in SA3
extern SaveGame *gLoadedSaveGame;

/*        0x03000CF0 | Check out types and sizes for accuracy */
// It seems like this is like STRUCT_3000530, but prepared to be stored in savefile.
// They might've done it for security reasons, but strangely it's not excrypted, even in
// .sav file...
typedef struct {
    u32 magicNumber; // default: 0x47544E4C ("LNTG")
    u32 v4;

    // @NOTE This contains mostly the same information as struc_3000530, but
    // some values are missing or in a different order.
    u32 id; // | 0x08
    u16 playerName[MAX_PLAYER_NAME_LENGTH];
    u8 v18; // Don't know why this byte is here, but it's correct

    u8 unlockedCharacters; // 0x19 |
    u8 unlockedZones; // 0x1A |
    u8 continueZone; // 0x1B | Zone the player continues at on startup after character
                     // select (0 to 6)
    u8 v1C;

    u16 chaoCount[7]; // | v1D - 0x2B
    u8 specialKeys[7]; // Each counter counts for 1 Act | 0x2C - 0x32
    u8 unlockedStages[9]; // | 0x33-0x3B
    u8 collectedEmeralds; // Stored bitwise: x7654321b | 0x3C

    // NOTE: These are different from
    //       struct struc_3000530, why?
    u8 v3D; // v33: struc_3000530
    u8 collectedMedals[9][4]; // 0x3E | v37: struc_3000530
    u16 v62; // v34?: struc_3000530
    u8 vsWins; // v60?: struc_3000530

    u8 vsLosses;
    u8 vsDraws;
    u8 v67;

    VsRecords2 vsRecords[10]; // 0x68

    TimeRecords timeRecords[7][4][5]; // 0x130

    u8 buttonConfig[3];
    u8 v363;
    u8 v364;
    u8 v365;
    u8 language;
    u8 v367; // INVESTIGATE: v367 might be unused.

    u32 v368; // v368 | Checksum? In sub_800212C() this value is calculated and show that
              // it HAS to be the last member of the struct
} SaveSectorData;

extern SaveSectorData gSaveSectorData;

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
