#ifndef GUARD_PLAYER_CONTROLS_H
#define GUARD_PLAYER_CONTROLS_H

#include "game/entity.h"

typedef struct {
    u16 jump;
    u16 attack;
    u16 trick;
} ButtonConfig;

typedef struct {
    u8 jump;
    u8 attack;
    u8 trick;
} ButtonConfigPacked;

extern ButtonConfig gPlayerControls;

void SetPlayerControls(u16 jump, u16 attack, u16 trick);

#endif // GUARD_PLAYER_CONTROLS_H
