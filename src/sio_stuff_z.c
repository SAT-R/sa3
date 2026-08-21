#include "global.h"
#include "core.h"
#include "game/stage.h"
#include "game/game_over.h"
#include "constants/songs.h"

void Task_8029648(void);
void TaskDestructor_8029774(Task *t);

void Task_8029648(void)
{
    TaskA8 *strc = TASK_DATA(gCurTask);
    s32 temp_r0_4;
    s32 var_r1;

    if ((0xF0 & strc->unk3) != 0x20) {
        var_r1 = 0;
        strc->unk0 = 0;
    } else {
        var_r1 = GetBit(strc->unk3, gStageData.playerIndex);
    }

    if ((strc->unk0 != 0) && (--strc->unk0 != 0)) {
        if (var_r1 != 0) {
            if (strc->unk2 < 60) {
                strc->unk2++;
            }
        } else {
            if (strc->unk2 != 0) {
                strc->unk2--;
            }
        }
    } else if (strc->unk2 == 0) {
        TaskDestroy(gCurTask);
        return;
    } else {
        strc->unk2--;
    }

    temp_r0_4 = (strc->unk2 >> 2) & 0xF;
    REG_MOSAIC = temp_r0_4 | ((temp_r0_4 << 0xC) | (temp_r0_4 << 8) | (temp_r0_4 * 0x10));

    gBgCntRegs[0] |= BGCNT_MOSAIC;
    gBgCntRegs[1] |= BGCNT_MOSAIC;
    gBgCntRegs[2] |= BGCNT_MOSAIC;
    gBgCntRegs[3] |= BGCNT_MOSAIC;
}

void sub_80296F8(u8 arg0)
{
    if (gStageData.gameMode > 6) {
        TaskA8 *strc;
        if (gStageData.taskA8 != NULL) {
            strc = TASK_DATA(gStageData.taskA8);
        } else {
            Task *t = TaskCreate(Task_8029648, sizeof(TaskA8), 0xE000, 0, TaskDestructor_8029774);
            gStageData.taskA8 = t;
            strc = TASK_DATA(t);
            strc->unk2 = 0;
        }
        strc->unk0 = 600;
        strc->unk3 = arg0;

        if (GetBit(arg0, gStageData.playerIndex)) {
            sub_8003DF0(SE_VS__823);
        }
    }
}

void TaskDestructor_8029774(Task *t)
{
    gStageData.taskA8 = NULL;

    gBgCntRegs[0] &= ~BGCNT_MOSAIC;
    gBgCntRegs[1] &= ~BGCNT_MOSAIC;
    gBgCntRegs[2] &= ~BGCNT_MOSAIC;
    gBgCntRegs[3] &= ~BGCNT_MOSAIC;

    REG_MOSAIC = 0;
}
