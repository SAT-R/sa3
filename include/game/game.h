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

#define GAME_SA1     1
#define GAME_SA2     2
#define GAME_SA3     3
#define GAME_KATAM   4
#define CURRENT_GAME GAME_SA3

void GameStart(void);

// rodata
extern const AnimId gPlayerCharacterIdleAnims[NUM_CHARACTERS];

// NOTE: Proc type should be the same as SetStageSpawnPosInternal!
// extern void SetStageSpawnPos(u32 character, u32 level, u32 p2, Player *player);

#define GAME_MODE_IS_SINGLE_PLAYER(mode)                                                \
    ((mode == GAME_MODE_SINGLE_PLAYER) || (mode == GAME_MODE_DEMO)                      \
     || (mode == GAME_MODE_2) || (mode == GAME_MODE_TIME_ATTACK)                        \
     || (mode == GAME_MODE_BOSS_TIME_ATTACK))

#define INCREMENT_SCORE_A(incVal)                                                       \
    {                                                                                   \
        s32 divResA, divResB;                                                           \
        s32 oldScore = gLevelScore;                                                     \
        gLevelScore += incVal;                                                          \
                                                                                        \
        divResA = Div(gLevelScore, 50000);                                              \
        divResB = Div(oldScore, 50000);                                                 \
                                                                                        \
        if ((divResA != divResB) && (gGameMode == GAME_MODE_SINGLE_PLAYER)) {           \
            u16 lives = divResA - divResB;                                              \
            lives += gNumLives;                                                         \
                                                                                        \
            gNumLives = ({                                                              \
                if (lives > 255)                                                        \
                    lives = 255;                                                        \
                lives;                                                                  \
            });                                                                         \
        }                                                                               \
    }

#define INCREMENT_SCORE(incVal)                                                         \
    {                                                                                   \
        s32 divResA, divResB;                                                           \
        s32 oldScore = gLevelScore;                                                     \
        gLevelScore += incVal;                                                          \
                                                                                        \
        divResA = Div(gLevelScore, 50000);                                              \
        divResB = Div(oldScore, 50000);                                                 \
                                                                                        \
        if ((divResA != divResB) && (gGameMode == GAME_MODE_SINGLE_PLAYER)) {           \
            u16 lives = divResA - divResB;                                              \
            lives += gNumLives;                                                         \
                                                                                        \
            gNumLives = ({                                                              \
                if (lives > 255)                                                        \
                    lives = 255;                                                        \
                lives;                                                                  \
            });                                                                         \
                                                                                        \
            gUnknown_030054A8.unk3 = 16;                                                \
        }                                                                               \
    }

#define INCREMENT_RINGS(incVal)                                                         \
    {                                                                                   \
        s32 prevLives, newLives;                                                        \
        s32 oldRings = gRingCount;                                                      \
        gRingCount += incVal;                                                           \
                                                                                        \
        if (!IS_EXTRA_STAGE(gCurrentLevel)) {                                           \
            newLives = Div(gRingCount, 100);                                            \
            prevLives = Div(oldRings, 100);                                             \
                                                                                        \
            if ((newLives != prevLives) && (gGameMode == GAME_MODE_SINGLE_PLAYER)) {    \
                u16 lives = gNumLives + 1;                                              \
                                                                                        \
                gNumLives = ({                                                          \
                    if (lives > 255)                                                    \
                        lives = 255;                                                    \
                    lives;                                                              \
                });                                                                     \
                                                                                        \
                gUnknown_030054A8.unk3 = 16;                                            \
            }                                                                           \
        }                                                                               \
    }

#define INCREMENT_RINGS2(incVal)                                                        \
    {                                                                                   \
        s32 prevLives, newLives;                                                        \
        s32 oldRings = gRingCount;                                                      \
        gRingCount += incVal;                                                           \
                                                                                        \
        if (!IS_EXTRA_STAGE(gCurrentLevel)) {                                           \
            newLives = Div(gRingCount, 100);                                            \
            prevLives = Div(oldRings, 100);                                             \
                                                                                        \
            /* RingsScatterSingleplayer_NormalGravity turns the if around */            \
            if ((newLives != prevLives) && (gGameMode == GAME_MODE_SINGLE_PLAYER)) {    \
                u16 lives = gNumLives + 1;                                              \
                                                                                        \
                gNumLives = ({                                                          \
                    if (lives > 255)                                                    \
                        lives = 255;                                                    \
                    lives;                                                              \
                });                                                                     \
                                                                                        \
                gUnknown_030054A8.unk3 = 16;                                            \
            }                                                                           \
        }                                                                               \
    }

#endif // GUARD_GAME_H
