#ifndef GUARD_SA3_MODULE_UNCLEAR_H
#define GUARD_SA3_MODULE_UNCLEAR_H

#include "types.h"
#include "game/player.h"

/* The variable and function declarations in here do not yet have a corresponding module
 */

bool32 sub_8001E58(void);

void sub_8003E28(u16 song);
bool32 sub_8004E98(Player *p, u16 song);

void sub_80236C8(void *, u8 p1, void *);
void sub_80299FC(void);

#endif // GUARD_SA3_MODULE_UNCLEAR_H