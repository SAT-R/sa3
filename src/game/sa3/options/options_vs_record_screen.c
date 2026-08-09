#include "global.h"
#include "core.h"

typedef struct {
    /* 0x000 */ u8 language;
    /* 0x001 */ u8 unk1;
    /* 0x002 */ u8 unk2;
    /* 0x003 */ u8 unk3;
    /* 0x004 */ u8 unk4;
    /* 0x005 */ u8 unk5;
    /* 0x006 */ u8 unk6[6];
    /* 0x00C */ u8 unkC;
    /* 0x00D */ u8 unkD[0xB];
    /* 0x018 */ u8 unk18;
    /* 0x019 */ u8 unk19;
    /* 0x01A */ u8 unk1A;
    /* 0x01B */ u8 vsRecordPlayerCount;
    /* 0x01C */ u16 unk1C;
    /* 0x01E */ u16 unk1E;
    /* 0x020 */ u8 filler20[0x4];
    /* 0x028 */ u16 unk24;
    /* 0x028 */ u16 unk26;
    /* 0x028 */ u16 unk28;
    /* 0x02A */ u16 unk2A;
    /* 0x02C */ u8 filler2C[0xC];
    /* 0x038 */ u8 vsWinsTens;
    /* 0x039 */ u8 vsWinsOnes;
    /* 0x03A */ u8 vsLossesTens;
    /* 0x03B */ u8 vsLossesOnes;
    /* 0x03C */ u8 vsDrawsTens;
    /* 0x03D */ u8 vsDrawsOnes;
    /* 0x03E */ u8 filler3E[0x84];
    // Used for rendering digits. [player_count][vsRecordType][tens/ones]
    /* 0x0C2 */ u8 recordsOtherPlayers[11][3][2];
    /* 0x104 */ s32 vram104;
    /* 0x108 */ u8 filler108[0x8];
    /* 0x110 */ s32 qUnk110;
    /* 0x114 */ s32 qUnk114;
    /* 0x118 */ s32 qUnk118;
    /* 0x11C */ s32 qUnk11C;
    /* 0x120 */ s32 qUnk120;
    /* 0x124 */ s32 qUnk124;
    /* 0x128 */ s32 qUnk128;
    /* 0x12C */ s32 qUnk12C;
    /* 0x130 */ s32 qUnk130;
    /* 0x134 */ s32 qUnk134;
    /* 0x138 */ s32 qUnk138;
    /* 0x13C */ s32 qUnk13C;
    /* 0x140 */ s32 qUnk140;
    /* 0x144 */ s32 qUnk144;
    /* 0x148 */ s32 qUnk148;
    /* 0x14C */ s32 qUnk14C;
    /* 0x150 */ Sprite spr150;
    /* 0x178 */ Sprite spr178[6];
    /* 0x150 */ Sprite spr268[6];
    /* 0x150 */ Sprite spr358[6][6];
    /* 0x8F8 */ Sprite spr8F8[6][6];
    /* 0xE98 */ Sprite sprE98;
    /* 0xE98 */ Sprite sprEC0;
    /* 0xE98 */ u8 fillerEE8[0xD0];
} OptionsVsRecordScreen; /* 0xFB8 */


void Task_VsRecordScreen(void);
void sub_8096918(OptionsVsRecordScreen *vsRecScreen);
void sub_8096B30(OptionsVsRecordScreen *vsRecScreen);
void sub_8096C60(OptionsVsRecordScreen *vsRecScreen);
void sub_8096EB8(OptionsVsRecordScreen *vsRecScreen);
void TaskDestructor_VsRecordScreen(struct Task *t);

extern ColorRaw sub_80C4C0C(ColorRaw color);

void CreateVsRecordScreen(void)
{
    OptionsVsRecordScreen *vsRecScreen;

    gDispCnt = DISPCNT_OBJ_ON | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_OBJ_1D_MAP | DISPCNT_MODE_0;

    vsRecScreen = TASK_DATA(TaskCreate(Task_VsRecordScreen, sizeof(OptionsVsRecordScreen), 0x101U, 0U, TaskDestructor_VsRecordScreen));
    sub_8096B30(vsRecScreen);
    sub_8096918(vsRecScreen);
    DmaFill32(3, 0, BG_CHAR_ADDR_FROM_BGCNT(2), 0x40);

    gBgSprites_Unknown1[0] = 0;
    gBgSprites_Unknown2[0][0] = 0;
    gBgSprites_Unknown2[0][1] = 0;
    gBgSprites_Unknown2[0][2] = -1;
    gBgSprites_Unknown2[0][3] = 0x40;
    gBgSprites_Unknown1[1] = 3;
    gBgSprites_Unknown2[1][0] = 0;
    gBgSprites_Unknown2[1][1] = 0;
    gBgSprites_Unknown2[1][2] = -1;
    gBgSprites_Unknown2[1][3] = 0x40;
    gBgSprites_Unknown1[2] = 0;
    gBgSprites_Unknown2[2][0] = 0;
    gBgSprites_Unknown2[2][1] = 0;
    gBgSprites_Unknown2[2][2] = -1;
    gBgSprites_Unknown2[2][3] = 0x40;

    sub_8096EB8(vsRecScreen);
    sub_8096C60(vsRecScreen);

    gBgPalette[0] = sub_80C4C0C(RGB_BLACK);
}
