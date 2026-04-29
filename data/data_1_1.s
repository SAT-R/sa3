.include "asm/macros/c_decl.inc"
.include "asm/macros/portable.inc"
.include "asm/macros/function.inc"
.include "constants/gba_constants.inc"
.include "constants/misc_constants.inc"

.section .rodata

    .global gCollisionTable
gCollisionTable:
	mPtr CollHeader_zone_1_act_hub_fg
    mPtr CollHeader_zone_1_act_special_fg
    mPtr CollHeader_zone_1_act_hub_fg
    mPtr CollHeader_zone_1_act_1_fg
    mPtr CollHeader_zone_1_act_2_fg
    mPtr CollHeader_zone_1_act_3_fg
    mPtr NULL
    mPtr CollHeader_zone_1_act_boss_fg
    mPtr CollHeader_zone_1_act_bonus_capsule_fg
    mPtr CollHeader_zone_1_act_bonus_enemy_fg
    mPtr NULL
    mPtr CollHeader_zone_2_act_special_fg
    mPtr CollHeader_zone_2_act_hub_fg
    mPtr CollHeader_zone_2_act_1_fg
    mPtr CollHeader_zone_2_act_2_fg
    mPtr CollHeader_zone_2_act_3_fg
    mPtr NULL
    mPtr CollHeader_zone_2_act_boss_fg
    mPtr CollHeader_zone_1_act_bonus_capsule_fg
    mPtr CollHeader_zone_2_act_bonus_enemy_fg
    mPtr NULL
    mPtr NULL
    mPtr CollHeader_zone_3_act_hub_fg
    mPtr CollHeader_zone_3_act_1_fg
    mPtr CollHeader_zone_3_act_2_fg
    mPtr CollHeader_zone_3_act_3_fg
    mPtr NULL
    mPtr CollHeader_zone_3_act_boss_fg
    mPtr CollHeader_zone_1_act_bonus_capsule_fg
    mPtr CollHeader_zone_3_act_bonus_enemy_fg
    mPtr NULL
    mPtr NULL
    mPtr CollHeader_zone_4_act_hub_fg
    mPtr CollHeader_zone_4_act_1_fg
    mPtr CollHeader_zone_4_act_2_fg
    mPtr CollHeader_zone_4_act_3_fg
    mPtr NULL
    mPtr CollHeader_zone_4_act_boss_fg
    mPtr CollHeader_zone_1_act_bonus_capsule_fg
    mPtr CollHeader_zone_4_act_bonus_enemy_fg
    mPtr NULL
    mPtr NULL
    mPtr CollHeader_zone_5_act_hub_fg
    mPtr CollHeader_zone_5_act_1_fg
    mPtr CollHeader_zone_5_act_2_fg
    mPtr CollHeader_zone_5_act_3_fg
    mPtr NULL
    mPtr CollHeader_zone_5_act_boss_fg
    mPtr CollHeader_zone_1_act_bonus_capsule_fg
    mPtr CollHeader_zone_5_act_bonus_enemy_fg
    mPtr NULL
    mPtr NULL
    mPtr CollHeader_zone_6_act_hub_fg
    mPtr CollHeader_zone_6_act_1_fg
    mPtr CollHeader_zone_6_act_2_fg
    mPtr CollHeader_zone_6_act_3_fg
    mPtr NULL
    mPtr CollHeader_zone_6_act_boss_fg
    mPtr CollHeader_zone_1_act_bonus_capsule_fg
    mPtr CollHeader_zone_6_act_bonus_enemy_fg
    mPtr NULL
    mPtr NULL
    mPtr CollHeader_zone_7_act_hub_fg
    mPtr CollHeader_zone_7_act_1_fg
    mPtr CollHeader_zone_7_act_2_fg
    mPtr CollHeader_zone_7_act_3_fg
    mPtr NULL
    mPtr CollHeader_zone_7_act_boss_fg
    mPtr CollHeader_zone_1_act_bonus_capsule_fg
    mPtr CollHeader_zone_7_act_bonus_enemy_fg
    mPtr NULL
	mPtr CollHeader_zone_final_act_altar_emerald_fg
	mPtr CollHeader_zone_final_act_nonaggression_fg

    .global gSpritePosData_interactables
gSpritePosData_interactables:
    mPtr gUnknown_082BB6C8
    mPtr gUnknown_082BED30
    mPtr gUnknown_082BB6C8
    mPtr gUnknown_082B9E78
    mPtr gUnknown_082BBB00
    mPtr gUnknown_082BD9DC
    mPtr NULL
    mPtr gUnknown_082D9CF8
    mPtr gUnknown_082BEDFC
    mPtr gUnknown_082BEEC4
    mPtr NULL
    mPtr gUnknown_082C357C
    mPtr gUnknown_082BEF84
    mPtr gUnknown_082BF224
    mPtr gUnknown_082C0E00
    mPtr gUnknown_082C23D8
    mPtr NULL
    mPtr gUnknown_082D9DA8
    mPtr gUnknown_082BEDFC
    mPtr gUnknown_082C36A0
    mPtr NULL
    mPtr NULL
    mPtr gUnknown_082C37B0
    mPtr gUnknown_082C3BC0
    mPtr gUnknown_082C52F0
    mPtr gUnknown_082C6C30
    mPtr NULL
    mPtr gUnknown_082D9E40
    mPtr gUnknown_082BEDFC
    mPtr gUnknown_082C796C
    mPtr NULL
    mPtr NULL
    mPtr gUnknown_082C7A70
    mPtr gUnknown_082C7DC4
    mPtr gUnknown_082C8C30
    mPtr gUnknown_082C9AF8
    mPtr NULL
    mPtr gUnknown_082D9ED4
    mPtr gUnknown_082BEDFC
    mPtr gUnknown_082CA628
    mPtr NULL
    mPtr NULL
    mPtr gUnknown_082CA77C
    mPtr gUnknown_082CAB6C
    mPtr gUnknown_082CC1C8
    mPtr gUnknown_082CD734
    mPtr NULL
    mPtr gUnknown_082D9F6C
    mPtr gUnknown_082BEDFC
    mPtr gUnknown_082CEBF0
    mPtr NULL
    mPtr NULL
    mPtr gUnknown_082CECD0
    mPtr gUnknown_082CF1B0
    mPtr gUnknown_082D21F0
    mPtr gUnknown_082D3B58
    mPtr NULL
    mPtr gUnknown_082DA000
    mPtr gUnknown_082BEDFC
    mPtr gUnknown_082D4C34
    mPtr NULL
    mPtr NULL
    mPtr gUnknown_082D4E30
    mPtr gUnknown_082D5174
    mPtr gUnknown_082D723C
    mPtr gUnknown_082D947C
    mPtr NULL
    mPtr gUnknown_082DA09C
    mPtr gUnknown_082BEDFC
    mPtr gUnknown_082D9A2C
    mPtr NULL
    mPtr gUnknown_082D9BB0
	mPtr gUnknown_082D9C4C

    .global gSpritePosData_itemboxes
gSpritePosData_itemboxes:
    mPtr gUnknown_082BB8D0
    mPtr gUnknown_082BEDCC
    mPtr gUnknown_082BB8D0
    mPtr gUnknown_082BB074
    mPtr gUnknown_082BD0A0
    mPtr gUnknown_082BE730
    mPtr NULL
    mPtr gUnknown_082D9D38
    mPtr gUnknown_082BEE1C
    mPtr gUnknown_082BEF50
    mPtr NULL
    mPtr gUnknown_082C3608
    mPtr gUnknown_082BF0B8
    mPtr gUnknown_082C0910
    mPtr gUnknown_082C1F9C
    mPtr gUnknown_082C3270
    mPtr NULL
    mPtr gUnknown_082D9DE0
    mPtr gUnknown_082BEE1C
    mPtr gUnknown_082C377C
    mPtr NULL
    mPtr NULL
    mPtr gUnknown_082C39A0
    mPtr gUnknown_082C4AA4
    mPtr gUnknown_082C62E4
    mPtr gUnknown_082C753C
    mPtr NULL
    mPtr gUnknown_082D9E70
    mPtr gUnknown_082BEE1C
    mPtr gUnknown_082C7A3C
    mPtr NULL
    mPtr NULL
    mPtr gUnknown_082C7C8C
    mPtr gUnknown_082C87B8
    mPtr gUnknown_082C9570
    mPtr gUnknown_082CA290
    mPtr NULL
    mPtr gUnknown_082D9F04
    mPtr gUnknown_082BEE1C
    mPtr gUnknown_082CA748
    mPtr NULL
    mPtr NULL
    mPtr gUnknown_082CA99C
    mPtr gUnknown_082CB9F4
    mPtr gUnknown_082CCFFC
    mPtr gUnknown_082CE54C
    mPtr NULL
    mPtr gUnknown_082D9FA0
    mPtr gUnknown_082BEE1C
    mPtr gUnknown_082CEC9C
    mPtr NULL
    mPtr NULL
    mPtr gUnknown_082CEFBC
    mPtr gUnknown_082D1A9C
    mPtr gUnknown_082D3598
    mPtr gUnknown_082D4844
    mPtr NULL
    mPtr gUnknown_082DA030
    mPtr gUnknown_082BEE1C
    mPtr gUnknown_082D4DFC
    mPtr NULL
    mPtr NULL
    mPtr gUnknown_082D4FD4
    mPtr gUnknown_082D67B0
    mPtr gUnknown_082D89FC
    mPtr gUnknown_082D97A8
    mPtr NULL
    mPtr gUnknown_082DA0CC
    mPtr gUnknown_082BEE1C
    mPtr gUnknown_082D9B80
    mPtr NULL
    mPtr gUnknown_082D9BE0
    mPtr gUnknown_082D9C5C

    @ RL-compressed data
    .global gSpritePosData_enemies
gSpritePosData_enemies:
    mPtr gUnknown_082BB6B4
    mPtr gUnknown_082BED20
    mPtr gUnknown_082BB6B4
    mPtr gUnknown_082B9CE4
    mPtr gUnknown_082BB8F8
    mPtr gUnknown_082BD7FC
    mPtr NULL
    mPtr gUnknown_082D9CE8
    mPtr gUnknown_082BEDEC
    mPtr gUnknown_082BEE3C
    mPtr NULL
    mPtr gUnknown_082C356C
    mPtr gUnknown_082BEF70
    mPtr gUnknown_082BF0E0
    mPtr gUnknown_082C0CEC
    mPtr gUnknown_082C22B0
    mPtr NULL
    mPtr gUnknown_082D9D98
    mPtr gUnknown_082BEDEC
    mPtr gUnknown_082C3628
    mPtr NULL
    mPtr NULL
    mPtr gUnknown_082C379C
    mPtr gUnknown_082C39C8
    mPtr gUnknown_082C5078
    mPtr gUnknown_082C6A54
    mPtr NULL
    mPtr gUnknown_082D9E30
    mPtr gUnknown_082BEDEC
    mPtr gUnknown_082C78F8
    mPtr NULL
    mPtr NULL
    mPtr gUnknown_082C7A5C
    mPtr gUnknown_082C7CB4
    mPtr gUnknown_082C8B20
    mPtr gUnknown_082C99F0
    mPtr NULL
    mPtr gUnknown_082D9EC4
    mPtr gUnknown_082BEDEC
    mPtr gUnknown_082CA5A0
    mPtr NULL
    mPtr NULL
    mPtr gUnknown_082CA768
    mPtr gUnknown_082CA9C4
    mPtr gUnknown_082CBF44
    mPtr gUnknown_082CD508
    mPtr NULL
    mPtr gUnknown_082D9F58
    mPtr gUnknown_082BEDEC
    mPtr gUnknown_082CEB6C
    mPtr NULL
    mPtr NULL
    mPtr gUnknown_082CECBC
    mPtr gUnknown_082CEFE4
    mPtr gUnknown_082D20DC
    mPtr gUnknown_082D3A78
    mPtr NULL
    mPtr gUnknown_082D9FF0
    mPtr gUnknown_082BEDEC
    mPtr gUnknown_082D4BA8
    mPtr NULL
    mPtr NULL
    mPtr gUnknown_082D4E1C
    mPtr gUnknown_082D4FFC
    mPtr gUnknown_082D6D44
    mPtr gUnknown_082D93AC
    mPtr NULL
    mPtr gUnknown_082DA088
    mPtr gUnknown_082BEDEC
    mPtr gUnknown_082D99AC
    mPtr NULL
    mPtr gUnknown_082D9BA0
    mPtr gUnknown_082D9C3C    

@ Respawn position data
    .global gUnknown_080D1590
gUnknown_080D1590:
    .short 0x015A, 0x0101
    .short 0x020E, 0x0101
    .short 0x002E, 0x0071

    .global gUnknown_080D159C
gUnknown_080D159C:
    .short 0x0038, 0x0250
    .short 0x0300, 0x0108
    .short 0x05A0, 0x0108
    .short 0x0960, 0x0258
    .short 0x00EE, 0x0081
    .short 0x0920, 0x00B1
    .short 0x05D2, 0x0201
    .short 0x0331, 0x0231

    .global gUnknown_080D15BC
gUnknown_080D15BC:
	.short 0x0090, 0x0171

    .global gUnknown_080D15C0
gUnknown_080D15C0:
    .short 0x0090, 0x09B1

    .global gUnknown_080D15C4
gUnknown_080D15C4:
    .short 0x0090, 0x03E1

    .global gUnknown_080D15C8
gUnknown_080D15C8:
    .short 0x0090, 0x00B1

    .global gUnknown_080D15CC
gUnknown_080D15CC:
    .short 0x0022, 0x0081

    .global gUnknown_080D15D0
gUnknown_080D15D0:
    .short 0x0030, 0x0261

    .global gUnknown_080D15D4
gUnknown_080D15D4:
    .short 0x025E, 0x0100
    .short 0x012C, 0x0100

    .global gUnknown_080D15DC
gUnknown_080D15DC:
    .short 0x0030, 0x03D0
    .short 0x02A0, 0x03D8
    .short 0x0300, 0x0228
    .short 0x03A8, 0x0168
    .short 0x0458, 0x0111
    .short 0x0105, 0x0171
    .short 0x05E8, 0x03B1
    .short 0x004A, 0x0231

    .global gUnknown_080D15FC
gUnknown_080D15FC:
    .short 0x0090, 0x0654

    .global gUnknown_080D1600
gUnknown_080D1600:
    .short 0x0090, 0x0474

    .global gUnknown_080D1604
gUnknown_080D1604:
    .short 0x04B0, 0x0B34
    .short 0x08A2, 0x08F1

    .global gUnknown_080D160C
gUnknown_080D160C:
    .short 0x0090, 0x0114

    .global gUnknown_080D1610
gUnknown_080D1610:
    .short 0x0022, 0x0081

    .global gUnknown_080D1614
gUnknown_080D1614:
    .short 0x00C0, 0x0381

    .global gUnknown_080D1618
gUnknown_080D1618:
    .short 0x0098, 0x0610
    .short 0x0420, 0x0558
    .short 0x0180, 0x0468
    .short 0x04E8, 0x02E8
    .short 0x04B8, 0x0144
    .short 0x02EC, 0x0111
    .short 0x0542, 0x0411
    .short 0x0049, 0x0381

    .global gUnknown_080D1638
gUnknown_080D1638:
    .short 0x0270, 0x1791

    .global gUnknown_080D163C
gUnknown_080D163C:
    .short 0x0330, 0x15B1
    .short 0x0780, 0x0D11

    .global gUnknown_080D1644
gUnknown_080D1644:
    .short 0x0090, 0x0111

    .global gUnknown_080D1648
gUnknown_080D1648:
    .short 0x0090, 0x00B1

    .global gUnknown_080D164C
gUnknown_080D164C:
    .short 0x0022, 0x0081

    .global gUnknown_080D1650
gUnknown_080D1650:
    .short 0x01B5, 0x0441

    .global gUnknown_080D1654
gUnknown_080D1654:
    .short 0x0038, 0x0520
    .short 0x01E0, 0x0468
    .short 0x0218, 0x0378
    .short 0x05A0, 0x0408
    .short 0x010E, 0x00B1
    .short 0x038F, 0x00B1
    .short 0x0371, 0x03B1
    .short 0x05F4, 0x02F1

    .global gUnknown_080D1674
gUnknown_080D1674:
    .short 0x0070, 0x06B1

    .global gUnknown_080D1678
gUnknown_080D1678:
    .short 0x0090, 0x0651
    .short 0x28AC, 0x0351

    .global gUnknown_080D1680
gUnknown_080D1680:
    .short 0x0090, 0x0561

    .global gUnknown_080D1684
gUnknown_080D1684:
    .short 0x0090, 0x0081

    .global gUnknown_080D1688
gUnknown_080D1688:
    .short 0x0022, 0x0081

    .global gUnknown_080D168C
gUnknown_080D168C:
    .short 0x00A0, 0x03E1

    .global gUnknown_080D1690
gUnknown_080D1690:
    .short 0x0278, 0x0130
    .short 0x0480, 0x00A8
    .short 0x0378, 0x0228
    .short 0x00F0, 0x0258
    .short 0x017F, 0x00B1
    .short 0x025F, 0x03E1
    .short 0x037A, 0x0441
    .short 0x0514, 0x03B1

    .global gUnknown_080D16B0
gUnknown_080D16B0:
    .short 0x0090, 0x0411

    .global gUnknown_080D16B4
gUnknown_080D16B4:
    .short 0x0090, 0x04A1

    .global gUnknown_080D16B8
gUnknown_080D16B8:
    .short 0x0090, 0x0231
    .short 0x1B92, 0x0651

    .global gUnknown_080D16C0
gUnknown_080D16C0:
    .short 0x0090, 0x0591

    .global gUnknown_080D16C4
gUnknown_080D16C4:
    .short 0x0022, 0x0081

    .global gUnknown_080D16C8
gUnknown_080D16C8:
    .short 0x0067, 0x0141

    .global gUnknown_080D16CC
gUnknown_080D16CC:
    .short 0x00A8, 0x0220
    .short 0x0348, 0x0228
    .short 0x0640, 0x0138
    .short 0x0350, 0x0438
    .short 0x036E, 0x00B1
    .short 0x063F, 0x03E1
    .short 0x035F, 0x0351
    .short 0x00AD, 0x0351

    .global gUnknown_080D16EC
gUnknown_080D16EC:
    .short 0x0090, 0x0291

    .global gUnknown_080D16F0
gUnknown_080D16F0:
    .short 0x0090, 0x0741

    .global gUnknown_080D16F4
gUnknown_080D16F4:
    .short 0x0090, 0x00B1
    .short 0x0A6E, 0x0471

    .global gUnknown_080D16FC
gUnknown_080D16FC:
    .short 0x0090, 0x0083
    .short 0x0000, 0x0000

    .global gUnknown_080D1704
gUnknown_080D1704:
    .short 0x0022, 0x0081

    .global gUnknown_080D1708
gUnknown_080D1708:
    .short 0x0147, 0x0351

    .global gUnknown_080D170C
gUnknown_080D170C:
    .short 0x00E0, 0x0430
    .short 0x03C0, 0x0470
    .short 0x0530, 0x0318
    .short 0x02C0, 0x0348
    .short 0x070D, 0x04D1
    .short 0x03D3, 0x01A1
    .short 0x019F, 0x03B1
    .short 0x0477, 0x0291
    .short 0x01B0, 0x00A8

    .global gUnknown_080D1730
gUnknown_080D1730:
    .short 0x0090, 0x0DD1

    .global gUnknown_080D1734
gUnknown_080D1734:
    .short 0x0090, 0x0E31

    .global gUnknown_080D1738
gUnknown_080D1738:
    .short 0x0090, 0x0351

    .global gUnknown_080D173C
gUnknown_080D173C:
    .short 0x0090, 0x00B1

    .global gUnknown_080D1740
gUnknown_080D1740:
    .short 0x0022, 0x0081

    .global gUnknown_080D1744
gUnknown_080D1744:
    .short 0x0081, 0x03B1

    .global gUnknown_080D1748
gUnknown_080D1748:
    .short 0x0064, 0x00B1
    .global gUnknown_080D174C
gUnknown_080D174C:
    .short 0x0064, 0x0000

@ Respawn position pointers (one ptr per stage).
    .global gRespawnPositions
gRespawnPositions:
    mPtr NULL
    mPtr gUnknown_080D1590
    mPtr gUnknown_080D159C
    mPtr gUnknown_080D15BC
    mPtr gUnknown_080D15C0
    mPtr gUnknown_080D15C4
    mPtr NULL
    mPtr gUnknown_080D15C8
    mPtr gUnknown_080D15CC
    mPtr gUnknown_080D15D0
    mPtr NULL
    mPtr gUnknown_080D15D4
    mPtr gUnknown_080D15DC
    mPtr gUnknown_080D15FC
    mPtr gUnknown_080D1600
    mPtr gUnknown_080D1604
    mPtr NULL
    mPtr gUnknown_080D160C
    mPtr gUnknown_080D1610
    mPtr gUnknown_080D1614
    mPtr NULL
    mPtr NULL
    mPtr gUnknown_080D1618
    mPtr gUnknown_080D1638
    mPtr gUnknown_080D163C
    mPtr gUnknown_080D1644
    mPtr NULL
    mPtr gUnknown_080D1648
    mPtr gUnknown_080D164C
    mPtr gUnknown_080D1650
    mPtr NULL
    mPtr NULL
    mPtr gUnknown_080D1654
    mPtr gUnknown_080D1674
    mPtr gUnknown_080D1678
    mPtr gUnknown_080D1680
    mPtr NULL
    mPtr gUnknown_080D1684
    mPtr gUnknown_080D1688
    mPtr gUnknown_080D168C
    mPtr NULL
    mPtr NULL
    mPtr gUnknown_080D1690
    mPtr gUnknown_080D16B0
    mPtr gUnknown_080D16B4
    mPtr gUnknown_080D16B8
    mPtr NULL
    mPtr gUnknown_080D16C0
    mPtr gUnknown_080D16C4
    mPtr gUnknown_080D16C8
    mPtr NULL
    mPtr NULL
    mPtr gUnknown_080D16CC
    mPtr gUnknown_080D16EC
    mPtr gUnknown_080D16F0
    mPtr gUnknown_080D16F4
    mPtr NULL
    mPtr gUnknown_080D16FC
    mPtr gUnknown_080D1704
    mPtr gUnknown_080D1708
    mPtr NULL
    mPtr NULL
    mPtr gUnknown_080D170C
    mPtr gUnknown_080D1730
    mPtr gUnknown_080D1734
    mPtr gUnknown_080D1738
    mPtr NULL
    mPtr gUnknown_080D173C
    mPtr gUnknown_080D1740
    mPtr gUnknown_080D1744
    mPtr NULL
    mPtr gUnknown_080D1748
    mPtr gUnknown_080D174C

    .global gUnknown_080D1874
gUnknown_080D1874:
    .incbin "baserom_sa3.gba", 0x000D1874, 0x8

    .global gUnknown_080D187C
gUnknown_080D187C:
    .incbin "baserom_sa3.gba", 0x000D187C, 0x8

    .global gUnknown_080D1884
gUnknown_080D1884:
    .incbin "baserom_sa3.gba", 0x000D1884, 0x8

    .global gUnknown_080D188C
gUnknown_080D188C:
    .incbin "baserom_sa3.gba", 0x000D188C, 0x8

    .global gUnknown_080D1894
gUnknown_080D1894:
    .incbin "baserom_sa3.gba", 0x000D1894, 0x8

    .global gUnknown_080D189C
gUnknown_080D189C:
    .incbin "baserom_sa3.gba", 0x000D189C, 0x8

    .global gUnknown_080D18A4
gUnknown_080D18A4:
    .incbin "baserom_sa3.gba", 0x000D18A4, 0x8

    .global gUnknown_080D18AC
gUnknown_080D18AC:
    .incbin "baserom_sa3.gba", 0x000D18AC, 0x8

    .global gUnknown_080D18B4
gUnknown_080D18B4:
    .incbin "baserom_sa3.gba", 0x000D18B4, 0x8

    .global gUnknown_080D18BC
gUnknown_080D18BC:
    .incbin "baserom_sa3.gba", 0x000D18BC, 0x8

    .global gUnknown_080D18C4
gUnknown_080D18C4:
    .incbin "baserom_sa3.gba", 0x000D18C4, 0x8

    .global gUnknown_080D18CC
gUnknown_080D18CC:
    .incbin "baserom_sa3.gba", 0x000D18CC, 0x8

    .global gUnknown_080D18D4
gUnknown_080D18D4:
    .incbin "baserom_sa3.gba", 0x000D18D4, 0x8

    .global gUnknown_080D18DC
gUnknown_080D18DC:
    .incbin "baserom_sa3.gba", 0x000D18DC, 0x8

    .global gUnknown_080D18E4
gUnknown_080D18E4:
    .incbin "baserom_sa3.gba", 0x000D18E4, 0x8

    .global gUnknown_080D18EC
gUnknown_080D18EC:
    .incbin "baserom_sa3.gba", 0x000D18EC, 0x8

    .global gUnknown_080D18F4
gUnknown_080D18F4:
    .incbin "baserom_sa3.gba", 0x000D18F4, 0x8

    .global gUnknown_080D18FC
gUnknown_080D18FC:
    .incbin "baserom_sa3.gba", 0x000D18FC, 0x8

    .global gUnknown_080D1904
gUnknown_080D1904:
    .incbin "baserom_sa3.gba", 0x000D1904, 0x8

    .global gUnknown_080D190C
gUnknown_080D190C:
    .incbin "baserom_sa3.gba", 0x000D190C, 0x8

    .global gUnknown_080D1914
gUnknown_080D1914:
    .incbin "baserom_sa3.gba", 0x000D1914, 0x8

    .global gUnknown_080D191C
gUnknown_080D191C:
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr gUnknown_080D1874
    mPtr gUnknown_080D187C
    mPtr gUnknown_080D1884
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr gUnknown_080D188C
    mPtr gUnknown_080D1894
    mPtr gUnknown_080D189C
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr gUnknown_080D18A4
    mPtr gUnknown_080D18AC
    mPtr gUnknown_080D18B4
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr gUnknown_080D18BC
    mPtr gUnknown_080D18C4
    mPtr gUnknown_080D18CC
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr gUnknown_080D18D4
    mPtr gUnknown_080D18DC
    mPtr gUnknown_080D18E4
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr gUnknown_080D18EC
    mPtr gUnknown_080D18F4
    mPtr gUnknown_080D18FC
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr gUnknown_080D1904
    mPtr gUnknown_080D190C
    mPtr gUnknown_080D1914
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr NULL
    mPtr NULL
	mPtr NULL
	mPtr NULL

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
