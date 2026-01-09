.include "asm/macros/c_decl.inc"
.include "asm/macros/portable.inc"
.include "asm/macros/function.inc"
.include "constants/gba_constants.inc"

.section .rodata

@ This data in only referenced by the SpriteTables struct in SA3 and KATAM.
    .global gUnknown_08358528
gUnknown_08358528:
    .space 0
