#ifndef GUARD_SA3_GAME_CHAO_H
#define GUARD_SA3_GAME_CHAO_H

#define NUM_CHAO_PER_ZONE 10

extern u16 GetChaoFlag(u16 zoneIndex, u16 chaoIndex);
extern void SetChaoFlag(u16 chaoIndex);
extern s16 GetChaoCount(u16 ZoneIndex);

#endif // GUARD_SA3_GAME_CHAO_H
