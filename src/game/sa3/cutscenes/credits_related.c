#include "global.h"
#include "core.h"

typedef struct {
    u8 filler0[0xAC];
    /* 0x084 */ Sprite sprAC;
    /* 0x0D4 */ u8 fillerD4[0x4];
    /* 0x0D8 */ Background bgD8;
    /* 0x118 */ u8 filler118[0x130];
} CreditsRelated248;

typedef struct {
    /* 0x0D4 */ u8 filler12C[0x12C];
} CreditsRelated12C;

typedef struct {
    /* 0x000 */ u8 filler0[0x34];
    /* 0x034 */ Sprite spr34;
    /* 0x05C */ Sprite spr5C;
    /* 0x084 */ Sprite spr84;
    /* 0x0AC */ u8 fillerAC[0x28];
    /* 0x0D4 */ Sprite sprD4;
    /* 0x0FC */ Sprite sprFC;
    /* 0x124 */ Sprite spr124;
    /* 0x14C */ u8 filler14C[0x4];
} CreditsRelated150;

s32 sub_80A45B4(void *param0, u8 *vram);
void sub_80A4678(CreditsRelated248 *strc248);
void sub_80A490C(CreditsRelated248 *strc248, u8 param1, u8 param2);
void sub_80A4A88(CreditsRelated248 *strc248, u8 param1, u8 param2);
void sub_80A4BF8(CreditsRelated248 *strc248, u8 param1, u8 param2, u8 param3);
void sub_80A4D6C(CreditsRelated248 *strc248);
void Task_248_80A4DDC(void);
void Task_248_80A4E38(void);
void Task_248_80A4EDC(void);
void Task_248_80A4F94(void);
void Task_248_80A5050(void);
void Task_248_80A50FC(void);
void Task_248_80A51B4(void);
void Task_248_80A52DC(void);
bool32 sub_80A555C(CreditsRelated248 *strc248);
bool32 sub_80A55DC(CreditsRelated248 *strc248);
bool32 sub_80A563C(CreditsRelated248 *strc248);
bool32 sub_80A5698(CreditsRelated248 *strc248);
bool32 sub_80A5824(CreditsRelated248 *strc248);
void CreatePreCreditsCutscene(u8 param0);
void sub_80A5B08(CreditsRelated150 *strc150);
void sub_80A5CB0(CreditsRelated150 *strc150, u8 param1, u8 param2);
void sub_80A5E8C(CreditsRelated150 *strc150, u8 param1, u8 param2);
void sub_80A5EF0(CreditsRelated150 *strc150, u8 param1, u8 param2);
void Task_150_80A6090(void);
void Task_150_80A60F0(void);
void Task_150_80A619C(void);
void Task_150_80A6208(void);
bool32 sub_80A6370(CreditsRelated150 *strc150);
bool32 sub_80A63FC(CreditsRelated150 *strc150);
void Task_150_PreCreditsCutsceneTrueEndingInit(void);
void Task_150_80A65C8(void);
void Task_248_80A664C(void);
void Task_248_80A6700(void);
void Task_150_80A6768(void);
void Task_150_80A690C(void);
void Task_150_80A69E4(void);
bool32 sub_80A6A5C(CreditsRelated248 *strc248); // TODO: called with both strc150 and strc248. Shared base?
bool32 sub_80A6BDC(CreditsRelated248 *strc248);
bool32 sub_80A6CE0(CreditsRelated248 *strc248); // Unused. Maybe inline?
bool32 sub_80A6DD0(CreditsRelated12C *strc12C); //

#if M2C
void Task_248_80A4DDC(CreditsRelated248 *strc248);
void Task_248_80A4E38(CreditsRelated248 *strc248);
void Task_248_80A4EDC(CreditsRelated248 *strc248);
void Task_248_80A4F94(CreditsRelated248 *strc248);
void Task_248_80A5050(CreditsRelated248 *strc248);
void Task_248_80A50FC(CreditsRelated248 *strc248);
void Task_248_80A51B4(CreditsRelated248 *strc248);
void Task_248_80A52DC(CreditsRelated248 *strc248);
void Task_150_80A6090(CreditsRelated150 *strc150);
void Task_150_80A60F0(CreditsRelated150 *strc150);
void Task_150_80A619C(CreditsRelated150 *strc150);
void Task_150_80A6208(CreditsRelated150 *strc150);
void Task_150_PreCreditsCutsceneTrueEndingInit(CreditsRelated248 *strc248);
void Task_150_80A65C8(CreditsRelated150 *strc150);
void Task_248_80A664C(CreditsRelated248 *strc248);
void Task_248_80A6700(CreditsRelated248 *strc248);
void Task_150_80A6768(CreditsRelated248 *strc248);
void Task_150_80A690C(CreditsRelated248 *strc248);
void Task_150_80A69E4(CreditsRelated248 *strc248);

#endif
