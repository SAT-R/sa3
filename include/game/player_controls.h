#ifndef GUARD_PLAYER_CONTROLS_H
#define GUARD_PLAYER_CONTROLS_H

#include "game/entity.h"

typedef struct {
    u16 jump;
    u16 attack;
    u16 trick;
} ButtonConfig;

extern ButtonConfig gPlayerControls;

void SetPlayerControls(u16 jump, u16 attack, u16 trick);

#endif // GUARD_PLAYER_CONTROLS_H
