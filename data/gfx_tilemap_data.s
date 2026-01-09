.include "asm/macros/c_decl.inc"
.include "asm/macros/portable.inc"
.include "asm/macros/function.inc"
.include "constants/gba_constants.inc"

.section .rodata

@    0x083fcc40   CollHeader_zone_1_act_bonus_enemy_fg
@ --- This is after tilemap_data.c ---

    .global gUnknown_084584B0
gUnknown_084584B0:                 @ --> 0x085D8C64
    .incbin "baserom_sa3.gba", 0x458570, 0x1806F4
