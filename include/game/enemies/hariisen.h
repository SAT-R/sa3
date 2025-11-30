#ifndef GUARD_SA3_ENEMY_HARIISEN_H
#define GUARD_SA3_ENEMY_HARIISEN_H

#include "game/entity.h"

#define HSEN_COUNT_A 2
#define HSEN_COUNT_B 4

typedef struct Hariisen {
    /* 0x00 */ MapEntity *me;
    /* 0x04 */ u8 id;
    /* 0x05 */ u8 meX;
    /* 0x06 */ u16 region[2];
    /* 0x10 */ u16 unkA;
    /* 0x10 */ u16 unkC[2];
    /* 0x10 */ u16 unk10[HSEN_COUNT_A];
    /* 0x14 */ u16 unk14[HSEN_COUNT_B];
    /* 0x1C */ Vec2_32 qUnk1C;
    /* 0x24 */ Vec2_32 qPos;
    /* 0x2C */ Vec2_32 qUnk2C[HSEN_COUNT_A];
    /* 0x3C */ Vec2_32 qUnk3C[HSEN_COUNT_B];
    /* 0x5C */ Sprite2 s;
    /* 0x8C */ Sprite2 s2;
    /* 0xBC */ Sprite2 s3;
} Hariisen; /* 0xEC */

typedef struct HariisenProj {
    /* 0x00 */ u8 unk0[2];
    /* 0x00 */ u8 unk2[2];
    /* 0x04 */ u8 id;
    /* 0x05 */ u8 meX;
    /* 0x06 */ u16 region[2];
    /* 0x10 */ u16 unkA;
    /* 0x10 */ s32 unkC[2];
    /* 0x14 */ s32 unk14[HSEN_COUNT_B];
    /* 0x24 */ Vec2_32 qPos;
    /* 0x2C */ Vec2_32 qUnk2C[HSEN_COUNT_A];
    /* 0x3C */ Vec2_32 qUnk3C[HSEN_COUNT_B];
    /* 0x5C */ Sprite2 s;
    /* 0x8C */ Sprite2 s2;
} HariisenProj; /* 0xBC */

typedef struct Stack_806152C {
    Vec2_32 unk4;
    Vec2_16 unk8;
    u16 *unkC[2];
} Stack_806152C;

void Task_HariisenMain();
void sub_806132C(Hariisen *enemy);
void Task_806152C(void);
void sub_80616A0(void);
bool32 sub_806172C(Hariisen *enemy);
bool32 sub_80619EC(Hariisen *enemy);
bool32 sub_8061AC8(Hariisen *enemy);
void sub_8061E5C(HariisenProj *enemy);
AnimCmdResult sub_8061BD4(Hariisen *enemy);
void sub_80624E4(void);
AnimCmdResult sub_806253C(Hariisen *enemy);
void TaskDestructor_Hariisen(Task *);
bool32 sub_80617E0(Hariisen *enemy, u8 param1);
bool32 sub_8062580(Hariisen *enemy);
void sub_8061D3C(Stack_806152C arg0);

void Task_HariisenProjInit(void);
void TaskDestructor_HariisenProj(struct Task *t);

extern const TileInfo2 gUnknown_080D2044[5];
extern const u16 gPalette_080D206C[16];
extern const u16 gPalette_080D208C[16];
extern const u16 gUnknown_080D20AC[2];
extern const u16 gUnknown_080D20B0[4];
extern const u8 gUnknown_080D20B8[12];

#endif // GUARD_SA3_ENEMY_HARIISEN_H
