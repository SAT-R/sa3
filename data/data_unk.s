.include "asm/macros/c_decl.inc"
.include "asm/macros/portable.inc"
.include "asm/macros/function.inc"
.include "constants/gba_constants.inc"

.section .rodata

@ Japanese
    .global gNotificationTextTextsArray
gNotificationTextTextsArray:
    .incbin "baserom_sa3.gba", 0x00684040, 0x825C

@ Target of ptr array 'gUnknown_08E7E678'
    .global gUnknown_0868C29C
gUnknown_0868C29C:
    .byte 0x55, 0x01
    
@ Target of ptr array 'gUnknown_08E7E678'
    .global gUnknown_0868C29E
gUnknown_0868C29E:
    .byte 0x55, 0x01
