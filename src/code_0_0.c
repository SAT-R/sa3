#include "global.h"
#include "core.h"
#include "malloc_ewram.h"
#include "malloc_vram.h"
#include "game/save.h"
#include "constants/characters.h"
#include "constants/zones.h"

void sub_8000D68(SaveGame *save);
void Task_8001FB0(void);

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

void sub_8000974(SaveGame *save, u32 index)
{
    s16 i, j;
    save->id = index;
    for (i = 0; i < (s32)ARRAY_COUNT(save->playerName); i++) {
        save->playerName[i] = -1;
    }

    save->unlockedCharacters = NEWGAME_CHARACTER_BITS;
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

    sub_8000D68(save);
}
