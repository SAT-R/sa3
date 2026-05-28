#ifndef GUARD_SA3_CODE_1_3_H
#define GUARD_SA3_CODE_1_3_H

#include "game/screen_fade.h"

typedef struct {
    /* 0x000 */ u8 filler0[0x150];
    /* 0x150 */ ScreenFade fade;
    /* 0x15C */ u8 filler15C[0x8];
    /* 0x164 */ s16 unk164;
    /* 0x166 */ s16 unk166;
    /* 0x168 */ s16 unk168;
    /* 0x16A */ s16 unk16A;
    /* 0x16C */ s16 unk16C;
    /* 0x16E */ s16 unk16E;
    /* 0x170 */ s16 unk170;
    /* 0x172 */ s16 unk172;
    /* 0x174 */ s16 unk174;
    /* 0x176 */ s16 unk176;
    /* 0x178 */ s16 unk178;
    /* 0x17A */ s8 unk17A;
    /* 0x17B */ s8 unk17B;
    /* 0x17C */ u8 filler17C[0xA0];
    /* 0x21C */ u8 unk21C;
} Strc_220_sub_8053128;

typedef struct {
    /* 0x000 */ u8 filler0[0xD4];
    /* 0x0D4 */ Sprite spriteD4;
    /* 0x0FC */ u8 fillerFC[0x118];
    /* 0x214 */ Sprite sprite214;
    /* 0x23C */ Sprite sprite23C;
    /* 0x264 */ Sprite sprite264;
    /* 0x28C */ u8 filler28C[0x18];
} Strc_2A4_8053284;

void Task_220_8053904(void);
void sub_8053440(Strc_220_sub_8053128 *strc220);
void sub_80534DC(Strc_220_sub_8053128 *strc220, s16, s16);
void sub_805365C(Strc_220_sub_8053128 *strc220);

#endif // GUARD_SA3_CODE_1_3_H