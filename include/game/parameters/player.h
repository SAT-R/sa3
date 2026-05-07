#ifndef GUARD_SA3_GAME_PARAMETERS_PLAYER_H
#define GUARD_SA3_GAME_PARAMETERS_PLAYER_H

#include "constants/zones.h" // for TIME()

// NOTE: While you can lower the delay down to 0,
//       that makes it impossible to execute tricks.
//       The lower the Tag Action delay value,
//       the quicker the player has to tap the trick button for successful tricks.
#define TAG_ACTION_DELAY              TIME(0, 0.5)
#define TAG_ACTION_CHARGING_TIME      TIME(0, 1.0)
#define TAG_ACTION_PARTNER_MOVE_START TIME(0, 0.5)

#endif // GUARD_SA3_GAME_PARAMETERS_PLAYER_H