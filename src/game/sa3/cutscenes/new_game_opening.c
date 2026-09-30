#include "global.h"
#include "core.h"
#include "flags.h"
#include "malloc_ewram.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "code_0_1.h"
#include "code_z_1.h"
#include "game/game_over.h"
#include "game/notification_text.h"
#include "game/save.h" // NUM_LANGUAGES
#include "game/stage.h" // gStageData
#include "game/special_stage.h" // sub_808ADF0
#include "constants/songs.h"

typedef struct {
    /* 0x00 */ s32 unk0;
    /* 0x04 */ s32 unk4;
    /* 0x08 */ u8 unk8;
    /* 0x08 */ u8 unk9;
    /* 0x08 */ u8 unkA;
    /* 0x08 */ u16 unkC;
    /* 0x3C */ NotificationText *ewramData10;
} NewGameOpening14;

typedef struct {
    /* 0x00 */ u8 unk0;
    /* 0x00 */ s16 unk2;
    /* 0x00 */ s32 unk4;
    /* 0x00 */ s32 unk8;
    /* 0x0C */ Sprite2 sprC;
    /* 0x3C */ Sprite2 spr3C;
} NewGameOpening6C;

typedef struct {
    /* 0x00 */ u8 unk0;
    /* 0x00 */ u8 unk1;
    /* 0x00 */ s16 unk2;
    /* 0x04 */ s32 qX;
    /* 0x08 */ s32 qY;
    /* 0x0C */ Sprite2 sprC;
    /* 0x3C */ Sprite2 spr3C;
    /* 0x6C */ Sprite2 spr6C;
} NewGameOpening9C;

typedef struct {
    /* 0x00 */ u8 unk0;
    /* 0x00 */ u8 unk1;
    /* 0x00 */ u8 unk2;
    /* 0x00 */ u8 unk3;
    /* 0x04 */ u16 unk4;
    /* 0x08 */ void *vram8;
    /* 0x0C */ Vec2_32 unkC;
    /* 0x0C */ Vec2_32 unk14;
    /* 0x0C */ Vec2_32 qUnk1C;
    /* 0x14 */ Background bg24;
    /* 0x14 */ Background bg64;
} NewGameOpeningA4;

// TODO: struct is probably not used?
// Only used as arg for sub_80AD584(), which is itself unused.
// But sub_80ACD10() has a similar structure, so maybe it's an inline.
// sub_80ACD10() gets a (NewGameOpeningB8 *) though, not NewGameOpeningAC.
typedef struct {
    /* 0x00 */ u8 filler[0x20];
    /* 0x20 */ Vec2_32 qUnk20;
    /* 0x00 */ u8 filler28[0x34];
    /* 0x5C */ Sprite spr5C;
    /* 0x84 */ Sprite spr84;
} NewGameOpeningAC;

typedef struct {
    /* 0x00 */ u8 *unk0;
    /* 0x04 */ s32 *unk4;
    /* 0x08 */ s32 *unk8;
    /* 0x0C */ s32 unkC;
    /* 0x10 */ s32 unk10;
    /* 0x14 */ Sprite spr14[4];
} NewGameOpeningB4;

typedef struct {
    /* 0x00 */ s32 unk0;
    /* 0x04 */ s32 qX;
    /* 0x08 */ s32 qY;
    /* 0x10 */ s32 *unkC;
    /* 0x10 */ u8 unk10;
    /* 0x14 */ u8 *unk14;
    /* 0x18 */ u8 unk18;
    /* 0x19 */ u8 unk19;
    /* 0x1A */ u8 unk1A;
    /* 0x1B */ u8 unk1B;
    /* 0x1B */ u16 unk1C;
    /* 0x1B */ u16 unk1E;
    /* 0x28 */ Vec2_32 qUnk20;
    /* 0x28 */ Vec2_32 qUnk28;
    /* 0x30 */ void **unk30;
    /* 0x00 */ Sprite spr34;
    /* 0x00 */ Sprite spr5C;
    /* 0x00 */ Sprite spr84;
    /* 0x00 */ Sprite *pSprAC;
    /* 0x00 */ Sprite *pSprB0;
    /* 0xB4 */ NotificationText *ewramDataB4;
} NewGameOpeningB8;

typedef struct {
    /* 0x00 */ u8 unk0;
    /* 0x00 */ u8 *unk4;
    /* 0x00 */ u16 unk8;
    /* 0x00 */ s32 *unkC;
    /* 0x00 */ s32 *unk10;
    /* 0x00 */ Vec2_32 qUnk14;
    /* 0x14 */ Sprite spr1C[4];
    /* 0x14 */ Sprite sprBC[2];
    /* 0x14 */ Sprite spr10C;
} NewGameOpening134;

void sub_80ACC40(u8 arg0);
void Task_B8_80ACDB8(void);
void sub_80ACD10(NewGameOpeningB8 *strcB8);
void Task_B8_80ACEA4(void);
void Task_B8_80ACF48(void);
void sub_80AD030(NewGameOpeningB8 *arg0);
void sub_80AD0B0(u8 *param0, Vec2_32 *qPos);
void sub_80AD190(NewGameOpeningB4 *strcB4);
void sub_80AD234(u8 *arg0, Vec2_32 *arg1, u8 arg2);
void sub_80AD408(NewGameOpening134 *strc134);
void sub_80AD584(NewGameOpeningAC *strcAC);
void Task_B8_80AD634(void);
void sub_80AD72C(NewGameOpeningB8 *strcB8);
void sub_80AD7B4(NotificationText *arg0, u8 arg1, u16 arg2, u16 arg3, u8 *vram);
void CreateNewGamesaveOpening(void);
bool32 sub_80AE2C4(NewGameOpeningB8 *strcB8);
s32 sub_80AE2E8(NewGameOpeningB8 *strcB8);
void sub_80AE95C(u8 arg0);
void sub_80AD9E4(void);
void Task_14_B_80ADB20(void);
void Task_6C_80ADBA0(void);
void Task_6C_80ADC74(void);
void Task_9C_80ADCF8(void);
void Task_9C_80ADE18(void);
void Task_9C_80ADF10(void);
void Task_9C_80AE034(void);
void sub_80AE174(void); // BUG: make sure to fix one of the VRAM pointers not getting free'd!
void TaskDestructor_80AE208(Task *t);
void TaskDestructor_80AE224(Task *t);
void Task_B8_80AE248(void);
void TaskDestructor_B4_80AE3D4(Task *t);
void Task_B4_80AE3E8(void);
void Task_134_80AE45C(void);
void Task_B8_80AE53C(void);
void Task_B8_80AE5C4(void);
s32 sub_80AE66C(NewGameOpeningB8 *strcB8);
void Task_80AE69C(void);
void Task_14_B_80AE720(void);
void Task_6C_80AE7C4(void);
bool32 sub_80AE814(NewGameOpening6C *strc6C);
void Task_9C_80AE884(void);
void Task_9C_80AE90C(void);
void Task_A4_80AEBF0(void);
void Task_A4_80AED80(void);
void sub_80AEDB8(NewGameOpeningA4 *strcA4);

void Task_14_A_80AD968(void);
AnimCmdResult sub_80ADEA0(NewGameOpening9C *strc9C);
void TaskDestructor_14_A_80AE688(Task *t);

void TaskDestructor_80AE448(Task *t);
bool32 sub_80AE63C(NewGameOpeningB8 *arg0);
void TaskDestructor_14_B_80AE71C(Task *t);
bool32 sub_80AE8D4(NewGameOpening9C *strc9C);

bool32 sub_80AE09C(NewGameOpening9C *strc9C);
AnimCmdResult sub_80AE110(NewGameOpening9C *strc9C);

void TaskDestructor_9C_80AE1B4(Task *t);

void Task_80AE6D8(void);
void Task_14_B_80AE760(void);
extern void CreateGameIntroState(u16 state);
extern void sub_8000804(u16 arg3);
extern void sub_80C621C(void);

AnimCmdResult sub_80AE850(NewGameOpening6C *strc6C);
void TaskDestructor_80AE524(Task *t);
void TaskDestructor_6C_80AE7B0(Task *t);
void Task_A4_80AEA44(void);
void TaskDestructor_80AED7C(Task *t);

extern void *CreateSomeTask_809BF3C(void *param0, void *param1, void *param2, void *param3, void *tiles);
extern ColorRaw sub_80C4C0C(ColorRaw color);

extern const u16 gUnknown_080DBD88[4];
extern const u16 gUnknown_080DBD64[3][6];
extern const u8 gUnknown_080DBE50[3];
extern const ColorRaw *gUnknown_08E2EF64[3];

extern TileInfo2 gUnknown_080DBA8C;
extern const u8 gUnknown_080DBCBE[3][9];
extern const u8 gUnknown_080DBCD9[3][9];
extern const u16 gUnknown_080DB994[4];
extern const u8 gUnknown_080DBCBB[3];
extern const u8 gUnknown_080DBCB9[2];
extern u8 gUnknown_080DBCF9[3];

extern const TileInfo2 gUnknown_080DBA94[2];
extern const TileInfo2 *gUnknown_080DBAA4[4];
extern const u8 gUnknown_080DBCAE[4];
extern u8 gUnknown_080DBCF4[5];
extern const TileInfo2 gUnknown_080DBD1C[3];
extern const TileInfo2 gUnknown_080DBD34;

extern const u8 gUnknown_080DBC78[3][9];
extern const s8 gUnknown_080DBC93[3][9];
extern TileInfo2 gUnknown_080DBD3C[3];
extern TileInfo2 gUnknown_080DBD54;

extern u8 gUnknown_080DBD5C[8];

extern const u8 *gUnknown_08E2EF44[];
extern const TileInfo2 **gUnknown_08E2EF54[];

extern const u16 *(*gNotificationTexts[NUM_LANGUAGES])[256];

void sub_80ACC40(u8 arg0)
{
    s32 sp4;
    NotificationText *notifA, *notifB;
    NewGameOpeningB8 *strcB8;
    s32 bufferSize = 0;

    strcB8 = TASK_DATA(TaskCreate(Task_B8_80AE248, sizeof(NewGameOpeningB8), 0x100U, 0U, TaskDestructor_80AE224));
    strcB8->unk1B = 0;
    strcB8->unk1C = 0;
    strcB8->unk10 = 0;
    strcB8->unk1E = 0;
    strcB8->unk14 = 0;
    strcB8->unk18 = arg0;
    strcB8->unk1A = 0;
    strcB8->unk0 = 1;
    strcB8->qY = 0;
    strcB8->unkC = 0;
    strcB8->unk19 = 0x12;
    strcB8->qUnk20.x = -0xD200;
    strcB8->qUnk20.y = +0x1C00;
    strcB8->qUnk28.x = -0xD200;
    strcB8->qUnk28.y = +0x4C00;
    bufferSize = sizeof(NotificationText);
    notifA = EwramMalloc(bufferSize);
    strcB8->ewramDataB4 = notifA;
    notifA->unk6 = 0;
    strcB8->ewramDataB4->s = NULL;
    strcB8->ewramDataB4->vram28 = (void *)(OBJ_VRAM0 + 0x2000);
    CpuFastFill16(0, strcB8->ewramDataB4->vram28, 0xF00);
    notifB = strcB8->ewramDataB4;
    notifB->vram24 = notifB->vram28;
    sub_80ACD10(strcB8);
    m4aMPlayAllStop();
    m4aSongNumStart(MUS_DEMO);
}

void sub_80ACD10(NewGameOpeningB8 *strcB8)
{
    u8 *temp_r0 = VramMalloc(0x36U);
    Sprite *s = &strcB8->spr5C;
    u8 *temp_r6;

    s->tiles = temp_r0;
    temp_r6 = temp_r0 + (gUnknown_080DBA94[1].numTiles * TILE_SIZE_4BPP);

    {
        s->anim = gUnknown_080DBA94[1].anim;
        s->variant = gUnknown_080DBA94[1].variant;
        s->prevVariant = -1;
        s->x = (s16)((s32)strcB8->qUnk20.x >> 8);
        s->y = (s16)((s32)strcB8->qUnk20.y >> 8);
        s->oamFlags = 0x140;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }

    {
        Sprite *s = (Sprite *)&strcB8->spr84;
        s->tiles = temp_r6;
        s->anim = gUnknown_080DBA94[0].anim;
        s->variant = gUnknown_080DBA94[0].variant;
        s->prevVariant = -1;
        s->x = (s16)((s32)strcB8->qUnk20.x >> 8);
        s->y = (s16)((s32)strcB8->qUnk20.y >> 8);
        s->oamFlags = 0x140;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }
}

// TODO: Fake-match!
// Probably due to NewGameOpeningB8 maybe being a different 0xB8-sized struct
// than is used further down below in the file?
void Task_B8_80ACDB8(void)
{
    NewGameOpeningB8 *strcB8 = TASK_DATA(gCurTask);
    NotificationText *temp_r0_2;
    volatile NotificationText *temp_r1;
    NotificationText *temp_r1_2;
    s32 temp_r3;
    s32 temp_r4;
    s32 temp_r4_2;
    u8 temp_r0;

    sub_80AD030(strcB8);

    if (sub_80AE2C4(strcB8) == 0) {
        sub_80AE2E8(strcB8);
        return;
    }
    strcB8->unk1A = gUnknown_080DBC93[strcB8->unk18][strcB8->unk10];
    temp_r4 = strcB8->qY;
    if (temp_r4 == 0) {
        temp_r3 = strcB8->unk0;
        if (temp_r3 == 1) {
            if (gUnknown_080DBC78[strcB8->unk18][strcB8->unk10] != 0) {
                if (gUnknown_080DBC78[strcB8->unk18][strcB8->unk10] != 0xFE) {
#ifndef NON_MATCHING
                    register volatile NotificationText **notif asm("r2");
#else
                    volatile NotificationText **notif;
#endif

                    NotificationText *notif0;
                    strcB8->unk19 = gUnknown_080DBC78[strcB8->unk18][strcB8->unk10];
                    notif = (volatile NotificationText **)&strcB8->ewramDataB4;
                    temp_r1 = (volatile NotificationText *)*notif;
                    temp_r1->vram24 = temp_r1->vram28;

#ifndef NON_MATCHING
                    asm("ldr %0, [%1]" : "=r"(notif0) : "r"(notif));
                    asm("" ::"r"(notif));
#else
                    notif0 = (NotificationText *)*notif;
#endif
                    sub_80AD7B4(notif0, strcB8->unk19, 0x48U, 0x28U, (notif0)->vram28);
                    strcB8->unk0 = 0;
                    strcB8->qY = 0;
                }
            } else {
                strcB8->qY = 1;
            }
            strcB8->unk10 += 1;
        }
    }
    if (strcB8->unk0 == 0) {
        strcB8->unk0 = sub_8023734(strcB8->ewramDataB4);
        sub_80239A8(strcB8->ewramDataB4);
    }

    if (strcB8->unk0 == 1) {
        temp_r1_2 = strcB8->ewramDataB4;
        if (temp_r1_2->unk6 != 0) {
            sub_80239A8(temp_r1_2);
        }
        strcB8->unk1E = 0;
        strcB8->qY = 1;
        gCurTask->main = Task_B8_80ACEA4;
    }
}

void Task_B8_80ACEA4(void)
{
    NewGameOpeningB8 *strcB8 = TASK_DATA(gCurTask);

    strcB8->unk1E += 1;

    sub_80AD030(strcB8);
    if (gUnknown_080DBC78[strcB8->unk18][strcB8->unk10] != 0xFE) {
        sub_80239A8(strcB8->ewramDataB4);
    } else {
        strcB8->ewramDataB4->unk6 = 0;
    }
    if (strcB8->qY == 0) {
        strcB8->unk0 = 1;
        if (gUnknown_080DBC78[strcB8->unk18][strcB8->unk10] == 0xFF) {
            strcB8->qY = 1;
            gCurTask->main = Task_B8_80ACF48;
        } else {
            gCurTask->main = Task_B8_80ACDB8;
        }
    }
}

void Task_B8_80ACF48(void)
{
    NewGameOpeningB8 *strcB8 = TASK_DATA(gCurTask);

    strcB8->qY = 1;

    sub_80AD030(strcB8);
    sub_80239A8(strcB8->ewramDataB4);
    if (gStageData.playerIndex == PLAYER_1) {
        if (strcB8->unk1B != 0) {
            gDispCnt |= DISPCNT_WIN0_ON;
            gWinRegs[0] = WIN_RANGE(0, DISPLAY_WIDTH);
            gWinRegs[2] = WIN_RANGE(0, DISPLAY_HEIGHT);
            gWinRegs[4] |= 0x3F;
            gWinRegs[5] |= 0x1F;
            gBldRegs.bldCnt = 0x3FFF;
            strcB8->unk1C = 0;
            strcB8->unk1B = 0;
        }
        if (gBldRegs.bldY < 0x10) {
            gBldRegs.bldY = I(strcB8->unk1C);
            strcB8->unk1C += 0x100;
        } else {
            gBldRegs.bldY = 0x10;
            sub_8003D2C();
            TasksDestroyAll();
            PAUSE_BACKGROUNDS_QUEUE();
            gBgSpritesCount = 0;
            PAUSE_GRAPHICS_QUEUE();
            sub_80AE95C(strcB8->unk18);
        }
    }
}

void sub_80AD030(NewGameOpeningB8 *arg0)
{
    s32 sp0;
    Sprite *s;
    s32 temp_r1;
    s32 temp_r2;
    u16 var_r6 = 0;
    u8 var_r7;
    for (var_r7 = 0; var_r7 < 3; var_r7++) {
        Sprite *s = (Sprite *)&arg0->spr84;
        s->x = I(arg0->qUnk20.x);
        s->y = I(arg0->qUnk20.y);
        s->x += var_r6;
        s->frameFlags &= ~0x400;
        s->palId = 0;
        DisplaySprite(s);

        var_r6 += 0x40;
    }

    {
        Sprite *s = &arg0->spr5C;
        s->x = I(arg0->qUnk20.x);
        s->y = I(arg0->qUnk20.y);
        s->x += var_r6;
        s->frameFlags &= ~0x400;
        s->palId = 0;
        DisplaySprite(s);
    }
}

void sub_80AD0B0(u8 *param0, Vec2_32 *qPos)
{
    u8 *var_r7 = NULL;
    u8 var_r4;
    const TileInfo2 *temp_r2;
    NewGameOpeningB4 *strcB4 = TASK_DATA(TaskCreate(Task_B4_80AE3E8, sizeof(NewGameOpeningB4), 0x100U, 0U, TaskDestructor_B4_80AE3D4));
    s32 one;

    strcB4->unk0 = param0;
    strcB4->unk4 = &qPos->x;
    strcB4->unk8 = &qPos->y;
    strcB4->unkC = 0;
    strcB4->unk10 = 0;
    var_r7 = VramMalloc(0x49U);

    one = 1;
    for (var_r4 = 0; var_r4 < gUnknown_080DBCAE[one]; var_r4++) {
        Sprite *s = &strcB4->spr14[var_r4];
        s->tiles = var_r7;
        var_r7 += gUnknown_080DBAA4[one][var_r4].numTiles << 5;
        s->anim = gUnknown_080DBAA4[one][var_r4].anim;
        s->variant = gUnknown_080DBAA4[one][var_r4].variant;
        s->prevVariant = -1;
        s->x = I(*strcB4->unk4);
        s->y = I(*strcB4->unk8);
        s->oamFlags = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0x400;
        UpdateSpriteAnimation(s);
    }
}

void sub_80AD190(NewGameOpeningB4 *strcB4)
{
    Sprite *temp_r4;
    const TileInfo2 *temp_r0_2;
    s32 temp_r1_2;
    s32 temp_r2_2;
    s32 temp_r2_3;
    u8 *var_r7;
    u8 temp_r0;
    u8 temp_r2;
    u8 var_r3;
    u8 var_r6;
    void *temp_r1;
    u32 max;

    if (*strcB4->unk0 != 0xFF) {
        var_r3 = *strcB4->unk0;
    } else {
        var_r3 = 0;
    }
    var_r7 = strcB4->spr14[0].tiles;
    for (var_r6 = 0; var_r6 < gUnknown_080DBCAE[var_r3]; var_r6++) {
        {
            temp_r4 = &strcB4->spr14[var_r6];
            temp_r4->tiles = var_r7;
            var_r7 += gUnknown_080DBAA4[var_r3][var_r6].numTiles << 5;
            temp_r4->anim = gUnknown_080DBAA4[var_r3][var_r6].anim;
            temp_r4->variant = gUnknown_080DBAA4[var_r3][var_r6].variant;
            temp_r4->prevVariant = -1;
            temp_r1_2 = I(*strcB4->unk4);
            temp_r4->x = (s16)temp_r1_2;
            temp_r2_3 = I(*strcB4->unk8);
            temp_r4->y = (s16)temp_r2_3;
            temp_r4->x = temp_r1_2 + I(strcB4->unkC);
            temp_r4->y = temp_r2_3 + I(strcB4->unk10);
            UpdateSpriteAnimation(temp_r4);
            DisplaySprite(temp_r4);
        }
    }
}

void sub_80AD234(u8 *arg0, Vec2_32 *arg1, u8 arg2)
{
    s32 sp4;
    Sprite *temp_r0;
    Sprite *temp_r0_2;
    TileInfo **temp_r4_2;
    s32 temp_r1;
    s32 temp_r3;
    s32 temp_r3_2;
    u8 *var_sb = NULL;
    u8 temp_r4;
    u8 temp_r4_3;
    u8 var_r6;
    u8 var_r6_2;
    void *temp_r2;
    void *temp_r2_2;
    NewGameOpening134 *strc134 = TASK_DATA(TaskCreate(Task_134_80AE45C, sizeof(NewGameOpening134), 0x100U, 0U, TaskDestructor_80AE448));
    strc134->unk0 = arg2;
    strc134->unk4 = arg0;
    strc134->unkC = &arg1->x;
    strc134->unk10 = &arg1->y;
    strc134->qUnk14.x = 0x1400;
    strc134->qUnk14.y = -0x2800;
    strc134->unk8 = 0;
    temp_r4 = strc134->unk0;
    var_sb = VramMalloc(gUnknown_080DB994[temp_r4]);
    sp4 = gUnknown_080DBCBB[temp_r4];
    for (var_r6 = 0; var_r6 < gUnknown_08E2EF44[temp_r4][sp4]; var_r6++) {
        const TileInfo2 **ti;
        temp_r0 = &strc134->spr1C[var_r6];
        temp_r0->tiles = var_sb;
        var_sb += gUnknown_08E2EF54[temp_r4][sp4][var_r6].numTiles << 5;
        temp_r0->anim = gUnknown_08E2EF54[temp_r4][sp4][var_r6].anim;
        temp_r0->variant = gUnknown_08E2EF54[temp_r4][sp4][var_r6].variant;
        temp_r0->prevVariant = -1;
        temp_r0->x = I(*strc134->unkC);
        temp_r0->y = I(*strc134->unk10);
        temp_r0->oamFlags = 0x40;
        temp_r0->animCursor = 0;
        temp_r0->qAnimDelay = 0;
        temp_r0->animSpeed = 0x10;
        temp_r0->palId = 0;
        temp_r0->frameFlags = 0;
        UpdateSpriteAnimation(temp_r0);
    }
    if (strc134->unk0 == 1) {
        for (var_r6 = 0; var_r6 < 2; var_r6++) {
            temp_r0_2 = &strc134->sprBC[var_r6];
            temp_r0_2->tiles = var_sb;
            var_sb += gUnknown_08E2EF54[3][0][var_r6].numTiles << 5;
            temp_r0_2->anim = gUnknown_08E2EF54[3][0][var_r6].anim;
            temp_r0_2->variant = gUnknown_08E2EF54[3][0][var_r6].variant;
            temp_r0_2->prevVariant = -1;
            temp_r0_2->x = I(*strc134->unkC);
            temp_r0_2->y = I(*strc134->unk10);
            temp_r0_2->oamFlags = 0;
            temp_r0_2->animCursor = 0;
            temp_r0_2->qAnimDelay = 0;
            temp_r0_2->animSpeed = 0x10;
            temp_r0_2->palId = 0;
            temp_r0_2->frameFlags = 0;
            UpdateSpriteAnimation(temp_r0_2);
        }
    }

    if (strc134->unk0 == 0) {
        Sprite *s = &strc134->spr10C;
        s->tiles = var_sb;
        s->anim = gUnknown_080DBA8C.anim;
        s->variant = gUnknown_080DBA8C.variant;
        s->prevVariant = -1;
        s->x = I(*strc134->unkC);
        s->y = I(*strc134->unk10);
        s->oamFlags = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }
}

// TODO: Fake-match!
void sub_80AD408(NewGameOpening134 *strc134)
{
    Sprite *temp_r4;
    Sprite *temp_r4_2;
    TileInfo **temp_r3;
    s32 temp_r2;
    s32 temp_r2_2;
    u8 *var_sb;
    u8 temp_r1;
    u8 var_r8;
    u8 var_r8_2;
    void *temp_r1_2;
    TileInfo2 *temp_r1_3;
    u8 *pIndex;

    temp_r1 = strc134->unk0;
    var_sb = strc134->spr1C[0].tiles;
    for (var_r8 = 0; var_r8 < gUnknown_08E2EF44[temp_r1][*(pIndex = strc134->unk4)]; var_r8++) {
        {
            temp_r4 = &strc134->spr1C[var_r8];
            temp_r4->tiles = var_sb;
            var_sb += ((gUnknown_08E2EF54[temp_r1])[*pIndex])[var_r8].numTiles << 5;
            temp_r4->anim = ((gUnknown_08E2EF54[temp_r1])[*pIndex])[var_r8].anim;
            temp_r4->variant = ((gUnknown_08E2EF54[temp_r1])[*strc134->unk4])[var_r8].variant;
            temp_r4->prevVariant = -1;
            temp_r4->x = I(*strc134->unkC);
            temp_r4->y = I(*strc134->unk10);
            temp_r4->oamFlags = 0x40;
            temp_r4->animCursor = 0;
            temp_r4->qAnimDelay = 0;
            temp_r4->animSpeed = 0x10;
            temp_r4->palId = 0;
            temp_r4->frameFlags = 0;
            UpdateSpriteAnimation(temp_r4);
            DisplaySprite(temp_r4);
        }
    }
    if (strc134->unk0 == 1) {
        u8 *pIndex;
        for (var_r8 = 0; var_r8 < gUnknown_080DBCB9[*(pIndex = strc134->unk4)]; var_r8++) {
            {
                temp_r4_2 = &strc134->sprBC[var_r8];
                temp_r4_2->tiles = var_sb;

                var_sb += gUnknown_08E2EF54[3][*pIndex][var_r8].numTiles << 5;
                temp_r4_2->anim = gUnknown_08E2EF54[3][*pIndex][var_r8].anim;
                temp_r4_2->variant = gUnknown_08E2EF54[3][*strc134->unk4][var_r8].variant;
                temp_r4_2->prevVariant = -1;
                temp_r4_2->x = I(*strc134->unkC);
                temp_r4_2->y = I(*strc134->unk10);
                temp_r4_2->oamFlags = 0;
                temp_r4_2->animCursor = 0;
                temp_r4_2->qAnimDelay = 0;
                temp_r4_2->animSpeed = 0x10;
                temp_r4_2->palId = 0;
                temp_r4_2->frameFlags = 0;
                UpdateSpriteAnimation(temp_r4_2);
                DisplaySprite(temp_r4_2);
            }
        }
    }
}

// NOTE: Seems to be unused.
//       Maybe the reason is that it's bugged, since gUnknown_080DBA94 only has 2 array-members,
//       Not the 4 needed to not go out of bounds here.
void sub_80AD584(NewGameOpeningAC *strcAC)
{
    u8 *temp_r5;
    u8 *vram = VramMalloc(0x36U);
    Sprite *s = &strcAC->spr5C;

#ifndef BUG_FIX
    const s32 index_1st = 3, index_2nd = 2;
#else
    s32 index_1st = 1, index_2nd = 0;
#endif

    {
        s->tiles = vram;
        temp_r5 = vram + (gUnknown_080DBA94[index_1st].numTiles << 5);
        s->anim = gUnknown_080DBA94[index_1st].anim;
        s->variant = gUnknown_080DBA94[index_1st].variant;
        s->prevVariant = -1;
        s->x = I(strcAC->qUnk20.x);
        s->y = I(strcAC->qUnk20.y);
        s->oamFlags = 0x140;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 1;
        s->frameFlags = 0x40000;
        UpdateSpriteAnimation(s);
    }

    {
        Sprite *s = &strcAC->spr84;
        s->tiles = temp_r5;
        s->anim = gUnknown_080DBA94[index_2nd].anim;
        s->variant = gUnknown_080DBA94[index_2nd].variant;
        s->prevVariant = -1;
        s->x = I(strcAC->qUnk20.x);
        s->y = I(strcAC->qUnk20.y);
        s->oamFlags = 0x140;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 1;
        s->frameFlags = 0x40000;
        UpdateSpriteAnimation(s);
    }
}

void Task_B8_80AD634(void)
{
    NewGameOpeningB8 *strcB8 = TASK_DATA(gCurTask);
    NotificationText *temp_r0_2;
    NotificationText *temp_r1;
    NotificationText *temp_r1_2;
    s32 *temp_r4;
    u16 var_r0;
    u8 temp_r0;
    s16 var_r1;

    sub_80AD72C(strcB8);
    if (sub_80AE63C(strcB8) == 0) {
        sub_80AE66C(strcB8);
        return;
    }
    strcB8->unk1A = gUnknown_080DBCD9[strcB8->unk18][strcB8->unk10];
    temp_r4 = strcB8->unkC;
    if (*temp_r4 == 1) {
        if (strcB8->unk0 == 1) {
            var_r1 = gUnknown_080DBCBE[strcB8->unk18][strcB8->unk10];
            if (var_r1 != 0) {
                strcB8->unk19 = var_r1;
                strcB8->ewramDataB4->vram24 = strcB8->ewramDataB4->vram28;
                sub_80AD7B4(strcB8->ewramDataB4, strcB8->unk19, 0x30U, 0x6EU, (u8 *)strcB8->ewramDataB4->vram28);
                strcB8->unk0 = 0;
            } else {
                *temp_r4 = 0;
            }
            strcB8->unk10 += 1;
        }
        if (strcB8->unk0 == 0) {
            strcB8->unk0 = (s32)sub_8023734(strcB8->ewramDataB4);
            sub_80239A8(strcB8->ewramDataB4);
        }
        if (strcB8->unk0 == 1) {
            temp_r1_2 = strcB8->ewramDataB4;
            if (temp_r1_2->unk6 != 0) {
                sub_80239A8(temp_r1_2);
            }
            if (strcB8->unk10 == 5) {
                strcB8->unk1E = 0x78;
            } else {
                strcB8->unk1E = 0;
            }
            *strcB8->unkC = 0;
            strcB8->unk0 = 0;
            gCurTask->main = Task_B8_80AE5C4;
        }
    }
}

void sub_80AD72C(NewGameOpeningB8 *strcB8)
{
    s16 var_r2;
    Sprite *temp_r5;
    Sprite *temp_r4_2;
    u8 i;

    var_r2 = 0;
    for (i = 0; i < 3; i++) {
        temp_r5 = strcB8->pSprB0;
        temp_r5->x = I(strcB8->qUnk20.x);
        temp_r5->y = I(strcB8->qUnk20.y);
        temp_r5->x += var_r2;
        temp_r5->frameFlags |= 0x400;
        UpdateSpriteAnimation(temp_r5);
        DisplaySprite(temp_r5);
        var_r2 -= 0x40;
    }

    temp_r4_2 = strcB8->pSprAC;
    temp_r4_2->x = I(strcB8->qUnk20.x);
    temp_r4_2->y = I(strcB8->qUnk20.y);
    temp_r4_2->x += var_r2;
    temp_r4_2->frameFlags |= 0x400;
    UpdateSpriteAnimation((Sprite *)temp_r4_2);
    DisplaySprite((Sprite *)temp_r4_2);
}

// TODO: arg1's type should be the enum denoting gNotificationTexts's inner array,
//       so that adding more lines of text becomes more straightforward for mods.
void sub_80AD7B4(NotificationText *arg0, u8 arg1, u16 arg2, u16 arg3, u8 *vram)
{
    u16 temp_r2;
    u16 temp_r3;
    u8 var_r0;

    temp_r2 = arg2;
    temp_r3 = arg3;
    arg0->s = NULL;
    arg0->unkA = 8;
    arg0->unk12 = temp_r2;
    arg0->unk14 = temp_r3;
    arg0->unkF = (u8)temp_r2;
    arg0->unk10 = (u8)temp_r3;
    arg0->unkD = 0;
    arg0->unkE = 0;
    arg0->unk5 = 0;
    arg0->unk6 = 0;
    arg0->unk8 = 0;
    arg0->unkC = 0;
    arg0->unk1C = 0;
    arg0->unk1A = 0;
    arg0->unk1D = 0;
    arg0->unk1E = 0;
    arg0->vram24 = vram;
    arg0->unk1F = 1;
    var_r0 = LOADED_SAVE->language;
    if ((u32)var_r0 > 5U) {
        var_r0 = 5;
    }
    arg0->text = (u16 *)(*gNotificationTexts[var_r0])[arg1];
}

void CreateNewGamesaveOpening(void)
{
    s32 sp4;
    s32 sp8;
    NotificationText *temp_r0;
    NotificationText *temp_r0_2;
    NotificationText *temp_r1;
    u32 bufferSize = 0;

    NewGameOpening14 *strc14 = TASK_DATA(TaskCreate(Task_14_A_80AD968, sizeof(NewGameOpening14), 0x100U, 0U, TaskDestructor_14_A_80AE688));
    strc14->unkC = 0;
    strc14->unk8 = 0;
    strc14->unk0 = 1;
    strc14->unk4 = 0;
    strc14->unkA = 0x12;
    bufferSize = sizeof(NotificationText);
    temp_r0 = EwramMalloc(bufferSize);
    strc14->ewramData10 = temp_r0;
    temp_r0->unk6 = 0;
    temp_r0_2 = strc14->ewramData10;
    temp_r0_2->s = NULL;
    temp_r0_2->vram28 = (void *)(OBJ_VRAM0 + 0x2000);
    CpuFastFill(0, (OBJ_VRAM0 + 0x2000), 0xF00);

    strc14->ewramData10->vram24 = strc14->ewramData10->vram28;
    {
        // For matching...
        u16 *pDispCnt = &gDispCnt;
        u32 value = DISPCNT_OBJ_ON | DISPCNT_WIN0_ON | DISPCNT_OBJ_1D_MAP | DISPCNT_MODE_0;
        *pDispCnt = value;
    }
    gWinRegs[0] = WIN_RANGE(0, DISPLAY_WIDTH);
    gWinRegs[2] = WIN_RANGE(0, DISPLAY_HEIGHT);
    gWinRegs[4] |= 0x3F;
    gWinRegs[5] |= 0x1F;
    gBldRegs.bldCnt = 0x3FFF;
    gBldRegs.bldY = 0;
    DmaFill32(3, 0, BG_CHAR_ADDR_FROM_BGCNT(2), 0x40);
    gBgSprites_Unknown1[2] = 0;
    gBgSprites_Unknown2[2][0] = 0;
    gBgSprites_Unknown2[2][1] = 0;
    gBgSprites_Unknown2[2][2] = 0xFF;
    gBgSprites_Unknown2[2][3] = 0x40;
    gBgSprites_Unknown1[1] = 0x12;
    gBgSprites_Unknown2[1][0] = 0x20;
    gBgSprites_Unknown2[1][1] = 0;
    gBgSprites_Unknown2[1][2] = 0x40;
    gBgSprites_Unknown2[1][3] = 0x20;
    gBgSprites_Unknown1[0] = 0;
    gBgSprites_Unknown2[0][0] = 0;
    gBgSprites_Unknown2[0][1] = 0;
    gBgSprites_Unknown2[0][2] = -1;
    gBgSprites_Unknown2[0][3] = 0x40;
    *gBgPalette = sub_80C4C0C(0);
    gFlags |= FLAGS_UPDATE_BACKGROUND_PALETTES;
    m4aMPlayAllStop();
    m4aSongNumStart(MUS_NEWGAME_INTRO);
}

void Task_14_A_80AD968(void)
{
    NewGameOpening14 *strc14 = TASK_DATA(gCurTask);
    NotificationText *temp_r0;

    if (strc14->unk0 == 1) {
        strc14->unkA = gUnknown_080DBCF4[strc14->unk8];
        temp_r0 = strc14->ewramData10;
        temp_r0->vram28 = (void *)(OBJ_VRAM0 + 0x2000);
        temp_r0->vram24 = (void *)(OBJ_VRAM0 + 0x2000);
        sub_80AD7B4(temp_r0, strc14->unkA, 0xAU, 0x41U, (OBJ_VRAM0 + 0x2000));
        strc14->unk0 = 0;
        strc14->unk8 += 1;
    }
    if (strc14->unk0 == 0) {
        strc14->unk0 = (s32)sub_8023734(strc14->ewramData10);
        sub_80239A8(strc14->ewramData10);
    }
    if (strc14->unk0 == 1) {
        strc14->unk0 = 0;
        gCurTask->main = Task_80AE69C;
    }
}

void sub_80AD9E4(void)
{
    s32 sp4;
    s32 sp8;
    NotificationText *temp_r0;
    NotificationText *temp_r0_2;
    NotificationText *temp_r1;
    s32 bufferSize = 0;
    u32 dispCnt;

    NewGameOpening14 *strc14 = TASK_DATA(TaskCreate(Task_14_B_80ADB20, sizeof(NewGameOpening14), 0x100U, 0U, TaskDestructor_14_B_80AE71C));
    strc14->unkC = 0;
    strc14->unk8 = 0;
    strc14->unk0 = 1;
    strc14->unk4 = 0;
    strc14->unkA = 0x12;
    bufferSize = sizeof(NotificationText);
    temp_r0 = EwramMalloc(bufferSize);
    strc14->ewramData10 = temp_r0;
    temp_r0->unk6 = 0;

    temp_r0_2 = strc14->ewramData10;
    temp_r0_2->s = NULL;
    temp_r0_2->vram28 = (void *)(OBJ_VRAM0 + 0x2000);
    CpuFastFill(0, (void *)(OBJ_VRAM0 + 0x2000), 0xF00);

    strc14->ewramData10->vram24 = strc14->ewramData10->vram28;
    {
        // For matching...
        u16 *pDispCnt = &gDispCnt;
        u32 value = DISPCNT_OBJ_ON | DISPCNT_WIN0_ON | DISPCNT_OBJ_1D_MAP | DISPCNT_MODE_0;
        *pDispCnt = value;
    }
    gWinRegs[0] = WIN_RANGE(0, DISPLAY_WIDTH);
    gWinRegs[2] = WIN_RANGE(0, DISPLAY_HEIGHT);
    gWinRegs[4] |= 0x3F;
    gWinRegs[5] |= 0x1F;
    gBldRegs.bldCnt = 0x3FFF;

    DmaFill32(3, 0, BG_CHAR_ADDR_FROM_BGCNT(2), 0x40);
    gBgSprites_Unknown1[2] = 0;
    gBgSprites_Unknown2[2][0] = 0;
    gBgSprites_Unknown2[2][1] = 0;
    gBgSprites_Unknown2[2][2] = 0xFF;
    gBgSprites_Unknown2[2][3] = 0x40;
    gBgSprites_Unknown1[1] = 0x12;
    gBgSprites_Unknown2[1][0] = 0x20;
    gBgSprites_Unknown2[1][1] = 0;
    gBgSprites_Unknown2[1][2] = 0x40;
    gBgSprites_Unknown2[1][3] = 0x20;
    gBgSprites_Unknown1[0] = 0;
    gBgSprites_Unknown2[0][0] = 0;
    gBgSprites_Unknown2[0][1] = 0;
    gBgSprites_Unknown2[0][2] = -1;
    gBgSprites_Unknown2[0][3] = 0x40;
    *gBgPalette = sub_80C4C0C(0);
    gFlags |= FLAGS_UPDATE_BACKGROUND_PALETTES;
    m4aMPlayAllStop();
}

void Task_14_B_80ADB20(void)
{
    NewGameOpening14 *strc14 = TASK_DATA(gCurTask);
    NotificationText *temp_r0;

    gBldRegs.bldY = 0;
    if (strc14->unk0 == 1) {
        strc14->unkA = gUnknown_080DBCF9[strc14->unk8];
        temp_r0 = strc14->ewramData10;
        temp_r0->vram28 = (void *)(OBJ_VRAM0 + 0x2000);
        temp_r0->vram24 = (void *)(OBJ_VRAM0 + 0x2000);
        sub_80AD7B4(temp_r0, strc14->unkA, 0xAU, 0x41U, (u8 *)(OBJ_VRAM0 + 0x2000));
        strc14->unk0 = 0;
        strc14->unk8 += 1;
    }
    if (strc14->unk0 == 0) {
        strc14->unk0 = (s32)sub_8023734(strc14->ewramData10);
        sub_80239A8(strc14->ewramData10);
    }
    if (strc14->unk0 == 1) {
        strc14->unk0 = 0;
        gCurTask->main = Task_14_B_80AE720;
    }
}

extern const TileInfo2 gUnknown_080DBCFC[4];

void Task_6C_80ADBA0(void)
{
    NewGameOpening6C *strc6C = TASK_DATA(gCurTask);
    u8 *vramB = VramMalloc(20);
    u8 *vramA = VramMalloc(35);

    {
        Sprite *s = (Sprite *)&strc6C->sprC;
        s->tiles = vramA;
        s->anim = gUnknown_080DBCFC[0].anim;
        s->variant = gUnknown_080DBCFC[0].variant;
        s->prevVariant = -1;
        s->x = I(strc6C->unk4);
        s->y = I(strc6C->unk8);
        s->oamFlags = 0x480;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 2;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }

    {
        Sprite *s = (Sprite *)&strc6C->spr3C;
        s->tiles = vramB;
        s->anim = gUnknown_080DBCFC[2].anim;
        s->variant = gUnknown_080DBCFC[2].variant;
        s->prevVariant = -1;
        s->x = I(strc6C->unk4);
        s->y = I(strc6C->unk8);
        s->oamFlags = 0x480;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 2;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }

    gCurTask->main = Task_6C_80ADC74;
}

void Task_6C_80ADC74(void)
{
    NewGameOpening6C *strc6C = TASK_DATA(gCurTask);
    u8 temp_r0;

    if (strc6C->unk0 == 0) {
        sub_80AE850(strc6C);
        if (sub_80AE814(strc6C) == 1) {
            strc6C->unk0 += 1;
        }
    } else if (sub_80AE850(strc6C) == ACMD_RESULT__ENDED) {
        strc6C->unk0 += 1;
    }

    switch (strc6C->unk0) {
        case 1: {
            Sprite *s = (Sprite *)&strc6C->sprC;
            s->anim = gUnknown_080DBCFC[1].anim;
            s->variant = gUnknown_080DBCFC[1].variant;
            s->prevVariant = -1;
            strc6C->unk0 += 1;
        } break;

        case 3: {
            VramFree(strc6C->sprC.tiles);
            gCurTask->main = Task_6C_80AE7C4;
        } break;
    }
}

void Task_9C_80ADCF8(void)
{
    NewGameOpening9C *strc9C = TASK_DATA(gCurTask);
    u8 *vramC = VramMalloc(20);
    u8 *vramB = VramMalloc(9U);
    u8 *vramA = VramMalloc(36);

    {
        Sprite *s = (Sprite *)&strc9C->spr3C;
        s->tiles = vramA;
        s->anim = gUnknown_080DBD1C[0].anim;
        s->variant = gUnknown_080DBD1C[0].variant;
        s->prevVariant = -1;
        s->x = (s16)((s32)strc9C->qX >> 8);
        s->y = (s16)((s32)strc9C->qY >> 8);
        s->oamFlags = 0x480;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 2;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }

    {
        Sprite *s = (Sprite *)&strc9C->sprC;
        s->tiles = vramB;
        s->anim = gUnknown_080DBD34.anim;
        s->variant = gUnknown_080DBD34.variant;
        s->prevVariant = -1;
        s->x = (s16)((s32)strc9C->qX >> 8);
        s->y = (s16)((s32)strc9C->qY >> 8);
        s->oamFlags = 0x440;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0x400;
        UpdateSpriteAnimation(s);
    }

    {
        Sprite *s = (Sprite *)&strc9C->spr6C;
        s->tiles = vramC;
        s->anim = gUnknown_080DBD1C[2].anim;
        s->variant = gUnknown_080DBD1C[2].variant;
        s->prevVariant = -1;
        s->x = (s16)((s32)strc9C->qX >> 8);
        s->y = (s16)((s32)strc9C->qY >> 8);
        s->oamFlags = 0x480;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 2;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }

    gCurTask->main = Task_9C_80ADE18;
}

void Task_9C_80ADE18(void)
{
    NewGameOpening9C *strc9C = TASK_DATA(gCurTask);

    if (strc9C->unk0 == 1) {
        strc9C->unk2 += 1;
    }
    if ((sub_80AE8D4(strc9C) == 1) && (strc9C->unk0 == 0)) {
        Sprite *s = (Sprite *)&strc9C->spr3C;
        s->anim = gUnknown_080DBD1C[1].anim;
        s->variant = gUnknown_080DBD1C[1].variant;
        s->prevVariant = -1;
        strc9C->unk0 += 1;
    } else if ((s16)strc9C->unk2 == 0xD) {
        VramFree(strc9C->spr3C.tiles);
        strc9C->unk0 += 1;
        strc9C->unk2 = 0U;
        gCurTask->main = Task_9C_80AE884;
        return;
    }

    sub_80ADEA0(strc9C);
}

AnimCmdResult sub_80ADEA0(NewGameOpening9C *strc9C)
{
    Sprite *temp_r6;
    Sprite *var_r5;
    s32 temp_r7;
    u32 var_r0;

    temp_r6 = (Sprite *)&strc9C->sprC;
    if ((u32)strc9C->unk0 <= 1U) {
        var_r5 = (Sprite *)&strc9C->spr3C;
    } else {
        var_r5 = (Sprite *)&strc9C->spr6C;
    }
    var_r5->x = (s16)((s32)strc9C->qX >> 8);
    var_r5->y = (s16)((s32)strc9C->qY >> 8);
    temp_r7 = UpdateSpriteAnimation(var_r5);
    DisplaySprite(var_r5);
    temp_r6->x = I(strc9C->qX) - 0x12;
    temp_r6->y = I(strc9C->qY) - 5;
    if ((u32)strc9C->unk0 <= 1U) {
        temp_r6->frameFlags |= 0x400;
    } else {
        temp_r6->frameFlags &= ~0x400;
    }
    UpdateSpriteAnimation(temp_r6);
    DisplaySprite(temp_r6);
    return temp_r7;
}

void Task_9C_80ADF10(void)
{
    NewGameOpening9C *strc9C = TASK_DATA(gCurTask);
    u8 *sp0;
    u8 *temp_r0;
    u8 *vram;
    u8 *vramA = VramMalloc(0x14U);
    vram = VramMalloc(0x4FU);

    {
        Sprite *s = (Sprite *)&strc9C->spr3C;
        s->tiles = vram;
        vram += 0x800;
        s->anim = gUnknown_080DBD3C[0].anim;
        s->variant = gUnknown_080DBD3C[0].variant;
        s->prevVariant = -1;
        s->x = I(strc9C->qX);
        s->y = I(strc9C->qY);
        s->oamFlags = 0x480;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 2;
        s->frameFlags = 0x400;
        UpdateSpriteAnimation(s);
    }

    {
        Sprite *s = (Sprite *)&strc9C->sprC;
        s->tiles = vram;
        s->anim = gUnknown_080DBD54.anim;
        s->variant = gUnknown_080DBD54.variant;
        s->prevVariant = -1;
        s->x = I(strc9C->qX);
        s->y = I(strc9C->qY);
        s->oamFlags = 0x440;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0x400;
        UpdateSpriteAnimation(s);
    }

    {
        Sprite *s = (Sprite *)&strc9C->spr6C;
        s->tiles = vramA;
        s->anim = gUnknown_080DBD3C[2].anim;
        s->variant = gUnknown_080DBD3C[2].variant;
        s->prevVariant = -1;
        s->x = I(strc9C->qX);
        s->y = I(strc9C->qY);
        s->oamFlags = 0x480;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 2;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }

    gCurTask->main = Task_9C_80AE034;
}

void Task_9C_80AE034(void)
{
    NewGameOpening9C *strc9C = TASK_DATA(gCurTask);

    if (strc9C->unk0 == 1) {
        Sprite *s = (Sprite *)&strc9C->spr3C;
        s->anim = gUnknown_080DBD3C[1].anim;
        s->variant = gUnknown_080DBD3C[1].variant;
        s->prevVariant = -1;
        strc9C->unk0 += 1;
    }
    if (sub_80AE09C(strc9C) == 1) {
        VramFree(strc9C->spr3C.tiles);
        strc9C->unk0 += 1;
        gCurTask->main = Task_9C_80AE90C;
        return;
    }
    sub_80AE110(strc9C);
}

bool32 sub_80AE09C(NewGameOpening9C *strc9C)
{
    s32 temp_r3;
    s32 var_r1;

    temp_r3 = strc9C->qX;
    if (strc9C->qX <= 0xBDFF) {
        strc9C->qX += Q(gUnknown_080DBD5C[strc9C->unk0]);
        if ((strc9C->qX >= 0x6400) && (strc9C->unk0 == 0)) {
            strc9C->unk0 += 1;
        } else if ((strc9C->qX >= 0x8200) && (strc9C->unk0 == 2)) {
            strc9C->unk0 += 1;
        } else if ((strc9C->qX >= 0xA000) && (strc9C->unk0 == 3)) {
            strc9C->unk0 += 1;
        }
        if (strc9C->qX > 0xBDFF) {
            strc9C->qX = 0xBE00;
            return 1U;
        }
    } else {
        strc9C->qX = 0xBE00;
        return 1U;
    }

    return 0U;
}

s32 sub_80AE110(NewGameOpening9C *strc9C)
{
    Sprite *temp_r6 = (Sprite *)&strc9C->sprC;
    Sprite *var_r5;
    s32 temp_r7;

    if ((u32)strc9C->unk0 <= 4U) {
        var_r5 = (Sprite *)&strc9C->spr3C;
    } else {
        var_r5 = (Sprite *)&strc9C->spr6C;
    }
    var_r5->x = (s16)((s32)strc9C->qX >> 8);
    var_r5->y = (s16)((s32)strc9C->qY >> 8);
    temp_r7 = UpdateSpriteAnimation((Sprite *)var_r5);
    DisplaySprite((Sprite *)var_r5);
    if ((u32)(u8)(strc9C->unk0 - 1) <= 3U) {
        temp_r6->x = (s16)((s32)strc9C->qX >> 8);
        temp_r6->y = ((s32)strc9C->qY >> 8) + 0x10;
        if (UpdateSpriteAnimation((Sprite *)temp_r6) == ACMD_RESULT__ENDED) {
            temp_r6->prevVariant = -1;
        }
        DisplaySprite(temp_r6);
    }
    return temp_r7;
}

void sub_80AE174(void)
{
    NewGameOpening9C *strc9C = TASK_DATA(TaskCreate(Task_9C_80ADF10, sizeof(NewGameOpening9C), 0x100U, 0U, TaskDestructor_9C_80AE1B4));
    strc9C->unk0 = 0;
    strc9C->unk2 = 0;
    strc9C->qX = -Q(40);
    strc9C->qY = +Q(121);
}

void TaskDestructor_9C_80AE1B4(Task *t)
{
    NewGameOpening9C *strc9C = TASK_DATA(t);
    VramFree(strc9C->spr6C.tiles);
}

void CreateUnkTask9C(void)
{
    NewGameOpening9C *strc9C = TASK_DATA(TaskCreate(Task_9C_80ADCF8, sizeof(NewGameOpening9C), 0x100U, 0U, TaskDestructor_80AE208));
    strc9C->unk0 = 0;
    strc9C->unk2 = 0;
    strc9C->qX = +Q(190);
    strc9C->qY = -Q(40);
}

void TaskDestructor_80AE208(Task *t)
{
    NewGameOpening9C *strc9C = TASK_DATA(t);

    VramFree(strc9C->spr6C.tiles);
    VramFree(strc9C->sprC.tiles);
}

void TaskDestructor_80AE224(Task *t)
{
    NewGameOpeningB8 *strc9C = TASK_DATA(t);

    VramFree(strc9C->spr5C.tiles);
    EwramFree(strc9C->ewramDataB4);
}

void sub_80AE300(u8 arg0, void **arg1, s32 *arg2, u8 *arg3, Sprite *arg4, Sprite *arg5);
void Task_B8_80AE248(void)
{
    NewGameOpeningB8 *strcB8 = TASK_DATA(gCurTask);

    if (strcB8->unk10 == 0) {
        sub_80AD0B0(&strcB8->unk1A, &strcB8->qUnk28);
        strcB8->unk10 += 1;
        return;
    }
    strcB8->unk10 = 0;
    sub_80AE300(strcB8->unk18, &strcB8->ewramDataB4->vram24, &strcB8->qY, &strcB8->unk10, &strcB8->spr5C, &strcB8->spr84);
    gCurTask->main = Task_B8_80ACDB8;
}

bool32 sub_80AE2C4(NewGameOpeningB8 *arg0)
{
    s32 temp_r0;
    s32 temp_r0_2;

    temp_r0 = arg0->qUnk20.x;
    if ((temp_r0 >= 0) || (temp_r0_2 = temp_r0 + 0x500, arg0->qUnk20.x = temp_r0_2, (temp_r0_2 > 0))) {
        arg0->qUnk20.x = 0;
        return 1;
    }
    return 0;
}

s32 sub_80AE2E8(NewGameOpeningB8 *arg0)
{
    arg0->qUnk28.x = arg0->qUnk20.x + 0x2000;
    arg0->qUnk28.y = arg0->qUnk20.y + 0x2C00;
    return 0;
}

void sub_80AE300(u8 arg0, void **arg1, s32 *arg2, u8 *arg3, Sprite *arg4, Sprite *arg5)
{
    s32 sp4;
    u32 bufferSize = 0;
    NotificationText *temp_r0;
    NotificationText *temp_r1;
    NewGameOpeningB8 *strcB8 = TASK_DATA(TaskCreate(Task_B8_80AE53C, sizeof(NewGameOpeningB8), 0x100U, 0U, TaskDestructor_80AE524));
    strcB8->unk10 = 0;
    strcB8->unk14 = arg3;
    strcB8->unk18 = arg0;
    strcB8->unk1A = 0;
    strcB8->unk0 = 1;
    strcB8->unkC = arg2;
    strcB8->unk19 = 0x12;
    strcB8->qUnk20.x = 0x1C200;
    strcB8->qUnk20.y = 0x6200;
    strcB8->qUnk28.x = 0x1C200;
    strcB8->qUnk28.y = 0x9200;
    strcB8->pSprAC = arg4;
    strcB8->pSprB0 = arg5;
    strcB8->unk30 = arg1;
    bufferSize = 0xCACU;
    temp_r0 = EwramMalloc(bufferSize);
    strcB8->ewramDataB4 = temp_r0;
    temp_r0->unk6 = 0;
    strcB8->ewramDataB4->s = NULL;
    strcB8->ewramDataB4->vram28 = (void *)(OBJ_VRAM0 + 0x2F00);
    CpuFastFill(0, strcB8->ewramDataB4->vram28, 0xF00);
    temp_r1 = strcB8->ewramDataB4;
    temp_r1->vram24 = temp_r1->vram28;
}

void TaskDestructor_B4_80AE3D4(Task *t)
{
    NewGameOpeningB4 *strcB4 = TASK_DATA(t);
    VramFree(strcB4->spr14->tiles);
}

void sub_80AE428(NewGameOpeningB4 *strcB4);
void Task_B4_80AE3E8(void)
{
    NewGameOpeningB4 *strcB4 = TASK_DATA(gCurTask);

    sub_80AD190(strcB4);
    if (*strcB4->unk0 == 0xFF) {
        sub_80AE428(strcB4);
    }
    if (gBldRegs.bldY == 0x10) {
        TaskDestroy(gCurTask);
    }
}

void sub_80AE428(NewGameOpeningB4 *strcB4)
{
    if (strcB4->unkC > -Q(70)) {
        strcB4->unkC -= Q(1);
    }
}

void TaskDestructor_80AE448(Task *t)
{
    NewGameOpening134 *strc134 = TASK_DATA(t);
    VramFree(strc134->spr1C->tiles);
}

bool32 sub_80AE4F8(NewGameOpening134 *strc134);
void sub_80AE4C4(NewGameOpening134 *strc134);
void Task_134_80AE45C(void)
{
    NewGameOpening134 *strc134 = TASK_DATA(gCurTask);
    u16 temp_r0;

    sub_80AD408(strc134);
    if (gBldRegs.bldY == 0x10) {
        TaskDestroy(gCurTask);
        return;
    }
    if ((strc134->unk0 == 0) && (*strc134->unk4 == 2)) {
        if (sub_80AE4F8(strc134) == 0) {
            sub_80AE4C4(strc134);
            return;
        }

        if (++strc134->unk8 < 60) {
            sub_80AE4C4(strc134);
        }
    }
}

void sub_80AE4C4(NewGameOpening134 *strc134)
{
    Sprite *temp_r4;
    s32 temp_r2;
    s32 temp_r3;

    temp_r4 = &strc134->spr10C;
    temp_r2 = (s32)*strc134->unkC >> 8;
    temp_r4->x = (s16)temp_r2;
    temp_r3 = (s32)*strc134->unk10 >> 8;
    temp_r4->y = (s16)temp_r3;
    temp_r4->x = temp_r2 + ((s32)strc134->qUnk14.x >> 8);
    temp_r4->y = temp_r3 + ((s32)strc134->qUnk14.y >> 8);
    DisplaySprite(temp_r4);
}

bool32 sub_80AE4F8(NewGameOpening134 *strc134)
{
    strc134->qUnk14.x = Q(20);

    if (strc134->qUnk14.y < -Q(24)) {
        strc134->qUnk14.y += Q(0.25);

        if (strc134->qUnk14.y > -Q(24)) {
            strc134->qUnk14.y = -Q(24);
            return 1;
        }
    } else {
        strc134->qUnk14.y = -Q(24);
        return 1;
    }
    return 0;
}

void TaskDestructor_80AE524(Task *t)
{
    NewGameOpeningB8 *strcB8 = TASK_DATA(t);
    EwramFree(strcB8->ewramDataB4);
}

void Task_B8_80AE53C(void)
{
    NewGameOpeningB8 *strcB8 = TASK_DATA(gCurTask);

    if (strcB8->unk10 == 0) {
        sub_80AD234(&strcB8->unk1A, &strcB8->qUnk28, strcB8->unk18);
        strcB8->unk10 += 1;
        return;
    }
    strcB8->unk10 = 0;
    gCurTask->main = Task_B8_80AD634;
}

void Task_B8_80AE584(void)
{
    NewGameOpeningB8 *arg0 = TASK_DATA(gCurTask);

    arg0->qY = 0;
    sub_80AD72C(arg0);
    sub_80239A8(arg0->ewramDataB4);
    if (gBldRegs.bldY == 0x10) {
        TaskDestroy(gCurTask);
    }
}

void Task_B8_80AE5C4(void)
{
    NewGameOpeningB8 *strcB8 = TASK_DATA(gCurTask);
    s32 temp_r3;
    u16 temp_r0;

    sub_80AD72C(strcB8);
    if (strcB8->unk0 == 0) {
        sub_80239A8(strcB8->ewramDataB4);
    }
    temp_r0 = strcB8->unk1E;
    if (temp_r0 != 0) {
        strcB8->unk1E = temp_r0 - 1;
        return;
    }
    temp_r3 = *strcB8->unkC;
    if (temp_r3 == 1) {
        if (gUnknown_080DBCBE[strcB8->unk18][strcB8->unk10] == 0xFF) {
            gCurTask->main = Task_B8_80AE584;
        } else {
            strcB8->unk0 = temp_r3;
            gCurTask->main = Task_B8_80AD634;
        }
    }
}

bool32 sub_80AE63C(NewGameOpeningB8 *arg0)
{
    s32 temp_r1;
    s32 temp_r1_2;

    temp_r1 = arg0->qUnk20.x;
    if ((temp_r1 <= 0xF000) || (temp_r1_2 = temp_r1 + 0xFFFFFB00, arg0->qUnk20.x = temp_r1_2, (temp_r1_2 <= 0xEFFF))) {
        arg0->qUnk20.x = 0xF000;
        return 1;
    }
    return 0;
}

s32 sub_80AE66C(NewGameOpeningB8 *strcB8)
{
    strcB8->qUnk28.x = strcB8->qUnk20.x - Q(32);
    strcB8->qUnk28.y = strcB8->qUnk20.y + Q(44);
    return 0;
}

void TaskDestructor_14_A_80AE688(Task *t)
{
    NewGameOpening14 *strc14 = TASK_DATA(t);
    EwramFree(strc14->ewramData10);
}

void Task_80AE69C(void)
{
    NewGameOpening14 *strc14 = TASK_DATA(gCurTask);
    if (gUnknown_080DBCF4[strc14->unk8] == 0xFF) {
        gCurTask->main = Task_80AE6D8;
    } else {
        strc14->unk0 = 1;
        gCurTask->main = Task_14_A_80AD968;
    }
}

void Task_80AE6D8(void)
{
    TasksDestroyAll();
    PAUSE_BACKGROUNDS_QUEUE();
    gBgSpritesCount = 0;
    PAUSE_GRAPHICS_QUEUE();

    CreateGameIntroState(0);
}

void TaskDestructor_14_B_80AE71C(Task *t) { }

void Task_14_B_80AE720(void)
{
    NewGameOpening14 *strc14 = TASK_DATA(gCurTask);
    u32 unkC;

    sub_80239A8(strc14->ewramData10);

    unkC = ++strc14->unkC;
    if (unkC >= 60) {
        sub_8000804(unkC);
        sub_8001E58();
        gCurTask->main = Task_14_B_80AE760;
    }
}

void Task_14_B_80AE760(void)
{
    sub_80C621C();
    sub_808ADF0(1U);
}

void sub_80AE770(void)
{
    NewGameOpening6C *strc6C = TASK_DATA(TaskCreate(Task_6C_80ADBA0, sizeof(NewGameOpening6C), 0x100U, 0U, TaskDestructor_6C_80AE7B0));
    strc6C->unk0 = 0;
    strc6C->unk2 = 0;
    strc6C->unk4 = 0xBE00;
    strc6C->unk8 = 0xFFFFD800;
}

void TaskDestructor_6C_80AE7B0(Task *t)
{
    NewGameOpening6C *strc6C = TASK_DATA(t);
    VramFree(strc6C->spr3C.tiles);
}

void Task_6C_80AE7C4(void)
{
    NewGameOpening6C *strc6C = TASK_DATA(gCurTask);
    u16 temp_r0;
    u16 temp_r1;

    sub_80AE850(strc6C);
    if (strc6C->unk2 <= 0xD2) {
        if (++strc6C->unk2 == 0xD2) {
            sub_80ACC40(0U);
        }
    }
    if (gBldRegs.bldY == 0x10) {
        TaskDestroy(gCurTask);
    }
}

u32 sub_80AE814(NewGameOpening6C *strc6C)
{
    s32 temp_r0;
    s32 temp_r2;

    strc6C->unk4 = 0xBE00;
    temp_r2 = strc6C->unk8;
    if (temp_r2 <= 0x79FF) {
        temp_r0 = temp_r2 + 0x300;
        strc6C->unk8 = temp_r0;
        if (temp_r0 > Q(122)) {
            strc6C->unk8 = Q(122);
            return 1U;
        }
    } else {
        strc6C->unk8 = Q(122);
        return 1U;
    }

    return 0U;
}

AnimCmdResult sub_80AE850(NewGameOpening6C *arg0)
{
    s32 result;
    Sprite *s;

    if (arg0->unk0 < 3) {
        s = (Sprite *)&arg0->sprC;
    } else {
        s = (Sprite *)&arg0->spr3C;
    }
    s->x = I(arg0->unk4);
    s->y = I(arg0->unk8);
    result = UpdateSpriteAnimation(s);
    DisplaySprite(s);
    return result;
}

void Task_9C_80AE884(void)
{
    NewGameOpening9C *strc9C = TASK_DATA(gCurTask);
    u16 temp_r0;
    u16 temp_r1;

    sub_80ADEA0(strc9C);
    if ((s32)(s16)strc9C->unk2 <= 0x78) {
        if (++strc9C->unk2 == 0x78) {
            sub_80ACC40(1U);
        }
    }
    if (gBldRegs.bldY == 0x10) {
        TaskDestroy(gCurTask);
    }
}

bool32 sub_80AE8D4(NewGameOpening9C *arg0)
{
    if (arg0->qY < Q(122)) {
        arg0->qY += 0x100;

        if (arg0->qY > Q(122)) {
            arg0->qY = Q(122);
            return 1;
        }
    } else {
        arg0->qY = Q(122);
        return 1;
    }

    return 0;
}

void Task_9C_80AE90C(void)
{
    NewGameOpening9C *strc9C = TASK_DATA(gCurTask);

    sub_80AE110(strc9C);

    if (strc9C->unk2 <= 120) {
        if (++strc9C->unk2 == 120) {
            sub_80ACC40(2U);
        }
    }
    if (gBldRegs.bldY == 0x10) {
        TaskDestroy(gCurTask);
    }
}

void sub_80AE95C(u8 arg0)
{
    NewGameOpeningA4 *strcA4;

    gDispCnt = DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP | DISPCNT_MODE_1;
    strcA4 = TASK_DATA(TaskCreate(Task_A4_80AEA44, sizeof(NewGameOpeningA4), 0x100U, 0U, TaskDestructor_80AED7C));
    strcA4->unk0 = LOADED_SAVE->language;
    strcA4->unk1 = arg0;
    strcA4->unk2 = 0x1B;
    strcA4->unk3 = 0;
    strcA4->unk4 = 0;
    strcA4->unkC.x = 0x7800;
    strcA4->unkC.y = Q(gUnknown_080DBD88[arg0]);
    strcA4->unk14.x = 0;
    strcA4->unk14.y = 0;
    strcA4->qUnk1C.x = 0;
    strcA4->qUnk1C.y = 0;
    DmaFill32(3, 0, BG_CHAR_ADDR_FROM_BGCNT(2), 0x40);

    gBgSprites_Unknown1[2] = 0;
    gBgSprites_Unknown2[2][0] = 0;
    gBgSprites_Unknown2[2][1] = 0;
    gBgSprites_Unknown2[2][2] = 0xFF;
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

    strcA4->vram8 = (void *)OBJ_VRAM0;
}

void Task_A4_80AEA44(void)
{
    NewGameOpeningA4 *strcA4 = TASK_DATA(gCurTask);

    {
        Background *bg = &strcA4->bg24;
        gDispCnt |= DISPCNT_BG0_ON;
        gBgCntRegs[0] = BGCNT_SCREENBASE(6) | BGCNT_CHARBASE(0) | BGCNT_TXT256x256 | BGCNT_PRIORITY(0);
        gBgScrollRegs[0][0] = -4;
        gBgScrollRegs[0][1] = -0xC;
        bg->graphics.dest = (void *)BG_CHAR_ADDR(0);
        bg->graphics.anim = 0;
        bg->layoutVram = (u16 *)BG_SCREEN_ADDR(6);
        bg->unk18 = 0;
        bg->unk1A = 0;
        bg->tilemapId = gUnknown_080DBD64[strcA4->unk1][strcA4->unk0];
        bg->unk1E = 0;
        bg->unk20 = 0;
        bg->unk22 = 0;
        bg->unk24 = 0;
        bg->targetTilesX = 0x20;
        bg->targetTilesY = 0x20;
        bg->paletteOffset = 0;
        bg->flags = 0;
        DrawBackground(bg);
    }
    {
        Background *bg = &strcA4->bg64;
        gDispCnt |= DISPCNT_BG1_ON;
        gBgCntRegs[1] = BGCNT_SCREENBASE(22) | BGCNT_CHARBASE(2) | BGCNT_TXT256x256 | BGCNT_PRIORITY(0);
        gBgScrollRegs[1][0] = 0;
        gBgScrollRegs[1][1] = 0;
        bg->graphics.dest = (void *)BG_CHAR_ADDR(2);
        bg->graphics.anim = 0;
        bg->layoutVram = (u16 *)BG_SCREEN_ADDR(22);
        bg->unk18 = 0;
        bg->unk1A = 0;
        bg->tilemapId = 0x156;
        bg->unk1E = 0;
        bg->unk20 = 0;
        bg->unk22 = 0;
        bg->unk24 = 0;
        bg->targetTilesX = 0x20;
        bg->targetTilesY = 0x20;
        bg->paletteOffset = 0;
        bg->flags = 0;
        DrawBackground(bg);
    }

    if (gFlags & FLAGS_10000) {
        CopyBgPaletteMasked(gUnknown_08E2EF64[strcA4->unk1], 0x10U, 0x20U);
    } else {
        DmaCopy16(3, gUnknown_08E2EF64[strcA4->unk1], &gBgPalette[0x10], 32 * sizeof(ColorRaw));
        gFlags |= FLAGS_UPDATE_BACKGROUND_PALETTES;
    }
    strcA4->unk1 = gUnknown_080DBE50[strcA4->unk1];
    CreateSomeTask_809BF3C(&strcA4->unk1, &strcA4->unk2, &strcA4->unkC, &strcA4->unkC.y, strcA4->vram8);
    gCurTask->main = Task_A4_80AEBF0;
}

void Task_A4_80AEBF0(void)
{
    NewGameOpeningA4 *strcA4 = TASK_DATA(gCurTask);
    if (strcA4->unk3 != 0) {
        gDispCnt |= DISPCNT_WIN0_ON;
        gWinRegs[0] = WIN_RANGE(0, DISPLAY_WIDTH);
        gWinRegs[2] = WIN_RANGE(0, DISPLAY_HEIGHT);
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FFF;
        gBldRegs.bldY = 0x10;
        strcA4->unk4 = 0x1000U;
        strcA4->unk3 = 0;
    }
    sub_80AEDB8(strcA4);
    if (gBldRegs.bldY != 0) {
        gBldRegs.bldY = (strcA4->unk4 >> 8);
        strcA4->unk4 -= Q(1);
        return;
    }
    gBldRegs.bldY = gBldRegs.bldY;
    m4aMPlayAllStop();
    m4aSongNumStart(MUS_VS_SUCCESS);
    gCurTask->main = Task_A4_80AED80;
}

void sub_80AEC94(void)
{
    NewGameOpeningA4 *strcA4 = TASK_DATA(gCurTask);

    if (strcA4->unk3 != 0) {
        gDispCnt |= DISPCNT_WIN0_ON;
        gWinRegs[0] = WIN_RANGE(0, DISPLAY_WIDTH);
        gWinRegs[2] = WIN_RANGE(0, DISPLAY_HEIGHT);
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FFF;
        strcA4->unk4 = 0U;
        strcA4->unk3 = 0U;
    }
    sub_80AEDB8(strcA4);
    if (gBldRegs.bldY <= 0xFU) {
        gBldRegs.bldY = (strcA4->unk4 >> 8);
        strcA4->unk4 += Q(1);
        return;
    }
    strcA4->unkC.x = Q(310);
    strcA4->unk2 = 0x1D;
    gBldRegs.bldY = 0x10;

    TasksDestroyAll();
    PAUSE_BACKGROUNDS_QUEUE();
    gBgSpritesCount = 0;
    PAUSE_GRAPHICS_QUEUE();

    WarpToMap(LEVEL_INDEX(gStageData.zone, ACT_HUB), gStageData.act - 2);
}

void TaskDestructor_80AED7C(Task *t) { }

void Task_A4_80AED80(void)
{
    NewGameOpeningA4 *strcA4 = TASK_DATA(gCurTask);
    sub_80AEDB8(strcA4);

    if (A_BUTTON & gPressedKeys) {
        gCurTask->main = sub_80AEC94;
    }
}

void sub_80AEDB8(NewGameOpeningA4 *strcA4)
{
    s32 temp_r1;
    s32 temp_r2;

    strcA4->qUnk1C.x += Q(0.75);
    strcA4->qUnk1C.y -= Q(0.75);
    gBgScrollRegs[1][0] = I(strcA4->qUnk1C.x);
    gBgScrollRegs[1][1] = I(strcA4->qUnk1C.y);
}
