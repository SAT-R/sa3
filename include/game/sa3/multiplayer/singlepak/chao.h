#ifndef GUARD_SA3_MP_SINGLEPAK_CHAO_H
#define GUARD_SA3_MP_SINGLEPAK_CHAO_H

#include "game/shared/stage/player.h" // for Player

void CreateNewMPChao(Player *p, s16 worldX, s16 worldY);

typedef struct {
    /* 0x00 */ s32 qWorldX;
    /* 0x04 */ s32 qWorldY;
    /* 0x04 */ s32 qUnk8;
    /* 0x04 */ s32 qUnkC;
    /* 0x04 */ u8 filler18[0x4];
    /* 0x14 */ Sprite s;
    /* 0x3C */ Player *player;
} MPChao; /* 0x40 */


#endif // GUARD_SA3_MP_SINGLEPAK_CHAO_H
