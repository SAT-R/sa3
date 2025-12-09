#include "global.h"
#include "core.h"
#include "malloc_ewram.h"
#include "malloc_vram.h"
#include "game/save.h"
#include "constants/characters.h"
#include "constants/zones.h"

void ValidateSave(SaveGame *save);
void Task_8001FB0(void);
u32 GetSaveSectorChecksum(SaveSectorData *sector);

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

void ClearSave(SaveGame *save, u32 index)
{
    s16 i, j;
    save->id = index;
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
        VsRecords *records = &gSaveGame.vsRecords[0];
        for (i = 0; i < (s32)ARRAY_COUNT(gSaveGame.vsRecords); i++, records++) {
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

    save->id = 0;

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
        VsRecords *vsRecs = &gSaveGame.vsRecords[0];
        for (i = 0; i < (s32)ARRAY_COUNT(gSaveGame.vsRecords); i++, vsRecs++) {
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

void ValidateSaveSector(SaveSectorData *sector, u32 id)
{
    s16 i;

    CPU_FILL(0, sector, sizeof(SaveSectorData), 32);

    sector->magicNumber = SAVEMAGIC_SA3;
    sector->id = id;

    for (i = 0; i <= 5; i++) {
        sector->playerName[i] = 0xFFFF;
    }

    sector->v18 = 0;
    sector->unlockedCharacters = NEWGAME_CHARACTERS;
    sector->unlockedZones = ZONE_1 + 1;
    sector->continueZone = ZONE_1;
    sector->v1C = 0;

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
