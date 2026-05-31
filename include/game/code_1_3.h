#ifndef GUARD_SA3_CODE_1_3_H
#define GUARD_SA3_CODE_1_3_H

#include "game/screen_fade.h"

typedef struct {
    /* 0x00 */ ScreenFade fade;
    /* 0x0C */ u16 character;
    /* 0x0E */ u8 unkE;
} Strc_10_8055DA8;

typedef struct {
    /* 0x00 */ s16 bg2pa;
    /* 0x02 */ s16 bg2pb;
    /* 0x04 */ s16 bg2pc;
    /* 0x06 */ s16 bg2pd;
    /* 0x08 */ s16 bg2x_l;
    /* 0x0a */ s16 bg2x_h;
    /* 0x0c */ s16 bg2y_l;
    /* 0x0e */ s16 bg2y_h;
} DmaIoData;

typedef struct {
    /* 0x000 */ Sprite sprite0;
    /* 0x028 */ Sprite2 sprite28;
    /* 0x058 */ u8 filler58[0x78];
    /* 0x0D0 */ SpriteTransform tf[2];
    /* 0x0E8 */ Sprite spriteE8;
    /* 0x110 */ Background bg110;
    /* 0x150 */ ScreenFade fade;
    /* 0x15C */ DmaIoData *data15C;
    /* 0x15C */ s32 *data160;
    /* 0x164 */ s16 unk164;
    /* 0x166 */ s16 unk166;
    /* 0x168 */ u16 unk168;
    /* 0x16A */ s16 unk16A;
    /* 0x16C */ s16 unk16C;
    /* 0x16E */ s16 unk16E;
    /* 0x170 */ s16 unk170;
    /* 0x172 */ s16 unk172;
    /* 0x174 */ s16 unk174;
    /* 0x176 */ s16 unk176;
    /* 0x178 */ s16 unk178;
    /* 0x17A */ u8 unk17A;
    /* 0x17B */ u8 unk17B;
    /* 0x17C */ Sprite sprites17C[4];
    /* 0x21C */ u8 unk21C;
} Strc_220_sub_8053128;

typedef struct {
    /* 0x000 */ ScreenFade fade; // TODO: Is this *actually* a ScreenFade?
    /* 0x00C */ s16 someX0;
    /* 0x00E */ s16 someX;
    /* 0x010 */ s16 someX2;
    /* 0x012 */ s16 someX3;
    /* 0x014 */ s16 someX4;
    /* 0x016 */ u8 unk16;
    /* 0x017 */ u8 unk17;
    /* 0x018 */ u8 unk18;
    /* 0x019 */ u8 unk19;
    /* 0x01A */ u8 filler1A[2];
    /* 0x01C */ Sprite sprite1C;
    /* 0x044 */ Sprite sprite44;
    /* 0x06C */ Sprite sprite6C;
    /* 0x094 */ Sprite sprite94;
    /* 0x0BC */ Sprite spriteBC;
    /* 0x0E4 */ Sprite spriteE4;
    /* 0x10C */ Sprite sprites10C[7];
    /* 0x224 */ Sprite sprite224;
    /* 0x24C */ Sprite sprite24C;
} Strc_274_8053284;

typedef struct {
    /* 0x000 */ ScreenFade fade;
    /* 0x00C */ Sprite spritesC[3];
    /* 0x084 */ Sprite sprites84[2];
    /* 0x0D4 */ Sprite spriteD4;
    /* 0x0FC */ Sprite spritesFC[7];
    /* 0x214 */ Sprite sprite214;
    /* 0x23C */ Sprite sprite23C;
    /* 0x264 */ Sprite sprite264;
    /* 0x28C */ int_vcount unk28C;
    /* 0x28C */ int_vcount unk28D;
    /* 0x28C */ int_vcount unk28E;
    /* 0x28C */ int_vcount unk28F;
    /* 0x290 */ u16 unk290;
    /* 0x292 */ s16 unk292;
    /* 0x294 */ u16 unk294;
    /* 0x296 */ s16 someX;
    /* 0x298 */ s16 someX2;
    /* 0x29A */ s16 someX3;
    /* 0x29C */ s16 someX4;
    /* 0x29E */ u8 unk29E;
    /* 0x29F */ u8 unk29F;
    /* 0x29F */ u8 unk2A0;
} Strc_2A4_8053284;

void sub_80533F4(u16 character); // related to Special Springs
void sub_8053440(Strc_220_sub_8053128 *strc220);
void sub_80534DC(Strc_220_sub_8053128 *strc220, s16, s16);
void sub_805365C(Strc_220_sub_8053128 *strc220);
void sub_80536F0(Strc_220_sub_8053128 *strc220);
void Task_220_8053904(void);

#endif // GUARD_SA3_CODE_1_3_H