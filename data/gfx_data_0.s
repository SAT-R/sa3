.include "asm/macros/c_decl.inc"
.include "asm/macros/portable.inc"
.include "asm/macros/function.inc"
.include "constants/gba_constants.inc"

.section .rodata

    .global gUnknown_082B9CD4
gUnknown_082B9CD4:
    .incbin "baserom_sa3.gba", 0x002B9CD4, 0x10

    .global gUnknown_082B9CE4
gUnknown_082B9CE4:
    .incbin "baserom_sa3.gba", 0x002B9CE4, 0x194

    .global gUnknown_082B9E78
gUnknown_082B9E78:
    .incbin "baserom_sa3.gba", 0x002B9E78, 0x11FC

    .global gUnknown_082BB074
gUnknown_082BB074:
    .incbin "baserom_sa3.gba", 0x002BB074, 0xC4

    .global zone1_act1_rings
zone1_act1_rings:
    .incbin "baserom_sa3.gba", 0x002BB138, 0x57C

    .global gUnknown_082BB6B4
gUnknown_082BB6B4:
    .incbin "baserom_sa3.gba", 0x002BB6B4, 0x14

    .global gUnknown_082BB6C8
gUnknown_082BB6C8:
    .incbin "baserom_sa3.gba", 0x002BB6C8, 0x208

    .global gUnknown_082BB8D0
gUnknown_082BB8D0:
    .incbin "baserom_sa3.gba", 0x002BB8D0, 0x14

    .global zone1_zone_map_rings
zone1_zone_map_rings:
    .incbin "baserom_sa3.gba", 0x002BB8E4, 0x14

    .global gUnknown_082BB8F8
gUnknown_082BB8F8:
    .incbin "baserom_sa3.gba", 0x002BB8F8, 0x208

    .global gUnknown_082BBB00
gUnknown_082BBB00:
    .incbin "baserom_sa3.gba", 0x002BBB00, 0x15A0

    .global gUnknown_082BD0A0
gUnknown_082BD0A0:
    .incbin "baserom_sa3.gba", 0x002BD0A0, 0xB4

    .global zone1_act2_rings
zone1_act2_rings:
    .incbin "baserom_sa3.gba", 0x002BD154, 0x6A8

    .global gUnknown_082BD7FC
gUnknown_082BD7FC:
    .incbin "baserom_sa3.gba", 0x002BD7FC, 0x1E0

    .global gUnknown_082BD9DC
gUnknown_082BD9DC:
    .incbin "baserom_sa3.gba", 0x002BD9DC, 0xD54

    .global gUnknown_082BE730
gUnknown_082BE730:
    .incbin "baserom_sa3.gba", 0x002BE730, 0xAC

    .global zone1_act3_rings
zone1_act3_rings:
    .incbin "baserom_sa3.gba", 0x002BE7DC, 0x544

    .global gUnknown_082BED20
gUnknown_082BED20:
    .incbin "baserom_sa3.gba", 0x002BED20, 0x10

    .global gUnknown_082BED30
gUnknown_082BED30:
    .incbin "baserom_sa3.gba", 0x002BED30, 0x9C

    .global gUnknown_082BEDCC
gUnknown_082BEDCC:
    .incbin "baserom_sa3.gba", 0x002BEDCC, 0x10

    .global sonic_factory_rings
sonic_factory_rings:
    .incbin "baserom_sa3.gba", 0x002BEDDC, 0x10

    .global gUnknown_082BEDEC
gUnknown_082BEDEC:
    .incbin "baserom_sa3.gba", 0x002BEDEC, 0x10

    .global gUnknown_082BEDFC
gUnknown_082BEDFC:
    .incbin "baserom_sa3.gba", 0x002BEDFC, 0x20

    .global gUnknown_082BEE1C
gUnknown_082BEE1C:
    .incbin "baserom_sa3.gba", 0x002BEE1C, 0x10

    @ Dummy for all capsule minigames (they do not have rings)
    .global zone1_bonus_capsule_rings
zone1_bonus_capsule_rings:
    .incbin "baserom_sa3.gba", 0x002BEE2C, 0x10

    .global gUnknown_082BEE3C
gUnknown_082BEE3C:
    .incbin "baserom_sa3.gba", 0x002BEE3C, 0x88

    .global gUnknown_082BEEC4
gUnknown_082BEEC4:
    .incbin "baserom_sa3.gba", 0x002BEEC4, 0x8C

    .global gUnknown_082BEF50
gUnknown_082BEF50:
    .incbin "baserom_sa3.gba", 0x002BEF50, 0x10

    .global zone1_bonus_enemies_rings
zone1_bonus_enemies_rings:
    .incbin "baserom_sa3.gba", 0x002BEF60, 0x10

    .global gUnknown_082BEF70
gUnknown_082BEF70:
    .incbin "baserom_sa3.gba", 0x002BEF70, 0x14

    .global gUnknown_082BEF84
gUnknown_082BEF84:
    .incbin "baserom_sa3.gba", 0x002BEF84, 0x134

    .global gUnknown_082BF0B8
gUnknown_082BF0B8:
    .incbin "baserom_sa3.gba", 0x002BF0B8, 0x14

    .global zone2_zone_map_rings
zone2_zone_map_rings:
    .incbin "baserom_sa3.gba", 0x002BF0CC, 0x14

    .global gUnknown_082BF0E0
gUnknown_082BF0E0:
    .incbin "baserom_sa3.gba", 0x002BF0E0, 0x144

    .global gUnknown_082BF224
gUnknown_082BF224:
    .incbin "baserom_sa3.gba", 0x002BF224, 0x16EC

    .global gUnknown_082C0910
gUnknown_082C0910:
    .incbin "baserom_sa3.gba", 0x002C0910, 0x88

    .global zone2_act1_rings
zone2_act1_rings:
    .incbin "baserom_sa3.gba", 0x002C0998, 0x354

    .global gUnknown_082C0CEC
gUnknown_082C0CEC:
    .incbin "baserom_sa3.gba", 0x002C0CEC, 0x114

    .global gUnknown_082C0E00
gUnknown_082C0E00:
    .incbin "baserom_sa3.gba", 0x002C0E00, 0x119C

    .global gUnknown_082C1F9C
gUnknown_082C1F9C:
    .incbin "baserom_sa3.gba", 0x002C1F9C, 0x74

    .global zone2_act2_rings
zone2_act2_rings:
    .incbin "baserom_sa3.gba", 0x002C2010, 0x2A0

    .global gUnknown_082C22B0
gUnknown_082C22B0:
    .incbin "baserom_sa3.gba", 0x002C22B0, 0x128

    .global gUnknown_082C23D8
gUnknown_082C23D8:
    .incbin "baserom_sa3.gba", 0x002C23D8, 0xE98

    .global gUnknown_082C3270
gUnknown_082C3270:
    .incbin "baserom_sa3.gba", 0x002C3270, 0x64

    .global zone2_act3_rings
zone2_act3_rings:
    .incbin "baserom_sa3.gba", 0x002C32D4, 0x298

    .global gUnknown_082C356C
gUnknown_082C356C:
    .incbin "baserom_sa3.gba", 0x002C356C, 0x10

    .global gUnknown_082C357C
gUnknown_082C357C:
    .incbin "baserom_sa3.gba", 0x002C357C, 0x8C

    .global gUnknown_082C3608
gUnknown_082C3608:
    .incbin "baserom_sa3.gba", 0x002C3608, 0x10

    .global chao_playground_rings
chao_playground_rings:
    .incbin "baserom_sa3.gba", 0x002C3618, 0x10

    .global gUnknown_082C3628
gUnknown_082C3628:
    .incbin "baserom_sa3.gba", 0x002C3628, 0x78

    .global gUnknown_082C36A0
gUnknown_082C36A0:
    .incbin "baserom_sa3.gba", 0x002C36A0, 0xDC

    .global gUnknown_082C377C
gUnknown_082C377C:
    .incbin "baserom_sa3.gba", 0x002C377C, 0x10
    
    .global zone2_bonus_enemies_rings
zone2_bonus_enemies_rings:
    .incbin "baserom_sa3.gba", 0x002C378C, 0x10

    .global gUnknown_082C379C
gUnknown_082C379C:
    .incbin "baserom_sa3.gba", 0x002C379C, 0x14

    .global gUnknown_082C37B0
gUnknown_082C37B0:
    .incbin "baserom_sa3.gba", 0x002C37B0, 0x1F0

    .global gUnknown_082C39A0
gUnknown_082C39A0:
    .incbin "baserom_sa3.gba", 0x002C39A0, 0x14

    .global zone3_zone_map_rings
zone3_zone_map_rings:
    .incbin "baserom_sa3.gba", 0x002C39B4, 0x14

    .global gUnknown_082C39C8
gUnknown_082C39C8:
    .incbin "baserom_sa3.gba", 0x002C39C8, 0x1F8

    .global gUnknown_082C3BC0
gUnknown_082C3BC0:
    .incbin "baserom_sa3.gba", 0x002C3BC0, 0xEE4

    .global gUnknown_082C4AA4
gUnknown_082C4AA4:
    .incbin "baserom_sa3.gba", 0x002C4AA4, 0xAC

    .global zone3_act1_rings
zone3_act1_rings:
    .incbin "baserom_sa3.gba", 0x002C4B50, 0x528

    .global gUnknown_082C5078
gUnknown_082C5078:
    .incbin "baserom_sa3.gba", 0x002C5078, 0x278

    .global gUnknown_082C52F0
gUnknown_082C52F0:
    .incbin "baserom_sa3.gba", 0x002C52F0, 0xFF4

    .global gUnknown_082C62E4
gUnknown_082C62E4:
    .incbin "baserom_sa3.gba", 0x002C62E4, 0xB4

    .global zone3_act2_rings
zone3_act2_rings:
    .incbin "baserom_sa3.gba", 0x002C6398, 0x6BC

    .global gUnknown_082C6A54
gUnknown_082C6A54:
    .incbin "baserom_sa3.gba", 0x002C6A54, 0x1DC

    .global gUnknown_082C6C30
gUnknown_082C6C30:
    .incbin "baserom_sa3.gba", 0x002C6C30, 0x90C

    .global gUnknown_082C753C
gUnknown_082C753C:
    .incbin "baserom_sa3.gba", 0x002C753C, 0x90

    .global zone3_act3_rings
zone3_act3_rings:
    .incbin "baserom_sa3.gba", 0x002C75CC, 0x32C

    .global gUnknown_082C78F8
gUnknown_082C78F8:
    .incbin "baserom_sa3.gba", 0x002C78F8, 0x74

    .global gUnknown_082C796C
gUnknown_082C796C:
    .incbin "baserom_sa3.gba", 0x002C796C, 0xD0

    .global gUnknown_082C7A3C
gUnknown_082C7A3C:
    .incbin "baserom_sa3.gba", 0x002C7A3C, 0x10

    .global zone3_bonus_enemies_rings
zone3_bonus_enemies_rings:
    .incbin "baserom_sa3.gba", 0x002C7A4C, 0x10

    .global gUnknown_082C7A5C
gUnknown_082C7A5C:
    .incbin "baserom_sa3.gba", 0x002C7A5C, 0x14

    .global gUnknown_082C7A70
gUnknown_082C7A70:
    .incbin "baserom_sa3.gba", 0x002C7A70, 0x21C

    .global gUnknown_082C7C8C
gUnknown_082C7C8C:
    .incbin "baserom_sa3.gba", 0x002C7C8C, 0x14

    .global zone4_zone_map_rings
zone4_zone_map_rings:
    .incbin "baserom_sa3.gba", 0x002C7CA0, 0x14

    .global gUnknown_082C7CB4
gUnknown_082C7CB4:
    .incbin "baserom_sa3.gba", 0x002C7CB4, 0x110

    .global gUnknown_082C7DC4
gUnknown_082C7DC4:
    .incbin "baserom_sa3.gba", 0x002C7DC4, 0x9F4

    .global gUnknown_082C87B8
gUnknown_082C87B8:
    .incbin "baserom_sa3.gba", 0x002C87B8, 0xA4

    .global zone4_act1_rings
zone4_act1_rings:
    .incbin "baserom_sa3.gba", 0x002C885C, 0x2C4

    .global gUnknown_082C8B20
gUnknown_082C8B20:
    .incbin "baserom_sa3.gba", 0x002C8B20, 0x110

    .global gUnknown_082C8C30
gUnknown_082C8C30:
    .incbin "baserom_sa3.gba", 0x002C8C30, 0x940

    .global gUnknown_082C9570
gUnknown_082C9570:
    .incbin "baserom_sa3.gba", 0x002C9570, 0x9C

    .global zone4_act2_rings
zone4_act2_rings:
    .incbin "baserom_sa3.gba", 0x002C960C, 0x3E4

    .global gUnknown_082C99F0
gUnknown_082C99F0:
    .incbin "baserom_sa3.gba", 0x002C99F0, 0x108

    .global gUnknown_082C9AF8
gUnknown_082C9AF8:
    .incbin "baserom_sa3.gba", 0x002C9AF8, 0x798

    .global gUnknown_082CA290
gUnknown_082CA290:
    .incbin "baserom_sa3.gba", 0x002CA290, 0x6C

    .global zone4_act3_rings
zone4_act3_rings:
    .incbin "baserom_sa3.gba", 0x002CA2FC, 0x2A4

    .global gUnknown_082CA5A0
gUnknown_082CA5A0:
    .incbin "baserom_sa3.gba", 0x002CA5A0, 0x88

    .global gUnknown_082CA628
gUnknown_082CA628:
    .incbin "baserom_sa3.gba", 0x002CA628, 0x120

    .global gUnknown_082CA748
gUnknown_082CA748:
    .incbin "baserom_sa3.gba", 0x002CA748, 0x10

    .global zone4_bonus_enemies_rings
zone4_bonus_enemies_rings:
    .incbin "baserom_sa3.gba", 0x002CA758, 0x10

    .global gUnknown_082CA768
gUnknown_082CA768:
    .incbin "baserom_sa3.gba", 0x002CA768, 0x14

    .global gUnknown_082CA77C
gUnknown_082CA77C:
    .incbin "baserom_sa3.gba", 0x002CA77C, 0x220

    .global gUnknown_082CA99C
gUnknown_082CA99C:
    .incbin "baserom_sa3.gba", 0x002CA99C, 0x14

    .global zone5_zone_map_rings
zone5_zone_map_rings:
    .incbin "baserom_sa3.gba", 0x002CA9B0, 0x14

    .global gUnknown_082CA9C4
gUnknown_082CA9C4:
    .incbin "baserom_sa3.gba", 0x002CA9C4, 0x1A8

    .global gUnknown_082CAB6C
gUnknown_082CAB6C:
    .incbin "baserom_sa3.gba", 0x002CAB6C, 0xE88

    .global gUnknown_082CB9F4
gUnknown_082CB9F4:
    .incbin "baserom_sa3.gba", 0x002CB9F4, 0xA8

    .global zone5_act1_rings
zone5_act1_rings:
    .incbin "baserom_sa3.gba", 0x002CBA9C, 0x4A8

    .global gUnknown_082CBF44
gUnknown_082CBF44:
    .incbin "baserom_sa3.gba", 0x002CBF44, 0x284
    
    .global gUnknown_082CC1C8
gUnknown_082CC1C8:
    .incbin "baserom_sa3.gba", 0x002CC1C8, 0xE34
    
    .global gUnknown_082CCFFC
gUnknown_082CCFFC:
    .incbin "baserom_sa3.gba", 0x002CCFFC, 0xC4

    .global zone5_act2_rings
zone5_act2_rings:
    .incbin "baserom_sa3.gba", 0x002CD0C0, 0x448

    .global gUnknown_082CD508
gUnknown_082CD508:
    .incbin "baserom_sa3.gba", 0x002CD508, 0x22C

    .global gUnknown_082CD734
gUnknown_082CD734:
    .incbin "baserom_sa3.gba", 0x002CD734, 0xE18

    .global gUnknown_082CE54C
gUnknown_082CE54C:
    .incbin "baserom_sa3.gba", 0x002CE54C, 0xCC

    .global zone5_act3_rings
zone5_act3_rings:
    .incbin "baserom_sa3.gba", 0x002CE618, 0x554

    .global gUnknown_082CEB6C
gUnknown_082CEB6C:
    .incbin "baserom_sa3.gba", 0x002CEB6C, 0x84

    .global gUnknown_082CEBF0
gUnknown_082CEBF0:
    .incbin "baserom_sa3.gba", 0x002CEBF0, 0xAC

    .global gUnknown_082CEC9C
gUnknown_082CEC9C:
    .incbin "baserom_sa3.gba", 0x002CEC9C, 0x10

    .global zone5_bonus_enemies_rings
zone5_bonus_enemies_rings:
    .incbin "baserom_sa3.gba", 0x002CECAC, 0x10
    
    .global gUnknown_082CECBC
gUnknown_082CECBC:
    .incbin "baserom_sa3.gba", 0x002CECBC, 0x14

    .global gUnknown_082CECD0
gUnknown_082CECD0:
    .incbin "baserom_sa3.gba", 0x002CECD0, 0x2EC
    
    .global gUnknown_082CEFBC
gUnknown_082CEFBC:
    .incbin "baserom_sa3.gba", 0x002CEFBC, 0x14

    .global zone6_zone_map_rings
zone6_zone_map_rings:
    .incbin "baserom_sa3.gba", 0x002CEFD0, 0x14
    
    .global gUnknown_082CEFE4
gUnknown_082CEFE4:
    .incbin "baserom_sa3.gba", 0x002CEFE4, 0x1CC
    
    .global gUnknown_082CF1B0
gUnknown_082CF1B0:
    .incbin "baserom_sa3.gba", 0x002CF1B0, 0x28EC

    .global gUnknown_082D1A9C
gUnknown_082D1A9C:
    .incbin "baserom_sa3.gba", 0x002D1A9C, 0x98

    .global zone6_act1_rings
zone6_act1_rings:
    .incbin "baserom_sa3.gba", 0x002D1B34, 0x5A8

    .global gUnknown_082D20DC
gUnknown_082D20DC:
    .incbin "baserom_sa3.gba", 0x002D20DC, 0x114

    .global gUnknown_082D21F0
gUnknown_082D21F0:
    .incbin "baserom_sa3.gba", 0x002D21F0, 0x13A8

    .global gUnknown_082D3598
gUnknown_082D3598:
    .incbin "baserom_sa3.gba", 0x002D3598, 0x9C

    .global zone6_act2_rings
zone6_act2_rings:
    .incbin "baserom_sa3.gba", 0x002D3634, 0x444

    .global gUnknown_082D3A78
gUnknown_082D3A78:
    .incbin "baserom_sa3.gba", 0x002D3A78, 0xE0

    .global gUnknown_082D3B58
gUnknown_082D3B58:
    .incbin "baserom_sa3.gba", 0x002D3B58, 0xCEC

    .global gUnknown_082D4844
gUnknown_082D4844:
    .incbin "baserom_sa3.gba", 0x002D4844, 0x70

    .global zone6_act3_rings
zone6_act3_rings:
    .incbin "baserom_sa3.gba", 0x002D48B4, 0x2F4

    .global gUnknown_082D4BA8
gUnknown_082D4BA8:
    .incbin "baserom_sa3.gba", 0x002D4BA8, 0x8C

    .global gUnknown_082D4C34
gUnknown_082D4C34:
    .incbin "baserom_sa3.gba", 0x002D4C34, 0x1C8

    .global gUnknown_082D4DFC
gUnknown_082D4DFC:
    .incbin "baserom_sa3.gba", 0x002D4DFC, 0x10

    .global zone6_bonus_enemies_rings
zone6_bonus_enemies_rings:
    .incbin "baserom_sa3.gba", 0x002D4E0C, 0x10

    .global gUnknown_082D4E1C
gUnknown_082D4E1C:
    .incbin "baserom_sa3.gba", 0x002D4E1C, 0x14

    .global gUnknown_082D4E30
gUnknown_082D4E30:
    .incbin "baserom_sa3.gba", 0x002D4E30, 0x1A4

    .global gUnknown_082D4FD4
gUnknown_082D4FD4:
    .incbin "baserom_sa3.gba", 0x002D4FD4, 0x14

    .global zone7_zone_map_rings
zone7_zone_map_rings:
    .incbin "baserom_sa3.gba", 0x002D4FE8, 0x14

    .global gUnknown_082D4FFC
gUnknown_082D4FFC:
    .incbin "baserom_sa3.gba", 0x002D4FFC, 0x178

    .global gUnknown_082D5174
gUnknown_082D5174:
    .incbin "baserom_sa3.gba", 0x002D5174, 0x163C

    .global gUnknown_082D67B0
gUnknown_082D67B0:
    .incbin "baserom_sa3.gba", 0x002D67B0, 0xB4

    .global zone7_act1_rings
zone7_act1_rings:
    .incbin "baserom_sa3.gba", 0x002D6864, 0x4E0

    .global gUnknown_082D6D44
gUnknown_082D6D44:
    .incbin "baserom_sa3.gba", 0x002D6D44, 0x4F8

    .global gUnknown_082D723C
gUnknown_082D723C:
    .incbin "baserom_sa3.gba", 0x002D723C, 0x17C0

    .global gUnknown_082D89FC
gUnknown_082D89FC:
    .incbin "baserom_sa3.gba", 0x002D89FC, 0x100

    .global zone7_act2_rings
zone7_act2_rings:
    .incbin "baserom_sa3.gba", 0x002D8AFC, 0x8B0

    .global gUnknown_082D93AC
gUnknown_082D93AC:
    .incbin "baserom_sa3.gba", 0x002D93AC, 0xD0

    .global gUnknown_082D947C
gUnknown_082D947C:
    .incbin "baserom_sa3.gba", 0x002D947C, 0x32C

    .global gUnknown_082D97A8
gUnknown_082D97A8:
    .incbin "baserom_sa3.gba", 0x002D97A8, 0x28

    .global zone7_act3_rings
zone7_act3_rings:
    .incbin "baserom_sa3.gba", 0x002D97D0, 0x1DC

    .global gUnknown_082D99AC
gUnknown_082D99AC:
    .incbin "baserom_sa3.gba", 0x002D99AC, 0x80

    .global gUnknown_082D9A2C
gUnknown_082D9A2C:
    .incbin "baserom_sa3.gba", 0x002D9A2C, 0x154

    .global gUnknown_082D9B80
gUnknown_082D9B80:
    .incbin "baserom_sa3.gba", 0x002D9B80, 0x10

    .global zone7_bonus_enemies_rings
zone7_bonus_enemies_rings:
    .incbin "baserom_sa3.gba", 0x002D9B90, 0x10

    .global gUnknown_082D9BA0
gUnknown_082D9BA0:
    .incbin "baserom_sa3.gba", 0x002D9BA0, 0x10

    .global gUnknown_082D9BB0
gUnknown_082D9BB0:
    .incbin "baserom_sa3.gba", 0x002D9BB0, 0x30

    .global gUnknown_082D9BE0
gUnknown_082D9BE0:
    .incbin "baserom_sa3.gba", 0x002D9BE0, 0x10

    .global altar_emerald_rings
altar_emerald_rings:
    .incbin "baserom_sa3.gba", 0x002D9BF0, 0x4C

    .global gUnknown_082D9C3C
gUnknown_082D9C3C:
    .incbin "baserom_sa3.gba", 0x002D9C3C, 0x10

    .global gUnknown_082D9C4C
gUnknown_082D9C4C:
    .incbin "baserom_sa3.gba", 0x002D9C4C, 0x10

    .global gUnknown_082D9C5C
gUnknown_082D9C5C:
    .incbin "baserom_sa3.gba", 0x002D9C5C, 0x10

    .global nonaggression_rings
nonaggression_rings:
    .incbin "baserom_sa3.gba", 0x002D9C6C, 0x7C

    .global gUnknown_082D9CE8
gUnknown_082D9CE8:
    .incbin "baserom_sa3.gba", 0x002D9CE8, 0x10

    .global gUnknown_082D9CF8
gUnknown_082D9CF8:
    .incbin "baserom_sa3.gba", 0x002D9CF8, 0x40

    .global gUnknown_082D9D38
gUnknown_082D9D38:
    .incbin "baserom_sa3.gba", 0x002D9D38, 0x10

    .global zone1_boss_rings
zone1_boss_rings:
    .incbin "baserom_sa3.gba", 0x002D9D48, 0x50

    .global gUnknown_082D9D98
gUnknown_082D9D98:
    .incbin "baserom_sa3.gba", 0x002D9D98, 0x10

    .global gUnknown_082D9DA8
gUnknown_082D9DA8:
    .incbin "baserom_sa3.gba", 0x002D9DA8, 0x38

    .global gUnknown_082D9DE0
gUnknown_082D9DE0:
    .incbin "baserom_sa3.gba", 0x002D9DE0, 0x10

    .global zone2_boss_rings
zone2_boss_rings:
    .incbin "baserom_sa3.gba", 0x002D9DF0, 0x40

    .global gUnknown_082D9E30
gUnknown_082D9E30:
    .incbin "baserom_sa3.gba", 0x002D9E30, 0x10

    .global gUnknown_082D9E40
gUnknown_082D9E40:
    .incbin "baserom_sa3.gba", 0x002D9E40, 0x30

    .global gUnknown_082D9E70
gUnknown_082D9E70:
    .incbin "baserom_sa3.gba", 0x002D9E70, 0x10

    .global zone3_boss_rings
zone3_boss_rings:
    .incbin "baserom_sa3.gba", 0x002D9E80, 0x44

    .global gUnknown_082D9EC4
gUnknown_082D9EC4:
    .incbin "baserom_sa3.gba", 0x002D9EC4, 0x10

    .global gUnknown_082D9ED4
gUnknown_082D9ED4:
    .incbin "baserom_sa3.gba", 0x002D9ED4, 0x30

    .global gUnknown_082D9F04
gUnknown_082D9F04:
    .incbin "baserom_sa3.gba", 0x002D9F04, 0x10

    .global zone4_boss_rings
zone4_boss_rings:
    .incbin "baserom_sa3.gba", 0x002D9F14, 0x44

    .global gUnknown_082D9F58
gUnknown_082D9F58:
    .incbin "baserom_sa3.gba", 0x002D9F58, 0x14

    .global gUnknown_082D9F6C
gUnknown_082D9F6C:
    .incbin "baserom_sa3.gba", 0x002D9F6C, 0x34

    .global gUnknown_082D9FA0
gUnknown_082D9FA0:
    .incbin "baserom_sa3.gba", 0x002D9FA0, 0x14

    .global zone5_boss_rings
zone5_boss_rings:
    .incbin "baserom_sa3.gba", 0x002D9FB4, 0x3C

    .global gUnknown_082D9FF0
gUnknown_082D9FF0:
    .incbin "baserom_sa3.gba", 0x002D9FF0, 0x10

    .global gUnknown_082DA000
gUnknown_082DA000:
    .incbin "baserom_sa3.gba", 0x002DA000, 0x30

    .global gUnknown_082DA030
gUnknown_082DA030:
    .incbin "baserom_sa3.gba", 0x002DA030, 0x10

    .global zone6_boss_rings
zone6_boss_rings:
    .incbin "baserom_sa3.gba", 0x002DA040, 0x48

    .global gUnknown_082DA088
gUnknown_082DA088:
    .incbin "baserom_sa3.gba", 0x002DA088, 0x14

    .global gUnknown_082DA09C
gUnknown_082DA09C:
    .incbin "baserom_sa3.gba", 0x002DA09C, 0x30

    .global gUnknown_082DA0CC
gUnknown_082DA0CC:
    .incbin "baserom_sa3.gba", 0x002DA0CC, 0x14

    .global zone7_boss_rings
zone7_boss_rings:
    .incbin "baserom_sa3.gba", 0x002DA0E0, 0x50

@ --- 0x082DA130 ---
