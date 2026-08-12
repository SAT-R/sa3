#include "global.h"
#include "core.h"
#include "game/save.h"

typedef struct {
    u8 chars[5][2];
    u16 rankTimes[5][5];
} RecordData;

typedef struct {
    /* 0x000 */ u8 language;
    /* 0x001 */ u8 unk1;
    /* 0x002 */ u8 unk2;
    /* 0x003 */ u8 unk3;
    /* 0x004 */ u8 unk4;
    /* 0x005 */ u8 filler5[0xA];
    /* 0x00F */ s8 unkF[5];
    /* 0x014 */ u8 unk14;
    /* 0x015 */ s8 unk15[7];
    /* 0x01C */ u8 unk1C;
    /* 0x01D */ u8 unk1D;
    /* 0x01E */ u8 unk1E;
    /* 0x01F */ u8 unk1F;
    /* 0x020 */ u16 unk20;
    /* 0x022 */ u16 unk22;
    /* 0x024 */ u16 unk24;
    /* 0x026 */ u16 unk26;
    /* 0x028 */ u16 unk28;
    /* 0x02A */ u8 filler2A[0x2];
    /* 0x02C */ s32 unk2C;
    /* 0x030 */ s32 unk30;
    /* 0x034 */ s32 unk34;
    /* 0x038 */ s32 unk38;
    /* 0x03C */ u8 filler3C[0x18];
    /* 0x054 */ s32 unk54;
    /* 0x058 */ s32 unk58;
    /* 0x05C */ s32 unk5C;
    /* 0x060 */ s32 unk60;
    /* 0x064 */ s32 unk64;
    /* 0x068 */ s32 unk68;
    /* 0x06C */ s32 unk6C;
    /* 0x070 */ s32 unk70;
    /* 0x074 */ s32 unk74;
    /* 0x078 */ Vec2_32 unk78[5];
    /* 0x0A0 */ u8 *vramA0;
    /* 0x0A4 */ Sprite sprA4[3]; // TODO: arr count unknown!
    /* 0x11C */ Sprite spr11C;
    /* 0x144 */ Sprite spr144;
    /* 0x16C */ Sprite spr16C;
    /* 0x194 */ Sprite spr194[11];
    /* 0x34C */ Sprite spr34C[5];
    /* 0x414 */ Sprite spr414;
    /* 0x43C */ Sprite spr43C[2];
    /* 0x48C */ Background bg48C;
    /* 0x4CC */ Background bg4CC;
    /* 0x50C */ Background bg50C;
    /* 0x54C */ RecordData recordData[7][4];
} TimeRecordScreen; /* 0xBDC */

void CreateTimeRecordScreen(u8 arg0);
void Task_TimeRecordScreenInit(void);
void sub_809508C(void);
void sub_809514C(void);
void sub_80951B0(void);
void Task_8095210(void);
void Task_8095370(void);
void Task_80954A8(void);
void sub_8095674(void);
void Task_809624C(void);
void Task_809630C(void);
void Task_80956E4(void);
void Task_8095764(void);
void Task_8095840(void);
void sub_8095980(TimeRecordScreen *trs, s32 unused);
void sub_8094A98(TimeRecordScreen *trs);
void sub_8094F3C(TimeRecordScreen *trs); // InitializeBackgrounds
void sub_8095C14(TimeRecordScreen *trs);
s32 sub_8095CB4(TimeRecordScreen *trs);
s32 sub_8095D24(TimeRecordScreen *trs);
s32 sub_8095DF8(TimeRecordScreen *trs);
void sub_8095E8C(TimeRecordScreen *trs);
u8 sub_8096398(TimeRecordScreen *trs);
void sub_8095EF4(TimeRecordScreen *trs);
void sub_80960B8(TimeRecordScreen *trs);
void sub_80962B4(void);
s32 sub_80963E0(TimeRecordScreen *trs);
void sub_8096428(TimeRecordScreen *trs);
s32 sub_8096490(TimeRecordScreen *trs);
void sub_80964F8(TimeRecordScreen *trs);
void sub_8096520(TimeRecordScreen *trs);
void sub_8096554(TimeRecordScreen *trs);
s32 sub_8096590(TimeRecordScreen *trs);
s32 sub_809660C(TimeRecordScreen *trs);
s32 sub_8096678(TimeRecordScreen *trs);
s32 sub_80966C4(TimeRecordScreen *trs);
void sub_8096714(TimeRecordScreen *trs);
void sub_809673C(TimeRecordScreen *trs);
void sub_8096758(TimeRecordScreen *trs);
void sub_8096774(TimeRecordScreen *trs);
void sub_8096790(TimeRecordScreen *trs);
void sub_80967DC(TimeRecordScreen *trs);
void sub_8096814(TimeRecordScreen *trs);
void TaskDestructor_TimeRecordScreen(Task *t);

extern ColorRaw sub_80C4C0C(ColorRaw color);

extern const u8 gUnknown_080CE438[][2];
extern const u8 gUnknown_080CE4B2[][2];
extern const TaskMain gUnknown_080D8B4C[5];

void Task_TimeRecordScreenInit(void)
{
    TimeRecordScreen *trs = TASK_DATA(gCurTask);

    DmaFill32(3, 0, (void *)BG_CHAR_ADDR_FROM_BGCNT(2), 0x40);

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

    sub_8094F3C(trs);
    sub_8094A98(trs);

    gBgPalette[0] = sub_80C4C0C(0xFFFF);
    gCurTask->main = gUnknown_080D8B4C[trs->unk3];
}

// (89.54%) https://decomp.me/scratch/AVVy9
NONMATCH("asm/non_matching/game/sa3/options/trs__sub_80947EC.inc", void sub_80947EC(TimeRecordScreen *trs))
{
    u8 i;

    trs->language = LOADED_SAVE->language;
    trs->unk1 = 1;
    trs->unk2 = 1;
    trs->unk22 = 0;
    trs->unk1C = 0;
    trs->unk1D = 0;
    trs->unk26 = 0;
    trs->unk28 = 0;
    trs->unk20 = 0xA;
    trs->unk24 = 0;
    trs->unk1E = 0;
    trs->unk1F = 0;
    trs->unk4 = 0;

    for (i = 0; i < ARRAY_COUNT(trs->unk78); i++) {
        trs->unk78[i].x = (i * 0x4000) + 0xF000;
        trs->unk78[i].y = (i * 0x1000) + (0x80 << 5);
        trs->unkF[i] = 0;
    }

    if (trs->unk3 == 0) {
        trs->unk14 = 7;
    } else if (LOADED_SAVE->unlockedZones > 7U) {
        trs->unk14 = 7;
    } else {
        trs->unk14 = LOADED_SAVE->unlockedZones;
    }

    for (i = 0; i < ARRAY_COUNT(trs->unk15); i++) {
        if (trs->unk3 == 0) {
            trs->unk15[i] = 3;
        } else {
            if (LOADED_SAVE->unlockedStages[i]) {
                trs->unk15[i] = (LOADED_SAVE->unlockedStages[i] >> 1) + 1;
                if (trs->unk15[i] > 3) {
                    trs->unk15[i] = 3;
                }
            } else {
                trs->unk15[i] = 0;
            }
        }
    }

    trs->unk30 = -0x3200;
    trs->unk34 = 0x5000;
    trs->unk68 = 0x8400;
    trs->unk6C = 0x5000;
    trs->unk70 = 0x7C00;
    trs->unk74 = 0x5000;
    trs->unk58 = 0;
    trs->unk5C = 0;
    trs->unk54 = 0;
    trs->unk2C = 0xA000;
    trs->unk60 = 0x7800;
    trs->unk64 = 0x2000;

    trs->vramA0 = OBJ_VRAM0;
}
END_NONMATCH

// (99.82%) https://decomp.me/scratch/sBH4x
NONMATCH("asm/non_matching/game/sa3/options/trs__sub_8094924.inc", void sub_8094924(TimeRecordScreen *trs))
{
    u8 rank;
    u8 act;
    u8 zone;

    for (zone = 0; zone < ARRAY_COUNT(LOADED_SAVE->timeRecords.table); zone++) {
        for (act = 0; act < ARRAY_COUNT(LOADED_SAVE->timeRecords.table[0]); act++) {
            for (rank = 0; rank < ARRAY_COUNT(LOADED_SAVE->timeRecords.table[0][0]); rank++) {
                u16 allFrames;
                u8 digitFrames;
                u16 digitSecs;
                u16 secs;
                u8 mins;
                trs->recordData[zone][act].chars[rank][0] = LOADED_SAVE->timeRecords.table[zone][act][rank].character1;
                trs->recordData[zone][act].chars[rank][1] = LOADED_SAVE->timeRecords.table[zone][act][rank].character2;
                allFrames = LOADED_SAVE->timeRecords.table[zone][act][rank].time;
                digitFrames = Mod(allFrames, 60);
                secs = Div(allFrames, 60);
                mins = Div(secs, 60);
                digitSecs = (secs - (mins * 60));

                trs->recordData[zone][act].rankTimes[rank][4] = gUnknown_080CE4B2[digitFrames][1];
                trs->recordData[zone][act].rankTimes[rank][3] = gUnknown_080CE4B2[digitFrames][0];
                trs->recordData[zone][act].rankTimes[rank][2] = gUnknown_080CE438[digitSecs][1];
                trs->recordData[zone][act].rankTimes[rank][1] = gUnknown_080CE438[digitSecs][0];
                trs->recordData[zone][act].rankTimes[rank][0] = mins;
            }
        }
    }
}
END_NONMATCH

#if 0
void sub_8094A98(TimeRecordScreen *trs) {
    s32 sp4;
    Sprite *sp14;
    Vec2_32 *sp18;
    s32 *sp1C;
    u8 **sp20;
    u32 sp24;
    s32 sp28;
    Sprite *temp_r7;
    Sprite *temp_r7_2;
    Sprite *temp_r7_3;
    Sprite *var_r7;
    s32 temp_r2;
    s32 temp_r2_3;
    s32 temp_r2_5;
    s32 temp_r5_2;
    s32 var_r5;
    u32 temp_r5;
    u32 var_r3;
    u32 var_r3_2;
    u32 var_r3_3;
    u32 var_r3_4;
    u8 **var_r1;
    u8 **var_r1_2;
    u8 temp_r1;
    u8 temp_r1_2;
    u8 temp_r8;
    void *temp_r2_2;
    void *temp_r2_4;
    void *temp_r2_6;

    temp_r1 = trs->language;
    temp_r5 = (u32) ((0 - temp_r1) | temp_r1) >> 0x1F;
    var_r3 = 0;
    if ((u32) trs->unk2 >= 0U) {
        do {
            var_r7 = &trs->sprA4[1];
            if (var_r3 == 0) {
                var_r7 -= 0x28;
            }
            var_r7->tiles = trs->vramA0;
            temp_r2 = (var_r3 + (temp_r5 * 2)) * 8;
            trs->vramA0 += *(temp_r2 + (&gUnknown_080D8AAC + 4)) << 5;
            temp_r2_2 = temp_r2 + &gUnknown_080D8AAC;
            var_r7->anim = temp_r2_2->unk0;
            var_r7->variant = temp_r2_2->unk2;
            var_r7->prevVariant = 0xFF;
            var_r7->x = (s16) ((s32) trs->unk30 >> 8);
            var_r7->y = (s16) ((s32) trs->unk34 >> 8);
            var_r7->oamFlags = 0xC0;
            var_r7->animCursor = 0;
            var_r7->qAnimDelay = 0;
            var_r7->animSpeed = 0x10;
            var_r7->palId = 0;
            var_r7->frameFlags = 0;
            sp24 = var_r3;
            UpdateSpriteAnimation(var_r7);
            var_r3 = (u32) (u8) (var_r3 + 1);
        } while (var_r3 <= (u32) trs->unk2);
    }
    trs->spr11C.tiles = trs->vramA0;
    trs->vramA0 += gUnknown_080D8AE4.unk4 << 5;
    trs->spr11C.anim = gUnknown_080D8AE4.unk0;
    trs->spr11C.variant = gUnknown_080D8AE4.unk2;
    trs->spr11C.prevVariant = 0xFF;
    trs->spr11C.x = (s16) ((s32) trs->unk60 >> 8);
    trs->spr11C.y = (s16) ((s32) trs->unk64 >> 8);
    trs->spr11C.oamFlags = 0x80;
    trs->spr11C.animCursor = 0;
    trs->spr11C.qAnimDelay = 0;
    trs->spr11C.animSpeed = 0x10;
    trs->spr11C.palId = 0;
    trs->spr11C.frameFlags = 0x80;
    UpdateSpriteAnimation(&trs->spr11C);
    trs->spr144.tiles = trs->vramA0;
    trs->vramA0 += gUnknown_080D8AEC.unk4 << 5;
    trs->spr144.anim = gUnknown_080D8AEC.unk0;
    trs->spr144.variant = gUnknown_080D8AEC.unk2;
    trs->spr144.prevVariant = -1U;
    trs->spr144.x = (s16) ((s32) trs->unk68 >> 8);
    trs->spr144.y = (s16) ((s32) trs->unk6C >> 8);
    trs->spr144.oamFlags = 0xC0;
    trs->spr144.animCursor = 0;
    trs->spr144.qAnimDelay = 0;
    trs->spr144.animSpeed = 0x10;
    trs->spr144.palId = 0;
    trs->spr144.frameFlags = 0;
    UpdateSpriteAnimation(&trs->spr144);
    trs->spr16C.tiles = trs->vramA0;
    trs->vramA0 += sAnimsTimeAttackDigits.unk4 << 5;
    subroutine_arg0.unk0 = (u16) sAnimsTimeAttackDigits.unk0;
    trs->spr16C.anim = sAnimsTimeAttackDigits.unk0;
    temp_r8 = sAnimsTimeAttackDigits.unk2;
    trs->spr16C.variant = sAnimsTimeAttackDigits.unk2;
    trs->spr16C.prevVariant = -1U;
    trs->spr16C.x = (s16) ((s32) trs->unk30 >> 8);
    trs->spr16C.y = (s16) ((s32) trs->unk34 >> 8);
    trs->spr16C.oamFlags = 0xC0;
    trs->spr16C.animCursor = 0;
    trs->spr16C.qAnimDelay = 0;
    trs->spr16C.animSpeed = 0x10;
    trs->spr16C.palId = 0;
    trs->spr16C.frameFlags = 0;
    UpdateSpriteAnimation(&trs->spr16C);
    trs->spr194[0].tiles = trs->vramA0;
    trs->vramA0 += 0x80;
    trs->spr194[0].anim = subroutine_arg0.unk0;
    trs->spr194[0].variant = temp_r8;
    trs->spr194[0].prevVariant = -1U;
    trs->spr194[0].x = (s16) ((s32) trs->unk30 >> 8);
    trs->spr194[0].y = (s16) ((s32) trs->unk34 >> 8);
    trs->spr194[0].oamFlags = 0xC0;
    trs->spr194[0].animCursor = 0;
    trs->spr194[0].qAnimDelay = 0;
    trs->spr194[0].animSpeed = 0x10;
    trs->spr194[0].palId = 0;
    trs->spr194[0].frameFlags = 0;
    UpdateSpriteAnimation(trs->spr194);
    var_r5 = 5;
    if (trs->language == 0) {
        var_r5 = 0;
    }
    var_r3_2 = 0;
    sp18 = trs->unk78;
    sp1C = &trs->unk78[0].y;
    sp14 = &trs->sprA4[2];
    do {
        temp_r7 = &trs->spr34C[var_r3_2];
        temp_r7->tiles = trs->vramA0;
        temp_r2_3 = (var_r3_2 + var_r5) * 8;
        trs->vramA0 += *(temp_r2_3 + (&gUnknown_080D8AF4 + 4)) << 5;
        temp_r2_4 = temp_r2_3 + &gUnknown_080D8AF4;
        temp_r7->anim = temp_r2_4->unk0;
        temp_r7->variant = temp_r2_4->unk2;
        temp_r7->prevVariant = 0xFF;
        temp_r7->x = (s16) ((s32) sp18[var_r3_2].x >> 8);
        temp_r7->y = (s16) ((s32) *(sp1C + (var_r3_2 * 8)) >> 8);
        temp_r7->oamFlags = 0xC0;
        temp_r7->animCursor = 0;
        temp_r7->qAnimDelay = 0;
        temp_r7->animSpeed = 0x10;
        temp_r7->palId = 0;
        temp_r7->frameFlags = 0;
        sp24 = var_r3_2;
        UpdateSpriteAnimation(temp_r7);
        var_r3_2 = (u32) (u8) (var_r3_2 + 1);
    } while (var_r3_2 <= 4U);
    var_r3_3 = 1;
    var_r1 = &gUnknown_080D8B44;
    sp4 = gUnknown_080D8B44.unk4 << 5;
    do {
        temp_r7_2 = &trs->spr194[var_r3_3];
        temp_r7_2->tiles = trs->vramA0;
        trs->vramA0 = &trs->vramA0[sp4];
        temp_r7_2->anim = var_r1->unk0;
        temp_r7_2->variant = var_r3_3 + var_r1->unk2;
        subroutine_arg0.unk8 = -1U;
        temp_r7_2->prevVariant = 0xFF;
        temp_r7_2->x = (s16) ((s32) trs->unk78[0].x >> 8);
        temp_r7_2->y = (s16) ((s32) trs->unk78[0].y >> 8);
        temp_r7_2->oamFlags = 0xC0;
        temp_r7_2->animCursor = 0;
        temp_r7_2->qAnimDelay = 0;
        temp_r7_2->animSpeed = 0x10;
        temp_r7_2->palId = 0;
        temp_r7_2->frameFlags = 0;
        sp20 = var_r1;
        sp24 = var_r3_3;
        UpdateSpriteAnimation(temp_r7_2);
        var_r3_3 = (u32) (u8) (var_r3_3 + 1);
    } while (var_r3_3 <= 0xAU);
    trs->spr414.tiles = trs->vramA0;
    temp_r5_2 = gUnknown_080D8B44.unk4 << 5;
    trs->vramA0 += temp_r5_2;
    trs->spr414.anim = gUnknown_080D8B44.unk0;
    subroutine_arg0.unkC = (u8) gUnknown_080D8B44.unk2;
    trs->spr414.variant = gUnknown_080D8B44.unk2;
    trs->spr414.prevVariant |= subroutine_arg0.unk8;
    trs->spr414.x = (s16) ((s32) trs->unk78[0].x >> 8);
    trs->spr414.y = (s16) ((s32) trs->unk78[0].y >> 8);
    trs->spr414.oamFlags = 0xC0;
    trs->spr414.animCursor = 0;
    trs->spr414.qAnimDelay = 0;
    trs->spr414.animSpeed = 0x10;
    trs->spr414.palId = 0;
    trs->spr414.frameFlags = 0;
    UpdateSpriteAnimation(&trs->spr414);
    var_r3_4 = 0;
    var_r1_2 = &trs->vramA0;
    subroutine_arg0.unk10 = (u8) subroutine_arg0.unkC;
    sp28 = temp_r5_2;
    do {
        temp_r7_3 = &trs->spr43C[var_r3_4];
        temp_r7_3->tiles = *var_r1_2;
        *var_r1_2 = &(*var_r1_2)[sp28];
        temp_r7_3->anim = gUnknown_080D8B44.unk0;
        temp_r7_3->variant = subroutine_arg0.unk10 + (var_r3_4 + 0xB);
        temp_r7_3->prevVariant = 0xFF;
        temp_r7_3->x = (s16) ((s32) trs->unk78[0].x >> 8);
        temp_r7_3->y = (s16) ((s32) trs->unk78[0].y >> 8);
        temp_r7_3->oamFlags = 0xC0;
        temp_r7_3->animCursor = 0;
        temp_r7_3->qAnimDelay = 0;
        temp_r7_3->animSpeed = 0x10;
        temp_r7_3->palId = 0;
        temp_r7_3->frameFlags = 0;
        sp20 = var_r1_2;
        sp24 = var_r3_4;
        UpdateSpriteAnimation(temp_r7_3);
        var_r3_4 = (u32) (u8) (var_r3_4 + 1);
    } while (var_r3_4 <= 1U);
    temp_r1_2 = trs->language;
    sp14->tiles = trs->vramA0;
    temp_r2_5 = ((u32) ((0 - temp_r1_2) | temp_r1_2) >> 0x1F) * 8;
    trs->vramA0 += *(temp_r2_5 + (&gUnknown_080D8ACC + 4)) << 5;
    temp_r2_6 = temp_r2_5 + &gUnknown_080D8ACC;
    sp14->anim = temp_r2_6->unk0;
    sp14->variant = temp_r2_6->unk2;
    sp14->prevVariant |= ~0;
    sp14->x = (s16) ((s32) trs->unk48 >> 8);
    sp14->y = (s16) ((s32) trs->unk4C >> 8);
    sp14->oamFlags = 0xC0;
    sp14->animCursor = 0;
    sp14->qAnimDelay = 0;
    sp14->animSpeed = 0x10;
    sp14->palId = 0;
    sp14->frameFlags = 0;
    UpdateSpriteAnimation(sp14);
    trs->spr16C.tiles = trs->vramA0;
    trs->vramA0 += 0x80;
    trs->spr16C.anim = sAnimsTimeAttackDigits.unk0;
    trs->spr16C.variant = sAnimsTimeAttackDigits.unk2;
    trs->spr16C.prevVariant |= ~0;
    trs->spr16C.x = ((s32) trs->unk30 >> 8) + 0x2000;
    trs->spr16C.y = (s16) ((s32) trs->unk34 >> 8);
    trs->spr16C.oamFlags = 0xC0;
    trs->spr16C.animCursor = 0;
    trs->spr16C.qAnimDelay = 0;
    trs->spr16C.animSpeed = 0x10;
    trs->spr16C.palId = 0;
    trs->spr16C.frameFlags = 0;
    UpdateSpriteAnimation(&trs->spr16C);
}

void sub_8094F3C(TimeRecordScreen *trs) {
    gDispCnt |= 0x100;
    gBgCntRegs->unk0 = 0x603;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    trs->bg50C.graphics.dest = (void *)0x06000000;
    trs->bg50C.graphics.anim = 0;
    trs->bg50C.layoutVram = (u16 *)0x06003000;
    trs->bg50C.unk18 = 0;
    trs->bg50C.unk1A = 0;
    trs->bg50C.tilemapId = 0x161;
    trs->bg50C.unk1E = 0;
    trs->bg50C.unk20 = 0;
    trs->bg50C.unk22 = 0;
    trs->bg50C.unk24 = 0;
    trs->bg50C.targetTilesX = 0x20;
    trs->bg50C.targetTilesY = 0x20;
    trs->bg50C.paletteOffset = 0;
    trs->bg50C.flags = 2;
    DrawBackground(&trs->bg50C);
    gBgCntRegs[1] = 0x4E06;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0x80;
    trs->bg4CC.graphics.dest = (void *)0x06004000;
    trs->bg4CC.graphics.anim = 0;
    trs->bg4CC.layoutVram = (u16 *)0x06007000;
    trs->bg4CC.unk18 = 0;
    trs->bg4CC.unk1A = 0;
    trs->bg4CC.tilemapId = 0x162;
    trs->bg4CC.unk1E = 0;
    trs->bg4CC.unk20 = 0;
    trs->bg4CC.unk22 = 0;
    trs->bg4CC.unk24 = 0;
    trs->bg4CC.targetTilesX = 0x20;
    trs->bg4CC.targetTilesY = 0x20;
    trs->bg4CC.paletteOffset = 0;
    trs->bg4CC.flags = 1;
    DrawBackground(&trs->bg4CC);
    gBgCntRegs[2] = 0x5609;
    gDispCnt |= 0x400;
    gBgScrollRegs[2][0] = -0xFA;
    gBgScrollRegs[2][1] = 0;
    trs->bg48C.graphics.dest = (void *)0x06008000;
    trs->bg48C.graphics.anim = 0;
    trs->bg48C.layoutVram = (u16 *)0x0600B000;
    trs->bg48C.unk18 = 0;
    trs->bg48C.unk1A = 0;
    trs->bg48C.tilemapId = 0x163;
    trs->bg48C.unk1E = 0;
    trs->bg48C.unk20 = 0;
    trs->bg48C.unk22 = 0;
    trs->bg48C.unk24 = 0;
    trs->bg48C.targetTilesX = 0x20;
    trs->bg48C.targetTilesY = 0x20;
    trs->bg48C.paletteOffset = 0;
    trs->bg48C.flags = 0;
    DrawBackground(&trs->bg48C);
}

void sub_809508C(TimeRecordScreen *trs) {
    u16 temp_r0;
    u16 temp_r5;

    temp_r5 = trs->unk28;
    if (temp_r5 == 0) {
        gBldRegs.bldCnt = 0x3FFF;
        gDispCnt |= 0x6000;
        gWinRegs->unk0 = 0xFF;
        gWinRegs[1] = 0xFF;
        gWinRegs[3] = 0xFF;
        gWinRegs[4] = 0x3130;
        gWinRegs[5] = temp_r5;
        gBldRegs.bldY = 0x10;
        trs->unk26 = 0x1000;
        trs->unk28 = 1;
    }
    gWinRegs[2] = (((s32) trs->unk54 >> 8) * 0x101) + ((s32) trs->unk2C >> 8);
    if (gBldRegs.bldY != 0) {
        gBldRegs.bldY = (u16) ((u16) trs->unk26 >> 8);
        temp_r0 = trs->unk26 + 0xFFFFFE00;
        trs->unk26 = temp_r0;
        if ((u32) (temp_r0 << 0x10) > 0x0FFF0000U) {
            trs->unk26 = 0;
        }
    } else {
        trs->unk28 = gBldRegs.bldY;
        gWinRegs[4] = 0x3110;
        gBldRegs.bldAlpha = 0x1F;
        gBldRegs.bldY = 0x10;
        gCurTask->main = (void (*)()) sub_8095674;
    }
}

void sub_809514C(TimeRecordScreen *trs) {
    s32 temp_r1;
    s32 temp_r1_2;
    u8 temp_r3;

    temp_r3 = trs->unk4;
    trs->unk4 = 0;
    trs->unk24 = 0;
    trs->unk26 = 0;
    trs->unk28 = 0;
    trs->unk1 = 4;
    trs->unk30 = 0x11800;
    temp_r1 = (0x8C - temp_r3) << 8;
    trs->unk34 = temp_r1;
    trs->unk2C = 0x1800;
    temp_r1_2 = temp_r1 + (temp_r3 << 8) + 0xFFFFF400;
    trs->unk54 = temp_r1_2;
    gWinRegs[2] = (temp_r1_2 >> 8) + temp_r1_2 + 0x18;
    gCurTask->main = (void (*)()) Task_8095210;
}

void sub_80951B0(TimeRecordScreen *trs) {
    trs->unk4 = 0x20;
    trs->unk24 = 1;
    trs->unk26 = 0;
    trs->unk28 = 0;
    trs->unk1 = 4;
    trs->unk30 = 0x11800;
    trs->unk34 = 0x6C00;
    trs->unk38 = 0x11800;
    trs->unk3C = 0x6C00;
    trs->unk2C = 0x1800;
    trs->unk54 = 0x8000;
    trs->unk1E = 3;
    gWinRegs[2] = ((0x8000U >> 8) | 0x8000) + 0x18;
    gCurTask->main = (void (*)()) Task_8095210;
}

void Task_8095210(TimeRecordScreen *trs) {
    u16 temp_r5;
    u16 var_r0;

    if (trs->unk28 == 0) {
        gBldRegs.bldCnt = 0x3FFF;
        gDispCnt |= 0x6000;
        gWinRegs->unk0 = 0xFF;
        gWinRegs[1] = 0xFF;
        gWinRegs[3] = 0xFF;
        if ((u32) (u8) (trs->unk3 - 1) <= 1U) {
            var_r0 = 0x3530;
        } else {
            var_r0 = 0x3510;
        }
        gWinRegs[4] = var_r0;
        gWinRegs[5] = 0;
        gBldRegs.bldY = 0x10;
        trs->unk26 = 0x1000;
        trs->unk28 = 1;
    }
    gWinRegs[2] = (((s32) trs->unk54 >> 8) * 0x101) + ((s32) trs->unk2C >> 8);
    sub_80964F8(trs);
    sub_8096590(trs);
    sub_8095D24(trs);
    sub_809660C(trs);
    sub_80960B8(trs);
    sub_8095EF4(trs);
    if ((s16) trs->unk24 == 0) {
        sub_809673C(trs);
    } else {
        sub_8096758(trs);
    }
    temp_r5 = gBldRegs.bldY;
    if (temp_r5 != 0) {
        gBldRegs.bldY = (u16) ((u16) trs->unk26 >> 8);
        trs->unk26 += 0xFFFFFF00;
        return;
    }
    trs->unk26 = gBldRegs.bldY << 8;
    trs->unk30 = -0x3200;
    gDispCnt |= 0x200;
    if ((s16) trs->unk24 != 0) {
        trs->unk34 += 0x2000;
    }
    trs->unk48 = (s32) (trs->unk30 + 0x2A00);
    trs->unk4C = (s32) trs->unk34;
    gBldRegs.bldCnt = 0x82;
    gWinRegs[4] = 0x3532;
    gBldRegs.bldY = 0x10;
    trs->unk28 = temp_r5;
    trs->unk26 = gBldRegs.bldY << 8;
    gCurTask->main = (void (*)()) Task_8095840;
}

void Task_8095370(TimeRecordScreen *trs) {
    Vec2_32 *sp0;
    u8 var_r3;

    if (trs->unk28 != 0) {
        gBldRegs.bldCnt = 0x3FFF;
        gDispCnt |= 0x6000;
        gWinRegs[4] = 0x3510;
        gWinRegs[5] = 0;
        trs->unk26 = 0;
        trs->unk28 = 0;
    }
    if ((s16) trs->unk24 == 0) {
        sub_809673C(trs);
    } else {
        sub_8096758(trs);
    }
    sub_80964F8(trs);
    sub_8096490(trs);
    sub_8096714(trs);
    gWinRegs[2] = (((s32) trs->unk54 >> 8) * 0x101) + ((s32) trs->unk2C >> 8);
    if ((u32) gBldRegs.bldY <= 0xFU) {
        gBldRegs.bldY = (u16) ((u16) trs->unk26 >> 8);
        trs->unk26 += 0x100;
        return;
    }
    trs->unk26 = gBldRegs.bldY << 8;
    var_r3 = 0;
    sp0 = trs->unk78;
    do {
        sp0[var_r3].x = (var_r3 << 0xE) + 0xF000;
        *(&trs->unk78[0].y + (var_r3 * 8)) = (var_r3 << 0xC) + 0x1000;
        trs->unkF[var_r3] = 0;
        var_r3 += 1;
    } while ((u32) var_r3 <= 4U);
    trs->unk1F = 0;
    trs->unk1E = 0;
    gBgScrollRegs[1][1] = 0x80;
    gCurTask->main = (void (*)()) sub_80962B4;
}

void Task_80954A8(TimeRecordScreen *trs) {
    s32 var_r0;
    u8 temp_r0;
    u8 temp_r0_2;
    u8 var_r1;

    if (trs->unk28 != 0) {
        gBldRegs.bldCnt = 0x3FFF;
        gDispCnt |= 0x6000;
        if (trs->unk3 == 0) {
            gWinRegs->unk0 = 0xFF;
            gWinRegs[2] = 0xFF;
            gWinRegs[1] = 0xFF;
            gWinRegs[3] = 0xFF;
            gWinRegs[4] = 0x3130;
            gWinRegs[5] = 0;
        } else {
            gWinRegs[4] = 0x3532;
            gWinRegs[5] = 0;
        }
        trs->unk26 = 0;
        trs->unk28 = 0;
        gBldRegs.bldY = 0;
    }
    temp_r0 = trs->unk3;
    switch (temp_r0) {                              /* switch 1; irregular */
    case 1:                                         /* switch 1 */
    case 5:                                         /* switch 1 */
    case 7:                                         /* switch 1 */
    case 3:                                         /* switch 1 */
        sub_809673C(trs);
        sub_8096814(trs);
        sub_8096774(trs);
block_15:
        sub_809673C(trs);
        sub_8095E8C(trs);
        sub_80960B8(trs);
        sub_80967DC(trs);
        sub_8095EF4(trs);
        break;
    case 2:                                         /* switch 1 */
    case 6:                                         /* switch 1 */
    case 8:                                         /* switch 1 */
    case 4:                                         /* switch 1 */
        sub_8096758(trs);
        goto block_15;
    default:                                        /* switch 1 */
        if ((s16) trs->unk24 == 0) {
            sub_809673C(trs);
        } else {
            sub_8096758(trs);
        }
        break;
    }
    if ((u32) gBldRegs.bldY <= 0xFU) {
        gBldRegs.bldY = (u16) ((u16) trs->unk26 >> 8);
        trs->unk26 += 0x100;
        return;
    }
    temp_r0_2 = trs->unk3;
    switch (temp_r0_2) {                            /* switch 2; irregular */
    case 1:                                         /* switch 2 */
    case 3:                                         /* switch 2 */
        gStageData.gameMode = 3;
        var_r0 = (s8) trs->unk1E + ((s8) trs->unk1F * 0xA) + 3;
block_27:
        WarpToMap((s16) var_r0, 0);
        gStageData.difficulty = 0;
        return;
    case 2:                                         /* switch 2 */
    case 4:                                         /* switch 2 */
        gStageData.gameMode = 4;
        var_r0 = (s32) (((s8) trs->unk1F * 0xA0000) + 0x70000) >> 0x10;
        goto block_27;
    case 5:                                         /* switch 2 */
        var_r1 = 3;
block_32:
        gStageData.gameMode = var_r1;
        gStageData.playerIndex = 0;
        CreateCharacterSelect(0U);
block_37:
        TaskDestroy(gCurTask);
        return;
    case 6:                                         /* switch 2 */
        var_r1 = 4;
        goto block_32;
    case 7:                                         /* switch 2 */
    case 8:                                         /* switch 2 */
        gStageData.playerIndex = 0;
        CreateCharacterSelect(3U);
        goto block_37;
    default:                                        /* switch 2 */
        LaunchOptionsMenu(9);
        goto block_37;
    }
}

void sub_8095674(TimeRecordScreen *trs) {
    u32 var_r5;
    u8 temp_r0;

    var_r5 = 0;
    if ((s16) trs->unk24 == 0) {
        sub_809673C(trs);
    } else {
        sub_8096758(trs);
    }
    temp_r0 = sub_8096398(trs);
    if (temp_r0 == 1) {
        var_r5 = 0x01000000U >> 0x18;
        trs->unk1 = temp_r0;
    }
    if (sub_8096678(trs) == 1) {
        var_r5 = (u32) (u8) (var_r5 + 1);
        trs->unk1 = 2;
    }
    if (var_r5 == 2) {
        trs->unk1 = 3;
        gCurTask->main = (void (*)()) Task_8095764;
    }
}

void Task_80956E4(TimeRecordScreen *trs) {
    u16 temp_r1;
    u32 var_r5;

    temp_r1 = gCurTask->data;
    var_r5 = 0;
    if (temp_r1->unk24 == 0) {
        sub_809673C((TimeRecordScreen *) temp_r1);
    } else {
        sub_8096758((TimeRecordScreen *) temp_r1);
    }
    if (sub_80963E0((TimeRecordScreen *) temp_r1) == 1) {
        var_r5 = 0x01000000U >> 0x18;
    }
    if (sub_80966C4((TimeRecordScreen *) temp_r1) == 1) {
        var_r5 = (u32) (u8) (var_r5 + 1);
    }
    gWinRegs[2] = (((s32) temp_r1->unk54 >> 8) * 0x101) + ((s32) temp_r1->unk2C >> 8);
    if (var_r5 == 2) {
        temp_r1->unk1 = 3;
        gCurTask->main = (void (*)()) Task_80954A8;
    }
}

void Task_8095764(TimeRecordScreen *trs) {
    s8 temp_r2;
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    sub_809673C((TimeRecordScreen *) temp_r1);
    sub_8096758((TimeRecordScreen *) temp_r1);
    sub_8096790((TimeRecordScreen *) temp_r1);
    sub_8096428((TimeRecordScreen *) temp_r1);
    sub_8096554((TimeRecordScreen *) temp_r1);
    if (2 & gPressedKeys) {
        m4aSongNumStart(0x6BU);
        temp_r1->unk1 = 1;
        temp_r1->unk28 = 1;
        gCurTask->main = (void (*)()) Task_80956E4;
        return;
    }
    temp_r2 = 1 & gPressedKeys;
    if (temp_r2 != 0) {
        m4aSongNumStart(0x6AU);
        temp_r1->unk1 = 4;
        gCurTask->main = (void (*)()) Task_809624C;
        return;
    }
    if (0xC0 & gPressedKeys) {
        if ((0x40 & gPressedKeys) && (temp_r1->unk24 != 0)) {
            temp_r1->unk4 = temp_r2;
            temp_r1->unk24 = (s16) temp_r2;
            temp_r1->unk64 = 0x2000;
            m4aSongNumStart(0x6CU);
        }
        if ((0x80 & gPressedKeys) && (temp_r1->unk24 == 0)) {
            temp_r1->unk4 = 0x20;
            temp_r1->unk24 = 1;
            temp_r1->unk64 = 0xFFFFF800;
            m4aSongNumStart(0x6CU);
        }
        temp_r1->unk60 = 0x7800;
    }
}

void Task_8095840(TimeRecordScreen *trs) {
    s32 temp_r1_2;
    u16 temp_r0;
    u16 temp_r1;
    u8 var_r5;

    temp_r1 = gCurTask->data;
    var_r5 = 0;
    sub_80960B8((TimeRecordScreen *) temp_r1);
    sub_80964F8((TimeRecordScreen *) temp_r1);
    if (sub_8095D24((TimeRecordScreen *) temp_r1) == 1) {
        var_r5 = 2;
    }
    if (sub_8096590((TimeRecordScreen *) temp_r1) == 1) {
        var_r5 |= 1;
    }
    if (sub_809660C((TimeRecordScreen *) temp_r1) == 1) {
        var_r5 |= 4;
    }
    sub_80967DC((TimeRecordScreen *) temp_r1);
    if (temp_r1->unk24 == 0) {
        sub_809673C((TimeRecordScreen *) temp_r1);
        sub_8096774((TimeRecordScreen *) temp_r1);
        sub_8096814((TimeRecordScreen *) temp_r1);
    } else {
        sub_809673C((TimeRecordScreen *) temp_r1);
        sub_8096758((TimeRecordScreen *) temp_r1);
    }
    sub_8095EF4((TimeRecordScreen *) temp_r1);
    if ((gBldRegs.bldCnt == 0x82) && (temp_r1->unk28 != 0)) {
        sub_8095DF8((TimeRecordScreen *) temp_r1);
    } else if (2 & var_r5) {
        if (gBldRegs.bldY != 0) {
            temp_r0 = temp_r1->unk26 + 0xFFFFFF00;
            temp_r1->unk26 = temp_r0;
            gBldRegs.bldY = (u16) ((u32) (temp_r0 << 0x10) >> 0x18);
        }
        if ((u32) (u16) (gBldRegs.bldY - 1) > 0xEU) {
            gBldRegs.bldY = 0;
            temp_r1->unk26 = 0U;
            var_r5 = 0xF;
        }
    }
    if (var_r5 == 0xF) {
        gDispCnt |= 0x600;
        gBldRegs.bldCnt = 0x82;
        gWinRegs[4] = 0x3532;
        gBgScrollRegs[2][0] = ((s32) temp_r1->unk78 >> 8) + 0xF;
        temp_r1->unk68 = 0x8400;
        temp_r1_2 = temp_r1->unk34;
        temp_r1->unk6C = temp_r1_2;
        temp_r1->unk70 = 0x7C00;
        temp_r1->unk74 = temp_r1_2;
        gCurTask->main = (void (*)()) Task_809630C;
    }
}

void sub_8095980(TimeRecordScreen *trs, s32 unused) {
    s16 temp_r2;
    s32 var_r6;
    u8 temp_r0;
    u8 temp_r0_2;
    u8 temp_r0_3;
    u8 temp_r0_4;
    u8 temp_r0_5;
    u8 temp_r0_6;
    u8 temp_r0_7;
    u8 temp_r7;
    u8 temp_r8;
    u8 var_r0;
    u8 var_r3;
    u8 var_r3_2;

    var_r6 = 0;
    temp_r8 = trs->unk1E;
    temp_r7 = trs->unk1F;
    if (2 & gPressedKeys) {
        m4aSongNumStart(0x6BU);
        trs->unk28 = 1;
        temp_r0 = trs->unk3;
        switch (temp_r0) {                          /* irregular */
        case 1:
            trs->unk3 = 5;
            goto block_15;
        case 2:
            trs->unk3 = 6;
            goto block_15;
        case 3:
            trs->unk3 = 7;
            goto block_15;
        case 4:
            trs->unk3 = 8;
            goto block_15;
        default:
            if ((s16) trs->unk24 != 0) {
                trs->unk30 = trs->unk38;
                trs->unk34 = trs->unk3C + 0xFFFFE000;
            }
            trs->unk1 = 3;
            gCurTask->main = (void (*)()) Task_8095370;
            return;
        }
    } else {
        if ((trs->unk3 != 0) && (1 & gPressedKeys)) {
            m4aSongNumStart(0x6AU);
            trs->unk28 = 1;
block_15:
            gCurTask->main = (void (*)()) Task_80954A8;
            return;
        }
        if (0xC0 & gRepeatedKeys) {
            if (0x40 & gRepeatedKeys) {
                temp_r0_2 = trs->unk1F + 1;
                trs->unk1F = temp_r0_2;
                if ((s32) (s8) temp_r0_2 >= (s32) (s8) trs->unk14) {
                    trs->unk1F = 0;
                }
            }
            if (0x80 & gRepeatedKeys) {
                temp_r0_3 = trs->unk1F - 1;
                trs->unk1F = temp_r0_3;
                if ((s32) (temp_r0_3 << 0x18) < 0) {
                    trs->unk1F = trs->unk14 - 1;
                }
            }
            if ((s8) trs->unk1F != (s8) temp_r7) {
                var_r6 = 1;
            }
            if (var_r6 != 0) {
                m4aSongNumStart(0x6CU);
                trs->unk28 = 2;
                var_r3 = 0;
                do {
                    trs->unk78[var_r3].x = (var_r3 << 0xE) + 0xF000;
                    *(&trs->unk78[0].y + (var_r3 * 8)) = (var_r3 << 0xC) + 0x1000;
                    trs->unkF[var_r3] = 0;
                    var_r3 += 1;
                } while ((u32) var_r3 <= 4U);
                gCurTask->main = (void (*)()) Task_8095840;
                return;
            }
            goto block_29;
        }
block_29:
        if (!(0x30 & gRepeatedKeys)) {
            return;
        }
        m4aSongNumStart(0x6CU);
        if (0x10 & gRepeatedKeys) {
            temp_r2 = (s16) trs->unk24;
            if (temp_r2 == 0) {
                temp_r0_4 = trs->unk1E + 1;
                trs->unk1E = temp_r0_4;
                if ((s32) (s8) temp_r0_4 > 2) {
                    trs->unk1E = (u8) temp_r2;
                    temp_r0_5 = trs->unk1F + 1;
                    trs->unk1F = temp_r0_5;
                    if ((s32) (s8) temp_r0_5 >= (s32) (s8) trs->unk14) {
                        trs->unk1F = (u8) temp_r2;
                    }
                }
            } else {
                trs->unk1E = 3;
                trs->unk1F += 1;
                if ((s32) (s8) trs->unk1F > (s32) ((s8) trs->unk14 - 1)) {
                    trs->unk1F = 0;
                }
            }
        }
        if (0x20 & gRepeatedKeys) {
            if ((s16) trs->unk24 == 0) {
                temp_r0_6 = trs->unk1E - 1;
                trs->unk1E = temp_r0_6;
                if ((s32) (temp_r0_6 << 0x18) < 0) {
                    var_r0 = 2;
                    goto block_43;
                }
            } else {
                var_r0 = 3;
block_43:
                trs->unk1E = var_r0;
                temp_r0_7 = trs->unk1F - 1;
                trs->unk1F = temp_r0_7;
                if ((s32) (temp_r0_7 << 0x18) < 0) {
                    trs->unk1F = trs->unk14 - 1;
                }
            }
        }
        if (((s8) trs->unk1F != (s8) temp_r7) || ((s8) trs->unk1E != (s8) temp_r8)) {
            var_r6 = 1;
        }
        if (var_r6 != 0) {
            if ((trs->unk1F << 0x18) != (temp_r7 << 0x18)) {
                trs->unk28 = 2;
            }
            var_r3_2 = 0;
            do {
                trs->unk78[var_r3_2].x = (var_r3_2 << 0xE) + 0xF000;
                *(&trs->unk78[0].y + (var_r3_2 * 8)) = (var_r3_2 << 0xC) + 0x1000;
                trs->unkF[var_r3_2] = 0;
                var_r3_2 += 1;
            } while ((u32) var_r3_2 <= 4U);
            gCurTask->main = (void (*)()) Task_8095840;
        }
    }
}

void sub_8095C14(TimeRecordScreen *trs) {
    u16 temp_r0;
    u8 temp_r1;
    u8 var_r0;

    if (4 & gPressedKeys) {
        var_r0 = 0;
        trs->unk1 = 1;
        trs->unk24 = 0;
        trs->unk1E = 0;
        trs->unk22 = 0;
        trs->unk4 = 0;
        temp_r1 = trs->unk2;
        if ((u32) temp_r1 >= 0U) {
            do {
                var_r0 += 1;
            } while ((u32) var_r0 <= (u32) temp_r1);
            trs->unk34 = 0x5000;
            trs->unk30 = -0x3200;
        }
        trs->unk54 = 0;
        trs->unk2C = 0xA000;
        gWinRegs->unk0 = 0xFF;
        gWinRegs[2] = 0xA0;
        gCurTask->main = (void (*)()) sub_8095674;
        return;
    }
    if (0x200 & gPressedKeys) {
        trs->unk20 += 1;
    }
    if (0x100 & gPressedKeys) {
        temp_r0 = trs->unk20 - 1;
        trs->unk20 = temp_r0;
        if (temp_r0 == 1) {
            trs->unk20 = 2;
        }
    }
}

s32 sub_8095CB4(TimeRecordScreen *trs) {
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 temp_r3;
    s32 var_r4;

    var_r4 = 0;
    temp_r3 = (0x8C - trs->unk4) << 8;
    temp_r1 = trs->unk34;
    if (temp_r1 < temp_r3) {
        temp_r1_2 = temp_r1 + ((trs->unk20 - 1) << 8);
        trs->unk34 = temp_r1_2;
        trs->unk30 = 0x7800;
        if (((s16) trs->unk24 != 0) && (temp_r1_2 >= temp_r3)) {
            trs->unk34 = temp_r3;
        }
    } else {
        temp_r1_3 = trs->unk30 + ((trs->unk20 + 2) << 8);
        trs->unk30 = temp_r1_3;
        trs->unk34 = temp_r3;
        if (temp_r1_3 > 0x117FF) {
            trs->unk30 = 0x11800;
            var_r4 = 1;
        }
    }
    trs->unk38 = trs->unk30;
    trs->unk3C = (s32) (trs->unk34 + 0x2000);
    if (var_r4 == 0) {
        return 0;
    }
    return 1;
}

s32 sub_8095D24(TimeRecordScreen *trs) {
    Vec2_32 *temp_r2;
    Vec2_32 *temp_r2_2;
    Vec2_32 *temp_r6;
    Vec2_32 *var_r4;
    s8 *temp_r7;
    u8 var_r3;
    u8 var_r5;
    u8 var_r8;

    var_r8 = 0;
    var_r5 = 0;
    temp_r7 = trs->unkF;
    temp_r6 = trs->unk78;
    do {
        var_r3 = (u8) temp_r7[var_r5];
        *(&trs->unk78[0].y + (var_r5 * 8)) = *((var_r5 * 4) + &gUnknown_080D8B9C) << 8;
        if (var_r3 == 6) {
            temp_r2 = &temp_r6[var_r5];
            if ((s32) temp_r2->x >= 0) {
                temp_r2->x = 0;
                var_r8 += 1;
            } else {
                temp_r2->x = 0;
            }
        } else {
            if ((u32) var_r3 <= 5U) {
                var_r4 = trs->unk78;
                if ((s32) ((s32) temp_r6[var_r5].x >> 8) <= (s32) *((var_r3 * 4) + &gUnknown_080D8BB0)) {
                    goto block_9;
                }
            } else {
                var_r4 = trs->unk78;
                if ((s32) ((s32) temp_r6[var_r5].x >> 8) >= (s32) *((var_r3 * 4) + &gUnknown_080D8BB0)) {
block_9:
                    var_r3 += 1;
                }
            }
            temp_r2_2 = &var_r4[var_r5];
            temp_r2_2->x -= *(var_r3 + &gUnknown_080D8BD8) << 8;
        }
        temp_r7[var_r5] = (s8) var_r3;
        var_r5 += 1;
    } while ((u32) var_r5 <= 4U);
    if ((u32) var_r8 <= 4U) {
        return 0;
    }
    return 1;
}

s32 sub_8095DF8(TimeRecordScreen *trs) {
    u16 temp_r0;
    u16 temp_r0_2;
    u8 temp_r3;

    temp_r3 = trs->unk1F;
    gBgScrollRegs[1][0] = 0;
    if (trs->unk28 == 2) {
        if ((u32) gBldRegs.bldY <= 0xFU) {
            temp_r0 = trs->unk26 + 0x100;
            trs->unk26 = temp_r0;
            gBldRegs.bldY = (u16) ((u32) (temp_r0 << 0x10) >> 0x18);
        }
        if ((u32) (u16) (gBldRegs.bldY - 1) > 0xEU) {
            gBldRegs.bldY = 0x10;
            trs->unk28 = 1;
            trs->unk26 = 0x1000;
            gBgScrollRegs[1][1] = (temp_r3 * 0x10) + ((temp_r3 * 8) + 0x80);
        }
    }
    if (trs->unk28 == 1) {
        if (gBldRegs.bldY != 0) {
            temp_r0_2 = trs->unk26 + 0xFFFFFF00;
            trs->unk26 = temp_r0_2;
            gBldRegs.bldY = (u16) ((u32) (temp_r0_2 << 0x10) >> 0x18);
        }
        if ((u32) (u16) (gBldRegs.bldY - 1) > 0xFU) {
            gBldRegs.bldY = 0;
            trs->unk28 = 0;
        }
    }
    return 0;
}

void sub_8095E8C(TimeRecordScreen *trs) {
    Sprite *temp_r4;

    temp_r4 = &trs->spr144;
    trs->spr144.x = ((s32) trs->unk68 >> 8) - 0x20;
    trs->spr144.y = (s16) ((s32) trs->unk6C >> 8);
    trs->spr144.frameFlags &= 0xFFFFFBFF;
    if (trs->unk1E == 0x603) {
        UpdateSpriteAnimation(temp_r4);
    }
    DisplaySprite(temp_r4);
    trs->spr144.x = ((s32) trs->unk70 >> 8) + 0x69;
    trs->spr144.y = (s16) ((s32) trs->unk74 >> 8);
    trs->spr144.frameFlags |= 0x400;
    UpdateSpriteAnimation(temp_r4);
    DisplaySprite(temp_r4);
}

void sub_8095EF4(TimeRecordScreen *trs) {
    s32 sp10;
    s32 sp14;
    s32 sp18;
    s32 sp1C;
    void *sp20;
    s32 sp24;
    s32 sp2C;                                       /* compiler-managed */
    Sprite *temp_r2;
    Sprite *temp_r2_3;
    Vec2_32 *var_r5;
    s32 *temp_r4;
    s32 *temp_r5;
    s32 var_r7;
    u8 *temp_r2_2;
    u8 var_r3;
    u8 var_r4;
    u8 var_r4_2;
    u8 var_r8;

    sp10 = 0;
    memcpy(&subroutine_arg0, &gUnknown_080D8BE2, 5);
    var_r3 = 0;
    sp14 = trs->unk1E * 0x3C;
    sp18 = trs->unk1F * 0xF0;
loop_1:
    var_r8 = 0;
    if (((u32) trs->recordData[0][0].chars[0][(var_r3 * 2) + sp14 + sp18] > 4U) || (sp10 != 0)) {
        sp10 = 1;
        var_r4 = 0;
        var_r7 = var_r3 * 8;
        var_r5 = trs->unk78;
        sp24 = var_r3 + 1;
        sp2C = &trs->unk78[0].y + var_r7;
        do {
            if ((var_r4 == 1) || (var_r4 == 3)) {
                var_r8 += 1;
            }
            temp_r2 = trs + ((*(&subroutine_arg0 + var_r4) * 0x28) + 0x1BC);
            temp_r2->x = ((s32) var_r5[var_r3].x >> 8) + 0xAA + (var_r4 * 8) + var_r4 + (var_r8 * 8);
            temp_r2->y = (s16) ((s32) *sp2C >> 8);
            DisplaySprite(temp_r2);
            var_r4 += 1;
        } while ((u32) var_r4 <= 4U);
    } else {
        var_r4_2 = 0;
        var_r7 = var_r3 * 8;
        var_r5 = trs->unk78;
        sp20 = &subroutine_arg0 + 8;
        sp24 = var_r3 + 1;
        sp1C = var_r7;
        sp2C = var_r3 * 0xA;
        do {
            temp_r2_2 = sp20 + var_r4_2;
            *temp_r2_2 = (u8) *(trs->recordData[0][0].rankTimes[0] + ((var_r4_2 * 2) + sp2C + sp14 + sp18));
            temp_r2_3 = trs + ((*temp_r2_2 * 0x28) + 0x1BC);
            if ((var_r4_2 == 1) || (var_r4_2 == 3)) {
                var_r8 += 1;
            }
            temp_r2_3->x = ((s32) *(var_r5 + sp1C) >> 8) + 0xAA + (var_r4_2 * 8) + var_r4_2 + (var_r8 * 8);
            temp_r2_3->y = (s16) ((s32) *(&trs->unk78[0].y + var_r7) >> 8);
            DisplaySprite(temp_r2_3);
            var_r4_2 += 1;
        } while ((u32) var_r4_2 <= 4U);
    }
    temp_r5 = var_r5 + var_r7;
    trs->spr43C[0].x = ((s32) *temp_r5 >> 8) + 0xB3;
    temp_r4 = &trs->unk78[0].y + var_r7;
    trs->spr43C[0].y = (s16) ((s32) *temp_r4 >> 8);
    DisplaySprite(trs->spr43C);
    trs->spr43C[1].x = ((s32) *temp_r5 >> 8) + 0xCE;
    trs->spr43C[1].y = (s16) ((s32) *temp_r4 >> 8);
    DisplaySprite(&trs->spr43C[1]);
    var_r3 = (u8) sp24;
    if ((u32) var_r3 <= 4U) {
        goto loop_1;
    }
}

void sub_80960B8(TimeRecordScreen *trs) {
    s32 sp0;
    u32 sp4;
    Sprite *temp_r2;
    Sprite *temp_r2_2;
    s32 *temp_r5;
    s32 temp_r1_2;
    u16 temp_r4;
    u16 temp_r4_2;
    u8 *temp_r7;
    u8 temp_r0;
    u8 temp_r0_2;
    u8 temp_r1;
    u8 temp_sl;
    u8 var_sb;

    temp_r1 = trs->language;
    sp4 = (u32) ((0 - temp_r1) | temp_r1) >> 0x1F;
    sp0 = (s32) trs->unk1E;
    temp_sl = trs->unk1F;
    var_sb = 0;
loop_1:
    temp_r1_2 = (var_sb * 2) + (sp0 * 0x3C) + (temp_sl * 0xF0);
    temp_r7 = &trs->recordData[0][0].chars[0][temp_r1_2];
    temp_r0 = *temp_r7;
    if ((u32) temp_r0 <= 4U) {
        temp_r2 = &trs->spr34C[temp_r0];
        temp_r4 = ((s32) trs->unk78[var_sb].x >> 8) + 0x20;
        temp_r2->x = (s16) temp_r4;
        temp_r5 = &trs->unk78[0].y + (var_sb * 8);
        temp_r2->y = (s16) ((s32) *temp_r5 >> 8);
        temp_r2->frameFlags &= ~0x80;
        DisplaySprite(temp_r2);
        trs->spr414.anim = gUnknown_080D8B44.unk0;
        trs->spr414.variant = gUnknown_080D8B44.unk2;
        temp_r4_2 = temp_r4 + *(((sp4 * 4) | sp4) + *temp_r7 + &gUnknown_080D8BE7);
        trs->spr414.x = (s16) temp_r4_2;
        trs->spr414.y = (s16) ((s32) *temp_r5 >> 8);
        trs->spr414.frameFlags &= ~0x80;
        DisplaySprite(&trs->spr414);
        temp_r2_2 = &trs->spr34C[(&trs->recordData[0][0].chars[0][1])[temp_r1_2]];
        temp_r2_2->x = temp_r4_2 + 0x10;
        temp_r2_2->y = (s16) ((s32) *temp_r5 >> 8);
        temp_r2_2->frameFlags &= ~0x80;
        DisplaySprite(temp_r2_2);
        temp_r0_2 = var_sb + 1;
        var_sb = temp_r0_2;
        if ((u32) temp_r0_2 <= 4U) {
            goto loop_1;
        }
    }
}

void CreateTimeRecordScreen(u8 arg0) {
    u16 temp_r4;

    gDispCnt = 0x1040;
    temp_r4 = TaskCreate((void (*)()) Task_TimeRecordScreenInit, 0xBDCU, 0x101U, 0U, TaskDestructor_TimeRecordScreen)->data;
    temp_r4->unk3 = arg0;
    sub_80947EC(temp_r4);
    sub_8094924(temp_r4);
    if (temp_r4->unk3 != 0) {
        m4aMPlayAllStop();
        m4aSongNumStart(0x47U);
    }
}

void Task_809624C(TimeRecordScreen *trs) {
    if ((s16) trs->unk24 == 0) {
        sub_809673C(trs);
    } else {
        sub_8096758(trs);
    }
    sub_8096714(trs);
    if (sub_8095CB4(trs) == 1) {
        trs->unk28 = 0;
        sub_8096714(trs);
        if ((s16) trs->unk24 != 0) {
            trs->unk1E = 3;
        }
        gCurTask->main = (void (*)()) Task_8095210;
    }
}

void sub_80962B4(TimeRecordScreen *trs) {
    if ((s16) trs->unk24 == 0) {
        sub_809673C(trs);
    } else {
        sub_8096758(trs);
    }
    sub_8096714(trs);
    if (sub_8096490(trs) == 1) {
        sub_8096714(trs);
        gCurTask->main = (void (*)()) Task_8095764;
    }
}

void Task_809630C(TimeRecordScreen *trs) {
    if (((s32) trs->unk30 > 0x7BFF) && (trs->unk28 != 0)) {
        sub_8095DF8(trs);
    }
    if ((s16) trs->unk24 == 0) {
        sub_809673C(trs);
        sub_8096814(trs);
        sub_8096774(trs);
    } else {
        sub_8096758(trs);
    }
    sub_809673C(trs);
    sub_8095E8C(trs);
    sub_8096520(trs);
    sub_8096520(trs);
    sub_80964F8(trs);
    sub_80960B8(trs);
    sub_80967DC(trs);
    sub_8095EF4(trs);
    sub_8095980(trs, saved_reg_r5);
}

u8 sub_8096398(TimeRecordScreen *trs) {
    s32 temp_r0;
    s32 temp_r1;

    if (trs->unk1 != 0) {
        temp_r1 = trs->unk30;
        if (temp_r1 <= 0x77FF) {
            temp_r0 = temp_r1 + ((trs->unk20 + 1) << 8);
            trs->unk30 = temp_r0;
            trs->unk34 = 0x5000;
            if (temp_r0 > 0x77FF) {
                trs->unk30 = 0x7800;
            }
        }
        if (trs->unk30 != 0x7800) {
            goto block_5;
        }
        return 1U;
    }
block_5:
    return 0U;
}

s32 sub_80963E0(TimeRecordScreen *trs) {
    s32 temp_r0;
    s32 temp_r1;
    s32 temp_r1_2;

    if (trs->unk1 != 0) {
        temp_r0 = trs->unk30;
        if (temp_r0 >= 0xFFFFCE00) {
            temp_r1 = temp_r0 - ((trs->unk20 + 1) << 8);
            trs->unk30 = temp_r1;
            trs->unk34 = (0x50 - trs->unk4) << 8;
            if (temp_r1 <= 0xFFFFCE00) {
                trs->unk30 = -0x3200;
            }
        }
        temp_r1_2 = trs->unk30;
        trs->unk38 = temp_r1_2;
        if (temp_r1_2 != -0x3200) {
            goto block_5;
        }
        return 1;
    }
block_5:
    return 0;
}

void sub_8096428(TimeRecordScreen *trs) {
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r3;

    if (trs->unk30 == 0x7800) {
        if ((s16) trs->unk24 != 0) {
            temp_r1 = (0x50 - trs->unk4) << 8;
            temp_r3 = trs->unk34;
            if (temp_r3 > temp_r1) {
                temp_r0 = temp_r3 - ((trs->unk20 - 1) << 8);
                trs->unk34 = temp_r0;
                if (temp_r0 <= temp_r1) {
                    trs->unk34 = temp_r1;
                }
            }
        } else {
            temp_r1_2 = trs->unk34;
            if (temp_r1_2 <= 0x5000) {
                temp_r0_2 = temp_r1_2 + ((trs->unk20 - 1) << 8);
                trs->unk34 = temp_r0_2;
                if (temp_r0_2 > 0x4FFF) {
                    trs->unk34 = 0x5000;
                }
            }
        }
    }
    trs->unk38 = trs->unk30;
    trs->unk3C = (s32) (trs->unk34 + 0x2000);
}

s32 sub_8096490(TimeRecordScreen *trs) {
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 var_r5;
    u8 temp_r4;

    temp_r4 = trs->unk4;
    var_r5 = 0;
    temp_r0 = trs->unk30;
    if (temp_r0 > 0x7800) {
        temp_r1 = temp_r0 - ((trs->unk20 + 7) << 8);
        trs->unk30 = temp_r1;
        trs->unk34 = (0x8C - temp_r4) << 8;
        if (temp_r1 <= 0x7800) {
            trs->unk30 = 0x7800;
        }
    } else {
        temp_r1_2 = trs->unk34 - ((trs->unk20 - 1) << 8);
        trs->unk34 = temp_r1_2;
        trs->unk30 = 0x7800;
        temp_r0_2 = (0x50 - temp_r4) << 8;
        if (temp_r1_2 <= temp_r0_2) {
            trs->unk34 = temp_r0_2;
            var_r5 = 1;
        }
    }
    trs->unk38 = trs->unk30;
    trs->unk3C = (s32) (trs->unk34 + 0x2000);
    if (var_r5 == 0) {
        return 0;
    }
    return 1;
}

void sub_80964F8(TimeRecordScreen *trs) {
    s32 temp_r1;
    s32 temp_r2;

    temp_r2 = trs->unk58 + 0x180;
    trs->unk58 = temp_r2;
    temp_r1 = trs->unk5C + 0xFFFFFE80;
    trs->unk5C = temp_r1;
    gBgScrollRegs[0][0] = (s16) (temp_r2 >> 8);
    gBgScrollRegs[0][1] = (s16) (temp_r1 >> 8);
}

void sub_8096520(TimeRecordScreen *trs) {
    s32 temp_r0;
    s32 temp_r0_2;

    temp_r0 = trs->unk68 - 0x20;
    trs->unk68 = temp_r0;
    if (temp_r0 <= 0x7FFF) {
        trs->unk68 = 0x8400;
    }
    temp_r0_2 = trs->unk70 + 0x20;
    trs->unk70 = temp_r0_2;
    if (temp_r0_2 > 0x8000) {
        trs->unk70 = 0x7C00;
    }
}

void sub_8096554(TimeRecordScreen *trs) {
    s32 temp_r0;
    s32 temp_r0_2;
    s32 var_r0;

    if ((s16) trs->unk24 == 0) {
        temp_r0 = trs->unk64 + 0x80;
        trs->unk64 = temp_r0;
        if (temp_r0 > 0x2500) {
            var_r0 = 0x2000;
            goto block_5;
        }
    } else {
        temp_r0_2 = trs->unk64 - 0x80;
        trs->unk64 = temp_r0_2;
        if (temp_r0_2 < 0xFFFFF300) {
            var_r0 = -0x800;
block_5:
            trs->unk64 = var_r0;
        }
    }
}

s32 sub_8096590(TimeRecordScreen *trs) {
    s32 var_r0;
    u16 var_r3;
    u16 var_r5;
    u32 var_r4;
    void *var_r2;

    var_r4 = 0;
    var_r3 = 0;
    var_r5 = 0;
    gFlags |= 4;
    gHBlankCopyTarget = (void *)0x04000018;
    gHBlankCopySize = 2;
    var_r2 = gBgOffsetsHBlankPrimary;
    do {
        var_r0 = ((s32) trs->unk78[var_r5].x >> 8) - 0xF;
        if (var_r0 > 0xF0) {
            var_r0 = 0xF0;
        }
        *var_r2 = (s16) (0 - var_r0);
        var_r2 += 2;
        if (var_r4 > 3U) {
            var_r3 += 1;
            if (var_r3 == 0x18) {
                var_r5 += 1;
                var_r3 = 0;
            }
        }
        var_r4 = (u32) (u16) (var_r4 + 1);
    } while (var_r4 <= 0x9FU);
    return 0;
}

s32 sub_809660C(TimeRecordScreen *trs) {
    s32 temp_r0;
    s32 temp_r1;
    s32 temp_r2;
    s32 temp_r4;
    s32 var_r1;
    s32 var_r5;

    var_r5 = 0;
    var_r1 = 0x8C;
    if ((s16) trs->unk24 == 0) {
        var_r1 = 0x7C;
    }
    temp_r4 = var_r1 << 8;
    temp_r0 = trs->unk30;
    if (temp_r0 <= temp_r4) {
        temp_r2 = temp_r0 + ((trs->unk20 + 8) << 8);
        trs->unk30 = temp_r2;
        trs->unk48 = (s32) (trs->unk48 + ((trs->unk20 + 8) << 8));
        if (temp_r2 > temp_r4) {
            trs->unk30 = temp_r4;
            trs->unk48 = (s32) (temp_r4 + 0x2A00);
            var_r5 = 1;
        }
    }
    temp_r1 = trs->unk30;
    trs->unk38 = temp_r1 + 0x3C00;
    if (trs->language != 0) {
        trs->unk38 = temp_r1 + 0x4200;
    }
    trs->unk3C = (s32) trs->unk34;
    if (var_r5 == 0) {
        return 0;
    }
    return 1;
}

s32 sub_8096678(TimeRecordScreen *arg0) {
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r2;
    s32 temp_r2_2;

    temp_r2 = arg0->unk2C;
    if (temp_r2 > 0x1800) {
        temp_r0 = temp_r2 - (arg0->unk20 << 8);
        arg0->unk2C = temp_r0;
        if (temp_r0 <= 0x1800) {
            arg0->unk2C = 0x1800;
        }
        temp_r2_2 = arg0->unk2C;
        temp_r0_2 = (arg0->unk34 + (arg0->unk4 << 8)) - (temp_r2_2 >> 1);
        arg0->unk54 = temp_r0_2;
        gWinRegs[2] = ((temp_r0_2 >> 8) * 0x101) + (temp_r2_2 >> 8);
        return 0;
    }
    return 1;
}

s32 sub_80966C4(TimeRecordScreen *trs) {
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r2;
    s32 temp_r2_2;

    temp_r2 = trs->unk2C;
    if (temp_r2 <= 0x9FFF) {
        temp_r0 = temp_r2 + (trs->unk20 << 8);
        trs->unk2C = temp_r0;
        if (temp_r0 > 0x9FFF) {
            trs->unk2C = 0xA000;
        }
        temp_r2_2 = trs->unk2C;
        temp_r0_2 = (trs->unk34 + (trs->unk4 << 8)) - (temp_r2_2 >> 1);
        trs->unk54 = temp_r0_2;
        gWinRegs[2] = ((temp_r0_2 >> 8) * 0x101) + (temp_r2_2 >> 8);
        return 0;
    }
    return 1;
}

void sub_8096714(TimeRecordScreen *trs) {
    s32 temp_r1;

    temp_r1 = trs->unk34 + (trs->unk4 << 8) + 0xFFFFF400;
    trs->unk54 = temp_r1;
    gWinRegs[2] = ((temp_r1 >> 8) * 0x101) + ((s32) trs->unk2C >> 8);
}

void sub_809673C(TimeRecordScreen *trs) {
    trs->sprA4[0].x = (s16) ((s32) trs->unk30 >> 8);
    trs->sprA4[0].y = (s16) ((s32) trs->unk34 >> 8);
    DisplaySprite(trs->sprA4);
}

void sub_8096758(TimeRecordScreen *trs) {
    trs->sprA4[1].x = (s16) ((s32) trs->unk38 >> 8);
    trs->sprA4[1].y = (s16) ((s32) trs->unk3C >> 8);
    DisplaySprite(&trs->sprA4[1]);
}

void sub_8096774(TimeRecordScreen *trs) {
    trs->sprA4[2].x = (s16) ((s32) trs->unk48 >> 8);
    trs->sprA4[2].y = (s16) ((s32) trs->unk4C >> 8);
    DisplaySprite(&trs->sprA4[2]);
}

void sub_8096790(TimeRecordScreen *trs) {
    Sprite *temp_r4;
    s32 temp_r2;
    u32 var_r0;

    temp_r4 = &trs->spr11C;
    trs->spr11C.x = (s16) ((s32) trs->unk60 >> 8);
    temp_r2 = (s32) trs->unk64 >> 8;
    trs->spr11C.y = (s16) temp_r2;
    trs->spr11C.y = temp_r2 + ((s32) trs->unk54 >> 8);
    if ((s16) trs->unk24 == 0) {
        var_r0 = trs->spr11C.frameFlags | 0x800;
    } else {
        var_r0 = trs->spr11C.frameFlags & 0xFFFFF7FF;
    }
    trs->spr11C.frameFlags = var_r0;
    UpdateSpriteAnimation(temp_r4);
    DisplaySprite(temp_r4);
}

void sub_80967DC(TimeRecordScreen *trs) {
    Sprite *temp_r4;

    temp_r4 = &trs->spr16C;
    trs->spr16C.x = ((s32) trs->unk30 >> 8) + 0x19;
    trs->spr16C.y = (s16) ((s32) trs->unk34 >> 8);
    trs->spr16C.variant = trs->unk1F + sAnimsTimeAttackDigits.unk2;
    UpdateSpriteAnimation(temp_r4);
    DisplaySprite(temp_r4);
}

void sub_8096814(TimeRecordScreen *trs) {
    Sprite *temp_r4;

    temp_r4 = trs->spr194;
    trs->spr194[0].x = ((s32) trs->unk48 >> 8) + 0x2D;
    trs->spr194[0].y = (s16) ((s32) trs->unk4C >> 8);
    trs->spr194[0].variant = trs->unk1E + sAnimsTimeAttackDigits.unk2;
    UpdateSpriteAnimation(temp_r4);
    DisplaySprite(temp_r4);
}

void TaskDestructor_TimeRecordScreen(Task *t) {

}
#endif