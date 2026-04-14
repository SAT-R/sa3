#include "global.h"
#include "core.h"
#include "flags.h"
#include "game/stage.h"
#include "module_unclear.h"

typedef struct SomeStageMgr {
    u8 unk0;
    u8 unk1;
    u8 padd2[0x10];
    u8 padd12[0x2];
    u32 timers[16];
} SomeStageMgr; /* 0x54 */

typedef struct Strc_8E2EC98 {
    u16 unk0;
    u16 unk2;
    u16 unk4;
    u16 *ptr;
} Strc_8E2EC98;

extern u16 gUnknown_080D5248[];
extern Strc_8E2EC98 *gUnknown_08E2EC98[];

void Task_8065FAC();
void sub_806619C(Task *);

#if 0

void Task_8065FAC(void) {
    u32 sp0;
    s32 sp4;
    s32 count;
    s32 temp_r5_2;
    u16 *temp_r7;
    u32 temp_r0;
    u16 temp_r1;
    u16 var_r4;
    u8 temp_r6;
    u8 var_r6;
    u8 var_r8;
    Strc_8E2EC98 *temp_r5;

    SomeStageMgr *mgr = TASK_DATA(gCurTask);
    sp0 = mgr->unk1;

    for(var_r8 = 0;
        var_r8 < gUnknown_080D5248[sp0];
        var_r8++)
    {
        temp_r5 = gUnknown_08E2EC98[sp0];
        temp_r0 = gUnknown_08E2EC98[sp0][var_r8].unk0;
        temp_r1 = temp_r5[var_r8].unk2;
        sp4 = temp_r5[var_r8].unk4;
        var_r6 = mgr->padd2[var_r8];
        var_r4 = var_r6 * (temp_r1 + 1);
        count = temp_r5[var_r8].ptr[var_r4];
        if ((u32) (gStageData.timer - mgr->timers[var_r8]) > (count + 1))
        {
            gFlags |= FLAGS_UPDATE_BACKGROUND_PALETTES;
            var_r4 += 1 + temp_r5[var_r8].unk2;
            if (var_r6 + 1 >= sp4) {
                var_r4 = 0;
            }
            if (FLAGS_10000 & gFlags) {
                sub_80C460C(&temp_r5[var_r8].ptr[var_r4 + 1], (u8) temp_r0, temp_r1);
            } else {
                DmaSet(3, &temp_r5[var_r8].ptr[var_r4 + 1],
                       &gBgPalette[temp_r0],
                       0x80000000 | temp_r1);
                gFlags |= FLAGS_UPDATE_BACKGROUND_PALETTES;
            }
            mgr->timers[var_r8] = gStageData.timer;
            
            if (++var_r6 >= (u32) sp4) {
                var_r6 = 0;
            }
            mgr->padd2[var_r8] = var_r6;
        }
    }
}

#endif

// This task gets created when entering any stage (except for Sonic Factory & Chao Garden)
void sub_806611C(u8 arg0)
{
    SomeStageMgr *mgr;
    StageData *stageData = &gStageData;

    mgr = TASK_DATA(TaskCreate(Task_8065FAC, sizeof(SomeStageMgr), 0x2100U, 0U, sub_806619C));
    mgr->unk1 = arg0;
    CpuFill16(stageData->timer, &mgr->timers[0], sizeof(mgr->timers));
    CpuFill16(0, &mgr->padd2[0], sizeof(mgr->padd2));
}

void sub_806619C(Task *arg0) { }
