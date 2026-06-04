#ifndef GUARD_SA3_MODULE_UNCLEAR_H
#define GUARD_SA3_MODULE_UNCLEAR_H

#include "types.h"
#include "game/shared/stage/entity.h" // for MapEntity struct
#include "game/shared/stage/player.h"

/* The variable and function declarations in here do not have a corresponding module yet */

// Appears to be multiplayer-only?

// TODO: Type this properly
extern void *SA2_LABEL(gUnknown_03002878);

extern u8 gBackgroundsCopyQueueIndex;
extern u8 SA2_LABEL(gUnknown_03002A80);
extern u8 gBackgroundsCopyQueueCursor;

extern u8 SA2_LABEL(gUnknown_03005390);

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

void sub_80276A8(u8 charId);
void sub_80276F4(u16 somePlayerFlags, u16 playerIndex);
void sub_80296F8(u16 somePlayerFlags);
void sub_802954C(Player *p, s16 worldX, s16 worldY);
void sub_80961E4(u8 param0);

s32 sub_8011BFC(u8, Player *p);

#endif // GUARD_SA3_MODULE_UNCLEAR_H