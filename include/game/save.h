#ifndef GUARD_SAVE_H
#define GUARD_SAVE_H

#include "global.h"

//#include "sakit/globals.h"

#include "game/player.h"
#include "game/player_controls.h"
#include "constants/zones.h"
#include "constants/characters.h"

#define PLAYER_NAME_END_CHAR 0xFFFF

#define SAVEMAGIC_SA3 0x47544E4C

#define CHAO_COLLECTED_BIT(num) (1 << (num))
#define CHAO_COLLECTED_ALL      0x3FF

#define NUM_MULTIPLAYER_SCORES 10
#define MAX_MULTIPLAYER_SCORE  99

#define TIME_RECORDS_PER_COURSE 3

#define DIFFICULTY_NORMAL 0
#define DIFFICULTY_EASY   1

#define UNLOCK_FLAG__BOSS_TIME_ATTACK (1 << 1)

enum eLanguage { JAPANESE = 0, ENGLISH = 1, GERMAN = 2, FRENCH = 3, SPANISH = 4, ITALIAN = 5, NUM_LANGUAGES };

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
    /* 0x00 */ u32 playerId;
    /* 0x04 */ u16 playerName[MAX_PLAYER_NAME_LENGTH];

    /* 0x10 */ bool8 slotFilled;

    /* 0x11 */ u8 wins;
    /* 0x12 */ u8 losses;
    /* 0x13 */ u8 draws;
} VsRecords;

// Used in struc_3000CF0
typedef struct {
    /* 0x00 */ u8 slotFilled;
    /* 0x01 */ u8 wins;
    /* 0x02 */ u8 draws;
    /* 0x03 */ u8 losses;
    /* 0x04 */ u32 playerId;
    /* 0x08 */ u16 playerName[MAX_PLAYER_NAME_LENGTH];
} VsRecords2;

#if (GAME == GAME_SA1) || (GAME == GAME_SA2)
typedef struct TimeRecords {
    u16 table[NUM_COURSE_ZONES][ACTS_PER_ZONE][TIME_RECORDS_PER_COURSE];
} TimeRecords;
#elif (GAME == GAME_SA3)
typedef struct TimeRecord {
    u8 character1; // 0x00 | Main Character
    u8 character2; // 0x01 | Partner Character
    u16 time; // 0x02 | Time; default: 36000 (= 1/60s * 60s * 10m)
} TimeRecord;
typedef struct TimeRecords {
    TimeRecord table[NUM_COURSE_ZONES][4][5]; // [Zone][Act][Rank]
} TimeRecords;
#endif

#define NUM_TIME_RECORD_ROWS (NUM_COURSE_ZONES * ACTS_PER_ZONE * NUM_CHARACTERS * TIME_RECORDS_PER_COURSE)

// TODO: There are multiple kinds of SaveGame structs, figure out their use cases
//       Maybe struc_3000CF0 is the equivalent of struct SaveSectorData ?

// 0x03000530
typedef struct {
    /* 0x00 */ u32 playerId;
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
    /* 0x33 */ u8 unlockFlags;
    /* 0x34 */ u16 unk34;
    /* 0x36 */ u8 unk36; /* Live count? */
    /* 0x37 */ u8 collectedMedals[9][4]; // 0x37 | (struct MedalCollection)
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

    /* 0x364 */ u8 difficulty; // 0: Normal, 1: Easy
    /* 0x365 */ bool8 disableTimeLimit;
    /* 0x366 */ u8 language;
    /* 0x367 */ u8 unk367;
} SaveGame;

extern SaveGame gSaveGame;

// TODO: From SA2. Find out whether the pointer exists in SA3
extern SaveGame *gLoadedSaveGame;

typedef struct SaveSectorHeader {
    /* 0x000 */ u32 magicNumber; // default: 0x47544E4C ("LNTG")
    /* 0x004 */ u32 sectorId;
} SaveSectorHeader;

/*        0x03000CF0 | Check out types and sizes for accuracy */
// It seems like this is like STRUCT_3000530, but prepared to be stored in savefile.
// They might've done it for security reasons, but strangely it's not excrypted, even in
// .sav file...
typedef struct {
    SaveSectorHeader header;

    // @NOTE This contains mostly the same information as struc_3000530, but
    // some values are missing or in a different order.
    /* 0x008 */ u32 playerId; // | 0x08
    /* 0x00C */ u16 playerName[MAX_PLAYER_NAME_LENGTH];
    /* 0x018 */ u8 unk18; // Don't know why this byte is here, but it's correct

    /* 0x019 */ u8 unlockedCharacters; // 0x19 |
    /* 0x01A */ u8 unlockedZones; // 0x1A |
    /* 0x01B */ u8 continueZone; // 0x1B | Zone the player continues at on startup after character
                                 // select (0 to 6)
    /* 0x01C */ u8 unk1C;

    /* 0x01D */ u16 chaoCount[7]; // | v1D - 0x2B
    /* 0x02C */ u8 specialKeys[7]; // Each counter counts for 1 Act | 0x2C - 0x32
    /* 0x033 */ u8 unlockedStages[9]; // | 0x33-0x3B
    /* 0x03C */ u8 collectedEmeralds; // Stored bitwise: x7654321b | 0x3C

    // NOTE: These are different from
    //       struct struc_3000530, why?
    /* 0x03D */ u8 unlockFlags;
    /* 0x03E */ u8 collectedMedals[9][4];
    /* 0x062 */ u16 unk62; // v34?: struc_3000530
    /* 0x064 */ u8 vsWins; // v60?: struc_3000530
    /* 0x065 */ u8 vsDraws;
    /* 0x066 */ u8 vsLosses;
    u8 unk67;

    VsRecords2 vsRecords[10]; // 0x68

    /* 0x130 */ TimeRecords timeRecords; // 0x130

    /* 0x360 */ ButtonConfigPacked buttonConfig;
    /* 0x364 */ u8 difficulty;
    /* 0x365 */ bool8 disableTimeLimit;
    /* 0x366 */ u8 language;
    /* 0x367 */ u8 unk367; // INVESTIGATE: v367 might be unused.

    /* 0x368 */ u32 checksum;
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
