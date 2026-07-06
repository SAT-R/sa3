#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "multi_sio_stuff.h"
#include "game/game.h"
#include "game/stage.h"
#include "game/shared/stage/player.h"
#include "constants/animations.h"

typedef struct {
    /* 0x000 */ s32 unk0;
    /* 0x004 */ s32 unk4;
    /* 0x008 */ s32 unk8;
    /* 0x00C */ u8 lives;
    /* 0x00D */ s8 unkD;
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
    /* 0x058 */ u8 filler58[0x98];
    /* 0x0F0 */ Sprite5 sprCockpit;
    /* 0x138 */ Sprite spr138;
    /* 0x160 */ Sprite spr160;
    /* 0x188 */ Sprite spr188;
    /* 0x1B0 */ SpriteTransform tf;
} EggHammerTankIII; /* 0x1BC */

void sub_8069460(EggHammerTankIII *boss);
void sub_80692E4(EggHammerTankIII *boss);
void sub_8069360(EggHammerTankIII *boss);
void sub_806940C(EggHammerTankIII *boss);
void sub_806A5DC(EggHammerTankIII *boss);
void sub_8069814(EggHammerTankIII *boss);
void sub_8069818(EggHammerTankIII *boss);
void sub_806A818(EggHammerTankIII *boss);
void sub_806A894(EggHammerTankIII *boss);
void sub_806A728(void);
void sub_806A760(void);
void sub_806A7A4(void);
void TaskDestructor_Boss_806A7E4(struct Task *t);
void sub_8069578(EggHammerTankIII *boss);
void sub_806A854(EggHammerTankIII *boss);
void sub_806A898(EggHammerTankIII *boss);
u8 sub_8068E5C(Player *);

extern void SetFixedRandomIfTimeAttackMode(void);


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
        Hitbox *hb = &boss->sprCockpit.hitboxes[var_r5];
        boss->unk14[var_r5][0] = hb->b.left - ((hb->b.left - hb->b.right) >> 1);
        boss->unk14[var_r5][1] = hb->b.top  - ((hb->b.top  - hb->b.bottom) >> 1);
    }

    SetFixedRandomIfTimeAttackMode();

    return t;
}

void sub_8068C38(void)
{
    u8 temp_r5;
    EggHammerTankIII *boss = TASK_DATA(gCurTask);
    Sprite *s = (Sprite *)&boss->sprCockpit;

    boss->unk32++;
    sub_8069814(boss);
    sub_8069360(boss);
    sub_806A894(boss);
    temp_r5 = sub_8068E5C(boss->player);
    temp_r5 += sub_8068E5C(boss->partner);

    if (boss->unkD != 0) {
        if (--boss->unkD == 0) {
            s->anim = ANIM_BOSS_1_COCKPIT;
            s->variant = 0;
        }
    }

    if (temp_r5 != 0) {
        sub_806A5DC(boss);
    }

    if (boss->lives == 0) {
        if (CURRENT_GAME_MODE == 5) {
            if (gStageData.playerIndex != 0) {
                gCurTask->main = sub_806A7A4;
            } else {
                sub_8027674(1, 0);
                sub_806A818(boss);
                gCurTask->main = sub_806A760;
            }
        } else {
            sub_806A818(boss);
            gCurTask->main = sub_806A760;
        }
    }

    sub_8069578(boss);
    sub_806A854(boss);
    sub_806A898(boss);
}

#if 01
#endif





