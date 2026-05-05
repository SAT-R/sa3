#ifndef GUARD_STAGE_MUSIC_MANAGER_H
#define GUARD_STAGE_MUSIC_MANAGER_H

#include "global.h"

#if (GAME <= GAME_SA2)
void CreateStageMusicManager(void);
#elif (GAME == GAME_SA3)
void CreateStageMusicManager(u16 song);
#endif
extern const u16 gLevelSongs[];

#endif
