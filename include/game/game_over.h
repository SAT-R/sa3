#ifndef GUARD_GAME_OVER_H
#define GUARD_GAME_OVER_H

#include "global.h"

// The module name is very probably different, because it covers more than the Game Over screen.

void Task_800303C(void); // Player-related (Player.unk90.main gets set to this in goal_ring IA)

void sub_8003D04(u8 zone);
void sub_8003D2C(void);
void sub_8003D84(void);
void sub_8003D88(void);
void sub_8003D8C(void);
void sub_8003DC4(u16 param0);
void sub_8003DF0(u16 song);
void sub_8003E0C(u16 song);
void sub_8003E28(u16 song); // StopSong?

#endif // GUARD_GAME_OVER_H
