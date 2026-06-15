#ifndef GUARD_SA3_SPECIAL_STAGE_H
#define GUARD_SA3_SPECIAL_STAGE_H

/* NOTE: Many of these declarations and #includes will probably not have to be in this header file, once the module is matched */
#include "global.h"
#include "core.h"
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
    /* 0x114 */ Sprite sprites13C[7];
    /* 0x254 */ Sprite sprite254;
    /* 0x27C */ u8 unk27C;
    /* 0x27D */ u8 unk27D;
    /* 0x27E */ u8 unk27E;
    /* 0x27F */ u8 unk27F;
    /* 0x280 */ u8 unk280;
    /* 0x281 */ u8 unk281;
    /* 0x282 */ u8 unk282;
    /* 0x283 */ u8 unk283;
    /* 0x284 */ s16 unk284;
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
    u8 filler0[0xC];
    s32 unkC[4]; // TODO: type AND size unknown!!!
} Arg2Task0;

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
    /* 0x000 */ u8 filler0[0x744];
    /* 0x744 */ Arg2Task4_x744 unk744[4];
    /* 0x7B4 */
} Arg2Task4; /* ??? */

typedef struct {
    u8 filler0[0xAC];
    u16 unkAC;
} Arg2Task8;

typedef struct {
    u8 filler0[0x4C];
    s32 unk4C;
} Arg2TaskC;

typedef struct {
    /* 0x000 */ struct Task *task0; // -> Arg2Task0
    /* 0x004 */ struct Task *task4; // -> Arg2Task4
    /* 0x008 */ struct Task *task8; // -> Arg2Task8
    /* 0x00C */ struct Task *taskC; // -> Arg2TaskC
    /* 0x010 */ struct Task *task10; // -> Arg2Task10
    /* 0x014 */ Sprite sprite14;
    /* 0x03C */ u8 filler3C[0x40];
    /* 0x07C */ ScreenFade fade7C;
    /* 0x088 */ u8 filler88[0x28];
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
    /* 0x8C2 */ s16 unk8C2;
    /* 0x8C4 */ u16 unk8C4;
    /* 0x8C6 */ u8 unk8C6;
    /* 0x8C7 */ u8 unk8C7;
    /* 0x8C8 */ u8 unk8C8;
    /* 0x8C9 */ u8 unk8C9;
    /* 0x8CA */ u8 unk8CA;
    /* 0x8CB */ u8 unk8CB;
    /* 0x8CC */ u8 unk8CC;
    /* 0x8CD */ u8 unk8CD;
    /* 0x8CE */ s8 unk8CE;
    /* 0x8CF */ s8 unk8CF;
    /* 0x8D0 */ u8 unk8D0;
    /* 0x8D1 */ s8 unk8D1;
    /* 0x8D2 */ u8 unk8D2;
    /* 0x8D3 */ u8 unk8D3;
    /* 0x8D4 */ u8 unk8D4;
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
} UnkArg2; /* 0x8E8 */

typedef struct {
    /* 0x000 */ UnkArg2 *unk0;
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
    /* 0x194 */ u8 filler25C[0x28];
    /* 0x284 */ s32 unk284;
    /* 0x288 */ s8 unk288;
    /* 0x289 */ s8 unk289;
    /* 0x28A */ s8 unk28A;
    /* 0x28B */ s8 unk28B;
    /* 0x28C */ s16 unk28C;
    /* 0x28E */ s16 unk28E;
    /* 0x290 */ s16 unk290;
    /* 0x292 */ s16 unk292;
    /* 0x294 */ u16 unk294;
    /* 0x296 */ u8 filler296[0x2];
    /* 0x298 */ u16 pal298[3];
    /* 0x298 */ u16 pal29E[3];
} SpStage2A4; /* 0x2A4 */

struct Task *sub_80B33D0(UnkArg2 *strc);
struct Task *sub_80B48A4(UnkArg2 *strc);
struct Task *sub_80B4E1C(UnkArg2 *strc);
struct Task *sub_80B3314(UnkArg2 *strc);
struct Task *sub_80B22CC(UnkArg2 *strc);

extern void sub_800341C(void);
extern void sub_808ADF0(u8 param0);
extern void sub_80AB120(u8 param0);
void sub_80B1AF4(s16 param0, s16 param1, u8 param2);
void Task_8E8_80B1E34(void);
void sub_2A4_80B26FC(void);
void Task_8E8_80B1F4C(void);
void Task_8E8_80B205C(void);
void Task_SpStage8E8_Destroy(void);
void TaskDestructor_80B2224(struct Task *t);
void Task_8E8_80B2228(void);
void Task_8E8_80B2284(void);
void Task_2A4_80B2358(void);
void sub_80B24AC(SpStage2A4 *strc2A4);
void sub_2A4_80B2640(void);
void sub_2A4_80B26FC(void);
void sub_80B28AC(SpStage2A4 *strc2A4);
void sub_80B29B4(SpStage2A4 *strc2A4, u8 param1);
void sub_80B2B38(SpStage2A4 *strc2A4);
void sub_80B2C98(SpStage2A4 *strc2A4, u8 param1);
void sub_80B2D0C(SpStage2A4 *strc2A4);
void sub_80B2D90(SpStage2A4 *strc2A4);
void sub_80B2D9C(SpStage2A4 *strc2A4);
void sub_80B2DF4(SpStage2A4 *strc2A4);
void sub_80B2E9C(SpStage2A4 *strc2A4);
void TaskDestructor_80B2D84(struct Task *t);
void sub_80B6778(UnkArg2 *arg0, s32 *arg1);
void sub_80B6B20(void);
void sub_80B6B3C(Background *bg, s32 arg1, s32 arg2, u16 arg3, u16 arg4, u16 arg5, u8 arg6, u8 arg7, u16 arg8, u16 arg9);
void sub_80B6BB8(Sprite *inSprite, s8 arg1, s32 tileCount, AnimId anim, u32 frameFlags, s16 x, s16 y, s16 oamOrder, u8 pattern, u8 palId);
void sub_80B6CD8(u8, u8, u8, u8);
void Task_80B6D78(void);
void TaskDestructor_SpStage288(struct Task *t);
void sub_80B7074(void);
void Task_80B7470(void);
void Task_80B75A0(void);
void sub_80B73A4(void);
void Task_80B7314(void);

s16 sa3__sub_80B1560(s16 *unk28, u16 unk5C);
extern s16 gUnknown_080DBE82[2][2];
extern TileInfo3 gUnknown_080DBEA0[11];
extern TileInfo_16_2 gUnknown_080DBEF8[];
extern s16 gUnknown_080DBF68;
extern s16 gUnknown_080DBF94[][5];
extern u16 gUnknown_080DBFA8[6][3];
extern s16 gUnknown_080E30DC[12];
extern s16 gUnknown_080E30F4[12];
extern u8 *gUnknown_03001E9C;
extern u8 *gUnknown_03001EA0; // VRAM Pointer
extern TileInfo2 gUnknown_080E3074[];
extern TileInfo2 gUnknown_080E309C[];

extern s16 gUnknown_080DBFCC[];

#endif // GUARD_SA3_SPECIAL_STAGE_H