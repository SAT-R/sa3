#include "global.h"
#include "core.h"
#include "malloc_ewram.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/notification_text.h"
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
    /* 0x00 */ u16 unk2;
    /* 0x00 */ s32 unk4;
    /* 0x00 */ s32 unk8;
    /* 0x0C */ Sprite2 sprC;
    /* 0x3C */ Sprite2 spr3C;
} NewGameOpening6C;

typedef struct {
    /* 0x00 */ u8 unk0;
    /* 0x00 */ u8 filler1[3];
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
    /* 0x04 */ s32 unk4;
    /* 0x08 */ void *vram8;
    /* 0x0C */ Vec2_32 unkC;
    /* 0x00 */ u8 filler14[0x10];
    /* 0x14 */ Background bg24;
    /* 0x14 */ Background bg64;
} NewGameOpeningA4;

// TODO: struct is probably not used?
// Only used as arg for sub_80AD584(), which is itself unused.
// But sub_80ACD10() has a similar structure, so maybe it's an inline.
// sub_80ACD10() gets a (NewGameOpeningB8 *) though, not NewGameOpeningAC.
typedef struct {
    /* 0x00 */ u8 filler[0x5C];
    /* 0x14 */ Sprite spr5C;
    /* 0x14 */ Sprite spr84;
} NewGameOpeningAC;

typedef struct {
    /* 0x00 */ s32 unk0;
    /* 0x04 */ s32 unk4;
    /* 0x08 */ s32 unk8;
    /* 0x0C */ s32 unkC;
    /* 0x10 */ s32 unk10;
    /* 0x14 */ Sprite spr14[4];
} NewGameOpeningB4;

typedef struct {
    /* 0x00 */ s32 unk0;
    /* 0x04 */ s32 qX;
    /* 0x08 */ s32 qY;
    /* 0x10 */ s32 unkC;
    /* 0x10 */ u8 unk10;
    /* 0x14 */ s32 unk14;
    /* 0x18 */ u8 unk18;
    /* 0x19 */ u8 unk19;
    /* 0x1A */ u8 unk1A;
    /* 0x1B */ u8 unk1B;
    /* 0x1B */ u16 unk1C;
    /* 0x1B */ u16 unk1E;
    /* 0x28 */ Vec2_32 qUnk20;
    /* 0x28 */ Vec2_32 qUnk28;
    /* 0x30 */ s32 unk30;
    /* 0x00 */ Sprite spr34;
    /* 0x00 */ Sprite spr5C;
    /* 0x00 */ Sprite2 spr84;
    /* 0xB4 */ NotificationText *ewramDataB4;
} NewGameOpeningB8;

typedef struct {
    /* 0x00 */ u8 unk0;
    /* 0x00 */ u8 *unk4;
    /* 0x00 */ s32 unk8;
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
void sub_80AD0B0(u8 *param0, Vec2_32 *qPos, NewGameOpeningB4 *strcB4);
void sub_80AD190(NewGameOpeningB4 *strcB4);
void sub_80AD234(u8 *arg0, Vec2_32 *arg1, u8 arg2);
void sub_80AD408(NewGameOpening134 *strc134);
void sub_80AD584(NewGameOpeningAC *strcAC);
void Task_B8_80AD634(void);
void sub_80AD72C(NewGameOpeningB8 *strcB8);
void sub_80AD7B4(NotificationText *arg0, u8 arg1, u16 arg2, u16 arg3, u8 *vram);
void CreateNewGamesaveOpening(void);
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
void Task_B4_80AE3E8(void);
void Task_134_80AE45C(void);
void Task_B8_80AE53C(void);
void Task_B8_80AE5C4(void);
s32 sub_80AE66C(NewGameOpeningB8 *strcB8);
void Task_14_B_80AE720(void);
void Task_6C_80AE7C4(void);
bool32 sub_80AE814(NewGameOpening6C *strc6C);
void Task_9C_80AE884(void);
void Task_9C_80AE90C(void);
void Task_A4_80AEBF0(void);
void Task_A4_80AED80(void);
void sub_80AEDB8(NewGameOpeningA4 *strcA4);

// TEMP
#if M2C
void sub_80ACC40(u8 arg0, NewGameOpeningB8 *strcB8);
void Task_B8_80ACDB8(NewGameOpeningB8 *strcB8);
void Task_B8_80ACEA4(NewGameOpeningB8 *strcB8);
void Task_B8_80ACF48(NewGameOpeningB8 *strcB8);
void sub_80AD234(u8 *arg0, Vec2_32 *arg1, u8 arg2, NewGameOpening134 *strc134);
void Task_B8_80AD634(NewGameOpeningB8 *strcB8);
void Task_14_A_80AD968(NewGameOpening14 *strc14);
void Task_14_B_80ADB20(NewGameOpening14 *strc14);
void Task_6C_80ADBA0(NewGameOpening6C *strc6C);
void Task_6C_80ADC74(NewGameOpening6C *strc6C);
void Task_9C_80ADCF8(NewGameOpening9C *strc9C);
void Task_9C_80ADE18(NewGameOpening9C *strc9C);
AnimCmdResult sub_80ADEA0(NewGameOpening9C *strc9C);
void Task_9C_80ADF10(NewGameOpening9C *strc9C);
bool32 sub_80AE09C(NewGameOpening9C *strc9C);
AnimCmdResult sub_80AE110(NewGameOpening9C *strc9C);
void Task_9C_80AE034(NewGameOpening9C *strc9C);
void Task_B8_80AE248(NewGameOpeningB8 *strcB8);
void Task_B4_80AE3E8(NewGameOpeningB4 *strcB4);
void Task_134_80AE45C(NewGameOpening134 *strc134);
void Task_B8_80AE53C(NewGameOpeningB8 *strcB8);
void Task_B8_80AE5C4(NewGameOpeningB8 *strcB8);
void Task_14_B_80AE720(NewGameOpening14 *strc14);
void Task_6C_80AE7C4(NewGameOpening6C *strc6C);
void Task_9C_80AE884(NewGameOpening9C *strc9C);
void Task_9C_80AE90C(NewGameOpening9C *strc9C);
void CreateNewGamesaveOpening(NewGameOpening14 *strc14);
void sub_80AE95C(u8 arg0, NewGameOpeningA4 *strcA4);
void Task_A4_80AEA44(NewGameOpeningA4 *strcA4);
void Task_A4_80AEBF0(NewGameOpeningA4 *strcA4);
void Task_A4_80AED80(NewGameOpeningA4 *strcA4);
void sub_80AD9E4(NewGameOpening14 *strc14);
#endif

extern const TileInfo gUnknown_080DBA94[2];
extern const s8 gUnknown_080DBC78[3][9];
extern const s8 gUnknown_080DBC93[3][9];
extern const TileInfo *gUnknown_08E2EF44[];
extern const TileInfo *gUnknown_08E2EF54[];

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

#if 0
void sub_80ACD10(NewGameOpeningB8 *strcB8)
{
    u8 *temp_r0;
    u8 *temp_r6;

    temp_r0 = VramMalloc(0x36U);
    strcB8->spr5C.tiles = temp_r0;
    temp_r6 = temp_r0 + (gUnknown_080DBA94->unkC << 5);
    strcB8->spr5C.anim = gUnknown_080DBA94->unk8;
    strcB8->spr5C.variant = gUnknown_080DBA94->unkA;
    strcB8->spr5C.prevVariant = 0xFF;
    strcB8->spr5C.x = (s16)((s32)strcB8->qUnk20.x >> 8);
    strcB8->spr5C.y = (s16)((s32)strcB8->qUnk20.y >> 8);
    strcB8->spr5C.oamFlags = 0x140;
    strcB8->spr5C.animCursor = 0;
    strcB8->spr5C.qAnimDelay = 0;
    strcB8->spr5C.animSpeed = 0x10;
    strcB8->spr5C.palId = 0;
    strcB8->spr5C.frameFlags = 0;
    UpdateSpriteAnimation(&strcB8->spr5C);
    strcB8->spr84.tiles = temp_r6;
    strcB8->spr84.anim = gUnknown_080DBA94->unk0;
    strcB8->spr84.variant = gUnknown_080DBA94->unk2;
    strcB8->spr84.prevVariant = -1U;
    strcB8->spr84.x = (s16)((s32)strcB8->qUnk20.x >> 8);
    strcB8->spr84.y = (s16)((s32)strcB8->qUnk20.y >> 8);
    strcB8->spr84.oamFlags = 0x140;
    strcB8->spr84.animCursor = 0;
    strcB8->spr84.qAnimDelay = 0;
    strcB8->spr84.animSpeed = 0x10;
    strcB8->spr84.palId = 0;
    strcB8->spr84.frameFlags = 0;
    UpdateSpriteAnimation((Sprite *)&strcB8->spr84);
}

void Task_B8_80ACDB8(NewGameOpeningB8 *strcB8)
{
    NotificationText *temp_r0_2;
    NotificationText *temp_r1;
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
    strcB8->unk1A = (u8)(*gUnknown_080DBC93)[(strcB8->unk18 * 9) + strcB8->unk10];
    temp_r4 = strcB8->qY;
    if (temp_r4 == 0) {
        temp_r3 = strcB8->unk0;
        if (temp_r3 == 1) {
            temp_r0 = (u8)(*gUnknown_080DBC78)[strcB8->unk10 + (strcB8->unk18 * 9)];
            if (temp_r0 != 0) {
                if (temp_r0 != 0xFE) {
                    strcB8->unk19 = temp_r0;
                    temp_r1 = strcB8->ewramDataB4;
                    temp_r1->vram24 = temp_r1->vram28;
                    temp_r0_2 = strcB8->ewramDataB4;
                    sub_80AD7B4(temp_r0_2, strcB8->unk19, 0x48U, 0x28U, (u8 *)temp_r0_2->vram28);
                    strcB8->unk0 = temp_r4;
                    strcB8->qY = temp_r4;
                }
            } else {
                strcB8->qY = temp_r3;
            }
            strcB8->unk10 += 1;
        }
    }
    if (strcB8->unk0 == 0) {
        strcB8->unk0 = (s32)sub_8023734(strcB8->ewramDataB4);
        sub_80239A8(strcB8->ewramDataB4);
    }
    temp_r4_2 = strcB8->unk0;
    if (temp_r4_2 == 1) {
        temp_r1_2 = strcB8->ewramDataB4;
        if (temp_r1_2->unk6 != 0) {
            sub_80239A8(temp_r1_2);
        }
        strcB8->unk1E = 0;
        strcB8->qY = temp_r4_2;
        gCurTask->main = (void (*)())Task_B8_80ACEA4;
    }
}

void Task_B8_80ACEA4(NewGameOpeningB8 *strcB8)
{
    void (*var_r0)(NewGameOpeningB8 *);

    strcB8->unk1E += 1;
    sub_80AD030(strcB8);
    if ((u8)(*gUnknown_080DBC78)[(strcB8->unk18 * 9) + strcB8->unk10] != 0xFE) {
        sub_80239A8(strcB8->ewramDataB4);
    } else {
        strcB8->ewramDataB4->unk6 = 0;
    }
    if (strcB8->qY == 0) {
        strcB8->unk0 = 1;
        if ((u8)(*gUnknown_080DBC78)[(strcB8->unk18 * 9) + strcB8->unk10] == 0xFF) {
            strcB8->qY = 1;
            var_r0 = Task_B8_80ACF48;
        } else {
            var_r0 = Task_B8_80ACDB8;
        }
        gCurTask->main = var_r0;
    }
}

void Task_B8_80ACF48(NewGameOpeningB8 *strcB8)
{
    strcB8->qY = 1;
    sub_80AD030(strcB8);
    sub_80239A8(strcB8->ewramDataB4);
    if (gStageData.playerIndex == 0) {
        if (strcB8->unk1B != 0) {
            gDispCnt |= 0x2000;
            gWinRegs->unk0 = 0xF0;
            gWinRegs[2] = 0xA0;
            gWinRegs[4] |= 0x3F;
            gWinRegs[5] |= 0x1F;
            gBldRegs.bldCnt = 0x3FFF;
            strcB8->unk1C = (u16)gStageData.playerIndex;
            strcB8->unk1B = 0;
        }
        if ((u32)gBldRegs.bldY <= 0xFU) {
            gBldRegs.bldY = (u16)((u16)strcB8->unk1C >> 8);
            strcB8->unk1C += 0x100;
            return;
        }
        gBldRegs.bldY = 0x10;
        sub_8003D2C();
        TasksDestroyInPriorityRange(0U, 0xFFFFU);
        gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;
        gBgSpritesCount = 0;
        gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;
        sub_80AE95C(strcB8->unk18, (NewGameOpeningA4 *)&gVramGraphicsCopyCursor);
    }
}

void sub_80AD030(NewGameOpeningB8 *arg0)
{
    s32 sp0;
    Sprite *temp_r0;
    Sprite *temp_r4;
    s32 temp_r1;
    s32 temp_r2;
    u16 var_r6;
    u8 var_r7;

    var_r6 = 0;
    var_r7 = 0;
    temp_r4 = arg0 + 0x84;
    do {
        temp_r1 = (s32)arg0->qUnk20.x >> 8;
        temp_r4->x = (s16)temp_r1;
        temp_r4->y = (s16)((s32)arg0->qUnk20.y >> 8);
        temp_r4->x = var_r6 + temp_r1;
        temp_r4->frameFlags &= 0xFFFFFBFF;
        temp_r4->palId = 0;
        sp0 = 0xFFFFFBFF;
        DisplaySprite(temp_r4);
        var_r6 += 0x40;
        var_r7 += 1;
    } while ((u32)var_r7 <= 2U);
    temp_r0 = arg0 + 0x5C;
    temp_r2 = (s32)arg0->qUnk20.x >> 8;
    temp_r0->x = (s16)temp_r2;
    temp_r0->y = (s16)((s32)arg0->qUnk20.y >> 8);
    temp_r0->x = var_r6 + temp_r2;
    temp_r0->frameFlags &= 0xFFFFFBFF;
    temp_r0->palId = 0;
    DisplaySprite(temp_r0);
}

void sub_80AD0B0(u8 *param0, Vec2_32 *qPos, NewGameOpeningB4 *strcB4)
{
    Sprite *temp_r0;
    s32 temp_r3;
    u8 *var_r7;
    u8 var_r4;
    void *temp_r2;

    TaskCreate((void (*)())Task_B4_80AE3E8, 0xB4U, 0x100U, 0U, TaskDestructor_B4_80AE3D4);
    strcB4->unk0 = (s32)param0;
    strcB4->unk4 = (s32)qPos;
    strcB4->unk8 = (s32)&qPos->y;
    strcB4->unkC = 0;
    strcB4->unk10 = 0;
    var_r7 = VramMalloc(0x49U);
    var_r4 = 0;
    if ((u32)gUnknown_080DBCAE.unk1 > 0U) {
        do {
            temp_r0 = &strcB4->spr14[var_r4];
            temp_r0->tiles = var_r7;
            temp_r3 = var_r4 * 8;
            temp_r2 = temp_r3 + gUnknown_080DBAA4.unk4;
            var_r7 += temp_r2->unk4 << 5;
            temp_r0->anim = temp_r2->unk0;
            temp_r0->variant = (temp_r3 + gUnknown_080DBAA4.unk4)->unk2;
            temp_r0->prevVariant = 0xFF;
            temp_r0->x = (s16)((s32)*strcB4->unk4 >> 8);
            temp_r0->y = (s16)((s32)*strcB4->unk8 >> 8);
            temp_r0->oamFlags = 0;
            temp_r0->animCursor = 0;
            temp_r0->qAnimDelay = 0;
            temp_r0->animSpeed = 0x10;
            temp_r0->palId = 0;
            temp_r0->frameFlags = 0x400;
            UpdateSpriteAnimation(temp_r0);
            var_r4 += 1;
        } while ((u32)var_r4 < (u32)gUnknown_080DBCAE.unk1);
    }
}

void sub_80AD190(NewGameOpeningB4 *strcB4)
{
    Sprite *temp_r4;
    s32 *temp_r0_2;
    s32 temp_r1_2;
    s32 temp_r2_2;
    s32 temp_r2_3;
    u8 *var_r7;
    u8 temp_r0;
    u8 temp_r2;
    u8 var_r3;
    u8 var_r6;
    void *temp_r1;

    temp_r0 = *strcB4->unk0;
    var_r3 = 0;
    if (temp_r0 != 0xFF) {
        var_r3 = temp_r0;
    }
    var_r7 = strcB4->spr14[0].tiles;
    var_r6 = 0;
    temp_r2 = *(var_r3 + &gUnknown_080DBCAE);
    if ((u32)temp_r2 > 0U) {
        temp_r0_2 = (var_r3 * 4) + &gUnknown_080DBAA4;
        do {
            temp_r4 = &strcB4->spr14[var_r6];
            temp_r4->tiles = var_r7;
            temp_r2_2 = var_r6 * 8;
            temp_r1 = temp_r2_2 + *temp_r0_2;
            var_r7 += temp_r1->unk4 << 5;
            temp_r4->anim = temp_r1->unk0;
            temp_r4->variant = (temp_r2_2 + *temp_r0_2)->unk2;
            temp_r4->prevVariant = 0xFF;
            temp_r1_2 = (s32)*strcB4->unk4 >> 8;
            temp_r4->x = (s16)temp_r1_2;
            temp_r2_3 = (s32)*strcB4->unk8 >> 8;
            temp_r4->y = (s16)temp_r2_3;
            temp_r4->x = temp_r1_2 + ((s32)strcB4->unkC >> 8);
            temp_r4->y = temp_r2_3 + ((s32)strcB4->unk10 >> 8);
            UpdateSpriteAnimation(temp_r4);
            DisplaySprite(temp_r4);
            var_r6 += 1;
        } while ((u32)var_r6 < (u32)temp_r2);
    }
}

void sub_80AD234(u8 *arg0, Vec2_32 *arg1, u8 arg2, NewGameOpening134 *strc134)
{
    s32 sp4;
    Sprite *temp_r0;
    Sprite *temp_r0_2;
    TileInfo **temp_r4_2;
    s32 temp_r1;
    s32 temp_r3;
    s32 temp_r3_2;
    u8 *var_sb;
    u8 temp_r4;
    u8 temp_r4_3;
    u8 var_r6;
    u8 var_r6_2;
    void *temp_r2;
    void *temp_r2_2;

    TaskCreate((void (*)())Task_134_80AE45C, 0x134U, 0x100U, 0U, TaskDestructor_80AE448);
    strc134->unk0 = arg2;
    strc134->unk4 = arg0;
    strc134->unkC = &arg1->x;
    strc134->unk10 = &arg1->y;
    strc134->qUnk14.x = 0x1400;
    strc134->qUnk14.y = -0x2800;
    strc134->unk8 = 0;
    temp_r4 = strc134->unk0;
    var_sb = VramMalloc((u32) * ((temp_r4 * 2) + &gUnknown_080DB994));
    sp4 = (s32) * (temp_r4 + &gUnknown_080DBCBB);
    var_r6 = 0;
    if ((u32) * (gUnknown_08E2EF44[temp_r4] + sp4) > 0U) {
        temp_r1 = sp4 * 4;
        do {
            temp_r0 = &strc134->spr1C[var_r6];
            temp_r0->tiles = var_sb;
            temp_r4_2 = &gUnknown_08E2EF54[temp_r4];
            temp_r3 = var_r6 * 8;
            temp_r2 = temp_r3 + *(*temp_r4_2 + temp_r1);
            var_sb += temp_r2->unk4 << 5;
            temp_r0->anim = temp_r2->unk0;
            temp_r0->variant = (temp_r3 + *(*temp_r4_2 + temp_r1))->unk2;
            temp_r0->prevVariant = 0xFF;
            temp_r0->x = (s16)((s32)*strc134->unkC >> 8);
            temp_r0->y = (s16)((s32)*strc134->unk10 >> 8);
            temp_r0->oamFlags = 0x40;
            temp_r0->animCursor = 0;
            temp_r0->qAnimDelay = 0;
            temp_r0->animSpeed = 0x10;
            temp_r0->palId = 0;
            temp_r0->frameFlags = 0;
            UpdateSpriteAnimation(temp_r0);
            var_r6 += 1;
        } while ((u32)var_r6 < (u32) * (gUnknown_08E2EF44[temp_r4] + sp4));
    }
    if (strc134->unk0 == 1) {
        var_r6_2 = 0;
        do {
            temp_r0_2 = &strc134->sprBC[var_r6_2];
            temp_r0_2->tiles = var_sb;
            temp_r3_2 = var_r6_2 * 8;
            temp_r2_2 = temp_r3_2 + *gUnknown_08E2EF54->unkC;
            var_sb += temp_r2_2->unk4 << 5;
            temp_r0_2->anim = temp_r2_2->unk0;
            temp_r0_2->variant = (temp_r3_2 + *gUnknown_08E2EF54->unkC)->unk2;
            temp_r0_2->prevVariant = 0xFF;
            temp_r0_2->x = (s16)((s32)*strc134->unkC >> 8);
            temp_r0_2->y = (s16)((s32)*strc134->unk10 >> 8);
            temp_r0_2->oamFlags = 0;
            temp_r0_2->animCursor = 0;
            temp_r0_2->qAnimDelay = 0;
            temp_r0_2->animSpeed = 0x10;
            temp_r0_2->palId = 0;
            temp_r0_2->frameFlags = 0;
            UpdateSpriteAnimation(temp_r0_2);
            var_r6_2 += 1;
        } while ((u32)var_r6_2 <= 1U);
    }
    temp_r4_3 = strc134->unk0;
    if (temp_r4_3 == 0) {
        strc134->spr10C.tiles = var_sb;
        strc134->spr10C.anim = gUnknown_080DBA8C.unk0;
        strc134->spr10C.variant = gUnknown_080DBA8C.unk2;
        strc134->spr10C.prevVariant = 0xFF;
        strc134->spr10C.x = (s16)((s32)*strc134->unkC >> 8);
        strc134->spr10C.y = (s16)((s32)*strc134->unk10 >> 8);
        strc134->spr10C.oamFlags = (s16)temp_r4_3;
        strc134->spr10C.animCursor = (u16)temp_r4_3;
        strc134->spr10C.qAnimDelay = (s16)temp_r4_3;
        strc134->spr10C.animSpeed = 0x10;
        strc134->spr10C.palId = 0;
        strc134->spr10C.frameFlags = (u32)temp_r4_3;
        UpdateSpriteAnimation(&strc134->spr10C);
    }
}

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
    void *temp_r1_3;

    temp_r1 = strc134->unk0;
    var_sb = strc134->spr1C[0].tiles;
    var_r8 = 0;
    if ((u32) * (gUnknown_08E2EF44[temp_r1] + *strc134->unk4) > 0U) {
        do {
            temp_r4 = &strc134->spr1C[var_r8];
            temp_r4->tiles = var_sb;
            temp_r3 = &gUnknown_08E2EF54[temp_r1];
            temp_r2 = var_r8 * 8;
            temp_r1_2 = temp_r2 + *((*strc134->unk4 * 4) + *temp_r3);
            var_sb += temp_r1_2->unk4 << 5;
            temp_r4->anim = temp_r1_2->unk0;
            temp_r4->variant = (temp_r2 + *((*strc134->unk4 * 4) + *temp_r3))->unk2;
            temp_r4->prevVariant = 0xFF;
            temp_r4->x = (s16)((s32)*strc134->unkC >> 8);
            temp_r4->y = (s16)((s32)*strc134->unk10 >> 8);
            temp_r4->oamFlags = 0x40;
            temp_r4->animCursor = 0;
            temp_r4->qAnimDelay = 0;
            temp_r4->animSpeed = 0x10;
            temp_r4->palId = 0;
            temp_r4->frameFlags = 0;
            UpdateSpriteAnimation(temp_r4);
            DisplaySprite(temp_r4);
            var_r8 += 1;
        } while ((u32)var_r8 < (u32) * (gUnknown_08E2EF44[temp_r1] + *strc134->unk4));
    }
    if (strc134->unk0 == 1) {
        var_r8_2 = 0;
        if ((u32) * (*strc134->unk4 + &gUnknown_080DBCB9) > 0U) {
            do {
                temp_r4_2 = &strc134->sprBC[var_r8_2];
                temp_r4_2->tiles = var_sb;
                temp_r2_2 = var_r8_2 * 8;
                temp_r1_3 = temp_r2_2 + *((*strc134->unk4 * 4) + gUnknown_08E2EF54->unkC);
                var_sb += temp_r1_3->unk4 << 5;
                temp_r4_2->anim = temp_r1_3->unk0;
                temp_r4_2->variant = (temp_r2_2 + *((*strc134->unk4 * 4) + gUnknown_08E2EF54->unkC))->unk2;
                temp_r4_2->prevVariant = 0xFF;
                temp_r4_2->x = (s16)((s32)*strc134->unkC >> 8);
                temp_r4_2->y = (s16)((s32)*strc134->unk10 >> 8);
                temp_r4_2->oamFlags = 0;
                temp_r4_2->animCursor = 0;
                temp_r4_2->qAnimDelay = 0;
                temp_r4_2->animSpeed = 0x10;
                temp_r4_2->palId = 0;
                temp_r4_2->frameFlags = 0;
                UpdateSpriteAnimation(temp_r4_2);
                DisplaySprite(temp_r4_2);
                var_r8_2 += 1;
            } while ((u32)var_r8_2 < (u32) * (*strc134->unk4 + &gUnknown_080DBCB9));
        }
    }
}

void sub_80AD584(NewGameOpeningAC *strcAC)
{
    u8 *temp_r0;
    u8 *temp_r5;

    temp_r0 = VramMalloc(0x36U);
    strcAC->spr5C.tiles = temp_r0;
    temp_r5 = temp_r0 + (gUnknown_080DBA94->unk1C << 5);
    strcAC->spr5C.anim = gUnknown_080DBA94->unk18;
    strcAC->spr5C.variant = gUnknown_080DBA94->unk1A;
    strcAC->spr5C.prevVariant = 0xFF;
    strcAC->spr5C.x = (s16)((s32)strcAC->unk20 >> 8);
    strcAC->spr5C.y = (s16)((s32)strcAC->unk24 >> 8);
    strcAC->spr5C.oamFlags = 0x140;
    strcAC->spr5C.animCursor = 0;
    strcAC->spr5C.qAnimDelay = 0;
    strcAC->spr5C.animSpeed = 0x10;
    strcAC->spr5C.palId = 1;
    strcAC->spr5C.frameFlags = 0x40000;
    UpdateSpriteAnimation(&strcAC->spr5C);
    strcAC->spr84.tiles = temp_r5;
    strcAC->spr84.anim = gUnknown_080DBA94->unk10;
    strcAC->spr84.variant = gUnknown_080DBA94->unk12;
    strcAC->spr84.prevVariant = -1U;
    strcAC->spr84.x = (s16)((s32)strcAC->unk20 >> 8);
    strcAC->spr84.y = (s16)((s32)strcAC->unk24 >> 8);
    strcAC->spr84.oamFlags = 0x140;
    strcAC->spr84.animCursor = 0;
    strcAC->spr84.qAnimDelay = 0;
    strcAC->spr84.animSpeed = 0x10;
    strcAC->spr84.palId = 1;
    strcAC->spr84.frameFlags = 0x40000;
    UpdateSpriteAnimation(&strcAC->spr84);
}

void Task_B8_80AD634(NewGameOpeningB8 *arg0)
{
    NotificationText *temp_r0_2;
    NotificationText *temp_r1;
    NotificationText *temp_r1_2;
    s32 temp_r4;
    u16 var_r0;
    u8 temp_r0;

    sub_80AD72C(arg0);
    if (sub_80AE63C(arg0) == 0) {
        sub_80AE66C(arg0);
        return;
    }
    arg0->unk1A = *((arg0->unk18 * 9) + arg0->unk10 + &gUnknown_080DBCD9);
    temp_r4 = arg0->unkC;
    if (*temp_r4 == 1) {
        if (arg0->unk0 == 1) {
            temp_r0 = *(arg0->unk10 + (arg0->unk18 * 9) + &gUnknown_080DBCBE);
            if (temp_r0 != 0) {
                arg0->unk19 = temp_r0;
                temp_r1 = arg0->ewramDataB4;
                temp_r1->vram24 = temp_r1->vram28;
                temp_r0_2 = arg0->ewramDataB4;
                sub_80AD7B4(temp_r0_2, arg0->unk19, 0x30U, 0x6EU, (u8 *)temp_r0_2->vram28);
                arg0->unk0 = 0;
            } else {
                *temp_r4 = (s32)temp_r0;
            }
            arg0->unk10 += 1;
        }
        if (arg0->unk0 == 0) {
            arg0->unk0 = (s32)sub_8023734(arg0->ewramDataB4);
            sub_80239A8(arg0->ewramDataB4);
        }
        if (arg0->unk0 == 1) {
            temp_r1_2 = arg0->ewramDataB4;
            if (temp_r1_2->unk6 != 0) {
                sub_80239A8(temp_r1_2);
            }
            if (arg0->unk10 == 5) {
                var_r0 = 0x78;
            } else {
                var_r0 = 0;
            }
            arg0->unk1E = var_r0;
            *arg0->unkC = 0;
            arg0->unk0 = 0;
            gCurTask->main = (void (*)())Task_B8_80AE5C4;
        }
    }
}

void sub_80AD72C(NewGameOpeningB8 *strcB8)
{
    Sprite *temp_r5;
    s16 temp_r4;
    s16 var_r2;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r4_2;
    u8 var_r7;

    var_r2 = 0;
    var_r7 = 0;
    do {
        temp_r5 = (Sprite *)strcB8->spr84.hitboxes[1].b;
        temp_r1 = (s32)strcB8->qUnk20.x >> 8;
        temp_r5->x = (s16)temp_r1;
        temp_r5->y = (s16)((s32)strcB8->qUnk20.y >> 8);
        temp_r4 = var_r2;
        temp_r5->x = temp_r4 + temp_r1;
        temp_r5->frameFlags |= 0x400;
        UpdateSpriteAnimation(temp_r5);
        DisplaySprite(temp_r5);
        var_r2 = (s16)(u16)(temp_r4 - 0x40);
        var_r7 += 1;
    } while ((u32)var_r7 <= 2U);
    temp_r4_2 = strcB8->spr84.hitboxes[1].index;
    temp_r1_2 = (s32)strcB8->qUnk20.x >> 8;
    temp_r4_2->unk10 = (s16)temp_r1_2;
    temp_r4_2->unk12 = (s16)((s32)strcB8->qUnk20.y >> 8);
    temp_r4_2->unk10 = (s16)(var_r2 + temp_r1_2);
    temp_r4_2->unk8 = (s32)(temp_r4_2->unk8 | 0x400);
    UpdateSpriteAnimation((Sprite *)temp_r4_2);
    DisplaySprite((Sprite *)temp_r4_2);
}

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
    var_r0 = gLoadedSaveGame.language;
    if ((u32)var_r0 > 5U) {
        var_r0 = 5;
    }
    arg0->text = *((arg1 * 4) + *((var_r0 * 4) + &gNotificationTexts));
}

void CreateNewGamesaveOpening(NewGameOpening14 *strc14)
{
    s32 sp4;
    s32 sp8;
    NotificationText *temp_r0;
    NotificationText *temp_r0_2;
    NotificationText *temp_r1;

    TaskCreate((void (*)())Task_14_A_80AD968, 0x14U, 0x100U, 0U, TaskDestructor_14_A_80AE688);
    strc14->unkC = 0;
    strc14->unk8 = 0;
    strc14->unk0 = 1;
    strc14->unk4 = 0;
    strc14->unkA = 0x12;
    temp_r0 = EwramMalloc(0xCACU);
    strc14->ewramData10 = temp_r0;
    temp_r0->unk6 = 0;
    temp_r0_2 = strc14->ewramData10;
    temp_r0_2->s = NULL;
    temp_r0_2->vram28 = (void *)0x06012000;
    sp4 = 0;
    CpuFastSet(&sp4, (void *)0x06012000, 0x010003C0U);
    temp_r1 = strc14->ewramData10;
    temp_r1->vram24 = temp_r1->vram28;
    gDispCnt = 0x3040;
    gWinRegs->unk0 = 0xF0;
    gWinRegs[2] = 0xA0;
    gWinRegs[4] |= 0x3F;
    gWinRegs[5] |= 0x1F;
    gBldRegs.bldCnt = 0x3FFF;
    gBldRegs.bldY = 0;
    sp8 = 0;
    (void *)0x040000D4->unk0 = &sp8;
    (void *)0x040000D4->unk4 = (s32)(((0xC & gBgCntRegs[2]) << 0xC) + 0x06000000);
    (void *)0x040000D4->unk8 = 0x85000010;
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
    gBgSprites_Unknown1->unk0 = 0;
    gBgSprites_Unknown2[0][0] = 0;
    gBgSprites_Unknown2[0][1] = 0;
    gBgSprites_Unknown2[0][2] = -1U;
    gBgSprites_Unknown2[0][3] = 0x40;
    *gBgPalette = sub_80C4C0C(0);
    gFlags |= 1;
    m4aMPlayAllStop();
    m4aSongNumStart(8U);
}

void Task_14_A_80AD968(NewGameOpening14 *strc14)
{
    NotificationText *temp_r0;

    if (strc14->unk0 == 1) {
        strc14->unkA = *(strc14->unk8 + &gUnknown_080DBCF4);
        temp_r0 = strc14->ewramData10;
        temp_r0->vram28 = (void *)0x06012000;
        temp_r0->vram24 = (void *)0x06012000;
        sub_80AD7B4(temp_r0, strc14->unkA, 0xAU, 0x41U, (u8 *)0x06012000);
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

void sub_80AD9E4(NewGameOpening14 *strc14)
{
    s32 sp4;
    s32 sp8;
    NotificationText *temp_r0;
    NotificationText *temp_r0_2;
    NotificationText *temp_r1;

    TaskCreate((void (*)())Task_14_B_80ADB20, 0x14U, 0x100U, 0U, TaskDestructor_14_B_80AE71C);
    strc14->unkC = 0;
    strc14->unk8 = 0;
    strc14->unk0 = 1;
    strc14->unk4 = 0;
    strc14->unkA = 0x12;
    temp_r0 = EwramMalloc(0xCACU);
    strc14->ewramData10 = temp_r0;
    temp_r0->unk6 = 0;
    temp_r0_2 = strc14->ewramData10;
    temp_r0_2->s = NULL;
    temp_r0_2->vram28 = (void *)0x06012000;
    sp4 = 0;
    CpuFastSet(&sp4, (void *)0x06012000, 0x010003C0U);
    temp_r1 = strc14->ewramData10;
    temp_r1->vram24 = temp_r1->vram28;
    gDispCnt = 0x3040;
    gWinRegs->unk0 = 0xF0;
    gWinRegs[2] = 0xA0;
    gWinRegs[4] |= 0x3F;
    gWinRegs[5] |= 0x1F;
    gBldRegs.bldCnt = 0x3FFF;
    sp8 = 0;
    (void *)0x040000D4->unk0 = &sp8;
    (void *)0x040000D4->unk4 = (s32)(((0xC & gBgCntRegs[2]) << 0xC) + 0x06000000);
    (void *)0x040000D4->unk8 = 0x85000010;
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
    gBgSprites_Unknown1->unk0 = 0;
    gBgSprites_Unknown2[0][0] = 0;
    gBgSprites_Unknown2[0][1] = 0;
    gBgSprites_Unknown2[0][2] = -1U;
    gBgSprites_Unknown2[0][3] = 0x40;
    *gBgPalette = sub_80C4C0C(0);
    gFlags |= 1;
    m4aMPlayAllStop();
}

void Task_14_B_80ADB20(NewGameOpening14 *strc14)
{
    NotificationText *temp_r0;

    gBldRegs.bldY = 0;
    if (strc14->unk0 == 1) {
        strc14->unkA = *(strc14->unk8 + &gUnknown_080DBCF9);
        temp_r0 = strc14->ewramData10;
        temp_r0->vram28 = (void *)0x06012000;
        temp_r0->vram24 = (void *)0x06012000;
        sub_80AD7B4(temp_r0, strc14->unkA, 0xAU, 0x41U, (u8 *)0x06012000);
        strc14->unk0 = 0;
        strc14->unk8 += 1;
    }
    if (strc14->unk0 == 0) {
        strc14->unk0 = (s32)sub_8023734(strc14->ewramData10);
        sub_80239A8(strc14->ewramData10);
    }
    if (strc14->unk0 == 1) {
        strc14->unk0 = 0;
        gCurTask->main = (void (*)())Task_14_B_80AE720;
    }
}

void Task_6C_80ADBA0(NewGameOpening6C *strc6C)
{
    u8 *temp_r7;

    temp_r7 = VramMalloc(0x14U);
    strc6C->sprC.tiles = VramMalloc(0x23U);
    strc6C->sprC.anim = gUnknown_080DBCFC.unk0;
    strc6C->sprC.variant = gUnknown_080DBCFC.unk2;
    strc6C->sprC.prevVariant = 0xFF;
    strc6C->sprC.x = (s16)((s32)strc6C->unk4 >> 8);
    strc6C->sprC.y = (s16)((s32)strc6C->unk8 >> 8);
    strc6C->sprC.oamFlags = 0x480;
    strc6C->sprC.animCursor = 0;
    strc6C->sprC.qAnimDelay = 0;
    strc6C->sprC.animSpeed = 0x10;
    strc6C->sprC.palId = 2;
    strc6C->sprC.frameFlags = 0;
    UpdateSpriteAnimation((Sprite *)&strc6C->sprC);
    strc6C->spr3C.tiles = temp_r7;
    strc6C->spr3C.anim = gUnknown_080DBCFC.unk10;
    strc6C->spr3C.variant = gUnknown_080DBCFC.unk12;
    strc6C->spr3C.prevVariant = -1U;
    strc6C->spr3C.x = (s16)((s32)strc6C->unk4 >> 8);
    strc6C->spr3C.y = (s16)((s32)strc6C->unk8 >> 8);
    strc6C->spr3C.oamFlags = 0x480;
    strc6C->spr3C.animCursor = 0;
    strc6C->spr3C.qAnimDelay = 0;
    strc6C->spr3C.animSpeed = 0x10;
    strc6C->spr3C.palId = 2;
    strc6C->spr3C.frameFlags = 0;
    UpdateSpriteAnimation((Sprite *)&strc6C->spr3C);
    gCurTask->main = (void (*)())Task_6C_80ADC74;
}

void Task_6C_80ADC74(NewGameOpening6C *strc6C)
{
    u8 temp_r0;

    if (strc6C->unk0 == 0) {
        sub_80AE850(strc6C);
        if (sub_80AE814(strc6C) == 1) {
            goto block_4;
        }
    } else if (sub_80AE850(strc6C) == ACMD_RESULT__ENDED) {
    block_4:
        strc6C->unk0 += 1;
    }
    temp_r0 = strc6C->unk0;
    switch (temp_r0) { /* irregular */
        case 1:
            strc6C->sprC.anim = gUnknown_080DBCFC.unk8;
            strc6C->sprC.variant = gUnknown_080DBCFC.unkA;
            strc6C->sprC.prevVariant = 0xFF;
            strc6C->unk0 += 1;
            return;
        case 3:
            VramFree(strc6C->sprC.tiles);
            gCurTask->main = (void (*)())Task_6C_80AE7C4;
            return;
    }
}

void Task_9C_80ADCF8(NewGameOpening9C *strc9C)
{
    u8 *temp_r7;
    u8 *temp_sl;

    temp_sl = VramMalloc(0x14U);
    temp_r7 = VramMalloc(9U);
    strc9C->spr3C.tiles = VramMalloc(0x24U);
    strc9C->spr3C.anim = gUnknown_080DBD1C.unk0;
    strc9C->spr3C.variant = gUnknown_080DBD1C.unk2;
    strc9C->spr3C.prevVariant = 0xFF;
    strc9C->spr3C.x = (s16)((s32)strc9C->qX >> 8);
    strc9C->spr3C.y = (s16)((s32)strc9C->qY >> 8);
    strc9C->spr3C.oamFlags = 0x480;
    strc9C->spr3C.animCursor = 0;
    strc9C->spr3C.qAnimDelay = 0;
    strc9C->spr3C.animSpeed = 0x10;
    strc9C->spr3C.palId = 2;
    strc9C->spr3C.frameFlags = 0;
    UpdateSpriteAnimation((Sprite *)&strc9C->spr3C);
    strc9C->sprC.tiles = temp_r7;
    strc9C->sprC.anim = gUnknown_080DBD34.unk0;
    strc9C->sprC.variant = gUnknown_080DBD34.unk2;
    strc9C->sprC.prevVariant = -1U;
    strc9C->sprC.x = (s16)((s32)strc9C->qX >> 8);
    strc9C->sprC.y = (s16)((s32)strc9C->qY >> 8);
    strc9C->sprC.oamFlags = 0x440;
    strc9C->sprC.animCursor = 0;
    strc9C->sprC.qAnimDelay = 0;
    strc9C->sprC.animSpeed = 0x10;
    strc9C->sprC.palId = 0;
    strc9C->sprC.frameFlags = 0x400;
    UpdateSpriteAnimation((Sprite *)&strc9C->sprC);
    strc9C->spr6C.tiles = temp_sl;
    strc9C->spr6C.anim = gUnknown_080DBD1C.unk10;
    strc9C->spr6C.variant = gUnknown_080DBD1C.unk12;
    strc9C->spr6C.prevVariant = -1U;
    strc9C->spr6C.x = (s16)((s32)strc9C->qX >> 8);
    strc9C->spr6C.y = (s16)((s32)strc9C->qY >> 8);
    strc9C->spr6C.oamFlags = 0x480;
    strc9C->spr6C.animCursor = 0;
    strc9C->spr6C.qAnimDelay = 0;
    strc9C->spr6C.animSpeed = 0x10;
    strc9C->spr6C.palId = 2;
    strc9C->spr6C.frameFlags = 0;
    UpdateSpriteAnimation((Sprite *)&strc9C->spr6C);
    gCurTask->main = (void (*)())Task_9C_80ADE18;
}

void Task_9C_80ADE18(NewGameOpening9C *strc9C)
{
    if (strc9C->unk0 == 1) {
        strc9C->unk2 = (u16)(strc9C->unk2 + 1);
    }
    if ((sub_80AE8D4(strc9C) == 1) && (strc9C->unk0 == 0)) {
        strc9C->spr3C.anim = gUnknown_080DBD1C.unk8;
        strc9C->spr3C.variant = gUnknown_080DBD1C.unkA;
        strc9C->spr3C.prevVariant = 0xFF;
        strc9C->unk0 += 1;
        goto block_7;
    }
    if ((s16)strc9C->unk2 == 0xD) {
        VramFree(strc9C->spr3C.tiles);
        strc9C->unk0 += 1;
        strc9C->unk2 = 0U;
        gCurTask->main = (void (*)())Task_9C_80AE884;
        return;
    }
block_7:
    sub_80ADEA0(strc9C);
}

s32 sub_80ADEA0(NewGameOpening9C *strc9C)
{
    Sprite2 *temp_r6;
    Sprite2 *var_r5;
    s32 temp_r7;
    u32 var_r0;

    temp_r6 = &strc9C->sprC;
    var_r5 = &strc9C->spr6C;
    if ((u32)strc9C->unk0 <= 1U) {
        var_r5 -= 0x30;
    }
    var_r5->x = (s16)((s32)strc9C->qX >> 8);
    var_r5->y = (s16)((s32)strc9C->qY >> 8);
    temp_r7 = UpdateSpriteAnimation((Sprite *)var_r5);
    DisplaySprite((Sprite *)var_r5);
    strc9C->sprC.x = ((s32)strc9C->qX >> 8) - 0x12;
    strc9C->sprC.y = ((s32)strc9C->qY >> 8) - 5;
    if ((u32)strc9C->unk0 <= 1U) {
        var_r0 = strc9C->sprC.frameFlags | 0x400;
    } else {
        var_r0 = strc9C->sprC.frameFlags & 0xFFFFFBFF;
    }
    strc9C->sprC.frameFlags = var_r0;
    UpdateSpriteAnimation((Sprite *)temp_r6);
    DisplaySprite((Sprite *)temp_r6);
    return temp_r7;
}

void Task_9C_80ADF10(NewGameOpening9C *strc9C)
{
    u8 *sp0;
    u8 *temp_r0;
    u8 *temp_r2;
    u8 *temp_r7;

    temp_r7 = VramMalloc(0x14U);
    temp_r0 = VramMalloc(0x4FU);
    strc9C->spr3C.tiles = temp_r0;
    temp_r2 = temp_r0 + 0x800;
    strc9C->spr3C.anim = gUnknown_080DBD3C.unk0;
    strc9C->spr3C.variant = gUnknown_080DBD3C.unk2;
    strc9C->spr3C.prevVariant = 0xFF;
    strc9C->spr3C.x = (s16)((s32)strc9C->qX >> 8);
    strc9C->spr3C.y = (s16)((s32)strc9C->qY >> 8);
    strc9C->spr3C.oamFlags = 0x480;
    strc9C->spr3C.animCursor = 0;
    strc9C->spr3C.qAnimDelay = 0;
    strc9C->spr3C.animSpeed = 0x10;
    strc9C->spr3C.palId = 2;
    strc9C->spr3C.frameFlags = 0x400;
    sp0 = temp_r2;
    UpdateSpriteAnimation((Sprite *)&strc9C->spr3C);
    strc9C->sprC.tiles = temp_r2;
    strc9C->sprC.anim = gUnknown_080DBD54.unk0;
    strc9C->sprC.variant = gUnknown_080DBD54.unk2;
    strc9C->sprC.prevVariant = -1U;
    strc9C->sprC.x = (s16)((s32)strc9C->qX >> 8);
    strc9C->sprC.y = (s16)((s32)strc9C->qY >> 8);
    strc9C->sprC.oamFlags = 0x440;
    strc9C->sprC.animCursor = 0;
    strc9C->sprC.qAnimDelay = 0;
    strc9C->sprC.animSpeed = 0x10;
    strc9C->sprC.palId = 0;
    strc9C->sprC.frameFlags = 0x400;
    UpdateSpriteAnimation((Sprite *)&strc9C->sprC);
    strc9C->spr6C.tiles = temp_r7;
    strc9C->spr6C.anim = gUnknown_080DBD3C.unk10;
    strc9C->spr6C.variant = gUnknown_080DBD3C.unk12;
    strc9C->spr6C.prevVariant = -1U;
    strc9C->spr6C.x = (s16)((s32)strc9C->qX >> 8);
    strc9C->spr6C.y = (s16)((s32)strc9C->qY >> 8);
    strc9C->spr6C.oamFlags = 0x480;
    strc9C->spr6C.animCursor = 0;
    strc9C->spr6C.qAnimDelay = 0;
    strc9C->spr6C.animSpeed = 0x10;
    strc9C->spr6C.palId = 2;
    strc9C->spr6C.frameFlags = 0;
    UpdateSpriteAnimation((Sprite *)&strc9C->spr6C);
    gCurTask->main = (void (*)())Task_9C_80AE034;
}

void Task_9C_80AE034(NewGameOpening9C *strc9C)
{
    if (strc9C->unk0 == 1) {
        strc9C->spr3C.anim = gUnknown_080DBD3C.unk8;
        strc9C->spr3C.variant = gUnknown_080DBD3C.unkA;
        strc9C->spr3C.prevVariant = 0xFF;
        strc9C->unk0 += 1;
    }
    if (sub_80AE09C(strc9C) == 1) {
        VramFree(strc9C->spr3C.tiles);
        strc9C->unk0 += 1;
        gCurTask->main = (void (*)())Task_9C_80AE90C;
        return;
    }
    sub_80AE110(strc9C);
}

u32 sub_80AE09C(NewGameOpening9C *strc9C)
{
    s32 temp_r3;
    s32 var_r1;

    temp_r3 = strc9C->qX;
    if (temp_r3 <= 0xBDFF) {
        var_r1 = temp_r3 + (*(strc9C->unk0 + &gUnknown_080DBD5C) << 8);
        strc9C->qX = var_r1;
        if (((var_r1 > 0x63FF) && (strc9C->unk0 == 0)) || ((var_r1 = strc9C->qX, (var_r1 > 0x81FF)) && (strc9C->unk0 == 2))
            || ((var_r1 > 0x9FFF) && (strc9C->unk0 == 3))) {
            strc9C->unk0 += 1;
        }
        if (var_r1 > 0xBDFF) {
            goto block_11;
        }
        return 0U;
    }
block_11:
    strc9C->qX = 0xBE00;
    return 1U;
}

s32 sub_80AE110(NewGameOpening9C *strc9C)
{
    Sprite2 *temp_r6;
    Sprite2 *var_r5;
    s32 temp_r7;

    temp_r6 = &strc9C->sprC;
    var_r5 = &strc9C->spr6C;
    if ((u32)strc9C->unk0 <= 4U) {
        var_r5 -= 0x30;
    }
    var_r5->x = (s16)((s32)strc9C->qX >> 8);
    var_r5->y = (s16)((s32)strc9C->qY >> 8);
    temp_r7 = UpdateSpriteAnimation((Sprite *)var_r5);
    DisplaySprite((Sprite *)var_r5);
    if ((u32)(u8)(strc9C->unk0 - 1) <= 3U) {
        strc9C->sprC.x = (s16)((s32)strc9C->qX >> 8);
        strc9C->sprC.y = ((s32)strc9C->qY >> 8) + 0x10;
        if (UpdateSpriteAnimation((Sprite *)temp_r6) == ACMD_RESULT__ENDED) {
            strc9C->sprC.prevVariant = 0xFF;
        }
        DisplaySprite((Sprite *)temp_r6);
    }
    return temp_r7;
}

void sub_80AE174(void)
{
    u16 temp_r1;

    temp_r1 = TaskCreate((void (*)())Task_9C_80ADF10, 0x9CU, 0x100U, 0U, TaskDestructor_9C_80AE1B4)->data;
    temp_r1->unk0 = 0;
    temp_r1->unk2 = 0;
    temp_r1->unk4 = 0xFFFFD800;
    temp_r1->unk8 = 0x7900;
}

void TaskDestructor_9C_80AE1B4(Task *t) { VramFree(t->data->unk6C); }

void CreateUnkTask9C(void)
{
    u16 temp_r1;

    temp_r1 = TaskCreate((void (*)())Task_9C_80ADCF8, 0x9CU, 0x100U, 0U, TaskDestructor_80AE208)->data;
    temp_r1->unk0 = 0;
    temp_r1->unk2 = 0;
    temp_r1->unk4 = 0xBE00;
    temp_r1->unk8 = 0xFFFFD800;
}

void TaskDestructor_80AE208(Task *t)
{
    u16 temp_r4;

    temp_r4 = t->data;
    VramFree(temp_r4->unk6C);
    VramFree(temp_r4->unkC);
}

void TaskDestructor_80AE224(Task *t)
{
    u16 temp_r4;

    temp_r4 = t->data;
    VramFree(temp_r4->unk5C);
    EwramFree(temp_r4->unkB4);
}

void Task_B8_80AE248(NewGameOpeningB8 *strcB8)
{
    if (strcB8->unk10 == 0) {
        sub_80AD0B0(&strcB8->unk1A, &strcB8->qUnk28, (NewGameOpeningB4 *)0x28);
        strcB8->unk10 += 1;
        return;
    }
    strcB8->unk10 = 0;
    sub_80AE300(strcB8->unk18, &strcB8->ewramDataB4->vram24, &strcB8->qY, &strcB8->unk10, &strcB8->spr5C, &strcB8->spr84);
    gCurTask->main = (void (*)())Task_B8_80ACDB8;
}

s32 sub_80AE2C4(NewGameOpeningB8 *arg0)
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

void sub_80AE300(u8 arg0, void **arg1, s32 *arg2, u8 *arg3, Sprite *arg4, Sprite2 *arg5)
{
    s32 sp4;
    u16 temp_r4;
    void *temp_r0;
    void *temp_r1;

    temp_r4 = TaskCreate((void (*)())Task_B8_80AE53C, 0xB8U, 0x100U, 0U, TaskDestructor_80AE524)->data;
    temp_r4->unk10 = 0;
    temp_r4->unk14 = arg3;
    temp_r4->unk18 = arg0;
    temp_r4->unk1A = 0;
    temp_r4->unk0 = 1;
    temp_r4->unkC = arg2;
    temp_r4->unk19 = 0x12;
    temp_r4->unk20 = 0x1C200;
    temp_r4->unk24 = 0x6200;
    temp_r4->unk28 = 0x1C200;
    temp_r4->unk2C = 0x9200;
    temp_r4->unkAC = arg4;
    temp_r4->unkB0 = arg5;
    temp_r4->unk30 = arg1;
    temp_r0 = EwramMalloc(0xCACU);
    temp_r4->unkB4 = temp_r0;
    temp_r0->unk6 = 0;
    temp_r4->unkB4->unk0 = 0;
    temp_r4->unkB4->unk28 = (void *)0x06012F00;
    sp4 = 0;
    CpuFastSet(&sp4, temp_r4->unkB4->unk28, 0x010003C0U);
    temp_r1 = temp_r4->unkB4;
    temp_r1->unk24 = (void *)temp_r1->unk28;
}

void TaskDestructor_B4_80AE3D4(Task *t) { VramFree(t->data->unk14); }

void Task_B4_80AE3E8(NewGameOpeningB4 *strcB4)
{
    sub_80AD190(strcB4);
    if (*strcB4->unk0 == 0xFF) {
        sub_80AE428(strcB4);
    }
    if (gBldRegs.bldY == 0x10) {
        TaskDestroy(gCurTask);
    }
}

void sub_80AE428(NewGameOpeningB4 *arg0)
{
    s32 temp_r1;

    temp_r1 = arg0->unkC;
    if (temp_r1 > 0xFFFFBA00) {
        arg0->unkC = temp_r1 + 0xFFFFFF00;
    }
}

void TaskDestructor_80AE448(Task *t) { VramFree(t->data->unk1C); }

void Task_134_80AE45C(NewGameOpening134 *strc134)
{
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
        temp_r0 = strc134->unk8 + 1;
        strc134->unk8 = temp_r0;
        if ((u32)temp_r0 <= 0x3BU) {
            sub_80AE4C4(strc134);
        }
    }
}

void sub_80AE4C4(NewGameOpening134 *arg0)
{
    Sprite *temp_r4;
    s32 temp_r2;
    s32 temp_r3;

    temp_r4 = arg0 + 0x10C;
    temp_r2 = (s32)*arg0->unkC >> 8;
    temp_r4->x = (s16)temp_r2;
    temp_r3 = (s32)*arg0->unk10 >> 8;
    temp_r4->y = (s16)temp_r3;
    temp_r4->x = temp_r2 + ((s32)arg0->qUnk14.x >> 8);
    temp_r4->y = temp_r3 + ((s32)arg0->qUnk14.y >> 8);
    DisplaySprite(temp_r4);
}

s32 sub_80AE4F8(NewGameOpening134 *arg0)
{
    s32 temp_r0;
    s32 temp_r0_2;

    arg0->qUnk14.x = 0x1400;
    temp_r0 = arg0->qUnk14.y;
    if ((temp_r0 >= 0xFFFFE800) || (temp_r0_2 = temp_r0 + 0x40, arg0->qUnk14.y = temp_r0_2, (temp_r0_2 > 0xFFFFE800))) {
        arg0->qUnk14.y = -0x1800;
        return 1;
    }
    return 0;
}

void TaskDestructor_80AE524(Task *t) { EwramFree(t->data->unkB4); }

void Task_B8_80AE53C(NewGameOpeningB8 *strcB8)
{
    if (strcB8->unk10 == 0) {
        sub_80AD234(&strcB8->unk1A, &strcB8->qUnk28, strcB8->unk18, M2C_ERROR(/* Read from unset register $r3 */));
        strcB8->unk10 += 1;
        return;
    }
    strcB8->unk10 = 0;
    gCurTask->main = (void (*)())Task_B8_80AD634;
}

void Task_B8_80AE584(NewGameOpeningB8 *arg0)
{
    arg0->qY = 0;
    sub_80AD72C(arg0);
    sub_80239A8(arg0->ewramDataB4);
    if (gBldRegs.bldY == 0x10) {
        TaskDestroy(gCurTask);
    }
}

void Task_B8_80AE5C4(NewGameOpeningB8 *strcB8)
{
    s32 temp_r3;
    u16 temp_r0;
    void (*var_r0)(NewGameOpeningB8 *);

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
        if (*((strcB8->unk18 * 9) + strcB8->unk10 + &gUnknown_080DBCBE) == 0xFF) {
            var_r0 = Task_B8_80AE584;
        } else {
            strcB8->unk0 = temp_r3;
            var_r0 = Task_B8_80AD634;
        }
        gCurTask->main = var_r0;
    }
}

s32 sub_80AE63C(NewGameOpeningB8 *arg0)
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
    strcB8->qUnk28.x = strcB8->qUnk20.x + 0xFFFFE000;
    strcB8->qUnk28.y = strcB8->qUnk20.y + 0x2C00;
    return 0;
}

void TaskDestructor_14_A_80AE688(Task *t) { EwramFree(t->data->unk10); }

void Task_80AE69C(void)
{
    u16 temp_r1;
    void (*var_r0)();

    temp_r1 = gCurTask->data;
    if (*(temp_r1->unk8 + &gUnknown_080DBCF4) == 0xFF) {
        var_r0 = Task_80AE6D8;
    } else {
        temp_r1->unk0 = 1;
        var_r0 = (void (*)())Task_14_A_80AD968;
    }
    gCurTask->main = var_r0;
}

void Task_80AE6D8(void)
{
    TasksDestroyInPriorityRange(0U, 0xFFFFU);
    gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;
    gBgSpritesCount = 0;
    gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;
    CreateGameIntroState(0);
}

void TaskDestructor_14_B_80AE71C(Task *t) { }

void Task_14_B_80AE720(NewGameOpening14 *strc14)
{
    u16 temp_r0;
    u16 temp_r4;

    temp_r4 = strc14->unk6;
    sub_80239A8(temp_r4->unk10);
    temp_r0 = temp_r4->unkC + 1;
    temp_r4->unkC = temp_r0;
    if ((u32)temp_r0 > 0x3BU) {
        sub_8000804();
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
    u16 temp_r1;

    temp_r1 = TaskCreate((void (*)())Task_6C_80ADBA0, 0x6CU, 0x100U, 0U, TaskDestructor_6C_80AE7B0)->data;
    temp_r1->unk0 = 0;
    temp_r1->unk2 = 0;
    temp_r1->unk4 = 0xBE00;
    temp_r1->unk8 = 0xFFFFD800;
}

void TaskDestructor_6C_80AE7B0(Task *t) { VramFree(t->data->unk3C); }

void Task_6C_80AE7C4(NewGameOpening6C *strc6C)
{
    u16 temp_r0;
    u16 temp_r1;

    sub_80AE850(strc6C);
    temp_r1 = strc6C->unk2;
    if ((s32)(s16)strc6C->unk2 <= 0xD2) {
        temp_r0 = temp_r1 + 1;
        strc6C->unk2 = temp_r0;
        if ((s16)temp_r0 == 0xD2) {
            sub_80ACC40(0U, (NewGameOpeningB8 *)temp_r1);
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
        if (temp_r0 > 0x7A00) {
            strc6C->unk8 = 0x7A00;
            return 1U;
        }
        return 0U;
    }
    strc6C->unk8 = 0x7A00;
    return 1U;
}

s32 sub_80AE850(NewGameOpening6C *arg0)
{
    Sprite *var_r5;
    s32 temp_r4;

    var_r5 = arg0 + 0x3C;
    if ((u32)arg0->unk0 <= 2U) {
        var_r5 -= 0x30;
    }
    var_r5->x = (s16)((s32)arg0->unk4 >> 8);
    var_r5->y = (s16)((s32)arg0->unk8 >> 8);
    temp_r4 = UpdateSpriteAnimation(var_r5);
    DisplaySprite(var_r5);
    return temp_r4;
}

void Task_9C_80AE884(NewGameOpening9C *strc9C)
{
    u16 temp_r0;
    u16 temp_r1;

    sub_80ADEA0(strc9C);
    temp_r1 = strc9C->unk2;
    if ((s32)(s16)strc9C->unk2 <= 0x78) {
        temp_r0 = temp_r1 + 1;
        strc9C->unk2 = temp_r0;
        if ((s16)temp_r0 == 0x78) {
            sub_80ACC40(1U, (NewGameOpeningB8 *)temp_r1);
        }
    }
    if (gBldRegs.bldY == 0x10) {
        TaskDestroy(gCurTask);
    }
}

s32 sub_80AE8D4(NewGameOpening9C *arg0)
{
    s32 temp_r0;
    s32 temp_r2;

    temp_r2 = arg0->qY;
    if (temp_r2 <= 0x79FF) {
        temp_r0 = temp_r2 + 0x100;
        arg0->qY = temp_r0;
        if (temp_r0 > 0x7A00) {
            arg0->qY = 0x7A00;
            return 1;
        }
        return 0;
    }
    arg0->qY = 0x7A00;
    return 1;
}

void Task_9C_80AE90C(NewGameOpening9C *strc9C)
{
    u16 temp_r0;
    u16 temp_r1;

    sub_80AE110(strc9C);
    temp_r1 = strc9C->unk2;
    if ((s32)(s16)strc9C->unk2 <= 0x78) {
        temp_r0 = temp_r1 + 1;
        strc9C->unk2 = temp_r0;
        if ((s16)temp_r0 == 0x78) {
            sub_80ACC40(2U, (NewGameOpeningB8 *)temp_r1);
        }
    }
    if (gBldRegs.bldY == 0x10) {
        TaskDestroy(gCurTask);
    }
}

void sub_80AE95C(u8 arg0, NewGameOpeningA4 *strcA4)
{
    s32 sp4;
    u8 temp_r4;

    temp_r4 = arg0;
    gDispCnt = 0x1041;
    TaskCreate((void (*)())Task_A4_80AEA44, 0xA4U, 0x100U, 0U, TaskDestructor_80AED7C);
    strcA4->unk0 = gLoadedSaveGame.language;
    strcA4->unk1 = temp_r4;
    strcA4->unk2 = 0x1B;
    strcA4->unk3 = 0;
    strcA4->unk4 = 0;
    strcA4->unkC.x = 0x7800;
    strcA4->unkC.y = *((temp_r4 * 2) + &gUnknown_080DBD88) << 8;
    strcA4->unk14 = 0;
    strcA4->unk18 = 0;
    strcA4->unk1C = 0;
    strcA4->unk20 = 0;
    sp4 = 0;
    (void *)0x040000D4->unk0 = &sp4;
    (void *)0x040000D4->unk4 = (s32)(((0xC & gBgCntRegs[2]) << 0xC) + 0x06000000);
    (void *)0x040000D4->unk8 = 0x85000010;
    gBgSprites_Unknown1[2] = 0;
    gBgSprites_Unknown2[2][0] = 0;
    gBgSprites_Unknown2[2][1] = 0;
    gBgSprites_Unknown2[2][2] = 0xFF;
    gBgSprites_Unknown2[2][3] = 0x40;
    gBgSprites_Unknown1[1] = 0;
    gBgSprites_Unknown2[1][0] = 0;
    gBgSprites_Unknown2[1][1] = 0;
    gBgSprites_Unknown2[1][2] = -1U;
    gBgSprites_Unknown2[1][3] = 0x40;
    gBgSprites_Unknown1->unk0 = 0;
    gBgSprites_Unknown2[0][0] = 0;
    gBgSprites_Unknown2[0][1] = 0;
    gBgSprites_Unknown2[0][2] = -1U;
    gBgSprites_Unknown2[0][3] = 0x40;
    strcA4->vram8 = (void *)0x06010000;
}

void Task_A4_80AEA44(NewGameOpeningA4 *strcA4)
{
    gDispCnt |= 0x100;
    gBgCntRegs->unk0 = 0x600;
    gBgScrollRegs[0][0] = -4;
    gBgScrollRegs[0][1] = -0xC;
    strcA4->bg24.graphics.dest = (void *)0x06000000;
    strcA4->bg24.graphics.anim = 0;
    strcA4->bg24.layoutVram = (u16 *)0x06003000;
    strcA4->bg24.unk18 = 0;
    strcA4->bg24.unk1A = 0;
    strcA4->bg24.tilemapId = *((strcA4->unk0 * 2) + (strcA4->unk1 * 0xC) + &gUnknown_080DBD64);
    strcA4->bg24.unk1E = 0;
    strcA4->bg24.unk20 = 0;
    strcA4->bg24.unk22 = 0;
    strcA4->bg24.unk24 = 0;
    strcA4->bg24.targetTilesX = 0x20;
    strcA4->bg24.targetTilesY = 0x20;
    strcA4->bg24.paletteOffset = 0;
    strcA4->bg24.flags = 0;
    DrawBackground(&strcA4->bg24);
    gDispCnt |= 0x200;
    gBgCntRegs[1] = 0x1608;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    strcA4->bg64.graphics.dest = (void *)0x06008000;
    strcA4->bg64.graphics.anim = 0;
    strcA4->bg64.layoutVram = (u16 *)0x0600B000;
    strcA4->bg64.unk18 = 0;
    strcA4->bg64.unk1A = 0;
    strcA4->bg64.tilemapId = 0x156;
    strcA4->bg64.unk1E = 0;
    strcA4->bg64.unk20 = 0;
    strcA4->bg64.unk22 = 0;
    strcA4->bg64.unk24 = 0;
    strcA4->bg64.targetTilesX = 0x20;
    strcA4->bg64.targetTilesY = 0x20;
    strcA4->bg64.paletteOffset = 0;
    strcA4->bg64.flags = 0;
    DrawBackground(&strcA4->bg64);
    if (0x10000 & gFlags) {
        CopyBgPaletteMasked(*((strcA4->unk1 * 4) + &gUnknown_08E2EF64), 0x10U, 0x20U);
    } else {
        (void *)0x040000D4->unk0 = (s32) * ((strcA4->unk1 * 4) + &gUnknown_08E2EF64);
        (void *)0x040000D4->unk4 = &gBgPalette[0x10];
        (void *)0x040000D4->unk8 = 0x80000020;
        gFlags |= 1;
    }
    strcA4->unk1 = *(strcA4->unk1 + &gUnknown_080DBE50);
    CreateSomeTask_809BF3C(&strcA4->unk1, &strcA4->unk2, &strcA4->unkC, &strcA4->unkC.y, strcA4->vram8);
    gCurTask->main = (void (*)())Task_A4_80AEBF0;
}

void Task_A4_80AEBF0(NewGameOpeningA4 *strcA4)
{
    if (strcA4->unk3 != 0) {
        gDispCnt |= 0x2000;
        gWinRegs->unk0 = 0xF0;
        gWinRegs[2] = 0xA0;
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FFF;
        gBldRegs.bldY = 0x10;
        strcA4->unk4 = 0x1000U;
        strcA4->unk3 = 0;
    }
    sub_80AEDB8(strcA4);
    if (gBldRegs.bldY != 0) {
        gBldRegs.bldY = (u16)((u16)strcA4->unk4 >> 8);
        strcA4->unk4 = (u16)(strcA4->unk4 + 0xFFFFFF00);
        return;
    }
    gBldRegs.bldY = gBldRegs.bldY;
    m4aMPlayAllStop();
    m4aSongNumStart(0x63U);
    gCurTask->main = (void (*)())Task_A4_80AED80;
}

void sub_80AEC94(void)
{
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    if (temp_r1->unk3 != 0) {
        gDispCnt |= 0x2000;
        gWinRegs->unk0 = 0xF0;
        gWinRegs[2] = 0xA0;
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FFF;
        temp_r1->unk4 = 0U;
        temp_r1->unk3 = 0U;
    }
    sub_80AEDB8((NewGameOpeningA4 *)temp_r1);
    if ((u32)gBldRegs.bldY <= 0xFU) {
        gBldRegs.bldY = (u16)((u16)temp_r1->unk4 >> 8);
        temp_r1->unk4 = (u16)(temp_r1->unk4 + 0x100);
        return;
    }
    temp_r1->unkC = 0x13600;
    temp_r1->unk2 = 0x1D;
    gBldRegs.bldY = 0x10;
    TasksDestroyInPriorityRange(0U, 0xFFFFU);
    gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;
    gBgSpritesCount = 0;
    gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;
    WarpToMap((s16)((s32)((gStageData.zone * 0xA0000) + 0x20000) >> 0x10), gStageData.act - 2);
}

void TaskDestructor_80AED7C(Task *t) { }

void Task_A4_80AED80(NewGameOpeningA4 *strcA4)
{
    sub_80AEDB8(strcA4);
    if (1 & gPressedKeys) {
        gCurTask->main = sub_80AEC94;
    }
}

void sub_80AEDB8(NewGameOpeningA4 *strcA4)
{
    s32 temp_r1;
    s32 temp_r2;

    temp_r2 = strcA4->unk1C + 0xC0;
    strcA4->unk1C = temp_r2;
    temp_r1 = strcA4->unk20 - 0xC0;
    strcA4->unk20 = temp_r1;
    gBgScrollRegs[1][0] = (s16)(temp_r2 >> 8);
    gBgScrollRegs[1][1] = (s16)(temp_r1 >> 8);
}
#endif
