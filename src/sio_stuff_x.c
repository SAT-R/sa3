#include "global.h"
#include "core.h"
#include "game/stage.h"
#include "game/game_over.h"
#include "constants/songs.h"

void Task_8029648(void);
void TaskDestructor_8029774(Task *t);

// TODO: Fake-match
u8 sub_80293BC(void)
{
#ifndef NON_MATCHING
    register StageData *stageData asm("r0") = &gStageData;
    register u8 *ptrOpponentIndex asm("r1") = &stageData->mpOpponentPlayerIndex;
#else
    StageData *stageData = &gStageData;
    u8 *ptrOpponentIndex = &stageData->mpOpponentPlayerIndex;
#endif
    u8 opponentIndex = *ptrOpponentIndex;
    u8 result = 0xAA;
    if (opponentIndex != 0xFF) {
        result = 0x55;
        result -= (1 << (*ptrOpponentIndex * 2));
    }

    return result;
}
