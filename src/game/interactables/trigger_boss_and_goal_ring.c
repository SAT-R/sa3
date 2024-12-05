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
#include "game/interactables/trigger_boss_and_goal_ring.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"
#include "constants/songs.h"
#include "constants/zones.h"

/* NOTE(Jace): Trigger for Bosses (Gmerl and main each) as well as the
               Trigger for the Stage Goal Ring (different from main Stage Goal Ring IA) */

typedef struct {
    /* 0x00 */ BossInitFunc bossInit; // Maybe Boss creation func?
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
} TriggerCamState;

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ s32 qWorldX;
    /* 0x10 */ s32 qWorldY;
    /* 0x14 */ TriggerCamState camState;
    /* 0x2C */ s16 unk2C;
    /* 0x2E */ u8 bossId;
    /* 0x2F */ u8 unk2F;
    /* 0x30 */ struct Task *bossTask;
    /* 0x34 */ u16 unk34;
    /* 0x36 */ u16 unk36;
    /* 0x38 */ u16 unk38;
    /* 0x3A */ u16 unk3A;
    /* 0x3C */ s32 unk3C;
} TriggerBossOrGoal; /* 0x40 */

void Task_TriggerBossAndGoalRingInit(void);
void sub_803E700(void);
void TaskDestructor_TriggerBossAndGoalRing(struct Task *t);
void Task_803E7DC(void);
void Task_803E818(void);
void Task_803E884(void);
void sub_803E900(TriggerCamState *camState);
void Task_DestroyTrigger(void);

extern const TriggerConsts gUnknown_080CFA58[18];

NONMATCH("asm/non_matching/game/interactables/boss_trigger__CreateEntity_TriggerBossOrGoal.inc",
         void CreateEntity_TriggerBossOrGoal(MapEntity *me, u16 regionX, u16 regionY, u8 id))
{
    u32 bossId = me->d.uData[4] & 0x1F;

    if ((gStageData.gameMode != GAME_MODE_MP_MULTI_PACK) || (bossId > 3)) {
        struct Task *t
            = TaskCreate(Task_TriggerBossAndGoalRingInit, sizeof(TriggerBossOrGoal), 0x0FFF, 0, TaskDestructor_TriggerBossAndGoalRing);
        TriggerBossOrGoal *trig = TASK_DATA(t);
        TriggerCamState *camState = &trig->camState;

        trig->base.regionX = regionX;
        trig->base.regionY = regionY;
        trig->base.me = me;
        trig->base.spriteX = me->x;
        trig->base.id = id;

        trig->unk2F = 1;
        trig->bossTask = NULL;
        trig->bossId = bossId;

        trig->unk2C = Q(3) + ((me->d.uData[4] >> 5) << 6);
        trig->unk3C = 0;
        trig->qWorldX = Q(TO_WORLD_POS(trig->base.spriteX, trig->base.regionX));
        trig->qWorldY = Q(TO_WORLD_POS(me->y, trig->base.regionY));

        gStageData.unkBD = 0;

        trig->unk34 = gCamera.unk18;
        trig->unk36 = gCamera.unk10;
        trig->unk38 = gCamera.unk1C;
        trig->unk3A = gCamera.unk14;

        camState->unk0 = trig->qWorldX + Q(me->d.sData[0] * TILE_WIDTH);
        camState->unk4 = camState->unk0 + Q(me->d.uData[2] * TILE_WIDTH);
        camState->unk8 = trig->qWorldY + Q(me->d.sData[1] * TILE_WIDTH);
        camState->unkC = camState->unk8 + Q(me->d.uData[3] * TILE_WIDTH);

        sub_803E900(camState);
    }

    SET_MAP_ENTITY_INITIALIZED(me);
}
END_NONMATCH

// (99.86%) https://decomp.me/scratch/e74VW
NONMATCH("asm/non_matching/game/interactables/boss_trigger__Task_TriggerBossAndGoalRingInit.inc", void Task_TriggerBossAndGoalRingInit())
{
    TriggerBossOrGoal *trig = TASK_DATA(gCurTask);
    TriggerCamState *camState = &trig->camState;

    trig->unk3C++;

    if (trig->bossTask == 0) {
        const TriggerConsts *tcBase = &gUnknown_080CFA58[0];
        const TriggerConsts *tc = (tcBase + trig->bossId); // For matching

        if ((tc->bossInit != NULL) && (trig->unk3C > 4)) {
            trig->bossTask = tc->bossInit(&trig->unk2F, I(trig->qWorldX), I(trig->qWorldY));
        }
    }
    // _0803E58E

    if (camState->qCamX < camState->unk0) {
        camState->qCamX += trig->unk2C;

        if (camState->qCamX > camState->unk0) {
            camState->qCamX = camState->unk0;
        }
    } else if (camState->qCamX + Q(DISPLAY_WIDTH) > camState->unk4) {
        // _0803E5B8+0xC

        camState->qCamX -= trig->unk2C;

        if (camState->qCamX + Q(DISPLAY_WIDTH) < camState->unk4) {
            camState->qCamX = camState->unk4 - Q(DISPLAY_WIDTH);
        }
    }
    // _0803E5DC

    if (camState->qCamY < camState->unk8) {
        camState->qCamY += trig->unk2C >> 1;

        if (camState->qCamY > camState->unk8) {
            camState->qCamY = camState->unk8;
        }
    } else if (camState->qCamY + Q(DISPLAY_HEIGHT) > camState->unkC) {
        camState->qCamY -= trig->unk2C >> 1;

        if (camState->qCamY + Q(DISPLAY_HEIGHT) < camState->unkC) {
            camState->qCamY = camState->unkC - Q(DISPLAY_HEIGHT);
        }
    }
    // _0803E622

    if (camState->unk0 >= camState->qCamX) {
        gCamera.unk18 = I(camState->qCamX);
    } else {
        gCamera.unk18 = I(camState->unk0);
    }
    // _0803E63C

    if (camState->unk4 <= camState->qCamX + Q(DISPLAY_WIDTH)) {
        gCamera.unk1C = I(camState->qCamX) + DISPLAY_WIDTH;
    } else {
        gCamera.unk1C = I(camState->unk4);
    }

    if (camState->unk8 >= camState->qCamY) {
        gCamera.unk10 = I(camState->qCamY);
    } else {
        gCamera.unk10 = I(camState->unk8);
    }

    if (camState->unkC <= camState->qCamY + Q(DISPLAY_HEIGHT)) {
        gCamera.unk14 = I(camState->qCamY) + DISPLAY_HEIGHT;
    } else {
        gCamera.unk14 = I(camState->unkC);
    }
    // _0803E682

    {
        register s32 x asm("r5") = I(camState->unk0);
        if ((gCamera.x >= x) && (gCamera.y >= I(camState->unk8)) && (gCamera.x + DISPLAY_WIDTH <= I(camState->unk4))
            && (gCamera.y + DISPLAY_HEIGHT <= I(camState->unkC))) {
            if (trig->unk3C > 4) {
                gCamera.unk18 = x;
                gCamera.unk1C = I(camState->unk4);
                gCamera.unk10 = I(camState->unk8);
                gCamera.unk14 = I(camState->unkC);

#ifndef NON_MATCHING
                if (gStageData.act == ACT_BOSS) {
                    asm("\tldrb %0, [%0, #9]\n"
                        "\tsub r0, %0, #4\n"
                        "\tlsl r0, #24\n"
                        "\tlsr r0, #24" ::"r"(&gStageData));
                }
#endif
                trig->unk2F = 2;

                gCurTask->main = Task_803E7DC;
            }
        }
    }

    sub_803E700();
}
END_NONMATCH

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

        if ((trig->bossId >= 3) && (trig->bossId < 13)) {
            gCurTask->main = Task_803E884;
        } else {
            MapEntity *me = trig->base.me;

            SET_MAP_ENTITY_NOT_INITIALIZED(me, trig->base.spriteX);

            trig->unk2F = 3;

            if (trig->bossTask) {
                TaskDestroy(trig->bossTask);
                trig->bossTask = NULL;
            }

            gCurTask->main = Task_DestroyTrigger;
        }
    }
}

void TaskDestructor_TriggerBossAndGoalRing(struct Task *t) { }

void Task_803E7DC(void)
{
    TriggerBossOrGoal *trig = TASK_DATA(gCurTask);

    if (trig->unk2F == 0) {
        if (trig->bossTask) {
            TaskDestroy(trig->bossTask);
            trig->bossTask = NULL;
        }

        gCurTask->main = Task_803E818;
    }

    sub_803E700();
}

void Task_803E818(void)
{
    TriggerBossOrGoal *trig = TASK_DATA(gCurTask);
    const TriggerConsts *tc = &gUnknown_080CFA58[trig->bossId];

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
    TriggerCamState *camState = &trig->camState;
    Player *p = &gPlayers[gStageData.playerIndex];

    if ((p->qWorldX >= camState->unk0 - Q(128)) && (p->qWorldX <= camState->unk4 + Q(128)) && (p->qWorldY >= camState->unk8 - Q(128))
        && (p->qWorldY <= camState->unkC + Q(128))) {
        trig->unk3C = 0;

        sub_803E900(camState);

        gCurTask->main = Task_TriggerBossAndGoalRingInit;
    }
}

void sub_803E900(TriggerCamState *camState)
{
    camState->qCamX = Q(gCamera.x);

    if ((gStageData.act == ACT_BOSS) && ((gStageData.zone == ZONE_5) || (gStageData.zone == ZONE_6))) {
#ifndef NON_MATCHING
        // NOTE: This introduces a redundant check, already handled by the 'else'.
        if (gStageData.zone != ZONE_5) {
            camState->qCamY = Q(gCamera.y);
            return;
        }
#endif

        if (gCamera.x < 0x500) {
            camState->qCamY = Q(gCamera.y);
            camState->unk8 = Q(1340);
        } else {
            camState->qCamY = Q(gCamera.y);
            camState->unk8 = Q(1304);
        }
    } else {
        camState->qCamY = Q(gCamera.y);
    }
}

void Task_DestroyTrigger(void) { TaskDestroy(gCurTask); }