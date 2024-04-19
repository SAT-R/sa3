#ifndef GUARD_SA3_MODULE_UNCLEAR_H
#define GUARD_SA3_MODULE_UNCLEAR_H

#include "types.h"
#include "game/player.h"

/* The variable and function declarations in here do not yet have a corresponding module
 */

bool32 sub_8001E58(void);

void sub_8003DF0(u16 song);
void sub_8003E28(u16 song);
bool32 sub_8004E98(Player *p, u16 song);
void sub_800A218(Player *p);

// 0x0800D87C
void SetPlayerCallback(Player *p, PlayerCallback *callback);

void sub_8016F28(Player *p);
void sub_8019A64(Player *p);

extern bool32 sub_8020700(Sprite *s, s32 worldX, s32 worldY, s16 p3, Player *p, s16 p5);

// Collision
extern u32 sub_8020874(Sprite *s, s32 worldX, s32 worldY, s16 p3, Player *p, s16 p5,
                       u8 p6);

void sub_80236C8(void *, u8 p1, void *);
bool32 sub_8023734(void *chaoEwramData);
void sub_80239A8(void *chaoEwramData);
void sub_80275B8(u8, u8, u8);
void sub_80299FC(void);
void sub_8029A18(u16 songId);

#endif // GUARD_SA3_MODULE_UNCLEAR_H