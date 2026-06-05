#ifndef GUARD_SA3_MULTI_SIO_STUFF_H
#define GUARD_SA3_MULTI_SIO_STUFF_H

#include "game/shared/stage/player.h" // Player

// TODO: This is for asm/multi_sio_stuff.s.
// Probably will have a different name over time.

// NOTE: x and y have different signedness, but it's correct according to a call in checkpoint.c?
void sub_80274F4(u8, u16 x, s16 y);

// The implementation of sub_80275B8 makes it seem that 'level' is a u8,
// but that way the calling site in some instances will be wrong
// (src/game/interactables/warp.c -> Task_802E6F8)
void sub_80275B8(u32 level, u8, u8);

void sub_80276A8(u8 charId);
void sub_80276F4(u16 somePlayerFlags, u16 playerIndex);
void sub_80296F8(u16 somePlayerFlags);
void sub_802954C(Player *p, s16 worldX, s16 worldY);

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

#endif // GUARD_SA3_MULTI_SIO_STUFF_H