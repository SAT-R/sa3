.include "asm/macros/function.inc"
.include "constants/gba_constants.inc"

.section .rodata

    .space 5

    .global gUnknown_08E7EAB0
gUnknown_08E7EAB0:
    .incbin "baserom.gba", 0x00E7EAB0, 0x2E8
    
    .global gUnknown_08E7ED98
gUnknown_08E7ED98:
    .incbin "baserom.gba", 0x00E7ED98, 0x4

    .global gUnknown_08E7ED9C
gUnknown_08E7ED9C:
    .incbin "baserom.gba", 0x00E7ED9C, 0x14

    .global gUnknown_08E7EDB0
gUnknown_08E7EDB0:
    .incbin "baserom.gba", 0x00E7EDB0, 0x8

    .global gUnknown_08E7EDB8
gUnknown_08E7EDB8:
    .incbin "baserom.gba", 0x00E7EDB8, 0x400

    .global gUnknown_08E7F1B8
gUnknown_08E7F1B8:
    .incbin "baserom.gba", 0x00E7F1B8, 0x4

    .global gUnknown_08E7F1BC
gUnknown_08E7F1BC:
    .incbin "baserom.gba", 0x00E7F1BC, 0x4

    .global gUnknown_08E7F1C0
gUnknown_08E7F1C0:
    .incbin "baserom.gba", 0x00E7F1C0, 0x4

    .global gUnknown_08E7F1C4
gUnknown_08E7F1C4:
    .incbin "baserom.gba", 0x00E7F1C4, 0x4

    .global gUnknown_08E7F1C8
gUnknown_08E7F1C8:
    .incbin "baserom.gba", 0x00E7F1C8, 0x4

    .global gUnknown_08E7F1CC
gUnknown_08E7F1CC:
    .incbin "baserom.gba", 0x00E7F1CC, 0x28
