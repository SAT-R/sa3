#ifndef GUARD_SA3_PLATFORM_SHARED_H
#define GUARD_SA3_PLATFORM_SHARED_H

#include "game/entity.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ s32 qWorldX;
    /* 0x10 */ s32 qWorldY;
    /* 0x14 */ s32 qHalfHeight;
    /* 0x18 */ s32 qHalfWidth;
    /* 0x1C */ s32 qMiddleX;
    /* 0x20 */ s32 qMiddleY;
    /* 0x24 */ s16 somePosX;
    /* 0x26 */ s16 somePosY;
    /* 0x28 */ u16 unk28;
    /* 0x2A */ u8 unk2A;
    /* 0x2B */ u8 kind;
} PlatformShared;

extern u16 sub_804DC38(u8 kind, s32 worldX, s32 worldY, MapEntity *me);
extern void sub_804DD68(PlatformShared *platform);
extern void DrawPlatformShared(PlatformShared *platform, Sprite *);

#endif // GUARD_SA3_PLATFORM_SHARED_H