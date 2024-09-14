.include "asm/macros/function.inc"
.include "constants/gba_constants.inc"
.include "constants/misc_constants.inc"

.section .rodata

.align 2 , 0

.if 0
.endif

@ TODO: Should be part of libc or libgcc
.space 0x100

    .global gUnknown_08E2EAB8
gUnknown_08E2EAB8:
    .4byte gUnknown_08E7BC8C
    .4byte gUnknown_08E7BE90
    .4byte gUnknown_08E7C22C
    .4byte gUnknown_08E7C6F0
    .4byte gUnknown_08E7CC44
    .4byte gUnknown_08E7CE78

    .global gUnknown_08E2EAD0
gUnknown_08E2EAD0:
    .incbin "baserom.gba", 0x00E2EAD0, 0x24

    .global gUnknown_08E2EAF4
gUnknown_08E2EAF4:
    .4byte 1326, 1324, 1325, 67

    .global gUnknown_08E2EB04
gUnknown_08E2EB04:
    .incbin "baserom.gba", 0x00E2EB04, 0x14

    .global gUnknown_08E2EB18
gUnknown_08E2EB18:
    .incbin "baserom.gba", 0x00E2EB18, 0x84
    
    .global gUnknown_08E2EB9C
gUnknown_08E2EB9C:
    .4byte gUnknown_080CFBD4
    .4byte gUnknown_080CFBF8
    
    .global gUnknown_08E2EBA4
gUnknown_08E2EBA4:
    .4byte gUnknown_080CFC0A
    .4byte gUnknown_080CFC2E

    .global gUnknown_08E2EBAC
gUnknown_08E2EBAC:
    .4byte gUnknown_080CFC40
    .4byte gUnknown_080CFC70
    .4byte gUnknown_080CFC8E
    .4byte gUnknown_080CFCB2
    .4byte gUnknown_080CFCD0
    .4byte gUnknown_080CFCE8
    .4byte gUnknown_080CFD06
    .4byte gUnknown_080CFD42
    .4byte gUnknown_080CFD60
    .4byte gUnknown_080CFD78

    .global gUnknown_08E2EBD4
gUnknown_08E2EBD4:
    .4byte gUnknown_080CFDBA
    .4byte gUnknown_080CFDDE

    .global gUnknown_08E2EBDC
gUnknown_08E2EBDC:
    .4byte gUnknown_080CFDF0
    .4byte gUnknown_080CFE14

    .global gUnknown_08E2EBE4
gUnknown_08E2EBE4:
    .4byte gUnknown_080CFE26
    .4byte gUnknown_080CFE44
    .4byte gUnknown_080CFE56
    .4byte gUnknown_080CFE6E
    .4byte gUnknown_080CFE8C
    .4byte gUnknown_080CFEAA
    .4byte gUnknown_080CFEC8
    .4byte gUnknown_080CFEEC
    .4byte gUnknown_080CFF0A
    .4byte gUnknown_080CFF22
    .4byte gUnknown_080CFF46
    .4byte gUnknown_080CFF5E
    .4byte gUnknown_080CFF7C
    .4byte gUnknown_080CFF8E
    .4byte gUnknown_080CFFAC
    .4byte gUnknown_080CFFC4
    .4byte gUnknown_080CFFD6
    .4byte gUnknown_080CFFF4
    .4byte gUnknown_080D0006
    .4byte gUnknown_080D0018
    .4byte gUnknown_080D002A
    .4byte gUnknown_080D0054
    .4byte gUnknown_080D0072
    .4byte gUnknown_080D008A
    .4byte gUnknown_080D00B4
    .4byte gUnknown_080D00CC
    .4byte gUnknown_080D00DE
    .4byte gUnknown_080D00FC

    .global gUnknown_08E2EC54
gUnknown_08E2EC54:
    .4byte gUnknown_080D010E
    .4byte gUnknown_080D0132

    .global gPlatformPathTable
gPlatformPathTable:
    .4byte gUnknown_08E2EB9C
    .4byte gUnknown_08E2EBA4
    .4byte gUnknown_08E2EBAC
    .4byte gUnknown_08E2EBD4
    .4byte gUnknown_08E2EBDC
    .4byte gUnknown_08E2EBE4
    .4byte gUnknown_08E2EC54

    .global gUnknown_08E2EC78
gUnknown_08E2EC78:
    .4byte gUnknown_080D1B64
    .4byte gUnknown_080D1B70
    .4byte gUnknown_080D1B7C
    .4byte gUnknown_080D1B88
    .4byte gUnknown_080D1B94
    .4byte gUnknown_080D1BA0
    .4byte gUnknown_080D1BAC
    .4byte gUnknown_080D1BB8

    .global gUnknown_08E2EC98
gUnknown_08E2EC98:
    .4byte gUnknown_080D22C8
    .4byte gUnknown_080D23E8
    .4byte gUnknown_080D2834
    .4byte gUnknown_080D2D44
    .4byte gUnknown_080D2F88
    .4byte gUnknown_080D3804
    .4byte gUnknown_080D3DD8
    .4byte NULL
    .4byte gUnknown_080D50F8
    .4byte NULL
    .4byte NULL
    .4byte gUnknown_080D51A0
    .4byte NULL
    .4byte NULL
    .4byte NULL
    .4byte NULL
    .4byte NULL
    .4byte NULL
    .4byte NULL
    .4byte NULL
    .4byte gUnknown_080D523C
    .4byte NULL
    .4byte NULL
    .4byte NULL
    .4byte NULL
    .4byte NULL

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
    .incbin "baserom.gba", 0x00E5F6B0, 0x1C5DC
    
    .global gUnknown_08E7BC8C
gUnknown_08E7BC8C:
    .incbin "baserom.gba", 0x00E7BC8C, 0x204

    .global gUnknown_08E7BE90
gUnknown_08E7BE90:
    .incbin "baserom.gba", 0x00E7BE90, 0x39C

    .global gUnknown_08E7C22C
gUnknown_08E7C22C:
    .incbin "baserom.gba", 0x00E7C22C, 0x4C4

    .global gUnknown_08E7C6F0
gUnknown_08E7C6F0:
    .incbin "baserom.gba", 0x00E7C6F0, 0x554
    
    .global gUnknown_08E7CC44
gUnknown_08E7CC44:
    .incbin "baserom.gba", 0x00E7CC44, 0x234
    
    .global gUnknown_08E7CE78
gUnknown_08E7CE78:
    .incbin "baserom.gba", 0x00E7CE78, 0x400
    
    .global gUnknown_08E7D278
gUnknown_08E7D278:
    .incbin "baserom.gba", 0x00E7D278, 0x400
    
    .global gUnknown_08E7D678
gUnknown_08E7D678:
    .incbin "baserom.gba", 0x00E7D678, 0x400
    
    .global gUnknown_08E7DA78
gUnknown_08E7DA78:
    .incbin "baserom.gba", 0x00E7DA78, 0x400
    
    .global gUnknown_08E7DE78
gUnknown_08E7DE78:
    .incbin "baserom.gba", 0x00E7DE78, 0x400
    
    .global gUnknown_08E7E278
gUnknown_08E7E278:
    .incbin "baserom.gba", 0x00E7E278, 0x400
    
    .global gUnknown_08E7E678
gUnknown_08E7E678:
    .incbin "baserom.gba", 0x00E7E678, 0x400

    .global gUnknown_08E7EA78
gUnknown_08E7EA78:
    .4byte gUnknown_08E7D278
    .4byte gUnknown_08E7D678
    .4byte gUnknown_08E7DA78
    .4byte gUnknown_08E7DE78
    .4byte gUnknown_08E7E278
    .4byte gUnknown_08E7E678
