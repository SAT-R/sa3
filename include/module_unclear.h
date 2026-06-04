#ifndef GUARD_SA3_MODULE_UNCLEAR_H
#define GUARD_SA3_MODULE_UNCLEAR_H

#include "types.h"
#include "game/shared/stage/entity.h" // for MapEntity struct
#include "game/shared/stage/player.h"

/* The variable and function declarations in here do not have a corresponding module yet */

// Appears to be multiplayer-only?

// TODO: Type this properly
extern void *sa2__gUnknown_03002878;

extern u8 gBackgroundsCopyQueueIndex;
extern u8 sa2__gUnknown_03002A80;
extern u8 gBackgroundsCopyQueueCursor;

extern u8 sa2__gUnknown_03005390;

extern u8 gVramGraphicsCopyQueueIndex;
extern u8 gVramGraphicsCopyCursor;

// Multiplayer-related (used in IA item_box_mp.c)
typedef struct {
    /* 0x00 */ u8 filler0[7];
    /* 0x4C */ u8 unk7;
    /* 0x4C */ u8 unk8;
    /* 0x4C */ u8 unk9;
    /* 0x00 */ u8 fillerA[0x2];
    /* 0x4C */ u32 unkC[4];
    /* 0x00 */ u16 unk1C[4][6];
    /* 0x4C */ u8 unk4C;
    /* 0x4D */ u8 unk4D;
    /* 0x4E */ u8 filler4E[0x4];
    /* 0x52 */ u16 unk52;
    /* 0x54 */ u8 unk54;
    /* 0x55 */ u8 unk55; // used to determine item type in MP itemboxes (15 + (unk55 & 0x1))
    /* 0x56 */ u8 unk56;
} Struct_03001060; /* size: ??? */
extern Struct_03001060 gUnknown_03001060;

extern void sub_80003B8(void);

bool32 sub_8001E58(void);
void sub_800214C(void);

void sub_8004D30(void);
void sub_8004DD8(s32 qWorldX, s32 qWorldY);

typedef struct {
    /* 0x00 */ u8 filler0[0x1F];
    /* 0x1F */ u8 unk1F;
    /* 0x20 */ u8 padding20[0xC8C];
} NotificationText; /* 0xCAC */

void sub_80236C8(Sprite *s, u8 textId, NotificationText *notifText);
bool32 sub_8023734(NotificationText *chaoEwramData);
void sub_80239A8(NotificationText *chaoEwramData);
// NOTE: x and y have different signedness, but it's correct
void sub_80274F4(u8, u16 x, s16 y);

// The implementation of sub_80275B8 makes it seem that 'level' is a u8,
// but that way the calling site in some instances will be wrong
// (src/game/interactables/warp.c -> Task_802E6F8)
void sub_80275B8(u32 level, u8, u8);
void sub_80276A8(u8 charId);
void sub_80276F4(u16 somePlayerFlags, u16 playerIndex);
void sub_80296F8(u16 somePlayerFlags);
void sub_802954C(Player *p, s16 worldX, s16 worldY);
void sub_80299FC(void);
void sub_8029A18(u16 songId);
bool32 sub_802C140(s32 worldX, s32 worldY, s32 screenX, s32 screenY);
bool32 IsScreenPtActive32px(s32, s32);
void StageIntro_ShowZoneName(u16, u16, u8);
void sub_8053128(s16, s16);
bool32 sub_805C510(Sprite *s);
bool8 sub_8079FFC(void);
bool8 sub_807A074(void);
void sub_80961E4(u8 param0);

s32 sub_8011BFC(u8, Player *p);

#endif // GUARD_SA3_MODULE_UNCLEAR_H