#include "global.h"
#include "core.h"
#include "flags.h"
#include "malloc_ewram.h"
#include "code_0_1.h" // sub_800214C / WarpToMap
#include "code_z_1.h"
#include "lib/m4a/m4a.h"
#include "animation_commands_bg.h" // UpdateBgAnimationTiles
#include "game/notification_text.h"
#include "game/stage.h" // gStageData
#include "game/shared/stage/player.h" // NUM_SINGLE_PLAYER_CHARS
#include "game/sa3/title_screen.h" // CreateTitleScreen
#include "constants/songs.h"
#include "constants/tilemaps.h"
#include "constants/zones.h"

// TODO: Do we have an enum for this already?
typedef enum {
    CSO_SONIC,
    CSO_TAILS,
    CSO_KNUCKLES,
    CSO_CREAM,
    CSO_AMY,

    CSO_COUNT
} CharSelectOrder;

#define CSO_OTHER_CHARS_COUNT (CSO_COUNT - NUM_SINGLE_PLAYER_CHARS)

typedef enum {
    CS_GFX_SONIC,
    CS_GFX_TAILS,
    CS_GFX_KNUCKLES,
    CS_GFX_CREAM,
    CS_GFX_AMY,
    CS_GFX_CHEESE,

    CS_GFX_COUNT
} CharSelectGraphics;

typedef struct {
    /* 0x000 */ u8 *initArg0;
    /* 0x004 */ u8 unk4;
    /* 0x005 */ u8 unk5;
    /* 0x006 */ u8 unk6[3]; // CSO_OTHER_CHARS_COUNT
    /* 0x009 */ u8 unk9[3]; // CSO_OTHER_CHARS_COUNT
    /* 0x00C */ u8 unkC[3];
    /* 0x010 */ u16 unk10[3];
    /* 0x016 */ u16 unk16;
    /* 0x018 */ u8 unk18;
    /* 0x01A */ u16 unk1A;
    /* 0x01C */ u8 *vram1C;
    /* 0x028 */ Vec2_32 qUnk20;
    /* 0x028 */ Vec2_32 qUnk28[3];
    /* 0x040 */ Vec2_32 qUnk40;
    /* 0x048 */ Sprite spr48;
    /* 0x070 */ Sprite spr70;
    /* 0x098 */ u8 filler98[0x14];
    /* 0x0AC */ Sprite sprAC;
    /* 0x0D4 */ u8 fillerD4[0x4];
    /* 0x0D8 */ Background bgD8;
    /* 0x118 */ u8 filler118[0x40];
    /* 0x158 */ Sprite spr158;
    /* 0x180 */ Sprite spr180;
    /* 0x1A8 */ Sprite spr1A8;
    /* 0x1A8 */ Sprite spr1D0;
    /* 0x1A8 */ Sprite spr1F8;
    /* 0x1A8 */ Sprite spr220;
} CreditsRelated248;

typedef struct {
    /* 0x000 */ u8 *unk0;
    /* 0x000 */ u8 unk4;
    /* 0x000 */ u8 unk5;
    /* 0x000 */ u16 unk6;
    /* 0x008 */ u8 *vram8;
    /* 0x00C */ Vec2_32 unkC;
    /* 0x014 */ s32 unk14;
    /* 0x018 */ s32 unk18;
    /* 0x01C */ s32 *unk1C;
    /* 0x01C */ s32 *unk20;
    /* 0x024 */ Sprite spr24;
    /* 0x04C */ Sprite spr4C;
    /* 0x074 */ Sprite spr74;
    /* 0x09C */ Sprite spr9C;
    /* 0x0C4 */ Sprite sprC4;
    /* 0x0EC */ Background bgEC;
} CreditsRelated12C;

typedef struct {
    /* 0x00 */ u8 unk0;
    /* 0x02 */ u16 unk2;
    /* 0x04 */ s32 unk4;
    /* 0x08 */ s32 qUnk8;
} CreditsRelatedC;

typedef struct {
    /* 0x000 */ u16 unk0;
    /* 0x004 */ s32 unk4;
    /* 0x008 */ s32 qUnk8;
    /* 0x00C */ s32 qUnkC;
    /* 0x010 */ Sprite *spr10;
} CreditsRelated14;

typedef struct {
    /* 0x00 */ u8 *initArg0;
    /* 0x04 */ u8 *initArg1;
    /* 0x08 */ u8 unk8;
    /* 0x09 */ u8 initArg2;
    /* 0x0A */ u8 initArg3;
    /* 0x0B */ u8 unkB;
    /* 0x0C */ winreg_t *winV;
    /* 0x10 */ winreg_t *winH;
    /* 0x14 */ u16 unk14;
    /* 0x18 */ s32 unk18;
    /* 0x1C */ s32 unk1C;
    /* 0x20 */ s32 unk20;
    /* 0x24 */ s32 unk24;
} CreditsRelated28;

typedef struct {
    u8 *initArg0;
    u8 unk4;
    u8 unk5;
    u16 unk6;
    u8 filler8[0x4];
    s32 unkC;
    s32 unk10;
    Sprite spr14;
    Sprite spr3C[2];
} CreditsRelated8C;

typedef struct {
    /* 0x000 */ s32 unk0; // TODO: type
    /* 0x004 */ u8 initArg0;
    /* 0x005 */ u8 unk5;
    /* 0x006 */ u8 unk6;
    /* 0x008 */ u16 unk8;
    /* 0x008 */ u8 *vramC;
    /* 0x008 */ s32 unk10;
    /* 0x008 */ s32 unk14;
    /* 0x008 */ s32 unk18;
    /* 0x008 */ s32 unk1C;
    /* 0x008 */ s32 unk20;
    /* 0x028 */ Vec2_32 qUnk24;
    /* 0x008 */ s32 unk2C;
    /* 0x008 */ s32 qUnk30;
    /* 0x034 */ Sprite spr34;
    /* 0x05C */ Sprite spr5C;
    /* 0x084 */ Sprite spr84;
    /* 0x084 */ Sprite sprAC;
    /* 0x0D4 */ Sprite sprD4;
    /* 0x0FC */ Sprite sprFC;
    /* 0x124 */ Sprite spr124;
    /* 0x14C */ NotificationText *ewramData14C;
} CreditsRelated150;

typedef struct {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u16 unk4;
    u16 unk6;
    s32 unk8;
    s32 unkC;
    Background bg10;
    u8 filler50[0x40]; // TODO: struct Background ?
} CreditsRelated90;

typedef struct {
    u16 unk0;
    u8 unk2;
    u8 unk3;
    u16 blendY;
    Background bg;
} CreditsRelated48_A;

typedef struct {
    /* 0x00 */ u8 unk0;
    /* 0x01 */ u8 unk1;
    /* 0x01 */ u8 unk2;
    /* 0x01 */ u8 unk3;
    /* 0x01 */ u16 unk4;
    /* 0x01 */ u16 unk6;
    /* 0x02 */ u8 filler8[0x40];
} CreditsRelated48_B;

typedef struct {
    /* 0x00 */ u8 unk0;
    /* 0x02 */ u16 unk2;
    /* 0x02 */ u16 unk4;
    /* 0x02 */ u16 unk6;
    /* 0x08 */ s32 unk8;
    /* 0x0C */ s32 unkC;
    /* 0x10 */ s32 unk10;
    /* 0x14 */ s32 unk14;
    /* 0x18 */ u8 *vram18;
    /* 0x1C */ Sprite gemerl;
    /* 0x44 */ Sprite cream;
} TrueEndingGemerlCreamPlaying; /* 0x6C */

typedef struct {
    /* 0x000 */ u8 unk0;
    /* 0x001 */ u8 unk1;
    /* 0x002 */ s16 delay;
    /* 0x004 */ ColorRaw palette4[16 * PALETTE_LEN_4BPP];
    /* 0x204 */ s32 palette204[16 * PALETTE_LEN_4BPP][3];
} CreditsRelatedE04;

typedef struct {
    bool8 unk0;
    u8 filler1[3];
    s16 unk4;
    u16 unk6;
} CreditsRelatedUnknown;

u8 *sub_80A45B4(u8 *param0, u8 *vram);
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
bool32 sub_80A555C(CreditsRelated248 *strc248, u8 param1);
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
void Task_150_80A664C(void);
void Task_150_80A6700(void);
void Task_150_80A6768(void);
void Task_150_80A690C(void);
void Task_150_80A69E4(void);
bool32 sub_80A6A5C(CreditsRelated150 *strc150); // TODO: called with both strc150 and strc248. Shared base?
bool32 sub_80A6BDC(CreditsRelated150 *strc150);
bool32 sub_80A6CE0(CreditsRelated150 *strc150); // Unused. Maybe inline?
bool32 sub_80A6DD0(CreditsRelated150 *strc150); //
void sub_80A6EBC(CreditsRelated12C *strc12C); //
void Task_12C_80A70B8(void);
void Task_12C_80A714C(void);
u8 sub_80A71E8(CreditsRelated12C *strc12C, Vec2_u16 *param1); // TODO: maybe not u16, maybe not even Vec2_u16?
void sub_80A72F4(CreditsRelated12C *strc12C, Vec2_u16 *param1); // TODO: maybe not u16, maybe not even Vec2_u16?
void sub_80A735C(u8 *arg0, u8 *arg1, u8 arg2, u8 arg3);
void Task_28_80A74F8(void);
void Task_28_80A7578(void);
void Task_28_80A7738(void);
void Task_28_80A786C(void);
void Task_28_80A7674(void);
void Task_28_80A77B4(void);
void Task_8C_80A7ACC(void);
void TaskDestructor_80A7BFC(Task *t);
void Task_248_80A7C00(void);
void Task_248_80A7C40(void);
void Task_248_80A7C7C(void);
void Task_248_80A7CB8(void);
void Task_248_80A7D00(void);
void Task_248_80A7D40(void);
void Task_248_80A7D7C(void);
void Task_248_80A7DD0(void);
void Task_248_80A7E24(void);
void Task_150_80A7F18(void);
void Task_150_80A7F58(void);
void Task_150_80A7FAC(void);
void Task_150_80A7FDC(void);
void Task_48_A_80A8D24(void);
void TaskDestructor_48_A_80A9964(Task *t);
void TaskDestructor_80A84D8(Task *t);
bool32 sub_80A8524(CreditsRelated28 *strc28);
bool32 sub_80A85B0(CreditsRelated28 *strc28);
void TaskDestructor_8C_80A85F0(Task *t);
void Task_8C_80A85F4(void);
void sub_80A866C(Sprite *);
void sub_80A8C80(void);
void sub_80A6EBC(CreditsRelated12C *strc12C);
void sub_80A6F34(CreditsRelated12C *strc12C);
void Task_12C_80A70B8(void);
void TaskDestructor_12C_80A8324(Task *t);
void Task_12C_80A8328(void);
void Task_12C_80A8360(void);
void Task_12C_80A83C8(void);
void sub_80A8468(CreditsRelated12C *strc12C);
void Task_12C_80A8424(void);
void Task_14_80A86D8(void);
void TaskDestructor_14_80A86D4(Task *t);
void CreateCredRelatedStrc90(u8 arg0);

void Task_150_PreCreditsCutsceneNormalInit(void);
void TaskDestructor_PreCreditsCutscene(Task *t);
void Task_150_80A805C(void);
void Task_150_80A808C(void);
void Task_150_80A80EC(void);
void Task_150_80A814C(void);
void Task_150_80A8198(void);
void Task_28_80A78D8(void);
bool32 sub_80A81E8(CreditsRelated150 *arg0);
bool32 sub_80A820C(CreditsRelated150 *arg0);
AnimCmdResult sub_80A8234(CreditsRelated150 *strc150);
void sub_80A825C(CreditsRelated150 *arg0);
u8 *sub_80AA06C(u8 *arg0, u8 *arg1);
u8 *sub_80A828C(u8 *arg0, u8 *vram, s32 *arg2);
bool32 sub_80A84DC(CreditsRelated28 *strc28);
void sub_80A98B0(u8 arg0);
void Task_Unk_80A9B74(void);
void Task_Unk_80A9BA8(void);
u8 *sub_80A9BD8(u8 *arg0, s32 arg1, s32 arg2, u8 arg3, u8 *arg4);
u8 *sub_80A9E24(u8 *arg0, u8 *arg1);

void Task_90_80A8858(void);
void TaskDestructor_90_80A98AC(Task *t);
void Task_90_80A8918(void);
void Task_90_80A8AC4(void);
void Task_90_80A8BAC(void);
void Task_90_80A8C20(void);
void sub_80ABD44(u8 a);
void sub_80A8E54(void);
void Task_C_80A8ED0(void);

void sub_80A9068(TrueEndingGemerlCreamPlaying *strc6C);
void Task_6C_80A9118(void);
void Task_6C_80A91C4(void);
void Task_6C_80A925C(void);
void Task_6C_80A92E0(void);
void Task_6C_80A9354(void);
void Task_E04_80A93C8(void);
void Task_E04_80A94EC(void);
void Task_48_B_80A9684(void);
void sub_80A9920(u8 arg0);
void Task_48_A_80A9968(void);
void TaskDestructor_C_80A99CC(Task *t);
void Task_6C_80A99D0(void);
bool32 sub_80A9A44(TrueEndingGemerlCreamPlaying *strc6C);
bool32 sub_80A9A74(TrueEndingGemerlCreamPlaying *strc6C);
bool32 sub_80A9AA4(TrueEndingGemerlCreamPlaying *strc6C);
AnimCmdResult sub_80A9B24(TrueEndingGemerlCreamPlaying *strc6C);
void TaskDestructor_6C_80A9B68(Task *t);
void TaskDestructor_E04_80A9B6C(Task *t);
void TaskDestructor_48_B_80A9B70(Task *t);

extern void sub_80AD7B4(NotificationText *arg0, u8 arg1, u16 arg2, u16 arg3, u8 *vram);

extern void sub_80260F0();
extern s16 sub_8001E84(void);

extern ColorRaw sub_80C4C0C(ColorRaw color);

extern const u8 gUnknown_080D9FBC[7];
extern u8 gUnknown_080D9FC3[7];

extern const u8 gCharacterSelectOrderLUT[NUM_CHARACTERS]; // 0x80D9B74
extern const u16 gUnknown_080D99D0[CSO_COUNT];
extern const TileInfo2 gUnknown_080D99DC[8];
extern const TileInfo2 gUnknown_080D9A1C[8];
extern const TileInfo2 gUnknown_080D9A5C[8];
extern const TileInfo2 gUnknown_080D9A9C[8];
extern const TileInfo2 gUnknown_080D9ADC[8];
extern const TileInfo2 gUnknown_080D9B1C[8];
extern const TileInfo2 *gUnknown_080D9B5C[CS_GFX_COUNT];
extern const u8 gUnknown_080D9B79[NUM_CHARACTERS];
extern const s16 gUnknown_080D9B7E[NUM_CHARACTERS];
/* * TODO:       The number of entries in this is between 0 and the max value of the GBA's blend register!
/  * NOTE(Jace): I'm not 100% sure about this comment anymore... */
extern const u16 gUnknown_080D9B88[0x10 + 1];
extern u8 gUnknown_080D9BAA[8];
extern const u16 gUnknown_080D9BB2[7];
extern const u8 gUnknown_080D9BC0[0x10];
extern TileInfo2 gUnknown_080D9C90[13];
extern TileInfo2 gUnknown_080D9D08[13];
extern const u16 gUnknown_080D9E58[8];
extern TileInfo2 *gUnknown_080D9E40[6];
extern const u32 gUnknown_080D9E68[6];
extern const u8 gUnknown_080D9E80[0x10];
extern const Vec2_32 gUnknown_080D9E90[15];
extern const TileInfo2 gUnknown_080D9F08[10];
extern const u8 gUnknown_080D9F58[4];
extern const u8 gUnknown_080DA054[0x18];
extern const ColorRaw gUnknown_080DA084[16 * PALETTE_LEN_4BPP];
extern const u8 gUnknown_080D9F5C[0x21];
extern const u8 gUnknown_080D9F7D[6];
extern const u8 gUnknown_080D9F83[9];
extern const TileInfo2 gUnknown_080D9F8C[3];
extern const u16 gUnknown_080D9FA4[]; // TODO: Tilemap enum!
extern const u8 gUnknown_080D9FCA[6];
extern s32 gUnknown_080D9FD0[5]; // Q_24_8
extern const TileInfo2 sTrueEndingPlayingGemerl[5]; // 5 = Variant/Pattern count
extern const TileInfo2 sTrueEndingPlayingCream[5]; // 5 = Variant/Pattern count
extern const u16 gUnknown_080DA034[5][3];

extern ColorRaw Palette_unknown_307[16 * PALETTE_LEN_4BPP];
extern ColorRaw Palette_unknown_308[16 * PALETTE_LEN_4BPP];
extern ColorRaw Palette_unknown_318[16 * PALETTE_LEN_4BPP];
extern ColorRaw Palette_unknown_319[16 * PALETTE_LEN_4BPP];

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
void Task_150_80A664C(CreditsRelated248 *strc248);
void Task_150_80A6700(CreditsRelated248 *strc248);
void Task_150_80A6768(CreditsRelated150 *strc150);
void Task_150_80A690C(CreditsRelated150 *strc150);
void Task_150_80A69E4(CreditsRelated150 *strc150);
void Task_12C_80A70B8(CreditsRelated12C *strc12C);
void Task_12C_80A714C(CreditsRelated12C *strc12C);
void Task_248_80A7E24(CreditsRelated12C *strc12C);
void CreatePreCreditsCutscene(u8 param0, CreditsRelated150 *strc150);
void sub_80A8E54(CreditsRelatedC *strcC);
void Task_C_80A8ED0(CreditsRelatedC *strcC);
void Task_28_80A74F8(CreditsRelated28 *strc28);
void Task_28_80A7578(CreditsRelated28 *strc28);
void Task_28_80A7674(CreditsRelated28 *strc28);
void Task_28_80A7738(CreditsRelated28 *strc28);
#endif

u8 *sub_80A45B4(u8 *param0, u8 *vram)
{
    Task *t;
    CreditsRelated248 *strc248;
    u8 var_r3;

    if (*param0 == 0x10) {
        t = TaskCreate(Task_248_80A7E24, sizeof(CreditsRelated248), 0x100, 0, TaskDestructor_80A7BFC);
    } else {
        t = TaskCreate(Task_248_80A4DDC, sizeof(CreditsRelated248), 0x100, 0, TaskDestructor_80A7BFC);
    }

    strc248 = TASK_DATA(t);
    strc248->initArg0 = param0;
    strc248->unk10[3] = 0;
    strc248->unk18 = 0;
    strc248->unk1A = 0;
    strc248->qUnk40.x = 0;
    strc248->qUnk40.y = 0;

    for (var_r3 = 0; var_r3 < ARRAY_COUNT(strc248->qUnk28); var_r3++) {
        strc248->qUnk28[var_r3].x = 0;
        strc248->qUnk28[var_r3].y = 0;
    }

    strc248->qUnk20.x = Q(DISPLAY_WIDTH);
    strc248->qUnk20.y = Q(0);
    strc248->vram1C = vram;

    sub_80A4678(strc248);
    sub_80A4D6C(strc248);

    gBgSprites_Unknown1[1] = 0x12;
    gBgSprites_Unknown2[1][0] = 0;
    gBgSprites_Unknown2[1][1] = 0;
    gBgSprites_Unknown2[1][2] = 0xFF;
    gBgSprites_Unknown2[1][3] = 0x40;

    return strc248->vram1C;
}

void sub_80A4678(CreditsRelated248 *strc248)
{
    Sprite *unselected[CSO_OTHER_CHARS_COUNT];
    s32 spC;
    s32 sp10;
    s32 sp14;
    s32 *sp18;
    Vec2_32 *temp_r3;
    Vec2_32 *var_r2;
    s32 *temp_r3_2;
    s32 temp_r2_2;
    s32 var_r1;
    u8 *temp_r0;
    u8 *temp_r0_2;
    u8 i;
    u8 unselectedChar;
    void **temp_r1;
    Sprite *temp_r2_3;

    if (gPlayers->charFlags.character > NUM_CHARACTERS) {
        spC = gCharacterSelectOrderLUT[SONIC];
        sp10 = gCharacterSelectOrderLUT[TAILS];
    } else {
        spC = gCharacterSelectOrderLUT[gPlayers[PLAYER_1].charFlags.character];
        sp10 = gCharacterSelectOrderLUT[gPlayers[PLAYER_2].charFlags.character];
    }
    unselected[0] = &strc248->spr158;
    unselected[1] = &strc248->spr180;
    unselected[2] = &strc248->spr1A8;

    unselectedChar = 0;
    for (i = 0; i < CSO_COUNT; i++) {
        if ((i != spC) && (i != sp10)) {
            Sprite *s = unselected[unselectedChar];
            strc248->unk6[unselectedChar] = i;
            s->tiles = strc248->vram1C;
            strc248->vram1C += gUnknown_080D99D0[i] << 5;
            s->anim = gUnknown_080D9B5C[i]->anim;
            s->variant = gUnknown_080D9B5C[i]->variant;
            s->prevVariant = -1;
            if (*strc248->initArg0 == 0x10) {
                strc248->qUnk28[unselectedChar].x = Q(gUnknown_080D9B7E[i]);
            } else {
                strc248->qUnk28[unselectedChar].x = Q(gUnknown_080D9B79[i]) + Q(4);
            }
            s->x = I(strc248->qUnk28[unselectedChar].x);
            s->y = 0;
            s->oamFlags = 0x240;
            s->animCursor = 0;
            s->qAnimDelay = 0;
            s->animSpeed = 0x10;
            s->palId = i;
            if (i == CSO_AMY) {
                s->palId = 5;
            }
            s->frameFlags = 0x400;
            sp14 = 0;
            UpdateSpriteAnimation(s);

            if (i == CSO_CREAM) {
                // Draw Cheese
                Sprite *s = &strc248->spr48;
                strc248->unk5 = unselectedChar;
                s->tiles = strc248->vram1C;
                strc248->vram1C += 0x120;
                s->anim = gUnknown_080D9B5C[CS_GFX_CHEESE]->anim;
                s->variant = gUnknown_080D9B5C[CS_GFX_CHEESE]->variant;
                s->prevVariant = -1;
                s->x = I(strc248->qUnk28[unselectedChar].x) - 18;
                s->y = 0;
                s->oamFlags = 0x280;
                s->animCursor = 0;
                s->qAnimDelay = 0;
                s->animSpeed = 0x10;
                s->palId = 0;
                s->frameFlags = 0x400;
                UpdateSpriteAnimation(s);
            }
            unselectedChar += 1;
        }
    }

    unselected[0] = &strc248->spr1D0;
    unselected[1] = &strc248->spr1F8;
    unselected[2] = &strc248->spr220;

    unselectedChar = 0;
    for (i = 0; i < CSO_COUNT; i++) {
        if ((i != spC) && (i != sp10)) {
            Sprite *s = unselected[unselectedChar];
            strc248->unk9[unselectedChar] = i;
            s->tiles = (u8 *)strc248->vram1C;
            strc248->vram1C += gUnknown_080D99D0[unselectedChar] << 5;
            s->oamFlags = 0x240;
            s->animCursor = 0;
            s->qAnimDelay = 0;
            s->animSpeed = 0x10;
            s->palId = i;
            if (i == CSO_AMY) {
                s->palId = 5U;
            }
            s->frameFlags = 0x400;
            if (i == CSO_CREAM) {
                Sprite *s = &strc248->spr70;
                s->tiles = strc248->vram1C;
                strc248->vram1C += 0x120;
                s->anim = gUnknown_080D9B5C[CS_GFX_CHEESE]->anim;
                s->variant = gUnknown_080D9B5C[CS_GFX_CHEESE]->variant;
                s->prevVariant = -1;
                s->oamFlags = 0x280;
                s->animCursor = 0;
                s->qAnimDelay = 0;
                s->animSpeed = 0x10;
                s->palId = 0;
                s->frameFlags = 0x400;
                UpdateSpriteAnimation(s);
            }
            unselectedChar += 1;
        }
    }
}

void sub_80A490C(CreditsRelated248 *strc248, u8 param1, u8 param2)
{
    Sprite *sp[CSO_OTHER_CHARS_COUNT];
    u8 sp10;
    u8 sp14;
    Sprite *sprOtherChar;
    TileInfo2 **temp_r1_2;
    u32 temp_r2;
    u8 var_r5;
    u8 var_r8;

    // TODO: BUG? Should be >= NUM_CHARACTERS, not >.
    if (gPlayers->charFlags.character > NUM_CHARACTERS) {
        sp10 = gCharacterSelectOrderLUT[SONIC];
        sp14 = gCharacterSelectOrderLUT[TAILS];
    } else {
        sp10 = gCharacterSelectOrderLUT[gPlayers[PLAYER_1].charFlags.character];
        sp14 = gCharacterSelectOrderLUT[gPlayers[PLAYER_2].charFlags.character];
    }
    if (param2 != 0) {
        sp[0] = &strc248->spr1D0;
        sp[1] = &strc248->spr1F8;
        sp[2] = &strc248->spr220;
    } else {
        sp[0] = &strc248->spr158;
        sp[1] = &strc248->spr180;
        sp[2] = &strc248->spr1A8;
    }
    var_r8 = 0;
    for (var_r5 = 0; var_r5 < 5; var_r5++) {
        if ((var_r5 != sp10) && (var_r5 != sp14)) {
            sprOtherChar = sp[var_r8];
            sprOtherChar->anim = gUnknown_080D9B5C[var_r5][param1].anim;
            sprOtherChar->variant = gUnknown_080D9B5C[var_r5][param1].variant;
            sprOtherChar->prevVariant = -1;
            sprOtherChar->oamFlags = 0x240;
            sprOtherChar->animCursor = 0;
            sprOtherChar->qAnimDelay = 0;
            sprOtherChar->animSpeed = 0x10;
            sprOtherChar->palId = 0;
            sprOtherChar->frameFlags = 0x1000;
            if ((u32)*strc248->initArg0 < 20) {
                if ((u32)(u8)(param1 - 3) > 1) {
                    if ((u32)(u8)(var_r5 - 2) <= 1) {
                        sprOtherChar->frameFlags = 0x1000;
                        sprOtherChar->frameFlags |= 0x400;
                    } else {
                        sprOtherChar->frameFlags = 0x1000;
                    }
                }
            } else {
                sprOtherChar->frameFlags = 0x1000;
            }
            if (var_r5 == 3) {
                Sprite *s = &strc248->spr48;
                if (param2 != 0) {
                    s = &strc248->spr70;
                }
                s->anim = gUnknown_080D9B5C[5][param1].anim;
                s->variant = gUnknown_080D9B5C[5][param1].variant;
                s->prevVariant = -1;
                s->oamFlags = 0x280;
                s->animCursor = 0;
                s->qAnimDelay = 0;
                s->animSpeed = 0x10;
                s->palId = 0;
                s->frameFlags = 0;
                UpdateSpriteAnimation(s);
            }
            UpdateSpriteAnimation(sprOtherChar);
            var_r8 += 1;
        }
    }
}

void sub_80A4A88(CreditsRelated248 *strc248, u8 param1, u8 param2)
{
    Sprite *sp[CSO_OTHER_CHARS_COUNT];
    s32 sp14;
    Sprite *temp_r4;
    Sprite *var_r1;
    TileInfo2 **temp_r1;
    u32 temp_r2;
    u8 var_r0;
    u8 var_r5;
    u8 var_r8;

    if (gPlayers->charFlags.character > NUM_CHARACTERS) {
        sp14 = gCharacterSelectOrderLUT[SONIC];
        var_r0 = gCharacterSelectOrderLUT[TAILS];
    } else {
        sp14 = gCharacterSelectOrderLUT[gPlayers[PLAYER_1].charFlags.character];
        var_r0 = gCharacterSelectOrderLUT[gPlayers[PLAYER_2].charFlags.character];
    }

    if (param2 != 0) {
        sp[0] = &strc248->spr1D0;
        sp[1] = &strc248->spr1F8;
        sp[2] = &strc248->spr220;
    } else {
        sp[0] = &strc248->spr158;
        sp[1] = &strc248->spr180;
        sp[2] = &strc248->spr1A8;
    }

    var_r8 = 0;
    for (var_r5 = 0; var_r5 < 5; var_r5++) {
        if ((var_r5 != sp14) && (var_r5 != var_r0)) {
            temp_r4 = sp[var_r8];
            temp_r4->anim = gUnknown_080D9B5C[var_r5][param1].anim;
            temp_r4->variant = gUnknown_080D9B5C[var_r5][param1].variant;
            temp_r4->prevVariant = -1;
            temp_r4->oamFlags = 0x240;
            temp_r4->animCursor = 0;
            temp_r4->qAnimDelay = 0;
            temp_r4->animSpeed = 0x10;
            temp_r4->palId = var_r5;
            if (var_r5 == 4) {
                temp_r4->palId = 5;
            }
            {
                u32 matchingMask = 0x1000;
                temp_r4->frameFlags = matchingMask;
                if ((*strc248->initArg0 < 20) && (var_r5 == 0 || var_r5 == 1)) {
                    temp_r4->frameFlags = 0x400;
                    temp_r4->frameFlags |= 0x1000;
                } else {
                    // TODO(Jace): Maybe there is a way to match this without the variable, but I couldn't find one yet
                    temp_r4->frameFlags = matchingMask;
                }
            }

            if (var_r5 == CSO_CREAM) {
                if (param2 != 0) {
                    var_r1 = &strc248->spr70;
                } else {
                    var_r1 = &strc248->spr48;
                }
                var_r1->anim = gUnknown_080D9B5C[CS_GFX_CHEESE][param1].anim;
                var_r1->variant = gUnknown_080D9B5C[CS_GFX_CHEESE][param1].variant;
                var_r1->prevVariant = -1;
                var_r1->oamFlags = 0x280;
                var_r1->animCursor = 0;
                var_r1->qAnimDelay = 0;
                var_r1->animSpeed = 0x10;
                var_r1->palId = 0;
                var_r1->frameFlags = 0;
                UpdateSpriteAnimation(var_r1);
            }
            UpdateSpriteAnimation(temp_r4);
            var_r8 += 1;
        }
    }
}

void sub_80A4BF8(CreditsRelated248 *strc248, u8 param1, u8 param2, u8 param3)
{
    Sprite *sp[CSO_OTHER_CHARS_COUNT];
    u8 var_r1;
    u8 var_r3;
    u8 var_r5;
    s8 var_r4 = -1;

    if (gPlayers->charFlags.character > 5) {
        var_r5 = gCharacterSelectOrderLUT[SONIC];
        var_r3 = gCharacterSelectOrderLUT[TAILS];
    } else {
        var_r5 = gCharacterSelectOrderLUT[gPlayers[PLAYER_1].charFlags.character];
        var_r3 = gCharacterSelectOrderLUT[gPlayers[PLAYER_2].charFlags.character];
    }
    if (param3 == var_r3) {
        return;
    }

    if (param2 != 0) {
        sp[0] = &strc248->spr1D0;
        sp[1] = &strc248->spr1F8;
        sp[2] = &strc248->spr220;
    } else {
        sp[0] = &strc248->spr158;
        sp[1] = &strc248->spr180;
        sp[2] = &strc248->spr1A8;
    }

    for (var_r1 = 0; var_r1 < 3; var_r1++) {
        if (strc248->unk9[var_r1] == param3) {
            var_r4 = var_r1;
        }
    }

    if (((s32)var_r4 >= 0) && (param3 != var_r5) && (param3 != var_r3)) {
        Sprite *s = sp[var_r4];
        s->anim = gUnknown_080D9B5C[param3][param1].anim;
        s->variant = gUnknown_080D9B5C[param3][param1].variant;
        s->prevVariant = -1;
        s->oamFlags = 0x240;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = param3;
        if (param3 == 4) {
            s->palId = 5;
        }
        {
            u32 matchingMask = 0x1000;
            s->frameFlags = matchingMask;
            if ((*strc248->initArg0 < 20) && (param3 == 0 || param3 == 1)) {
                s->frameFlags = 0x400;
                s->frameFlags |= 0x1000;
            } else {
                // TODO(Jace): Maybe there is a way to match this without the variable, but I couldn't find one yet
                s->frameFlags = matchingMask;
            }
        }
        if (param3 == 3) {
            Sprite *sprCheese = &strc248->spr48;
            if (param2 != 0) {
                sprCheese = &strc248->spr70;
            }
            sprCheese->anim = gUnknown_080D9B5C[CS_GFX_CHEESE][param1].anim;
            sprCheese->variant = gUnknown_080D9B5C[CS_GFX_CHEESE][param1].variant;
            sprCheese->prevVariant = -1;
            sprCheese->oamFlags = 0x280;
            sprCheese->animCursor = 0;
            sprCheese->qAnimDelay = 0;
            sprCheese->animSpeed = 0x10;
            sprCheese->palId = 0;
            sprCheese->frameFlags = 0;
            UpdateSpriteAnimation(sprCheese);
        }
        UpdateSpriteAnimation(s);
    }
}

void sub_80A4D6C(CreditsRelated248 *strc248)
{
    gBgCntRegs[1] = 0x4501;
    gBgScrollRegs[1][0] = (s16)((s32)strc248->qUnk20.x >> 8);
    gBgScrollRegs[1][1] = ((s32)strc248->qUnk20.y >> 8) + 0x50;

    {
        Background *bg = &strc248->bgD8;
        bg->graphics.dest = BG_CHAR_ADDR(0);
        bg->graphics.anim = 0;
        bg->layoutVram = BG_SCREEN_ADDR(5);
        bg->unk18 = 0;
        bg->unk1A = 0;
        bg->tilemapId = 0x131;
        bg->unk1E = 0;
        bg->unk20 = 0;
        bg->unk22 = 0;
        bg->unk24 = 0;
        bg->targetTilesX = 0x20;
        bg->targetTilesY = 0x20;
        bg->paletteOffset = 0;
        bg->flags = 1;
        DrawBackground(bg);
    }
}

void Task_248_80A4DDC(void)
{
    gDispCnt |= DISPCNT_WIN0_ON;
    gWinRegs[0] = WIN_RANGE(0, DISPLAY_WIDTH);
    gWinRegs[2] = WIN_RANGE(0, DISPLAY_HEIGHT);
    gWinRegs[4] = 0x3F;
    gWinRegs[5] = 0x1F;
    gBldRegs.bldCnt = 0x3FFF;
    gBldRegs.bldY = 0;
    gDispCnt |= DISPCNT_BG1_ON;
    gCurTask->main = Task_248_80A4E38;
}

void Task_248_80A4E38(void)
{
    CreditsRelated248 *strc248 = TASK_DATA(gCurTask);

    UpdateBgAnimationTiles(&strc248->bgD8);
    sub_80A5698(strc248);

    if (strc248->qUnk20.x > 0x400) {
        if (*strc248->initArg0 == 6) {
            strc248->qUnk20.x -= Q(2);
        } else if (*strc248->initArg0 == 7) {
            strc248->qUnk20.x -= Q(1);
        } else if (*strc248->initArg0 <= 5) {
            strc248->qUnk20.x -= Q(2.0625);
        }

        if (strc248->qUnk20.x < 0x400) {
            strc248->qUnk20.x = 0x400;
        }
    }

    gBgScrollRegs[1][0] = I(strc248->qUnk20.x);
    gBgScrollRegs[1][1] = I(strc248->qUnk20.y) + 80;

    if (*strc248->initArg0 == 9) {
        sub_80A490C(strc248, 1, 1);
        gCurTask->main = Task_248_80A7C00;
    }
}

void Task_248_80A4EDC(void)
{
    CreditsRelated248 *strc248 = TASK_DATA(gCurTask);

    UpdateBgAnimationTiles(&strc248->bgD8);

    if (strc248->unk18 == 0) {
        gDispCnt |= DISPCNT_WIN0_ON;
        gWinRegs[WINREG_WIN0H] = WIN_RANGE(138, 95);
        gWinRegs[WINREG_WIN0V] = WIN_RANGE(0, 159);
        gWinRegs[WINREG_WIN1H] = WIN_RANGE(95, 139);
        gWinRegs[WINREG_WIN1V] = 0xD1A0;
        gWinRegs[WINREG_WININ] = 0x1E3F;
        gWinRegs[WINREG_WINOUT] |= 0x1F;
        gBldRegs.bldCnt = 0x3FBF;
        gBldRegs.bldY = 0;
        strc248->unk1A = 0;
        strc248->unk18 = 1;
        m4aSongNumStart(SE_668);
    }
    if (gBldRegs.bldY < 0x10) {
        gBldRegs.bldY = (strc248->unk1A >> 8);
        strc248->unk1A += 0x100;
    } else {
        gBldRegs.bldY = 0x10;
        strc248->unk4 = 0;
        gCurTask->main = Task_248_80A4F94;
    }
}

void Task_248_80A4F94(void)
{
    CreditsRelated248 *strc248 = TASK_DATA(gCurTask);
    u32 temp_r0;

    UpdateBgAnimationTiles(&strc248->bgD8);
    if (strc248->unk18 != 0) {
        gDispCnt |= DISPCNT_WIN1_ON;
        gWinRegs[WINREG_WIN0H] = WIN_RANGE(138, 95);
        gWinRegs[WINREG_WIN0V] = WIN_RANGE(0, DISPLAY_HEIGHT - 1);
        gWinRegs[WINREG_WIN1H] = WIN_RANGE(95, 139);
        gWinRegs[WINREG_WIN1V] = WIN_RANGE(0xD1, DISPLAY_HEIGHT);
        gWinRegs[WINREG_WININ] = 0x3E00;
        gWinRegs[WINREG_WINOUT] |= 0x1F;
        gBldRegs.bldCnt = 0x2042;
        gBldRegs.bldY = 0;
        strc248->unk1A = 0;
        strc248->unk18 = 0;
    }

    if (I(strc248->unk1A) < ARRAY_COUNT(gUnknown_080D9B88)) {
        strc248->unk4 = I(strc248->unk1A);
        gBldRegs.bldAlpha = gUnknown_080D9B88[strc248->unk4];
        strc248->unk1A += Q(2);
        return;
    } else {
        strc248->unk1A = Q(0x10);
        gCurTask->main = Task_248_80A5050;
    }
}

void Task_248_80A5050(void)
{
    CreditsRelated248 *strc248 = TASK_DATA(gCurTask);
    u8 *temp_r1;
    void (*var_r0)(CreditsRelated248 *);

    if (0x10000 & gFlags) {
        CopyBgPaletteMasked(gUnknown_080DA084, 0, 0x100);
    } else {
        DmaCopy16(3, gUnknown_080DA084, gBgPalette, sizeof(gUnknown_080DA084));
        gFlags |= FLAGS_UPDATE_BACKGROUND_PALETTES;
    }

    if (*strc248->initArg0 == 16) {
        strc248->unk18 = 1;
        strc248->qUnk28[0].y += Q(1);
        strc248->qUnk28[1].y += Q(1);
        strc248->qUnk28[2].y += Q(1);
        gCurTask->main = Task_248_80A51B4;
    } else {
        *strc248->initArg0 = 13;
        gCurTask->main = Task_248_80A50FC;
    }
}

void Task_248_80A50FC(void)
{
    CreditsRelated248 *strc248 = TASK_DATA(gCurTask);
    u32 temp_r0_2;
    s16 temp_r1;

    UpdateBgAnimationTiles(&strc248->bgD8);

    if (strc248->unk18 == 0) {
        gDispCnt |= DISPCNT_WIN1_ON;
        gWinRegs[WINREG_WIN0H] = WIN_RANGE(138, 95);
        gWinRegs[WINREG_WIN0V] = WIN_RANGE(0, DISPLAY_HEIGHT - 1);
        gWinRegs[WINREG_WIN1H] = WIN_RANGE(95, 139);
        gWinRegs[WINREG_WIN1V] = WIN_RANGE(209, DISPLAY_HEIGHT);
        gWinRegs[WINREG_WININ] = 0x3E00;
        gWinRegs[WINREG_WINOUT] |= 0x1F;
        gBldRegs.bldCnt = BLDCNT_TGT1_BG1 | BLDCNT_TGT2_BD | BLDCNT_EFFECT_BLEND;
        gBldRegs.bldY = 0;
        strc248->unk18 = 1U;
    }
    temp_r0_2 = I(strc248->unk1A);
    temp_r1 = temp_r0_2;
    if (temp_r1 != 0) {
        strc248->unk4 = (u8)temp_r0_2;
        gBldRegs.bldAlpha = gUnknown_080D9B88[strc248->unk4];
        strc248->unk1A -= Q(2);
        return;
    }
    strc248->unk1A = (u16)temp_r1;
    gCurTask->main = Task_248_80A51B4;
}

void Task_248_80A51B4(void)
{
    CreditsRelated248 *strc248 = TASK_DATA(gCurTask);
    s32 var_r2;
    void (*var_r0)(CreditsRelated248 *);

    UpdateBgAnimationTiles(&strc248->bgD8);
    if (*strc248->initArg0 == 16) {
        sub_80A5698(strc248);
    }
    if (strc248->unk18 != 0) {
        gDispCnt |= DISPCNT_WIN0_ON;
        if (*strc248->initArg0 == 16) {
            gWinRegs[WINREG_WIN0H] = WIN_RANGE(0, DISPLAY_WIDTH);
            gWinRegs[WINREG_WIN0V] = WIN_RANGE(0, DISPLAY_HEIGHT);
            gWinRegs[1] = 0;
            gWinRegs[3] = 0;
        } else {
            gWinRegs[0] = 0x8A5F;
            gWinRegs[2] = 0x9F;
            gWinRegs[1] = 0x5F8B;
            gWinRegs[3] = 0xD1A0;
        }
        gWinRegs[4] = 0x1E3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FBF;
        gBldRegs.bldY = 0x10;
        strc248->unk1A = 0x1000;
        strc248->unk18 = 0;
    }

    if (gBldRegs.bldY != 0) {
        if (*strc248->initArg0 == 0x10) {
            strc248->unk1A -= Q(1);
        } else {
            strc248->unk1A -= Q(2);
        }
        gBldRegs.bldY = (u16)((u16)strc248->unk1A >> 8);
        return;
    }
    strc248->unk16 = gBldRegs.bldY;
    if (*strc248->initArg0 == 16) {
        gCurTask->main = Task_248_80A7D7C;
    } else {
        sub_80A490C(strc248, 3, 0);
        *strc248->initArg0 = 14;
        gCurTask->main = Task_248_80A7D00;
    }
}

void Task_248_80A52DC(void)
{
    Sprite *sp[CSO_OTHER_CHARS_COUNT];
    CreditsRelated248 *strc248 = TASK_DATA(gCurTask);
    u8 i;
    u8 var_r7 = 0;
    s8 var_r5 = -1;
    s8 var_r8 = -1;
    s8 var_sb = -1;

    for (i = 0; i < ARRAY_COUNT(strc248->unk9); i++) {
        if (strc248->unk9[i] == 1) {
            var_r5 = i;
        }
        if (strc248->unk9[i] == 4) {
            var_r8 = i;
        }
        if (strc248->unk9[i] == 3) {
            var_sb = i;
        }
    }

    sub_80A5824(strc248);
    UpdateBgAnimationTiles(&strc248->bgD8);

    if (strc248->unk16 < 90) {
        strc248->unk16 += 1;
    }

    sp[0] = &strc248->spr1D0;
    sp[1] = &strc248->spr1F8;
    sp[2] = &strc248->spr220;

    if (strc248->unk16 == 9) {
        if (var_r5 >= 0) {
            strc248->unkC[(u8)var_r5] = 0;
            strc248->unk10[(u8)var_r5] = 0;
            sub_80A4BF8(strc248, 5, 1, 1);
        }
    } else if (strc248->unk16 == 0x3B) {
        if (var_r8 >= 0) {
            strc248->unkC[(u8)var_r8] = 0;
            strc248->unk10[(u8)var_r8] = 0;
            sub_80A4BF8(strc248, 5, 1, 4);
        }
    } else if (strc248->unk16 == 89) {
        if (var_sb >= 0) {
            strc248->unkC[(u8)var_sb] = 0;
            strc248->unk10[(u8)var_sb] = 0;
            sub_80A4BF8(strc248, 5, 1, 3);
        }
    }

    if (strc248->unk16 >= 10) {
        if ((var_r5 < 0) || (sub_80A555C(strc248, var_r5) == 1)) {
            var_r7 += 1;
        }

#ifdef BUG_FIX
        if (var_r5 >= 0 && var_r5 < sizeof(strc248->unkC) && var_r5 < sizeof(strc248->unk10))
#endif
        {
            if ((strc248->unkC[(u8)var_r5] == 3) && (strc248->unk10[(u8)var_r5] == 0)) {
                sub_80A4BF8(strc248, 6, 1, 1);
            }
            if ((strc248->unkC[(u8)var_r5] == 6) && (strc248->unk10[(u8)var_r5] == 0)) {
                sub_80A4BF8(strc248, 7, 1, 1);
            }
        }
    }
    if (strc248->unk16 >= 60) {
        if ((var_r8 < 0) || (sub_80A555C(strc248, var_r8) == 1)) {
            var_r7 += 1;
        }

#ifdef BUG_FIX
        if (var_r8 >= 0 && var_r8 < sizeof(strc248->unkC) && var_r8 < sizeof(strc248->unk10))
#endif
        {
            if ((strc248->unkC[(u8)var_r8] == 3) && (strc248->unk10[(u8)var_r8] == 0)) {
                sub_80A4BF8(strc248, 6, 1, 4);
            }
            if ((strc248->unkC[(u8)var_r8] == 6) && (strc248->unk10[(u8)var_r8] == 0)) {
                sub_80A4BF8(strc248, 7, 1, 4);
            }
        }
    }

    if (strc248->unk16 >= 90) {
        if ((var_sb < 0) || (sub_80A555C(strc248, var_sb) == 1)) {
            var_r7 += 1;
        }

#ifdef BUG_FIX
        if (var_sb >= 0 && var_sb < sizeof(strc248->unkC) && var_sb < sizeof(strc248->unk10))
#endif
        {
            if ((strc248->unkC[(u8)var_sb] == 3) && (strc248->unk10[(u8)var_sb] == 0)) {
                sub_80A4BF8(strc248, 6, 1, 3);
            }
            if ((strc248->unkC[(u8)var_sb] == 6) && (strc248->unk10[(u8)var_sb] == 0)) {
                sub_80A4BF8(strc248, 7, 1, 3);
            }
        }
    }

    if (var_r7 == 3) {
        *strc248->initArg0 = 22;
    }

    if (gBldRegs.bldY == 0x10) {
        TaskDestroy(gCurTask);
    }
}

bool32 sub_80A555C(CreditsRelated248 *strc248, u8 param1)
{
    if (++strc248->unk10[param1] > gUnknown_080D9BB2[strc248->unkC[param1]]) {
        strc248->unk10[param1] = 0;
        strc248->unkC[param1] += 1;
        if (strc248->unkC[param1] > 6) {
            strc248->unkC[param1] = 6;
        }
    }

    if (strc248->qUnk28[param1].x > -Q(40)) {
        strc248->qUnk28[param1].x -= Q(gUnknown_080D9BAA[strc248->unkC[param1]]);
        return FALSE;
    } else {
        return TRUE;
    }
}

bool32 sub_80A55DC(CreditsRelated248 *strc248)
{
    bool32 result;
    u8 i;

    result = 0;
    if (strc248->qUnk20.y <= 0) {
        strc248->qUnk20.y += Q(0.25);
        if (strc248->qUnk20.y >= 0) {
            strc248->qUnk20.y = 0;
            result = 1;
        }
    } else {
        strc248->qUnk20.y = 0;
        result = 1;
    }

    gBgScrollRegs[1][0] = I(strc248->qUnk20.x);
    gBgScrollRegs[1][1] = I(strc248->qUnk20.y) + 80;

    strc248->qUnk40.y -= 0x40;
    if (strc248->qUnk40.y <= 0) {
        strc248->qUnk40.y = 0;
    }

    for (i = 0; i < ARRAY_COUNT(strc248->qUnk28); i++) {
        strc248->qUnk28[i].y = -strc248->qUnk20.y + strc248->qUnk40.y;
    }

    return result;
}

bool32 sub_80A563C(CreditsRelated248 *strc248)
{
    bool32 result;
    u8 i;

    result = 0;
    if (strc248->qUnk20.y >= -Q(52)) {
        strc248->qUnk20.y -= Q(0.25);
        if (strc248->qUnk20.y <= -Q(52)) {
            strc248->qUnk20.y = -Q(52);
            result = 1;
        }
    } else {
        strc248->qUnk20.y = -Q(52);
        result = 1;
    }

    gBgScrollRegs[1][0] = I(strc248->qUnk20.x);
    gBgScrollRegs[1][1] = I(strc248->qUnk20.y) + 80;

    strc248->qUnk40.y += Q(0.125);

    for (i = 0; i < ARRAY_COUNT(strc248->qUnk28); i++) {
        strc248->qUnk28[i].y = -strc248->qUnk20.y + strc248->qUnk40.y;
    }

    return result;
}

bool32 sub_80A5698(CreditsRelated248 *strc248)
{
    Sprite *sp[CSO_OTHER_CHARS_COUNT];
    bool32 animRunningOrChanged;
    AnimCmdResult acmdRes;
    u8 var_r1;
    u8 var_r2;
    u8 i;
    Sprite *s;

    if (gPlayers->charFlags.character > 5) {
        var_r2 = gCharacterSelectOrderLUT[SONIC];
        var_r1 = gCharacterSelectOrderLUT[TAILS];
    } else {
        var_r2 = gCharacterSelectOrderLUT[gPlayers[PLAYER_1].charFlags.character];
        var_r1 = gCharacterSelectOrderLUT[gPlayers[PLAYER_2].charFlags.character];
    }

    sp[0] = &strc248->spr158;
    sp[1] = &strc248->spr180;
    sp[2] = &strc248->spr1A8;

    if ((var_r2 != CSO_CREAM) && (var_r1 != CSO_CREAM)) {
        s = &strc248->spr48;
        s->x = I(strc248->qUnk28[strc248->unk5].x) - I(strc248->qUnk20.x);
        s->y = I(strc248->qUnk28[strc248->unk5].y) + 120;

        if (((s->anim == gUnknown_080D9B1C[0].anim) && (s->variant == gUnknown_080D9B1C[0].variant))
            || ((s->anim == gUnknown_080D9B1C[5].anim) && (s->variant == gUnknown_080D9B1C[5].variant))) {
            s->x += 18;
            s->y -= 15;
        }
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }

    for (i = 0; i < ARRAY_COUNT(sp); i++) {
        s = sp[i];
        if ((*strc248->initArg0 < 9)
            && (((s->anim == gUnknown_080D9A1C[0].anim) && (s->variant == gUnknown_080D9A1C[0].variant))
                || ((s->anim == gUnknown_080D9ADC[0].anim) && (s->variant == gUnknown_080D9ADC[0].variant))
                || ((s->anim == gUnknown_080D99DC[0].anim) && (s->variant == gUnknown_080D99DC[0].variant)))
            && (*strc248->initArg0 > 5)) {
            s->frameFlags &= ~0x400;
        }
        s->x = I(strc248->qUnk28[i].x) - I(strc248->qUnk20.x);
        s->y = I(strc248->qUnk28[i].y) + 120;

        if (*strc248->initArg0 > 12) {
            s->oamFlags = SPRITE_OAM_ORDER(1);
        }

        acmdRes = UpdateSpriteAnimation(s);
        animRunningOrChanged = (((u32)-acmdRes | acmdRes) >> 31); // TODO: Match using Ternary Operator instead!
        DisplaySprite(s);
    }

    return animRunningOrChanged;
}

bool32 sub_80A5824(CreditsRelated248 *strc248)
{
    Sprite *sp[CSO_OTHER_CHARS_COUNT];
    Sprite *s;
    Vec2_32 *temp_r4;
    s32 *temp_r0;
    AnimCmdResult acmdRes;
    u32 temp_r6;
    u8 var_r1;
    u8 var_r2;
    u8 i;

    if (gPlayers->charFlags.character > 5) {
        var_r2 = gCharacterSelectOrderLUT[SONIC];
        var_r1 = gCharacterSelectOrderLUT[TAILS];
    } else {
        var_r2 = gCharacterSelectOrderLUT[gPlayers[PLAYER_1].charFlags.character];
        var_r1 = gCharacterSelectOrderLUT[gPlayers[PLAYER_2].charFlags.character];
    }

    sp[0] = &strc248->spr1D0;
    sp[1] = &strc248->spr1F8;
    sp[2] = &strc248->spr220;

    if ((var_r2 != 3) && (var_r1 != 3)) {
        s = &strc248->spr70;
        s->x = I(strc248->qUnk28[strc248->unk5].x) - I(strc248->qUnk20.x);
        s->y = I(strc248->qUnk28[strc248->unk5].y) + 120;

        if (((s->anim == gUnknown_080D9B1C[0].anim) && (s->variant == gUnknown_080D9B1C[0].variant))
            || ((s->anim == gUnknown_080D9B1C[5].anim) && (s->variant == gUnknown_080D9B1C[5].variant))) {
            s->x += 18;
            s->y -= 15;
        }
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }

    for (i = 0; i < 3; i++) {
        s = sp[i];
        s->x = I(strc248->qUnk28[i].x) - ((s32)strc248->qUnk20.x >> 8);
        s->y = I(strc248->qUnk28[i].y) + 120;
        if (*strc248->initArg0 > 0xC) {
            s->oamFlags = SPRITE_OAM_ORDER(1);
        }
        acmdRes = UpdateSpriteAnimation(s);
        temp_r6 = (u32)((-acmdRes) | acmdRes) >> 31; // TODO: Match using Ternary Operator instead!
        DisplaySprite(s);
    }

    return temp_r6;
}

void CreatePreCreditsCutscene(u8 param0)
{
    Task *t;
    u32 charPlayer;
    u32 charPartner;
    CreditsRelated150 *strc150;

    if (gPlayers[PLAYER_1].charFlags.character > 5) {
        charPlayer = SONIC;
        charPartner = TAILS;
    } else {
        charPlayer = gPlayers[PLAYER_1].charFlags.character;
        charPartner = gPlayers[PLAYER_2].charFlags.character;
    }

    gDispCnt = DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP | DISPCNT_MODE_0;
    if (param0 != 0) {
        param0 = 0x10;
        t = TaskCreate(Task_150_PreCreditsCutsceneTrueEndingInit, sizeof(CreditsRelated150), 0x100, 0, TaskDestructor_PreCreditsCutscene);
        gPlayers[charPlayer].charFlags.character = SONIC;
        gPlayers[charPartner].charFlags.character = TAILS;
    } else {
        t = TaskCreate(Task_150_PreCreditsCutsceneNormalInit, sizeof(CreditsRelated150), 0x100, 0, TaskDestructor_PreCreditsCutscene);
        m4aMPlayAllStop();
        m4aSongNumStart(MUS_78);
    }
    strc150 = TASK_DATA(t);
    strc150->initArg0 = param0;
    strc150->unk0 = 0;
    strc150->unk8 = 0;
    strc150->unk6 = 0;
    strc150->unk14 = 0x6400;
    strc150->unk18 = 0x7800;
    strc150->unk1C = 0x8400;
    strc150->unk20 = 0x7800;
    strc150->unk2C = 0;
    strc150->qUnk30 = 0;
    strc150->unk5 = 0;
    strc150->ewramData14C = EwramMalloc(sizeof(NotificationText));

    DmaFill32(3, 0, BG_CHAR_ADDR_FROM_BGCNT(2), 0x40);
    gBgSprites_Unknown1[2] = 0;
    gBgSprites_Unknown2[2][0] = 0;
    gBgSprites_Unknown2[2][1] = 0;
    gBgSprites_Unknown2[2][2] = 0xFF;
    gBgSprites_Unknown2[2][3] = 0x40;

    DmaFill32(3, 0, BG_CHAR_ADDR_FROM_BGCNT(1), 0x40);
    gBgSprites_Unknown1[1] = 0x12;
    gBgSprites_Unknown2[1][0] = 0;
    gBgSprites_Unknown2[1][1] = 0;
    gBgSprites_Unknown2[1][2] = -1;
    gBgSprites_Unknown2[1][3] = 0x40;
    gBgSprites_Unknown1[0] = 0;
    gBgSprites_Unknown2[0][0] = 0;
    gBgSprites_Unknown2[0][1] = 0;
    gBgSprites_Unknown2[0][2] = -1;
    gBgSprites_Unknown2[0][3] = 0x40;
    strc150->vramC = OBJ_VRAM0;
}

void sub_80A5B08(CreditsRelated150 *strc150)
{
    s32 sp0;
    s32 temp_r0;
    s32 temp_r1;
    s32 temp_r1_3;
    u16 var_r5_2;
    u32 temp_r2;
    u8 *temp_r0_2;
    u8 var_r5;
    u8 var_r6;
    void **temp_r1_2;
    void **temp_r1_4;

    if (gPlayers->charFlags.character > 5) {
        var_r6 = gCharacterSelectOrderLUT[SONIC];
        var_r5 = gCharacterSelectOrderLUT[TAILS];
    } else {
        var_r6 = gCharacterSelectOrderLUT[gPlayers[PLAYER_1].charFlags.character];
        var_r5 = gCharacterSelectOrderLUT[gPlayers[PLAYER_2].charFlags.character];
    }

    {
        Sprite *s = &strc150->sprD4;
        s->tiles = strc150->vramC;
        sp0 = gUnknown_080D9E68[var_r6] * TILE_SIZE_4BPP;
        strc150->vramC += sp0;
        s->anim = gUnknown_080D9E40[var_r6]->anim;
        s->variant = gUnknown_080D9E40[var_r6]->variant;
        s->prevVariant = -1;
        s->x = (s16)((s32)strc150->unk14 >> 8);
        s->y = (s16)((s32)strc150->unk18 >> 8);
        s->oamFlags = 0x40;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = var_r6;
        if (var_r6 == AMY) {
            s->palId = 5;
        }
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }

    {
        Sprite *s = &strc150->spr124;
        s->tiles = strc150->vramC;
        strc150->vramC += gUnknown_080D9E68[var_r5] << 5;
        s->anim = gUnknown_080D9E40[var_r5]->anim;
        s->variant = gUnknown_080D9E40[var_r5]->variant;
        s->prevVariant = -1;
        s->x = (s16)((s32)strc150->unk1C >> 8);
        s->y = (s16)((s32)strc150->unk20 >> 8);
        s->oamFlags = 0x80;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = var_r5;
        if (var_r5 == 4) {
            s->palId = 5;
        }
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }
    strc150->sprAC.tiles = strc150->vramC;
    strc150->vramC += sp0;
    strc150->sprFC.tiles = strc150->vramC;
    strc150->vramC += gUnknown_080D9E68[var_r5] << 5;

    if ((var_r6 == 3) || (var_r5 == 3)) {
        for (var_r5_2 = 0; var_r5_2 < 2; var_r5_2++) {
            Sprite *var_r1 = &strc150->spr5C;
            if (var_r5_2 != 0) {
                var_r1 = &strc150->spr84;
            }
            var_r1->tiles = strc150->vramC;
            strc150->vramC += 0x120;
            var_r1->anim = gUnknown_080D9E40[5]->anim;
            var_r1->variant = gUnknown_080D9E40[5]->variant;
            var_r1->prevVariant = -1;
            var_r1->oamFlags = 0x280;
            var_r1->animCursor = 0;
            var_r1->qAnimDelay = 0;
            var_r1->animSpeed = 0x10;
            var_r1->palId = 0;
            var_r1->frameFlags = 0;
            UpdateSpriteAnimation(var_r1);
        }
    }
}

void sub_80A5CB0(CreditsRelated150 *strc150, u8 param1, u8 param2)
{
    Sprite *sp[0];
    u8 var_r8;
    u8 var_r6;

    if (gPlayers->charFlags.character > 5) {
        var_r8 = gCharacterSelectOrderLUT[SONIC];
        var_r6 = gCharacterSelectOrderLUT[TAILS];
    } else {
        var_r8 = gCharacterSelectOrderLUT[gPlayers[PLAYER_1].charFlags.character];
        var_r6 = gCharacterSelectOrderLUT[gPlayers[PLAYER_2].charFlags.character];
    }

    {
        Sprite *s = &strc150->sprD4;
        if (param2 != 0) {
            s = &strc150->sprAC;
        }
        s->anim = gUnknown_080D9E40[var_r8][param1].anim;
        s->variant = gUnknown_080D9E40[var_r8][param1].variant;
        s->prevVariant = -1;
        s->oamFlags = 0x40;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        if ((u32)strc150->initArg0 <= 8) {
            s->palId = var_r8;
        } else {
            s->palId = 0;
        }

        s->frameFlags = 0;
        if (param1 <= 5) {
            if ((var_r8 == 2 || var_r8 == 3) && ((u32)strc150->initArg0 > 7)) {
                s->frameFlags = 0x400;
            } else {
                s->frameFlags &= ~0x400;
            }
        } else {
            s->frameFlags = 0;
        }
        UpdateSpriteAnimation(s);
    }
    {
        Sprite *s;

        if (param2 != 0) {
            s = &strc150->sprFC;
        } else {
            s = &strc150->spr124;
        }
        s->anim = gUnknown_080D9E40[var_r6][param1].anim;
        s->variant = gUnknown_080D9E40[var_r6][param1].variant;
        s->prevVariant = -1;
        s->oamFlags = 0x80;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        if ((u32)strc150->initArg0 <= 8) {
            s->palId = var_r6;
        } else {
            s->palId = 0;
        }
        s->frameFlags = 0;
        if ((u32)param1 <= 5) {
            if ((var_r6 == 2 || var_r6 == 3) && (strc150->initArg0 > 7)) {
                s->frameFlags = 0x400;
            } else {
                s->frameFlags &= ~0x400;
            }
        } else if ((var_r6 == 3) && (param1 == 7)) {
            s->frameFlags = 0x400;
        } else {
            s->frameFlags &= ~0x400;
        }
        UpdateSpriteAnimation(s);
    }

    if ((var_r8 == 3) || (var_r6 == 3)) {
        Sprite *s = &strc150->spr5C;

        if (param2 != 0) {
            s = &strc150->spr84;
        }
        s->anim = gUnknown_080D9E40[5][param1].anim;
        s->variant = gUnknown_080D9E40[5][param1].variant;
        s->prevVariant = -1;
        s->oamFlags = 0x280;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;

        s->frameFlags = 0;
        if (param1 < 4) {
            if (strc150->initArg0 > 7) {
                s->frameFlags = 0x400;
            } else {
                s->frameFlags = 0;
            }
        } else {
            s->frameFlags = 0;
        }
        UpdateSpriteAnimation(s);
    }
}

void sub_80A5E8C(CreditsRelated150 *strc150, u8 param1, u8 param2)
{
    Sprite *var_r4 = &strc150->sprD4;
    s32 temp_r1;

    if (param2) {
        var_r4 = &strc150->sprAC;
    }
    var_r4->tiles = strc150->vramC;
    strc150->vramC += (gUnknown_080D9E68[2] << 5);
    var_r4->anim = gUnknown_080D9E40[2][param1].anim;
    var_r4->variant = gUnknown_080D9E40[2][param1].variant;
    var_r4->prevVariant = -1;
    var_r4->oamFlags = 0;
    var_r4->animCursor = 0;
    var_r4->qAnimDelay = 0;
    var_r4->animSpeed = 0x10;
    var_r4->palId = 2;
    var_r4->frameFlags = 0;
    UpdateSpriteAnimation(var_r4);
}

void sub_80A5EF0(CreditsRelated150 *strc150, u8 param1, u8 param2)
{
    Sprite *var_r2;
    Sprite *var_r4;
    Sprite *var_r4_2;
    s32 *temp_r1_2;
    s32 *temp_r1_3;
    s32 temp_r3;
    u8 var_r0;
    u8 var_r5;
    u8 var_r7;

    if (gPlayers->charFlags.character > 5) {
        var_r5 = gCharacterSelectOrderLUT[SONIC];
        var_r7 = gCharacterSelectOrderLUT[TAILS];
    } else {
        var_r5 = gCharacterSelectOrderLUT[gPlayers[PLAYER_1].charFlags.character];
        var_r7 = gCharacterSelectOrderLUT[gPlayers[PLAYER_2].charFlags.character];
    }
    var_r4 = &strc150->sprD4;
    if (param2 != 0) {
        var_r4 = &strc150->sprAC;
    }
    var_r4->anim = gUnknown_080D9E40[var_r5][param1].anim;
    var_r4->variant = gUnknown_080D9E40[var_r5][param1].variant;
    var_r4->prevVariant = -1;
    var_r4->oamFlags = 0;
    var_r4->animCursor = 0;
    var_r4->qAnimDelay = 0;

    if ((var_r5 == 0) && (param1 == 0xA)) {
        var_r4->animSpeed = SPRITE_ANIM_SPEED(2.0);
    } else {
        var_r4->animSpeed = SPRITE_ANIM_SPEED(1.0);
    }
    var_r4->palId = var_r5;
    if (var_r5 == 4) {
        var_r4->palId = 5;
    }
    var_r4->frameFlags = 0;
    if (var_r5 == 0) {
        if (strc150->initArg0 > 0x12) {
            var_r4->frameFlags = 0;
        } else {
            var_r4->frameFlags = 0x400;
        }
    } else if (var_r5 == 1) {
        if ((u32)strc150->initArg0 <= 0x13) {
            var_r4->frameFlags = 0x400;
        } else {
            var_r4->frameFlags = 0;
        }
    } else {
        var_r4->frameFlags = 0;
    }
    UpdateSpriteAnimation(var_r4);

    if (((u32)strc150->initArg0 > 0x14) || (param1 != 0xA)) {
        if (param2 != 0) {
            var_r2 = &strc150->sprFC;
        } else {
            var_r2 = &strc150->spr124;
        }
        var_r2->anim = gUnknown_080D9E40[var_r7][param1].anim;
        var_r2->variant = gUnknown_080D9E40[var_r7][param1].variant;
        var_r2->prevVariant = -1;
        var_r2->oamFlags = 0x40;
        var_r2->animCursor = 0;
        var_r2->qAnimDelay = 0;
        var_r2->animSpeed = 0x10;
        var_r2->palId = var_r7;
        if (var_r7 == 4) {
            var_r2->palId = 5;
        }
        var_r2->frameFlags = 0;
        if (strc150->initArg0 < 20) {
            if (var_r7 == 0 || var_r7 == 1) {
                var_r2->frameFlags = 0x400;
            } else {
                var_r2->frameFlags = 0;
            }
        } else {
            var_r2->frameFlags = 0;
        }
        UpdateSpriteAnimation(var_r2);

        if ((var_r5 == 3) || (var_r7 == 3)) {
            var_r4_2 = &strc150->spr5C;
            if (param2 != 0) {
                var_r4_2 = &strc150->spr84;
            }
            var_r4_2->anim = gUnknown_080D9E40[5][param1].anim;
            var_r4_2->variant = gUnknown_080D9E40[5][param1].variant;
            var_r4_2->prevVariant = -1;
            var_r4_2->oamFlags = 0x280;
            var_r4_2->animCursor = 0;
            var_r4_2->qAnimDelay = 0;
            var_r4_2->animSpeed = 0x10;
            var_r4_2->palId = 0;
            var_r4_2->frameFlags = 0;
            UpdateSpriteAnimation(var_r4_2);
        }
    }
}

void Task_150_80A6090(void)
{
    CreditsRelated150 *strc150 = TASK_DATA(gCurTask);

    sub_80A6A5C(strc150);
    gDispCnt |= DISPCNT_WIN0_ON;
    gWinRegs[WINREG_WIN0H] = WIN_RANGE(0, DISPLAY_WIDTH);
    gWinRegs[WINREG_WIN0V] = WIN_RANGE(0, DISPLAY_HEIGHT);
    gWinRegs[WINREG_WININ] = 0x3F;
    gWinRegs[WINREG_WINOUT] = 0x1F;
    gBldRegs.bldCnt = 0x3FFF;
    gBldRegs.bldY = 0;
    gCurTask->main = Task_150_80A60F0;
}

void Task_150_80A60F0(void)
{
    u16 temp_r0;
    u8 temp_r4;
    void (*var_r0)(CreditsRelated150 *);
    CreditsRelated150 *strc150 = TASK_DATA(gCurTask);

#ifndef NON_MATCHING
    u8 playerChar = gPlayers[PLAYER_1].charFlags.character;
    asm("" ::"r"(playerChar));
#endif

    sub_80A6A5C(strc150);
    if (strc150->initArg0 == 6) {
        strc150->unk14 += Q(1);
        strc150->unk1C += Q(1);
    }

    if (++strc150->unk8 >= gUnknown_080D9E58[strc150->unk5]) {
        strc150->unk8 = 0U;
        strc150->unk5 = strc150->initArg0 + 1;
        strc150->initArg0 = gUnknown_080DA054[strc150->unk5];
        temp_r4 = gUnknown_080D9BC0[strc150->unk5];
        sub_80A5CB0(strc150, temp_r4, 0);
        if (temp_r4 == 3) {
            gCurTask->main = Task_150_80A619C;
        } else if (strc150->initArg0 == 7) {
            gCurTask->main = Task_150_80A6208;
        }
    }
}

void Task_150_80A619C(void)
{
    CreditsRelated150 *strc150 = TASK_DATA(gCurTask);

#ifndef NON_MATCHING
    u8 playerChar = gPlayers[PLAYER_1].charFlags.character;
    asm("" ::"r"(playerChar));
#endif

    sub_80A6A5C(strc150);
    if (strc150->initArg0 == 4) {
        strc150->vramC = sub_80A45B4(&strc150->initArg0, strc150->vramC);
        strc150->initArg0 = 5;
    }
    if (strc150->initArg0 == 6) {
        strc150->unk8 = 0;
        strc150->unk5 += 1;
        sub_80A5CB0(strc150, 2, 0);
        gCurTask->main = Task_150_80A60F0;
    }
}

void Task_150_80A6208(void)
{
    CreditsRelated150 *strc150 = TASK_DATA(gCurTask);
    u8 var_r6;
    u8 var_r7;
#ifndef NON_MATCHING
    register Sprite *s asm("r2");
#else
    Sprite *s;
#endif
    u8 var_r8 = 0;

    if (gPlayers->charFlags.character > 5) {
        var_r6 = gCharacterSelectOrderLUT[SONIC];
        var_r7 = gCharacterSelectOrderLUT[TAILS];
    } else {
        var_r6 = gCharacterSelectOrderLUT[gPlayers[PLAYER_1].charFlags.character];
        var_r7 = gCharacterSelectOrderLUT[gPlayers[PLAYER_2].charFlags.character];
    }
    strc150->unk8++;

    if (sub_80A6370(strc150) == 1) {
        s32 index;
        s = &strc150->sprD4;
        index = gUnknown_080D9BC0[0];
        if (s->anim != gUnknown_080D9E40[var_r6][index].anim) {
            s->anim = gUnknown_080D9E40[var_r6][index].anim;
            s->variant = gUnknown_080D9E40[var_r6][index].variant;
            s->prevVariant = -1;
            if (var_r6 == 2 || var_r6 == 3) {
                s->frameFlags |= 0x400;
            } else {
                s->frameFlags &= ~0x400;
            }
        }
        var_r8++;
    }
    if (sub_80A63FC(strc150) == 1) {
        s32 index;
        s = &strc150->spr124;
        index = gUnknown_080D9BC0[0];
        if (s->anim != gUnknown_080D9E40[var_r7][index].anim) {
            s->anim = gUnknown_080D9E40[var_r7][index].anim;
            s->variant = gUnknown_080D9E40[var_r7][index].variant;
            s->prevVariant = -1;
            if (var_r7 == 2 || var_r7 == 3) {
                s->frameFlags |= 0x400;
            } else {
                s->frameFlags &= ~0x400;
            }
        }
        var_r8++;
    }

    if (var_r8 == 2) {
        sub_80A5CB0(strc150, 0, 0);
        strc150->unk5 += 1;
        gCurTask->main = Task_150_80A7F58;
        return;
    }
    sub_80A6A5C(strc150);
}

bool32 sub_80A6370(CreditsRelated150 *strc150)
{
    s32 r0;
    s32 temp_r2_2;
    const u8 *var_r0;
    Sprite *s = &strc150->sprD4;
    Player *player = &gPlayers[PLAYER_1];
    u8 playerChar = player->charFlags.character;
    u8 order;

    if (player->charFlags.character > 5) {
        order = gCharacterSelectOrderLUT[SONIC];
    } else {
        order = gCharacterSelectOrderLUT[player->charFlags.character];
    }
    r0 = gUnknown_080D9B79[order];

    if (strc150->unk14 < Q(r0)) {
        s->frameFlags |= 0x400;
        strc150->unk14 += Q(2);
        if (strc150->unk14 < Q(r0)) {
            return 0U;
        } else {
            strc150->unk14 = Q(r0);
            return 1U;
        }
    } else {
        if (strc150->unk14 <= Q(r0)) {
            strc150->unk14 = Q(r0);
            return 1U;
        }
        s->frameFlags &= ~0x400;
        strc150->unk14 -= Q(2);
        if (strc150->unk14 > Q(r0)) {
            return 0U;
        } else {
            strc150->unk14 = Q(r0);
            return 1U;
        }
    }
}

bool32 sub_80A63FC(CreditsRelated150 *strc150)
{
    s32 r0;
    s32 temp_r2_2;
    const u8 *var_r0;
    Sprite *s = &strc150->spr124;
    u8 order = gCharacterSelectOrderLUT[gPlayers[PLAYER_2].charFlags.character];
    r0 = gUnknown_080D9B79[order];

    if (strc150->unk1C < Q(r0)) {
        s->frameFlags |= 0x400;
        strc150->unk1C += Q(1);
        if (strc150->unk1C < Q(r0)) {
            return 0U;
        } else {
            strc150->unk1C = Q(r0);
            return 1U;
        }
    } else {
        if (strc150->unk1C <= Q(r0)) {
            strc150->unk1C = Q(r0);
            return 1U;
        }
        s->frameFlags &= ~0x400;
        strc150->unk1C -= Q(1);
        if (strc150->unk1C > Q(r0)) {
            return 0U;
        } else {
            strc150->unk1C = Q(r0);
            return 1U;
        }
    }
}

void Task_150_PreCreditsCutsceneTrueEndingInit(void)
{
    CreditsRelated150 *strc150 = TASK_DATA(gCurTask);
    u32 temp_r2;
    u8 *temp_r1;
    u8 var_r6 = 0;
    u8 var_r3 = 0;

    if (strc150->unk6 == 0) {
        if (gPlayers->charFlags.character > 5) {
            var_r6 = gCharacterSelectOrderLUT[SONIC];
            var_r3 = gCharacterSelectOrderLUT[TAILS];
        } else {
            var_r6 = gCharacterSelectOrderLUT[gPlayers[PLAYER_1].charFlags.character];
            var_r3 = gCharacterSelectOrderLUT[gPlayers[PLAYER_2].charFlags.character];
        }
        strc150->unk14 = gUnknown_080D9B7E[var_r6] << 8;
        strc150->unk18 = 0x7900;
        strc150->unk1C = gUnknown_080D9B7E[var_r3] << 8;
        strc150->unk20 = 0x7900;
        sub_80A5B08(strc150);
        {
            Sprite *s = &strc150->spr34;
            s->tiles = strc150->vramC;
            strc150->vramC += 0x280;
            s->anim = 0x533;
            s->variant = 0;
            s->prevVariant = -1;
            s->x = (s16)((s32)strc150->unk14 >> 8);
            s->y = ((s32)strc150->unk18 >> 8) + 0xA;
            s->oamFlags = 0;
            s->animCursor = 0;
            s->qAnimDelay = 0;
            s->animSpeed = 0x10;
            s->palId = 0;
            s->frameFlags = 0;
            UpdateSpriteAnimation(s);
        }
        strc150->vramC = sub_80A828C(&strc150->initArg0, strc150->vramC, &strc150->unk14);
    } else if (strc150->unk6 == 1) {
        sub_80A5EF0(strc150, 0, 1);
        strc150->vramC = sub_80A45B4(&strc150->initArg0, strc150->vramC);
    } else if (strc150->unk6 == 2) {
        strc150->vramC = sub_80A9BD8(strc150->vramC, -0x14, -0x5A, 0, &strc150->initArg0);
        strc150->unk8 = var_r6;
        strc150->unk6 = 0;
        gCurTask->main = Task_150_80A65C8;
        return;
    }
    strc150->unk6 += 1;
}

void Task_150_80A65C8(void)
{
    CreditsRelated150 *strc150 = TASK_DATA(gCurTask);

    sub_80A6DD0(strc150);

    if (++strc150->unk8 > gUnknown_080D9E80[strc150->unk6]) {
        strc150->unk6 += 1;
        strc150->vramC = sub_80A9BD8(strc150->vramC, gUnknown_080D9E90[strc150->unk6].x, gUnknown_080D9E90[strc150->unk6].y, strc150->unk6,
                                     &strc150->initArg0);
        if (strc150->unk6 > 0xC) {
            gCurTask->main = Task_150_80A6768;
        }
    }
}

void Task_150_80A664C(void)
{
    CreditsRelated150 *strc150 = TASK_DATA(gCurTask);

    strc150->unk20 = strc150->unk18;
    sub_80A6A5C(strc150);
    if (strc150->initArg0 == 0xE) {
        s32 value;
        strc150->qUnk30 -= Q(0.25);
        if (strc150->qUnk30 <= 0) {
            strc150->qUnk30 = 0;
        }
        value = strc150->qUnk30;
        value += Q(120) - Q(gBgScrollRegs[1][1] - DISPLAY_CENTER_Y);
        strc150->unk18 = value;
    }
    strc150->unk20 = strc150->unk18;
    if (++strc150->unk8 > gUnknown_080D9E80[strc150->unk6]) {
        strc150->unk6 += 1;

        strc150->vramC = sub_80A9BD8(strc150->vramC, gUnknown_080D9E90[strc150->unk6].x, gUnknown_080D9E90[strc150->unk6].y, strc150->unk6,
                                     &strc150->initArg0);
        if (strc150->unk6 > 13) {
            sub_80A5CB0(strc150, 6, 1);
            gCurTask->main = Task_150_80A808C;
        }
    }
}

void Task_150_80A6700(void)
{
    CreditsRelated150 *strc150 = TASK_DATA(gCurTask);

    sub_80A6BDC(strc150);

    if (strc150->unk8 < 0x1E0) {
        strc150->unk8 += 1;
    }

    if (strc150->unk8 == 0x1E0) {
        strc150->unk8 += 1;
        strc150->vramC = sub_80A9E24(&strc150->initArg0, strc150->vramC);
    }

    if (strc150->initArg0 == 0x12) {
        sub_80A5CB0(strc150, 7, 0);
        gCurTask->main = Task_150_80A805C;
    }
}

void Task_150_80A6768(void)
{
    CreditsRelated150 *strc150 = TASK_DATA(gCurTask);
    u16 sp4[3] = { 0 };
    Sprite *temp_r4;
    u16 temp_r1;
    u16 temp_r1_2;
    u32 temp_r2;
    u8 var_r6;
    u8 var_r7;

    if (gPlayers->charFlags.character > 5) {
        var_r7 = gCharacterSelectOrderLUT[SONIC];
        var_r6 = gCharacterSelectOrderLUT[TAILS];
    } else {
        var_r7 = gCharacterSelectOrderLUT[gPlayers[PLAYER_1].charFlags.character];
        var_r6 = gCharacterSelectOrderLUT[gPlayers[PLAYER_2].charFlags.character];
    }
    sp4[0] = 0x1E0;
    sp4[1] = 0x258;
    sp4[2] = 0x30CU;

    sub_80A6DD0(strc150);

    if (strc150->unk8 >= (u32)sp4[0]) {
        temp_r4 = &strc150->spr34;
        temp_r4->x = I(strc150->unk14);
        temp_r4->y = I(strc150->unk18) + 8;
        UpdateSpriteAnimation(temp_r4);
        DisplaySprite(temp_r4);
    }

    if (strc150->unk8 <= (u32)sp4[2]) {
        strc150->unk8 += 1;
    }

    if (strc150->unk8 == sp4[0]) {
        strc150->unk8 += 1;
        strc150->initArg0 = 0x13;
        sub_80A5EF0(strc150, 8, 1);
        strc150->vramC = sub_80AA06C(&strc150->initArg0, strc150->vramC);
        if (var_r7 == 0) {
            strc150->unk18 += Q(6);
        } else if (var_r6 == 0) {
            strc150->unk20 += Q(6);
        }
    }
    if (strc150->unk8 == sp4[1]) {
        sub_80AD7B4(strc150->ewramData14C, 0x2B, 100, 40, strc150->vramC);
        strc150->qUnk24.x = Q(100);
        strc150->qUnk24.y = Q(40);
    }
    if (strc150->unk8 > (u32)sp4[1]) {
        strc150->unk0 = sub_8023734(strc150->ewramData14C);
        sub_80239A8(strc150->ewramData14C);
    }
    if (strc150->unk0 == 1) {
        sub_80239A8(strc150->ewramData14C);

        if (strc150->unk8 >= sp4[2]) {
            if (var_r7 == 0) {
                strc150->unk18 -= Q(8);
            } else if (var_r6 == 0) {
                strc150->unk20 -= Q(8);
            }
            strc150->initArg0 = 0x14;
            sub_80A825C(strc150);
            sub_80A5EF0(strc150, 0xA, 1);
            gCurTask->main = Task_150_80A80EC;
        }
    }
}

void Task_150_80A690C(void)
{
    CreditsRelated150 *strc150 = TASK_DATA(gCurTask);
    s32 var_r5 = 0;

    if (strc150->unk6 < 6) {
        if (++strc150->unk8 > gUnknown_080D9BB2[strc150->unk6]) {
            strc150->unk8 = 0;

            if (++strc150->unk6 > 6) {
                strc150->unk6 = 6;
            }
        }
    }
    if ((strc150->unk6 == 3) && (strc150->unk8 == 0)) {
        sub_80A5EF0(strc150, 0xB, 1);
    }
    if ((strc150->unk6 == 6) && (strc150->unk8 == 0)) {
        sub_80A5EF0(strc150, 0xC, 1);
    }

    if (strc150->unk1C > -Q(40)) {
        strc150->unk1C -= Q(gUnknown_080D9BAA[strc150->unk6]);
    } else {
        var_r5 = 1;
    }
    sub_80A6DD0(strc150);
    if ((strc150->initArg0 == 0x16) && (var_r5 != 0)) {
        strc150->unk14 = 0x8200;
        strc150->unk18 = -0x1E00;
        strc150->unk8 = 0;
        sub_80A5E8C(strc150, 0xD, 0);
        gCurTask->main = Task_150_80A814C;
    }
}

void Task_150_80A69E4(void)
{
    CreditsRelated150 *strc150 = TASK_DATA(gCurTask);
    u16 temp_r0;

    sub_80A8234(strc150);

    if (++strc150->unk8 == 0xB4) {
        gDispCnt |= DISPCNT_WIN0_ON;
        gWinRegs[WINREG_WIN0H] = WIN_RANGE(0, DISPLAY_WIDTH);
        gWinRegs[WINREG_WIN0V] = WIN_RANGE(0, DISPLAY_HEIGHT);
        gWinRegs[WINREG_WININ] = 0x3FFF;
        gWinRegs[WINREG_WINOUT] |= 0x1F;
        gBldRegs.bldCnt = 0x3FFF;
        gBldRegs.bldY = 0;
        strc150->unk10 = 0;
        strc150->unk8 = 0;
        gCurTask->main = Task_150_80A8198;
    }
}

u32 sub_80A6A5C(CreditsRelated150 *strc150)
{
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r2_2;
    u32 temp_r2;
    u8 temp_r0;
    u8 var_r2;
    u8 var_r6;
    u8 var_r7 = 0;

    if (gPlayers->charFlags.character > 5) {
        var_r2 = gCharacterSelectOrderLUT[SONIC];
        var_r6 = gCharacterSelectOrderLUT[TAILS];
    } else {
        var_r2 = gCharacterSelectOrderLUT[gPlayers[PLAYER_1].charFlags.character];
        var_r6 = gCharacterSelectOrderLUT[gPlayers[PLAYER_2].charFlags.character];
    }
    if (var_r2 == 3) {
        Sprite *s = &strc150->spr5C;
        s->x = I(strc150->unk14);
        s->y = I(strc150->unk18);

        if (strc150->initArg0 < 9) {
            s->x += 18;
            s->y -= 15;
        }
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
    if (var_r6 == 3) {
        Sprite *s = &strc150->spr5C;
        s->x = I(strc150->unk1C);
        s->y = I(strc150->unk20);

        if (strc150->initArg0 < 9) {
            s->x += 18;
            s->y -= 15;
        }
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
    {
        Sprite *s = &strc150->sprD4;
        if ((strc150->initArg0 < 9)
            && ((((s->anim == gUnknown_080D9D08[0].anim) && (s->variant == gUnknown_080D9D08[0].variant))
                 || ((s->anim == gUnknown_080D9C90[0].anim) && (s->variant == gUnknown_080D9C90[0].variant)))
                && (strc150->initArg0 > 5))) {
            s->frameFlags |= 0x400;
        }
        s->x = I(strc150->unk14);
        s->y = I(strc150->unk18);
        if (UpdateSpriteAnimation(s) == ACMD_RESULT__ENDED) {
            var_r7 += 1;
        }
        DisplaySprite(s);
    }

    {
        Sprite *s = &strc150->spr124;
        if ((strc150->initArg0 <= 8)
            && (((s->anim == gUnknown_080D9D08[0].anim) && (s->variant == gUnknown_080D9D08[0].variant))
                || ((s->anim == gUnknown_080D9C90[0].anim) && (s->variant == gUnknown_080D9C90[0].variant)))
            && ((u32)strc150->initArg0 > 5)) {
            s->frameFlags |= 0x400;
        }
        s->x = I(strc150->unk1C);
        s->y = I(strc150->unk20);

        if (UpdateSpriteAnimation(s) == ACMD_RESULT__ENDED) {
            var_r7 += 1;
        }
        DisplaySprite(s);
    }

    if (var_r7 == 2) {
        return 0;
    } else {
        return 1;
    }
}

bool32 sub_80A6BDC(CreditsRelated150 *strc150)
{
    u8 var_r2;
    u8 var_r6;
    u8 var_r7 = 0;

    if (gPlayers->charFlags.character > 5) {
        var_r2 = gCharacterSelectOrderLUT[SONIC];
        var_r6 = gCharacterSelectOrderLUT[TAILS];
    } else {
        var_r2 = gCharacterSelectOrderLUT[gPlayers[PLAYER_1].charFlags.character];
        var_r6 = gCharacterSelectOrderLUT[gPlayers[PLAYER_2].charFlags.character];
    }

    if (var_r2 == 3) {
        Sprite *s = &strc150->spr84;
        s->x = I(strc150->unk14);
        s->y = I(strc150->unk18);

        if (strc150->initArg0 <= 8) {
            s->x += 18;
            s->y -= 15;
        }

        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }

    if (var_r6 == 3) {
        Sprite *s = &strc150->spr84;
        s->x = I(strc150->unk1C);
        s->y = I(strc150->unk20);

        if (strc150->initArg0 < 9) {
            s->x += 18;
            s->y -= 15;
        }
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }

    {
        Sprite *s = &strc150->sprAC;
        s->x = I(strc150->unk14);
        s->y = I(strc150->unk18);
        if (UpdateSpriteAnimation(s) == ACMD_RESULT__ENDED) {
            var_r7 += 1;
        }
        DisplaySprite(s);
    }
    {
        Sprite *s = &strc150->sprFC;
        s->x = I(strc150->unk1C);
        s->y = I(strc150->unk20);

        if (UpdateSpriteAnimation(s) == ACMD_RESULT__ENDED) {
            var_r7 += 1;
        }
        DisplaySprite(s);
    }

    if (var_r7 == 2) {
        return 0U;
    } else {

        return 1U;
    }
}

bool32 sub_80A6CE0(CreditsRelated150 *strc150)
{
    u8 var_r2;
    u8 var_r6;
    u8 var_r7 = 0;

    if (gPlayers->charFlags.character > 5) {
        var_r2 = gCharacterSelectOrderLUT[SONIC];
        var_r6 = gCharacterSelectOrderLUT[TAILS];
    } else {
        var_r2 = gCharacterSelectOrderLUT[gPlayers[PLAYER_1].charFlags.character];
        var_r6 = gCharacterSelectOrderLUT[gPlayers[PLAYER_2].charFlags.character];
    }

    if (var_r2 == 3) {
        Sprite *temp_r4 = &strc150->spr5C;
        temp_r4->x = I(strc150->unk14);
        temp_r4->y = I(strc150->unk18);
        temp_r4->x += 18;
        temp_r4->y -= 15;
        UpdateSpriteAnimation(temp_r4);
        DisplaySprite(temp_r4);
    }
    if (var_r6 == 3) {
        Sprite *temp_r4_2 = &strc150->spr5C;
        temp_r4_2->x = I(strc150->unk1C);
        temp_r4_2->y = I(strc150->unk20);
        temp_r4_2->x += 18;
        temp_r4_2->y -= 15;
        UpdateSpriteAnimation(temp_r4_2);
        DisplaySprite(temp_r4_2);
    }
    {
        Sprite *temp_r4_3 = &strc150->sprD4;
        temp_r4_3->x = I(strc150->unk14);
        temp_r4_3->y = I(strc150->unk18);
        if (UpdateSpriteAnimation(temp_r4_3) == ACMD_RESULT__ENDED) {
            var_r7 += 1;
        }
        DisplaySprite(temp_r4_3);
    }
    {
        Sprite *temp_r4_4 = &strc150->spr124;
        temp_r4_4->x = I(strc150->unk1C);
        temp_r4_4->y = I(strc150->unk20);
        if (UpdateSpriteAnimation(temp_r4_4) == ACMD_RESULT__ENDED) {
            var_r7 += 1;
        }
        DisplaySprite(temp_r4_4);
    }

    if (var_r7 == 2) {
        return 0U;
    } else {

        return 1U;
    }
}

bool32 sub_80A6DD0(CreditsRelated150 *strc150)
{
    u8 var_r2;
    u8 var_r6;
    u8 var_r7 = 0;

    if (gPlayers->charFlags.character > 5) {
        var_r2 = gCharacterSelectOrderLUT[SONIC];
        var_r6 = gCharacterSelectOrderLUT[TAILS];
    } else {
        var_r2 = gCharacterSelectOrderLUT[gPlayers[PLAYER_1].charFlags.character];
        var_r6 = gCharacterSelectOrderLUT[gPlayers[PLAYER_2].charFlags.character];
    }

    if (var_r2 == 3) {
        Sprite *temp_r4 = &strc150->spr84;
        temp_r4->x = I(strc150->unk14);
        temp_r4->y = I(strc150->unk18);
        temp_r4->x += 18;
        temp_r4->y -= 15;
        UpdateSpriteAnimation(temp_r4);
        DisplaySprite(temp_r4);
    }
    if (var_r6 == 3) {
        Sprite *temp_r4_2 = &strc150->spr84;
        temp_r4_2->x = I(strc150->unk1C);
        temp_r4_2->y = I(strc150->unk20);
        temp_r4_2->x += 18;
        temp_r4_2->y -= 15;
        UpdateSpriteAnimation(temp_r4_2);
        DisplaySprite(temp_r4_2);
    }
    {
        Sprite *temp_r4_3 = &strc150->sprAC;
        temp_r4_3->x = I(strc150->unk14);
        temp_r4_3->y = I(strc150->unk18);
        if (UpdateSpriteAnimation(temp_r4_3) == ACMD_RESULT__ENDED) {
            var_r7 += 1;
        }
        DisplaySprite(temp_r4_3);
    }
    {
        Sprite *temp_r4_4 = &strc150->sprFC;
        temp_r4_4->x = I(strc150->unk1C);
        temp_r4_4->y = I(strc150->unk20);
        if (UpdateSpriteAnimation(temp_r4_4) == ACMD_RESULT__ENDED) {
            var_r7 += 1;
        }
        DisplaySprite(temp_r4_4);
    }

    if (var_r7 == 2) {
        return 0U;
    } else {

        return 1U;
    }
}

void sub_80A6EBC(CreditsRelated12C *strc12C)
{
    gDispCnt |= DISPCNT_BG0_ON; // NOTE: DISPCNT_MODE_0;

    gBgCntRegs[0] = BGCNT_SCREENBASE(13) | BGCNT_CHARBASE(1) | BGCNT_TXT256x512 | BGCNT_16COLOR | BGCNT_PRIORITY(3);
    gBgScrollRegs[0][0] = 8;
    gBgScrollRegs[0][1] = 48;

    {
        Background *bg = &strc12C->bgEC;
        bg->graphics.dest = BG_CHAR_ADDR(1);
        bg->graphics.anim = 0;
        bg->layoutVram = BG_SCREEN_ADDR(13);
        bg->unk18 = 0;
        bg->unk1A = 0;
        bg->tilemapId = TM_ALTAR_EMERALD_BG_COPY;
        bg->unk1E = 0;
        bg->unk20 = 0;
        bg->unk22 = 0;
        bg->unk24 = 0;
        bg->targetTilesX = 256 / TILE_WIDTH;
        bg->targetTilesY = 512 / TILE_WIDTH;
        bg->paletteOffset = 0;
        bg->flags = 0;
        DrawBackground(bg);
    }
}

void sub_80A6F34(CreditsRelated12C *strc12C)
{
    {
        Sprite *s = &strc12C->spr74;
        s->tiles = strc12C->vram8;
        strc12C->vram8 += (gUnknown_080D9F08[1].numTiles << 5);
        s->anim = gUnknown_080D9F08[1].anim;
        s->variant = gUnknown_080D9F08[1].variant;
        s->prevVariant = -1;
        s->x = I(strc12C->unkC.x);
        s->y = I(strc12C->unkC.y);
        s->oamFlags = 0x500;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }
    {
        Sprite *s = &strc12C->spr4C;
        s->tiles = strc12C->vram8;
        strc12C->vram8 += gUnknown_080D9F08[4].numTiles * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D9F08[4].anim;
        s->variant = gUnknown_080D9F08[4].variant;
        s->prevVariant = -1;
        s->x = I(strc12C->unkC.x);
        s->y = I(strc12C->unkC.y);
        s->oamFlags = 0x500;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }
    {
        Sprite *s = &strc12C->sprC4;
        s->tiles = strc12C->vram8;
        strc12C->vram8 += (gUnknown_080D9F08[3].numTiles * TILE_SIZE_4BPP);
        s->anim = gUnknown_080D9F08[3].anim;
        s->variant = gUnknown_080D9F08[3].variant;
        s->prevVariant = -1;
        s->x = I(strc12C->unkC.x);
        s->y = I(strc12C->unkC.y);
        s->oamFlags = 0x500;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 1;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }
    {
        Sprite *s = &strc12C->spr9C;
        s->tiles = strc12C->vram8;
        strc12C->vram8 += gUnknown_080D9F08[4].numTiles * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D9F08[4].anim;
        s->variant = gUnknown_080D9F08[4].variant;
        s->prevVariant = -1;
        s->x = I(strc12C->unkC.x);
        s->y = I(strc12C->unkC.y);
        s->oamFlags = 0x500;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 1;
        s->frameFlags = 0;
        UpdateSpriteAnimation(&strc12C->spr9C);
    }
    {
        Sprite *s = &strc12C->spr24;
        s->tiles = strc12C->vram8;
        strc12C->vram8 += 21 * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D9F08[0].anim;
        s->variant = gUnknown_080D9F08[0].variant;
        s->prevVariant = -1;
        s->x = I(strc12C->unkC.x);
        s->y = I(strc12C->unkC.y);
        s->oamFlags = 0x500;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 4;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }
}

void Task_12C_80A70B8(void)
{
    CreditsRelated12C *strc12C = TASK_DATA(gCurTask);
    Vec2_u16 sp0;
    s32 temp_r1;

    memcpy(&sp0, &gUnknown_080D9F58, sizeof(sp0));
    if (*strc12C->unk0 <= 0xB) {
        s32 unk18 = strc12C->unk18;
        strc12C->unk18 += 0x20;
        unk18 += 0x9620;
        strc12C->unkC.y = (s32)((unk18) - ((gBgScrollRegs[1][1] - 0x50) << 8));
    }
    if (*strc12C->unk0 > 0xC) {
        Sprite *s = &strc12C->spr24;
        s->anim = gUnknown_080D9F08[5].anim;
        s->variant = gUnknown_080D9F08[5].variant;
        s->prevVariant = 0xFF;
        s->palId = 0;
        UpdateSpriteAnimation(s);
        gCurTask->main = Task_12C_80A714C;
        return;
    }
    sub_80A72F4(strc12C, &sp0);
}

void Task_12C_80A714C(void)
{
    CreditsRelated12C *strc12C = TASK_DATA(gCurTask);
    Vec2_u16 sp0;
    s32 temp_r0;

    memcpy(&sp0, &gUnknown_080D9F58, sizeof(sp0));
    if (*strc12C->unk0 == 0xE) {
        s32 unk18;
        strc12C->unk18 -= Q(0.25);
        if (strc12C->unk18 <= 0) {
            strc12C->unk18 = 0;
        }
        unk18 = strc12C->unk18;
        unk18 -= ((gBgScrollRegs[1][1] - 0x50) << 8);
        strc12C->unkC.y = unk18 + 0x9800;
    } else {
        strc12C->unkC.y = (s32)(0x9800 - ((gBgScrollRegs[1][1] - 0x50) << 8));
    }
    sub_80A72F4(strc12C, &sp0);
    if (((u32)*strc12C->unk0 > 0x11) && (gBldRegs.bldY == 0x10)) {
        TaskDestroy(gCurTask);
    }
}

u8 sub_80A71E8(CreditsRelated12C *strc12C, Vec2_u16 *param1)
{
    Sprite *sp[4];
    Sprite *s;
    s32 var_r3;
    s32 temp_r1;
    u8 var_r0;
    u8 var_r1;
    u8 var_r6;

    sp[0] = &strc12C->spr74;
    sp[1] = &strc12C->spr4C;
    sp[2] = &strc12C->sprC4;
    sp[3] = &strc12C->spr9C;

    {
        u8 result = 0;

        param1->x = 8;

        for (var_r6 = 0; var_r6 < 16; var_r6++) {
            var_r3 = 0;
            if (strc12C->unkC.x > Q(240)) {
                var_r1 = I(strc12C->unkC.x - Q(240));
            } else {
                var_r1 = 0;
            }
            if (var_r1 > 0xF) {
                var_r1 = 0;
                strc12C->unkC.x -= Q(16);
                strc12C->unk4 += 1;
            } else {
                var_r1 = 0;
            }

            if (strc12C->unk4 != 0) {
                var_r1 += strc12C->unk4;
            }
            temp_r1 = var_r1 + var_r6;

            if (temp_r1 > 32) {
                result = 2;
                if (var_r6 != 0) {
                    result = 1;
                    if (*strc12C->unk0 < 4) {
                        *strc12C->unk0 = 4;
                    }
                }
                if (var_r6 == 5) {
                    if (*strc12C->unk0 <= 5) {
                        *strc12C->unk0 = 6;
                    }
                }
                break;
            } else {
                var_r0 = gUnknown_080D9F5C[temp_r1];
                if (var_r0 > 3) {
                    var_r0 -= 4;
                    var_r3 = 1;
                }
                s = sp[var_r0];
                s->x = I(strc12C->unkC.x);
                s->y = I(strc12C->unkC.y);
                s->x -= param1->x;

                if (var_r3 != 0) {
                    s->frameFlags |= 0x400;
                } else {
                    s->frameFlags &= ~0x400;
                }
                DisplaySprite(s);
                param1->x += 16;
            }
        }

        return result;
    }
}

void sub_80A72F4(CreditsRelated12C *strc12C, Vec2_u16 *param1)
{
    u16 sp0[2] = { 0 };
    u8 i;

    sp0[0] = 24;
    sp0[1] = 3;

    for (i = 0; i < 4; i++) {
        Sprite *s = &strc12C->spr24;

        s->x = I(strc12C->unkC.x) - param1->x;
        s->y = I(strc12C->unkC.y);
        s->x -= sp0[0];
        s->y -= sp0[1];

        DisplaySprite(s);

        sp0[0] += 60;
    }
}

void sub_80A735C(u8 *arg0, u8 *arg1, u8 arg2, u8 arg3)
{
    Task *t;
    s32 temp_r6;
    s32 var_r0_2;
    CreditsRelated28 *strc28;
    winreg_t *temp_r1_3;

    if (arg2 == 0) {
        t = TaskCreate(Task_28_80A74F8, sizeof(CreditsRelated28), 0x100, 0, TaskDestructor_80A84D8);
    } else {
        t = TaskCreate(Task_28_80A7578, sizeof(CreditsRelated28), 0x100, 0, TaskDestructor_80A84D8);
    }

    strc28 = TASK_DATA(t);
    strc28->initArg2 = arg2;
    strc28->initArg3 = arg3;
    strc28->initArg1 = arg1;
    strc28->unk14 = 0;
    strc28->unk8 = 0;
    strc28->unkB = 0;
    strc28->initArg0 = arg0;

    if (arg2 == 0) {
        gDispCnt |= DISPCNT_WIN0_ON;
        strc28->winH = &gWinRegs[WINREG_WIN0H];
        strc28->winV = &gWinRegs[WINREG_WIN0V];

        if (strc28->initArg3 != 0) {
            gWinRegs[WINREG_WININ] |= (WININ_WIN0_BG2 | WININ_WIN0_BG3 | WININ_WIN0_OBJ | WININ_WIN0_CLR);
        } else {
            gWinRegs[WINREG_WININ] |= (WININ_WIN0_BG1 | WININ_WIN0_BG2 | WININ_WIN0_BG3 | WININ_WIN0_OBJ | WININ_WIN0_CLR);
        }
        gWinRegs[WINREG_WINOUT] |= WINOUT_WIN01_BG_ALL | WINOUT_WIN01_OBJ;

        strc28->unk1C = Q(1);
        strc28->unk18 = Q(42);
        strc28->unk20 = Q(115);
        temp_r6 = ((u32)PseudoRandom32() >> 8) & 0xF;

        if (PseudoRandom32() & 2) {
            var_r0_2 = Q(115) + Q(temp_r6);
        } else {
            var_r0_2 = Q(115) - Q(temp_r6);
        }
        strc28->unk20 = var_r0_2;
        strc28->unk24 = (s32)(0x1B00 - ((gBgScrollRegs[1][1] - 0x50) << 8));
    } else {
        gDispCnt |= DISPCNT_WIN1_ON;
        strc28->winH = &gWinRegs[WINREG_WIN1H];
        strc28->winV = &gWinRegs[WINREG_WIN1V];
        gWinRegs[WINREG_WININ] = WINOUT_WINOBJ_ALL;
        gWinRegs[WINREG_WINOUT] |= WINOUT_WIN01_BG_ALL | WINOUT_WIN01_OBJ;
        strc28->unk1C = Q(DISPLAY_WIDTH);
        strc28->unk18 = Q(DISPLAY_HEIGHT);
        strc28->unk20 = 0;
        strc28->unk24 = 0;
        gBldRegs.bldCnt = BLDCNT_EFFECT_LIGHTEN | BLDCNT_TGT1_ALL;
        gBldRegs.bldY = 0;
    }

    // NOTE: Redundant, as they get immediately overridden below
    *strc28->winV = WIN_RANGE(0, DISPLAY_WIDTH);
    *strc28->winH = WIN_RANGE(0, DISPLAY_HEIGHT);

    *strc28->winV = (I(strc28->unk24) * WIN_RANGE(1, 1)) + I(strc28->unk18);
    *strc28->winH = (I(strc28->unk20) * WIN_RANGE(1, 1)) + I(strc28->unk1C);
}

void Task_28_80A74F8(void)
{
    CreditsRelated28 *strc28 = TASK_DATA(gCurTask);

    if (sub_80A84DC(strc28) == 1) {
        *strc28->winV = (I(strc28->unk24) * WIN_RANGE(1, 1)) + I(strc28->unk18);
        *strc28->winH = (I(strc28->unk20) * WIN_RANGE(1, 1)) + I(strc28->unk1C);
        if (strc28->initArg1 != NULL) {
            *strc28->initArg1 = 0;
        }
        TaskDestroy(gCurTask);
        return;
    }
    *strc28->winV = (I(strc28->unk24) * WIN_RANGE(1, 1)) + I(strc28->unk18);
    *strc28->winH = (I(strc28->unk20) * WIN_RANGE(1, 1)) + I(strc28->unk1C);
}

void Task_28_80A7578(void)
{
    CreditsRelated28 *strc28 = TASK_DATA(gCurTask);
    if (strc28->unkB > 4) {
        strc28->unk1C = 0x500;
        strc28->unk18 = 0;
        strc28->unk20 = 0x7100;
        strc28->unk24 = 0x5A00;
        gBldRegs.bldCnt = 0x3F7F;
        gBldRegs.bldY = 0;
        gBldRegs.bldAlpha = 0x81F;
        gWinRegs[4] = 0x3F3E;
        *strc28->initArg0 = 0xB;
        strc28->unk24 = 0;
        m4aSongNumStart(SE_667);
        gCurTask->main = Task_28_80A7674;
        return;
    }

    strc28->unk14 += 1;
    if (strc28->unk14 >= gUnknown_080D9F7D[strc28->unkB]) {
        strc28->unkB += 1;
        strc28->unk14 = 0;
        gBldRegs.bldY = 0xF;
    } else {
        gBldRegs.bldY = 0;
    }
    if (strc28->unk8 == 0) {
        strc28->unk8 = 1;

        if (PseudoRandom32() & 2) {
            sub_80A735C(strc28->initArg0, &strc28->unk8, 0, 1);
            return;
        }
        sub_80A735C(strc28->initArg0, &strc28->unk8, 0, 0);
    }
}

void Task_28_80A7674(void)
{
    CreditsRelated28 *strc28 = TASK_DATA(gCurTask);

    if (sub_80A8524(strc28) == 1) {
        strc28->unk14 = 0;
        gCurTask->main = Task_28_80A7738;
        return;
    }
    {
        s32 r0 = strc28->unk24;
        s32 r1 = Q(90) - r0;
        r1 -= Q(gBgScrollRegs[1][1] - 80);
        strc28->unk18 = r1;

        if (strc28->unk8 == 0) {
            strc28->unk8 = 1;

            if (PseudoRandom32() & 2) {
                sub_80A735C(strc28->initArg0, &strc28->unk8, 0, 1);
            } else {
                sub_80A735C(strc28->initArg0, &strc28->unk8, 0, 0);
            }
        }
        *strc28->winV = (I(strc28->unk24) * WIN_RANGE(1, 1)) + I(strc28->unk18);
        *strc28->winH = (I(strc28->unk20) * WIN_RANGE(1, 1)) + I(strc28->unk1C);
    }
}

void Task_28_80A7738(void)
{
    CreditsRelated28 *strc28 = TASK_DATA(gCurTask);

    if (strc28->unk14 <= 120) {
        strc28->unk14 += 1;
        {
            s32 unk24 = strc28->unk24;
            s32 r1 = Q(90);
            r1 -= unk24;
            r1 -= Q(gBgScrollRegs[1][1] - 80);
            strc28->unk18 = r1;
            *strc28->winV = (I(unk24) * WIN_RANGE(1, 1)) + I(strc28->unk18);
            *strc28->winH = (I(strc28->unk20) * WIN_RANGE(1, 1)) + I(strc28->unk1C);
            if (strc28->unk14 == 0x78) {
                *strc28->initArg0 = 12;
            }
        }
    }

    if (*strc28->initArg0 == 14) {
        gCurTask->main = Task_28_80A77B4;
    }
}

void Task_28_80A77B4(void)
{
    CreditsRelated28 *strc28 = TASK_DATA(gCurTask);
    s32 temp_r1;
    s32 unk24;

    if (strc28->unkB > 4) {
        gDispCnt &= ~DISPCNT_WIN0_ON;
        strc28->unk20 = 0x5E00;
        strc28->unk24 = 0;
        strc28->unk1C = ((Q(115) - strc28->unk20)) * 2 + Q(2);
        strc28->unk18 = 0;
        gBldRegs.bldCnt = 0x3F7F;
        gBldRegs.bldY = 0;
        gBldRegs.bldAlpha = 0x81F;
        gWinRegs[4] = 0x3F3E;
    }

    unk24 = strc28->unk24;
    temp_r1 = Q(90);
    strc28->unk18 = temp_r1 - unk24 - Q(gBgScrollRegs[1][1] - 80);
    *strc28->winV = (I(strc28->unk24) * WIN_RANGE(1, 1)) + I(strc28->unk18);
    *strc28->winH = (I(strc28->unk20) * WIN_RANGE(1, 1)) + I(strc28->unk1C);
    gCurTask->main = Task_28_80A786C;
}

void Task_28_80A786C(void)
{
    CreditsRelated28 *strc28 = TASK_DATA(gCurTask);
    s32 temp_r1;
    s32 temp_r2;

    temp_r2 = strc28->unk24;
    temp_r1 = Q(90);
    temp_r1 -= temp_r2;
    temp_r1 -= ((gBgScrollRegs[1][1] - 0x50) << 8);
    strc28->unk18 = temp_r1;
    *strc28->winV = (I(temp_r2) * WIN_RANGE(1, 1)) + (temp_r1 >> 8);
    *strc28->winH = (I(strc28->unk20) * WIN_RANGE(1, 1)) + ((s32)strc28->unk1C >> 8);

    if (*strc28->initArg0 == 0xF) {
        strc28->unkB = 0;
        strc28->unk14 = 0;
        gCurTask->main = Task_28_80A78D8;
    }
}

void Task_28_80A78D8(void)
{
    CreditsRelated28 *strc28 = TASK_DATA(gCurTask);
    s32 temp_r0_2;
    s32 temp_r1;
    s32 temp_r2;
    u16 temp_r0;
    u8 temp_r0_3;

    sub_80A85B0(strc28);

    strc28->unk14 += 1;
    if ((strc28->unk14 >= gUnknown_080D9F83[strc28->unkB]) && (strc28->unk8 == 0)) {
        strc28->unk8 = 1;
        if (PseudoRandom32() & 2) {
            sub_80A735C(strc28->initArg0, &strc28->unk8, 0, 1);
        } else {
            sub_80A735C(strc28->initArg0, &strc28->unk8, 0, 0);
        }
        strc28->unk14 = 0;
        strc28->unkB += 1;
        if (strc28->unkB == 8) {
            *strc28->initArg0 = 0x10;
            TaskDestroy(gCurTask);
            return;
        }
    }

    temp_r2 = strc28->unk24;
    temp_r1 = 0x5A00 - temp_r2;
    temp_r1 -= ((gBgScrollRegs[1][1] - 0x50) << 8);
    strc28->unk18 = temp_r1;
    *strc28->winV = ((temp_r2 >> 8) * WIN_RANGE(1, 1)) + (temp_r1 >> 8);
    *strc28->winH = (((s32)strc28->unk20 >> 8) * WIN_RANGE(1, 1)) + ((s32)strc28->unk1C >> 8);
}

#if 01
u8 *sub_80A79C4(u8 *arg0, u8 *vram)
{
    u8 i;
    void *temp_r2_2;
    Task *t = TaskCreate(Task_8C_80A7ACC, sizeof(CreditsRelated8C), 0x100, 0, TaskDestructor_8C_80A85F0);
    CreditsRelated8C *strc8C = TASK_DATA(t);
    strc8C->initArg0 = arg0;
    strc8C->unkC = 0x7300;
    strc8C->unk10 = 0x1400;
    strc8C->unk6 = 0;
    strc8C->unk4 = 0;
    {
        Sprite *s = &strc8C->spr14;
        s->tiles = vram;
        vram += (gUnknown_080D9F8C[0].numTiles * TILE_SIZE_4BPP);
        s->anim = gUnknown_080D9F8C[0].anim;
        s->variant = gUnknown_080D9F8C[0].variant;
        s->prevVariant = -1;
        s->x = (s16)((s32)strc8C->unkC >> 8);
        s->y = (s16)((s32)strc8C->unk10 >> 8);
        s->oamFlags = 0x280;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }

    for (i = 0; i < 2; i++) {
        Sprite *s = &strc8C->spr3C[i];
        s->tiles = vram;
        vram += gUnknown_080D9F8C[i + 1].numTiles * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D9F8C[i + 1].anim;
        s->variant = gUnknown_080D9F8C[i + 1].variant;
        s->prevVariant = -1;
        s->x = 0;
        s->y = 0;
        s->oamFlags = SPRITE_OAM_ORDER(10);
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 2;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }

    m4aSongNumStart(SE_666);

    if (gStageData.playerIndex != 0) {
        gStageData.unkC5 = 1;
    }

    sub_80260F0();
    sub_8001E84();

    return vram;
}

void Task_8C_80A7ACC(void)
{
    CreditsRelated8C *strc8C = TASK_DATA(gCurTask);
    Sprite *s;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r1;
    s32 temp_r3;
    u8 *temp_r2;
    u32 rand;
    s32 unk6;

    strc8C->unk10 = (s32)(0x5D00 - ((gBgScrollRegs[1][1] - 0x50) << 8));

    s = &strc8C->spr14;
    s->x = I(strc8C->unkC);
    s->y = I(strc8C->unk10);
    UpdateSpriteAnimation(s);
    if (3 & strc8C->unk6) {
        DisplaySprite(s);
    }
    {
        AnimCmdResult acmdRes = UpdateSpriteAnimation(&strc8C->spr3C[0]);
        if (acmdRes == ACMD_RESULT__ENDED) {
            strc8C->spr3C[0].qAnimDelay = 0;
            strc8C->spr3C[0].prevVariant = -1;
        }
    }
    {
        AnimCmdResult acmdRes = UpdateSpriteAnimation(&strc8C->spr3C[1]);
        if (acmdRes == ACMD_RESULT__ENDED) {
            strc8C->spr3C[1].qAnimDelay = 0;
            strc8C->spr3C[1].prevVariant = -1;
        }
    }
    if (*strc8C->initArg0 == 0x10) {
        gCurTask->main = Task_8C_80A85F4;
        return;
    }
    strc8C->unk6 += 1;
    if ((strc8C->unk4 == 0 && strc8C->unk6 == 0xB4)) {
        strc8C->unk4 = 1;
        sub_80A735C(strc8C->initArg0, NULL, 1, 0);
    }
    rand = (((u32)PseudoRandom32()));
    unk6 = strc8C->unk6;
    if (unk6 >= (u32)(((rand >> 8) & 0x1F) + 0xC4)) {
        Sprite *s;
        temp_r1 = PseudoRandom32();
        s = &strc8C->spr3C[((u32)temp_r1 >> 8) & 1];
        strc8C->unk6 = 0xB5U;
        sub_80A866C(s);
    }
}

void TaskDestructor_80A7BFC(Task *t) { }

void Task_248_80A7C00(void)
{
    CreditsRelated248 *strc248 = TASK_DATA(gCurTask);
    UpdateBgAnimationTiles(&strc248->bgD8);
    sub_80A5824(strc248);
    sub_80A490C(strc248, 2, 1);
    gCurTask->main = Task_248_80A7C40;
}

void Task_248_80A7C40(void)
{
    CreditsRelated248 *strc248 = TASK_DATA(gCurTask);
    UpdateBgAnimationTiles(&strc248->bgD8);
    if ((sub_80A5824(strc248) == 0) && (*strc248->initArg0 == 10)) {
        gCurTask->main = Task_248_80A7C7C;
    }
}

void Task_248_80A7C7C(void)
{
    CreditsRelated248 *strc248 = TASK_DATA(gCurTask);
    UpdateBgAnimationTiles(&strc248->bgD8);
    sub_80A5824(strc248);
    if (*strc248->initArg0 == 0xB) {
        strc248->unk16 = 0;
        gCurTask->main = Task_248_80A7CB8;
    }
}

void Task_248_80A7CB8(void)
{
    CreditsRelated248 *strc248 = TASK_DATA(gCurTask);
    UpdateBgAnimationTiles(&strc248->bgD8);
    sub_80A5824(strc248);
    if ((sub_80A563C(strc248) == 1) && (*strc248->initArg0 == 0xC)) {
        strc248->unk18 = 0;
        gCurTask->main = Task_248_80A4EDC;
    }
}

void Task_248_80A7D00(void)
{
    CreditsRelated248 *strc248 = TASK_DATA(gCurTask);
    UpdateBgAnimationTiles(&strc248->bgD8);
    sub_80A5698(strc248);
    if (sub_80A55DC(strc248) == 1) {
        *strc248->initArg0 = 0xF;
        gCurTask->main = Task_248_80A7D40;
    }
}

void Task_248_80A7D40(void)
{
    CreditsRelated248 *strc248 = TASK_DATA(gCurTask);
    UpdateBgAnimationTiles(&strc248->bgD8);
    sub_80A5698(strc248);
    if (*strc248->initArg0 == 0x10) {
        gCurTask->main = Task_248_80A7D7C;
    }
}

void Task_248_80A7D7C(void)
{
    CreditsRelated248 *strc248 = TASK_DATA(gCurTask);
    u8 temp_r0;

    UpdateBgAnimationTiles(&strc248->bgD8);
    sub_80A5698(strc248);
    temp_r0 = *strc248->initArg0;
    if (temp_r0 == 0x12) {
        sub_80A490C(strc248, 4, 1);
        gCurTask->main = Task_248_80A7DD0;
    } else if (temp_r0 == 0x14) {
        sub_80A4A88(strc248, 0, 1);
        gCurTask->main = Task_248_80A7DD0;
    }
}

void Task_248_80A7DD0(void)
{
    CreditsRelated248 *strc248 = TASK_DATA(gCurTask);
    sub_80A5824(strc248);
    UpdateBgAnimationTiles(&strc248->bgD8);
    if (*strc248->initArg0 == 0x15) {
        gCurTask->main = Task_248_80A52DC;
        return;
    }
    if (gBldRegs.bldY == 0x10) {
        TaskDestroy(gCurTask);
    }
}

void Task_248_80A7E24(void)
{
    CreditsRelated248 *strc248 = TASK_DATA(gCurTask);
    gDispCnt |= DISPCNT_BG1_ON;
    strc248->qUnk20.x = Q(4);
    gBgScrollRegs[1][0] = 4;
    gBgScrollRegs[1][1] = I(strc248->qUnk20.y) + DISPLAY_CENTER_Y;
    sub_80A4A88(strc248, 0, 0);
    gCurTask->main = Task_248_80A5050;
}

void TaskDestructor_PreCreditsCutscene(Task *t)
{
    CreditsRelated150 *strc = TASK_DATA(t);
    EwramFree(strc->ewramData14C);
}

void Task_150_PreCreditsCutsceneNormalInit(void)
{
    CreditsRelated150 *strc = TASK_DATA(gCurTask);
    if (strc->unk6 == 0) {
        sub_80A5B08(strc);
        strc->unk6 += 1;
        return;
    }

    strc->vramC = sub_80A828C(&strc->initArg0, strc->vramC, &strc->unk14);
    strc->unk6 = 0;

    gCurTask->main = Task_150_80A6090;
}

void Task_150_80A7EE4(void)
{
    CreditsRelated150 *strc150 = TASK_DATA(gCurTask);
    sub_80A6BDC(strc150);
    sub_80A5CB0(strc150, 5, 0);
    gCurTask->main = Task_150_80A7F18;
}

void Task_150_80A7F18(void)
{
    CreditsRelated150 *strc150 = TASK_DATA(gCurTask);
    if (sub_80A6A5C(strc150) == 0) {
        strc150->initArg0 = 10;
        strc150->vramC = sub_80A79C4(&strc150->initArg0, strc150->vramC);
        gCurTask->main = Task_150_80A7FAC;
    }
}

void Task_150_80A7F58(void)
{
    CreditsRelated150 *strc150 = TASK_DATA(gCurTask);

    sub_80A6A5C(strc150);

    if (strc150->unk8 <= 0xB3) {
        strc150->unk8 += 1;
        if (strc150->unk8 == 0xB4) {
            strc150->initArg0 = 8;
        }
    }
    if (strc150->initArg0 == 9) {
        strc150->unk8 = 0U;
        sub_80A5CB0((CreditsRelated150 *)strc150, 4, 1);
        gCurTask->main = Task_150_80A7EE4;
    }
}

void Task_150_80A7FAC(void)
{
    CreditsRelated150 *strc150 = TASK_DATA(gCurTask);
    sub_80A6A5C(strc150);
    if (strc150->initArg0 == 0xB) {
        gCurTask->main = Task_150_80A7FDC;
    }
}

void Task_150_80A7FDC(void)
{
    CreditsRelated150 *strc150 = TASK_DATA(gCurTask);
    s32 temp_r1;
    s32 temp_r1_2;

    sub_80A6A5C(strc150);

    if (strc150->initArg0 == 0xB) {
        // TODO: Can this be matched a bit more cleanly?
        s32 qUnk30 = strc150->qUnk30;
        strc150->qUnk30 += Q(0.125);
        qUnk30 += Q(120.125);
        strc150->unk18 = qUnk30 - Q(gBgScrollRegs[1][1] - 80);
        strc150->unk20 = strc150->unk18;
    }
    if (strc150->initArg0 == 0xD) {
        strc150->unk8 = 0;
        strc150->unk6 = 0;
        strc150->vramC = sub_80A9BD8(strc150->vramC, -0x14, -0x5A, 0, &strc150->initArg0);
        gCurTask->main = Task_150_80A664C;
    }
}

void Task_150_80A805C(void)
{
    CreditsRelated150 *strc150 = TASK_DATA(gCurTask);
    sub_80A6A5C(strc150);
    if (strc150->initArg0 == 0x16) {
        sub_80A8C80();
        TaskDestroy(gCurTask);
    }
}

void Task_150_80A808C(void)
{
    CreditsRelated150 *strc150 = TASK_DATA(gCurTask);

    sub_80A6BDC(strc150);
    if (strc150->initArg0 == 0xE) {
        strc150->qUnk30 -= 0x40;
        if (strc150->qUnk30 <= 0) {
            strc150->qUnk30 = 0;
        }

        {
            s32 qUnk30 = strc150->qUnk30;
            qUnk30 += Q(120);
            strc150->unk18 = qUnk30 - Q(gBgScrollRegs[1][1] - 80);
            strc150->unk20 = strc150->unk18;
        }
    }

    if (strc150->initArg0 == 0x10) {
        gCurTask->main = Task_150_80A6700;
    }
}

void Task_150_80A80EC(void)
{
    CreditsRelated150 *strc150 = TASK_DATA(gCurTask);

    sub_80239A8(strc150->ewramData14C);
    sub_80A825C(strc150);
    if (sub_80A81E8(strc150) == 1) {
        strc150->unk8 = 0;
        strc150->unk6 = 0;
        strc150->initArg0 = 0x15;
        sub_80A5EF0(strc150, 0xA, 1);
        gCurTask->main = Task_150_80A690C;
        return;
    }
    sub_80A6DD0(strc150);
}

void Task_150_80A814C(void)
{
    CreditsRelated150 *strc150 = TASK_DATA(gCurTask);
    u16 temp_r0;

    sub_80A8234(strc150);
    temp_r0 = strc150->unk8;
    if ((u32)temp_r0 <= 0x77) {
        strc150->unk8 = temp_r0 + 1;
        return;
    }
    if (sub_80A820C(strc150) == 1) {
        strc150->unk8 = 0;
        sub_80A5E8C(strc150, 0xE, 0);
        gCurTask->main = Task_150_80A69E4;
    }
}

void Task_150_80A8198(void)
{
    CreditsRelated150 *strc150 = TASK_DATA(gCurTask);

    sub_80A8234(strc150);

    if (gBldRegs.bldY < 0x10) {
        strc150->unk10 += 0x20;
        gBldRegs.bldY = (u16)(strc150->unk10 >> 8);
        return;
    }

    strc150->unk8 += 1;
    if (strc150->unk8 > 0xB4) {
        CreateCredRelatedStrc90(1);
        TaskDestroy(gCurTask);
    }
}

bool32 sub_80A81E8(CreditsRelated150 *arg0)
{
    if (arg0->unk14 > -Q(40)) {
        arg0->unk14 -= Q(5);
        return 0;
    } else {
        return 1;
    }
}

bool32 sub_80A820C(CreditsRelated150 *strc150)
{
    s32 temp_r2;

    if (strc150->unk18 < Q(121)) {
        strc150->unk18 += Q(3);
        return 0;
    } else {
        strc150->unk18 = Q(121);
        return 1;
    }
}

AnimCmdResult sub_80A8234(CreditsRelated150 *arg0)
{
    Sprite *s = &arg0->sprD4;
    s->x = I(arg0->unk14);
    s->y = I(arg0->unk18);

    {
        AnimCmdResult acmdRes = UpdateSpriteAnimation(s);
        DisplaySprite(s);
        return acmdRes;
    }
}

void sub_80A825C(CreditsRelated150 *arg0)
{
    s16 var_r3 = 0;

    if (arg0->qUnk24.x > -Q(210)) {
        arg0->qUnk24.x -= Q(5);
        var_r3 = -5;
    }

    arg0->ewramData14C->unkD = var_r3;
}

u8 *sub_80A828C(u8 *arg0, u8 *vram, s32 *arg2)
{
    Task *t;
    CreditsRelated12C *strc12C;

    if (*arg0 == 0x10) {
        t = TaskCreate(Task_12C_80A70B8, sizeof(CreditsRelated12C), 0x100, 0, TaskDestructor_12C_80A8324);
    } else {
        t = TaskCreate(Task_12C_80A8328, sizeof(CreditsRelated12C), 0x100, 0, TaskDestructor_12C_80A8324);
    }
    strc12C = TASK_DATA(t);
    strc12C->unk0 = arg0;
    strc12C->vram8 = vram;
    strc12C->unk4 = 0;
    strc12C->unk6 = 0;
    strc12C->unk14 = 0;
    strc12C->unk18 = 0;
    strc12C->unk1C = &arg2[0];
    strc12C->unk20 = &arg2[1];

    if (*arg0 == 0x10) {
        strc12C->unkC.x = Q(240);
    } else {
        strc12C->unkC.x = Q(160);
    }

    strc12C->unkC.y = Q(150);
    sub_80A6F34(strc12C);
    sub_80A6EBC(strc12C);

    return strc12C->vram8;
}

void TaskDestructor_12C_80A8324(Task *t) { }

void Task_12C_80A8328(void)
{
    CreditsRelated12C *strc12C = TASK_DATA(gCurTask);
    u16 sp0[2] = { 0 };

    sub_80A71E8(strc12C, (void *)&sp0);
    gCurTask->main = Task_12C_80A8360;
}

void Task_12C_80A8360(void)
{
    CreditsRelated12C *strc12C = TASK_DATA(gCurTask);
    u16 sp0[2] = { 0, 0 };
    u8 temp_r5;

    temp_r5 = sub_80A71E8(strc12C, (void *)&sp0);
    if (temp_r5 != 0) {
        sub_80A72F4(strc12C, (void *)&sp0);
        if (temp_r5 == 2) {
            strc12C->unk6 = 0;
            gCurTask->main = Task_12C_80A83C8;
            return;
        }
    }
    if ((u32)(u8)(*strc12C->unk0 - 1) <= 6) {
        sub_80A8468(strc12C);
    }
}

void Task_12C_80A83C8(void)
{
    CreditsRelated12C *strc12C = TASK_DATA(gCurTask);
    u16 sp0[2];
    u16 temp_r0;
    u16 temp_r4;
    u8 *temp_r1;

    memcpy(&sp0, &gUnknown_080D9F58, 4);
    sub_80A72F4(strc12C, (void *)&sp0);

    if (*strc12C->unk0 > 7) {
        strc12C->unk6 += 1;
        if (strc12C->unk6 > 0x77) {
            strc12C->unk6 = 0U;
            *strc12C->unk0 = 9;
            gCurTask->main = Task_12C_80A8424;
        }
    }
}

void Task_12C_80A8424(void)
{
    CreditsRelated12C *strc12C = TASK_DATA(gCurTask);
    u16 sp0[2];
    memcpy(&sp0, &gUnknown_080D9F58, 4);

    sub_80A72F4(strc12C, (void *)&sp0);
    if (*strc12C->unk0 == 0xB) {
        gCurTask->main = Task_12C_80A70B8;
    }
}

void sub_80A8468(CreditsRelated12C *strc12C)
{
    switch (*strc12C->unk0 - 1) {
        case 1:
            strc12C->unkC.x += 0x200;
            break;
        case 2:
            strc12C->unkC.x += 0x210;
            break;
        case 3:
            strc12C->unkC.x += 0x210;
            break;
        case 4:
            strc12C->unkC.x += 0x210;
            break;
        case 5:
            strc12C->unkC.x += 0x200;
            break;
        case 0:
        case 6:
            strc12C->unkC.x += 0x100;
            break;
    }
}

void TaskDestructor_80A84D8(Task *arg0) { }

bool32 sub_80A84DC(CreditsRelated28 *strc28)
{
    if (strc28->unk24 != 0) {
        strc28->unk24 -= Q(5);
    } else {
        strc28->unk18 -= Q(5);
    }
    if (strc28->unk24 < 0) {
        strc28->unk24 = 0;
    }

    if (I(strc28->unk24 + strc28->unk18) <= 0) {
        return TRUE;
    }

    return FALSE;
}

bool32 sub_80A8524(CreditsRelated28 *strc28)
{
    s32 temp_r1;

    if (strc28->unk20 <= 0x5E00) {
        strc28->unk20 = 0x5E00;
        return 1U;
    } else {
        strc28->unk20 -= 0x10;
        if (strc28->unk20 >= 0x5E00) {
            strc28->unk1C = ((0x7300 - strc28->unk20) * 2) + 0x200;
            return 0U;
        } else {
            strc28->unk20 = 0x5E00;
            return 1U;
        }
    }
}

// TODO: Fake-matchcity!
bool32 sub_80A8560(CreditsRelated28 *strc28)
{
    register s32 unk24 asm("r2") = strc28->unk24;
    if (unk24 <= 0) {
        strc28->unk24 = 0;
        return 1;
    } else {
        if (Q(gBgScrollRegs[1][1] - 80) > -90) {
            s32 r1 = unk24 - 0x10;
            s16 *scrollRegs = (s16 *)gBgScrollRegs;
#ifndef NON_MATCHING
            register s32 r0 asm("r0");
            register s32 r2 asm("r2");
            asm("mov %2, #6\n"
                "ldrsh %0, [%1, %2]\n"
                : "=r"(r0)
                : "r"(scrollRegs), "r"(r2));
#else
            s32 r0 = gBgScrollRegs[1][1];
#endif
            r0 = Q(r0 - 80);
            r1 -= r0;
            strc28->unk24 = r1;
        } else {
#ifndef NON_MATCHING
            register s32 r0 asm("r0");
            asm("mov %0, %1" : "=r"(r0) : "r"(unk24));
#else
            s32 r0 = unk24;
#endif

            r0 -= 0x40;
            strc28->unk24 = r0;
        }
        if (strc28->unk24 >= 0) {
            return 0;
        } else {
            strc28->unk24 = 0;
            return 1;
        }
    }
}

bool32 sub_80A85B0(CreditsRelated28 *strc28)
{
    s32 temp_r0;
    s32 temp_r1;

    temp_r0 = strc28->unk20;
    if ((temp_r0 >= 0x7300) || (temp_r1 = temp_r0 + 0x10, strc28->unk20 = temp_r1, (temp_r1 > 0x72FF))) {
        strc28->unk20 = 0x7300;
        strc28->unk1C = 0;
        return 1;
    }
    strc28->unk1C = (s32)(((0x7300 - temp_r1) * 2) + 0x200);
    return 0;
}

void TaskDestructor_8C_80A85F0(Task *t) { }

void Task_8C_80A85F4(void)
{
    CreditsRelated8C *strc8C = TASK_DATA(gCurTask);
    s32 temp_r0;
    s32 temp_r0_2;

    {
        if (UpdateSpriteAnimation(&strc8C->spr3C[0]) == ACMD_RESULT__ENDED) {
            strc8C->spr3C[0].qAnimDelay = 0;
            strc8C->spr3C[0].prevVariant = -1;
        }
    }
    {
        if (UpdateSpriteAnimation(&strc8C->spr3C[1]) == ACMD_RESULT__ENDED) {
            strc8C->spr3C[1].qAnimDelay = 0;
            strc8C->spr3C[1].prevVariant = -1;
        }
    }
    if (*strc8C->initArg0 == 0x11) {
        TaskDestroy(gCurTask);
    }
}

void sub_80A866C(Sprite *sprIn)
{
    s32 temp_r0;
    CreditsRelated14 *strc14;
    u32 rand0, rand;

    Task *t = TaskCreate(Task_14_80A86D8, sizeof(CreditsRelated14), 0x100, 0, TaskDestructor_14_80A86D4);
    strc14 = TASK_DATA(t);
    strc14->unk0 = 0;
    strc14->unk4 = 0;
    strc14->spr10 = sprIn;
    rand0 = gPseudoRandom;
    rand = PseudoRandom32();
    strc14->qUnk8 = Q(((u32)rand >> 8) % 32u);
    strc14->qUnk8 += Q(95);
    strc14->qUnkC = 0x4600;
}

void TaskDestructor_14_80A86D4(Task *t) { }

void Task_14_80A86D8(void)
{
    CreditsRelated14 *arg14 = TASK_DATA(gCurTask);

    {
        Sprite *s = arg14->spr10;
        s->x = I(arg14->qUnk8);
        s->y = I(arg14->qUnkC);
        s->y += (80 - gBgScrollRegs[1][1]);
        DisplaySprite(s);
    }

    arg14->qUnkC -= Q(1);
    if (arg14->qUnkC < -Q(20)) {
        TaskDestroy(gCurTask);
    }
}

// TODO: Fake-match!
void CreateCredRelatedStrc90(u8 arg0)
{
    Background *bg;
    Task *t;
    u8 var_r0;
    u8 var_r2;
#ifndef NON_MATCHING
    register CreditsRelated90 *strc90 asm("r4");
#else
    CreditsRelated90 *strc90;
#endif

    gDispCnt = DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP | DISPCNT_MODE_0;
    if (arg0 == 0) {
        t = TaskCreate(Task_90_80A8858, sizeof(CreditsRelated90), 0x100, 0, TaskDestructor_90_80A98AC);
        m4aMPlayAllStop();
    } else {
        t = TaskCreate(Task_90_80A8AC4, sizeof(CreditsRelated90), 0x100, 0, TaskDestructor_90_80A98AC);
    }
#ifndef NON_MATCHING
    {
        register u32 data asm("r0") = t->data;
        register u32 iwramBase asm("r1") = IWRAM_START;
        asm("add %0, %1, %2" : "=r"(strc90) : "r"(data), "r"(iwramBase));
    }
#else
    strc90 = TASK_DATA(t);
#endif
    strc90->unk2 = 0;
    strc90->unk3 = 0;
    strc90->unk4 = 0;
    strc90->unk6 = 0;
    strc90->unk1 = 0;

    if (arg0 != 0) {
        if (arg0 >= 11) {
            strc90->unk1 = 11;
        } else if (arg0 == 1 || arg0 == 2 || arg0 == 3 || arg0 == 4 || arg0 == 5 || arg0 == 6) {
            strc90->unk1 = 10;
        }
    }

    strc90->unk0 = arg0;
    strc90->unk8 = 0;
    strc90->unkC = 0;
    gBgSprites_Unknown1[0] = 0;
    gBgSprites_Unknown2[0][0] = 0;
    gBgSprites_Unknown2[0][1] = 0;
    gBgSprites_Unknown2[0][2] = 0xFF;
    gBgSprites_Unknown2[0][3] = 0x40;
    gBgCntRegs[0] = 0x4000 | 0x1C81;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;

    bg = &strc90->bg10;
    var_r2 = gUnknown_080D9FC3[strc90->unk0 + strc90->unk2];
    if (strc90->unk1 == 0xB) {
        var_r2 = 11;
    }
    bg->graphics.dest = BG_CHAR_ADDR(0);
    bg->graphics.anim = 0;
    bg->layoutVram = BG_SCREEN_ADDR(28);
    bg->unk18 = 0;
    bg->unk1A = 0;
    bg->tilemapId = gUnknown_080D9FA4[var_r2];
    bg->unk1E = 0;
    bg->unk20 = 0;
    bg->unk22 = 0;
    bg->unk24 = 0;
    bg->targetTilesX = 64;
    bg->targetTilesY = 32;
#ifndef NON_MATCHING
    {
        u8 *urgh = (u8 *)strc90;
        urgh += offsetof(CreditsRelated90, bg10.paletteOffset);
        asm("" ::"r"(strc90));
        *urgh = 0;
    }
#else
    bg->paletteOffset = 0;
#endif
    bg->flags = 4;
    DrawBackground(bg);
}

void Task_90_80A8858()
{
    CreditsRelated90 *strc90 = TASK_DATA(gCurTask);
    u16 var_r0;

    if (strc90->unk3 == 0) {
        gDispCnt |= DISPCNT_WIN1_ON;
        gWinRegs[WINREG_WIN1H] = WIN_RANGE(0, DISPLAY_WIDTH);
        gWinRegs[WINREG_WIN1V] = WIN_RANGE(0, DISPLAY_HEIGHT);
        if (strc90->unk1 <= 2) {
            gWinRegs[4] = 0x2100;
        } else {
            gWinRegs[4] = 0x3FFF;
        }
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FBF;
        gBldRegs.bldY = 0x10;
        strc90->unk4 = 0x1000U;
        strc90->unk3 = 1;
    }
    if (gBldRegs.bldY != 0) {
        gBldRegs.bldY = (u16)((u16)strc90->unk4 >> 8);
        if (strc90->unk1 == 0) {
            strc90->unk4 -= 0x40;
            return;
        }
        strc90->unk4 -= Q(1);
        return;
    }
    gBldRegs.bldY = gBldRegs.bldY;
    strc90->unk1 += 1;
    gCurTask->main = Task_90_80A8918;
}

void Task_90_80A8918(void)
{
    CreditsRelated90 *strc90 = TASK_DATA(gCurTask);
    u16 temp_r0_2;
    u16 var_r0;
    u32 var_r3;
    u8 temp_r0;
    u8 temp_r0_3;
    u8 temp_r1;
    u8 temp_r2;
    u8 temp_r2_2;
    u8 var_r1;

    if (strc90->unk3 != 0) {
        gDispCnt |= DISPCNT_WIN1_ON;
        gWinRegs[WINREG_WIN1H] = WIN_RANGE(0, DISPLAY_WIDTH);
        gWinRegs[WINREG_WIN1V] = WIN_RANGE(0, DISPLAY_HEIGHT);
        if ((u32)strc90->unk1 <= 2) {
            gWinRegs[4] = 0x2100;
        } else {
            gWinRegs[4] = 0x3FFF;
        }
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FFF;
        strc90->unk4 = 0;
        strc90->unk3 = 0;
    }
    if (gBldRegs.bldY < 0x10) {
        gBldRegs.bldY = (u16)((u16)strc90->unk4 >> 8);
        if (strc90->unk0 == 0) {
            strc90->unk4 += 0x40;
            return;
        }
        strc90->unk4 += 0x100;
        return;
    }
    if (strc90->unk0 == 0) {
        temp_r2 = strc90->unk1;
        var_r3 = 0x3C;
        if (temp_r2 == 1) {
            var_r3 = 0x78;
        }
        if (strc90->unk6 < var_r3) {
            strc90->unk6 += 1;
            return;
        }
        if (temp_r2 == 1) {
            gDispCnt |= DISPCNT_BG0_ON;
            strc90->unk1 += 1;
            m4aSongNumStart(MUS_ENDING_A_COPY);
            sub_80A8E54();
            gCurTask->main = Task_90_80A8AC4;
            return;
        }
    }

    if (strc90->unk0 > 0xB) {
        var_r1 = strc90->unk0 - 11;
    } else {
        var_r1 = strc90->unk0;
    }

    if (strc90->unk2 < gUnknown_080D9FBC[var_r1]) {
        Background *bg = &strc90->bg10;
        strc90->unk1 += 1;
        strc90->unk2 += 1;
        bg->graphics.dest = BG_CHAR_ADDR(0);
        bg->graphics.anim = 0;
        bg->layoutVram = BG_SCREEN_ADDR(28);
        bg->unk18 = 0;
        bg->unk1A = 0;
        bg->tilemapId = gUnknown_080D9FA4[strc90->unk0 + strc90->unk2];
        bg->unk1E = 0;
        bg->unk20 = 0;
        bg->unk22 = 0;
        bg->unk24 = 0;
        bg->targetTilesX = 0x20;
        bg->targetTilesY = 0x20;
        bg->paletteOffset = 0;
        bg->flags = 4;
        DrawBackground(bg);
        strc90->unk6 = 0;
        gCurTask->main = Task_90_80A8AC4;
        return;
    }

    if (strc90->unk0 > 0xB) {
        strc90->unk0 -= 0xB;
    }

    if (strc90->unk0 == 0) {
        CreatePreCreditsCutscene(1);
    } else if (strc90->unk0 == 1 || strc90->unk0 == 2 || strc90->unk0 == 3 || strc90->unk0 == 4 || strc90->unk0 == 5) {
        sub_80A9920((u8)(strc90->unk0 + 11));
    }

    TaskDestroy(gCurTask);
}

void Task_90_80A8AC4(void)
{
    CreditsRelated90 *strc90 = TASK_DATA(gCurTask);
    u16 var_r0;

    if (strc90->unk3 == 0) {
        gDispCnt |= 0x4000;
        gWinRegs[WINREG_WIN1H] = WIN_RANGE(0, DISPLAY_WIDTH);
        gWinRegs[WINREG_WIN1V] = WIN_RANGE(0, DISPLAY_HEIGHT);

        if ((strc90->unk0 == 0) && ((u32)strc90->unk1 < 3)) {
            gWinRegs[4] = 0x2100;
        } else {
            gDispCnt |= 0x100;
            gWinRegs[4] = 0x3FFF;
        }
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FFF;
        gBldRegs.bldY = 0x10;
        strc90->unk4 = Q(16);
        strc90->unk3 = 1;
    }
    if (gBldRegs.bldY != 0) {
        gBldRegs.bldY = (u16)((u16)strc90->unk4 >> 8);
        if (strc90->unk0 == 0 && strc90->unk1 == 0) {
            strc90->unk4 -= Q(16. / 256.);
            return;
        }
        if (strc90->unk0 == 0) {
            strc90->unk4 -= Q(0.25);
            return;
        }
        strc90->unk4 -= Q(1);
        return;
    }
    gBldRegs.bldY = gBldRegs.bldY;
    if (strc90->unk0 == 6) {
        strc90->unk6 = 300;
    }
    gCurTask->main = Task_90_80A8BAC;
}

void Task_90_80A8BAC(void)
{
    u16 temp_r0_2;
    u32 var_r3;
    u8 temp_r0;
    CreditsRelated90 *strc90 = TASK_DATA(gCurTask);

    switch (strc90->unk1) { /* irregular */
        case 2:
            var_r3 = 0x168;
            break;
        case 10:
            var_r3 = 0x12C;
            break;
        case 11:
            var_r3 = 0x258;
            break;
        default:
            var_r3 = 0xB4;
            break;
    }

    if (++strc90->unk6 >= var_r3) {
        strc90->unk6 = 0U;
        if (strc90->unk0 == 6) {
            gCurTask->main = Task_90_80A8C20;
        } else {
            strc90->unk6 = 0U;
            gCurTask->main = Task_90_80A8918;
        }
    }
}

void Task_90_80A8C20(void)
{
    CreditsRelated90 *strc90 = TASK_DATA(gCurTask);
    s32 temp_r0_2;
    s32 temp_r0_3;
    u16 temp_r0_4;

    if (++strc90->unk6 >= 60) {
        strc90->unk8 += 0x100;

        gBgScrollRegs[0][0] = I(strc90->unk8);
        if (gBgScrollRegs[0][0] >= 120) {
            gBgScrollRegs[0][0] = 120;

            strc90->unk6 += 1;
            if (strc90->unk6 >= 120) {
                sub_80A98B0(1);
                TaskDestroy(gCurTask);
            }
        }
    }
}

void sub_80A8C80(void)
{
    CreditsRelated48_A *strc48A;
    Background *bg;

    gDispCnt = 0x1140;
    strc48A = TASK_DATA(TaskCreate(Task_48_A_80A8D24, sizeof(CreditsRelated48_A), 0x100, 0, TaskDestructor_48_A_80A9964));
    strc48A->unk2 = 0;
    strc48A->blendY = Q(0);
    strc48A->unk0 = 0;
    gBgCntRegs[0] = BGCNT_SCREENBASE(22) | 0x81;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    {
        Background *bg = &strc48A->bg;
        bg->graphics.dest = BG_CHAR_ADDR(0);
        bg->graphics.anim = 0;
        bg->layoutVram = BG_SCREEN_ADDR(22);
        bg->unk18 = 0;
        bg->unk1A = 0;
        bg->tilemapId = TM_UNKNOWN_307;
        bg->unk1E = 0;
        bg->unk20 = 0;
        bg->unk22 = 0;
        bg->unk24 = 0;
        bg->targetTilesX = 0x20;
        bg->targetTilesY = 0x20;
        bg->paletteOffset = 0;
        bg->flags = 4;
        DrawBackground(bg);
    }
}

void Task_48_A_80A8D24(void)
{
    CreditsRelated48_A *strc48_A = TASK_DATA(gCurTask);

    if (strc48_A->unk2 == 0) {
        gDispCnt |= DISPCNT_WIN0_ON;
        gWinRegs[WINREG_WIN0H] = WIN_RANGE(0, DISPLAY_WIDTH);
        gWinRegs[WINREG_WIN0V] = WIN_RANGE(0, DISPLAY_HEIGHT);
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FBF;
        gBldRegs.bldY = 0x10;
        strc48_A->blendY = Q(0x10);
        strc48_A->unk2 = 1U;
    }

    if (strc48_A->unk0 < 120) {
        strc48_A->unk0 += 1;
        return;
    }
    if (gBldRegs.bldY != 0) {
        gBldRegs.bldY = I(strc48_A->blendY);
        strc48_A->blendY -= 0x20;
        return;
    }
    strc48_A->unk0 = gBldRegs.bldY;
    gBldRegs.bldY = strc48_A->unk0;
    gCurTask->main = Task_48_A_80A9968;
}

void UNUSED Task_80A8DC4(void)
{
    CreditsRelated48_A *strc48_A = TASK_DATA(gCurTask);
    if (strc48_A->unk2 != 0) {
        gDispCnt |= DISPCNT_WIN0_ON;
        gWinRegs[WINREG_WIN0H] = WIN_RANGE(0, DISPLAY_WIDTH);
        gWinRegs[WINREG_WIN0V] = WIN_RANGE(0, DISPLAY_HEIGHT);
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FFF;
        strc48_A->blendY = 0U;
        strc48_A->unk2 = 0U;
    }

    if (gBldRegs.bldY < 0x10) {
        gBldRegs.bldY = I(strc48_A->blendY);
        strc48_A->blendY += Q(1);
    } else {
        gBldRegs.bldY = 0x10;
        CreateTitleScreen(1);
        TaskDestroy(gCurTask);
        return;
    }
}

void sub_80A8E54(void)
{
    Task *t = TaskCreate(Task_C_80A8ED0, sizeof(CreditsRelatedC), 0x100, 0, TaskDestructor_C_80A99CC);
    CreditsRelatedC *strcC = TASK_DATA(t);
    strcC->unk0 = 0;
    strcC->unk2 = 0;
    strcC->unk4 = 0;
    strcC->qUnk8 = 0xA000;

    gDispCnt |= DISPCNT_WIN0_ON;
    gWinRegs[WINREG_WIN0H] = WIN_RANGE(0, DISPLAY_WIDTH);
    gWinRegs[WINREG_WIN0V] = WIN_RANGE(0, DISPLAY_HEIGHT);
    gWinRegs[WINREG_WININ] = 0x2100;
    gWinRegs[WINREG_WINOUT] |= 0x1F;
    gWinRegs[WINREG_WIN0V] = (I(strcC->unk4) * WIN_RANGE(1, 1)) + I(strcC->qUnk8);
}

void Task_C_80A8ED0(void)
{
    CreditsRelatedC *strcC = TASK_DATA(gCurTask);

    if (strcC->qUnk8 > Q(gUnknown_080D9FCA[strcC->unk0])) {
        strcC->qUnk8 -= gUnknown_080D9FD0[strcC->unk0];
        if (strcC->qUnk8 <= Q(gUnknown_080D9FCA[strcC->unk0])) {
            strcC->unk0 += 1;
            if (strcC->qUnk8 <= 0 || strcC->qUnk8 >= 0xA000) {
                strcC->qUnk8 = 0;
                if (gStageData.playerIndex != 0) {
                    gStageData.unkC5 = 1;
                }
                sub_80260F0();
                sub_8001E84();
                TaskDestroy(gCurTask);
                return;
            }
        }
    } else {
        strcC->qUnk8 += gUnknown_080D9FD0[strcC->unk0];
        if (strcC->qUnk8 >= Q(gUnknown_080D9FCA[strcC->unk0])) {
            strcC->unk0 += 1;
        }
    }

    if (strcC->unk0 > 6) {
        strcC->unk0 = 6;
    }

    gWinRegs[WINREG_WIN0V] = (I(strcC->unk4) * WIN_RANGE(1, 1)) + I(strcC->qUnk8);
}

void sub_80A8F90(void)
{
    s32 sp4;
    TrueEndingGemerlCreamPlaying *strc6C;

    strc6C = TASK_DATA(TaskCreate(Task_6C_80A9118, sizeof(TrueEndingGemerlCreamPlaying), 0x100, 0, TaskDestructor_6C_80A9B68));
    strc6C->vram18 = OBJ_VRAM0;
    strc6C->unk0 = 0;
    strc6C->unk2 = 0;
    strc6C->unk10 = -Q(100);
    strc6C->unk14 = +Q(110);
    strc6C->unk8 = -Q(50);
    strc6C->unkC = +Q(110);

    DmaFill32(3, 0, BG_CHAR_ADDR_FROM_BGCNT(2), 0x40);

    gBgSprites_Unknown1[0] = 0;
    gBgSprites_Unknown2[0][0] = 0;
    gBgSprites_Unknown2[0][1] = 0;
    gBgSprites_Unknown2[0][2] = -1;
    gBgSprites_Unknown2[0][3] = 0x40;
    gBgSprites_Unknown1[1] = 0;
    gBgSprites_Unknown2[1][0] = 0;
    gBgSprites_Unknown2[1][1] = 0;
    gBgSprites_Unknown2[1][2] = -1;
    gBgSprites_Unknown2[1][3] = 0x40;
    gBgSprites_Unknown1[2] = 0;
    gBgSprites_Unknown2[2][0] = 0;
    gBgSprites_Unknown2[2][1] = 0;
    gBgSprites_Unknown2[2][2] = -1;
    gBgSprites_Unknown2[2][3] = 0x40;

    gBgPalette[0] = sub_80C4C0C(0);
    gFlags |= 1;

    sub_80A9068(strc6C);
}

void sub_80A9068(TrueEndingGemerlCreamPlaying *strc6C)
{
    {
        Sprite *s = &strc6C->gemerl;
        s->tiles = strc6C->vram18;
        strc6C->vram18 += 30 * TILE_SIZE_4BPP;
        s->anim = sTrueEndingPlayingGemerl[0].anim;
        s->variant = sTrueEndingPlayingGemerl[0].variant;
        s->prevVariant = 0xFF;
        s->x = I(strc6C->unk8);
        s->y = I(strc6C->unkC);
        s->oamFlags = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0x1400;
        s->hitboxes[0].index = -1;
        UpdateSpriteAnimation(s);
    }

    {
        Sprite *s = &strc6C->cream;
        s->tiles = strc6C->vram18;
        strc6C->vram18 += 25 * TILE_SIZE_4BPP;
        s->anim = sTrueEndingPlayingCream[0].anim;
        s->variant = sTrueEndingPlayingCream[0].variant;
        s->prevVariant = -1;
        s->x = I(strc6C->unk8);
        s->y = I(strc6C->unkC);
        s->oamFlags = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0x1400;
        s->hitboxes[0].index = -1;
        UpdateSpriteAnimation(s);
    }
}

void Task_6C_80A9118(void)
{
    TrueEndingGemerlCreamPlaying *strc6C = TASK_DATA(gCurTask);

    if (strc6C->unk2 < 240) {
        strc6C->unk2 += 1;
        return;
    }
    if (strc6C->unk4 != 0) {
        gDispCnt |= DISPCNT_WIN0_ON;
        gWinRegs[WINREG_WIN0H] = WIN_RANGE(0, DISPLAY_WIDTH);
        gWinRegs[WINREG_WIN0V] = WIN_RANGE(0, DISPLAY_HEIGHT);
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FFF;
        gBldRegs.bldY = 0x10;
        strc6C->unk6 = 0x1000;
        strc6C->unk4 = 0;
    }
    sub_80A9B24(strc6C);

    if (gBldRegs.bldY != 0) {
        gBldRegs.bldY = I(strc6C->unk6);
        strc6C->unk6 -= Q(1);
    } else {
        strc6C->unk2 = gBldRegs.bldY;
        gBldRegs.bldY = strc6C->unk2;
        gCurTask->main = Task_6C_80A91C4;
    }
}

void Task_6C_80A91C4(void)
{
    u8 var_r4 = 0;
    TrueEndingGemerlCreamPlaying *strc6C = TASK_DATA(gCurTask);

    if (sub_80A9A44(strc6C) == 1) {
        var_r4 += 1;
    }

    if (sub_80A9A74(strc6C) == 1) {
        var_r4 += 1;
    }

    if (var_r4 == 2) {
        {
            Sprite *s = &strc6C->gemerl;
            s->anim = sTrueEndingPlayingGemerl[1].anim;
            s->variant = sTrueEndingPlayingGemerl[1].variant;
            s->prevVariant = -1;
            UpdateSpriteAnimation(s);
        }

        {
            Sprite *s = &strc6C->cream;
            s->anim = sTrueEndingPlayingCream[1].anim;
            s->variant = sTrueEndingPlayingCream[1].variant;
            s->prevVariant = -1;
            UpdateSpriteAnimation(s);
        }

        strc6C->unk2 = 0;
        m4aSongNumStart(SE_670);
        gCurTask->main = Task_6C_80A925C;
    } else {
        sub_80A9B24(strc6C);
    }
}

void Task_6C_80A925C(void)
{
    TrueEndingGemerlCreamPlaying *strc6C = TASK_DATA(gCurTask);

    strc6C->unk2++;
    if ((strc6C->unk2 > 240) && (sub_80A9AA4(strc6C) == 1)) {
        {
            Sprite *s = &strc6C->gemerl;
            s->anim = sTrueEndingPlayingGemerl[2].anim;
            s->variant = sTrueEndingPlayingGemerl[2].variant;
            s->prevVariant = -1;
            UpdateSpriteAnimation(s);
        }

        {
            Sprite *s = &strc6C->cream;
            s->anim = sTrueEndingPlayingCream[2].anim;
            s->variant = sTrueEndingPlayingCream[2].variant;
            s->prevVariant = -1;
            UpdateSpriteAnimation(s);
        }

        strc6C->unk2 = 0;
        gCurTask->main = Task_6C_80A92E0;
    } else {
        sub_80A9B24(strc6C);
    }
}

void Task_6C_80A92E0(void)
{
    TrueEndingGemerlCreamPlaying *strc6C = TASK_DATA(gCurTask);

    sub_80A9B24(strc6C);

    strc6C->unk2 += 1;
    if (strc6C->unk2 > 0xB4) {
        {
            Sprite *s = &strc6C->gemerl;
            s->anim = sTrueEndingPlayingGemerl[3].anim;
            s->variant = sTrueEndingPlayingGemerl[3].variant;
            s->prevVariant = -1;
            UpdateSpriteAnimation(s);
        }
        {
            Sprite *s = &strc6C->cream;
            s->anim = sTrueEndingPlayingCream[3].anim;
            s->variant = sTrueEndingPlayingCream[3].variant;
            s->prevVariant = -1;
            UpdateSpriteAnimation(s);
        }
        gCurTask->main = Task_6C_80A9354;
    }
}

void Task_6C_80A9354(void)
{
    TrueEndingGemerlCreamPlaying *strc6C = TASK_DATA(gCurTask);

    if (sub_80A9B24(strc6C) == ACMD_RESULT__ENDED) {
        {
            Sprite *s = &strc6C->gemerl;
            s->anim = sTrueEndingPlayingGemerl[4].anim;
            s->variant = sTrueEndingPlayingGemerl[4].variant;
            s->prevVariant = -1;
            UpdateSpriteAnimation(s);
        }

        {
            Sprite *s = &strc6C->cream;
            s->anim = sTrueEndingPlayingCream[4].anim;
            s->variant = sTrueEndingPlayingCream[4].variant;
            s->prevVariant = -1;
            UpdateSpriteAnimation(s);
        }

        strc6C->unk2 = 0;
        gCurTask->main = Task_6C_80A99D0;
    }
}

void Task_E04_80A93C8(void)
{
    CreditsRelatedE04 *strcE04 = TASK_DATA(gCurTask);
    ColorRaw paletteSP[2][16 * PALETTE_LEN_4BPP];
    u16 i;

    if (strcE04->unk0 != 0) {
        CpuFastCopy(Palette_unknown_318, paletteSP[0], sizeof(paletteSP[0]));
        CpuFastCopy(Palette_unknown_319, paletteSP[1], sizeof(paletteSP[1]));
    } else {
        CpuFastCopy(Palette_unknown_307, paletteSP[0], sizeof(paletteSP[0]));
        CpuFastCopy(Palette_unknown_308, paletteSP[1], sizeof(paletteSP[1]));
    }

    for (i = 0; i < ARRAY_COUNT(strcE04->palette204); i++) {
        strcE04->palette204[i][R_CHANNEL] = (R_GET_2(paletteSP[1][i]) - R_GET_2(paletteSP[0][i])) << 4;
        strcE04->palette204[i][G_CHANNEL] = (G_GET_2(paletteSP[1][i]) - G_GET_2(paletteSP[0][i])) << 4;
        strcE04->palette204[i][B_CHANNEL] = (B_GET_2(paletteSP[1][i]) - B_GET_2(paletteSP[0][i])) << 4;
    }

    gCurTask->main = Task_E04_80A94EC;
}

void Task_E04_80A94EC(void)
{
    CreditsRelatedE04 *strcE04 = TASK_DATA(gCurTask);
    ColorRaw paletteSP[2][16 * PALETTE_LEN_4BPP];
    u16 i;

    if (strcE04->unk0 != 0) {
        CpuFastCopy(Palette_unknown_318, paletteSP[0], sizeof(paletteSP[0]));
        CpuFastCopy(Palette_unknown_319, paletteSP[1], sizeof(paletteSP[1]));
    } else {
        CpuFastCopy(Palette_unknown_307, paletteSP[0], sizeof(paletteSP[0]));
        CpuFastCopy(Palette_unknown_308, paletteSP[1], sizeof(paletteSP[1]));
    }

    if (++strcE04->delay < 11) {
        return;
    }
    if (strcE04->unk1 == 0x10) {
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();
        sub_80ABD44(strcE04->unk0);
        return;
    }

    for (i = 0; i < ARRAY_COUNT(strcE04->palette204); i++) {
        u8 rgb[3] = { 0 };
        rgb[R_CHANNEL] = ((R_GET_2(strcE04->palette4[i]) << 8) + (strcE04->palette204[i][R_CHANNEL] * strcE04->unk1)) >> 8;
        rgb[G_CHANNEL] = ((G_GET_2(strcE04->palette4[i]) << 8) + (strcE04->palette204[i][G_CHANNEL] * strcE04->unk1)) >> 8;
        rgb[B_CHANNEL] = ((B_GET_2(strcE04->palette4[i]) << 8) + (strcE04->palette204[i][B_CHANNEL] * strcE04->unk1)) >> 8;
        gBgPalette[i] = sub_80C4C0C(((rgb[0] << R_SHIFT) | (rgb[1] << G_SHIFT) | (rgb[2] << B_SHIFT)));
    }

    gFlags |= FLAGS_UPDATE_BACKGROUND_PALETTES;

    strcE04->delay = 0;
    strcE04->unk1 += 1;
}

// NOTE: This is probably for the in-between gameplay scenes in the credits!
void Task_48_B_80A9684(void)
{
    CreditsRelated48_B *strc48_B = TASK_DATA(gCurTask);

    gStageData.playerIndex = 0;
    CURRENT_GAME_MODE = GAME_MODE_CREDITS_DEMO;
    gStageData.act = gUnknown_080DA034[strc48_B->unk1][1];
    CURRENT_LEVEL = gUnknown_080DA034[strc48_B->unk1][0];
    gStageData.zone = gUnknown_080DA034[strc48_B->unk1][0] / ACTS_PER_ZONE;
    gStageData.warpId = 1;
    sub_800214C();

    gPlayers[PLAYER_1].charFlags.partnerIndex = PLAYER_2;
    gPlayers[PLAYER_1].charFlags.character = SONIC;
    gPlayers[PLAYER_1].charFlags.someIndex = 4;
    gPlayers[PLAYER_2].charFlags.partnerIndex = PLAYER_1;
    gPlayers[PLAYER_2].charFlags.character = gUnknown_080DA034[strc48_B->unk1][2];
    gPlayers[PLAYER_2].charFlags.someIndex = 2;
    gPlayers[PLAYER_3].charFlags.someIndex = 0;
    gPlayers[PLAYER_4].charFlags.someIndex = 0;

    WarpToMap(CURRENT_LEVEL, 1);
}

void Task_Unk_80A9798(void)
{
    // TODO: This is probably actually using a different struct!
    CreditsRelatedUnknown *temp_r1 = TASK_DATA(gCurTask);

    if (temp_r1->unk0 == 0) {
        gDispCnt |= DISPCNT_WIN1_ON;
        gWinRegs[WINREG_WIN1H] = WIN_RANGE(0, DISPLAY_WIDTH);
        gWinRegs[WINREG_WIN1V] = WIN_RANGE(0, DISPLAY_HEIGHT);
        gWinRegs[4] = 0x3FFF;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FFF;
        gBldRegs.bldY = 0x10;
        temp_r1->unk0 = 1U;
        temp_r1->unk6 = 0x1000U;
    }
    if (gBldRegs.bldY != 0) {
        gBldRegs.bldY = I(temp_r1->unk6);
        temp_r1->unk6 -= Q(1);
        return;
    }
    gBldRegs.bldY = gBldRegs.bldY;
    gCurTask->main = Task_Unk_80A9B74;
}

void Task_Unk_80A9824(void)
{
    // TODO: This is probably actually using a different struct!
    CreditsRelatedUnknown *temp_r1 = TASK_DATA(gCurTask);

    if (temp_r1->unk0 != 0) {
        gDispCnt |= 0x4000;
        gWinRegs[WINREG_WIN1H] = WIN_RANGE(0, DISPLAY_WIDTH);
        gWinRegs[WINREG_WIN1V] = WIN_RANGE(0, DISPLAY_HEIGHT);
        gWinRegs[4] = 0x3FFF;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FFF;
        temp_r1->unk0 = 0U;
        temp_r1->unk6 = 0U;
    }

    if ((u32)gBldRegs.bldY < 0x10) {
        gBldRegs.bldY = I(temp_r1->unk6);
        temp_r1->unk6 += Q(1);
        return;
    }

    gCurTask->main = Task_Unk_80A9BA8;
}

void TaskDestructor_90_80A98AC(Task *arg0) { }

void sub_80A98B0(u8 arg0)
{
    CreditsRelatedE04 *strcE04 = TASK_DATA(TaskCreate(Task_E04_80A93C8, sizeof(CreditsRelatedE04), 0x100, 0, TaskDestructor_E04_80A9B6C));
    strcE04->unk0 = arg0;
    strcE04->unk1 = 0;
    strcE04->delay = 0;

    if (arg0 != 0) {
        CpuFastCopy(&Palette_unknown_318, strcE04->palette4, sizeof(strcE04->palette4));
    } else {
        CpuFastCopy(&Palette_unknown_307, strcE04->palette4, sizeof(strcE04->palette4));
    }
}

void sub_80A9920(u8 arg0)
{
    CreditsRelated48_B *strc48_B
        = TASK_DATA(TaskCreate(Task_48_B_80A9684, sizeof(CreditsRelated48_B), 0x2100, 0, TaskDestructor_48_B_80A9B70));
    strc48_B->unk2 = arg0;
    strc48_B->unk1 = (arg0 - 12);
    strc48_B->unk4 = 0;
    strc48_B->unk0 = 0;
    strc48_B->unk6 = 0;
}

void TaskDestructor_48_A_80A9964(Task *arg0) { }

void Task_48_A_80A9968(void)
{
    CreditsRelated48_A *strc48_A = TASK_DATA(gCurTask);

    if (++strc48_A->unk0 > 0xB3) {
        sub_80A98B0(0);
        TaskDestroy(gCurTask);
    }
}

// NOTE: Parameter type is a guess!
bool32 sub_80A99C8(CreditsRelated48_A *strc48_A);
void sub_80A999C(void)
{
    CreditsRelated48_A *strc48_A = TASK_DATA(gCurTask);
    if (sub_80A99C8(strc48_A) == 1) {
        sub_80ABD44(0);
        TaskDestroy(gCurTask);
    }
}

// NOTE: Parameter type is a guess!
bool32 sub_80A99C8(CreditsRelated48_A *strc48_A) { return 1; }

void TaskDestructor_C_80A99CC(Task *t) { }

#else
// continue here

#if 0
void Task_6C_80A99D0(CreditsRelated248 *strc248)
{
    u16 temp_r0;
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    sub_80A9B24(temp_r1);
    if (sub_80A9AD8(temp_r1) == 1) {
        temp_r0 = temp_r1->unk2;
        if ((u32)temp_r0 <= 0x77) {
            temp_r1->unk2 = (u16)(temp_r0 + 1);
        }
        if (temp_r1->unk2 == 0x78) {
            sub_80AA270(0, temp_r1->unk18);
            gCurTask->main = sub_80A9A1C;
        }
    }
}

void sub_80A9A1C(CreditsRelated248 *strc248)
{
    if (sub_80A9AD8(gCurTask->data) == 1) {
        TaskDestroy(gCurTask);
    }
}

s32 sub_80A9A44(void *arg0)
{
    s32 temp_r0;
    s32 temp_r0_2;

    temp_r0 = arg0->unk10;
    if ((temp_r0 > 0x77FF) || (temp_r0_2 = temp_r0 + 0x180, arg0->unk10 = temp_r0_2, (temp_r0_2 > 0x77FF))) {
        arg0->unk10 = 0x7800;
        return 1;
    }
    return 0;
}

s32 sub_80A9A74(void *arg0)
{
    s32 temp_r0;
    s32 temp_r0_2;

    temp_r0 = arg0->unk8;
    if ((temp_r0 > 0x121FF) || (temp_r0_2 = temp_r0 + 0x280, arg0->unk8 = temp_r0_2, (temp_r0_2 > 0x121FF))) {
        arg0->unk8 = 0x12200;
        return 1;
    }
    return 0;
}

s32 sub_80A9AA4(void *arg0)
{
    s32 temp_r0;
    s32 temp_r0_2;

    temp_r0 = arg0->unk8;
    if (temp_r0 > 0) {
        temp_r0_2 = temp_r0 + 0xFFFFFF00;
        arg0->unk8 = temp_r0_2;
        if (temp_r0_2 <= 0x8F00) {
            arg0->unk8 = 0x8F00;
            return 1;
        }
        return 0;
    }
    arg0->unk8 = 0x8F00;
    return 1;
}

s32 sub_80A9AD8(void *arg0)
{
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    u8 var_r2;

    var_r2 = 0;
    temp_r0 = arg0->unk8;
    if ((temp_r0 > 0x121FF) || (temp_r0_2 = temp_r0 + 0x140, arg0->unk8 = temp_r0_2, (temp_r0_2 > 0x121FF))) {
        var_r2 = 1;
    }
    temp_r0_3 = arg0->unk10;
    if ((temp_r0_3 > 0x121FF) || (arg0->unk10 = (s32)(temp_r0_3 + 0x140), ((s32)arg0->unk8 > 0x121FF))) {
        var_r2 += 1;
    }
    if (var_r2 != 2) {
        return 0;
    }
    return 1;
}

s16 sub_80A9B24(void *arg0)
{
    Sprite *temp_r4;
    Sprite *temp_r4_2;
    s32 temp_r5;

    temp_r4 = arg0 + 0x1C;
    temp_r4->x = (s16)((s32)arg0->unk8 >> 8);
    temp_r4->y = (s16)((s32)arg0->unkC >> 8);
    UpdateSpriteAnimation(temp_r4);
    DisplaySprite(temp_r4);
    temp_r4_2 = temp_r4 + 0x28;
    temp_r4_2->x = (s16)((s32)arg0->unk10 >> 8);
    temp_r4_2->y = (s16)((s32)arg0->unk14 >> 8);
    temp_r5 = UpdateSpriteAnimation(temp_r4_2);
    DisplaySprite(temp_r4_2);
    return (s16)temp_r5;
}

void TaskDestructor_6C_80A9B68(Task *arg0) { }

void TaskDestructor_E04_80A9B6C(Task *arg0) { }

void TaskDestructor_48_B_80A9B70(Task *arg0) { }

void Task_Unk_80A9B74(CreditsRelated248 *strc248)
{
    u16 temp_r0;
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    temp_r0 = temp_r1->unk4 + 1;
    temp_r1->unk4 = temp_r0;
    if ((s32)(temp_r0 << 0x10) > 0x02570000) {
        temp_r1->unk4 = 0U;
        gCurTask->main = Task_Unk_80A9824;
    }
}

void Task_Unk_80A9BA8(CreditsRelated248 *strc248)
{
    u16 temp_r1;
    u8 temp_r0;

    temp_r1 = gCurTask->data;
    temp_r1->unk2++;
    CreateCredRelatedStrc90((temp_r1->unk2 - 10));
    TaskDestroy(gCurTask);
}

s32 sub_80A9BD8(s32 arg0, s32 arg1, s32 arg2, u8 arg3, u8 *arg4)
{
    Sprite *temp_r2_2;
    s8 var_r1;
    u16 temp_r2;
    u8 temp_r3;

    temp_r3 = arg3;
    temp_r2 = TaskCreate(Task_40_A_80AB818, 0x40, 0x100, 0, TaskDestructor_40_A_80AB814)->data;
    temp_r2->unk6 = 0;
    var_r1 = -1;
    if (1 & temp_r3) {
        var_r1 = 1;
    }
    temp_r2->unk5 = var_r1;
    temp_r2->unk4 = temp_r3;
    temp_r2->unkC = arg0;
    temp_r2->unk8 = 0;
    temp_r2->unk10 = (s32)(arg1 << 8);
    temp_r2->unk14 = (s32)(arg2 << 8);
    temp_r2->unk0 = arg4;
    temp_r2_2 = temp_r2 + 0x18;
    temp_r2->unk18 = arg0;
    temp_r2->unkC = (s32)(temp_r2->unkC + 0x80);
    temp_r2_2->anim = gUnknown_080DA284.unk0;
    temp_r2_2->variant = gUnknown_080DA284.unk2;
    temp_r2_2->prevVariant = -1;
    temp_r2_2->x = 0;
    temp_r2_2->y = 0;
    temp_r2_2->oamFlags = 0x200;
    temp_r2_2->animCursor = 0;
    temp_r2_2->qAnimDelay = 0;
    temp_r2_2->animSpeed = 0x10;
    temp_r2_2->palId = 0;
    temp_r2_2->frameFlags = 0;
    if (temp_r2->unk5 == 1) {
        temp_r2_2->frameFlags = 0x400;
    } else {
        temp_r2_2->frameFlags = 0;
    }
    UpdateSpriteAnimation(temp_r2_2);
    return temp_r2->unkC;
}

s32 sub_80A9CA0(void *arg0)
{
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r3;
    s32 temp_r3_2;
    s32 temp_r4_2;
    s32 temp_r5;
    u8 temp_r0;
    u8 temp_r1;
    u8 var_r0;
    u8 var_r7;
    void *temp_r4;

    var_r7 = 0;
    temp_r4 = arg0 + 0x18;
    temp_r3 = arg0->unk10;
    temp_r5 = temp_r3 >> 8;
    temp_r0 = *((arg0->unk4 * 2) + &gUnknown_080DA28C);
    if (temp_r5 < (s32)temp_r0) {
        arg0->unk10 = (s32)(temp_r3 + 0x100);
        temp_r4->unk8 = (s32)(temp_r4->unk8 | 0x400);
        var_r0 = *((arg0->unk4 * 2) + &gUnknown_080DA28C);
        if ((s32)((s32)arg0->unk10 >> 8) >= (s32)var_r0) {
            goto block_5;
        }
    } else if (temp_r5 > (s32)temp_r0) {
        arg0->unk10 = (s32)(temp_r3 + 0xFFFFFF00);
        temp_r4->unk8 = (s32)(temp_r4->unk8 & 0xFFFFFBFF);
        var_r0 = *((arg0->unk4 * 2) + &gUnknown_080DA28C);
        if ((s32)((s32)arg0->unk10 >> 8) <= (s32)var_r0) {
        block_5:
            arg0->unk10 = (s32)(var_r0 << 8);
        }
    } else {
        arg0->unk10 = (s32)(temp_r0 << 8);
        var_r7 = 1;
    }
    temp_r3_2 = arg0->unk14;
    temp_r4_2 = temp_r3_2 >> 8;
    temp_r1 = *((arg0->unk4 * 2) + (&gUnknown_080DA28C + 1));
    if (temp_r4_2 < (s32)temp_r1) {
        temp_r0_2 = temp_r3_2 + 0x100;
        arg0->unk14 = temp_r0_2;
        if ((s32)(temp_r0_2 >> 8) >= (s32)temp_r1) {
            goto block_12;
        }
    } else if (temp_r4_2 > (s32)temp_r1) {
        temp_r0_3 = temp_r3_2 + 0xFFFFFF00;
        arg0->unk14 = temp_r0_3;
        if ((s32)(temp_r0_3 >> 8) <= (s32)temp_r1) {
        block_12:
            arg0->unk14 = (s32)(temp_r1 << 8);
        }
    } else {
        arg0->unk14 = (s32)(temp_r1 << 8);
        var_r7 += 1;
    }
    if (var_r7 != 2) {
        return 0;
    }
    return 1;
}

void sub_80A9D78(void *arg0)
{
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 var_r0_2;
    s8 var_r0;
    u16 temp_r3;
    u8 temp_r1;
    void *temp_r4;

    temp_r4 = arg0 + 0x18;
    temp_r1 = arg0->unk4;
    temp_r2 = *((temp_r1 * 2) + &gUnknown_080DA28C) << 8;
    temp_r0 = *(temp_r1 + &gUnknown_080DA2AA) << 8;
    temp_r0_2 = arg0->unk10;
    if (temp_r0_2 <= (s32)(temp_r2 - temp_r0)) {
        var_r0 = 1;
        goto block_4;
    }
    if (temp_r0_2 >= (s32)(temp_r2 + temp_r0)) {
        var_r0 = -1;
    block_4:
        arg0->unk5 = var_r0;
    }
    if ((s32)arg0->unk5 > 0) {
        var_r0_2 = temp_r4->unk8 | 0x400;
    } else {
        var_r0_2 = temp_r4->unk8 & 0xFFFFFBFF;
    }
    temp_r4->unk8 = var_r0_2;
    arg0->unk10 = (s32)(arg0->unk10 + (arg0->unk5 << 8));
    temp_r2_2 = *((arg0->unk4 * 2) + (&gUnknown_080DA28C + 1)) << 8;
    arg0->unk14 = temp_r2_2;
    temp_r3 = arg0->unk8;
    arg0->unk14 = (s32)(temp_r2_2 + (((s32)(*(((u8)((s32)(temp_r3 << 0x10) >> 0x14) * 8) + gSineTable) << 0x10) >> 0x16) * 0x10));
    arg0->unk8 = (u16)(temp_r3 + (*(arg0->unk4 + &gUnknown_080DA2B9) * 0x10));
}

s32 sub_80A9E24(u8 *arg0, s32 arg1)
{
    Sprite *temp_r0_2;
    u16 temp_r0;

    temp_r0 = TaskCreate(Task_40_B_80A9EB4, 0x40, 0x100, 0, TaskDestructor_40_B_80AB8F8)->data;
    temp_r0->unk0 = arg0;
    temp_r0->unk4 = 0;
    temp_r0->unk6 = 0;
    temp_r0->unk8 = 0;
    temp_r0->unkC = arg1;
    temp_r0->unk10 = 0xFFFFCE00;
    temp_r0->unk14 = 0x3C00;
    temp_r0_2 = temp_r0 + 0x18;
    temp_r0->unk18 = arg1;
    temp_r0->unkC = (s32)(temp_r0->unkC + 0x280);
    temp_r0_2->anim = gUnknown_080DA06C.unk0;
    temp_r0_2->variant = gUnknown_080DA06C.unk2;
    temp_r0_2->prevVariant = -1;
    temp_r0_2->x = 0;
    temp_r0_2->y = 0;
    temp_r0_2->oamFlags = 0x40;
    temp_r0_2->animCursor = 0;
    temp_r0_2->qAnimDelay = 0;
    temp_r0_2->animSpeed = 0x10;
    temp_r0_2->palId = 0;
    temp_r0_2->frameFlags = 0;
    UpdateSpriteAnimation(temp_r0_2);
    return temp_r0->unkC;
}

void Task_40_B_80A9EB4(CreditsRelated150 *arg7C, s32 argFC, CreditsRelated150 **argFD)
{
    Sprite *temp_r4_2;
    u16 temp_r0;
    u16 temp_r4;

    temp_r4 = gCurTask->data;
    sub_80AB8B0(temp_r4);
    temp_r4_2 = temp_r4 + 0x18;
    temp_r4_2->x = (s16)((s32)temp_r4->unk10 >> 8);
    temp_r4_2->y = (s16)((s32)temp_r4->unk14 >> 8);
    UpdateSpriteAnimation(temp_r4_2);
    DisplaySprite(temp_r4_2);
    temp_r0 = temp_r4->unk8 + 1;
    temp_r4->unk8 = temp_r0;
    if (temp_r0 == 0x78) {
        *temp_r4->unk0 = 0x12;
    }
    if ((u32)temp_r4->unk8 > 0xB3) {
        temp_r4_2->anim = gUnknown_080DA06C.unk8;
        temp_r4_2->variant = gUnknown_080DA06C.unkA;
        temp_r4_2->prevVariant = -1;
        temp_r4_2->x = 0;
        temp_r4_2->y = 0;
        UpdateSpriteAnimation(temp_r4_2);
        temp_r4->unk8 = 0U;
        gCurTask->main = sub_80A9F38;
    }
}

void sub_80A9F38(CreditsRelated248 *strc248)
{
    Sprite *temp_r5_2;
    u16 temp_r0;
    u16 temp_r5;

    temp_r5 = gCurTask->data;
    sub_80AB8B0(temp_r5);
    temp_r5_2 = temp_r5 + 0x18;
    temp_r5_2->x = (s16)((s32)temp_r5->unk10 >> 8);
    temp_r5_2->y = (s16)((s32)temp_r5->unk14 >> 8);
    UpdateSpriteAnimation(temp_r5_2);
    DisplaySprite(temp_r5_2);
    temp_r0 = temp_r5->unk8 + 1;
    temp_r5->unk8 = temp_r0;
    if ((u32)temp_r0 > 0x1D) {
        temp_r5_2->anim = gUnknown_080DA06C.unk10;
        temp_r5_2->variant = gUnknown_080DA06C.unk12;
        temp_r5_2->prevVariant = -1;
        temp_r5_2->x = 0;
        temp_r5_2->y = 0;
        UpdateSpriteAnimation(temp_r5_2);
        gCurTask->main = sub_80A9FAC;
    }
}

void sub_80A9FAC(CreditsRelated248 *strc248)
{
    Sprite *temp_r4_2;
    s32 temp_r5;
    u16 temp_r0;
    u16 temp_r4;
    u8 temp_r3;

    temp_r4 = gCurTask->data;
    temp_r4_2 = temp_r4 + 0x18;
    temp_r4_2->x = (s16)((s32)temp_r4->unk10 >> 8);
    temp_r4_2->y = (s16)((s32)temp_r4->unk14 >> 8);
    temp_r5 = UpdateSpriteAnimation(temp_r4_2);
    DisplaySprite(temp_r4_2);
    if (temp_r5 != ACMD_RESULT__RUNNING) {
        temp_r3 = temp_r4->unk4;
        if (temp_r3 == 0) {
            gDispCnt |= DISPCNT_WIN0_ON;
            gWinRegs[WINREG_WIN0H] = WIN_RANGE(0, DISPLAY_WIDTH);
            gWinRegs[WINREG_WIN0V] = WIN_RANGE(0, DISPLAY_HEIGHT);
            gWinRegs[4] = 0x3FFF;
            gWinRegs[5] |= 0x1F;
            gBldRegs.bldCnt = 0x3FBF;
            gBldRegs.bldY = (u16)temp_r3;
            temp_r4->unk6 = (u16)temp_r3;
            temp_r4->unk4 = 1U;
            m4aSongNumStart(0x29D);
        }
        if ((u32)gBldRegs.bldY <= 0xF) {
            temp_r0 = temp_r4->unk6 + 0x100;
            temp_r4->unk6 = temp_r0;
            gBldRegs.bldY = (u16)((u32)(temp_r0 << 0x10) >> 0x18);
            return;
        }
        gBldRegs.bldY = 0x10;
        *temp_r4->unk0 = 0x16;
        TaskDestroy(gCurTask);
    }
}

u8 *sub_80AA06C(u8 *arg0, u8 *arg1)
{
    ? *sp4;
    ? *sp8;
    ? *var_r3;
    Sprite *temp_r0;
    Sprite *temp_r0_2;
    Sprite *temp_r4_2;
    s32 temp_r2;
    s32 temp_r6;
    u16 temp_r4;
    u8 *var_r6;
    u8 var_r4;
    void *temp_r2_2;

    temp_r4 = TaskCreate(Task_100_80AB8FC, 0x100, 0x100, 0, Task_100_80AB98C)->data;
    temp_r4->unk0 = arg0;
    temp_r4->unk4 = 0;
    temp_r4->unk8 = -0xD200;
    temp_r4->unkC = 0x1C00;
    temp_r0 = temp_r4 + 0xB0;
    temp_r4->unkB0 = arg1;
    temp_r6 = arg1 + (gUnknown_080DBA94.unkC << 5);
    temp_r0->anim = gUnknown_080DBA94.unk8;
    temp_r0->variant = gUnknown_080DBA94.unkA;
    temp_r0->prevVariant = -1;
    temp_r0->x = (s16)((s32)temp_r4->unk8 >> 8);
    temp_r0->y = (s16)((s32)temp_r4->unkC >> 8);
    temp_r0->oamFlags = 0x140;
    temp_r0->animCursor = 0;
    temp_r0->qAnimDelay = 0;
    temp_r0->animSpeed = 0x10;
    temp_r0->palId = 0;
    temp_r0->frameFlags = 0;
    sp4 = &gUnknown_080DBA94;
    UpdateSpriteAnimation(temp_r0);
    temp_r4_2 = temp_r4 + 0xD8;
    temp_r4->unkD8 = temp_r6;
    var_r6 = temp_r6 + (gUnknown_080DBA94.unk4 << 5);
    temp_r4_2->anim = gUnknown_080DBA94.unk0;
    temp_r4_2->variant = gUnknown_080DBA94.unk2;
    temp_r4_2->prevVariant = -1;
    temp_r4_2->x = (s16)((s32)temp_r4->unk8 >> 8);
    temp_r4_2->y = (s16)((s32)temp_r4->unkC >> 8);
    temp_r4_2->oamFlags = 0x140;
    temp_r4_2->animCursor = 0;
    temp_r4_2->qAnimDelay = 0;
    temp_r4_2->animSpeed = 0x10;
    temp_r4_2->palId = 0;
    temp_r4_2->frameFlags = 0;
    UpdateSpriteAnimation(temp_r4_2);
    var_r4 = 0;
    var_r3 = &gUnknown_080DA2C8;
    do {
        temp_r0_2 = temp_r4 + ((var_r4 * 0x28) + 0x10);
        temp_r0_2->tiles = var_r6;
        temp_r2 = var_r4 * 8;
        var_r6 += *(temp_r2 + (var_r3 + 4)) << 5;
        temp_r2_2 = temp_r2 + var_r3;
        temp_r0_2->anim = temp_r2_2->unk0;
        temp_r0_2->variant = temp_r2_2->unk2;
        temp_r0_2->prevVariant = -1;
        temp_r0_2->x = (s16)((s32)temp_r4->unk8 >> 8);
        temp_r0_2->y = (s16)((s32)temp_r4->unkC >> 8);
        temp_r0_2->oamFlags = 0;
        temp_r0_2->animCursor = 0;
        temp_r0_2->qAnimDelay = 0;
        temp_r0_2->animSpeed = 0x10;
        temp_r0_2->palId = 0;
        temp_r0_2->frameFlags = 0;
        sp8 = var_r3;
        UpdateSpriteAnimation(temp_r0_2);
        var_r4 += 1;
    } while ((u32)var_r4 <= 3);
    return var_r6;
}

void sub_80AA1BC(void *arg0)
{
    s32 sp0;
    Sprite *temp_r0;
    Sprite *temp_r4;
    Sprite *temp_r4_2;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r2;
    u16 var_r7;
    u8 var_r5;
    u8 var_r5_2;

    var_r7 = 0;
    var_r5 = 0;
    temp_r4 = arg0 + 0xD8;
    do {
        temp_r1 = (s32)arg0->unk8 >> 8;
        temp_r4->x = (s16)temp_r1;
        temp_r4->y = (s16)((s32)arg0->unkC >> 8);
        temp_r4->x = var_r7 + temp_r1;
        temp_r4->frameFlags &= 0xFFFFFBFF;
        temp_r4->palId = 0;
        sp0 = 0xFFFFFBFF;
        DisplaySprite(temp_r4);
        var_r7 += 0x40;
        var_r5 += 1;
    } while ((u32)var_r5 <= 2);
    temp_r0 = arg0 + 0xB0;
    temp_r2 = (s32)arg0->unk8 >> 8;
    temp_r0->x = (s16)temp_r2;
    temp_r0->y = (s16)((s32)arg0->unkC >> 8);
    temp_r0->x = var_r7 + temp_r2;
    temp_r0->frameFlags &= 0xFFFFFBFF;
    temp_r0->palId = 0;
    DisplaySprite(temp_r0);
    var_r5_2 = 0;
    do {
        temp_r4_2 = arg0 + ((var_r5_2 * 0x28) + 0x10);
        temp_r1_2 = (s32)arg0->unk8 >> 8;
        temp_r4_2->x = (s16)temp_r1_2;
        temp_r4_2->x = temp_r1_2 + 0x3A;
        temp_r4_2->y = ((s32)arg0->unkC >> 8) + 0x28;
        UpdateSpriteAnimation(temp_r4_2);
        DisplaySprite(temp_r4_2);
        var_r5_2 += 1;
    } while ((u32)var_r5_2 <= 3);
}

s32 sub_80AA270(s32 arg0, s32 arg1)
{
    s32 sp4;
    Background *temp_r0;
    u16 temp_r6;

    gDispCnt = 0x1041;
    temp_r6 = TaskCreate(Task_54_80AA384, 0x54, 0x100, 0, TaskDestructor_54_80AB990)->data;
    temp_r6->unk0 = arg0;
    temp_r6->unk8 = 0;
    temp_r6->unk4 = 0;
    temp_r6->unk6 = 0;
    temp_r6->unkC = 0;
    temp_r6->unk10 = 0;
    sp4 = 0;
    (void *)0x040000D4->unk0 = &sp4;
    (void *)0x040000D4->unk4 = (s32)(((0xC & gBgCntRegs[2]) << 0xC) + 0x06000000);
    (void *)0x040000D4->unk8 = 0x85000010;
    gBgSprites_Unknown1[3] = 0;
    gBgSprites_Unknown2[3][0] = 0;
    gBgSprites_Unknown2[3][1] = 0;
    gBgSprites_Unknown2[3][2] = 0xFF;
    gBgSprites_Unknown2[3][3] = 0x40;
    gBgSprites_Unknown1[2] = 0;
    gBgSprites_Unknown2[2][0] = 0;
    gBgSprites_Unknown2[2][1] = 0;
    gBgSprites_Unknown2[2][2] = -1;
    gBgSprites_Unknown2[2][3] = 0x40;
    gBgSprites_Unknown1[1] = 0;
    gBgSprites_Unknown2[1][0] = 0;
    gBgSprites_Unknown2[1][1] = 0;
    gBgSprites_Unknown2[1][2] = -1;
    gBgSprites_Unknown2[1][3] = 0x40;
    gBgCntRegs->unk0 = 0x4E07;
    gBgScrollRegs[0][0] = 0;
    temp_r0 = temp_r6 + 0x14;
    temp_r0->graphics.dest = (void *)0x06004000;
    temp_r0->graphics.anim = 0;
    temp_r0->layoutVram = (u16 *)0x06007000;
    temp_r0->unk18 = 0;
    temp_r0->unk1A = 0;
    temp_r0->tilemapId = 0x140;
    temp_r0->unk1E = 0;
    temp_r0->unk20 = 0;
    temp_r0->unk22 = 0;
    temp_r0->unk24 = 0;
    temp_r0->targetTilesX = 0x20;
    temp_r0->targetTilesY = 0x20;
    temp_r6->unk3E = 0;
    temp_r0->flags = 0;
    DrawBackground(temp_r0);
    return arg1;
}

void Task_54_80AA384(CreditsRelated150 *arg7C, s32 argFC, CreditsRelated150 **argFD)
{
    u16 temp_r1;
    u16 temp_r4;

    temp_r1 = gCurTask->data;
    temp_r4 = temp_r1->unk4;
    if (temp_r4 == 0) {
        gDispCnt |= DISPCNT_WIN0_ON;
        gWinRegs[WINREG_WIN0H] = WIN_RANGE(0, DISPLAY_WIDTH);
        gWinRegs[WINREG_WIN0V] = WIN_RANGE(0, DISPLAY_HEIGHT);
        gWinRegs[4] = 0x31;
        gWinRegs[5] = temp_r4;
        gBldRegs.bldCnt = 0x1C1;
        gBldRegs.bldY = 0x10;
        temp_r1->unk6 = 0x1000U;
        temp_r1->unk4 = 1U;
        gDispCnt = 0x1141;
    }
    if (gBldRegs.bldY != 0) {
        gBldRegs.bldY = I(temp_r1->unk6);
        temp_r1->unk6 = (u16)(temp_r1->unk6 - 0x40);
        return;
    }
    gBldRegs.bldY = gBldRegs.bldY;
    gCurTask->main = sub_80AB994;
}

void sub_80AA410(CreditsRelated248 *strc248)
{
    u16 temp_r0;
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    if (temp_r1->unk4 != 0) {
        gDispCnt |= DISPCNT_WIN0_ON;
        gWinRegs[WINREG_WIN0H] = WIN_RANGE(0, DISPLAY_WIDTH);
        gWinRegs[WINREG_WIN0V] = WIN_RANGE(0, DISPLAY_HEIGHT);
        gWinRegs[4] = 0x31;
        gWinRegs[5] = 0;
        gBldRegs.bldCnt = 0x1C1;
        temp_r1->unk6 = 0U;
        temp_r1->unk4 = 0U;
        gBldRegs.bldY = 0;
    }
    if ((u32)gBldRegs.bldY <= 0xF) {
        gBldRegs.bldY = I(temp_r1->unk6);
        temp_r1->unk6 = (u16)(temp_r1->unk6 + 0x40);
        return;
    }
    gBldRegs.bldY = 0x10;
    temp_r0 = temp_r1->unk8 + 1;
    temp_r1->unk8 = temp_r0;
    if ((u32)temp_r0 > 0xB4) {
        gCurTask->main = sub_80AA49C;
    }
}

void sub_80AA49C(CreditsRelated248 *strc248)
{
    u8 var_r0;
    u8 var_r0_2;
    u8 var_r2;
    u8 var_r5;

    var_r5 = 0;
    var_r0 = 0;
    do {
        var_r2 = 0;
    loop_2:
        if (4 & gLoadedSaveGame.collectedMedals[0][var_r2 + (var_r0 * 4)]) {
            var_r5 += 1;
        }
        var_r2 += 1;
        if ((u32)var_r2 <= 3) {
            goto loop_2;
        }
        var_r0 += 1;
    } while ((u32)var_r0 <= 6);
    if (((3 & gLoadedSaveGame.unlockFlags) == 3) || ((gStageData.gameMode == 5) && (gStageData.unkC5 == 1)) || (gStageData.unkC5 == 1)) {
        LaunchGameIntro();
        goto block_17;
    }
    if (!(1 & gLoadedSaveGame.unlockFlags)) {
        var_r0_2 = 1;
        goto block_16;
    }
    if ((var_r5 == 0x1C) && !(2 & gLoadedSaveGame.unlockFlags)) {
        var_r0_2 = 2;
    block_16:
        sub_80AB120(var_r0_2);
    block_17:
        TaskDestroy(gCurTask);
        return;
    }
    LaunchGameIntro();
    TaskDestroy(gCurTask);
}

void sub_80AA554(u8 arg0)
{
    s32 sp4;
    u16 temp_r1;

    temp_r1 = TaskCreate(Task_48_C_80AB9CC, 0x48, 0x100, 0, TaskDestructor_48_C_80AB9C8)->data;
    temp_r1->unk0 = (u8)gLoadedSaveGame.language;
    temp_r1->unk1 = arg0;
    temp_r1->unk6 = 0;
    temp_r1->unk2 = 0;
    temp_r1->unk4 = 0;
    sp4 = 0;
    (void *)0x040000D4->unk0 = &sp4;
    (void *)0x040000D4->unk4 = (s32)(((0xC & gBgCntRegs[2]) << 0xC) + 0x06000000);
    (void *)0x040000D4->unk8 = 0x85000010;
    gBgSprites_Unknown1[3] = 0;
    gBgSprites_Unknown2[3][0] = 0;
    gBgSprites_Unknown2[3][1] = 0;
    gBgSprites_Unknown2[3][2] = 0xFF;
    gBgSprites_Unknown2[3][3] = 0x40;
    gBgSprites_Unknown1[2] = 0;
    gBgSprites_Unknown2[2][0] = 0;
    gBgSprites_Unknown2[2][1] = 0;
    gBgSprites_Unknown2[2][2] = -1;
    gBgSprites_Unknown2[2][3] = 0x40;
    gBgSprites_Unknown1[1] = 0;
    gBgSprites_Unknown2[1][0] = 0;
    gBgSprites_Unknown2[1][1] = 0;
    gBgSprites_Unknown2[1][2] = -1;
    gBgSprites_Unknown2[1][3] = 0x40;
    gBgSprites_Unknown1[0] = 0;
    gBgSprites_Unknown2[0][0] = 0;
    gBgSprites_Unknown2[0][1] = 0;
    gBgSprites_Unknown2[0][2] = -1;
    gBgSprites_Unknown2[0][3] = 0x40;
    *gBgPalette = sub_80C4C0C(0);
    gFlags |= 1;
}

void sub_80AA62C(void *arg0)
{
    Background *temp_r0;

    gDispCnt |= 0x100;
    *gBgCntRegs = 0x5687;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    temp_r0 = arg0 + 8;
    temp_r0->graphics.dest = (void *)0x06004000;
    temp_r0->graphics.anim = 0;
    temp_r0->layoutVram = (u16 *)0x0600B000;
    temp_r0->unk18 = 0;
    temp_r0->unk1A = 0;
    temp_r0->tilemapId = 0x141;
    temp_r0->unk1E = 0;
    temp_r0->unk20 = 0;
    temp_r0->unk22 = 0;
    temp_r0->unk24 = 0;
    temp_r0->targetTilesX = 0x20;
    temp_r0->targetTilesY = 0x20;
    arg0->unk32 = 0;
    temp_r0->flags = 4;
    DrawBackground(temp_r0);
}

void sub_80AA6A0(CreditsRelated248 *strc248)
{
    u16 temp_r1;
    u8 temp_r0;

    temp_r1 = gCurTask->data;
    if ((u32)temp_r1->unk1 > 1) {
        m4aMPlayFadeOut(&gMPlayInfo_BGM, 4);
        m4aMPlayFadeOut(&gMPlayInfo_SE1, 4);
        m4aMPlayFadeOut(&gMPlayInfo_SE2, 4);
        m4aMPlayFadeOut(&gMPlayInfo_SE3, 4);
    }
    if (temp_r1->unk2 == 0) {
        gDispCnt |= DISPCNT_WIN0_ON;
        gWinRegs[WINREG_WIN0H] = WIN_RANGE(0, DISPLAY_WIDTH);
        gWinRegs[WINREG_WIN0V] = WIN_RANGE(0, DISPLAY_HEIGHT);
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FFF;
        gBldRegs.bldY = 0x10;
        temp_r1->unk4 = 0x1000U;
        temp_r1->unk2 = 1U;
    }
    if (gBldRegs.bldY != 0) {
        gBldRegs.bldY = (u16)((u16)temp_r1->unk4 >> 8);
        temp_r1->unk4 = (u16)(temp_r1->unk4 - 0x40);
        return;
    }
    gBldRegs.bldY = gBldRegs.bldY;
    temp_r0 = temp_r1->unk1;
    if ((u32)temp_r0 > 1) {
        temp_r1->unk1 = (u8)(temp_r0 - 2);
    }
    gCurTask->main = sub_80AB9F4;
}

void sub_80AA76C(CreditsRelated248 *strc248)
{
    u16 temp_r1;
    u8 var_r0;
    u8 var_r2;
    u8 var_r8;

    temp_r1 = gCurTask->data;
    if (temp_r1->unk2 != 0) {
        gDispCnt |= DISPCNT_WIN0_ON;
        gWinRegs[WINREG_WIN0H] = WIN_RANGE(0, DISPLAY_WIDTH);
        gWinRegs[WINREG_WIN0V] = WIN_RANGE(0, DISPLAY_HEIGHT);
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FFF;
        temp_r1->unk4 = 0U;
        temp_r1->unk2 = 0U;
    }
    if ((u32)gBldRegs.bldY <= 0xF) {
        gBldRegs.bldY = (u16)((u16)temp_r1->unk4 >> 8);
        temp_r1->unk4 = (u16)(temp_r1->unk4 + 0x40);
        return;
    }
    gBldRegs.bldY = 0x10;
    if (temp_r1->unk1 != 0) {
        if (!(0x20 & gLoadedSaveGame.unk34)) {
            gLoadedSaveGame.unk34 |= 0x20;
            sub_8001E58();
        }
        sub_80A8F90();
        TaskDestroy(gCurTask);
        return;
    }
    var_r8 = 0;
    if (!(0x10 & gLoadedSaveGame.unk34)) {
        gLoadedSaveGame.unk34 |= 0x10;
        sub_8001E58();
    }
    var_r0 = 0;
    do {
        var_r2 = 0;
    loop_10:
        if (4 & gLoadedSaveGame.collectedMedals[0][var_r2 + (var_r0 * 4)]) {
            var_r8 += 1;
        }
        var_r2 += 1;
        if ((u32)var_r2 <= 3) {
            goto loop_10;
        }
        var_r0 += 1;
    } while ((u32)var_r0 <= 6);
    if (gLoadedSaveGame.collectedEmeralds != 0x7F) {
        sub_80AA91C();
        goto block_23;
    }
    if (((3 & gLoadedSaveGame.unlockFlags) == 3) || ((gStageData.gameMode == 5) && (gStageData.unkC5 == 1)) || (gStageData.unkC5 == 1)) {
        temp_r1->unk6 = 0;
        gCurTask->main = sub_80ABA20;
        return;
    }
    if (!(1 & gLoadedSaveGame.unlockFlags)) {
        sub_80AB120(1);
    block_23:
        TaskDestroy(gCurTask);
        return;
    }
    if (var_r8 == 0x1C) {
        sub_80AB120(2);
        gCurTask->main = sub_80ABA80;
        return;
    }
    gCurTask->main = sub_80ABA94;
}

void sub_80AA91C(void)
{
    s32 sp4;
    u16 temp_r4;

    gDispCnt = 0x6040;
    temp_r4 = TaskCreate(Task_14C_80AAC38, 0x14C, 0x100, 0, TaskDestructor_14C_80ABAF4)->data;
    temp_r4->unk0 = (u8)gLoadedSaveGame.language;
    temp_r4->unk2 = 0;
    temp_r4->unk1 = 2;
    temp_r4->unkC = 0;
    temp_r4->unk10 = 0x4000;
    temp_r4->unk8 = 0x2000;
    temp_r4->unk14 = 0;
    temp_r4->unk18 = 0xFFFF9C00;
    temp_r4->unk1C = 0xB400;
    temp_r4->unk20 = 0xA000;
    temp_r4->unk24 = 0x7800;
    temp_r4->unk28 = 0x8200;
    temp_r4->unk6 = 0;
    temp_r4->unk4 = 0;
    sp4 = 0;
    (void *)0x040000D4->unk0 = &sp4;
    (void *)0x040000D4->unk4 = (s32)(((0xC & *gBgCntRegs) << 0xC) + 0x06000000);
    (void *)0x040000D4->unk8 = 0x85000010;
    gBgSprites_Unknown1[0] = 0;
    gBgSprites_Unknown2[0][0] = 0;
    gBgSprites_Unknown2[0][1] = 0;
    gBgSprites_Unknown2[0][2] = 0xFF;
    gBgSprites_Unknown2[0][3] = 0x40;
    gBgSprites_Unknown1[1] = 0;
    gBgSprites_Unknown2[1][0] = 0;
    gBgSprites_Unknown2[1][1] = 0;
    gBgSprites_Unknown2[1][2] = -1;
    gBgSprites_Unknown2[1][3] = 0x40;
    gBgSprites_Unknown1[2] = 0;
    gBgSprites_Unknown2[2][0] = 0;
    gBgSprites_Unknown2[2][1] = 0;
    gBgSprites_Unknown2[2][2] = -1;
    gBgSprites_Unknown2[2][3] = 0x40;
    gBgSprites_Unknown1[3] = 0;
    gBgSprites_Unknown2[3][0] = 0;
    gBgSprites_Unknown2[3][1] = 0;
    gBgSprites_Unknown2[3][2] = -1;
    gBgSprites_Unknown2[3][3] = 0x40;
    sub_80AAB6C(temp_r4);
    gWinRegs[2] = (((s32)temp_r4->unk10 >> 8) WIN_RANGE(1, 1)) + ((s32)temp_r4->unk8 >> 8);
    *gBgPalette = sub_80C4C0C(0);
    gFlags |= 1;
}

void sub_80AAA4C(void *arg0)
{
    ? *sp0;
    ? *var_r3;
    Sprite *temp_r0;
    Sprite *temp_r0_2;
    Sprite *temp_r0_3;
    s32 temp_r2;
    s32 temp_r2_3;
    s32 temp_r7;
    u8 *var_r7;
    u8 var_r4;
    void *temp_r2_2;

    var_r4 = 0;
    var_r7 = 0x06010000;
    var_r3 = &gUnknown_080DA2E8;
    do {
        temp_r0 = arg0 + ((var_r4 * 0x28) + 0x2C);
        temp_r0->tiles = var_r7;
        temp_r2 = var_r4 * 8;
        var_r7 += *(temp_r2 + (var_r3 + 4)) << 5;
        temp_r2_2 = temp_r2 + var_r3;
        temp_r0->anim = temp_r2_2->unk0;
        temp_r0->variant = temp_r2_2->unk2;
        temp_r0->prevVariant = -1;
        temp_r0->x = (s16)((s32)arg0->unk1C >> 8);
        temp_r0->y = (s16)((s32)arg0->unk20 >> 8);
        temp_r0->oamFlags = 0x40;
        temp_r0->animCursor = 0;
        temp_r0->qAnimDelay = 0;
        temp_r0->animSpeed = 0x10;
        temp_r0->palId = 0;
        temp_r0->frameFlags = 0;
        sp0 = var_r3;
        UpdateSpriteAnimation(temp_r0);
        var_r4 += 1;
    } while ((u32)var_r4 <= 1);
    temp_r0_2 = arg0 + 0x7C;
    arg0->unk7C = var_r7;
    temp_r2_3 = arg0->unk0 * 8;
    temp_r7 = var_r7 + (*(temp_r2_3 + (&gUnknown_080DA2F8 + 4)) << 5);
    temp_r0_2->anim = *(temp_r2_3 + &gUnknown_080DA2F8);
    temp_r0_2->variant = ((arg0->unk0 * 8) + &gUnknown_080DA2F8)->unk2;
    temp_r0_2->prevVariant |= ~0;
    temp_r0_2->x = (s16)((s32)arg0->unk24 >> 8);
    temp_r0_2->y = (s16)((s32)arg0->unk28 >> 8);
    temp_r0_2->oamFlags = 0;
    temp_r0_2->animCursor = 0;
    temp_r0_2->qAnimDelay = 0;
    temp_r0_2->animSpeed = 0x10;
    temp_r0_2->palId = 0;
    temp_r0_2->frameFlags = 0;
    UpdateSpriteAnimation(temp_r0_2);
    temp_r0_3 = arg0 + 0xA4;
    arg0->unkA4 = temp_r7;
    temp_r0_3->anim = gUnknown_080DA328.unk0;
    temp_r0_3->variant = gUnknown_080DA328.unk2;
    temp_r0_3->prevVariant |= ~0;
    temp_r0_3->x = (s16)((s32)arg0->unk24 >> 8);
    temp_r0_3->y = (s16)((s32)arg0->unk28 >> 8);
    temp_r0_3->oamFlags = 0;
    temp_r0_3->animCursor = 0;
    temp_r0_3->qAnimDelay = 0;
    temp_r0_3->animSpeed = 0x10;
    temp_r0_3->palId = 0;
    temp_r0_3->frameFlags = 0;
    UpdateSpriteAnimation(temp_r0_3);
}

void sub_80AAB6C(void *arg0)
{
    Background *temp_r0;
    Background *temp_r0_2;

    gBgCntRegs[2] = 0x5888;
    gBgScrollRegs[2][0] = (s16)((s32)arg0->unk14 >> 8);
    gBgScrollRegs[2][1] = (s16)((s32)arg0->unk18 >> 8);
    temp_r0 = arg0 + 0xCC;
    temp_r0->graphics.dest = (void *)0x06008000;
    temp_r0->graphics.anim = 0;
    temp_r0->layoutVram = (u16 *)0x0600C000;
    temp_r0->unk18 = 0;
    temp_r0->unk1A = 0;
    temp_r0->tilemapId = 0x12C;
    temp_r0->unk1E = 0;
    temp_r0->unk20 = 0;
    temp_r0->unk22 = 0;
    temp_r0->unk24 = 0;
    temp_r0->targetTilesX = 0x20;
    temp_r0->targetTilesY = 0x20;
    arg0->unkF6 = 0;
    temp_r0->flags = 6;
    DrawBackground(temp_r0);
    gBgCntRegs[1] = 0x681;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    temp_r0_2 = arg0 + 0x10C;
    temp_r0_2->graphics.dest = (void *)0x06000000;
    temp_r0_2->graphics.anim = 0;
    temp_r0_2->layoutVram = (u16 *)0x06003000;
    temp_r0_2->unk18 = 0;
    temp_r0_2->unk1A = 0;
    temp_r0_2->tilemapId = 0x12B;
    temp_r0_2->unk1E = 0;
    temp_r0_2->unk20 = 0;
    temp_r0_2->unk22 = 0;
    temp_r0_2->unk24 = 0;
    temp_r0_2->targetTilesX = 0x20;
    temp_r0_2->targetTilesY = 0x20;
    arg0->unk136 = 0;
    temp_r0_2->flags = 5;
    DrawBackground(temp_r0_2);
}

void Task_14C_80AAC38(CreditsRelated150 *arg7C, s32 argFC, CreditsRelated150 **argFD)
{
    s32 temp_r0;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 temp_r1_4;
    u16 temp_r1;
    u8 var_r7;

    temp_r1 = gCurTask->data;
    var_r7 = 0;
    if (temp_r1->unk6 == 0) {
        gBldRegs.bldCnt = 0xC2;
        gDispCnt |= 0x6000;
        gWinRegs[0] = 0xFF;
        gWinRegs[1] = 0xFF;
        gWinRegs[3] = 0xFF;
        gWinRegs[4] = 0x1137;
        gWinRegs[5] = 0;
        gBldRegs.bldY = 0x10;
        temp_r1->unk4 = 0x1000U;
        temp_r1->unk6 = 1U;
        sub_80AAA4C((void *)temp_r1);
        gDispCnt |= 0x1600;
        m4aMPlayAllStop();
        m4aSongNumStart(0x5B);
    }
    temp_r1_2 = temp_r1->unk10;
    if (temp_r1_2 > 0x2FFF) {
        temp_r0 = temp_r1_2 + 0xFFFFFF00;
        temp_r1->unk10 = temp_r0;
        if (temp_r0 <= 0x3000) {
            temp_r1->unk10 = 0x3000;
            var_r7 = 1;
        }
    }
    temp_r1_3 = temp_r1->unk8;
    if (temp_r1_3 <= 0x4000) {
        temp_r1_4 = temp_r1_3 + 0x200;
        temp_r1->unk8 = temp_r1_4;
        if (temp_r1_4 > 0x3FFF) {
            temp_r1->unk8 = 0x4000;
            var_r7 += 1;
        }
    }
    if (gBldRegs.bldY != 0) {
        gBldRegs.bldY = (u16)((u16)temp_r1->unk4 >> 8);
        temp_r1->unk4 = (u16)(temp_r1->unk4 + 0xFFFFFF00);
    } else {
        var_r7 += 1;
    }
    gWinRegs[2] = (((s32)temp_r1->unk10 >> 8) * WIN_RANGE(1, 1)) + ((s32)temp_r1->unk8 >> 8);
    if (var_r7 == 3) {
        gBldRegs.bldCnt = 0xF0;
        gWinRegs[4] = 0x3017;
        gBldRegs.bldAlpha = 0x1F;
        gBldRegs.bldY = 0;
        temp_r1->unk6 = 0U;
        temp_r1->unk4 = 0U;
        temp_r1->unk2 = 0;
        gCurTask->main = sub_80AAD6C;
    }
}

void sub_80AAD6C(CreditsRelated248 *strc248)
{
    u16 temp_r0;
    u16 temp_r0_2;
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    sub_80ABBC8(temp_r1);
    if ((u32)gBldRegs.bldY <= 0xF) {
        temp_r0 = temp_r1->unk4 + 0x80;
        temp_r1->unk4 = temp_r0;
        gBldRegs.bldY = (u16)((u32)(temp_r0 << 0x10) >> 0x18);
    } else {
        *gBgPalette = sub_80C4C0C(0);
        gFlags |= 1;
    }
    temp_r0_2 = temp_r1->unk2 + 1;
    temp_r1->unk2 = temp_r0_2;
    if ((s32)(s16)temp_r0_2 > 0x96) {
        temp_r1->unk4 = 0x1000U;
        temp_r1->unk2 = 0U;
        gBldRegs.bldCnt = 0xD0;
        gWinRegs[4] = 0x3017;
        gBldRegs.bldAlpha = 0x1F;
        gBldRegs.bldY = 0x10;
        temp_r1->unk6 = 0;
        temp_r1->unk4 = 0x1000U;
        *gBgPalette = sub_80C4C0C(0);
        gFlags |= 1;
        gCurTask->main = sub_80AAE50;
        return;
    }
    gWinRegs[2] = (((s32)temp_r1->unk10 >> 8) * WIN_RANGE(1, 1)) + ((s32)temp_r1->unk8 >> 8);
    gBgScrollRegs[2][0] = (s16)((s32)temp_r1->unk14 >> 8);
    gBgScrollRegs[2][1] = (s16)((s32)temp_r1->unk18 >> 8);
}

void sub_80AAE50(CreditsRelated248 *strc248)
{
    u16 temp_r0;
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    sub_80ABB98(temp_r1);
    if (sub_80ABBEC(temp_r1) == 1) {
        temp_r0 = temp_r1->unk2 + 1;
        temp_r1->unk2 = temp_r0;
        if ((s32)(s16)temp_r0 > 0x3C) {
            temp_r1->unk2 = 0U;
            gCurTask->main = sub_80AAEC0;
            return;
        }
    }
    gWinRegs[2] = (((s32)temp_r1->unk10 >> 8) * WIN_RANGE(1, 1)) + ((s32)temp_r1->unk8 >> 8);
    gBgScrollRegs[2][0] = (s16)((s32)temp_r1->unk14 >> 8);
    gBgScrollRegs[2][1] = (s16)((s32)temp_r1->unk18 >> 8);
}

void sub_80AAEC0(CreditsRelated248 *strc248)
{
    u16 temp_r0;
    u16 temp_r0_2;
    u16 temp_r1;
    u16 temp_r1_2;

    temp_r1 = gCurTask->data;
    sub_80ABB98(temp_r1);
    sub_80AB0D8(temp_r1);
    temp_r1_2 = gBldRegs.bldY;
    if (temp_r1_2 != 0) {
        temp_r0 = temp_r1->unk4 + 0xFFFFFF00;
        temp_r1->unk4 = temp_r0;
        gBldRegs.bldY = (u16)((u32)(temp_r0 << 0x10) >> 0x18);
        goto block_4;
    }
    gBldRegs.bldY = temp_r1_2;
    temp_r0_2 = temp_r1->unk2 + 1;
    temp_r1->unk2 = temp_r0_2;
    if ((s32)(s16)temp_r0_2 > 0x3C) {
        temp_r1->unk2 = temp_r1_2;
        temp_r1->unk4 = temp_r1_2;
        gCurTask->main = sub_80ABAF8;
        return;
    }
block_4:
    gWinRegs[2] = (((s32)temp_r1->unk10 >> 8) * WIN_RANGE(1, 1)) + ((s32)temp_r1->unk8 >> 8);
    gBgScrollRegs[2][0] = (s16)((s32)temp_r1->unk14 >> 8);
    gBgScrollRegs[2][1] = (s16)((s32)temp_r1->unk18 >> 8);
}

void sub_80AAF50(CreditsRelated248 *strc248)
{
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    sub_80ABB98(temp_r1);
    sub_80AB0D8(temp_r1);
    if ((u32)gBldRegs.bldY <= 0xF) {
        gBldRegs.bldY = (u16)((u16)temp_r1->unk4 >> 8);
        temp_r1->unk4 = (u16)(temp_r1->unk4 + 0x100);
        return;
    }
    gWinRegs[4] = 0x17;
    gBldRegs.bldY = 0x10;
    gCurTask->main = sub_80AAFB0;
}

void sub_80AAFB0(CreditsRelated248 *strc248)
{
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    u16 temp_r1;
    u8 var_r0;
    u8 var_r0_2;
    u8 var_r3;
    u8 var_r5;
    u8 var_r7;

    temp_r1 = gCurTask->data;
    var_r5 = 0;
    var_r7 = 0;
    sub_80ABB98(temp_r1);
    sub_80AB0D8(temp_r1);
    temp_r0 = temp_r1->unk10;
    if (temp_r0 <= 0x4FFF) {
        temp_r0_2 = temp_r0 + 0x100;
        temp_r1->unk10 = temp_r0_2;
        if (temp_r0_2 > 0x4FFF) {
            temp_r1->unk10 = 0x5000;
            goto block_3;
        }
    } else {
    block_3:
        var_r5 = 1;
    }
    temp_r0_3 = temp_r1->unk8;
    if (temp_r0_3 > 0) {
        temp_r0_4 = temp_r0_3 + 0xFFFFFE00;
        temp_r1->unk8 = temp_r0_4;
        if (temp_r0_4 <= 0) {
            temp_r1->unk8 = 0;
            goto block_7;
        }
    } else {
    block_7:
        var_r5 += 1;
    }
    gWinRegs[2] = (((s32)temp_r1->unk10 >> 8) * WIN_RANGE(1, 1)) + ((s32)temp_r1->unk8 >> 8);
    if (var_r5 == 2) {
        if (((3 & gLoadedSaveGame.unlockFlags) != 3) && ((gStageData.gameMode != 5) || (gStageData.unkC5 != 1))
            && (gStageData.unkC5 != 1)) {
            var_r0 = 0;
            do {
                var_r3 = 0;
            loop_15:
                if (4 & gLoadedSaveGame.collectedMedals[0][var_r3 + (var_r0 * 4)]) {
                    var_r7 += 1;
                }
                var_r3 += 1;
                if ((u32)var_r3 <= 3) {
                    goto loop_15;
                }
                var_r0 += 1;
            } while ((u32)var_r0 <= 6);
            if (!(1 & gLoadedSaveGame.unlockFlags)) {
                var_r0_2 = 1;
                goto block_23;
            }
            if (var_r7 == 0x1C) {
                var_r0_2 = 2;
            block_23:
                sub_80AB120(var_r0_2);
                TaskDestroy(gCurTask);
                return;
            }
            goto block_24;
        }
    block_24:
        gCurTask->main = sub_80ABB38;
    }
}

void sub_80AB0D8(void *arg0)
{
    Sprite *temp_r0;
    Sprite *temp_r1;
    s32 temp_r2;

    temp_r1 = arg0 + 0x7C;
    temp_r1->x = (s16)((s32)arg0->unk24 >> 8);
    temp_r2 = (s32)arg0->unk28 >> 8;
    temp_r1->y = (s16)temp_r2;
    if (arg0->unk0 != 0) {
        temp_r1->y = temp_r2 - 4;
    }
    DisplaySprite(temp_r1);
    if (arg0->unk0 != 0) {
        temp_r0 = arg0 + 0xA4;
        temp_r0->x = (s16)((s32)arg0->unk24 >> 8);
        temp_r0->y = ((s32)arg0->unk28 >> 8) + 0xA;
        DisplaySprite(temp_r0);
    }
}

void sub_80AB120(u8 param0)
{
    u16 temp_r0;

    gDispCnt = 0x1040;
    temp_r0 = TaskCreate(Task_D4_80AB1C4, 0xD4, 0x100, 0, TaskDestructor_D4_80ABC1C)->data;
    temp_r0->unk0 = param0;
    temp_r0->unk4 = 0;
    temp_r0->unk8 = 0x7800;
    temp_r0->unkC = 0x5000;
    temp_r0->unk10 = 0;
    temp_r0->unk14 = 0;
    temp_r0->unk18 = 0;
    temp_r0->unk1C = 0;
    temp_r0->unk20 = 0;
    temp_r0->unk1 = 0;
    temp_r0->unk2 = 0;
    temp_r0->unk24 = 0;
    gDispCnt |= DISPCNT_WIN0_ON;
    gWinRegs[WINREG_WIN0H] = WIN_RANGE(0, DISPLAY_WIDTH);
    gWinRegs[WINREG_WIN0V] = WIN_RANGE(0, DISPLAY_HEIGHT);
    gWinRegs[4] |= 0x3F;
    gWinRegs[5] |= 0x1F;
    gBldRegs.bldCnt = 0x3FFF;
    gBldRegs.bldY = 0x10;
}

void Task_D4_80AB1C4(CreditsRelated150 *arg7C, s32 argFC, CreditsRelated150 **argFD)
{
    Background *temp_r0_4;
    Background *temp_r1;
    Background *var_r0;
    Sprite *temp_r0;
    s16 temp_r5;
    s32 var_r2;
    u16 temp_r6;
    u16 var_r1;
    u32 temp_r2;
    u8 temp_r0_2;
    u8 temp_r0_3;

    temp_r6 = gCurTask->data;
    temp_r5 = temp_r6->unk4;
    switch (temp_r5) { /* switch 1; irregular */
        case 0: /* switch 1 */
            temp_r0 = temp_r6 + 0x2C;
            temp_r6->unk2C = 0x06010000;
            temp_r0->anim = gUnknown_080DA358.unk0;
            temp_r0->variant = gUnknown_080DA358.unk2;
            temp_r0->prevVariant = -1;
            temp_r0->x = (s16)((s32)temp_r6->unk8 >> 8);
            temp_r0->y = (s16)((s32)temp_r6->unkC >> 8);
            temp_r0->oamFlags = temp_r5;
            temp_r0->animCursor = temp_r5;
            temp_r0->qAnimDelay = temp_r5;
            temp_r0->animSpeed = 0x10;
            temp_r0->palId = 0;
            temp_r0->frameFlags = (u32)temp_r5;
            temp_r0->hitboxes[0].index = -1;
            UpdateSpriteAnimation(temp_r0);
            gDispCnt |= 0x200;
            gBgCntRegs[1] = 0x602;
            gBgScrollRegs[1][0] = temp_r5;
            gBgScrollRegs[1][1] = temp_r5;
            var_r0 = temp_r6 + 0x94;
            var_r0->graphics.dest = (void *)0x06000000;
            var_r0->graphics.anim = temp_r5;
            var_r0->layoutVram = (u16 *)0x06003000;
            var_r0->unk18 = temp_r5;
            var_r0->unk1A = temp_r5;
            var_r0->tilemapId = 0x156;
            var_r0->unk1E = temp_r5;
            var_r0->unk20 = temp_r5;
            var_r0->unk22 = temp_r5;
            var_r0->unk24 = temp_r5;
            var_r0->targetTilesX = 0x20;
            var_r0->targetTilesY = 0x20;
            temp_r6->unkBE = 0;
            var_r1 = 1;
        block_11:
            var_r0->flags = var_r1;
            DrawBackground(var_r0);
        default: /* switch 1 */
            temp_r6->unk4 = (s16)((u16)temp_r6->unk4 + 1);
            return;
        case 1: /* switch 1 */
            gBgCntRegs->unk0 = 0xE04;
            gDispCnt |= 0x100;
            gBgScrollRegs[0][0] = 0;
            gBgScrollRegs[0][1] = 0;
            temp_r1 = temp_r6 + 0x54;
            var_r2 = 0;
            temp_r0_2 = temp_r6->unk0;
            switch (temp_r0_2) { /* switch 2; irregular */
                case 1: /* switch 2 */
                    break;
                case 0: /* switch 2 */
                case 3: /* switch 2 */
                    var_r2 = 0xC;
                    break;
                case 2: /* switch 2 */
                    var_r2 = 6;
                    break;
            }
            temp_r1->graphics.dest = (void *)0x06004000;
            temp_r1->graphics.anim = 0;
            temp_r1->layoutVram = (u16 *)0x06007000;
            temp_r1->unk18 = 0;
            temp_r1->unk1A = 0;
            temp_r1->tilemapId = *(((var_r2 + gLoadedSaveGame.language) * 2) + &gUnknown_080DA330);
            temp_r1->unk1E = 0;
            temp_r1->unk20 = 0;
            temp_r1->unk22 = 0;
            temp_r1->unk24 = 0;
            temp_r1->targetTilesX = 0x20;
            temp_r1->targetTilesY = 0x20;
            temp_r1->paletteOffset = 0;
            temp_r1->flags = 0;
            DrawBackground(temp_r1);
            gDispCnt |= 0x400;
            gBgCntRegs[2] = 0x1D0D;
            gBgScrollRegs[2][0] = 0;
            gBgScrollRegs[2][1] = 0;
            var_r0 = temp_r6 + 0x94;
            var_r0->graphics.dest = (void *)0x0600C000;
            var_r0->graphics.anim = 0;
            var_r0->layoutVram = (u16 *)0x0600E800;
            var_r0->unk18 = 0;
            var_r0->unk1A = 0;
            var_r0->tilemapId = gUnknown_080DA330.unk26;
            var_r0->unk1E = 0;
            var_r0->unk20 = 0;
            var_r0->unk22 = 0;
            var_r0->unk24 = 0;
            var_r0->targetTilesX = 0x20;
            var_r0->targetTilesY = 0x20;
            temp_r6->unkBE = 0;
            var_r1 = 2;
            goto block_11;
        case 2: /* switch 1 */
            temp_r0_3 = temp_r6->unk0;
            if ((temp_r0_3 == 0) || (temp_r0_3 == 3)) {
                gDispCnt |= 0x800;
                gBgCntRegs[3] = 0x1608;
                gBgScrollRegs[3][0] = 0;
                gBgScrollRegs[3][1] = 0;
                temp_r0_4 = temp_r6 + 0x94;
                temp_r0_4->graphics.dest = (void *)0x06008000;
                temp_r0_4->graphics.anim = 0;
                temp_r0_4->layoutVram = (u16 *)0x0600B000;
                temp_r0_4->unk18 = 0;
                temp_r0_4->unk1A = 0;
                temp_r0_4->tilemapId = gUnknown_080DA330.unk24;
                temp_r0_4->unk1E = 0;
                temp_r0_4->unk20 = 0;
                temp_r0_4->unk22 = 0;
                temp_r0_4->unk24 = 0;
                temp_r0_4->targetTilesX = 0x20;
                temp_r0_4->targetTilesY = 0x20;
                temp_r6->unkBE = 0;
                temp_r0_4->flags = 3;
                DrawBackground(temp_r0_4);
            }
            *gBgPalette = 0;
            temp_r2 = gFlags | 1;
            gFlags = temp_r2;
            temp_r6->unk4 = 0;
            if (0x10000 & temp_r2) {
                CopyBgPaletteMasked(&gUnknown_080DA360, 0, 0x50);
            } else {
                (void *)0x040000D4->unk0 = &gUnknown_080DA360;
                (void *)0x040000D4->unk4 = gBgPalette;
                (void *)0x040000D4->unk8 = 0x80000050;
                gFlags = temp_r2 | 1;
            }
            gCurTask->main = sub_80AB4A4;
            return;
    }
}

void sub_80AB4A4(CreditsRelated248 *strc248)
{
    Sprite *temp_r4_2;
    u16 temp_r4;
    u8 temp_r3;

    temp_r4 = gCurTask->data;
    temp_r3 = temp_r4->unk1;
    if (temp_r3 == 0) {
        gDispCnt |= DISPCNT_WIN0_ON;
        gWinRegs[WINREG_WIN0H] = WIN_RANGE(0, DISPLAY_WIDTH);
        gWinRegs[WINREG_WIN0V] = WIN_RANGE(0, DISPLAY_HEIGHT);
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FFF;
        gBldRegs.bldY = 0x10;
        temp_r4->unk2 = 0x1000U;
        temp_r4->unk1 = 1U;
        gBgScrollRegs[0][0] = (s16)temp_r3;
        gBgScrollRegs[0][1] = (s16)temp_r3;
        gBgScrollRegs[1][0] = (s16)temp_r3;
        gBgScrollRegs[1][1] = (s16)temp_r3;
        gBgScrollRegs[2][0] = (s16)temp_r3;
        gBgScrollRegs[2][1] = (s16)temp_r3;
        gBgScrollRegs[3][0] = (s16)temp_r3;
        gBgScrollRegs[3][1] = (s16)temp_r3;
    }
    sub_80ABD10(temp_r4);
    sub_80ABC80(temp_r4);
    sub_80ABCF4(temp_r4);
    temp_r4_2 = temp_r4 + 0x2C;
    temp_r4_2->x = (s16)((s32)temp_r4->unk8 >> 8);
    temp_r4_2->y = (s16)((s32)temp_r4->unkC >> 8);
    UpdateSpriteAnimation(temp_r4_2);
    DisplaySprite(temp_r4_2);
    if (gBldRegs.bldY != 0) {
        gBldRegs.bldY = (u16)((u16)temp_r4->unk2 >> 8);
        temp_r4->unk2 = (u16)(temp_r4->unk2 + 0xFFFFFF00);
        return;
    }
    gBldRegs.bldY = gBldRegs.bldY;
    m4aMPlayAllStop();
    if (temp_r4->unk0 == 3) {
        m4aSongNumStart(0x29F);
    } else {
        m4aSongNumStart(0x2A1);
    }
    gCurTask->main = sub_80AB770;
}

void sub_80AB5A8(CreditsRelated248 *strc248)
{
    Sprite *temp_r4;
    u16 temp_r6;
    u8 temp_r0;
    u8 var_r0;
    u8 var_r3;
    u8 var_r6;

    temp_r6 = gCurTask->data;
    if (temp_r6->unk1 != 0) {
        gDispCnt |= DISPCNT_WIN0_ON;
        gWinRegs[WINREG_WIN0H] = WIN_RANGE(0, DISPLAY_WIDTH);
        gWinRegs[WINREG_WIN0V] = WIN_RANGE(0, DISPLAY_HEIGHT);
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FFF;
        temp_r6->unk2 = 0U;
        temp_r6->unk1 = 0U;
    }
    sub_80ABD10(temp_r6);
    sub_80ABC80(temp_r6);
    sub_80ABCF4(temp_r6);
    temp_r4 = temp_r6 + 0x2C;
    temp_r4->x = (s16)((s32)temp_r6->unk8 >> 8);
    temp_r4->y = (s16)((s32)temp_r6->unkC >> 8);
    UpdateSpriteAnimation(temp_r4);
    DisplaySprite(temp_r4);
    if ((u32)gBldRegs.bldY <= 0xF) {
        gBldRegs.bldY = (u16)((u16)temp_r6->unk2 >> 8);
        temp_r6->unk2 = (u16)(temp_r6->unk2 + 0x100);
        return;
    }
    gBldRegs.bldY = 0x10;
    temp_r0 = temp_r6->unk0;
    switch (temp_r0) { /* irregular */
        case 1:
            var_r6 = 0;
            var_r0 = 0;
            do {
                var_r3 = 0;
            loop_7:
                if (4 & gLoadedSaveGame.collectedMedals[0][var_r3 + (var_r0 * 4)]) {
                    var_r6 += 1;
                }
                var_r3 += 1;
                if ((u32)var_r3 <= 3) {
                    goto loop_7;
                }
                var_r0 += 1;
            } while ((u32)var_r0 <= 6);
            gLoadedSaveGame.unlockFlags |= 1;
            sub_8001E58();
            if (var_r6 == 0x1C) {
                sub_80AB120(2);
            block_20:
                TaskDestroy(gCurTask);
                return;
            }
            temp_r6->unk4 = 0;
        block_16:
            gCurTask->main = sub_80ABC20;
            return;
        case 2:
            gLoadedSaveGame.unlockFlags |= 2;
            sub_8001E58();
            temp_r6->unk4 = 0;
            goto block_16;
        case 0:
            TasksDestroyInPriorityRange(0, 0xFFFF);
            gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;
            gBgSpritesCount = 0;
            gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;
            WarpToMap((s16)((s32)((gStageData.zone * 0xA0000) + 0x20000) >> 0x10), 4);
            return;
        default:
            CreateMainMenu(3, 1);
            goto block_20;
    }
}

void sub_80AB770(CreditsRelated248 *strc248)
{
    Sprite *temp_r4_2;
    u16 temp_r0_2;
    u16 temp_r4;
    u16 var_r0;
    u8 temp_r0;

    temp_r4 = gCurTask->data;
    sub_80ABD10(temp_r4);
    sub_80ABC80(temp_r4);
    sub_80ABCF4(temp_r4);
    temp_r4_2 = temp_r4 + 0x2C;
    temp_r4_2->x = (s16)((s32)temp_r4->unk8 >> 8);
    temp_r4_2->y = (s16)((s32)temp_r4->unkC >> 8);
    UpdateSpriteAnimation(temp_r4_2);
    DisplaySprite(temp_r4_2);
    temp_r0 = temp_r4->unk0;
    if (temp_r0 == 0) {
        if ((s32)(s16)temp_r4->unk4 <= 0x77) {
            var_r0 = temp_r4->unk4 + 1;
        } else {
            goto block_4;
        }
        goto block_5;
    }
    if (temp_r0 == 3) {
    block_4:
        var_r0 = 0x78;
    block_5:
        temp_r4->unk4 = var_r0;
        if (((s32)(s16)temp_r4->unk4 > 0x77) && (1 & gPressedKeys)) {
            goto block_10;
        }
    } else {
        temp_r0_2 = temp_r4->unk4 + 1;
        temp_r4->unk4 = temp_r0_2;
        if ((s32)(temp_r0_2 << 0x10) > 0x012C0000) {
        block_10:
            gCurTask->main = sub_80AB5A8;
        }
    }
}

void TaskDestructor_40_A_80AB814(Task *arg0) { }

void Task_40_A_80AB818(CreditsRelated150 *arg7C, s32 argFC, CreditsRelated150 **argFD)
{
    u16 temp_r4;

    temp_r4 = gCurTask->data;
    sub_80AB88C(temp_r4);
    if (sub_80A9CA0((void *)temp_r4) == 1) {
        gCurTask->main = sub_80AB84C;
    }
}

void sub_80AB84C(CreditsRelated248 *strc248)
{
    u16 temp_r4;

    temp_r4 = gCurTask->data;
    sub_80A9D78((void *)temp_r4);
    sub_80AB88C(temp_r4);
    if (((u32) * *temp_r4 > 0xE) && (gBldRegs.bldY == 0x10)) {
        TaskDestroy(gCurTask);
    }
}

void sub_80AB88C(void *arg0)
{
    Sprite *temp_r4;

    temp_r4 = arg0 + 0x18;
    temp_r4->x = (s16)((s32)arg0->unk10 >> 8);
    temp_r4->y = (s16)((s32)arg0->unk14 >> 8);
    DisplaySprite(temp_r4);
    UpdateSpriteAnimation(temp_r4);
}

s32 sub_80AB8B0(void *arg0)
{
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;

    temp_r0 = arg0->unk10;
    if ((temp_r0 > 0x1DFF) || (temp_r0_2 = temp_r0 + 0x100, arg0->unk10 = temp_r0_2, (temp_r0_2 > 0x1DFF))) {
        arg0->unk10 = 0x1E00;
        return 1;
    }
    temp_r0_3 = arg0->unk14;
    if ((temp_r0_3 <= 0x2800) || (temp_r0_4 = temp_r0_3 - 0x40, arg0->unk14 = temp_r0_4, (temp_r0_4 <= 0x2800))) {
        arg0->unk14 = 0x2800;
        return 1;
    }
    return 0;
}

void TaskDestructor_40_B_80AB8F8(Task *arg0) { }

void Task_100_80AB8FC(CreditsRelated150 *arg7C, s32 argFC, CreditsRelated150 **argFD)
{
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    sub_80AA1BC((void *)temp_r1);
    if ((u32) * *temp_r1 <= 0x13) {
        sub_80AB93C(temp_r1);
        return;
    }
    if (sub_80AB960(temp_r1) == 1) {
        TaskDestroy(gCurTask);
    }
}

s32 sub_80AB93C(void *arg0)
{
    s32 temp_r0;
    s32 temp_r0_2;

    temp_r0 = arg0->unk8;
    if ((temp_r0 >= 0) || (temp_r0_2 = temp_r0 + 0x700, arg0->unk8 = temp_r0_2, (temp_r0_2 > 0))) {
        arg0->unk8 = 0;
        return 1;
    }
    return 0;
}

s32 sub_80AB960(void *arg0)
{
    s32 temp_r0;
    s32 temp_r0_2;

    temp_r0 = arg0->unk8;
    if ((temp_r0 <= 0xFFFF2E00) || (temp_r0_2 = temp_r0 + 0xFFFFFB00, arg0->unk8 = temp_r0_2, (temp_r0_2 < 0xFFFF2E00))) {
        arg0->unk8 = -0xD200;
        return 1;
    }
    return 0;
}

void Task_100_80AB98C(Task *arg0) { }

void TaskDestructor_54_80AB990(Task *arg0) { }

void sub_80AB994(CreditsRelated248 *strc248)
{
    u16 temp_r0;
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    temp_r0 = temp_r1->unk8 + 1;
    temp_r1->unk8 = temp_r0;
    if ((u32)(temp_r0 << 0x10) > 0x012C0000) {
        temp_r1->unk8 = 0U;
        gCurTask->main = sub_80AA410;
    }
}

void TaskDestructor_48_C_80AB9C8(Task *arg0) { }

void Task_48_C_80AB9CC(CreditsRelated150 *arg7C, s32 argFC, CreditsRelated150 **argFD)
{
    sub_80AA62C((void *)gCurTask->data);
    gCurTask->main = sub_80AA6A0;
}

void sub_80AB9F4(CreditsRelated248 *strc248)
{
    u16 temp_r0;
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    temp_r0 = temp_r1->unk6 + 2;
    temp_r1->unk6 = temp_r0;
    if ((s32)(s16)temp_r0 > 0xB4) {
        gCurTask->main = sub_80AA76C;
    }
}

void sub_80ABA20(CreditsRelated248 *strc248)
{
    u16 temp_r0;
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    temp_r0 = temp_r1->unk6 + 1;
    temp_r1->unk6 = temp_r0;
    if ((s32)(s16)temp_r0 > 0xB3) {
        TasksDestroyInPriorityRange(0, 0xFFFF);
        gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;
        gBgSpritesCount = 0;
        gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;
        LaunchGameIntro();
    }
}

void sub_80ABA80(CreditsRelated248 *strc248) { TaskDestroy(gCurTask); }

void sub_80ABA94(CreditsRelated248 *strc248)
{
    u16 temp_r0;
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    temp_r0 = temp_r1->unk6 + 1;
    temp_r1->unk6 = temp_r0;
    if ((s32)(s16)temp_r0 > 0xB3) {
        TasksDestroyInPriorityRange(0, 0xFFFF);
        gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;
        gBgSpritesCount = 0;
        gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;
        LaunchGameIntro();
    }
}

void TaskDestructor_14C_80ABAF4(Task *arg0) { }

void sub_80ABAF8(CreditsRelated248 *strc248)
{
    u16 temp_r0;
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    sub_80ABB98(temp_r1);
    sub_80AB0D8(temp_r1);
    temp_r0 = temp_r1->unk2 + 1;
    temp_r1->unk2 = temp_r0;
    if ((s32)(s16)temp_r0 > 0xB4) {
        temp_r1->unk2 = 0U;
        gCurTask->main = sub_80AAF50;
    }
}

void sub_80ABB38(CreditsRelated248 *strc248)
{
    u16 temp_r0;
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    temp_r0 = temp_r1->unk2 + 1;
    temp_r1->unk2 = temp_r0;
    if ((s32)(s16)temp_r0 > 0xB3) {
        TasksDestroyInPriorityRange(0, 0xFFFF);
        gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;
        gBgSpritesCount = 0;
        gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;
        LaunchGameIntro();
    }
}

void sub_80ABB98(void *arg0)
{
    Sprite *temp_r0;
    u8 var_r4;

    var_r4 = 0;
    do {
        temp_r0 = arg0 + ((var_r4 * 0x28) + 0x2C);
        temp_r0->x = (s16)((s32)arg0->unk1C >> 8);
        temp_r0->y = (s16)((s32)arg0->unk20 >> 8);
        DisplaySprite(temp_r0);
        var_r4 += 1;
    } while ((u32)var_r4 <= 1);
}

s32 sub_80ABBC8(void *arg0)
{
    s32 temp_r0;
    s32 temp_r2;

    temp_r2 = arg0->unk18;
    if (temp_r2 < 0) {
        temp_r0 = temp_r2 + (arg0->unk1 << 8);
        arg0->unk18 = temp_r0;
        if (temp_r0 >= 0) {
            arg0->unk18 = 0;
            return 1;
        }
    }
    return 0;
}

s32 sub_80ABBEC(void *arg0)
{
    s32 temp_r1;
    s32 temp_r1_2;

    temp_r1 = arg0->unk20;
    if (temp_r1 > 0x6FFF) {
        temp_r1_2 = (temp_r1 - 0x80) - (arg0->unk1 << 7);
        arg0->unk20 = temp_r1_2;
        if (temp_r1_2 <= 0x7000) {
            arg0->unk20 = 0x7000;
            return 1;
        }
    }
    return 0;
}

void TaskDestructor_D4_80ABC1C(Task *arg0) { }

void sub_80ABC20(CreditsRelated248 *strc248)
{
    u16 temp_r0;
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    temp_r0 = temp_r1->unk4 + 1;
    temp_r1->unk4 = temp_r0;
    if ((s32)(s16)temp_r0 > 0xB3) {
        TasksDestroyInPriorityRange(0, 0xFFFF);
        gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;
        gBgSpritesCount = 0;
        gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;
        LaunchGameIntro();
    }
}

void sub_80ABC80(void *arg0)
{
    s32 temp_r1;
    u32 var_r3;
    void *var_r1;

    var_r3 = 0;
    temp_r1 = arg0->unk24 + 0x90;
    arg0->unk24 = temp_r1;
    gFlags |= 4;
    gHBlankCopyTarget = (void *)0x0400001A;
    gHBlankCopySize = 2;
    var_r1 = gBgOffsetsHBlankPrimary;
    do {
        if (var_r3 > 0x63) {
            *var_r1 = (u16)(((s32)(*(((u8)(temp_r1 >> 8) * 8) + gSineTable) << 0x10) >> 0x1C) - 5);
        } else {
            *var_r1 = 0U;
        }
        var_r1 += 2;
        var_r3 = (u32)(u16)(var_r3 + 1);
    } while (var_r3 <= 0x9F);
}

void sub_80ABCF4(void *arg0)
{
    s32 temp_r1;
    s32 temp_r2;

    temp_r2 = arg0->unk18 + 0xC0;
    arg0->unk18 = temp_r2;
    temp_r1 = arg0->unk1C - 0xC0;
    arg0->unk1C = temp_r1;
    gBgScrollRegs[1][0] = (s16)(temp_r2 >> 8);
    gBgScrollRegs[1][1] = (s16)(temp_r1 >> 8);
}

void sub_80ABD10(void *arg0)
{
    s32 temp_r1;

    temp_r1 = arg0->unk20 + 0x220;
    arg0->unk20 = temp_r1;
    arg0->unk8 = 0x7800;
    arg0->unkC = (s32)((((s32)(*(((u8)(temp_r1 >> 8) * 8) + gSineTable) << 0x10) >> 0x16) * 8) + 0x7A00);
}

void sub_80ABD44(u8 arg0)
{
    u16 temp_r0;

    temp_r0 = TaskCreate(Task_62C_80ABE28, 0x62C, 0x100, 0, TaskDestructor_62C_80AC9E4)->data;
    temp_r0->unk1 = 0;
    temp_r0->unk4 = 0;
    temp_r0->unk10 = 0x06010000;
    temp_r0->unk8 = 0;
    temp_r0->unkC = 0;
    temp_r0->unk2 = 0;
    temp_r0->unk0 = arg0;
    if (0x20000 & gFlags) {
        CopyObjPaletteMasked(&gUnknown_080DB824, 0x70, 0x10);
    } else {
        (void *)0x040000D4->unk0 = &gUnknown_080DB824;
        (void *)0x040000D4->unk4 = &gObjPalette[0x70];
        (void *)0x040000D4->unk8 = 0x80000010;
        gFlags |= 2;
    }
    if (0x20000 & gFlags) {
        CopyObjPaletteMasked(&gUnknown_080DB804, 0xE0, 0x10);
        return;
    }
    (void *)0x040000D4->unk0 = &gUnknown_080DB804;
    (void *)0x040000D4->unk4 = &gObjPalette[0xE0];
    (void *)0x040000D4->unk8 = 0x80000010;
    gFlags |= 2;
}

void Task_62C_80ABE28(CreditsRelated150 *arg7C, s32 argFC, CreditsRelated150 **argFD)
{
    s32 sp0;
    Sprite *temp_r0;
    Sprite *temp_r0_3;
    Sprite *temp_r0_4;
    Sprite *temp_r0_5;
    Sprite *temp_r0_6;
    Sprite *temp_r0_7;
    s32 temp_r8;
    u16 temp_r1;
    u8 temp_r0_2;
    u8 var_r4;

    temp_r1 = gCurTask->data;
    var_r4 = temp_r1->unk1;
    if ((s32)var_r4 < (s32)(var_r4 + 0xA)) {
        temp_r8 = gUnknown_080DA420.unk4 << 5;
        do {
            temp_r0 = temp_r1 + ((var_r4 * 0x28) + 0x14);
            temp_r0->tiles = temp_r1->unk10;
            temp_r1->unk10 = (u8 *)(temp_r1->unk10 + temp_r8);
            temp_r0->anim = gUnknown_080DA420.unk0;
            temp_r0->variant = var_r4 + gUnknown_080DA420.unk2;
            temp_r0->prevVariant = -1;
            temp_r0->x = 0;
            temp_r0->y = 0;
            temp_r0->oamFlags = 0x200;
            temp_r0->animCursor = 0;
            temp_r0->qAnimDelay = 0;
            temp_r0->animSpeed = 0x10;
            temp_r0->palId = 0;
            temp_r0->frameFlags = 0x80;
            UpdateSpriteAnimation(temp_r0);
            var_r4 += 1;
        } while ((s32)var_r4 < (s32)(temp_r1->unk1 + 0xA));
    }
    temp_r0_2 = temp_r1->unk1 + 0xA;
    temp_r1->unk1 = temp_r0_2;
    if ((u32)temp_r0_2 <= 0x1D) {
        return;
    }
    temp_r0_3 = temp_r1 + ((temp_r1->unk1 * 0x28) + 0x14);
    temp_r0_3->tiles = temp_r1->unk10;
    temp_r1->unk10 = (u8 *)(temp_r1->unk10 + 0x20);
    temp_r0_3->anim = 0x462;
    temp_r0_3->variant = 0xE;
    temp_r0_3->prevVariant = -1;
    temp_r0_3->x = 0;
    temp_r0_3->y = 0;
    temp_r0_3->oamFlags = 0x200;
    temp_r0_3->animCursor = 0;
    temp_r0_3->qAnimDelay = 0;
    temp_r0_3->animSpeed = 0x10;
    temp_r0_3->palId = 0;
    temp_r0_3->frameFlags = 0x80;
    sp0 = 0;
    UpdateSpriteAnimation(temp_r0_3);
    temp_r1->unk1 = (u8)(temp_r1->unk1 + 1);
    temp_r0_4 = temp_r1 + ((temp_r1->unk1 * 0x28) + 0x14);
    temp_r0_4->tiles = temp_r1->unk10;
    temp_r1->unk10 = (u8 *)(temp_r1->unk10 + 0x40);
    temp_r0_4->anim = 0x462;
    temp_r0_4->variant = 6;
    temp_r0_4->prevVariant = -1;
    temp_r0_4->x = 0;
    temp_r0_4->y = 0;
    temp_r0_4->oamFlags = 0x200;
    temp_r0_4->animCursor = 0;
    temp_r0_4->qAnimDelay = 0;
    temp_r0_4->animSpeed = 0x10;
    temp_r0_4->palId = 0;
    temp_r0_4->frameFlags = 0x80;
    sp0 = 0;
    UpdateSpriteAnimation(temp_r0_4);
    temp_r1->unk1 = (u8)(temp_r1->unk1 + 1);
    temp_r0_5 = temp_r1 + ((temp_r1->unk1 * 0x28) + 0x14);
    temp_r0_5->tiles = temp_r1->unk10;
    temp_r1->unk10 = (u8 *)(temp_r1->unk10 + 0x40);
    temp_r0_5->anim = 0x462;
    temp_r0_5->variant = 8;
    temp_r0_5->prevVariant = -1;
    temp_r0_5->x = 0;
    temp_r0_5->y = 0;
    temp_r0_5->oamFlags = 0x200;
    temp_r0_5->animCursor = 0;
    temp_r0_5->qAnimDelay = 0;
    temp_r0_5->animSpeed = 0x10;
    temp_r0_5->palId = 0;
    temp_r0_5->frameFlags = 0x80;
    sp0 = 0;
    UpdateSpriteAnimation(temp_r0_5);
    temp_r1->unk1 = (u8)(temp_r1->unk1 + 1);
    temp_r0_6 = temp_r1 + ((temp_r1->unk1 * 0x28) + 0x14);
    temp_r0_6->tiles = temp_r1->unk10;
    temp_r1->unk10 = (u8 *)(temp_r1->unk10 + 0x40);
    temp_r0_6->anim = 0x462;
    temp_r0_6->variant = 9;
    temp_r0_6->prevVariant = -1;
    temp_r0_6->x = 0;
    temp_r0_6->y = 0;
    temp_r0_6->oamFlags = 0x200;
    temp_r0_6->animCursor = 0;
    temp_r0_6->qAnimDelay = 0;
    temp_r0_6->animSpeed = 0x10;
    temp_r0_6->palId = 0;
    temp_r0_6->frameFlags = 0x80;
    sp0 = 0;
    UpdateSpriteAnimation(temp_r0_6);
    temp_r1->unk1 = (u8)(temp_r1->unk1 + 1);
    temp_r0_7 = temp_r1 + ((temp_r1->unk1 * 0x28) + 0x14);
    temp_r0_7->tiles = temp_r1->unk10;
    temp_r1->unk10 = (u8 *)(temp_r1->unk10 + 0x40);
    temp_r0_7->anim = 0x462;
    temp_r0_7->variant = 0xD;
    temp_r0_7->prevVariant = -1;
    temp_r0_7->x = 0;
    temp_r0_7->y = 0;
    temp_r0_7->oamFlags = 0x200;
    temp_r0_7->animCursor = 0;
    temp_r0_7->qAnimDelay = 0;
    temp_r0_7->animSpeed = 0x10;
    temp_r0_7->palId = 0;
    temp_r0_7->frameFlags = 0x80;
    UpdateSpriteAnimation(temp_r0_7);
    temp_r1->unk1 = 0U;
    gCurTask->main = sub_80AC030;
}

void sub_80AC030(CreditsRelated248 *strc248)
{
    Sprite *temp_r0;
    s32 temp_r3;
    u16 temp_r4;
    u8 var_r5;
    void *temp_r3_2;

    temp_r4 = gCurTask->data;
    var_r5 = 0;
    do {
        temp_r0 = temp_r4 + ((var_r5 * 0x28) + 0x58C);
        temp_r0->tiles = temp_r4->unk10;
        temp_r3 = var_r5 * 8;
        temp_r4->unk10 = (u8 *)(temp_r4->unk10 + (*(temp_r3 + (&gUnknown_080DB844 + 4)) << 5));
        temp_r3_2 = temp_r3 + &gUnknown_080DB844;
        temp_r0->anim = temp_r3_2->unk0;
        temp_r0->variant = temp_r3_2->unk2;
        temp_r0->prevVariant = -1;
        temp_r0->x = 0;
        temp_r0->y = 0;
        temp_r0->oamFlags = 0x200;
        temp_r0->animCursor = 0;
        temp_r0->qAnimDelay = 0;
        temp_r0->animSpeed = 0x10;
        temp_r0->palId = 0;
        temp_r0->frameFlags = 0x80;
        UpdateSpriteAnimation(temp_r0);
        var_r5 += 1;
    } while ((u32)var_r5 <= 3);
    gCurTask->main = sub_80AC0C4;
}

void sub_80AC0C4(CreditsRelated248 *strc248)
{
    u16 temp_r1;
    u32 temp_r1_2;
    u8 temp_r0;
    u8 temp_r5;
    void *temp_r2;

    temp_r1 = gCurTask->data;
    sub_80AC2B4(temp_r1);
    if (temp_r1->unk0 == 0) {
        if (!(0x10 & gLoadedSaveGame.unk34)) {
            goto block_6;
        }
        goto block_4;
    }
    if (0x20 & gLoadedSaveGame.unk34) {
    block_4:
        if (8 & gInput) {
            TasksDestroyInPriorityRange(0, 0xFFFF);
            gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;
            gBgSpritesCount = 0;
            gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;
            sub_80AA554((u8)(temp_r1->unk0 + 2));
            return;
        }
        goto block_6;
    }
block_6:
    temp_r1_2 = temp_r1->unkC + 0x80;
    temp_r1->unkC = temp_r1_2;
    temp_r5 = temp_r1->unk1;
    temp_r2 = (temp_r5 * 0x28) + &strCredits_CreatedBy;
    if ((s32)(s16)((temp_r1_2 >> 8) - 0xA) >= (s32)temp_r2->unk24) {
        if (temp_r2->unk26 == 2) {
            sub_80ACA80(temp_r5, temp_r1->unk2, temp_r1 + 0x58C, temp_r1 + 8, temp_r1 + 0xC);
            temp_r1->unk2 = (u8)(temp_r1->unk2 + 1);
        } else {
            sub_80AC9E8(temp_r5, temp_r1 + 0x14, temp_r1 + 8, temp_r1 + 0xC);
        }
        temp_r0 = temp_r1->unk1 + 1;
        temp_r1->unk1 = temp_r0;
        if ((u32)temp_r0 > 0x7E) {
            gCurTask->main = sub_80AC1E8;
        }
    }
}

void sub_80AC1E8(CreditsRelated248 *strc248)
{
    u16 temp_r1;
    u32 temp_r0;

    temp_r1 = gCurTask->data;
    sub_80AC2B4(temp_r1);
    if (temp_r1->unk0 == 0) {
        if (!(0x10 & gLoadedSaveGame.unk34)) {
            goto block_6;
        }
        goto block_4;
    }
    if (0x20 & gLoadedSaveGame.unk34) {
    block_4:
        if (8 & gInput) {
            TasksDestroyInPriorityRange(0, 0xFFFF);
            gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;
            gBgSpritesCount = 0;
            gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;
            sub_80AA554((u8)(temp_r1->unk0 + 2));
            return;
        }
        goto block_6;
    }
block_6:
    temp_r0 = temp_r1->unkC + 0x80;
    temp_r1->unkC = temp_r0;
    if ((u32)(temp_r0 >> 8) >= (u32)(strCredits_CreatedBy.unk13D4 + 0x82)) {
        sub_80ACAF0(temp_r1->unk0);
        TaskDestroy(gCurTask);
    }
}

void sub_80AC2B4(void)
{
    u8 var_r2;
    u8 var_r2_2;
    u8 var_r2_3;
    u8 var_r2_4;
    u8 var_r2_5;
    u8 var_r2_6;
    u8 var_r2_7;
    u8 var_r3;
    u8 var_r3_2;
    void *var_r1;

    var_r3 = 0;
    gFlags |= 4;
    gHBlankCopyTarget = (void *)0x04000052;
    gHBlankCopySize = 2;
    var_r1 = gBgOffsetsHBlankPrimary;
    var_r2 = 0;
    do {
        *var_r1 = 0xFF00;
        var_r1 += 2;
        var_r2 += 1;
    } while ((u32)var_r2 <= 0x27);
    var_r2_2 = 0x28;
    do {
        *var_r1 = 0xF00;
        var_r1 += 2;
        var_r2_2 += 1;
    } while ((u32)var_r2_2 <= 0x31);
    var_r2_3 = 0x32;
    do {
        *var_r1 = (u16) * ((var_r3 * 2) + &gUnknown_080DB930);
        var_r1 += 2;
        var_r3 += 1;
        var_r2_3 += 1;
    } while ((u32)var_r2_3 <= 0x40);
    var_r2_4 = 0x41;
    do {
        *var_r1 = 0xF;
        var_r1 += 2;
        var_r2_4 += 1;
    } while ((u32)var_r2_4 <= 0x68);
    var_r3_2 = 0xE;
    var_r2_5 = 0x69;
    do {
        *var_r1 = (u16) * ((var_r3_2 * 2) + &gUnknown_080DB930);
        var_r1 += 2;
        var_r3_2 -= 1;
        var_r2_5 += 1;
    } while ((u32)var_r2_5 <= 0x77);
    var_r2_6 = 0x73;
    do {
        *var_r1 = 0xF00;
        var_r1 += 2;
        var_r2_6 += 1;
    } while ((u32)var_r2_6 <= 0x82);
    var_r2_7 = 0x82;
    do {
        *var_r1 = 0xFF00;
        var_r1 += 2;
        var_r2_7 += 1;
    } while ((u32)var_r2_7 <= 0xA0);
}

void Task_130_80AC398(CreditsRelated150 *arg7C, s32 argFC, CreditsRelated150 **argFD)
{
    Sprite *temp_r5;
    s32 *temp_r1_3;
    s32 *temp_r1_6;
    s32 temp_r0;
    s32 temp_r1_5;
    s32 temp_r2;
    s32 temp_r3;
    s32 temp_r4_3;
    s8 temp_r1_4;
    s8 temp_r4;
    s8 temp_r4_2;
    s8 var_r4;
    u16 temp_r1;
    u32 temp_r1_7;
    u8 temp_r0_2;
    u8 temp_r1_2;
    u8 var_r0;
    u8 var_r1;

    temp_r1 = gCurTask->data;
    var_r4 = 0;
    if ((s32) * ((temp_r1->unk0 * 0x28) + &strCredits_CreatedBy) <= 0) {

    } else {
    loop_2:
        temp_r4 = var_r4;
        temp_r1_2 = *(temp_r4 + (temp_r1->unk0 * 0x28) + (&strCredits_CreatedBy + 1));
        switch (temp_r1_2) { /* irregular */
            case 48:
                temp_r0 = temp_r1 + 0x14;
                temp_r2 = temp_r4 * 8;
                *(temp_r0 + ((temp_r4 + 1) * 8)) = *(temp_r0 + temp_r2) + 0x800;
                temp_r1_3 = temp_r1 + 0x18 + temp_r2;
                *temp_r1_3 -= 0x80;
                break;
            case 46:
                var_r1 = 0x1E;
            block_15:
                temp_r1_4 = (s8)var_r1;
                temp_r5 = temp_r1->unk12C + (temp_r1_4 * 0x28);
                temp_r1_5 = temp_r1->unkC;
                temp_r5->x = (s16)temp_r1_5;
                temp_r4_2 = var_r4;
                temp_r3 = temp_r1 + 0x14;
                if (temp_r4_2 != 0) {
                    temp_r5->x = temp_r1_5 + ((s32) * (temp_r3 + (temp_r4_2 * 8)) >> 8);
                }
                temp_r4_3 = temp_r4_2 * 8;
                *(temp_r3 + ((temp_r4_2 + 1) * 8)) = *(temp_r3 + temp_r4_3) + (*((temp_r1_4 * 4) + &gUnknown_080DB868) << 8);
                temp_r1_6 = temp_r1 + 0x18 + temp_r4_3;
                temp_r5->y = temp_r1->unk10 + ((s32)*temp_r1_6 >> 8);
                *temp_r1_6 -= 0x80;
                temp_r0_2 = ((temp_r1->unk0 * 0x28) + &strCredits_CreatedBy)->unk26;
                if (temp_r0_2 == 1) {
                    var_r0 = 8;
                } else if (temp_r0_2 == 3) {
                    var_r0 = 0;
                } else {
                    var_r0 = 1;
                }
                temp_r5->palId = var_r0;
                DisplaySprite(temp_r5);
                break;
            case 38:
                var_r1 = 0x1F;
                goto block_15;
            case 40:
                var_r1 = 0x20;
                goto block_15;
            case 41:
                var_r1 = 0x21;
                goto block_15;
            case 45:
                var_r1 = 0x22;
                goto block_15;
            default:
                var_r1 = temp_r1_2 - 0x41;
                goto block_15;
        }
        temp_r1_7 = (var_r4 << 0x18) + 0x01000000;
        var_r4 = (s8)(temp_r1_7 >> 0x18);
        if ((s32)((s32)temp_r1_7 >> 0x18) < (s32) * ((temp_r1->unk0 * 0x28) + &strCredits_CreatedBy)) {
            goto loop_2;
        }
    }
    if ((s32)temp_r1->unk18 <= 0x2CFF) {
        TaskDestroy(gCurTask);
    }
}

void Task_294_80AC51C(CreditsRelated150 *arg7C, s32 argFC, CreditsRelated150 **argFD)
{
    Sprite *temp_r0_3;
    Sprite *temp_r0_4;
    s32 temp_r2_2;
    u16 temp_r2;
    u8 temp_r0;
    u8 temp_r0_2;
    u8 var_r4;

    temp_r2 = gCurTask->data;
    temp_r0 = temp_r2->unk1;
    if ((u32)temp_r0 <= 0xE) {
        temp_r0_2 = temp_r0 + 5;
        temp_r2->unk1 = temp_r0_2;
        var_r4 = temp_r0;
        if ((u32)var_r4 < (u32)temp_r0_2) {
            do {
                temp_r0_3 = temp_r2 + ((var_r4 * 0x28) + 0x3C);
                temp_r0_3->tiles = temp_r2->unk8;
                temp_r2->unk8 = (u8 *)(temp_r2->unk8 + 0x80);
                temp_r0_3->anim = gUnknown_080DB950.unk0;
                temp_r0_3->variant = var_r4 + gUnknown_080DB950.unk2;
                temp_r0_3->prevVariant = -1;
                temp_r2_2 = var_r4 * 2;
                temp_r0_3->x = *(temp_r2_2 + &gUnknown_080DB958) + 0x38;
                temp_r0_3->y = *(temp_r2_2 + (&gUnknown_080DB958 + 1)) + 0x84;
                temp_r0_3->oamFlags = 0;
                temp_r0_3->animCursor = 0;
                temp_r0_3->qAnimDelay = 0;
                temp_r0_3->animSpeed = 0x10;
                temp_r0_3->palId = 0;
                temp_r0_3->frameFlags = 0;
                UpdateSpriteAnimation(temp_r0_3);
                var_r4 += 1;
            } while ((u32)var_r4 < (u32)temp_r2->unk1);
        }
    } else {
        temp_r0_4 = temp_r2 + 0x14;
        temp_r2->unk14 = (u8 *)temp_r2->unk8;
        temp_r2->unk8 = (u8 *)(temp_r2->unk8 + 0x580);
        temp_r0_4->anim = 0x5F1;
        temp_r0_4->variant = 0;
        temp_r0_4->prevVariant = -1;
        temp_r0_4->x = (s16)((s32)temp_r2->unkC >> 8);
        temp_r0_4->y = (s16)((s32)temp_r2->unk10 >> 8);
        temp_r0_4->oamFlags = 0;
        temp_r0_4->animCursor = 0;
        temp_r0_4->qAnimDelay = 0;
        temp_r0_4->animSpeed = 0x10;
        temp_r0_4->palId = 0;
        temp_r0_4->frameFlags = 0;
        UpdateSpriteAnimation(temp_r0_4);
        temp_r2->unk1 = 0U;
        gCurTask->main = sub_80AC620;
    }
}

void sub_80AC620(CreditsRelated248 *strc248)
{
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    sub_80ACBD4(temp_r1);
    if (*temp_r1 == 0) {
        if (!(0x10 & gLoadedSaveGame.unk34)) {
            goto block_6;
        }
        goto block_4;
    }
    if (0x20 & gLoadedSaveGame.unk34) {
    block_4:
        if (8 & gInput) {
            TasksDestroyInPriorityRange(0, 0xFFFF);
            gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;
            gBgSpritesCount = 0;
            gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;
            sub_80AA554((u8)(*temp_r1 + 2));
            return;
        }
        goto block_6;
    }
block_6:
    if (sub_80ACBA8(temp_r1) == 1) {
        m4aSongNumStart(0x200);
        gCurTask->main = sub_80AC6DC;
    }
}

void sub_80AC6DC(CreditsRelated248 *strc248)
{
    u16 temp_r0_2;
    u16 temp_r1;
    u8 temp_r0;
    u8 temp_r0_3;
    u8 temp_r1_2;

    temp_r1 = gCurTask->data;
    temp_r0 = temp_r1->unk2 - 1;
    temp_r1->unk2 = temp_r0;
    if ((s32)(s8)temp_r0 <= 0x1D) {
        sub_80ACBD4(temp_r1);
        if ((s32)(s8)temp_r1->unk2 < 0) {
            temp_r1->unk2 = 0x32U;
        }
    }
    sub_80ACBF0(temp_r1);
    if (temp_r1->unk0 == 0) {
        if (!(0x10 & gLoadedSaveGame.unk34)) {
            goto block_9;
        }
        goto block_7;
    }
    if (0x20 & gLoadedSaveGame.unk34) {
    block_7:
        if (8 & gInput) {
            TasksDestroyInPriorityRange(0, 0xFFFF);
            gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;
            gBgSpritesCount = 0;
            gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;
            sub_80AA554((u8)(temp_r1->unk0 + 2));
            return;
        }
        goto block_9;
    }
block_9:
    temp_r1_2 = temp_r1->unk1;
    if ((u32)temp_r1_2 <= 0x12) {
        temp_r0_2 = temp_r1->unk4 + 1;
        temp_r1->unk4 = temp_r0_2;
        if ((s16)temp_r0_2 == 0xA) {
            temp_r1->unk4 = 0U;
            temp_r0_3 = temp_r1_2 + 1;
            temp_r1->unk1 = temp_r0_3;
            if ((u32)temp_r0_3 > 0x13) {
                temp_r1->unk1 = 0x13U;
            }
        }
    } else {
        gCurTask->main = sub_80AC7D0;
    }
}

void sub_80AC7D0(CreditsRelated248 *strc248)
{
    u16 temp_r0;
    u16 temp_r1;
    u8 temp_r0_2;

    temp_r1 = gCurTask->data;
    sub_80ACBF0(temp_r1);
    if (temp_r1->unk0 == 0) {
        if (!(0x10 & gLoadedSaveGame.unk34)) {
            goto block_6;
        }
        goto block_4;
    }
    if (0x20 & gLoadedSaveGame.unk34) {
    block_4:
        if (8 & gInput) {
            TasksDestroyInPriorityRange(0, 0xFFFF);
            gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;
            gBgSpritesCount = 0;
            gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;
            sub_80AA554((u8)(temp_r1->unk0 + 2));
            return;
        }
        goto block_6;
    }
block_6:
    temp_r0 = temp_r1->unk4 + 1;
    temp_r1->unk4 = temp_r0;
    if ((s32)(s16)temp_r0 > 0x78) {
        gDispCnt |= DISPCNT_WIN0_ON;
        gWinRegs[WINREG_WIN0H] = WIN_RANGE(0, DISPLAY_WIDTH);
        gWinRegs[WINREG_WIN0V] = WIN_RANGE(0, DISPLAY_HEIGHT);
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FFF;
        temp_r1->unk6 = 0;
        gCurTask->main = sub_80AC8F0;
        return;
    }
    temp_r0_2 = temp_r1->unk2 - 1;
    temp_r1->unk2 = temp_r0_2;
    if ((s32)(s8)temp_r0_2 <= 0x1D) {
        sub_80ACBD4(temp_r1);
        if ((s32)(s8)temp_r1->unk2 < 0) {
            temp_r1->unk2 = 0x32U;
        }
    }
}

void sub_80AC8F0(CreditsRelated248 *strc248)
{
    u16 temp_r1;
    u8 temp_r0;

    temp_r1 = gCurTask->data;
    if (temp_r1->unk0 == 0) {
        if (!(0x10 & gLoadedSaveGame.unk34)) {
            goto block_6;
        }
        goto block_4;
    }
    if (0x20 & gLoadedSaveGame.unk34) {
    block_4:
        if (8 & gInput) {
            TasksDestroyInPriorityRange(0, 0xFFFF);
            gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;
            gBgSpritesCount = 0;
            gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;
            sub_80AA554((u8)(temp_r1->unk0 + 2));
            return;
        }
        goto block_6;
    }
block_6:
    if ((u32)gBldRegs.bldY > 0xF) {
        gBldRegs.bldY = 0x10;
        sub_80AA554(temp_r1->unk0);
        TaskDestroy(gCurTask);
        return;
    }
    gBldRegs.bldY = I(temp_r1->unk6);
    temp_r1->unk6 = (u16)(temp_r1->unk6 + 0x100);
    temp_r0 = temp_r1->unk2 - 1;
    temp_r1->unk2 = temp_r0;
    if ((s32)(s8)temp_r0 <= 0x1D) {
        sub_80ACBD4(temp_r1);
        if ((s32)(s8)temp_r1->unk2 < 0) {
            temp_r1->unk2 = 0x32U;
        }
    }
    sub_80ACBF0(temp_r1);
}

void TaskDestructor_62C_80AC9E4(Task *arg0) { }

void sub_80AC9E8(u8 arg0, s32 arg1, s32 arg2, s32 arg3)
{
    s32 temp_r1;
    u16 temp_r3;
    u8 var_r2;

    temp_r3 = TaskCreate(Task_130_80AC398, 0x130, 0x100, 0, TaskDestructor_130_80ACB48)->data;
    temp_r3->unk12C = arg1;
    temp_r3->unk0 = arg0;
    temp_r3->unk4 = arg2;
    temp_r3->unk8 = arg3;
    temp_r3->unkC = (s32)((temp_r3->unk0 * 0x28) + &strCredits_CreatedBy)->unk22;
    temp_r3->unk10 = 0;
    var_r2 = 0;
    do {
        temp_r1 = var_r2 * 8;
        *(temp_r3 + 0x14 + temp_r1) = 0;
        *(temp_r3 + 0x18 + temp_r1) = 0x8200;
        var_r2 += 1;
    } while ((u32)var_r2 <= 0x22);
}

void sub_80ACA80(u8 arg0, u8 arg1, s32 arg2, s32 arg3, s32 arg4)
{
    u16 temp_r1;

    temp_r1 = TaskCreate(Task_18_80ACB50, 0x18, 0x100, 0, TaskDestructor_18_80ACB4C)->data;
    temp_r1->unk1 = arg1;
    temp_r1->unk0 = arg0;
    temp_r1->unk4 = arg3;
    temp_r1->unk8 = arg4;
    temp_r1->unkC = (s32)(((temp_r1->unk0 * 0x28) + &strCredits_CreatedBy)->unk22 << 8);
    temp_r1->unk10 = 0x8200;
    temp_r1->unk14 = arg2;
}

void sub_80ACAF0(u8 arg0)
{
    u16 temp_r0;

    temp_r0 = TaskCreate(Task_294_80AC51C, 0x294, 0x100, 0, TaskDestructor_294_80ACBA4)->data;
    temp_r0->unk0 = arg0;
    temp_r0->unk1 = 0;
    temp_r0->unk4 = 0;
    temp_r0->unk2 = 0x1E;
    temp_r0->unkC = 0x7800;
    temp_r0->unk10 = 0x8C00;
    temp_r0->unk6 = 0;
    temp_r0->unk8 = 0x06010000;
}

void TaskDestructor_130_80ACB48(Task *arg0) { }

void TaskDestructor_18_80ACB4C(Task *arg0) { }

void Task_18_80ACB50(CreditsRelated150 *arg7C, s32 argFC, CreditsRelated150 **argFD)
{
    Sprite *temp_r0;
    s32 temp_r0_2;
    u16 temp_r4;

    temp_r4 = gCurTask->data;
    temp_r0 = temp_r4->unk14 + (*(temp_r4->unk1 + &gUnknown_080DB864) * 0x28);
    temp_r0->x = (s16)((s32)temp_r4->unkC >> 8);
    temp_r0->y = (s16)((s32)temp_r4->unk10 >> 8);
    DisplaySprite(temp_r0);
    temp_r0_2 = temp_r4->unk10 - 0x80;
    temp_r4->unk10 = temp_r0_2;
    if (temp_r0_2 <= 0x1DFF) {
        TaskDestroy(gCurTask);
    }
}

void TaskDestructor_294_80ACBA4(Task *arg0) { }

s32 sub_80ACBA8(void *arg0)
{
    s32 temp_r0;
    s32 temp_r0_2;

    temp_r0 = arg0->unk10;
    if ((temp_r0 <= 0x1400) || (temp_r0_2 = temp_r0 + 0xFFFFFE00, arg0->unk10 = temp_r0_2, (temp_r0_2 <= 0x1400))) {
        arg0->unk10 = 0x1400;
        return 1;
    }
    return 0;
}

void sub_80ACBD4(void *arg0)
{
    Sprite *temp_r2;

    temp_r2 = arg0 + 0x14;
    temp_r2->x = (s16)((s32)arg0->unkC >> 8);
    temp_r2->y = (s16)((s32)arg0->unk10 >> 8);
    DisplaySprite(temp_r2);
}

void sub_80ACBF0(void *arg0)
{
    Sprite *temp_r0;
    s32 temp_r2;
    u8 var_r4;

    var_r4 = 0;
    if ((u32)arg0->unk1 > 0) {
        do {
            temp_r0 = arg0 + ((*(var_r4 + &gUnknown_080DB97E) * 0x28) + 0x3C);
            temp_r2 = var_r4 * 2;
            temp_r0->x = *(temp_r2 + &gUnknown_080DB958) + 0x38;
            temp_r0->y = *(temp_r2 + (&gUnknown_080DB958 + 1)) + 0x84;
            DisplaySprite(temp_r0);
            var_r4 += 1;
        } while ((u32)var_r4 < (u32)arg0->unk1);
    }
}
#endif // inner
#endif
