#ifndef GUARD_SA3_MULTI_SIO_STUFF_H
#define GUARD_SA3_MULTI_SIO_STUFF_H

// TODO: This is for asm/multi_sio_stuff.s.
// Probably will have a different name over time.

// NOTE: x and y have different signedness, but it's correct according to a call in checkpoint.c?
void sub_80274F4(u8, u16 x, s16 y);

// The implementation of sub_80275B8 makes it seem that 'level' is a u8,
// but that way the calling site in some instances will be wrong
// (src/game/interactables/warp.c -> Task_802E6F8)
void sub_80275B8(u32 level, u8, u8);

#endif // GUARD_SA3_MULTI_SIO_STUFF_H