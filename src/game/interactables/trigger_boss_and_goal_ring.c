#include "global.h"
#include "core.h"
#include "sprite.h"
#include "malloc_vram.h"
#include "game/shared/stage/camera.h"
#include "game/shared/stage/entity.h"
#include "game/shared/stage/player.h"
#include "game/shared/stage/player_callbacks.h"
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
    /* 0x04 */ s32 minX;
    /* 0x08 */ s32 maxX;
    /* 0x0C */ s32 minY;
    /* 0x10 */ s32 maxY;
} TriggerConsts;

typedef struct {
    /* 0x00 */ s32 qMinX;
    /* 0x04 */ s32 qMaxX;
    /* 0x08 */ s32 qMinY;
    /* 0x0C */ s32 qMaxY;
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
#if DEBUG
    struct Task *triggerZoneOutlineTask;
#endif
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

#if DEBUG
typedef struct {
    Sprite s;
    s32 minX, maxX;
    s32 minY, maxY;
    float t;
} BossTriggerZone;

void Task_BossTriggerZone(void);
void TaskDestructor_BossTriggerZone(struct Task *t);

void CreateBossTriggerZoneOutline(TriggerBossOrGoal *trig)
{
    trig->triggerZoneOutlineTask = TaskCreate(Task_BossTriggerZone, sizeof(BossTriggerZone), 0x2000, 0, TaskDestructor_BossTriggerZone);
    BossTriggerZone *outline = TASK_DATA(trig->triggerZoneOutlineTask);
    TriggerCamState *camState = &trig->camState;
    Sprite *s = &outline->s;

    outline->minX = I(camState->qMinX);
    outline->maxX = I(camState->qMaxX);
    outline->minY = I(camState->qMinY);
    outline->maxY = I(camState->qMaxY);

    s->tiles = VramMalloc(4);
    s->anim = ANIM_SEESAW_1;
    s->variant = 3;
    s->prevVariant = -1;
    s->oamFlags = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    outline->t = 0.0f;
}

void Task_BossTriggerZone(void)
{
    BossTriggerZone *outline = TASK_DATA(gCurTask);
    Sprite *s = &outline->s;
    s32 minX = outline->minX - gCamera.x;
    s32 maxX = outline->maxX - gCamera.x;
    s32 minY = outline->minY - gCamera.y;
    s32 maxY = outline->maxY - gCamera.y;

    s->x = minX + (int)((maxX - minX) * outline->t);
    s->y = minY;
    DisplaySprite(s);

    s->x = maxX;
    s->y = minY + (int)((maxY - minY) * outline->t);
    DisplaySprite(s);

    s->x = maxX - (int)((maxX - minX) * outline->t);
    s->y = maxY;
    DisplaySprite(s);

    s->x = minX;
    s->y = maxY - (int)((maxY - minY) * outline->t);
    DisplaySprite(s);

    outline->t += (1. / 60.); // Assuming 60fps

    float tMax = 1.0;
    if (outline->t >= tMax) {
        outline->t -= tMax;
    }
}

void TaskDestructor_BossTriggerZone(struct Task *t)
{
    BossTriggerZone *outline = TASK_DATA(t);
    VramFree(outline->s.tiles);
}
#endif // DEBUG

// (99.76%) https://decomp.me/scratch/ObeDF
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
        trig->base.meX = me->x;
        trig->base.id = id;

        trig->unk2F = 1;
        trig->bossTask = NULL;
        trig->bossId = bossId;

        trig->unk2C = Q(3) + ((me->d.uData[4] >> 5) << 6);
        trig->unk3C = 0;
        trig->qWorldX = Q(TO_WORLD_POS(trig->base.meX, trig->base.regionX));
        trig->qWorldY = Q(TO_WORLD_POS(me->y, trig->base.regionY));

        gStageData.unkBD = 0;

        trig->unk34 = gCamera.minX;
        trig->unk36 = gCamera.minY;
        trig->unk38 = gCamera.maxX;
        trig->unk3A = gCamera.maxY;

        camState->qMinX = trig->qWorldX + Q(me->d.sData[0] * TILE_WIDTH);
        camState->qMaxX = camState->qMinX + Q(me->d.uData[2] * TILE_WIDTH);
        camState->qMinY = trig->qWorldY + Q(me->d.sData[1] * TILE_WIDTH);
        camState->qMaxY = camState->qMinY + Q(me->d.uData[3] * TILE_WIDTH);

#if PORTABLE
        {
            s32 dx = camState->qMaxX - camState->qMinX;
            s32 dy = camState->qMaxY - camState->qMinY;
            if (dx < DISPLAY_WIDTH) {
                camState->qMinX = trig->qWorldX - Q(DISPLAY_WIDTH / 2);
                camState->qMaxX = trig->qWorldX + Q(DISPLAY_WIDTH / 2);

                trig->unk34 = gCamera.minX = I(camState->qMinX);
                trig->unk38 = gCamera.maxX = I(camState->qMaxX);
            }

            if (dy < DISPLAY_HEIGHT) {
                camState->qMinY = camState->qMaxX - Q(DISPLAY_HEIGHT);

                trig->unk36 = gCamera.minY = I(camState->qMinY);
                trig->unk3A = gCamera.maxY = I(camState->qMaxY);
            }
        }
#endif

#if DEBUG
        CreateBossTriggerZoneOutline(trig);
#endif
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

    if (trig->bossTask == NULL) {
        const TriggerConsts *tcBase = &gUnknown_080CFA58[0];
        const TriggerConsts *tc = (tcBase + trig->bossId); // For matching

        if ((tc->bossInit != NULL) && (trig->unk3C > 4)) {
            trig->bossTask = tc->bossInit(&trig->unk2F, I(trig->qWorldX), I(trig->qWorldY));
        }
    }

    if (camState->qCamX < camState->qMinX) {
        camState->qCamX += trig->unk2C;

        if (camState->qCamX > camState->qMinX) {
            camState->qCamX = camState->qMinX;
        }
    } else if (camState->qCamX + Q(DISPLAY_WIDTH) > camState->qMaxX) {
        camState->qCamX -= trig->unk2C;

        if (camState->qCamX + Q(DISPLAY_WIDTH) < camState->qMaxX) {
            camState->qCamX = camState->qMaxX - Q(DISPLAY_WIDTH);
        }
    }

    if (camState->qCamY < camState->qMinY) {
        camState->qCamY += trig->unk2C >> 1;

        if (camState->qCamY > camState->qMinY) {
            camState->qCamY = camState->qMinY;
        }
    } else if (camState->qCamY + Q(DISPLAY_HEIGHT) > camState->qMaxY) {
        camState->qCamY -= trig->unk2C >> 1;

        if (camState->qCamY + Q(DISPLAY_HEIGHT) < camState->qMaxY) {
            camState->qCamY = camState->qMaxY - Q(DISPLAY_HEIGHT);
        }
    }

    if (camState->qMinX >= camState->qCamX) {
        gCamera.minX = I(camState->qCamX);
    } else {
        gCamera.minX = I(camState->qMinX);
    }

    if (camState->qMaxX <= camState->qCamX + Q(DISPLAY_WIDTH)) {
        gCamera.maxX = I(camState->qCamX) + DISPLAY_WIDTH;
    } else {
        gCamera.maxX = I(camState->qMaxX);
    }

    if (camState->qMinY >= camState->qCamY) {
        gCamera.minY = I(camState->qCamY);
    } else {
        gCamera.minY = I(camState->qMinY);
    }

    if (camState->qMaxY <= camState->qCamY + Q(DISPLAY_HEIGHT)) {
        gCamera.maxY = I(camState->qCamY) + DISPLAY_HEIGHT;
    } else {
        gCamera.maxY = I(camState->qMaxY);
    }

    {
#ifndef NON_MATCHING
        register s32 x asm("r5") = I(camState->qMinX);
#else
        s32 x = I(camState->qMinX);
#endif
        if ((gCamera.x >= x) && (gCamera.y >= I(camState->qMinY)) && (gCamera.x + DISPLAY_WIDTH <= I(camState->qMaxX))
            && (gCamera.y + DISPLAY_HEIGHT <= I(camState->qMaxY))) {
            if (trig->unk3C > 4) {
                gCamera.minX = x;
                gCamera.maxX = I(camState->qMaxX);
                gCamera.minY = I(camState->qMinY);
                gCamera.maxY = I(camState->qMaxY);

#ifndef NON_MATCHING
                if (gStageData.act == ACT_BOSS) {
                    asm("\tldrb %0, [%0, #9]\n"
                        "\tsub r0, %0, #4\n"
                        "\tlsl r0, #24\n"
                        "\tlsr r0, #24" ::"r"(&gStageData));
                }
#else
                if (gStageData.act == ACT_BOSS) {
                    u8 unusedZone = gStageData.zone - 4;
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

    if ((playerX >= gCamera.minX - 10) && (playerX <= gCamera.maxX + 10) && (playerY >= gCamera.minY - 10)
        && (playerY <= gCamera.maxY + 10)) {
        gStageData.unkBD = 0;
    } else {
        gCamera.minX = trig->unk34;
        gCamera.minY = trig->unk36;
        gCamera.maxX = trig->unk38;
        gCamera.maxY = trig->unk3A;

        if ((trig->bossId >= 3) && (trig->bossId < 13)) {
            gCurTask->main = Task_803E884;
        } else {
            MapEntity *me = trig->base.me;

            SET_MAP_ENTITY_NOT_INITIALIZED(me, trig->base.meX);

            trig->unk2F = 3;

            if (trig->bossTask) {
                TaskDestroy(trig->bossTask);
                trig->bossTask = NULL;
            }

            gCurTask->main = Task_DestroyTrigger;
        }
    }
}

void TaskDestructor_TriggerBossAndGoalRing(struct Task *t)
{
#if DEBUG
    TriggerBossOrGoal *trig = TASK_DATA(t);
    TaskDestroy(trig->triggerZoneOutlineTask);
    trig->triggerZoneOutlineTask = NULL;
#endif
}

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

    if (tc->minX != -1) {
        gCamera.minX = tc->minX;
    }

    if (tc->minY != -1) {
        gCamera.minY = tc->minY;
    }

    if (tc->maxX != -1) {
        gCamera.maxX = tc->maxX;
    }

    if (tc->maxY != -1) {
        gCamera.maxY = tc->maxY;
    }

    TaskDestroy(gCurTask);
}

void sub_803E878(void) { sub_803E700(); }

void Task_803E884()
{
    TriggerBossOrGoal *trig = TASK_DATA(gCurTask);
    TriggerCamState *camState = &trig->camState;
    Player *p = &gPlayers[gStageData.playerIndex];

    if ((p->qWorldX >= camState->qMinX - Q(128)) && (p->qWorldX <= camState->qMaxX + Q(128)) && (p->qWorldY >= camState->qMinY - Q(128))
        && (p->qWorldY <= camState->qMaxY + Q(128))) {
        trig->unk3C = 0;

        sub_803E900(camState);

        gCurTask->main = Task_TriggerBossAndGoalRingInit;
    }
}

void sub_803E900(TriggerCamState *camState)
{
    camState->qCamX = Q(gCamera.x);

    if ((gStageData.act == ACT_BOSS) && ((gStageData.zone == ZONE_5) || (gStageData.zone == ZONE_6))) {
        if (gStageData.zone != ZONE_5) {
            camState->qCamY = Q(gCamera.y);
            return;
        }

        if (gCamera.x < 1280) {
            camState->qCamY = Q(gCamera.y);
            camState->qMinY = Q(1340);
        } else {
            camState->qCamY = Q(gCamera.y);
            camState->qMinY = Q(1304);
        }
    } else {
        camState->qCamY = Q(gCamera.y);
    }
}

void Task_DestroyTrigger(void) { TaskDestroy(gCurTask); }