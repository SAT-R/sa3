#ifndef GUARD_SA3_SPECIAL_STAGE_H
#define GUARD_SA3_SPECIAL_STAGE_H

/* NOTE: Many of these declarations and #includes will probably not have to be in this header file, once the module is matched */
#include "global.h"
#include "core.h"
#include "color.h" // ColorRaw
#include "game/screen_fade.h"

typedef struct {
    /* 0x000 */ ScreenFade fade0;
    /* 0x00C */ Background bgC;
    /* 0x04C */ Sprite sprite4C;
    /* 0x04C */ Sprite sprite74;
    /* 0x04C */ Sprite sprite9C;
    /* 0x0C4 */ Sprite spriteC4;
    /* 0x0EC */ Sprite spriteEC;
    /* 0x114 */ Sprite sprite114;
    /* 0x114 */ Sprite sprites13C[8];
    /* 0x27C */ u8 unk27C;
    /* 0x27D */ u8 unk27D;
    /* 0x27E */ u8 unk27E;
    /* 0x27F */ u8 unk27F;
    /* 0x280 */ u8 unk280;
    /* 0x281 */ u8 unk281;
    /* 0x282 */ u8 unk282;
    /* 0x283 */ u8 unk283;
    /* 0x284 */ u16 unk284;
} SpStage288; /* 0x288 */

typedef struct {
    s16 unk0;
    s16 unk2;
    s16 unk4;
    s16 unk6;
    s16 unk8;
    s16 unkA;
    s16 unkC;
    s16 unkE;
    s16 unk10;
    s16 unk12;
} UnkArg0;

typedef struct {
    s32 unk0;
    s32 unk4;
    s32 unk8;
    s16 unkC;
    s16 unkE;
    s16 unk10;
    s16 unk12;
} UnkArg1;

typedef struct {
    /* 0x000 */ struct Task *task0; // -> Arg2Task0
    /* 0x004 */ struct Task *task4; // -> Arg2Task4
    /* 0x008 */ struct Task *task8; // -> Arg2Task8
    /* 0x00C */ struct Task *taskC; // -> Arg2TaskC
    /* 0x010 */ struct Task *task10; // -> Arg2Task10
    /* 0x014 */ Sprite sprite14;
    /* 0x03C */ u8 filler3C[0x40];
    /* 0x07C */ ScreenFade fade7C;
    /* 0x088 */ Sprite sprite88;
    /* 0x0B0 */ Vec2_32 unkB0[8]; // TODO: type AND size unknown!!!
    /* 0x4BC */ u8 fillerF0[0x4BC];
    /* 0x5AC */ s32 unk5AC;
    /* 0x5B0 */ u8 filler5B0[0x300];
    /* 0x8B0 */ s32 unk8B0;
    /* 0x8B4 */ s32 unk8B4;
    /* 0x8B8 */ s32 unk8B8;
    /* 0x8BC */ u16 unk8BC;
    /* 0x8BE */ s16 unk8BE;
    /* 0x8C0 */ s16 unk8C0;
    /* 0x8C2 */ s16 ringsRequired;
    /* 0x8C4 */ u16 unk8C4;
    /* 0x8C6 */ u8 unk8C6;
    /* 0x8C7 */ u8 zone;
    /* 0x8C8 */ u8 unk8C8;
    /* 0x8C9 */ u8 unk8C9;
    /* 0x8CA */ u8 unk8CA;
    /* 0x8CB */ u8 unk8CB;
    /* 0x8CC */ u8 unk8CC;
    /* 0x8CD */ u8 unk8CD;
    /* 0x8CE */ s8 unk8CE;
    /* 0x8CF */ s8 unk8CF;
    /* 0x8D0 */ s8 unk8D0;
    /* 0x8D1 */ s8 unk8D1;
    /* 0x8D2 */ s8 unk8D2;
    /* 0x8D3 */ s8 unk8D3;
    /* 0x8D4 */ s8 unk8D4;
    /* 0x8D5 */ u8 unk8D5;
    /* 0x8D6 */ u8 unk8D6;
    /* 0x8D7 */ u8 unk8D7;
    /* 0x8D8 */ s16 unk8D8;
    /* 0x8DA */ s16 unk8DA;
    /* 0x8DC */ s16 unk8DC;
    /* 0x8DE */ u8 unk8DE;
    /* 0x8DF */ u8 unk8DF;
    /* 0x8E0 */ u8 unk8E0;
    /* 0x8E1 */ u8 unk8E1;
    /* 0x8E2 */ u8 filler8E2[2];
    /* 0x8E4 */ void *unk8E4; // TODO: type
} SpStgContext; /* 0x8E8 */

typedef struct {
    /* 0x000 */ SpStgContext *unk0;
    /* 0x004 */ Sprite sprite4;
    /* 0x02C */ Sprite sprite2C;
    /* 0x054 */ Sprite sprite54;
    /* 0x07C */ Sprite sprite7C;
    /* 0x0A4 */ Sprite spriteA4;
    /* 0x0CC */ Sprite spriteCC;
    /* 0x0F4 */ Sprite spriteF4;
    /* 0x11C */ Sprite sprite11C;
    /* 0x144 */ Sprite sprite144;
    /* 0x16C */ Sprite sprite16C;
    /* 0x16C */ Sprite sprites194[5];
    /* 0x25C */ Sprite sprite25C;
    /* 0x284 */ void *unk284; // VRAM ptr?
    /* 0x288 */ s8 unk288;
    /* 0x289 */ s8 unk289;
    /* 0x28A */ s8 unk28A;
    /* 0x28B */ s8 unk28B;
    /* 0x28C */ u16 unk28C;
    /* 0x28E */ u16 unk28E;
    /* 0x290 */ u16 unk290[3];
    /* 0x296 */ u8 filler296[0x2];
    /* 0x298 */ ColorRaw pal298[3];
    /* 0x298 */ ColorRaw pal29E[3];
} SpStage2A4; /* 0x2A4 */

typedef struct {
    /* 0x00 */ SpStgContext *unk0;
    /* 0x04 */ void *unk4; // EWRAM, size:0x1000
    /* 0x08 */ void *unk8; // EWRAM, size:0x400
    /* 0x0C */ s32 *unkC; // EWRAM, size:0x400
    /* 0x10 */ s32 unk10;
    /* 0x14 */ Background bg14;
    /* 0x14 */ u8 filler54[0x40];
    /* 0x94 */ Sprite sprites94[11]; // NOTE: array size not confirmed!
} Arg2Task0; /* 0x24C */

typedef struct {
    s32 unk0;
    s32 unk4;
    s32 unk8;
    s32 unkC;
    s32 unk10;
    s32 unk14;
    s16 unk18;
    u8 unk1A;
    s8 unk1B;
} Arg2Task4_x744; /* 0x1C */

typedef struct {
    /* 0x000 */ SpStgContext *unk0;
    /* 0x004 */ Sprite sprite4;
    /* 0x02C */ Sprite sprite2C;
    /* 0x054 */ Sprite sprite54;
    /* 0x07C */ Sprite sprite7C;
    /* 0x0A4 */ Sprite spriteA4;
    /* 0x0CC */ Sprite spriteCC;
    /* 0x0F4 */ Sprite spriteF4;
    /* 0x11C */ Sprite sprite11C;
    /* 0x144 */ Sprite sprites144[2];
    /* 0x194 */ Sprite sprites194[28];
    /* 0x5F4 */ Arg2Task4_x744 unk5F4[8];
    /* 0x6D4 */ Arg2Task4_x744 unk6D4[4];
    /* 0x744 */ Arg2Task4_x744 unk744[4];
    /* 0x7B4 */ s8 unk7B4[0x126];
    /* 0x8DA */ u16 unk8DA;
    /* 0x8DC */ s16 unk8DC;
    /* 0x8DE */ s16 unk8DE;
    /* 0x8E0 */ u16 unk8E0; // TODO: type
    /* 0x8E2 */ u16 unk8E2;
    /* 0x8E4 */ u16 unk8E4;
} Arg2Task4; /* 0x8E8 */

typedef enum {
    SSA4_X_FLIP = 1,
    SSA4_Y_FLIP = 2,
} SpStagePlayerAnimData_Flags;

typedef struct {
    /* 0x00 */ AnimId anim;
    /* 0x02 */ u16 variant;
    /* 0x04 */ u16 numTiles;
    /* 0x06 */ u8 animSpeed;
    /* 0x07 */ u8 flags;
} SpStagePlayerAnimData;

typedef struct {
    /* 0x00 */ SpStgContext *unk0;
    /* 0x04 */ s32 unk4;
    /* 0x08 */ Sprite sprite8; // TODO: Is this Sprite2?
    /* 0x30 */ u8 filler30[0x8];
    /* 0x38 */ SpriteTransform tf38;
    /* 0x44 */ u8 filler44[0x40];
    /* 0x84 */ void *vram84;
    /* 0x88 */ s32 unk88;
    /* 0x8C */ s32 unk8C;
    /* 0x90 */ s32 unk90;
    /* 0x94 */ s32 unk94;
    /* 0x98 */ s32 unk98;
    /* 0x9C */ s32 unk9C;
    /* 0xA0 */ s32 unkA0;
    /* 0xA4 */ s32 unkA4;
    /* 0xA8 */ s32 unkA8;
    /* 0xAC */ u16 unkAC;
    /* 0xAE */ u16 unkAE;
    /* 0xB0 */ u16 unkB0;
    /* 0xB2 */ u8 unkB2;
    /* 0xB3 */ u8 unkB3;
    /* 0xB4 */ u8 unkB4;
    /* 0xB5 */ u8 unkB5;
    /* 0xB6 */ u8 unkB6;
    /* 0xB7 */ u8 unkB7;
    /* 0xB8 */ s8 unkB8;
    /* 0xB9 */ s8 unkB9;
    /* 0xBC */ const SpStagePlayerAnimData *unkBC;
    /* 0xC0 */ Sprite spriteC0;
    /* 0xE8 */ Sprite spriteE8;
} Arg2Task8; /* 0x110 */

typedef struct {
    /* 0x00 */ SpStgContext *ctx;
    /* 0x04 */ s32 unk4;
    /* 0x08 */ Background bg8;
    /* 0x4C */ s32 unk48;
    /* 0x4C */ s32 unk4C;
    /* 0x50 */ s32 unk50;
    /* 0x54 */ s32 unk54;
    /* 0x58 */ s32 unk58;
    /* 0x5C */ s32 unk5C;
    /* 0x60 */ s32 unk60;
    /* 0x64 */ s32 unk64;
    /* 0x68 */ u32 unk68;
    /* 0x6C */ u16 unk6C;
    /* 0x6E */ u8 unk6E;
} Arg2TaskC; /* 0x70 */

typedef struct {
    s16 unk0;
    s16 unk2;
    s16 unk4;
    s16 unk6;
    s16 unk8;
    s16 unkA;
    s8 unkC;
} Strc_8E2EF8C;

// Basically identical to Strc_8E2EF8C, just a couple more bytes (post 0x0C)
typedef struct {
    s16 unk0;
    s16 unk2;
    s16 unk4;
    s16 unk6;
    s16 unk8;
    s16 unkA;
    s8 unkC;
    s8 unkD; // TODO: type
    s8 unkE; // TODO: type
    s8 unkF; // TODO: type
    s8 unk10; // TODO: type
    s16 unk12; // TODO: type
} Strc_8E2EF8C_2;

typedef struct {
    /* 0x00 */ s32 unk0;
    /* 0x04 */ s32 unk4;
    /* 0x08 */ s32 unk8;
    /* 0x0C */ s16 unkC;
    /* 0x0E */ s16 unkE;
    /* 0x10 */ s16 unk10;
    /* 0x12 */ s16 unk12;
} Strc_8E2EF8C_3;

typedef void (*SpStgFunc)(s16, Strc_8E2EF8C_2 *);

extern void sub_800341C(void);
extern void sub_808ADF0(u8 param0);
extern void sub_80AB120(u8 param0);
extern void sub_80B1AF4(s16 param0, s16 param1, u8 param2);

extern void sub_80BE46C(Sprite *s);

extern void *gUnknown_03001E9C, *gUnknown_03001EA0; // VRAM Pointers

extern const TileInfo3 sTileInfo_SpStageDigits[11];
extern const TileInfo_16_2 gUnknown_080DBEF8[];
extern const TileInfo_16_2 gUnknown_080DBF48[];
extern const s16 gUnknown_080DBF68[22];
extern const s16 gUnknown_080DC3E8[8];
extern const s16 gUnknown_080DC3F8[8];
extern const s16 gUnknown_080DC408[8];
extern const s16 gUnknown_080DC418[8];
extern const s16 gUnknown_080DC428[7];
extern const s16 gUnknown_080DBF94[][5];
extern const u16 gUnknown_080DBFA8[6][3];
extern const u16 gUnknown_080DBFD8[];
extern const u16 gTilemapIds_080DBFEC[];
extern const s16 gUnknown_080DBFCC[];
extern const SpStagePlayerAnimData gUnknown_080DBFFC[22];
extern const SpStagePlayerAnimData *const gUnknown_080DC36C[5];
extern const SpStagePlayerAnimData sAnimList_SpStageMultiplier;
extern const TaskMain gUnknown_080DC388[24];
extern const s16 gUnknown_080DC436[8];
extern const SpStgFunc gUnknown_080DC448[27];
extern const TileInfo3 gUnknown_080E3074[5];
extern const TileInfo3 gUnknown_080E309C[8];
extern const s16 gUnknown_080E30DC[12];
extern const s16 gUnknown_080E30F4[12];

extern const Strc_8E2EF8C *gUnknown_08E2EF8C[];

#endif // GUARD_SA3_SPECIAL_STAGE_H
