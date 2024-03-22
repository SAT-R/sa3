.include "asm/macros/function.inc"
.include "constants/gba_constants.inc"

.section .rodata

.align 2 , 0

.if 0
.endif

@ TODO: Should be part of libc or libgcc
.space 0x100

    .global gUnknown_08E2EAB8
gUnknown_08E2EAB8:
    .incbin "baserom.gba", 0x00E2EAB8, 0x18

    .global gUnknown_08E2EAD0
gUnknown_08E2EAD0:
    .incbin "baserom.gba", 0x00E2EAD0, 0x24

    .global gUnknown_08E2EAF4
gUnknown_08E2EAF4:
    .incbin "baserom.gba", 0x00E2EAF4, 0x10

    .global gUnknown_08E2EB04
gUnknown_08E2EB04:
    .incbin "baserom.gba", 0x00E2EB04, 0x14

    .global gUnknown_08E2EB18
gUnknown_08E2EB18:
    .incbin "baserom.gba", 0x00E2EB18, 0x144

    .global gUnknown_08E2EC5C
gUnknown_08E2EC5C:
    .incbin "baserom.gba", 0x00E2EC5C, 0x1C

    .global gUnknown_08E2EC78
gUnknown_08E2EC78:
    .incbin "baserom.gba", 0x00E2EC78, 0x20

    .global gUnknown_08E2EC98
gUnknown_08E2EC98:
    .incbin "baserom.gba", 0x00E2EC98, 0x68

    .global gUnknown_08E2ED00
gUnknown_08E2ED00:
    .incbin "baserom.gba", 0x00E2ED00, 0x18

    .global gUnknown_08E2ED18
gUnknown_08E2ED18:
    .incbin "baserom.gba", 0x00E2ED18, 0x30

    .global gUnknown_08E2ED48
gUnknown_08E2ED48:
    .incbin "baserom.gba", 0x00E2ED48, 0x8

    .global gUnknown_08E2ED50
gUnknown_08E2ED50:
    .incbin "baserom.gba", 0x00E2ED50, 0x100

    .global gUnknown_08E2EE50
gUnknown_08E2EE50:
    .incbin "baserom.gba", 0x00E2EE50, 0xA0

    .global gUnknown_08E2EEF0
gUnknown_08E2EEF0:
    .incbin "baserom.gba", 0x00E2EEF0, 0x20

    .global gUnknown_08E2EF10
gUnknown_08E2EF10:
    .incbin "baserom.gba", 0x00E2EF10, 0x34

    .global gUnknown_08E2EF44
gUnknown_08E2EF44:
    .incbin "baserom.gba", 0x00E2EF44, 0x10

    .global gUnknown_08E2EF54
gUnknown_08E2EF54:
    .incbin "baserom.gba", 0x00E2EF54, 0x10

    .global gUnknown_08E2EF64
gUnknown_08E2EF64:
    .incbin "baserom.gba", 0x00E2EF64, 0x28

    .global gUnknown_08E2EF8C
gUnknown_08E2EF8C:
    .incbin "baserom.gba", 0x00E2EF8C, 0x1C

    .global gUnknown_08E2EFA8
gUnknown_08E2EFA8:
    .incbin "baserom.gba", 0x00E2EFA8, 0x468

    .global gUnknown_08E2F410
gUnknown_08E2F410:
    .incbin "baserom.gba", 0x00E2F410, 0x2CE34

    .global gUnknown_08E5C244
gUnknown_08E5C244:
    .incbin "baserom.gba", 0x00E5C244, 0x346C

    .global gUnknown_08E5F6B0
gUnknown_08E5F6B0:
    .incbin "baserom.gba", 0x00E5F6B0, 0x1F3C8

    .global gUnknown_08E7EA78
gUnknown_08E7EA78:
    .incbin "baserom.gba", 0x00E7EA78, 0x18
