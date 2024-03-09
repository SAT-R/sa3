.include "asm/macros.inc"
.include "constants/constants.inc"

.syntax unified
.arm

.section .rodata

    .global rom_footer
rom_footer:

RomBuildInfo:
    .ascii "Sun Apr 18 21:37:53  2004\r\n"
