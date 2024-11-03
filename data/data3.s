.include "asm/macros/function.inc"
.include "constants/gba_constants.inc"
.include "constants/misc_constants.inc"

.section .rodata

.align 2 , 0

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

    .global sPlatformPathTable
sPlatformPathTable:
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
    .4byte sub_807C670
    .4byte sub_807C728
    .4byte sub_807C8AC
    .4byte sub_807C9C0
    .4byte sub_807CA38
    .4byte sub_807CB78

    .global gUnknown_08E2ED18
gUnknown_08E2ED18:
    .4byte sub_8081B18
    .4byte sub_807DCD8
    .4byte sub_807DE20
    .4byte sub_807E214
    .4byte sub_807E54C
    .4byte sub_807E99C
    .4byte NULL
    .4byte NULL
    .4byte NULL
    .4byte NULL
    .4byte sub_807EBB8
    .4byte sub_807ECFC

    .global gUnknown_08E2ED48
gUnknown_08E2ED48:
    .4byte sub_807FEB4
    .4byte sub_808007C

    .global gUnknown_08E2ED50
gUnknown_08E2ED50:
    .4byte sub_80870B0
    .4byte sub_8083BE4
    .4byte sub_8083F8C
    .4byte sub_808439C
    .4byte sub_808491C
    .4byte sub_8084B2C
    .4byte sub_8084C50
    .4byte sub_8084BEC
    .4byte -1
    .4byte -1
    .4byte -1
    .4byte -1
    .4byte -1
    .4byte -1
    .4byte -1
    .4byte -1
    .incbin "baserom.gba", 0x00E2ED90, 0xC0

    .global gUnknown_08E2EE50
gUnknown_08E2EE50:
    .incbin "baserom.gba", 0x00E2EE50, 0xA0

    .global gUnknown_08E2EEF0
gUnknown_08E2EEF0:
    .incbin "baserom.gba", 0x00E2EEF0, 0x20

    .global gUnknown_08E2EF10
gUnknown_08E2EF10:
    .4byte gUnknown_080D9578
    .4byte gUnknown_080D95D8
    .4byte gUnknown_080D9598
    .4byte gUnknown_080D95B8
    .4byte gUnknown_080D95F8
    .4byte gUnknown_080DBB98
    .4byte gUnknown_080DBC18
    .4byte gUnknown_080DBBD8
    .4byte gUnknown_080DBC58
    .4byte gUnknown_080DBB78
    .4byte gUnknown_080DBBF8
    .4byte gUnknown_080DBBB8
    .4byte gUnknown_080DBC38

    .global gUnknown_08E2EF44
gUnknown_08E2EF44:
    .4byte gUnknown_080DBCB2
    .4byte gUnknown_080DBCB5
    .4byte gUnknown_080DBCB7
    .4byte gUnknown_080DBCB9

    .global gUnknown_08E2EF54
gUnknown_08E2EF54:
    .4byte gUnknown_080DBAB4
    .4byte gUnknown_080DBAC0
    .4byte gUnknown_080DBAD0
    .4byte gUnknown_080DBAC8

    .global gUnknown_08E2EF64
gUnknown_08E2EF64:
    .4byte gPalette_080DBD90
    .4byte gPalette_080DBDD0
    .4byte gPalette_080DBE10
    .4byte gUnknown_080DBFE8
    .4byte gUnknown_080DBFE8
    .4byte gUnknown_080DBFE8
    .4byte gUnknown_080DBFE8
    .4byte gUnknown_080DBFE8
    .4byte gUnknown_080DBFE8
    .4byte gUnknown_080DBFE8

    .global gUnknown_08E2EF8C
gUnknown_08E2EF8C:
    .4byte gUnknown_080DC4B4
    .4byte gUnknown_080DD164
    .4byte gUnknown_080DDEF4
    .4byte gUnknown_080DEDD4
    .4byte gUnknown_080DFC64
    .4byte gUnknown_080E0D94
    .4byte gUnknown_080E1E04

    .global gUnknown_08E2EFA8
gUnknown_08E2EFA8:
    .byte 1
    .space 0x13
    .byte 1
    .space 0x453

    .global gUnknown_08E2F410
gUnknown_08E2F410:
    .4byte nullsub_80B7AAC, sub_80B75E4

    .global gPayload_08E2F418
gPayload_08E2F418:
    .incbin "baserom.gba", 0x00E2F418, 0x2468
    
    .global gPayload_08E31880
gPayload_08E31880:
    .incbin "baserom.gba", 0x00E31880, 0x23B0
   
    .global gPayload_08E33C30
gPayload_08E33C30:
    .incbin "baserom.gba", 0x00E33C30, 0x2474

    .global gUnknown_08E360A4
gUnknown_08E360A4:
    .incbin "baserom.gba", 0x00E360A4, 0x23C0

    .global gPayload_08E38464
gPayload_08E38464:
    .incbin "baserom.gba", 0x00E38464, 0x238C

    .global gPayload_08E3A7F0
gPayload_08E3A7F0:
    .incbin "baserom.gba", 0x00E3A7F0, 0x23A8
    
    .global gUnknown_08E3CB98
gUnknown_08E3CB98:
    .incbin "baserom.gba", 0x00E3CB98, 0x4

    .global gPayload_08E3CB9C
gPayload_08E3CB9C:
    .incbin "baserom.gba", 0x00E3CB9C, 0x8000

    .global gUnknown_08E44B9C
gUnknown_08E44B9C:
    .incbin "baserom.gba", 0x00E44B9C, 0x8000

    .global gUnknown_08E4CB9C
gUnknown_08E4CB9C:
    .incbin "baserom.gba", 0x00E4CB9C, 0x8000

    .global gUnknown_08E54B9C
gUnknown_08E54B9C:
    .incbin "baserom.gba", 0x00E54B9C, 0x76A8

    .global gUnknown_08E5C244
gUnknown_08E5C244:
    .incbin "baserom.gba", 0x00E5C244, 0x346C

    .global gUnknown_08E5F6B0
gUnknown_08E5F6B0:
    .incbin "baserom.gba", 0x00E5F6B0, 0x345C

    .global gUnknown_08E62B0C
gUnknown_08E62B0C:
    .incbin "baserom.gba", 0x00E62B0C, 0x42A8

    .global gUnknown_08E66DB4
gUnknown_08E66DB4:
    .incbin "baserom.gba", 0x00E66DB4, 0x6E30

    .global gUnknown_08E6DBE4
gUnknown_08E6DBE4:
    .incbin "baserom.gba", 0x00E6DBE4, 0x7238

    .global gUnknown_08E74E1C
gUnknown_08E74E1C:
    .incbin "baserom.gba", 0x00E74E1C, 0x6E70
   
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
