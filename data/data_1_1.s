.include "asm/macros/c_decl.inc"
.include "asm/macros/portable.inc"
.include "asm/macros/function.inc"
.include "constants/gba_constants.inc"
.include "constants/misc_constants.inc"

.section .rodata

    .global gCollisionTable
gCollisionTable:
    .incbin "baserom_sa3.gba", 0x000D1100, 0x124

    .global gUnknown_080D1224
gUnknown_080D1224:
    .incbin "baserom_sa3.gba", 0x000D1224, 0x124

    .global gUnknown_080D1348
gUnknown_080D1348:
    .incbin "baserom_sa3.gba", 0x000D1348, 0x124

    .global gUnknown_080D146C
gUnknown_080D146C:
    .incbin "baserom_sa3.gba", 0x000D146C, 0x2E4

    @ Respawn positions.
    .global gUnknown_080D1750
gUnknown_080D1750:
    .incbin "baserom_sa3.gba", 0x000D1750, 0x1CC

    .global gUnknown_080D191C
gUnknown_080D191C:
    .incbin "baserom_sa3.gba", 0x000D191C, 0x124

    .global gMedalTimes
gMedalTimes:
    .incbin "baserom_sa3.gba", 0x000D1A40, 0x124

    .global gUnknown_080D1B64
gUnknown_080D1B64:
    .incbin "baserom_sa3.gba", 0x000D1B64, 0xC

    .global gUnknown_080D1B70
gUnknown_080D1B70:
    .incbin "baserom_sa3.gba", 0x000D1B70, 0xC

    .global gUnknown_080D1B7C
gUnknown_080D1B7C:
    .incbin "baserom_sa3.gba", 0x000D1B7C, 0xC
    
    .global gUnknown_080D1B88
gUnknown_080D1B88:
    .incbin "baserom_sa3.gba", 0x000D1B88, 0xC
    
    .global gUnknown_080D1B94
gUnknown_080D1B94:
    .incbin "baserom_sa3.gba", 0x000D1B94, 0xC
    
    .global gUnknown_080D1BA0
gUnknown_080D1BA0:
    .incbin "baserom_sa3.gba", 0x000D1BA0, 0xC
    
    .global gUnknown_080D1BAC
gUnknown_080D1BAC:
    .incbin "baserom_sa3.gba", 0x000D1BAC, 0xC
    
    .global gUnknown_080D1BB8
gUnknown_080D1BB8:
    .incbin "baserom_sa3.gba", 0x000D1BB8, 0xC

    .global gUnknown_080D1BC4
gUnknown_080D1BC4:
    .incbin "baserom_sa3.gba", 0x000D1BC4, 0x28

    .global gUnknown_080D1BEC
gUnknown_080D1BEC:
    .incbin "baserom_sa3.gba", 0x000D1BEC, 0xA

    .global gUnknown_080D1BF6
gUnknown_080D1BF6:
    .incbin "baserom_sa3.gba", 0x000D1BF6, 0x16

    .global gUnknown_080D1C0C
gUnknown_080D1C0C:
    .incbin "baserom_sa3.gba", 0x000D1C0C, 0x24

    .global gUnknown_080D1C30
gUnknown_080D1C30:
    .incbin "baserom_sa3.gba", 0x000D1C30, 0x18

    .global gUnknown_080D1C48
gUnknown_080D1C48:
    .incbin "baserom_sa3.gba", 0x000D1C48, 0x2

    .global gUnknown_080D1C4A
gUnknown_080D1C4A:
    .incbin "baserom_sa3.gba", 0x000D1C4A, 0x5E

    .global gUnknown_080D1CA8
gUnknown_080D1CA8:
    .incbin "baserom_sa3.gba", 0x000D1CA8, 0x6

    .global gUnknown_080D1CAE
gUnknown_080D1CAE:
    .incbin "baserom_sa3.gba", 0x000D1CAE, 0x2

    .global gUnknown_080D1CB0
gUnknown_080D1CB0:
    .incbin "baserom_sa3.gba", 0x000D1CB0, 0x2

    .global gUnknown_080D1CB2
gUnknown_080D1CB2:
    .incbin "baserom_sa3.gba", 0x000D1CB2, 0x20

    .global gUnknown_080D1CD2
gUnknown_080D1CD2:
    .incbin "baserom_sa3.gba", 0x000D1CD2, 0x12

    .global gUnknown_080D1CE4
gUnknown_080D1CE4:
    .incbin "baserom_sa3.gba", 0x000D1CE4, 0x6C

    .global gUnknown_080D1D50
gUnknown_080D1D50:
    .incbin "baserom_sa3.gba", 0x000D1D50, 0x8

    .global gUnknown_080D1D58
gUnknown_080D1D58:
    .incbin "baserom_sa3.gba", 0x000D1D58, 0x24

    .global gUnknown_080D1D7C
gUnknown_080D1D7C:
    .incbin "baserom_sa3.gba", 0x000D1D7C, 0xC

    .global gUnknown_080D1D88
gUnknown_080D1D88:
    .incbin "baserom_sa3.gba", 0x000D1D88, 0x90

    .global gUnknown_080D1E18
gUnknown_080D1E18:
    .incbin "baserom_sa3.gba", 0x000D1E18, 0x8

    .global gUnknown_080D1E20
gUnknown_080D1E20:
    .incbin "baserom_sa3.gba", 0x000D1E20, 0x10

    .global gUnknown_080D1E30
gUnknown_080D1E30:
    .incbin "baserom_sa3.gba", 0x000D1E30, 0x20

    .global gUnknown_080D1E50
gUnknown_080D1E50:
    .incbin "baserom_sa3.gba", 0x000D1E50, 0x4

    .global gUnknown_080D1E54
gUnknown_080D1E54:
    .incbin "baserom_sa3.gba", 0x000D1E54, 0x30

    .global gUnknown_080D1E84
gUnknown_080D1E84:
    .incbin "baserom_sa3.gba", 0x000D1E84, 0x10

    .global sTileInfoGekoGeko
sTileInfoGekoGeko:
    .incbin "baserom_sa3.gba", 0x000D1E94, 0x18

    .global gUnknown_080D1EAC
gUnknown_080D1EAC:
    .incbin "baserom_sa3.gba", 0x000D1EAC, 0x18

    .global gUnknown_080D1EC4
gUnknown_080D1EC4:
    .incbin "baserom_sa3.gba", 0x000D1EC4, 0x8

    .global gUnknown_080D1ECC
gUnknown_080D1ECC:
    .incbin "baserom_sa3.gba", 0x000D1ECC, 0x18

    .global gUnknown_080D1EE4
gUnknown_080D1EE4:
    .incbin "baserom_sa3.gba", 0x000D1EE4, 0x10

    .global gUnknown_080D1EF4
gUnknown_080D1EF4:
    .incbin "baserom_sa3.gba", 0x000D1EF4, 0x18

    .global gUnknown_080D1F0C
gUnknown_080D1F0C:
    .incbin "baserom_sa3.gba", 0x000D1F0C, 0x10

    .global gUnknown_080D1F1C
gUnknown_080D1F1C:
    .incbin "baserom_sa3.gba", 0x000D1F1C, 0x10

    .global gUnknown_080D1F2C
gUnknown_080D1F2C:
    .incbin "baserom_sa3.gba", 0x000D1F2C, 0x20

    .global gUnknown_080D1F4C
gUnknown_080D1F4C:
    .incbin "baserom_sa3.gba", 0x000D1F4C, 0x10

    .global gUnknown_080D1F5C
gUnknown_080D1F5C:
    .incbin "baserom_sa3.gba", 0x000D1F5C, 0x10

    .global gUnknown_080D1F6C
gUnknown_080D1F6C:
    .incbin "baserom_sa3.gba", 0x000D1F6C, 0x10

    .global gUnknown_080D1F7C
gUnknown_080D1F7C:
    .incbin "baserom_sa3.gba", 0x000D1F7C, 0x10

    .global gUnknown_080D1F8C
gUnknown_080D1F8C:
    .incbin "baserom_sa3.gba", 0x000D1F8C, 0x20

    .global gUnknown_080D1FAC
gUnknown_080D1FAC:
    .incbin "baserom_sa3.gba", 0x000D1FAC, 0x4

    .global gUnknown_080D1FB0
gUnknown_080D1FB0:
    .incbin "baserom_sa3.gba", 0x000D1FB0, 0x10

    .global gUnknown_080D1FC0
gUnknown_080D1FC0:
    .incbin "baserom_sa3.gba", 0x000D1FC0, 0x10

    .global gUnknown_080D1FD0
gUnknown_080D1FD0:
    .incbin "baserom_sa3.gba", 0x000D1FD0, 0x20

    .global gUnknown_080D1FF0
gUnknown_080D1FF0:
    .incbin "baserom_sa3.gba", 0x000D1FF0, 0x8

    .global gUnknown_080D1FF8
gUnknown_080D1FF8:
    .incbin "baserom_sa3.gba", 0x000D1FF8, 0xC

    .global gUnknown_080D2004
gUnknown_080D2004:
    .incbin "baserom_sa3.gba", 0x000D2004, 0x10

    .global gUnknown_080D2014
gUnknown_080D2014:
    .incbin "baserom_sa3.gba", 0x000D2014, 0x10

    .global gUnknown_080D2024
gUnknown_080D2024:
    .incbin "baserom_sa3.gba", 0x000D2024, 0x10

    .global gUnknown_080D2034
gUnknown_080D2034:
    .incbin "baserom_sa3.gba", 0x000D2034, 0x10

    .global gUnknown_080D2044
gUnknown_080D2044:
    .incbin "baserom_sa3.gba", 0x000D2044, 0x28

    .global gPalette_080D206C
gPalette_080D206C:
    .incbin "baserom_sa3.gba", 0x000D206C, 0x20

    .global gPalette_080D208C
gPalette_080D208C:
    .incbin "baserom_sa3.gba", 0x000D208C, 0x20

    .global gUnknown_080D20AC
gUnknown_080D20AC:
    .incbin "baserom_sa3.gba", 0x000D20AC, 0x4

    .global gUnknown_080D20B0
gUnknown_080D20B0:
    .incbin "baserom_sa3.gba", 0x000D20B0, 0x8

    .global gUnknown_080D20B8
gUnknown_080D20B8:
    .incbin "baserom_sa3.gba", 0x000D20B8, 0xC

    .global gUnknown_080D20C4
gUnknown_080D20C4:
    .incbin "baserom_sa3.gba", 0x000D20C4, 0x48

    .global gUnknown_080D210C
gUnknown_080D210C:
    .incbin "baserom_sa3.gba", 0x000D210C, 0x20

    .global gUnknown_080D212C
gUnknown_080D212C:
    .incbin "baserom_sa3.gba", 0x000D212C, 0x30

    .global gUnknown_080D215C
gUnknown_080D215C:
    .incbin "baserom_sa3.gba", 0x000D215C, 0x20

    .global gUnknown_080D217C
gUnknown_080D217C:
    .incbin "baserom_sa3.gba", 0x000D217C, 0x4

    .global gUnknown_080D2180
gUnknown_080D2180:
    .incbin "baserom_sa3.gba", 0x000D2180, 0x18

    .global gUnknown_080D2198
gUnknown_080D2198:
    .incbin "baserom_sa3.gba", 0x000D2198, 0x130

    .global gUnknown_080D22C8
gUnknown_080D22C8:
    .incbin "baserom_sa3.gba", 0x000D22C8, 0x120

    .global gUnknown_080D23E8
gUnknown_080D23E8:
    .incbin "baserom_sa3.gba", 0x000D23E8, 0x44C

    .global gUnknown_080D2834
gUnknown_080D2834:
    .incbin "baserom_sa3.gba", 0x000D2834, 0x510
    
    .global gUnknown_080D2D44
gUnknown_080D2D44:
    .incbin "baserom_sa3.gba", 0x000D2D44, 0x244
    
    .global gUnknown_080D2F88
gUnknown_080D2F88:
    .incbin "baserom_sa3.gba", 0x000D2F88, 0x87C
    
    .global gUnknown_080D3804
gUnknown_080D3804:
    .incbin "baserom_sa3.gba", 0x000D3804, 0x5D4
    
    .global gUnknown_080D3DD8
gUnknown_080D3DD8:
    .incbin "baserom_sa3.gba", 0x000D3DD8, 0x1320
    
    .global gUnknown_080D50F8
gUnknown_080D50F8:
    .incbin "baserom_sa3.gba", 0x000D50F8, 0xA8
    
    .global gUnknown_080D51A0
gUnknown_080D51A0:
    .incbin "baserom_sa3.gba", 0x000D51A0, 0x9C

    .global gUnknown_080D523C
gUnknown_080D523C:
    .incbin "baserom_sa3.gba", 0x000D523C, 0xC

    .global gUnknown_080D5248
gUnknown_080D5248:
    .incbin "baserom_sa3.gba", 0x000D5248, 0x34

    .global gUnknown_080D527C
gUnknown_080D527C:
    .incbin "baserom_sa3.gba", 0x000D527C, 0x64

    .global gUnknown_080D52E0
gUnknown_080D52E0:
    .incbin "baserom_sa3.gba", 0x000D52E0, 0x1E0

    .global gUnknown_080D54C0
gUnknown_080D54C0:
    .incbin "baserom_sa3.gba", 0x000D54C0, 0x21C

    .global gUnknown_080D56DC
gUnknown_080D56DC:
    .incbin "baserom_sa3.gba", 0x000D56DC, 0x14

    .global gUnknown_080D56F0
gUnknown_080D56F0:
    .incbin "baserom_sa3.gba", 0x000D56F0, 0x34

    .global gUnknown_080D5724
gUnknown_080D5724:
    .incbin "baserom_sa3.gba", 0x000D5724, 0x8

    .global gUnknown_080D572C
gUnknown_080D572C:
    .incbin "baserom_sa3.gba", 0x000D572C, 0x10

    .global gUnknown_080D573C
gUnknown_080D573C:
    .incbin "baserom_sa3.gba", 0x000D573C, 0x10

    .global gUnknown_080D574C
gUnknown_080D574C:
    .incbin "baserom_sa3.gba", 0x000D574C, 0x10

    .global gUnknown_080D575C
gUnknown_080D575C:
    .incbin "baserom_sa3.gba", 0x000D575C, 0x24

    .global gUnknown_080D5780
gUnknown_080D5780:
    .incbin "baserom_sa3.gba", 0x000D5780, 0x40

    .global gUnknown_080D57C0
gUnknown_080D57C0:
    .incbin "baserom_sa3.gba", 0x000D57C0, 0x5

    .global gUnknown_080D57C5
gUnknown_080D57C5:
    .incbin "baserom_sa3.gba", 0x000D57C5, 0x7

    .global gUnknown_080D57CC
gUnknown_080D57CC:
    .incbin "baserom_sa3.gba", 0x000D57CC, 0x80

    .global gUnknown_080D584C
gUnknown_080D584C:
    .incbin "baserom_sa3.gba", 0x000D584C, 0x24

    .global gUnknown_080D5870
gUnknown_080D5870:
    .incbin "baserom_sa3.gba", 0x000D5870, 0x10

    .global gUnknown_080D5880
gUnknown_080D5880:
    .incbin "baserom_sa3.gba", 0x000D5880, 0x8

    .global gUnknown_080D5888
gUnknown_080D5888:
    .incbin "baserom_sa3.gba", 0x000D5888, 0x44

    .global gUnknown_080D58CC
gUnknown_080D58CC:
    .incbin "baserom_sa3.gba", 0x000D58CC, 0x14

    .global gUnknown_080D58E0
gUnknown_080D58E0:
    .incbin "baserom_sa3.gba", 0x000D58E0, 0x14

    .global gUnknown_080D58F4
gUnknown_080D58F4:
    .incbin "baserom_sa3.gba", 0x000D58F4, 0x10

    .global gUnknown_080D5904
gUnknown_080D5904:
    .incbin "baserom_sa3.gba", 0x000D5904, 0x28

    .global gUnknown_080D592C
gUnknown_080D592C:
    .incbin "baserom_sa3.gba", 0x000D592C, 0x14

    .global gUnknown_080D5940
gUnknown_080D5940:
    .incbin "baserom_sa3.gba", 0x000D5940, 0x14

    .global gUnknown_080D5954
gUnknown_080D5954:
    .incbin "baserom_sa3.gba", 0x000D5954, 0x24

    .global gUnknown_080D5978
gUnknown_080D5978:
    .incbin "baserom_sa3.gba", 0x000D5978, 0x4

    .global gUnknown_080D597C
gUnknown_080D597C:
    .incbin "baserom_sa3.gba", 0x000D597C, 0x1C

    .global gUnknown_080D5998
gUnknown_080D5998:
    .incbin "baserom_sa3.gba", 0x000D5998, 0x54

    .global gUnknown_080D59EC
gUnknown_080D59EC:
    .incbin "baserom_sa3.gba", 0x000D59EC, 0x10

    .global gUnknown_080D59FC
gUnknown_080D59FC:
    .incbin "baserom_sa3.gba", 0x000D59FC, 0x18

    .global gUnknown_080D5A14
gUnknown_080D5A14:
    .incbin "baserom_sa3.gba", 0x000D5A14, 0x30

    .global gUnknown_080D5A44
gUnknown_080D5A44:
    .incbin "baserom_sa3.gba", 0x000D5A44, 0x20

    .global gUnknown_080D5A64
gUnknown_080D5A64:
    .incbin "baserom_sa3.gba", 0x000D5A64, 0x8

    .global gUnknown_080D5A6C
gUnknown_080D5A6C:
    .incbin "baserom_sa3.gba", 0x000D5A6C, 0x78

    .global gUnknown_080D5AE4
gUnknown_080D5AE4:
    .incbin "baserom_sa3.gba", 0x000D5AE4, 0x4

    .global gUnknown_080D5AE8
gUnknown_080D5AE8:
    .incbin "baserom_sa3.gba", 0x000D5AE8, 0xE

    .global gUnknown_080D5AF6
gUnknown_080D5AF6:
    .incbin "baserom_sa3.gba", 0x000D5AF6, 0xA

    .global gUnknown_080D5B00
gUnknown_080D5B00:
    .incbin "baserom_sa3.gba", 0x000D5B00, 0x48

    .global gUnknown_080D5B48
gUnknown_080D5B48:
    .incbin "baserom_sa3.gba", 0x000D5B48, 0x18

    .global gUnknown_080D5B60
gUnknown_080D5B60:
    .incbin "baserom_sa3.gba", 0x000D5B60, 0x18

    .global gUnknown_080D5B78
gUnknown_080D5B78:
    .incbin "baserom_sa3.gba", 0x000D5B78, 0x10

    .global gUnknown_080D5B88
gUnknown_080D5B88:
    .incbin "baserom_sa3.gba", 0x000D5B88, 0x28

    .global gUnknown_080D5BB0
gUnknown_080D5BB0:
    .incbin "baserom_sa3.gba", 0x000D5BB0, 0x28

    .global gUnknown_080D5BD8
gUnknown_080D5BD8:
    .incbin "baserom_sa3.gba", 0x000D5BD8, 0x14

    .global gUnknown_080D5BEC
gUnknown_080D5BEC:
    .incbin "baserom_sa3.gba", 0x000D5BEC, 0x1C

    .global gUnknown_080D5C08
gUnknown_080D5C08:
    .incbin "baserom_sa3.gba", 0x000D5C08, 0x18

    .global gUnknown_080D5C20
gUnknown_080D5C20:
    .incbin "baserom_sa3.gba", 0x000D5C20, 0x18

    .global gUnknown_080D5C38
gUnknown_080D5C38:
    .incbin "baserom_sa3.gba", 0x000D5C38, 0x10

    .global gUnknown_080D5C48
gUnknown_080D5C48:
    .incbin "baserom_sa3.gba", 0x000D5C48, 0x8

    .global gUnknown_080D5C50
gUnknown_080D5C50:
    .incbin "baserom_sa3.gba", 0x000D5C50, 0x20

    .global gUnknown_080D5C70
gUnknown_080D5C70:
    .incbin "baserom_sa3.gba", 0x000D5C70, 0x8

    .global gUnknown_080D5C78
gUnknown_080D5C78:
    .incbin "baserom_sa3.gba", 0x000D5C78, 0x8

    .global gUnknown_080D5C80
gUnknown_080D5C80:
    .incbin "baserom_sa3.gba", 0x000D5C80, 0x20

    .global gUnknown_080D5CA0
gUnknown_080D5CA0:
    .incbin "baserom_sa3.gba", 0x000D5CA0, 0x4

    .global gUnknown_080D5CA4
gUnknown_080D5CA4:
    .incbin "baserom_sa3.gba", 0x000D5CA4, 0x4

    .global gUnknown_080D5CA8
gUnknown_080D5CA8:
    .incbin "baserom_sa3.gba", 0x000D5CA8, 0x2C

    .global gUnknown_080D5CD4
gUnknown_080D5CD4:
    .incbin "baserom_sa3.gba", 0x000D5CD4, 0x4

    .global gUnknown_080D5CD8
gUnknown_080D5CD8:
    .incbin "baserom_sa3.gba", 0x000D5CD8, 0x34

    .global gUnknown_080D5D0C
gUnknown_080D5D0C:
    .incbin "baserom_sa3.gba", 0x000D5D0C, 0xC

    .global gUnknown_080D5D18
gUnknown_080D5D18:
    .incbin "baserom_sa3.gba", 0x000D5D18, 0x8

    .global gUnknown_080D5D20
gUnknown_080D5D20:
    .incbin "baserom_sa3.gba", 0x000D5D20, 0x10

    .global gUnknown_080D5D30
gUnknown_080D5D30:
    .incbin "baserom_sa3.gba", 0x000D5D30, 0x20

    .global gUnknown_080D5D50
gUnknown_080D5D50:
    .incbin "baserom_sa3.gba", 0x000D5D50, 0x14

    .global gUnknown_080D5D64
gUnknown_080D5D64:
    .incbin "baserom_sa3.gba", 0x000D5D64, 0x80

    .global gUnknown_080D5DE4
gUnknown_080D5DE4:
    .incbin "baserom_sa3.gba", 0x000D5DE4, 0x80

    .global gUnknown_080D5E64
gUnknown_080D5E64:
    .incbin "baserom_sa3.gba", 0x000D5E64, 0x20

    .global gUnknown_080D5E84
gUnknown_080D5E84:
    .incbin "baserom_sa3.gba", 0x000D5E84, 0x140

    .global gUnknown_080D5FC4
gUnknown_080D5FC4:
    .incbin "baserom_sa3.gba", 0x000D5FC4, 0x150

    .global gUnknown_080D6114
gUnknown_080D6114:
    .incbin "baserom_sa3.gba", 0x000D6114, 0x60

    .global gUnknown_080D6174
gUnknown_080D6174:
    .incbin "baserom_sa3.gba", 0x000D6174, 0x60

    .global gUnknown_080D61D4
gUnknown_080D61D4:
    .incbin "baserom_sa3.gba", 0x000D61D4, 0x60

    .global gUnknown_080D6234
gUnknown_080D6234:
    .incbin "baserom_sa3.gba", 0x000D6234, 0x60

    .global gUnknown_080D6294
gUnknown_080D6294:
    .incbin "baserom_sa3.gba", 0x000D6294, 0x60

    .global gUnknown_080D62F4
gUnknown_080D62F4:
    .incbin "baserom_sa3.gba", 0x000D62F4, 0x60

    .global gUnknown_080D6354
gUnknown_080D6354:
    .incbin "baserom_sa3.gba", 0x000D6354, 0x60

    .global gUnknown_080D63B4
gUnknown_080D63B4:
    .incbin "baserom_sa3.gba", 0x000D63B4, 0x60

    .global gUnknown_080D6414
gUnknown_080D6414:
    .incbin "baserom_sa3.gba", 0x000D6414, 0x60

    .global gUnknown_080D6474
gUnknown_080D6474:
    .incbin "baserom_sa3.gba", 0x000D6474, 0x60

    .global gUnknown_080D64D4
gUnknown_080D64D4:
    .incbin "baserom_sa3.gba", 0x000D64D4, 0x60

    .global gUnknown_080D6534
gUnknown_080D6534:
    .incbin "baserom_sa3.gba", 0x000D6534, 0x60

    .global gUnknown_080D6594
gUnknown_080D6594:
    .incbin "baserom_sa3.gba", 0x000D6594, 0x60

    .global gUnknown_080D65F4
gUnknown_080D65F4:
    .incbin "baserom_sa3.gba", 0x000D65F4, 0x60

    .global gUnknown_080D6654
gUnknown_080D6654:
    .incbin "baserom_sa3.gba", 0x000D6654, 0x20

    .global gUnknown_080D6674
gUnknown_080D6674:
    .incbin "baserom_sa3.gba", 0x000D6674, 0x20

    .global gUnknown_080D6694
gUnknown_080D6694:
    .incbin "baserom_sa3.gba", 0x000D6694, 0x20

    .global gUnknown_080D66B4
gUnknown_080D66B4:
    .incbin "baserom_sa3.gba", 0x000D66B4, 0x10

    .global gUnknown_080D66C4
gUnknown_080D66C4:
    .incbin "baserom_sa3.gba", 0x000D66C4, 0x8

    .global gUnknown_080D66CC
gUnknown_080D66CC:
    .incbin "baserom_sa3.gba", 0x000D66CC, 0xC

    .global gUnknown_080D66D8
gUnknown_080D66D8:
    .incbin "baserom_sa3.gba", 0x000D66D8, 0x80

    .global gUnknown_080D6758
gUnknown_080D6758:
    .incbin "baserom_sa3.gba", 0x000D6758, 0x18

    .global gUnknown_080D6770
gUnknown_080D6770:
    .incbin "baserom_sa3.gba", 0x000D6770, 0x10

    .global gUnknown_080D6780
gUnknown_080D6780:
    .incbin "baserom_sa3.gba", 0x000D6780, 0x18

    .global gUnknown_080D6798
gUnknown_080D6798:
    .incbin "baserom_sa3.gba", 0x000D6798, 0x30

    .global gUnknown_080D67C8
gUnknown_080D67C8:
    .incbin "baserom_sa3.gba", 0x000D67C8, 0x30

    .global gUnknown_080D67F8
gUnknown_080D67F8:
    .incbin "baserom_sa3.gba", 0x000D67F8, 0x30

    .global gUnknown_080D6828
gUnknown_080D6828:
    .incbin "baserom_sa3.gba", 0x000D6828, 0x30

    .global gUnknown_080D6858
gUnknown_080D6858:
    .incbin "baserom_sa3.gba", 0x000D6858, 0x40

    .global gUnknown_080D6898
gUnknown_080D6898:
    .incbin "baserom_sa3.gba", 0x000D6898, 0x30

    .global gUnknown_080D68C8
gUnknown_080D68C8:
    .incbin "baserom_sa3.gba", 0x000D68C8, 0x8

    .global gUnknown_080D68D0
gUnknown_080D68D0:
    .incbin "baserom_sa3.gba", 0x000D68D0, 0x10

    .global gUnknown_080D68E0
gUnknown_080D68E0:
    .incbin "baserom_sa3.gba", 0x000D68E0, 0x22

    .global gUnknown_080D6902
gUnknown_080D6902:
    .incbin "baserom_sa3.gba", 0x000D6902, 0xC

    .global gUnknown_080D690E
gUnknown_080D690E:
    .incbin "baserom_sa3.gba", 0x000D690E, 0xE

    .global gUnknown_080D691C
gUnknown_080D691C:
    .incbin "baserom_sa3.gba", 0x000D691C, 0x30

    .global gUnknown_080D694C
gUnknown_080D694C:
    .incbin "baserom_sa3.gba", 0x000D694C, 0xA

    .global gUnknown_080D6956
gUnknown_080D6956:
    .incbin "baserom_sa3.gba", 0x000D6956, 0xA

    .global gUnknown_080D6960
gUnknown_080D6960:
    .incbin "baserom_sa3.gba", 0x000D6960, 0x180

    .global gUnknown_080D6AE0
gUnknown_080D6AE0:
    .incbin "baserom_sa3.gba", 0x000D6AE0, 0x8

    .global gUnknown_080D6AE8
gUnknown_080D6AE8:
    .incbin "baserom_sa3.gba", 0x000D6AE8, 0x60

    .global gUnknown_080D6B48
gUnknown_080D6B48:
    .incbin "baserom_sa3.gba", 0x000D6B48, 0x60

    .global gUnknown_080D6BA8
gUnknown_080D6BA8:
    .incbin "baserom_sa3.gba", 0x000D6BA8, 0x30

    .global gUnknown_080D6BD8
gUnknown_080D6BD8:
    .incbin "baserom_sa3.gba", 0x000D6BD8, 0x30

    .global gUnknown_080D6C08
gUnknown_080D6C08:
    .incbin "baserom_sa3.gba", 0x000D6C08, 0x14

    .global gUnknown_080D6C1C
gUnknown_080D6C1C:
    .incbin "baserom_sa3.gba", 0x000D6C1C, 0x200

    .global sOptionsSlideInits
sOptionsSlideInits:
    mPtr OptionsSlideInit_PlayerData
    mPtr OptionsSlideInit_Difficulty
    mPtr OptionsSlideInit_TimeUp
    mPtr OptionsSlideInit_Language
    mPtr OptionsSlideInit_ButtonConfig
    mPtr OptionsSlideInit_SoundTest
    mPtr OptionsSlideInit_DeleteSaveData

    .global gUnknown_080D6E38
gUnknown_080D6E38:
    .incbin "baserom_sa3.gba", 0x000D6E38, 0x1C

    .global gUnknown_080D6E54
gUnknown_080D6E54:
    .incbin "baserom_sa3.gba", 0x000D6E54, 0x80

    .global gUnknown_080D6ED4
gUnknown_080D6ED4:
    .incbin "baserom_sa3.gba", 0x000D6ED4, 0xC

    .global gUnknown_080D6EE0
gUnknown_080D6EE0:
    .incbin "baserom_sa3.gba", 0x000D6EE0, 0x8

    .global gUnknown_080D6EE8
gUnknown_080D6EE8:
    .incbin "baserom_sa3.gba", 0x000D6EE8, 0x18

    .global gUnknown_080D6F00
gUnknown_080D6F00:
    .incbin "baserom_sa3.gba", 0x000D6F00, 0xC

    .global gUnknown_080D6F0C
gUnknown_080D6F0C:
    .incbin "baserom_sa3.gba", 0x000D6F0C, 0x18

    .global gStringSelectStage
gStringSelectStage:
    .ascii "SELECT STAGE\0"
    mAlignWord

    .global gStringZoneNActN
gStringZoneNActN:
    .ascii "ZONE %d  ACT %d\0"
    mAlignWord

    .global gStringPressABtn
gStringPressABtn:
    .ascii "PRESS A BTN\0"

    .global gStringPleaseWait
gStringPleaseWait:
    .ascii "PLEASE WAIT\0"
    mAlignWord

    .global gUnknown_080D6F5C
gUnknown_080D6F5C:
    .incbin "baserom_sa3.gba", 0x000D6F5C, 0xC0

    .global gUnknown_080D701C
gUnknown_080D701C:
    .incbin "baserom_sa3.gba", 0x000D701C, 0x8

    .global gUnknown_080D7024
gUnknown_080D7024:
    .incbin "baserom_sa3.gba", 0x000D7024, 0x30

    .global gUnknown_080D7054
gUnknown_080D7054:
    .incbin "baserom_sa3.gba", 0x000D7054, 0x30

    .global gUnknown_080D7084
gUnknown_080D7084:
    .incbin "baserom_sa3.gba", 0x000D7084, 0x30

    .global gUnknown_080D70B4
gUnknown_080D70B4:
    .incbin "baserom_sa3.gba", 0x000D70B4, 0x8

    .global gUnknown_080D70BC
gUnknown_080D70BC:
    .incbin "baserom_sa3.gba", 0x000D70BC, 0x10

    .global gUnknown_080D70CC
gUnknown_080D70CC:
    .incbin "baserom_sa3.gba", 0x000D70CC, 0x30

    .global gUnknown_080D70FC
gUnknown_080D70FC:
    .incbin "baserom_sa3.gba", 0x000D70FC, 0x38

    .global gUnknown_080D7134
gUnknown_080D7134:
    .incbin "baserom_sa3.gba", 0x000D7134, 0x60

    .global gUnknown_080D7194
gUnknown_080D7194:
    .incbin "baserom_sa3.gba", 0x000D7194, 0x30

    .global gUnknown_080D71C4
gUnknown_080D71C4:
    .incbin "baserom_sa3.gba", 0x000D71C4, 0x30

    .global gUnknown_080D71F4
gUnknown_080D71F4:
    .incbin "baserom_sa3.gba", 0x000D71F4, 0x8

    .global gUnknown_080D71FC
gUnknown_080D71FC:
    .incbin "baserom_sa3.gba", 0x000D71FC, 0x30

    .global gUnknown_080D722C
gUnknown_080D722C:
    .incbin "baserom_sa3.gba", 0x000D722C, 0x8

    .global gUnknown_080D7234
gUnknown_080D7234:
    .incbin "baserom_sa3.gba", 0x000D7234, 0x30

    .global gUnknown_080D7264
gUnknown_080D7264:
    .incbin "baserom_sa3.gba", 0x000D7264, 0xB8

    .global gUnknown_080D731C
gUnknown_080D731C:
    .incbin "baserom_sa3.gba", 0x000D731C, 0x18

    .global gUnknown_080D7334
gUnknown_080D7334:
    .incbin "baserom_sa3.gba", 0x000D7334, 0x30

    .global gUnknown_080D7364
gUnknown_080D7364:
    .incbin "baserom_sa3.gba", 0x000D7364, 0x8

    .global gUnknown_080D736C
gUnknown_080D736C:
    .incbin "baserom_sa3.gba", 0x000D736C, 0x10

    .global gUnknown_080D737C
gUnknown_080D737C:
    .incbin "baserom_sa3.gba", 0x000D737C, 0x20

    .global gUnknown_080D739C
gUnknown_080D739C:
    .incbin "baserom_sa3.gba", 0x000D739C, 0x20

    .global gUnknown_080D73BC
gUnknown_080D73BC:
    .incbin "baserom_sa3.gba", 0x000D73BC, 0x4

    .global gUnknown_080D73C0
gUnknown_080D73C0:
    .incbin "baserom_sa3.gba", 0x000D73C0, 0x8

    .global gUnknown_080D73C8
gUnknown_080D73C8:
    .incbin "baserom_sa3.gba", 0x000D73C8, 0x8

    .global gUnknown_080D73D0
gUnknown_080D73D0:
    .incbin "baserom_sa3.gba", 0x000D73D0, 0x60

    .global gUnknown_080D7430
gUnknown_080D7430:
    .incbin "baserom_sa3.gba", 0x000D7430, 0x8

    .global gUnknown_080D7438
gUnknown_080D7438:
    .incbin "baserom_sa3.gba", 0x000D7438, 0x8

    .global gUnknown_080D7440
gUnknown_080D7440:
    .incbin "baserom_sa3.gba", 0x000D7440, 0x8

    .global gUnknown_080D7448
gUnknown_080D7448:
    .incbin "baserom_sa3.gba", 0x000D7448, 0x8

    .global gUnknown_080D7450
gUnknown_080D7450:
    .incbin "baserom_sa3.gba", 0x000D7450, 0x8

    .global gUnknown_080D7458
gUnknown_080D7458:
    .incbin "baserom_sa3.gba", 0x000D7458, 0x8

    .global gUnknown_080D7460
gUnknown_080D7460:
    .incbin "baserom_sa3.gba", 0x000D7460, 0x8

    .global gUnknown_080D7468
gUnknown_080D7468:
    .incbin "baserom_sa3.gba", 0x000D7468, 0x8

    .global gUnknown_080D7470
gUnknown_080D7470:
    .incbin "baserom_sa3.gba", 0x000D7470, 0x38

    .global gUnknown_080D74A8
gUnknown_080D74A8:
    .incbin "baserom_sa3.gba", 0x000D74A8, 0x10

    .global gUnknown_080D74B8
gUnknown_080D74B8:
    .incbin "baserom_sa3.gba", 0x000D74B8, 0x16

    .global gUnknown_080D74CE
gUnknown_080D74CE:
    .incbin "baserom_sa3.gba", 0x000D74CE, 0x62

    .global gUnknown_080D7530
gUnknown_080D7530:
    .incbin "baserom_sa3.gba", 0x000D7530, 0xF8

    .global gUnknown_080D7628
gUnknown_080D7628:
    .incbin "baserom_sa3.gba", 0x000D7628, 0x30

    .global gUnknown_080D7658
gUnknown_080D7658:
    .incbin "baserom_sa3.gba", 0x000D7658, 0x60

    .global gUnknown_080D76B8
gUnknown_080D76B8:
    .incbin "baserom_sa3.gba", 0x000D76B8, 0x8

    .global gUnknown_080D76C0
gUnknown_080D76C0:
    .incbin "baserom_sa3.gba", 0x000D76C0, 0x30

    .global gUnknown_080D76F0
gUnknown_080D76F0:
    .incbin "baserom_sa3.gba", 0x000D76F0, 0x50

    .global gUnknown_080D7740
gUnknown_080D7740:
    .incbin "baserom_sa3.gba", 0x000D7740, 0x8

    .global sSongNames
sSongNames:
    .incbin "baserom_sa3.gba", 0x000D7748, 0x133C

    .global gUnknown_080D8A84
gUnknown_080D8A84:
    .short 0x462 @ ANIM_ASCII
    .byte  0x00, 0x00
    mPtr 0

    .global gUnknown_080D8A8C
gUnknown_080D8A8C:
    .incbin "baserom_sa3.gba", 0x000D8A8C, 0x20

    .global gUnknown_080D8AAC
gUnknown_080D8AAC:
    .incbin "baserom_sa3.gba", 0x000D8AAC, 0x20

    .global gUnknown_080D8ACC
gUnknown_080D8ACC:
    .incbin "baserom_sa3.gba", 0x000D8ACC, 0x10

    .global gUnknown_080D8ADC
gUnknown_080D8ADC:
    .incbin "baserom_sa3.gba", 0x000D8ADC, 0x8

    .global gUnknown_080D8AE4
gUnknown_080D8AE4:
    .incbin "baserom_sa3.gba", 0x000D8AE4, 0x8

    .global gUnknown_080D8AEC
gUnknown_080D8AEC:
    .incbin "baserom_sa3.gba", 0x000D8AEC, 0x8

    .global gUnknown_080D8AF4
gUnknown_080D8AF4:
    .incbin "baserom_sa3.gba", 0x000D8AF4, 0x50

    .global gUnknown_080D8B44
gUnknown_080D8B44:
    .incbin "baserom_sa3.gba", 0x000D8B44, 0x8

    .global gUnknown_080D8B4C
gUnknown_080D8B4C:
    .incbin "baserom_sa3.gba", 0x000D8B4C, 0x50

    .global gUnknown_080D8B9C
gUnknown_080D8B9C:
    .incbin "baserom_sa3.gba", 0x000D8B9C, 0x14

    .global gUnknown_080D8BB0
gUnknown_080D8BB0:
    .incbin "baserom_sa3.gba", 0x000D8BB0, 0x28

    .global gUnknown_080D8BD8
gUnknown_080D8BD8:
    .incbin "baserom_sa3.gba", 0x000D8BD8, 0xA

    .global gUnknown_080D8BE2
gUnknown_080D8BE2:
    .incbin "baserom_sa3.gba", 0x000D8BE2, 0x5

    .global gUnknown_080D8BE7
gUnknown_080D8BE7:
    .incbin "baserom_sa3.gba", 0x000D8BE7, 0xD

    .global gUnknown_080D8BF4
gUnknown_080D8BF4:
    .incbin "baserom_sa3.gba", 0x000D8BF4, 0x30

    .global gUnknown_080D8C24
gUnknown_080D8C24:
    .incbin "baserom_sa3.gba", 0x000D8C24, 0x30

    .global gUnknown_080D8C54
gUnknown_080D8C54:
    .incbin "baserom_sa3.gba", 0x000D8C54, 0x8

    .global gUnknown_080D8C5C
gUnknown_080D8C5C:
    .incbin "baserom_sa3.gba", 0x000D8C5C, 0x8

    .global gUnknown_080D8C64
gUnknown_080D8C64:
    .incbin "baserom_sa3.gba", 0x000D8C64, 0x8

    .global gUnknown_080D8C6C
gUnknown_080D8C6C:
    .incbin "baserom_sa3.gba", 0x000D8C6C, 0x8

    .global gUnknown_080D8C74
gUnknown_080D8C74:
    .incbin "baserom_sa3.gba", 0x000D8C74, 0x60

    .global gUnknown_080D8CD4
gUnknown_080D8CD4:
    .incbin "baserom_sa3.gba", 0x000D8CD4, 0x8

    .global gUnknown_080D8CDC
gUnknown_080D8CDC:
    .incbin "baserom_sa3.gba", 0x000D8CDC, 0x24

    .global gUnknown_080D8D00
gUnknown_080D8D00:
    .incbin "baserom_sa3.gba", 0x000D8D00, 0x8

    .global gUnknown_080D8D08
gUnknown_080D8D08:
    .incbin "baserom_sa3.gba", 0x000D8D08, 0x178

    .global gUnknown_080D8E80
gUnknown_080D8E80:
    .incbin "baserom_sa3.gba", 0x000D8E80, 0x78

    .global gUnknown_080D8EF8
gUnknown_080D8EF8:
    .incbin "baserom_sa3.gba", 0x000D8EF8, 0x8

    .global gUnknown_080D8F00
gUnknown_080D8F00:
    .incbin "baserom_sa3.gba", 0x000D8F00, 0x8

    .global gUnknown_080D8F08
gUnknown_080D8F08:
    .incbin "baserom_sa3.gba", 0x000D8F08, 0x8

    .global gUnknown_080D8F10
gUnknown_080D8F10:
    .incbin "baserom_sa3.gba", 0x000D8F10, 0x8

    .global gUnknown_080D8F18
gUnknown_080D8F18:
    .incbin "baserom_sa3.gba", 0x000D8F18, 0x5

    .global gUnknown_080D8F1D
gUnknown_080D8F1D:
    .incbin "baserom_sa3.gba", 0x000D8F1D, 0x78

    .global gUnknown_080D8F95
gUnknown_080D8F95:
    .incbin "baserom_sa3.gba", 0x000D8F95, 0x79

    .global gAnnouncerSelect1st
gAnnouncerSelect1st:
    .short 0x1F5 @ VOICE__ANNOUNCER__SONIC_LOW
    .short 0x1F7 @ VOICE__ANNOUNCER__TAILS_LOW
    .short 0x1F9 @ VOICE__ANNOUNCER__KNUCKLES_LOW
    .short 0x1FD @ VOICE__ANNOUNCER__CREAM_LOW
    .short 0x1FB @ VOICE__ANNOUNCER__AMY_LOW

    .global gAnnouncerSelect2nd
gAnnouncerSelect2nd:
    .short 0x1F6 @ VOICE__ANNOUNCER__SONIC_HIGH
    .short 0x1F8 @ VOICE__ANNOUNCER__TAILS_HIGH
    .short 0x1FA @ VOICE__ANNOUNCER__KNUCKLES_HIGH
    .short 0x1FE @ VOICE__ANNOUNCER__CREAM_HIGH
    .short 0x1FC @ VOICE__ANNOUNCER__AMY_HIGH

    .global gCharacterSelectedVoices
gCharacterSelectedVoices:
    .short 0x265 @ VOICE__SONIC__OKAY
    .short 0x269 @ VOICE__TAILS__OKAY
    .short 0x272 @ VOICE__KNUCKLES__LETS_GO
    .short 0x278 @ VOICE__CREAM__HERE_WE_GO
    .short 0x274 @ VOICE__AMY__WOOHOO

    .global gUnknown_080D902C
gUnknown_080D902C:
    .incbin "baserom_sa3.gba", 0x000D902C, 0x28

    .global gUnknown_080D9054
gUnknown_080D9054:
    .incbin "baserom_sa3.gba", 0x000D9054, 0x28

    .global gUnknown_080D907C
gUnknown_080D907C:
    .incbin "baserom_sa3.gba", 0x000D907C, 0x48

    .global gUnknown_080D90C4
gUnknown_080D90C4:
    .incbin "baserom_sa3.gba", 0x000D90C4, 0x38

    .global gUnknown_080D90FC
gUnknown_080D90FC:
    .incbin "baserom_sa3.gba", 0x000D90FC, 0x38

    .global gUnknown_080D9134
gUnknown_080D9134:
    .incbin "baserom_sa3.gba", 0x000D9134, 0x30

    .global gUnknown_080D9164
gUnknown_080D9164:
    .incbin "baserom_sa3.gba", 0x000D9164, 0x48

    .global gUnknown_080D91AC
gUnknown_080D91AC:
    .incbin "baserom_sa3.gba", 0x000D91AC, 0x20

    .global gUnknown_080D91CC
gUnknown_080D91CC:
    .incbin "baserom_sa3.gba", 0x000D91CC, 0x50

    .global gUnknown_080D921C
gUnknown_080D921C:
    .incbin "baserom_sa3.gba", 0x000D921C, 0x30

    .global gUnknown_080D924C
gUnknown_080D924C:
    .incbin "baserom_sa3.gba", 0x000D924C, 0x18

    .global gUnknown_080D9264
gUnknown_080D9264:
    .incbin "baserom_sa3.gba", 0x000D9264, 0x18

    .global gUnknown_080D927C
gUnknown_080D927C:
    .incbin "baserom_sa3.gba", 0x000D927C, 0x30

    .global gUnknown_080D92AC
gUnknown_080D92AC:
    .incbin "baserom_sa3.gba", 0x000D92AC, 0x28

    .global gUnknown_080D92D4
gUnknown_080D92D4:
    .incbin "baserom_sa3.gba", 0x000D92D4, 0x38

    .global gUnknown_080D930C
gUnknown_080D930C:
    .incbin "baserom_sa3.gba", 0x000D930C, 0x18

    .global gUnknown_080D9324
gUnknown_080D9324:
    .incbin "baserom_sa3.gba", 0x000D9324, 0x18

    .global gUnknown_080D933C
gUnknown_080D933C:
    .incbin "baserom_sa3.gba", 0x000D933C, 0x28

    .global gUnknown_080D9364
gUnknown_080D9364:
    .incbin "baserom_sa3.gba", 0x000D9364, 0x30

    .global gUnknown_080D9394
gUnknown_080D9394:
    .incbin "baserom_sa3.gba", 0x000D9394, 0x18

    .global gUnknown_080D93AC
gUnknown_080D93AC:
    .incbin "baserom_sa3.gba", 0x000D93AC, 0x28

    .global gUnknown_080D93D4
gUnknown_080D93D4:
    mPtr gUnknown_080D902C
    mPtr gUnknown_080D9164
    mPtr gUnknown_080D907C
    mPtr gUnknown_080D90FC
    mPtr gUnknown_080D91CC
    mPtr gUnknown_080D924C

    .global gUnknown_080D93EC
gUnknown_080D93EC:
    mPtr gUnknown_080D9054
    mPtr gUnknown_080D91AC
    mPtr gUnknown_080D90C4
    mPtr gUnknown_080D9134
    mPtr gUnknown_080D921C
    mPtr gUnknown_080D9264

    .global gUnknown_080D9404
gUnknown_080D9404:
    mPtr gUnknown_080D927C
    mPtr gUnknown_080D92AC
    mPtr gUnknown_080D92D4
    mPtr gUnknown_080D930C
    mPtr gUnknown_080D9324
    mPtr gUnknown_080D933C
    mPtr gUnknown_080D9364
    mPtr gUnknown_080D9394
    mPtr gUnknown_080D93AC

    .global gUnknown_080D9428
gUnknown_080D9428:
    .incbin "baserom_sa3.gba", 0x000D9428, 0xA

    .global gUnknown_080D9432
gUnknown_080D9432:
    .incbin "baserom_sa3.gba", 0x000D9432, 0x6

    .global gUnknown_080D9438
gUnknown_080D9438:
    .incbin "baserom_sa3.gba", 0x000D9438, 0x6

    .global gUnknown_080D943E
gUnknown_080D943E:
    .incbin "baserom_sa3.gba", 0x000D943E, 0x3

    .global gUnknown_080D9441
gUnknown_080D9441:
    .incbin "baserom_sa3.gba", 0x000D9441, 0x3

    .global gUnknown_080D9444
gUnknown_080D9444:
    .incbin "baserom_sa3.gba", 0x000D9444, 0x4

    .global gUnknown_080D9448
gUnknown_080D9448:
    .incbin "baserom_sa3.gba", 0x000D9448, 0x20

    .global gUnknown_080D9468
gUnknown_080D9468:
    .incbin "baserom_sa3.gba", 0x000D9468, 0x5

    .global gUnknown_080D946D
gUnknown_080D946D:
    .incbin "baserom_sa3.gba", 0x000D946D, 0x7

    .global gUnknown_080D9474
gUnknown_080D9474:
    .incbin "baserom_sa3.gba", 0x000D9474, 0x30

    .global gUnknown_080D94A4
gUnknown_080D94A4:
    .incbin "baserom_sa3.gba", 0x000D94A4, 0x40

    .global gUnknown_080D94E4
gUnknown_080D94E4:
    .incbin "baserom_sa3.gba", 0x000D94E4, 0x28

    .global gUnknown_080D950C
gUnknown_080D950C:
    .incbin "baserom_sa3.gba", 0x000D950C, 0x30
    
    .global gUnknown_080D953C
gUnknown_080D953C:
    .incbin "baserom_sa3.gba", 0x000D953C, 0x28

    .global gUnknown_080D9564
gUnknown_080D9564:
    mPtr gUnknown_080D9474
    mPtr gUnknown_080D94A4
    mPtr gUnknown_080D94E4
    mPtr gUnknown_080D950C
    mPtr gUnknown_080D953C

    .global gUnknown_080D9578
gUnknown_080D9578:
    .incbin "baserom_sa3.gba", 0x000D9578, 0x20

    .global gUnknown_080D9598
gUnknown_080D9598:
    .incbin "baserom_sa3.gba", 0x000D9598, 0x20

    .global gUnknown_080D95B8
gUnknown_080D95B8:
    .incbin "baserom_sa3.gba", 0x000D95B8, 0x20

    .global gUnknown_080D95D8
gUnknown_080D95D8:
    .incbin "baserom_sa3.gba", 0x000D95D8, 0x20

    .global gUnknown_080D95F8
gUnknown_080D95F8:
    .incbin "baserom_sa3.gba", 0x000D95F8, 0x20

    .global gUnknown_080D9618
gUnknown_080D9618:
    .incbin "baserom_sa3.gba", 0x000D9618, 0x5

    .global gUnknown_080D961D
gUnknown_080D961D:
    .incbin "baserom_sa3.gba", 0x000D961D, 0x7

    .global gUnknown_080D9624
gUnknown_080D9624:
    .incbin "baserom_sa3.gba", 0x000D9624, 0x10

    .global gUnknown_080D9634
gUnknown_080D9634:
    .incbin "baserom_sa3.gba", 0x000D9634, 0xC

    .global gUnknown_080D9640
gUnknown_080D9640:
    .incbin "baserom_sa3.gba", 0x000D9640, 0x4

    .global gUnknown_080D9644
gUnknown_080D9644:
    .incbin "baserom_sa3.gba", 0x000D9644, 0x24

    .global gUnknown_080D9668
gUnknown_080D9668:
    .incbin "baserom_sa3.gba", 0x000D9668, 0x10

    .global gUnknown_080D9678
gUnknown_080D9678:
    .incbin "baserom_sa3.gba", 0x000D9678, 0xC0

    .global gUnknown_080D9738
gUnknown_080D9738:
    .incbin "baserom_sa3.gba", 0x000D9738, 0xC0

    .global gUnknown_080D97F8
gUnknown_080D97F8:
    .incbin "baserom_sa3.gba", 0x000D97F8, 0xA0

    .global gUnknown_080D9898
gUnknown_080D9898:
    .incbin "baserom_sa3.gba", 0x000D9898, 0x40

    .global gUnknown_080D98D8
gUnknown_080D98D8:
    .incbin "baserom_sa3.gba", 0x000D98D8, 0x30

    .global gUnknown_080D9908
gUnknown_080D9908:
    .incbin "baserom_sa3.gba", 0x000D9908, 0x78

    .global gUnknown_080D9980
gUnknown_080D9980:
    .incbin "baserom_sa3.gba", 0x000D9980, 0x28

    .global gUnknown_080D99A8
gUnknown_080D99A8:
    .incbin "baserom_sa3.gba", 0x000D99A8, 0x28

    .global gUnknown_080D99D0
gUnknown_080D99D0:
    .incbin "baserom_sa3.gba", 0x000D99D0, 0xC

    .global gUnknown_080D99DC
gUnknown_080D99DC:
    .incbin "baserom_sa3.gba", 0x000D99DC, 0x40

    .global gUnknown_080D9A1C
gUnknown_080D9A1C:
    .incbin "baserom_sa3.gba", 0x000D9A1C, 0x40

    .global gUnknown_080D9A5C
gUnknown_080D9A5C:
    .incbin "baserom_sa3.gba", 0x000D9A5C, 0x40
    
    .global gUnknown_080D9A9C
gUnknown_080D9A9C:
    .incbin "baserom_sa3.gba", 0x000D9A9C, 0x40

    .global gUnknown_080D9ADC
gUnknown_080D9ADC:
    .incbin "baserom_sa3.gba", 0x000D9ADC, 0x40

    .global gUnknown_080D9B1C
gUnknown_080D9B1C:
    .incbin "baserom_sa3.gba", 0x000D9B1C, 0x40

    .global gUnknown_080D9B5C
gUnknown_080D9B5C:
    mPtr gUnknown_080D99DC
    mPtr gUnknown_080D9A1C
    mPtr gUnknown_080D9A5C
    mPtr gUnknown_080D9A9C
    mPtr gUnknown_080D9ADC
    mPtr gUnknown_080D9B1C

    .global gCharacterSelectOrderLUT
gCharacterSelectOrderLUT:
    .incbin "baserom_sa3.gba", 0x000D9B74, 0x5

    .global gUnknown_080D9B79
gUnknown_080D9B79:
    .incbin "baserom_sa3.gba", 0x000D9B79, 0x5

    .global gUnknown_080D9B7E
gUnknown_080D9B7E:
    .incbin "baserom_sa3.gba", 0x000D9B7E, 0xA

    .global gUnknown_080D9B88
gUnknown_080D9B88:
    .incbin "baserom_sa3.gba", 0x000D9B88, 0x22

    .global gUnknown_080D9BAA
gUnknown_080D9BAA:
    .incbin "baserom_sa3.gba", 0x000D9BAA, 0x8

    .global gUnknown_080D9BB2
gUnknown_080D9BB2:
    .incbin "baserom_sa3.gba", 0x000D9BB2, 0xE

    .global gUnknown_080D9BC0
gUnknown_080D9BC0:
    .incbin "baserom_sa3.gba", 0x000D9BC0, 0xD0

    .global gUnknown_080D9C90
gUnknown_080D9C90:
    .incbin "baserom_sa3.gba", 0x000D9C90, 0x78

    .global gUnknown_080D9D08
gUnknown_080D9D08:
    .incbin "baserom_sa3.gba", 0x000D9D08, 0x138

    .global gUnknown_080D9E40
gUnknown_080D9E40:
    .incbin "baserom_sa3.gba", 0x000D9E40, 0x18

    .global gUnknown_080D9E58
gUnknown_080D9E58:
    .incbin "baserom_sa3.gba", 0x000D9E58, 0x10

    .global gUnknown_080D9E68
gUnknown_080D9E68:
    .incbin "baserom_sa3.gba", 0x000D9E68, 0x18

    .global gUnknown_080D9E80
gUnknown_080D9E80:
    .incbin "baserom_sa3.gba", 0x000D9E80, 0x10

    .global gUnknown_080D9E90
gUnknown_080D9E90:
    .incbin "baserom_sa3.gba", 0x000D9E90, 0x78

    .global gUnknown_080D9F08
gUnknown_080D9F08:
    .incbin "baserom_sa3.gba", 0x000D9F08, 0x50

    .global gUnknown_080D9F58
gUnknown_080D9F58:
    .incbin "baserom_sa3.gba", 0x000D9F58, 0x4

    .global gUnknown_080D9F5C
gUnknown_080D9F5C:
    .incbin "baserom_sa3.gba", 0x000D9F5C, 0x21

    .global gUnknown_080D9F7D
gUnknown_080D9F7D:
    .incbin "baserom_sa3.gba", 0x000D9F7D, 0x6

    .global gUnknown_080D9F83
gUnknown_080D9F83:
    .incbin "baserom_sa3.gba", 0x000D9F83, 0x9

    .global gUnknown_080D9F8C
gUnknown_080D9F8C:
    .incbin "baserom_sa3.gba", 0x000D9F8C, 0x18

    .global gUnknown_080D9FA4
gUnknown_080D9FA4:
    .incbin "baserom_sa3.gba", 0x000D9FA4, 0x18

    .global gUnknown_080D9FBC
gUnknown_080D9FBC:
    .incbin "baserom_sa3.gba", 0x000D9FBC, 0x7

    .global gUnknown_080D9FC3
gUnknown_080D9FC3:
    .incbin "baserom_sa3.gba", 0x000D9FC3, 0x7

    .global gUnknown_080D9FCA
gUnknown_080D9FCA:
    .incbin "baserom_sa3.gba", 0x000D9FCA, 0x6

    .global gUnknown_080D9FD0
gUnknown_080D9FD0:
    .incbin "baserom_sa3.gba", 0x000D9FD0, 0x14

    .global gUnknown_080D9FE4
gUnknown_080D9FE4:
    .incbin "baserom_sa3.gba", 0x000D9FE4, 0x28

    .global gUnknown_080DA00C
gUnknown_080DA00C:
    .incbin "baserom_sa3.gba", 0x000DA00C, 0x28

    .global gUnknown_080DA034
gUnknown_080DA034:
    .incbin "baserom_sa3.gba", 0x000DA034, 0x20

    .global gUnknown_080DA054
gUnknown_080DA054:
    .incbin "baserom_sa3.gba", 0x000DA054, 0x18

    .global gUnknown_080DA06C
gUnknown_080DA06C:
    .incbin "baserom_sa3.gba", 0x000DA06C, 0x18

    .global gUnknown_080DA084
gUnknown_080DA084:
    .incbin "baserom_sa3.gba", 0x000DA084, 0x200

    .global gUnknown_080DA284
gUnknown_080DA284:
    .incbin "baserom_sa3.gba", 0x000DA284, 0x8

    .global gUnknown_080DA28C
gUnknown_080DA28C:
    .incbin "baserom_sa3.gba", 0x000DA28C, 0x1E

    .global gUnknown_080DA2AA
gUnknown_080DA2AA:
    .incbin "baserom_sa3.gba", 0x000DA2AA, 0xF

    .global gUnknown_080DA2B9
gUnknown_080DA2B9:
    .incbin "baserom_sa3.gba", 0x000DA2B9, 0xF

    .global gUnknown_080DA2C8
gUnknown_080DA2C8:
    .incbin "baserom_sa3.gba", 0x000DA2C8, 0x20

    .global gUnknown_080DA2E8
gUnknown_080DA2E8:
    .incbin "baserom_sa3.gba", 0x000DA2E8, 0x10

    .global gUnknown_080DA2F8
gUnknown_080DA2F8:
    .incbin "baserom_sa3.gba", 0x000DA2F8, 0x30

    .global gUnknown_080DA328
gUnknown_080DA328:
    .incbin "baserom_sa3.gba", 0x000DA328, 0x8

    .global gUnknown_080DA330
gUnknown_080DA330:
    .incbin "baserom_sa3.gba", 0x000DA330, 0x28

    .global gUnknown_080DA358
gUnknown_080DA358:
    .incbin "baserom_sa3.gba", 0x000DA358, 0x8

    .global gUnknown_080DA360
gUnknown_080DA360:
    .incbin "baserom_sa3.gba", 0x000DA360, 0xC0

    .global gUnknown_080DA420
gUnknown_080DA420:
    .incbin "baserom_sa3.gba", 0x000DA420, 0x8

    .global strCredits_CreatedBy
strCredits_CreatedBy:       @ 0x080DA428
    .byte 10    @ strlen("CREATED0BY")
    .ascii "CREATED0BY\0"
    .space 0x080DA44A - 0x080DA434
    .byte 0x4B, 0, 0, 0, 3, 0

    .global strCredits_SonicTeam
strCredits_SonicTeam:       @ 0x080DA450
    .byte 10
    .ascii "SONIC0TEAM\0"
    .space 0x080DA472 - 0x080DA45C
    .byte 0x78, 0, 0x28, 0, 2, 0
    
    .global strCredits_Producer
strCredits_Producer:        @ 0x080DA478
    .byte 0x08
    .ascii "PRODUCER\0"
    .incbin "baserom_sa3.gba", 0x000DA482, 0x080DB804-0x080DA482

    .global gUnknown_080DB804
gUnknown_080DB804:
    .incbin "baserom_sa3.gba", 0x000DB804, 0x20

    .global gUnknown_080DB824
gUnknown_080DB824:
    .incbin "baserom_sa3.gba", 0x000DB824, 0x20

    .global gUnknown_080DB844
gUnknown_080DB844:
    .incbin "baserom_sa3.gba", 0x000DB844, 0x20

    .global gUnknown_080DB864
gUnknown_080DB864:
    .incbin "baserom_sa3.gba", 0x000DB864, 0x4

    .global gUnknown_080DB868
gUnknown_080DB868:
    .incbin "baserom_sa3.gba", 0x000DB868, 0xC8

    .global gUnknown_080DB930
gUnknown_080DB930:
    .incbin "baserom_sa3.gba", 0x000DB930, 0x20

    .global gUnknown_080DB950
gUnknown_080DB950:
    .incbin "baserom_sa3.gba", 0x000DB950, 0x8

    .global gUnknown_080DB958
gUnknown_080DB958:
    .incbin "baserom_sa3.gba", 0x000DB958, 0x26

    .global gUnknown_080DB97E
gUnknown_080DB97E:
    .incbin "baserom_sa3.gba", 0x000DB97E, 0x16

    .global gUnknown_080DB994
gUnknown_080DB994:
    .incbin "baserom_sa3.gba", 0x000DB994, 0x8

    .global gUnknown_080DB99C
gUnknown_080DB99C:
    .incbin "baserom_sa3.gba", 0x000DB99C, 0x18

    .global gUnknown_080DB9B4
gUnknown_080DB9B4:
    .incbin "baserom_sa3.gba", 0x000DB9B4, 0x20

    .global gUnknown_080DB9D4
gUnknown_080DB9D4:
    .incbin "baserom_sa3.gba", 0x000DB9D4, 0x10

    .global gUnknown_080DB9E4
gUnknown_080DB9E4:
    .incbin "baserom_sa3.gba", 0x000DB9E4, 0x8
    
    .global gUnknown_080DB9EC
gUnknown_080DB9EC:
    .incbin "baserom_sa3.gba", 0x000DB9EC, 0x18

    .global gUnknown_080DBA04
gUnknown_080DBA04:
    .incbin "baserom_sa3.gba", 0x000DBA04, 0x20

    .global gUnknown_080DBA24
gUnknown_080DBA24:
    .incbin "baserom_sa3.gba", 0x000DBA24, 0x10

    .global gUnknown_080DBA34
gUnknown_080DBA34:
    .incbin "baserom_sa3.gba", 0x000DBA34, 0x10

    .global gUnknown_080DBA44
gUnknown_080DBA44:
    .incbin "baserom_sa3.gba", 0x000DBA44, 0x10

    .global gUnknown_080DBA54
gUnknown_080DBA54:
    .incbin "baserom_sa3.gba", 0x000DBA54, 0x10

    .global gUnknown_080DBA64
gUnknown_080DBA64:
    .incbin "baserom_sa3.gba", 0x000DBA64, 0x8

    .global gUnknown_080DBA6C
gUnknown_080DBA6C:
    .incbin "baserom_sa3.gba", 0x000DBA6C, 0x8

    .global gUnknown_080DBA74
gUnknown_080DBA74:
    .incbin "baserom_sa3.gba", 0x000DBA74, 0x18

    .global gUnknown_080DBA8C
gUnknown_080DBA8C:
    .incbin "baserom_sa3.gba", 0x000DBA8C, 0x8

    .global gUnknown_080DBA94
gUnknown_080DBA94:
    .incbin "baserom_sa3.gba", 0x000DBA94, 0x10

    .global gUnknown_080DBAA4
gUnknown_080DBAA4:
    mPtr gUnknown_080DB99C
    mPtr gUnknown_080DB9B4
    mPtr gUnknown_080DB9D4
    mPtr gUnknown_080DB9E4

    .global gUnknown_080DBAB4
gUnknown_080DBAB4:
    mPtr gUnknown_080DBA44
    mPtr gUnknown_080DBA54
    mPtr gUnknown_080DBA54

    .global gUnknown_080DBAC0
gUnknown_080DBAC0:
    mPtr gUnknown_080DB9EC
    mPtr gUnknown_080DBA04

    .global gUnknown_080DBAC8
gUnknown_080DBAC8:
    mPtr gUnknown_080DBA24
    mPtr gUnknown_080DBA34

    .global gUnknown_080DBAD0
gUnknown_080DBAD0:
    mPtr gUnknown_080DBA64
    mPtr gUnknown_080DBA6C

    .global gUnknown_080DBAD8
gUnknown_080DBAD8:
    .incbin "baserom_sa3.gba", 0x000DBAD8, 0xA0

    .global gUnknown_080DBB78
gUnknown_080DBB78:
    .incbin "baserom_sa3.gba", 0x000DBB78, 0x20
    
    .global gUnknown_080DBB98
gUnknown_080DBB98:
    .incbin "baserom_sa3.gba", 0x000DBB98, 0x20

    .global gUnknown_080DBBB8
gUnknown_080DBBB8:
    .incbin "baserom_sa3.gba", 0x000DBBB8, 0x20

    .global gUnknown_080DBBD8
gUnknown_080DBBD8:
    .incbin "baserom_sa3.gba", 0x000DBBD8, 0x20

    .global gUnknown_080DBBF8
gUnknown_080DBBF8:
    .incbin "baserom_sa3.gba", 0x000DBBF8, 0x20

    .global gUnknown_080DBC18
gUnknown_080DBC18:
    .incbin "baserom_sa3.gba", 0x000DBC18, 0x20

    .global gUnknown_080DBC38
gUnknown_080DBC38:
    .incbin "baserom_sa3.gba", 0x000DBC38, 0x20

    .global gUnknown_080DBC58
gUnknown_080DBC58:
    .incbin "baserom_sa3.gba", 0x000DBC58, 0x20

    .global gUnknown_080DBC78
gUnknown_080DBC78:
    .incbin "baserom_sa3.gba", 0x000DBC78, 0x1B

    .global gUnknown_080DBC93
gUnknown_080DBC93:
    .incbin "baserom_sa3.gba", 0x000DBC93, 0x1B

    .global gUnknown_080DBCAE
gUnknown_080DBCAE:
    .incbin "baserom_sa3.gba", 0x000DBCAE, 0x4

    .global gUnknown_080DBCB2
gUnknown_080DBCB2:
    .incbin "baserom_sa3.gba", 0x000DBCB2, 0x3

    .global gUnknown_080DBCB5
gUnknown_080DBCB5:
    .incbin "baserom_sa3.gba", 0x000DBCB5, 0x2

    .global gUnknown_080DBCB7
gUnknown_080DBCB7:
    .incbin "baserom_sa3.gba", 0x000DBCB7, 0x2

    .global gUnknown_080DBCB9
gUnknown_080DBCB9:
    .incbin "baserom_sa3.gba", 0x000DBCB9, 0x2

    .global gUnknown_080DBCBB
gUnknown_080DBCBB:
    .incbin "baserom_sa3.gba", 0x000DBCBB, 0x3

    .global gUnknown_080DBCBE
gUnknown_080DBCBE:
    .incbin "baserom_sa3.gba", 0x000DBCBE, 0x1B

    .global gUnknown_080DBCD9
gUnknown_080DBCD9:
    .incbin "baserom_sa3.gba", 0x000DBCD9, 0x1B

    .global gUnknown_080DBCF4
gUnknown_080DBCF4:
    .incbin "baserom_sa3.gba", 0x000DBCF4, 0x5

    .global gUnknown_080DBCF9
gUnknown_080DBCF9:
    .incbin "baserom_sa3.gba", 0x000DBCF9, 0x3

    .global gUnknown_080DBCFC
gUnknown_080DBCFC:
    .incbin "baserom_sa3.gba", 0x000DBCFC, 0x20

    .global gUnknown_080DBD1C
gUnknown_080DBD1C:
    .incbin "baserom_sa3.gba", 0x000DBD1C, 0x18

    .global gUnknown_080DBD34
gUnknown_080DBD34:
    .incbin "baserom_sa3.gba", 0x000DBD34, 0x8

    .global gUnknown_080DBD3C
gUnknown_080DBD3C:
    .incbin "baserom_sa3.gba", 0x000DBD3C, 0x18

    .global gUnknown_080DBD54
gUnknown_080DBD54:
    .incbin "baserom_sa3.gba", 0x000DBD54, 0x8

    .global gUnknown_080DBD5C
gUnknown_080DBD5C:
    .incbin "baserom_sa3.gba", 0x000DBD5C, 0x8

    .global gUnknown_080DBD64
gUnknown_080DBD64:
    .incbin "baserom_sa3.gba", 0x000DBD64, 0x24

    .global gUnknown_080DBD88
gUnknown_080DBD88:
    .incbin "baserom_sa3.gba", 0x000DBD88, 0x8

    .global gPalette_080DBD90
gPalette_080DBD90:
    .incbin "graphics/gPalette_080DBD90.gbapal"
    .incbin "graphics/gPalette_080DBDB0.gbapal"

    .global gPalette_080DBDD0
gPalette_080DBDD0:
    .incbin "graphics/gPalette_080DBDD0.gbapal"
    .incbin "graphics/gPalette_080DBDF0.gbapal"

    .global gPalette_080DBE10
gPalette_080DBE10:
    .incbin "graphics/gPalette_080DBE10.gbapal"
    .incbin "graphics/gPalette_080DBE30.gbapal"

    .global gUnknown_080DBE50
gUnknown_080DBE50:
    .byte 2, 3, 4, 0
