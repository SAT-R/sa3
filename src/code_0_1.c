#include "global.h"
#include "core.h"
#include "lib/m4a/m4a.h"
#include "game/save.h"
#include "game/stage.h"

extern void sub_8001D58(VoidFn voidFn, u16 color);
extern void sub_8003F40(void);
extern void sub_8003F8C(void);
extern void sub_8003FC8(void);
extern void TaskDestructor_8029774(struct Task *t);

void sub_800214C(void)
{
    Player *players = &gPlayers[0];
    s16 i;

    if (gStageData.gameMode != GAME_MODE_MP_SINGLE_PACK) {
        gStageData.lives = 2;

        for (i = 0; i < (s32)ARRAY_COUNT(gStageData.unkBE); i++) {
            gStageData.unkBE[i] = 0;
        }
    } else {
        gStageData.lives = 0;
        gStageData.unk8E = -1;
        gStageData.taskCheese = NULL;
        TaskDestructor_8029774(NULL);
    }

    {
        Player *p = &players[PLAYER_1];
        for (i = 0; i < 4; i++, p++) {
            p->unkC4[0] = NULL;
            p->unkC4[1] = NULL;
            p->unkC4[2] = NULL;
        }
    }

    if (gStageData.gameMode == 1 || gStageData.gameMode == 2) {
        gStageData.buttonConfig.jump = A_BUTTON;
        gStageData.buttonConfig.attack = B_BUTTON;
        gStageData.buttonConfig.trick = R_BUTTON;
    } else {
        gStageData.buttonConfig.jump = LOADED_SAVE->buttonConfig.jump;
        gStageData.buttonConfig.attack = LOADED_SAVE->buttonConfig.attack;
        gStageData.buttonConfig.trick = LOADED_SAVE->buttonConfig.trick;
    }
}

void WarpToMap(s16 level, u16 entryIndex)
{
    StageData *stageData = &gStageData;
    s16 zone;
    u32 act;

    if (level < 73) {
        if (level < 71) {
            zone = ((level - 1) / 10);
            act = (zone * 10) + 1;
            act = level - act;
            act++;
#ifndef NON_MATCHING
            // stageData->act is a byte anyway, so the cast is redundant.
            act <<= 16;
            act >>= 16;
#endif

            if ((level != 1) && (level != 11)) {
                stageData->zone = zone;
                stageData->act = act;
            } else {
                stageData->act = 1;
            }
        } else {
            stageData->zone = level - 64;
            stageData->act = 1;
        }

        stageData->currMapIndex = level;
    }

    stageData->entryIndex = entryIndex;
    stageData->difficulty = LOADED_SAVE->difficulty;
    stageData->language = LOADED_SAVE->language;
    if ((gStageData.zone < 7) && ((gStageData.act == 1 || gStageData.act == 2) || (gStageData.act == 8) || (gStageData.act == 9))) {
        stageData->unk2 = 1;
    } else {
        stageData->unk2 = LOADED_SAVE->disableTimeLimit;
    }
    stageData->unkB6 = 0;
    stageData->unkB7 = 0;
    stageData->unkB8 = 0;
    stageData->unkB9 = 0;
    stageData->unk8C = 0;

    sub_8001D58(sub_8003F40, RGB_WHITE);
}

void sub_80022E8(s16 level)
{
    StageData *stageData = &gStageData;
    s16 zone;
    u32 act;

    if (stageData->gameMode != GAME_MODE_MP_SINGLE_PACK) {
        if (level < 73) {
            if (level > 70) {
                stageData->zone = (u16)level - 63;
                stageData->act = 3;
                stageData->currMapIndex = level;
            } else {
                zone = (level - 1) / 10;
                act = (((zone * 10) + 1));
                act = (level - act);
                act++;
                stageData->zone = zone;
                stageData->act = act;
                stageData->currMapIndex = level;
            }
        }
        stageData->difficulty = LOADED_SAVE->difficulty;
        stageData->language = LOADED_SAVE->language;
        stageData->unk2 = 0;
        stageData->entryIndex = 0;
    } else {
        stageData->zone = 0;
        stageData->act = 0;
        stageData->currMapIndex = 0;
    }
    stageData->unkB6 = 0;
    stageData->unkB7 = 0;
    stageData->unkB8 = 0;
    stageData->unkB9 = 0;

    sub_8001D58(&sub_8003F8C, RGB_BLACK);
}

void sub_8002388(void)
{
    Player *p;
    s16 i;

    gStageData.unkB7 = 0;
    gStageData.unkB6 = 0;

#ifndef BUG_FIX
    // p is uninitialized here
    // TODO: Should we move this into the loop inside an if (i == 0) block?
    p->framesInvincible = 0;
#endif // BUG_FIX

    for (i = 0; i < (s32)ARRAY_COUNT(gPlayers); i++) {
        p = &gPlayers[i];
        p->unkC4[0] = NULL;
        p->unkC4[1] = NULL;
        p->unkC4[2] = NULL;
        p->taskTagAction = NULL;
        p->unkD4 = 0;
        p->unkD8 = 0;
        p->unkDC = 0;
        p->qCamOffsetX = 0;
        p->qCamOffsetY = 0;
        p->qSpeedGround = 0;
        p->unk60 = 0;
        p->unk5E = 0;
        p->qWorldX = Q(gStageData.respawnX);
        p->qWorldY = Q(gStageData.respawnY);
    }

    m4aMPlayAllStop();
    sub_8003FC8();
}
