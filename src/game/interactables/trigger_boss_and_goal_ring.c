#include "global.h"
#include "core.h"
#include "sprite.h"
#include "malloc_vram.h"
#include "module_unclear.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/player_callbacks.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"
#include "constants/songs.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ void *funcPtr; // Maybe Boss creation func?
    /* 0x04 */ s32 unk4;
    /* 0x04 */ s32 unk8;
    /* 0x04 */ s32 unkC;
    /* 0x04 */ s32 unk10;
} TriggerConsts;

typedef struct {
    /* 0x00 */ s32 unk0;
    /* 0x04 */ s32 unk4;
    /* 0x08 */ s32 unk8;
    /* 0x0C */ s32 unkC;
    /* 0x10 */ s32 qCamX;
    /* 0x14 */ s32 qCamY;
} Trigger14;

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ s32 qWorldX;
    /* 0x10 */ s32 qWorldY;
    /* 0x14 */ Trigger14 unk14;
    /* 0x2C */ u16 unk2C;
    /* 0x2E */ u8 unk2E;
    /* 0x2F */ u8 unk2F;
    /* 0x30 */ struct Task *unk30; // Boss task?
    /* 0x34 */ u16 unk34;
    /* 0x36 */ u16 unk36;
    /* 0x38 */ u16 unk38;
    /* 0x3A */ u16 unk3A;
    /* 0x3C */ u32 unk3C;
} TriggerBossOrGoal; /* 0x40 */

void sub_803E544(void);
void sub_803E700(void);
void Task_803E818(void);
void Task_803E884(void);
void sub_803E900(Trigger14 *unk14);
void Task_DestroyTrigger(void);

extern const TriggerConsts gUnknown_080CFA58[18];

void sub_803E700()
{
    TriggerBossOrGoal *trig = TASK_DATA(gCurTask);
    Player *p;
    s16 playerX, playerY;

    if (gStageData.unkBD == 0) {
        return;
    }

    p = &gPlayers[gStageData.playerIndex];
    playerX = I(p->qWorldX);
    playerY = I(p->qWorldY);

    if ((playerX >= gCamera.unk18 - 10) && (playerX <= gCamera.unk1C + 10) && (playerY >= gCamera.unk10 - 10)
        && (playerY <= gCamera.unk14 + 10)) {
        gStageData.unkBD = 0;
    } else {
        gCamera.unk18 = trig->unk34;
        gCamera.unk10 = trig->unk36;
        gCamera.unk1C = trig->unk38;
        gCamera.unk14 = trig->unk3A;

        if ((trig->unk2E >= 3) && (trig->unk2E < 13)) {
            gCurTask->main = Task_803E884;
        } else {
            MapEntity *me = trig->base.me;

            SET_MAP_ENTITY_NOT_INITIALIZED(me, trig->base.spriteX);

            trig->unk2F = 3;

            if (trig->unk30) {
                TaskDestroy(trig->unk30);
                trig->unk30 = NULL;
            }

            gCurTask->main = Task_DestroyTrigger;
        }
    }
}

void TaskDestructor_TriggerBossAndGoalRing(void) { }

void sub_803E7DC(void)
{
    TriggerBossOrGoal *trig = TASK_DATA(gCurTask);

    if (!trig->unk2F) {
        if (trig->unk30) {
            TaskDestroy(trig->unk30);
            trig->unk30 = NULL;
        }

        gCurTask->main = Task_803E818;
    }

    sub_803E700();
}

void Task_803E818(void)
{
    TriggerBossOrGoal *trig = TASK_DATA(gCurTask);
    const TriggerConsts *tc = &gUnknown_080CFA58[trig->unk2E];

    if (tc->unk4 != -1) {
        gCamera.unk18 = tc->unk4;
    }

    if (tc->unkC != -1) {
        gCamera.unk10 = tc->unkC;
    }

    if (tc->unk8 != -1) {
        gCamera.unk1C = tc->unk8;
    }

    if (tc->unk10 != -1) {
        gCamera.unk14 = tc->unk10;
    }

    TaskDestroy(gCurTask);
}

void sub_803E878(void) { sub_803E700(); }

void Task_803E884()
{
    TriggerBossOrGoal *trig = TASK_DATA(gCurTask);
    Trigger14 *unk14 = &trig->unk14;
    Player *p = &gPlayers[gStageData.playerIndex];

    if ((p->qWorldX >= unk14->unk0 - Q(128)) && (p->qWorldX <= unk14->unk4 + Q(128)) && (p->qWorldY >= unk14->unk8 - Q(128))
        && (p->qWorldY <= unk14->unkC + Q(128))) {
        trig->unk3C = 0;

        sub_803E900(unk14);

        gCurTask->main = sub_803E544;
    }
}

void sub_803E900(Trigger14 *unk14)
{
    unk14->qCamX = Q(gCamera.x);

    if ((gStageData.act == ACT_BOSS) && ((gStageData.zone == ZONE_5) || (gStageData.zone == ZONE_6))) {
#ifndef NON_MATCHING
        // NOTE: This introduces a redundant check, already handled by the 'else'.
        if (gStageData.zone != ZONE_5) {
            unk14->qCamY = Q(gCamera.y);
            return;
        }
#endif

        if (gCamera.x < 0x500) {
            unk14->qCamY = Q(gCamera.y);
            unk14->unk8 = Q(1340);
        } else {
            unk14->qCamY = Q(gCamera.y);
            unk14->unk8 = Q(1304);
        }
    } else {
        unk14->qCamY = Q(gCamera.y);
    }
}

void Task_DestroyTrigger(void) { TaskDestroy(gCurTask); }