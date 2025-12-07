.include "asm/macros/c_decl.inc"
.include "asm/macros/portable.inc"
.include "asm/macros/function.inc"
.include "constants/gba_constants.inc"
.include "constants/misc_constants.inc"

.section .rodata

.align 2 , 0

@ TODO: Should be part of libc or libgcc
.space 0x100

    .global gUnknown_08E2EAB8
gUnknown_08E2EAB8:
    mPtr gUnknown_08E7BC8C
    mPtr gUnknown_08E7BE90
    mPtr gUnknown_08E7C22C
    mPtr gUnknown_08E7C6F0
    mPtr gUnknown_08E7CC44
    mPtr gUnknown_08E7CE78

    .global gUnknown_08E2EAD0
gUnknown_08E2EAD0:
    .incbin "baserom_sa3.gba", 0x00E2EAD0, 0x24

    .global gUnknown_08E2EAF4
gUnknown_08E2EAF4:
    .word 1326, 1324, 1325, 67

    .global gUnknown_08E2EB04
gUnknown_08E2EB04:
    .incbin "baserom_sa3.gba", 0x00E2EB04, 0x14

    .global gUnknown_08E2EB18
gUnknown_08E2EB18:
    .incbin "baserom_sa3.gba", 0x00E2EB18, 0x84
    
    .global gUnknown_08E2EB9C
gUnknown_08E2EB9C:
    mPtr gUnknown_080CFBD4
    mPtr gUnknown_080CFBF8
    
    .global gUnknown_08E2EBA4
gUnknown_08E2EBA4:
    mPtr gUnknown_080CFC0A
    mPtr gUnknown_080CFC2E

    .global gUnknown_08E2EBAC
gUnknown_08E2EBAC:
    mPtr gUnknown_080CFC40
    mPtr gUnknown_080CFC70
    mPtr gUnknown_080CFC8E
    mPtr gUnknown_080CFCB2
    mPtr gUnknown_080CFCD0
    mPtr gUnknown_080CFCE8
    mPtr gUnknown_080CFD06
    mPtr gUnknown_080CFD42
    mPtr gUnknown_080CFD60
    mPtr gUnknown_080CFD78

    .global gUnknown_08E2EBD4
gUnknown_08E2EBD4:
    mPtr gUnknown_080CFDBA
    mPtr gUnknown_080CFDDE

    .global gUnknown_08E2EBDC
gUnknown_08E2EBDC:
    mPtr gUnknown_080CFDF0
    mPtr gUnknown_080CFE14

    .global gUnknown_08E2EBE4
gUnknown_08E2EBE4:
    mPtr gUnknown_080CFE26
    mPtr gUnknown_080CFE44
    mPtr gUnknown_080CFE56
    mPtr gUnknown_080CFE6E
    mPtr gUnknown_080CFE8C
    mPtr gUnknown_080CFEAA
    mPtr gUnknown_080CFEC8
    mPtr gUnknown_080CFEEC
    mPtr gUnknown_080CFF0A
    mPtr gUnknown_080CFF22
    mPtr gUnknown_080CFF46
    mPtr gUnknown_080CFF5E
    mPtr gUnknown_080CFF7C
    mPtr gUnknown_080CFF8E
    mPtr gUnknown_080CFFAC
    mPtr gUnknown_080CFFC4
    mPtr gUnknown_080CFFD6
    mPtr gUnknown_080CFFF4
    mPtr gUnknown_080D0006
    mPtr gUnknown_080D0018
    mPtr gUnknown_080D002A
    mPtr gUnknown_080D0054
    mPtr gUnknown_080D0072
    mPtr gUnknown_080D008A
    mPtr gUnknown_080D00B4
    mPtr gUnknown_080D00CC
    mPtr gUnknown_080D00DE
    mPtr gUnknown_080D00FC

    .global gUnknown_08E2EC54
gUnknown_08E2EC54:
    mPtr gUnknown_080D010E
    mPtr gUnknown_080D0132

    .global sPlatformPathTable
sPlatformPathTable:
    mPtr gUnknown_08E2EB9C
    mPtr gUnknown_08E2EBA4
    mPtr gUnknown_08E2EBAC
    mPtr gUnknown_08E2EBD4
    mPtr gUnknown_08E2EBDC
    mPtr gUnknown_08E2EBE4
    mPtr gUnknown_08E2EC54

    .global gUnknown_08E2EC78
gUnknown_08E2EC78:
    mPtr gUnknown_080D1B64
    mPtr gUnknown_080D1B70
    mPtr gUnknown_080D1B7C
    mPtr gUnknown_080D1B88
    mPtr gUnknown_080D1B94
    mPtr gUnknown_080D1BA0
    mPtr gUnknown_080D1BAC
    mPtr gUnknown_080D1BB8

    .global gUnknown_08E2EC98
gUnknown_08E2EC98:
    mPtr gUnknown_080D22C8
    mPtr gUnknown_080D23E8
    mPtr gUnknown_080D2834
    mPtr gUnknown_080D2D44
    mPtr gUnknown_080D2F88
    mPtr gUnknown_080D3804
    mPtr gUnknown_080D3DD8
    mPtr NULL
    mPtr gUnknown_080D50F8
    mPtr NULL
    mPtr NULL
    mPtr gUnknown_080D51A0
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr gUnknown_080D523C
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr NULL

    .global gUnknown_08E2ED00
gUnknown_08E2ED00:
    mPtr sub_807C670
    mPtr sub_807C728
    mPtr sub_807C8AC
    mPtr sub_807C9C0
    mPtr sub_807CA38
    mPtr sub_807CB78

    .global gUnknown_08E2ED18
gUnknown_08E2ED18:
    mPtr sub_8081B18
    mPtr sub_807DCD8
    mPtr sub_807DE20
    mPtr sub_807E214
    mPtr sub_807E54C
    mPtr sub_807E99C
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr sub_807EBB8
    mPtr sub_807ECFC

    .global gUnknown_08E2ED48
gUnknown_08E2ED48:
    mPtr sub_807FEB4
    mPtr sub_808007C

    .global gUnknown_08E2ED50
gUnknown_08E2ED50:
    mPtr sub_80870B0
    mPtr sub_8083BE4
    mPtr sub_8083F8C
    mPtr sub_808439C
    mPtr sub_808491C
    mPtr sub_8084B2C
    mPtr sub_8084C50
    mPtr sub_8084BEC
    mPtr -1
    mPtr -1
    mPtr -1
    mPtr -1
    mPtr -1
    mPtr -1
    mPtr -1
    mPtr -1
    .incbin "baserom_sa3.gba", 0x00E2ED90, 0xC0

    .global gUnknown_08E2EE50
gUnknown_08E2EE50:
    .incbin "baserom_sa3.gba", 0x00E2EE50, 0xA0

    .global gUnknown_08E2EEF0
gUnknown_08E2EEF0:
    .incbin "baserom_sa3.gba", 0x00E2EEF0, 0x20

    .global gUnknown_08E2EF10
gUnknown_08E2EF10:
    mPtr gUnknown_080D9578
    mPtr gUnknown_080D95D8
    mPtr gUnknown_080D9598
    mPtr gUnknown_080D95B8
    mPtr gUnknown_080D95F8
    mPtr gUnknown_080DBB98
    mPtr gUnknown_080DBC18
    mPtr gUnknown_080DBBD8
    mPtr gUnknown_080DBC58
    mPtr gUnknown_080DBB78
    mPtr gUnknown_080DBBF8
    mPtr gUnknown_080DBBB8
    mPtr gUnknown_080DBC38

    .global gUnknown_08E2EF44
gUnknown_08E2EF44:
    mPtr gUnknown_080DBCB2
    mPtr gUnknown_080DBCB5
    mPtr gUnknown_080DBCB7
    mPtr gUnknown_080DBCB9

    .global gUnknown_08E2EF54
gUnknown_08E2EF54:
    mPtr gUnknown_080DBAB4
    mPtr gUnknown_080DBAC0
    mPtr gUnknown_080DBAD0
    mPtr gUnknown_080DBAC8

    .global gUnknown_08E2EF64
gUnknown_08E2EF64:
    mPtr gPalette_080DBD90
    mPtr gPalette_080DBDD0
    mPtr gPalette_080DBE10
    mPtr gUnknown_080DBFE8
    mPtr gUnknown_080DBFE8
    mPtr gUnknown_080DBFE8
    mPtr gUnknown_080DBFE8
    mPtr gUnknown_080DBFE8
    mPtr gUnknown_080DBFE8
    mPtr gUnknown_080DBFE8

    .global gUnknown_08E2EF8C
gUnknown_08E2EF8C:
    mPtr gUnknown_080DC4B4
    mPtr gUnknown_080DD164
    mPtr gUnknown_080DDEF4
    mPtr gUnknown_080DEDD4
    mPtr gUnknown_080DFC64
    mPtr gUnknown_080E0D94
    mPtr gUnknown_080E1E04

    .global gUnknown_08E2EFA8
gUnknown_08E2EFA8:
    .byte 1
    .space 0x13
    .byte 1
    .space 0x453

    .global gUnknown_08E2F410
gUnknown_08E2F410:
    mPtr nullsub_80B7AAC
    mPtr sub_80B75E4

    .global gPayload_08E2F418
gPayload_08E2F418:
    .incbin "baserom_sa3.gba", 0x00E2F418, 0x2468
    
    .global gPayload_08E31880
gPayload_08E31880:
    .incbin "baserom_sa3.gba", 0x00E31880, 0x23B0
   
    .global gPayload_08E33C30
gPayload_08E33C30:
    .incbin "baserom_sa3.gba", 0x00E33C30, 0x2474

    .global gUnknown_08E360A4
gUnknown_08E360A4:
    .incbin "baserom_sa3.gba", 0x00E360A4, 0x23C0

    .global gPayload_08E38464
gPayload_08E38464:
    .incbin "baserom_sa3.gba", 0x00E38464, 0x238C

    .global gPayload_08E3A7F0
gPayload_08E3A7F0:
    .incbin "baserom_sa3.gba", 0x00E3A7F0, 0x23A8
    
    .global gUnknown_08E3CB98
gUnknown_08E3CB98:
    .incbin "baserom_sa3.gba", 0x00E3CB98, 0x4

    .global gPayload_08E3CB9C
gPayload_08E3CB9C:
    .incbin "baserom_sa3.gba", 0x00E3CB9C, 0x8000

    .global gUnknown_08E44B9C
gUnknown_08E44B9C:
    .incbin "baserom_sa3.gba", 0x00E44B9C, 0x8000

    .global gUnknown_08E4CB9C
gUnknown_08E4CB9C:
    .incbin "baserom_sa3.gba", 0x00E4CB9C, 0x8000

    .global gUnknown_08E54B9C
gUnknown_08E54B9C:
    .incbin "baserom_sa3.gba", 0x00E54B9C, 0x76A8

    .global gUnknown_08E5C244
gUnknown_08E5C244:
    .incbin "baserom_sa3.gba", 0x00E5C244, 0x346C

    .global gUnknown_08E5F6B0
gUnknown_08E5F6B0:
    .incbin "baserom_sa3.gba", 0x00E5F6B0, 0x345C

    .global gUnknown_08E62B0C
gUnknown_08E62B0C:
    .incbin "baserom_sa3.gba", 0x00E62B0C, 0x42A8

    .global gUnknown_08E66DB4
gUnknown_08E66DB4:
    .incbin "baserom_sa3.gba", 0x00E66DB4, 0x6E30

    .global gUnknown_08E6DBE4
gUnknown_08E6DBE4:
    .incbin "baserom_sa3.gba", 0x00E6DBE4, 0x7238

    .global gUnknown_08E74E1C
gUnknown_08E74E1C:
    .incbin "baserom_sa3.gba", 0x00E74E1C, 0x6E70
   
    .global gUnknown_08E7BC8C
gUnknown_08E7BC8C:
    .incbin "baserom_sa3.gba", 0x00E7BC8C, 0x204

    .global gUnknown_08E7BE90
gUnknown_08E7BE90:
    .incbin "baserom_sa3.gba", 0x00E7BE90, 0x39C

    .global gUnknown_08E7C22C
gUnknown_08E7C22C:
    .incbin "baserom_sa3.gba", 0x00E7C22C, 0x4C4

    .global gUnknown_08E7C6F0
gUnknown_08E7C6F0:
    .incbin "baserom_sa3.gba", 0x00E7C6F0, 0x554
    
    .global gUnknown_08E7CC44
gUnknown_08E7CC44:
    .incbin "baserom_sa3.gba", 0x00E7CC44, 0x234
    
    .global gUnknown_08E7CE78
gUnknown_08E7CE78:
    .incbin "baserom_sa3.gba", 0x00E7CE78, 0x400
    
    .global gUnknown_08E7D278
gUnknown_08E7D278:
    .incbin "baserom_sa3.gba", 0x00E7D278, 0x400
    
    .global gUnknown_08E7D678
gUnknown_08E7D678:
    .incbin "baserom_sa3.gba", 0x00E7D678, 0x400
    
    .global gUnknown_08E7DA78
gUnknown_08E7DA78:
    .incbin "baserom_sa3.gba", 0x00E7DA78, 0x400
    
    .global gUnknown_08E7DE78
gUnknown_08E7DE78:
    .incbin "baserom_sa3.gba", 0x00E7DE78, 0x400
    
    .global gUnknown_08E7E278
gUnknown_08E7E278:
    .incbin "baserom_sa3.gba", 0x00E7E278, 0x400
    
    .global gUnknown_08E7E678
gUnknown_08E7E678:
    .incbin "baserom_sa3.gba", 0x00E7E678, 0x400

    .global gUnknown_08E7EA78
gUnknown_08E7EA78:
    mPtr gUnknown_08E7D278
    mPtr gUnknown_08E7D678
    mPtr gUnknown_08E7DA78
    mPtr gUnknown_08E7DE78
    mPtr gUnknown_08E7E278
    mPtr gUnknown_08E7E678
