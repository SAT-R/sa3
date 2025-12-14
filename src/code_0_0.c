#include "global.h"
#include "core.h"
#include "flags.h"
#include "lib/m4a/m4a.h"
#include "lib/agb_flash/agb_flash.h"
#include "lib/agb_flash/flash_internal.h"
#include "malloc_ewram.h"
#include "malloc_vram.h"
#include "game/save.h"
#include "game/stage.h"
#include "gba/defines.h"
#include "constants/characters.h"
#include "constants/zones.h"

void ValidateSave(SaveGame *save);
void ValidateSaveSector(SaveSectorData *sector, u32 playerId);
void UnpackSaveSector(SaveGame *save, SaveSectorData *sector);
u16 EraseSaveSector(s16 sectorId);
s16 sub_8001B60(void);
void sub_8001D58(VoidFn voidFn, u16 color);
void Task_8001FB0(void);
s32 sub_8001FD4(void);
s16 sub_8002024(void);
bool16 sub_80020F0(void);
u32 GetSaveSectorChecksum(SaveSectorData *sector);
s16 sub_8002084(s16 sectorId, SaveSectorData *sector);

extern void sub_802616C(u8 param0);
extern void sub_8003F40(void);
extern void TaskDestructor_8029774(struct Task *t);

// TODO: Name likely inaccurate
typedef struct SaveManager {
    VoidFn func;
    u16 color;
    u8 unk6;
} SaveManager;

void Task_8000918(void)
{
    struct Task **pTask = &gCurTask;

    VramResetHeapState();
    EwramInitHeap();

    gDispCnt = DISPCNT_OBJ_1D_MAP;

    gBgCntRegs[0] = BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(7);
    gBgCntRegs[1] = BGCNT_CHARBASE(1) | BGCNT_SCREENBASE(15);
    gBgCntRegs[2] = BGCNT_CHARBASE(2) | BGCNT_SCREENBASE(23);
    gBgCntRegs[3] = BGCNT_CHARBASE(3) | BGCNT_SCREENBASE(31);

    gBldRegs.bldCnt = 0;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;

    (*pTask)->main = Task_8001FB0;
}

void ClearSave(SaveGame *save, u32 playerId)
{
    s16 i, j;
    save->playerId = playerId;
    for (i = 0; i < (s32)ARRAY_COUNT(save->playerName); i++) {
        save->playerName[i] = -1;
    }

    save->unlockedCharacters = NEWGAME_CHARACTERS;
    save->unlockedZones = ZONE_1 + 1;
    save->continueZone = 0;

    for (i = 0; i < (s32)ARRAY_COUNT(save->chaoCount); i++) {
        save->chaoCount[i] = 0;
    }

    for (i = 0; i < (s32)ARRAY_COUNT(save->specialKeys); i++) {
        save->specialKeys[i] = 0;
    }

    for (i = 0; i < (s32)ARRAY_COUNT(save->unlockedStages); i++) {
        u8 *ptr = (u8 *)save->unlockedStages;
        ptr[i] = 0;
    }

    save->collectedEmeralds = 0;
    save->unlockFlags = 0;
    save->unk34 = 0;
    save->unk36 = 2; /* Live count on new game/startup? */
    save->unk5B = 0;
    save->unk5C = 0;
    save->unk5D = 0;
    save->vsWins = 0;
    save->vsLosses = 0;
    save->vsDraws = 0;

    {
        VsRecords *records = &LOADED_SAVE->vsRecords[0];
        for (i = 0; i < (s32)ARRAY_COUNT(LOADED_SAVE->vsRecords); i++, records++) {
            records->slotFilled = FALSE;
            records->wins = 0;
            records->losses = 0;
            records->draws = 0;

            records->playerId = 0;

            for (j = 0; j < (s32)ARRAY_COUNT(records[0].playerName); j++) {
                records->playerName[j] = 0;
            }
        };
    }

    {
        TimeRecord *record = (TimeRecord *)&save->timeRecords.table[0][0][0];
        for (i = 0; i < (u16)(sizeof(save->timeRecords) / sizeof(TimeRecord)); i++, record++) {
            record->character1 = PLAYERCHAR_NONE;
            record->character2 = PLAYERCHAR_NONE;
            record->time = MAX_COURSE_TIME;
        }
    }

    for (i = 0; i < (s32)ARRAY_COUNT(save->collectedMedals); i++) {
        for (j = 0; j < (s32)ARRAY_COUNT(save->collectedMedals[0]); j++) {
            save->collectedMedals[i][j] = 0;
        }
    }

    save->buttonConfig.jump = A_BUTTON;
    save->buttonConfig.attack = B_BUTTON;
    save->buttonConfig.trick = R_BUTTON;

    save->difficulty = DIFFICULTY_NORMAL;
    save->disableTimeLimit = FALSE;
    save->language = 1;

    ValidateSave(save);
}

void CompleteSave(SaveGame *save)
{
    s16 i, j;

    save->playerId = 0;

    for (i = 0; i < (s32)ARRAY_COUNT(save->playerName); i++) {
        save->playerName[i] = 0xFFFF;
    }

    save->unlockedCharacters = ALL_CHARACTERS;
    save->unlockedZones = 9;
    save->continueZone = ZONE_1;

    for (i = 0; i < (s32)ARRAY_COUNT(save->chaoCount); i++) {
        save->chaoCount[i] = 0x3FF;
    }

    for (i = 0; i < (s32)ARRAY_COUNT(save->specialKeys); i++) {
        save->specialKeys[i] = 9;
    }

    for (i = 0; i < (s32)ARRAY_COUNT(save->unlockedStages); i++) {
        save->unlockedStages[i] = 0x7F; // = (ZoneCompletion) { 1, 1, 1, 1, 1, 1, 1 };
    }

    save->collectedEmeralds = 0x7F;
    save->unlockFlags = 0x7F;
    save->unk34 = 0x31;
    save->unk36 = 9;

    save->unk5B = 0;
    save->unk5C = 0;
    save->unk5D = 0;

    save->vsWins = 0;
    save->vsLosses = 0;
    save->vsDraws = 0;

    {
        VsRecords *vsRecs = &LOADED_SAVE->vsRecords[0];
        for (i = 0; i < (s32)ARRAY_COUNT(LOADED_SAVE->vsRecords); i++, vsRecs++) {
            vsRecs->slotFilled = 0;
            vsRecs->wins = 0;
            vsRecs->losses = 0;
            vsRecs->draws = 0;
            vsRecs->playerId = 0;

            for (j = 0; j < (s32)ARRAY_COUNT(vsRecs->playerName); j++) {
                vsRecs->playerName[j] = 0;
            }
        }
    }

    {
        TimeRecord *timeRecs = &save->timeRecords.table[0][0][0];
        for (i = 0; i < (s16)(sizeof(save->timeRecords) / sizeof(save->timeRecords.table[0][0][0])); i++, timeRecs++) {
            timeRecs->character1 = PLAYERCHAR_NONE;
            timeRecs->character2 = PLAYERCHAR_NONE;
            timeRecs->time = MAX_COURSE_TIME;
        }
    }

    {
        for (i = 0; i < (s32)ARRAY_COUNT(save->collectedMedals); i++) {
            for (j = 0; j < (s32)ARRAY_COUNT(save->collectedMedals[0]); j++) {
                save->collectedMedals[i][j] = 0x07; // =  (MedalCollection) { 1, 1, 1 };
            }
        }
    }

    save->buttonConfig.jump = A_BUTTON;
    save->buttonConfig.attack = B_BUTTON;
    save->buttonConfig.trick = R_BUTTON;

    save->difficulty = DIFFICULTY_NORMAL;
    save->disableTimeLimit = FALSE;
    save->language = 1;
}

void ValidateSave(SaveGame *save)
{
    s16 i, j, k;

    // Set to 'TRUE' if an invalid customKey was set.
    bool32 customButtonsAreInvalid = FALSE;

    for (i = 0; i < (s16)(s32)ARRAY_COUNT(save->playerName); i++) {
        if ((save->playerName[i] >= 270) && save->playerName[i] != 0xFFFF) {
            save->playerName[i] = 0x00F1;
        }
    }

    save->unlockedCharacters &= ALL_CHARACTERS;

    if (save->unlockedZones > 9)
        save->unlockedZones = 9; // NONAGGRESSION+1

    if (save->continueZone > ZONE_7)
        save->continueZone = ZONE_1;

    for (i = 0; i < (s32)ARRAY_COUNT(save->chaoCount); i++) {
        save->chaoCount[i] &= 0x3FF;
    }

    for (i = 0; i < (s32)ARRAY_COUNT(save->unlockedStages); i++) {
        save->unlockedStages[i] &= 0x7F; // = (ZoneCompletion) { 1, 1, 1, 1, 1, 1, 1 };
    }

    save->collectedEmeralds &= 0x7F;
    save->unlockFlags &= 0x07;
    save->unk34 &= 0x0031;

    save->unk5B = 0;
    save->unk5C = 0;
    save->unk5D = 0;
    save->unk63 = 0;

    for (i = 0; i < (s32)ARRAY_COUNT(save->vsRecords); i++) {
        for (j = 0; j < (s32)ARRAY_COUNT(save->vsRecords[0].playerName); j++) {
            if (!(save->vsRecords[i].playerName[j] < 270) && (save->vsRecords[i].playerName[j] != 0xFFFF))
                save->vsRecords[i].playerName[j] = 0xF1;
        }

        if (save->vsRecords[i].slotFilled > 1)
            save->vsRecords[i].slotFilled = 1;
    }

#define Zone i
#define Act  j
#define Rank k
    {
        for (Zone = 0; Zone < (s32)ARRAY_COUNT(save->timeRecords.table); Zone++) {
            for (Act = 0; Act < (s32)ARRAY_COUNT(save->timeRecords.table[0]); Act++) {
                for (Rank = 0; Rank < (s32)ARRAY_COUNT(save->timeRecords.table[0][0]); Rank++) {
                    if (!(save->timeRecords.table[Zone][Act][Rank].character1 < MAX_PLAYER_NAME_LENGTH - 1)) {
                        save->timeRecords.table[Zone][Act][Rank].character1 = PLAYERCHAR_NONE;
                    }

                    if (!(save->timeRecords.table[Zone][Act][Rank].character2 < MAX_PLAYER_NAME_LENGTH - 1)) {
                        save->timeRecords.table[Zone][Act][Rank].character2 = PLAYERCHAR_NONE;
                    }

                    if (!(save->timeRecords.table[Zone][Act][Rank].time <= MAX_COURSE_TIME)) {
                        save->timeRecords.table[Zone][Act][Rank].time = MAX_COURSE_TIME;
                    }
                }
            }
        }
    }
#undef Rank
#undef Act
#undef Zone

    if (((u16)(save->buttonConfig.jump - 1) > A_BUTTON) && save->buttonConfig.jump != R_BUTTON) {
        customButtonsAreInvalid = TRUE;
    }

    if (((u16)(save->buttonConfig.attack - 1) > A_BUTTON) && save->buttonConfig.attack != R_BUTTON) {
        customButtonsAreInvalid = TRUE;
    }

    if (((u16)(save->buttonConfig.trick - 1) > A_BUTTON) && save->buttonConfig.trick != R_BUTTON) {
        customButtonsAreInvalid = TRUE;
    }

    if ((u16)(save->buttonConfig.jump | save->buttonConfig.attack | save->buttonConfig.trick) != (A_BUTTON | B_BUTTON | R_BUTTON)) {
        customButtonsAreInvalid = TRUE;
    }

    if (customButtonsAreInvalid) {
        // Set standard key-layout.
        save->buttonConfig.jump = A_BUTTON;
        save->buttonConfig.attack = B_BUTTON;
        save->buttonConfig.trick = R_BUTTON;
    }

    if (save->difficulty > 2)
        save->difficulty = 0;

    if (save->disableTimeLimit > 1)
        save->disableTimeLimit = 0;

    if (save->language > 5)
        save->language = 1;
}

void ValidateSaveSector(SaveSectorData *sector, u32 playerId)
{
    s16 i;

    CPU_FILL(0, sector, sizeof(SaveSectorData), 32);

    sector->header.magicNumber = SAVEMAGIC_SA3;
    sector->playerId = playerId;

    for (i = 0; i <= 5; i++) {
        sector->playerName[i] = 0xFFFF;
    }

    sector->unk18 = 0;
    sector->unlockedCharacters = NEWGAME_CHARACTERS;
    sector->unlockedZones = ZONE_1 + 1;
    sector->continueZone = ZONE_1;
    sector->unk1C = 0;

    {
        TimeRecord *record = &sector->timeRecords.table[0][0][0];
        for (i = 0; i < (s32)ARRAY_COUNT_3D(sector->timeRecords.table); i++, record++) {
            record->character1 = PLAYERCHAR_NONE;
            record->character2 = PLAYERCHAR_NONE;
            record->time = MAX_COURSE_TIME;
        }
    }

    sector->buttonConfig.jump = (u8)A_BUTTON;
    sector->buttonConfig.attack = (u8)B_BUTTON;
    sector->buttonConfig.trick = (u8)(R_BUTTON >> 6);

    sector->difficulty = 0;
    sector->disableTimeLimit = 0;
    sector->language = 1;

    sector->checksum = GetSaveSectorChecksum(sector);
}

s32 WriteSaveSector(s16 sectorId, SaveSectorData *sector)
{
    u16 bfrIE;
    u16 bfrIME;
    u16 bfrDispstat;

    u32 result;

    m4aMPlayAllStop();
    m4aSoundVSyncOff();

    gFlags |= FLAGS_8000;
    bfrIE = REG_IE;
    bfrIME = REG_IME;
    bfrDispstat = REG_DISPSTAT;

    REG_IE = 0;
    REG_IME = 0;
    REG_DISPSTAT = 0;

    gFlags &= ~FLAGS_EXECUTE_HBLANK_COPY;
    DmaStop(0);
    DmaStop(1);
    DmaStop(2);
    DmaStop(3);

    result = ProgramFlashSectorAndVerifyNBytes(sectorId, sector, sizeof(*sector));

    REG_IE = bfrIE;
    REG_IME = bfrIME;
    REG_DISPSTAT = bfrDispstat;

    m4aSoundVSyncOn();

    gFlags &= ~FLAGS_8000;

    return result;
}

u16 EraseSaveSector(s16 sectorId)
{
    u16 bfrIE;
    u16 bfrIME;
    u16 bfrDispstat;

    u16 result;

    m4aMPlayAllStop();
    m4aSoundVSyncOff();

    gFlags |= FLAGS_8000;
    bfrIE = REG_IE;
    bfrIME = REG_IME;
    bfrDispstat = REG_DISPSTAT;

    REG_IE = 0;
    REG_IME = 0;
    REG_DISPSTAT = 0;

    gFlags &= ~FLAGS_EXECUTE_HBLANK_COPY;
    DmaStop(0);
    DmaStop(1);
    DmaStop(2);
    DmaStop(3);

    result = EraseFlashSector(sectorId);

    REG_IE = bfrIE;
    REG_IME = bfrIME;
    REG_DISPSTAT = bfrDispstat;

    m4aSoundVSyncOn();

    gFlags &= ~FLAGS_8000;

    return result;
}

void PackSaveSector(SaveSectorData *sector, SaveGame *save)
{
    s16 i;
    s16 j;
    s16 k;

    sector->header.magicNumber = 0x47544E4C;
    sector->header.sectorId += 1;
    sector->playerId = save->playerId;

    for (i = 0; i < 6; i++) {
        sector->playerName[i] = save->playerName[i];
    }

    sector->unk18 = 0;
    sector->unlockedCharacters = save->unlockedCharacters;
    sector->unlockedZones = save->unlockedZones;
    sector->continueZone = save->continueZone;
    sector->unk1C = 0;

    for (i = 0; i < 7; i++) {
        sector->chaoCount[i] = save->chaoCount[i];
    }

    for (i = 0; i < 7; i++) {
        sector->specialKeys[i] = save->specialKeys[i];
    }

    for (i = 0; i < 9; i++) {
        sector->unlockedStages[i] = save->unlockedStages[i];
    }

    for (i = 0; i < 9; i++) {
        for (j = 0; j < 4; j++) {
            sector->collectedMedals[i][j] = save->collectedMedals[i][j];
        }
    }

    sector->collectedEmeralds = save->collectedEmeralds;
    sector->unk62 = save->unk34;
    sector->unlockFlags = save->unlockFlags;
    sector->vsWins = save->vsWins;
    sector->vsDraws = save->vsDraws;
    sector->vsLosses = save->vsLosses;
    sector->unk67 = 0;

    for (i = 0; i < 10; i++) {
        sector->vsRecords[i].slotFilled = save->vsRecords[i].slotFilled;
        sector->vsRecords[i].wins = save->vsRecords[i].wins;
        sector->vsRecords[i].draws = save->vsRecords[i].draws;
        sector->vsRecords[i].losses = save->vsRecords[i].losses;

        sector->vsRecords[i].playerId = save->vsRecords[i].playerId;

        for (j = 0; j < 6; j++) {
            sector->vsRecords[i].playerName[j] = save->vsRecords[i].playerName[j];
        }
    }

#define Zone i
#define Act  j
#define Rank k
    for (Zone = 0; Zone < (s32)ARRAY_COUNT(save->timeRecords.table); Zone++) {
        for (Act = 0; Act < (s32)ARRAY_COUNT(save->timeRecords.table[0]); Act++) {
            for (Rank = 0; Rank < (s32)ARRAY_COUNT(save->timeRecords.table[0][0]); Rank++) {
                sector->timeRecords.table[Zone][Act][Rank].character1 = save->timeRecords.table[Zone][Act][Rank].character1;
                sector->timeRecords.table[Zone][Act][Rank].character2 = save->timeRecords.table[Zone][Act][Rank].character2;
                sector->timeRecords.table[Zone][Act][Rank].time = save->timeRecords.table[Zone][Act][Rank].time;
            }
        }
    }
#undef Rank
#undef Act
#undef Zone

    switch (save->buttonConfig.jump) {
        case A_BUTTON:
            sector->buttonConfig.jump = 1;
            break;
        case B_BUTTON:
            sector->buttonConfig.attack = 1;
            break;
        case R_BUTTON:
            sector->buttonConfig.trick = 1;
            break;
    }

    switch (save->buttonConfig.attack) {
        case A_BUTTON:
            sector->buttonConfig.jump = 2;
            break;
        case B_BUTTON:
            sector->buttonConfig.attack = 2;
            break;
        case R_BUTTON:
            sector->buttonConfig.trick = 2;
            break;
    }

    switch (save->buttonConfig.trick) {
        case A_BUTTON:
            sector->buttonConfig.jump = 4;
            break;
        case B_BUTTON:
            sector->buttonConfig.attack = 4;
            break;
        case R_BUTTON:
            sector->buttonConfig.trick = 4;
            break;
    }

    sector->difficulty = save->difficulty;
    sector->disableTimeLimit = save->disableTimeLimit;
    sector->language = save->language;
    sector->unk367 = 0;
    sector->checksum = GetSaveSectorChecksum(sector);
}

void UnpackSaveSector(SaveGame *save, SaveSectorData *sector)
{
    s16 i;
    s16 j;
    s16 k;

    save->playerId = sector->playerId;

    for (i = 0; i < (s32)ARRAY_COUNT(save->playerName); i++) {
        save->playerName[i] = sector->playerName[i];
    }
    save->unk36 = 0;
    save->unlockedCharacters = sector->unlockedCharacters;
    save->unlockedZones = sector->unlockedZones;
    save->continueZone = sector->continueZone;
    save->unk5B = 0;
    save->unk5C = 0;
    save->unk5D = 0;

    for (i = 0; i < (s32)ARRAY_COUNT(save->chaoCount); i++) {
        save->chaoCount[i] = sector->chaoCount[i];
    }

    for (i = 0; i < (s32)ARRAY_COUNT(save->specialKeys); i++) {
        save->specialKeys[i] = sector->specialKeys[i];
    }

    for (i = 0; i < (s32)ARRAY_COUNT(save->unlockedStages); i++) {
        save->unlockedStages[i] = sector->unlockedStages[i];
    }

    for (i = 0; i < (s32)ARRAY_COUNT(save->collectedMedals); i++) {
        for (j = 0; j < (s32)ARRAY_COUNT(save->collectedMedals[0]); j++) {
            save->collectedMedals[i][j] = sector->collectedMedals[i][j];
        }
    }
    save->collectedEmeralds = sector->collectedEmeralds;
    save->unk34 = sector->unk62;
    save->unlockFlags = sector->unlockFlags;
    save->vsWins = sector->vsWins;
    save->vsDraws = sector->vsDraws;
    save->vsLosses = sector->vsLosses;
    save->unk63 = 0;

    for (i = 0; i < (s32)ARRAY_COUNT(save->vsRecords); i++) {
        save->vsRecords[i].slotFilled = sector->vsRecords[i].slotFilled;
        save->vsRecords[i].wins = sector->vsRecords[i].wins;
        save->vsRecords[i].draws = sector->vsRecords[i].draws;
        save->vsRecords[i].losses = sector->vsRecords[i].losses;
        save->vsRecords[i].playerId = sector->vsRecords[i].playerId;

        for (j = 0; j < (s32)ARRAY_COUNT(save->vsRecords->playerName); j++) {
            save->vsRecords[i].playerName[j] = sector->vsRecords[i].playerName[j];
        }
    }

#define Zone i
#define Act  j
#define Rank k
    for (Zone = 0; Zone < 7; Zone++) {
        for (Act = 0; Act < 4; Act++) {
            for (Rank = 0; Rank < 5; Rank++) {
                save->timeRecords.table[Zone][Act][Rank].character1 = sector->timeRecords.table[Zone][Act][Rank].character1;
                save->timeRecords.table[Zone][Act][Rank].character2 = sector->timeRecords.table[Zone][Act][Rank].character2;
                save->timeRecords.table[Zone][Act][Rank].time = sector->timeRecords.table[Zone][Act][Rank].time;
            }
        }
    }
#undef Rank
#undef Act
#undef Zone

    switch (sector->buttonConfig.jump) {
        case 1:
            save->buttonConfig.jump = A_BUTTON;
            break;
        case 2:
            save->buttonConfig.attack = A_BUTTON;
            break;
        case 4:
            save->buttonConfig.trick = A_BUTTON;
            break;
    }

    switch (sector->buttonConfig.attack) {
        case 1:
            save->buttonConfig.jump = B_BUTTON;
            break;
        case 2:
            save->buttonConfig.attack = B_BUTTON;
            break;
        case 4:
            save->buttonConfig.trick = B_BUTTON;
            break;
    }

    switch (sector->buttonConfig.trick) {
        case 1:
            save->buttonConfig.jump = R_BUTTON;
            break;
        case 2:
            save->buttonConfig.attack = R_BUTTON;
            break;
        case 4:
            save->buttonConfig.trick = R_BUTTON;
            break;
    }

    save->difficulty = sector->difficulty;
    save->disableTimeLimit = sector->disableTimeLimit;
    save->language = sector->language;
    save->unk367 = 0;
}

s16 sub_8001A90(void)
{
    SaveSectorHeader headers[SECTORS_PER_BANK];
    s16 sectorId;
    s16 outSectorId;
    u32 var_r8;
    u32 var_sb;

    var_sb = 0;
    var_r8 = -1U;
    outSectorId = -1;

    if (gFlags & FLAGS_NO_FLASH_MEMORY) {
        return -1;
    }

    for (sectorId = 0; sectorId < SECTORS_PER_BANK; sectorId++) {
        ReadFlash(sectorId, 0U, &headers[sectorId], sizeof(headers[0]));

        if (headers[sectorId].magicNumber != SAVEMAGIC_SA3) {
            return sectorId;
        }

        if (headers[sectorId].sectorId > var_sb) {
            var_sb = headers[sectorId].sectorId;
        }

        if (headers[sectorId].sectorId < var_r8) {
            var_r8 = headers[sectorId].sectorId;
            outSectorId = sectorId;
        }
    }

    if (var_sb != -1) {
        return outSectorId;
    } else {
        var_r8 = var_sb;

        for (sectorId = 0; sectorId < SECTORS_PER_BANK; sectorId++) {
            if ((headers[sectorId].sectorId > -0x100) && (headers[sectorId].sectorId <= var_r8)) {
                var_r8 = headers[sectorId].sectorId;
                outSectorId = sectorId;
            }
        }
    }

    return outSectorId;
}

s16 sub_8001B60(void)
{
    SaveSectorHeader headers[SECTORS_PER_BANK];
    s16 sectorId;
    s16 outSectorId;
    u32 var_r8;
    u32 var_sb;

    var_r8 = 0;
    var_sb = -1U;
    outSectorId = -1;

    if (gFlags & FLAGS_NO_FLASH_MEMORY) {
        return -2;
    }

    for (sectorId = 0; sectorId < (s32)ARRAY_COUNT(headers); sectorId++) {
        ReadFlash(sectorId, 0U, &headers[sectorId], sizeof(headers[16]));

        if (headers[sectorId].magicNumber != SAVEMAGIC_SA3) {
            continue;
        }

        if (headers[sectorId].sectorId > var_r8) {
            var_r8 = headers[sectorId].sectorId;
            outSectorId = sectorId;
        }

        if (headers[sectorId].sectorId < var_sb) {
            var_sb = headers[sectorId].sectorId;
        }
    }

    if (var_r8 == -1) {
        var_r8 = 0;

        for (sectorId = 0; sectorId < SECTORS_PER_BANK; sectorId++) {
            if ((headers[sectorId].sectorId < -0x100) && (headers[sectorId].sectorId >= var_r8)) {
                var_r8 = headers[sectorId].sectorId;
                outSectorId = sectorId;
            }
        }
    }

    return outSectorId;
}

VsRecords *sub_8001C30(u32 playerId, u16 *playerName)
{
    VsRecords *nextRecord;
    VsRecords *currRecord;
    s8 i, j;

    for (i = 0; i < 10; i++) {
        currRecord = &LOADED_SAVE->vsRecords[i];

        if (!currRecord->slotFilled) {
            break;
        }

        if (currRecord->playerId != playerId)
            continue;

        for (j = 0; j < 6 && currRecord->playerName[j] == playerName[j]; j++) {
            ;
        }

        if (j == 6) {
            return currRecord;
        }
    }

    if (i == 10) {
        i = 9;
    }

    for (--i; i >= 0; --i) {
        nextRecord = &LOADED_SAVE->vsRecords[i + 1];
        currRecord = &LOADED_SAVE->vsRecords[i];
        nextRecord->playerId = currRecord->playerId;
        for (j = 0; j < (s32)ARRAY_COUNT(nextRecord->playerName); j++) {
            nextRecord->playerName[j] = currRecord->playerName[j];
        }
        nextRecord->slotFilled = currRecord->slotFilled;
        nextRecord->wins = currRecord->wins;
        nextRecord->losses = currRecord->losses;
        nextRecord->draws = currRecord->draws;
    }

    currRecord = &LOADED_SAVE->vsRecords[0];
    currRecord->playerId = playerId;
    for (i = 0; i < 6; i++) {
        currRecord[0].playerName[i] = playerName[i];
    }

    currRecord->slotFilled = 1;
    currRecord->wins = 0;
    currRecord->losses = 0;
    currRecord->draws = 0;

    return currRecord;
}

void sub_8001D58(VoidFn voidFn, u16 color)
{
    struct Task *t;
    SaveManager *mgr;

    gDispCnt &= ~(DISPCNT_OBJ_ON | DISPCNT_WIN0_ON | DISPCNT_WIN1_ON | DISPCNT_OBJWIN_ON | //
                  DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_BG3_ON);

    REG_DISPCNT = gDispCnt;
    BG_PLTT[0] = color;

    TasksDestroyAll();
    PAUSE_BACKGROUNDS_QUEUE();
    gBgSpritesCount = 0;
    PAUSE_GRAPHICS_QUEUE();

    t = TaskCreate(Task_8000918, sizeof(SaveManager), 0x1000, 0, NULL);
    mgr = TASK_DATA(t);
    mgr->func = voidFn;
    mgr->color = color;
    mgr->unk6 = 0;
}

void sub_8001DDC(u32 playerId)
{
    ClearSave(LOADED_SAVE, playerId);
    ClearSave(&gUnknown_03000980, playerId);
    ValidateSaveSector(&gSaveSectorData, playerId);
}

void sub_8001E0C()
{
    if (!(gFlags & FLAGS_NO_FLASH_MEMORY)) {
        s16 i;

        for (i = 0; i < SECTORS_PER_BANK; i++) {
            EraseSaveSector(i);
        }

        sub_8001FD4();
        sub_8002024();
    }
}

void CallCompleteSave(void) { CompleteSave(LOADED_SAVE); }

s32 sub_8001E58()
{
    if (gStageData.gameMode != GAME_MODE_5 || gStageData.playerIndex == PLAYER_1) {
        if (sub_80020F0()) {
            return sub_8001FD4();
        }
    }

    return 0;
}

s16 sub_8001E84(void) { return sub_8002024(); }

bool16 sub_8001E94(void)
{
    SaveSectorHeader headers[SECTORS_PER_BANK];
    s16 i;

    if (gFlags & FLAGS_NO_FLASH_MEMORY) {
        return FALSE;
    }

    for (i = 0; i < (s32)ARRAY_COUNT(headers); i++) {
        ReadFlash(i, 0, &headers[i], 8);

        if (headers[i].magicNumber == SAVEMAGIC_SA3) {
            return TRUE;
        }
    }

    return FALSE;
}

void sub_8001EEC(u8 param0)
{
    LOADED_SAVE->unlockedCharacters |= param0;

    sub_802616C(60);

    if ((gStageData.gameMode == GAME_MODE_5) && (gStageData.playerIndex != PLAYER_1)) {
        return;
    }

    if (sub_80020F0()) {
        sub_8001FD4();
    }
}

/*	Sets a "Chao-Bit", which represents it being collected.
The zone is identified automatically.
(The one you hang around in when executing this function is being chosen) */
void SetChaoFlag(u16 chaoIndex) { SetBit(LOADED_SAVE->chaoCount[gStageData.zone], chaoIndex); }

/*	Gets a "Chao-Bit", which represents it (not) being collected. */
u16 GetChaoFlag(u16 ZoneIndex, u16 chaoIndex) { return CheckBit(LOADED_SAVE->chaoCount[ZoneIndex], chaoIndex); }

/* Gets the number of Chao collected in Zone 'zoneIndex' */
s16 GetChaoCount(u16 zoneIndex)
{
    s16 chaoCount = 0;
    s16 i;

    for (i = 0; i < CHAO_COUNT_PER_ZONE; i++) {
        if (GetBit(LOADED_SAVE->chaoCount[zoneIndex], i)) {
            chaoCount += 1;
        }
    }

    return chaoCount;
}

void Task_8001FB0(void)
{
    SaveManager *mgr = TASK_DATA(gCurTask);

    VoidFn func = mgr->func;

    TaskDestroy(gCurTask);

    func();
}

s32 sub_8001FD4(void)
{
    SaveGame *srcSave = LOADED_SAVE;
    SaveGame *dstSave = &gUnknown_03000980;
    SaveSectorData *sector = &gSaveSectorData;

    ValidateSave(srcSave);
    CpuCopy32(srcSave, dstSave, sizeof(SaveGame));
    PackSaveSector(sector, dstSave);

    {
        s16 sectorId = sub_8001A90();
        if (sectorId < 0) {
            return -1;
        } else {
            return WriteSaveSector(sectorId, sector);
        }
    }
}

s16 sub_8002024(void)
{
    SaveGame *dstSave = LOADED_SAVE;
    SaveGame *srcSave = &gUnknown_03000980;
    SaveSectorData *sector = &gSaveSectorData;
    s16 sectorId;

    sectorId = sub_8001B60();
    if (sectorId < 0) {
        return -1;
    }

    if (sub_8002084(sectorId, sector)) {
        ValidateSaveSector(sector, 0);
    }

    UnpackSaveSector(srcSave, sector);
    ValidateSave(srcSave);
    CpuCopy32(srcSave, dstSave, sizeof(SaveGame));

    return 0;
}

s16 sub_8002084(s16 sectorId, SaveSectorData *sector)
{
    u16 _sectorId = sectorId;
    s16 i;

    for (i = 0; i < SECTORS_PER_BANK; i++) {
        ReadFlash(_sectorId, 0, sector, sizeof(SaveSectorData));

        if ((sector->header.magicNumber == SAVEMAGIC_SA3) && (sector->checksum == GetSaveSectorChecksum(sector))) {
            return 0;
        }

        EraseSaveSector(_sectorId);

        if (_sectorId == 0) {
            _sectorId = 15;
        } else {
            _sectorId--;
        }
    }

    return -1;
}

u16 sub_80020F0()
{
    u16 *p1 = (u16 *)LOADED_SAVE;
    u16 *p2 = (u16 *)&gUnknown_03000980;

    s16 i = 0;
    s32 size = sizeof(SaveGame) / sizeof(u16);

    for (; i < size; i++, p1++, p2++) {
        if (*p1 != *p2) {
            return 1;
        }
    }

    return 0;
}

u32 GetSaveSectorChecksum(SaveSectorData *sector)
{
    u8 *ptr = (u8 *)sector;

    u32 checkSum = 0;
    u32 i = 0;

    u32 size = (sizeof(SaveSectorData) - sizeof(sector->checksum));

    for (; i < size; i += sizeof(u32)) {
        checkSum += *((u32 *)(ptr + i));
    }

    return checkSum;
}

void sub_800214C(void)
{
    Player *players = &gPlayers[0];
    s16 i;

    if (gStageData.gameMode != GAME_MODE_MP_SINGLE_PACK) {
        gStageData.lives = 2;

        for (i = 0; i < (s32)ARRAY_COUNT(gStageData.unkBE); i++) {
            gStageData.unkBE[i] = 0;
        }
    } else {
        gStageData.lives = 0;
        gStageData.unk8E = -1;
        gStageData.task98 = NULL;
        TaskDestructor_8029774(NULL);
    }

    {
        Player *p = &players[PLAYER_1];
        for (i = 0; i < 4; i++, p++) {
            p->unkC4[0] = NULL;
            p->unkC4[1] = NULL;
            p->unkC4[2] = NULL;
        }
    }

    if (gStageData.gameMode == 1 || gStageData.gameMode == 2) {
        gStageData.buttonConfig.jump = A_BUTTON;
        gStageData.buttonConfig.attack = B_BUTTON;
        gStageData.buttonConfig.trick = R_BUTTON;
    } else {
        gStageData.buttonConfig.jump = LOADED_SAVE->buttonConfig.jump;
        gStageData.buttonConfig.attack = LOADED_SAVE->buttonConfig.attack;
        gStageData.buttonConfig.trick = LOADED_SAVE->buttonConfig.trick;
    }
}

void WarpToMap(s16 level, u16 arg1)
{
    StageData *stageData = &gStageData;
    s16 zone;
    u32 act;

    if (level < 73) {
        if (level < 71) {
            zone = ((level - 1) / 10);
            act = (zone * 10) + 1;
            act = level - act;
            act++;
#ifndef NON_MATCHING
            // stageData->act is a byte anyway, so the cast is redundant.
            act <<= 16;
            act >>= 16;
#endif

            if ((level != 1) && (level != 11)) {
                stageData->zone = zone;
                stageData->act = act;
            } else {
                stageData->act = 1;
            }
        } else {
            stageData->zone = level - 64;
            stageData->act = 1;
        }

        stageData->currMapIndex = level;
    }

    stageData->entryIndex = arg1;
    stageData->unk1 = gLoadedSaveGame.difficulty;
    stageData->unk0 = gLoadedSaveGame.language;
    if ((gStageData.zone < 7) && ((gStageData.act == 1 || gStageData.act == 2) || (gStageData.act == 8) || (gStageData.act == 9))) {
        stageData->unk2 = 1;
    } else {
        stageData->unk2 = gLoadedSaveGame.disableTimeLimit;
    }
    stageData->unkB6 = 0;
    stageData->unkB7 = 0;
    stageData->unkB8 = 0;
    stageData->unkB9 = 0;
    stageData->unk8C = 0;

    sub_8001D58(sub_8003F40, RGB_WHITE);
}
