#ifndef GUARD_GAME_H
#define GUARD_GAME_H

#include "global.h"
#include "sprite.h"
#include "multi_sio.h"
#include "task.h"

// #include "sakit/globals.h"
// #include "sakit/player.h"
#include "constants/characters.h"

#define GAME_MODE_SINGLE_PLAYER    0
#define GAME_MODE_DEMO             1
#define GAME_MODE_2                2
#define GAME_MODE_TIME_ATTACK      3
#define GAME_MODE_BOSS_TIME_ATTACK 4
#define GAME_MODE_5                5
#define GAME_MODE_MP_MULTI_PACK    6
#define GAME_MODE_MP_SINGLE_PACK   7

#if ((GAME == GAME_SA1) || (GAME == GAME_SA2))
#define CURRENT_GAME_MODE gGameMode
#define CURRENT_LEVEL     gCurrentLevel
extern s8 CURRENT_LEVEL;
#define ENT_MGR_TASK gEntitiesManagerTask
#define RING_COUNT   gRingCount
#define LIFE_COUNT   gNumLives
#elif (GAME == GAME_SA3)
#define CURRENT_GAME_MODE (gStageData.gameMode)
#define CURRENT_LEVEL     (gStageData.currentLevel)
#define ENT_MGR_TASK      (gStageData.taskEntitiesManager)
#define RING_COUNT        (gStageData.rings)
#define LIFE_COUNT        (gStageData.lives)
#endif

void GameStart(void);

// rodata
extern const s16 gPlayerCharacterIdleAnims[NUM_CHARACTERS];

// NOTE: Proc type should be the same as SetStageSpawnPosInternal!
// extern void SetStageSpawnPos(u32 character, u32 level, u32 p2, Player *player);

#define GAME_MODE_IS_SINGLE_PLAYER(mode)                                                                                                   \
    ((mode == GAME_MODE_SINGLE_PLAYER) || (mode == GAME_MODE_DEMO) || (mode == GAME_MODE_2) || (mode == GAME_MODE_TIME_ATTACK)             \
     || (mode == GAME_MODE_BOSS_TIME_ATTACK))

#define GAME_MODE_IS_MULTI_PLAYER(mode) !GAME_MODE_IS_SINGLE_PLAYER(mode)

#if (GAME == GAME_SA1) && !defined(BUG_FIX)
// NOTE: LIFE_COUNT is u8, so without the bounds-check,
//       which SA1 did not have, 255 would overflow to 0.
//       During regular gameplay you would not get that many 1UPs, though.
#define LIVES_BOUND_CHECK_A(lives)            (lives)
#define LIVES_BOUND_CHECK_B(lives)            (lives)
#define NEW_LIVE_COUNT(_type, _varname, _inc) (LIFE_COUNT += 1)

#define BOUND_CHK_VARNAME LIFE_COUNT
#else
#define LIVES_BOUND_CHECK_A(lives)                                                                                                         \
    ({                                                                                                                                     \
        if ((lives) > 255)                                                                                                                 \
            (lives) = 255;                                                                                                                 \
        LIFE_COUNT = (lives);                                                                                                              \
    })

#define LIVES_BOUND_CHECK_B(lives)                                                                                                         \
    ({                                                                                                                                     \
        if (lives > 255) {                                                                                                                 \
            LIFE_COUNT = 255;                                                                                                              \
        } else {                                                                                                                           \
            LIFE_COUNT = lives;                                                                                                            \
        }                                                                                                                                  \
    })

#define NEW_LIVE_COUNT(_type, _varname, _inc)                                                                                              \
    _type _varname = divResA - divResB;                                                                                                    \
    _varname += _inc;

#define BOUND_CHK_VARNAME lives
#endif

#define INCREMENT_SCORE_BASE(_inc, _restartMusic, BoundCheck)                                                                              \
    {                                                                                                                                      \
        s32 divResA, divResB;                                                                                                              \
        s32 oldScore = gLevelScore;                                                                                                        \
        gLevelScore += _inc;                                                                                                               \
                                                                                                                                           \
        divResA = Div(gLevelScore, 50000);                                                                                                 \
        divResB = Div(oldScore, 50000);                                                                                                    \
                                                                                                                                           \
        if ((divResA != divResB) && (CURRENT_GAME_MODE == GAME_MODE_SINGLE_PLAYER)) {                                                      \
            NEW_LIVE_COUNT(u16, BOUND_CHK_VARNAME, LIFE_COUNT);                                                                            \
            BoundCheck(BOUND_CHK_VARNAME);                                                                                                 \
                                                                                                                                           \
            if (_restartMusic)                                                                                                             \
                gMusicManagerState.unk3 = 0x10 | 0x0;                                                                                      \
        }                                                                                                                                  \
    }

#define INCREMENT_SCORE_A(_inc) INCREMENT_SCORE_BASE(_inc, FALSE, LIVES_BOUND_CHECK_A)
#define INCREMENT_SCORE(_inc)   INCREMENT_SCORE_BASE(_inc, TRUE, LIVES_BOUND_CHECK_A)
#define INCREMENT_SCORE_B(_inc) INCREMENT_SCORE_BASE(_inc, TRUE, LIVES_BOUND_CHECK_B)

#if ((GAME == GAME_SA1) || (GAME == GAME_SA2))
#define SET_MUSIC_MGR_RESTART gMusicManagerState.unk3 = 0x10 | 0x0;
#elif (GAME == GAME_SA3)
#define SET_MUSIC_MGR_RESTART
#endif

#define INCREMENT_RINGS(_inc)                                                                                                              \
    {                                                                                                                                      \
        s32 prevLives, newLives;                                                                                                           \
        u16 oldRings = RING_COUNT;                                                                                                         \
        RING_COUNT = oldRings + (_inc);                                                                                                    \
                                                                                                                                           \
        if (!(IS_EXTRA_STAGE(CURRENT_LEVEL))) {                                                                                            \
            newLives = Div(RING_COUNT, 100);                                                                                               \
            prevLives = Div(oldRings, 100);                                                                                                \
            if ((newLives != prevLives) && (CURRENT_GAME_MODE == GAME_MODE_SINGLE_PLAYER)) {                                               \
                u16 lives = LIFE_COUNT + 1;                                                                                                \
                LIFE_COUNT = LIVES_BOUND_CHECK_A(lives);                                                                                   \
                SET_MUSIC_MGR_RESTART;                                                                                                     \
            }                                                                                                                              \
        }                                                                                                                                  \
    }
#endif // GUARD_GAME_H
