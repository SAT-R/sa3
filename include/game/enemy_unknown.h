#ifndef GUARD_SA3_ENEMY_UNKNOWN_CODE_H
#define GUARD_SA3_ENEMY_UNKNOWN_CODE_H

#include "game/entity.h"
#include "game/player.h"

typedef struct {
    /* 0x00 */ MapEntity *me;
    /* 0x04 */ bool32 unk4;
    /* 0x08 */ s8 spriteX;
    /* 0x20 */ u8 filler9[0x3];

    // TODO: Make this Vec2_u16
    /* 0x0C */ u16 regionX;
    /* 0x0E */ u16 regionY;

    // TODO: Make this Vec2_32
    /* 0x10 */ s32 posX;
    /* 0x14 */ s32 posY;

    /* 0x18 */ s32 unk18;
    /* 0x1C */ Sprite *spr; // TODO: might be (Sprite2 *)?
    /* 0x20 */ u8 filler20[0x8];
} EnemyUnknownStruc0; /* size: 0x28 */

bool32 sub_805C280(EnemyUnknownStruc0 *);
bool32 sub_805C63C(EnemyUnknownStruc0 *);
bool32 sub_805C890(EnemyUnknownStruc0 *param0, s8 param1);

Player *sub_805CD20(u8);

void sub_805CD70(Vec2_32 *qVal, Vec2_32 *param1, u16 region[2], s8 *param3);
void sub_805CE14(Vec2_32 *qVal, Vec2_32 *param1, u16 region[2], s8 *param3);

#endif // GUARD_SA3_ENEMY_UNKNOWN_CODE_H