#ifndef GUARD_STAGE_MUSIC_MANAGER_H
#define GUARD_STAGE_MUSIC_MANAGER_H

#include "global.h"

#if (GAME <= GAME_SA2)
void CreateStageMusicManager(void);
#elif (GAME == GAME_SA3)
void CreateStageMusicManager(u16 song);
void sub_80299D4(u16 songId);
void sub_80299FC();
void sub_8029A18(u16 songId);
#endif
extern const u16 gLevelSongs[];

// SA12: game/globals.h
typedef struct MusicManagerState {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 unk4;
    u8 unk5;
    u16 fadeoutSpeed;
#if (GAME == GAME_SA3)
    u16 song;
#endif
} MusicManagerState; /* size: 0xC */

extern MusicManagerState gMusicManagerState;

#endif // GUARD_STAGE_MUSIC_MANAGER_H
