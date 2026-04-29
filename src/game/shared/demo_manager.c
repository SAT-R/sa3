#include "global.h"
#include "core.h"
#include "game/game.h"
#include "game/player.h"
#include "game/stage.h"
#include "module_unclear.h"
#include "constants/zones.h"

void DemoPlay_Init(void)
{
    gStageData.playerIndex = PLAYER_1;
    gStageData.gameMode = GAME_MODE_DEMO;
    gStageData.zone = ZONE_1;
    gStageData.act = ACT_1;
    gStageData.currentLevel = LEVEL_INDEX(ZONE_1, ACT_1);
    sub_800214C();
    gPlayers[PLAYER_1].charFlags.partnerIndex = PLAYER_2;
    gPlayers[PLAYER_1].charFlags.character = SONIC;
    gPlayers[PLAYER_1].charFlags.someIndex = 4;
    gPlayers[PLAYER_2].charFlags.partnerIndex = PLAYER_1;
    gPlayers[PLAYER_2].charFlags.character = TAILS;
    gPlayers[PLAYER_2].charFlags.someIndex = 2;
    gPlayers[PLAYER_3].charFlags.someIndex = 0;
    gPlayers[PLAYER_4].charFlags.someIndex = 0;
    WarpToMap(gStageData.currentLevel, 0U);
}
