#ifndef GUARD_SA3_MODULE_UNCLEAR_H
#define GUARD_SA3_MODULE_UNCLEAR_H

#include "types.h"
#include "game/player.h"

/* The variable and function declarations in here do not yet have a corresponding module
 * yet
 */

// Appears to be multiplayer-only?

typedef struct {
    /* 0x00 */ u8 filler0[0x4C];
    /* 0x4C */ u8 unk4C;
    /* 0x4D */ u8 unk4D;
    /* 0x4E */ u8 filler4E[0x8];
    /* 0x56 */ u8 unk56;
} Struct_03001060; /* size: ??? */
extern Struct_03001060 gUnknown_03001060;

bool32 sub_8001E58(void);
void sub_8002210(s16, u16);
void sub_8003DF0(u16 song);
void sub_8003E0C(u16 song);
void sub_8003E28(u16 song);
void sub_8004D30(void);
void sub_8004DD8(s32 qWorldX, s32 qWorldY);
bool32 sub_8004E98(Player *p, u16 song);
void sub_8004F10(Player *, u16 song);
void sub_8006824(Player *p);
void sub_800A218(Player *p);
void Player_800E5D0(Player *p);
void Player_800E5EC(Player *p);
void Player_800E604(Player *p);

// Some collision function
s32 sub_80110E8(u16, Player *, u8 *, u32 *);

// 0x0800D87C
void SetPlayerCallback(Player *p, PlayerCallback *callback);
void sub_800E6CC(Player *p);

void Player_80149E4(Player *p);
void sub_8016F28(Player *p);
void sub_8019A64(Player *p);

extern bool32 sub_8020700(Sprite *s, s32 worldX, s32 worldY, s16 p3, Player *p, s16 p5);

// Collision
extern u32 sub_8020874(Sprite *s, s32 worldX, s32 worldY, s16 p3, Player *p, s16 p5, u8 p6);
u32 sub_8020950(Sprite *s, s32 worldX, s32 worldY, Player *p, void *param4);
void sub_80213B0(Sprite *s, Player *p);

void sub_80236C8(void *, u8 p1, void *);
bool32 sub_8023734(void *chaoEwramData);
void sub_80239A8(void *chaoEwramData);
// NOTE: x and y have different signedness, but it's correct
void sub_80274F4(u8, u16 x, s16 y);
void sub_80275B8(u8, u8, u8);
void sub_80276A8(u8 charId);
void sub_802954C(Player *p, s16 worldX, s16 worldY);
void sub_80299FC(void);
void sub_8029A18(u16 songId);
bool32 sub_805C510(Sprite *s);
void sub_8097C54(u16);

#endif // GUARD_SA3_MODULE_UNCLEAR_H