#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "game/game.h"
#include "game/stage.h"
#include "game/shared/stage/player.h"

typedef struct {
    /* 0x00 */ u8 filler0[4];
    /* 0x04 */ s8 unk4;
    /* 0x05 */ s8 unk5;
    /* 0x06 */ s8 unk6;
    /* 0x07 */ s8 unk7;
} EggHammerTankIII_x110;

typedef struct {
    /* 0x000 */ s32 unk0;
    /* 0x004 */ s32 unk4;
    /* 0x008 */ s32 unk8;
    /* 0x00C */ u8 lives;
    /* 0x00D */ u8 unkD;
    /* 0x00E */ u8 unkE;
    /* 0x00F */ u8 unkF;
    /* 0x010 */ u8 unk10;
    /* 0x011 */ u8 unk11;
    /* 0x012 */ u8 unk12;
    /* 0x013 */ u8 unk13;
    /* 0x014 */ s16 unk14[5][2];
    /* 0x028 */ u8 *vram28;
    /* 0x02C */ s16 unk2C;
    /* 0x02E */ s16 unk2E;
    /* 0x030 */ s16 unk30;
    /* 0x032 */ s16 unk32;
    /* 0x018 */ u8 filler34[0x14];
    /* 0x048 */ s32 unk48;
    /* 0x04C */ s32 unk4C;
    /* 0x050 */ Player *player;
    /* 0x054 */ Player *partner;
    /* 0x058 */ u8 filler58[0xB8];
    /* 0x110 */ EggHammerTankIII_x110 unk110[5];
    /* 0x138 */ u8 filler138[0x84];
} EggHammerTankIII; /* 0x1BC */

void sub_8069460(EggHammerTankIII *boss);
void sub_80692E4(EggHammerTankIII *boss);
void sub_806940C(EggHammerTankIII *boss);
void sub_806A728(void);
void SetFixedRandomIfTimeAttackMode(void);
void TaskDestructor_Boss_806A7E4(struct Task *t);

// Init Boss 1
Task *CreateEggHammerTankIII(s32 arg0, s32 arg1, s32 arg2)
{
    Task *t;
    s32 temp_r3;
    s8 temp_r1_2;
    s8 temp_r1_3;
    s8 var_r0;
    u16 temp_r1;
    u8 var_r5;
    EggHammerTankIII *boss;

    t = TaskCreate(sub_806A728, sizeof(EggHammerTankIII), 0x2100U, 0U, TaskDestructor_Boss_806A7E4);
    gStageData.taskGemerl = t;
    boss = TASK_DATA(t);
    boss->unk0 = Q(arg1);
    boss->unk4 = Q(arg2);

    if (gStageData.difficulty == 0) {
        boss->lives = 8;
    } else {
        boss->lives = 6;
    }

    boss->unk8 = arg0;
    boss->unkD = 0;
    boss->unk32 = 0;
    boss->unkF = 0;
    boss->unk2C = 0;
    boss->unk2E = 0;
    boss->unk10 = 0;
    boss->unk11 = 0;
    boss->unk12 = 0;
    boss->player = &gPlayers[PLAYER_1];
    boss->partner = &gPlayers[PLAYER_2];
    boss->unk48 = 0;
    boss->unk4C = 0;
    boss->vram28 = VramMalloc(0x9EU);

    sub_8069460(boss);
    sub_80692E4(boss);
    sub_806940C(boss);

    for (var_r5 = 0; var_r5 < ARRAY_COUNT(boss->unk14); var_r5++) {
        EggHammerTankIII_x110 *temp_r2 = &boss->unk110[var_r5];
        boss->unk14[var_r5][0] = temp_r2->unk4 - ((temp_r2->unk4 - temp_r2->unk6) >> 1);
        boss->unk14[var_r5][1] = temp_r2->unk5 - ((temp_r2->unk5 - temp_r2->unk7) >> 1);
    }

    SetFixedRandomIfTimeAttackMode();

    return t;
}

#if 01
#endif
