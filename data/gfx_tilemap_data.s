.include "asm/macros/c_decl.inc"
.include "asm/macros/portable.inc"
.include "asm/macros/function.inc"
.include "constants/gba_constants.inc"

.section .rodata

@    0x083fcc40   CollHeader_zone_1_act_bonus_enemy_fg
@ --- This is after tilemap_data.c ---

    .global gUnknown_08458570
gUnknown_08458570:                 @ --> 0x005D8C64
    .incbin "baserom_sa3.gba", 0x50C924, 0xCC340
