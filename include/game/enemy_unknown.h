#ifndef GUARD_SA3_ENEMY_UNKNOWN_CODE_H
#define GUARD_SA3_ENEMY_UNKNOWN_CODE_H

typedef struct {
    /* 0x00 */ MapEntity *me;
    /* 0x04 */ s32 unk4;
    /* 0x08 */ s8 spriteX;
    /* 0x20 */ u8 filler9[0x3];
    /* 0x0C */ u16 regionX;
    /* 0x0E */ u16 regionY;
    /* 0x10 */ s32 posX;
    /* 0x14 */ s32 posY;
    /* 0x18 */ s32 unk18;
    /* 0x1C */ Sprite *spr;
    /* 0x20 */ u8 filler20[0x8];
} EnemyUnknownStruc0; /* size: 0x28 */

bool32 sub_805C280(EnemyUnknownStruc0 *);
bool32 sub_805C63C(EnemyUnknownStruc0 *);

#endif // GUARD_SA3_ENEMY_UNKNOWN_CODE_H