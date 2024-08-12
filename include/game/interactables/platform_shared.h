#ifndef GUARD_SA3_PLATFORM_SHARED_H
#define GUARD_SA3_PLATFORM_SHARED_H

#include "game/entity.h"

extern u16 sub_804DC38(u8 kind, s32 worldX, s32 worldY, MapEntity *me);
extern void sub_804DD68(void *platform);
extern void sub_804DDD4(void *platform, Sprite *);

#endif // GUARD_SA3_PLATFORM_SHARED_H