.include "asm/macros/c_decl.inc"
.include "asm/macros/portable.inc"
.include "asm/macros/function.inc"
.include "constants/gba_constants.inc"

.section .rodata

    .global gUnknown_082B9CD4
gUnknown_082B9CD4:
    .incbin "baserom_sa3.gba", 0x002B9CD4, 0x1464

    .global zone1_act1_rings
zone1_act1_rings:
    .incbin "baserom_sa3.gba", 0x002BB138, 0x7AC

    .global zone1_zone_map_rings
zone1_zone_map_rings:
    .incbin "baserom_sa3.gba", 0x002BB8E4, 0x1870

    .global zone1_act2_rings
zone1_act2_rings:
    .incbin "baserom_sa3.gba", 0x002BD154, 0x1688

    .global zone1_act3_rings
zone1_act3_rings:
    .incbin "baserom_sa3.gba", 0x002BE7DC, 0x600

    .global sonic_factory_rings
sonic_factory_rings:
    .incbin "baserom_sa3.gba", 0x002BEDDC, 0x50

    @ Dummy for all capsule minigames (they do not have rings)
    .global zone1_bonus_capsule_rings
zone1_bonus_capsule_rings:
    .incbin "baserom_sa3.gba", 0x002BEE2C, 0x134

    .global zone1_bonus_enemies_rings
zone1_bonus_enemies_rings:
    .incbin "baserom_sa3.gba", 0x002BEF60, 0x16C

    .global zone2_zone_map_rings
zone2_zone_map_rings:
    .incbin "baserom_sa3.gba", 0x002BF0CC, 0x18CC

    .global zone2_act1_rings
zone2_act1_rings:
    .incbin "baserom_sa3.gba", 0x002C0998, 0x1678

    .global zone2_act2_rings
zone2_act2_rings:
    .incbin "baserom_sa3.gba", 0x002C2010, 0x12C4

    .global zone2_act3_rings
zone2_act3_rings:
    .incbin "baserom_sa3.gba", 0x002C32D4, 0x344

    .global chao_playground_rings
chao_playground_rings:
    .incbin "baserom_sa3.gba", 0x002C3618, 0x174
    
    .global zone2_bonus_enemies_rings
zone2_bonus_enemies_rings:
    .incbin "baserom_sa3.gba", 0x002C378C, 0x228

    .global zone3_zone_map_rings
zone3_zone_map_rings:
    .incbin "baserom_sa3.gba", 0x002C39B4, 0x119C

    .global zone3_act1_rings
zone3_act1_rings:
    .incbin "baserom_sa3.gba", 0x002C4B50, 0x1848

    .global zone3_act2_rings
zone3_act2_rings:
    .incbin "baserom_sa3.gba", 0x002C6398, 0x1234

    .global zone3_act3_rings
zone3_act3_rings:
    .incbin "baserom_sa3.gba", 0x002C75CC, 0x480

    .global zone3_bonus_enemies_rings
zone3_bonus_enemies_rings:
    .incbin "baserom_sa3.gba", 0x002C7A4C, 0x254

    .global zone4_zone_map_rings
zone4_zone_map_rings:
    .incbin "baserom_sa3.gba", 0x002C7CA0, 0xBBC

    .global zone4_act1_rings
zone4_act1_rings:
    .incbin "baserom_sa3.gba", 0x002C885C, 0xDB0

    .global zone4_act2_rings
zone4_act2_rings:
    .incbin "baserom_sa3.gba", 0x002C960C, 0xCF0

    .global zone4_act3_rings
zone4_act3_rings:
    .incbin "baserom_sa3.gba", 0x002CA2FC, 0x45C

    .global zone4_bonus_enemies_rings
zone4_bonus_enemies_rings:
    .incbin "baserom_sa3.gba", 0x002CA758, 0x258

    .global zone5_zone_map_rings
zone5_zone_map_rings:
    .incbin "baserom_sa3.gba", 0x002CA9B0, 0x10EC

    .global zone5_act1_rings
zone5_act1_rings:
    .incbin "baserom_sa3.gba", 0x002CBA9C, 0x1624

    .global zone5_act2_rings
zone5_act2_rings:
    .incbin "baserom_sa3.gba", 0x002CD0C0, 0x1558

    .global zone5_act3_rings
zone5_act3_rings:
    .incbin "baserom_sa3.gba", 0x002CE618, 0x694

    .global zone5_bonus_enemies_rings
zone5_bonus_enemies_rings:
    .incbin "baserom_sa3.gba", 0x002CECAC, 0x324

    .global zone6_zone_map_rings
zone6_zone_map_rings:
    .incbin "baserom_sa3.gba", 0x002CEFD0, 0x2B64

    .global zone6_act1_rings
zone6_act1_rings:
    .incbin "baserom_sa3.gba", 0x002D1B34, 0x1B00

    .global zone6_act2_rings
zone6_act2_rings:
    .incbin "baserom_sa3.gba", 0x002D3634, 0x1280

    .global zone6_act3_rings
zone6_act3_rings:
    .incbin "baserom_sa3.gba", 0x002D48B4, 0x558

    .global zone6_bonus_enemies_rings
zone6_bonus_enemies_rings:
    .incbin "baserom_sa3.gba", 0x002D4E0C, 0x1DC

    .global zone7_zone_map_rings
zone7_zone_map_rings:
    .incbin "baserom_sa3.gba", 0x002D4FE8, 0x187C

    .global zone7_act1_rings
zone7_act1_rings:
    .incbin "baserom_sa3.gba", 0x002D6864, 0x2298

    .global zone7_act2_rings
zone7_act2_rings:
    .incbin "baserom_sa3.gba", 0x002D8AFC, 0xCD4

    .global zone7_act3_rings
zone7_act3_rings:
    .incbin "baserom_sa3.gba", 0x002D97D0, 0x3C0

    .global zone7_bonus_enemies_rings
zone7_bonus_enemies_rings:
    .incbin "baserom_sa3.gba", 0x002D9B90, 0x60

    .global altar_emerald_rings
altar_emerald_rings:
    .incbin "baserom_sa3.gba", 0x002D9BF0, 0x7C

    .global nonaggression_rings
nonaggression_rings:
    .incbin "baserom_sa3.gba", 0x002D9C6C, 0xDC

    .global zone1_boss_rings
zone1_boss_rings:
    .incbin "baserom_sa3.gba", 0x002D9D48, 0xA8

    .global zone2_boss_rings
zone2_boss_rings:
    .incbin "baserom_sa3.gba", 0x002D9DF0, 0x90

    .global zone3_boss_rings
zone3_boss_rings:
    .incbin "baserom_sa3.gba", 0x002D9E80, 0x94

    .global zone4_boss_rings
zone4_boss_rings:
    .incbin "baserom_sa3.gba", 0x002D9F14, 0xA0

    .global zone5_boss_rings
zone5_boss_rings:
    .incbin "baserom_sa3.gba", 0x002D9FB4, 0x8C

    .global zone6_boss_rings
zone6_boss_rings:
    .incbin "baserom_sa3.gba", 0x002DA040, 0xA0

    .global zone7_boss_rings
zone7_boss_rings:
    .incbin "baserom_sa3.gba", 0x002DA0E0, 0x50

    .global gUnknown_082DA130
gUnknown_082DA130:
    .incbin "baserom_sa3.gba", 0x002DA130, 0x3C0

@ --- 0x082DA4F0 ---
