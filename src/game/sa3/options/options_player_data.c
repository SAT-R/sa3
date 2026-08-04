#include "global.h"
#include "core.h"
#include "game/save.h"

typedef struct {
    /* 0x00 */ u8 language;
    /* 0x04 */ u8 *initArg3;
    /* 0x08 */ s32 initArg2;
    /* 0x0C */ u8 fillerC[8];
    /* 0x14 */ Vec2_32 unk14[4];
    /* 0x34 */ s32 unk34;
    /* 0x38 */ s32 unk38;
    /* 0x3C */ s32 unk3C;
    /* 0x40 */ s32 unk40;
    /* 0x44 */ u16 unk44;
    /* 0x46 */ u16 unk46;
    /* 0x48 */ u8 *vram48;
    /* 0x4C */ u8 filler4C[0x118];
} OptionsPlayerData; /* 0x164 */

void Task_Options_PlayerData(void);
void sub_808F070(OptionsPlayerData *pd);
void TaskDestructor_Options_PlayerData(struct Task *t);

void Options_PlayerData(s16 difficultyValue, u8 *vramBase, s32 arg2, u8 *arg3)
{
    u8 i;
    OptionsPlayerData *pd
        = TASK_DATA(TaskCreate(Task_Options_PlayerData, sizeof(OptionsPlayerData), 0x100, 0, TaskDestructor_Options_PlayerData));

    pd->initArg2 = arg2;
    pd->initArg3 = arg3;

    for (i = 0; i < 4; i++) {
        pd->unk14[i].x = -gBgScrollRegs[1][0];
        pd->unk14[i].y = -gBgScrollRegs[1][0] + 10;
    }

    pd->unk34 = -gBgScrollRegs[1][0];
    pd->unk38 = -gBgScrollRegs[1][1];
    pd->unk44 = -gBgScrollRegs[1][0] + 100;
    pd->unk46 = -gBgScrollRegs[1][1];
    pd->unk3C = -gBgScrollRegs[1][0];
    pd->unk40 = -gBgScrollRegs[1][1];
    pd->vram48 = vramBase;
    pd->language = LOADED_SAVE->language;

    sub_808F070(pd);
}
