#include "global.h"
#include "core.h"
#include "game/save.h"
#include "constants/tilemaps.h"

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
    /* 0x014 */ s8 unk14;
    /* 0x015 */ s8 unk15[7];
    /* 0x01C */ u8 unk1C;
    /* 0x01D */ u8 unk1D;
    /* 0x01E */ s8 unk1E;
    /* 0x01F */ s8 unk1F;
    /* 0x020 */ u16 unk20;
    /* 0x022 */ u16 unk22;
    /* 0x024 */ s16 unk24;
    /* 0x026 */ u16 unk26;
    /* 0x028 */ u16 unk28;
    /* 0x02C */ s32 unk2C;
    /* 0x030 */ s32 unk30;
    /* 0x034 */ s32 unk34;
    /* 0x038 */ s32 unk38;
    /* 0x038 */ s32 qUnk3C;
    /* 0x03C */ u8 filler40[0x8];
    /* 0x038 */ s32 qUnk48;
    /* 0x038 */ s32 qUnk4C;
    /* 0x03C */ u8 filler50[0x4];
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

void sub_80947EC(TimeRecordScreen *trs);
void sub_8094924(TimeRecordScreen *trs);
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
bool32 sub_8096398(TimeRecordScreen *trs);
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
extern void LaunchOptionsMenu(u16 arg0);

extern const u8 gUnknown_080CE438[][2];
extern const u8 gUnknown_080CE4B2[][2];
extern const TileInfo2 gUnknown_080D8AAC[4];
extern const TileInfo2 gUnknown_080D8ACC[2];
extern const TileInfo2 sAnimsTimeAttackDigits;
extern const TileInfo2 gUnknown_080D8AE4;
extern const TileInfo2 gUnknown_080D8AEC;
extern const TileInfo2 gUnknown_080D8B44;
extern const TaskMain gUnknown_080D8B4C[5];
extern const TileInfo2 gUnknown_080D8AF4[10];
extern const s32 gUnknown_080D8B9C[5];
extern const s32 gUnknown_080D8BB0[10];
extern const s8 gUnknown_080D8BD8[10];
extern const s8 gUnknown_080D8BE2[5];
extern const u8 gUnknown_080D8BE7[10];

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

void sub_8094A98(TimeRecordScreen *trs)
{
    u32 langOffset = (trs->language) ? 1 : 0;
    Sprite *s;
    u8 i;

    for (i = 0; i <= trs->unk2; i++) {
        s = &trs->sprA4[1];

        if (i == 0) {
            s = &trs->sprA4[0];
        }

        s->tiles = trs->vramA0;
        trs->vramA0 += gUnknown_080D8AAC[i + (langOffset * 2)].numTiles * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D8AAC[i + (langOffset * 2)].anim;
        s->variant = gUnknown_080D8AAC[i + (langOffset * 2)].variant;
        s->prevVariant = -1;
        s->x = I(trs->unk30);
        s->y = I(trs->unk34);
        s->oamFlags = 0xC0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }

    s = &trs->spr11C;
    s->tiles = trs->vramA0;
    trs->vramA0 += gUnknown_080D8AE4.numTiles << 5;
    s->anim = gUnknown_080D8AE4.anim;
    s->variant = gUnknown_080D8AE4.variant;
    s->prevVariant = 0xFF;
    s->x = (s16)((s32)trs->unk60 >> 8);
    s->y = (s16)((s32)trs->unk64 >> 8);
    s->oamFlags = 0x80;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0x80;
    UpdateSpriteAnimation(s);

    s = &trs->spr144;
    s->tiles = trs->vramA0;
    trs->vramA0 += gUnknown_080D8AEC.numTiles << 5;
    s->anim = gUnknown_080D8AEC.anim;
    s->variant = gUnknown_080D8AEC.variant;
    s->prevVariant = -1;
    s->x = (s16)((s32)trs->unk68 >> 8);
    s->y = (s16)((s32)trs->unk6C >> 8);
    s->oamFlags = 0xC0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    s = &trs->spr16C;
    s->tiles = trs->vramA0;
    trs->vramA0 += sAnimsTimeAttackDigits.numTiles * TILE_SIZE_4BPP;
    s->anim = sAnimsTimeAttackDigits.anim;
    s->variant = sAnimsTimeAttackDigits.variant;
    s->prevVariant = -1;
    s->x = I(trs->unk30);
    s->y = I(trs->unk34);
    s->oamFlags = 0xC0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    s = &trs->spr194[0];
    s->tiles = trs->vramA0;
    trs->vramA0 += 0x80;
    s->anim = sAnimsTimeAttackDigits.anim;
    s->variant = sAnimsTimeAttackDigits.variant;
    s->prevVariant = -1;
    s->x = I(trs->unk30);
    s->y = I(trs->unk34);
    s->oamFlags = 0xC0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    if (trs->language == 0) {
        langOffset = 0;
    } else {
        langOffset = 5;
    }

    for (i = 0; i < ARRAY_COUNT(trs->spr34C); i++) {
        s = &trs->spr34C[i];
        s->tiles = trs->vramA0;
        trs->vramA0 += gUnknown_080D8AF4[i + langOffset].numTiles << 5;
        s->anim = gUnknown_080D8AF4[i + langOffset].anim;
        s->variant = gUnknown_080D8AF4[i + langOffset].variant;
        s->prevVariant = -1;
        s->x = I(trs->unk78[i].x);
        s->y = I(trs->unk78[i].y);
        s->oamFlags = 0xC0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }

#ifndef NON_MATCHING
    // NOTE(Jace): No idea why it is needed here to match... but it is needed (for now?).
    s = &trs->sprA4[2];
#endif

    for (i = 1; i < ARRAY_COUNT(trs->spr194); i++) {
        s = &trs->spr194[i];
        s->tiles = trs->vramA0;
        trs->vramA0 += gUnknown_080D8B44.numTiles * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D8B44.anim;
        s->variant = i + gUnknown_080D8B44.variant;
        s->prevVariant = -1;
        s->x = I(trs->unk78[0].x);
        s->y = I(trs->unk78[0].y);
        s->oamFlags = 0xC0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }

    s = &trs->spr414;
    s->tiles = trs->vramA0;
    trs->vramA0 += gUnknown_080D8B44.numTiles * TILE_SIZE_4BPP;
    s->anim = gUnknown_080D8B44.anim;
    s->variant = gUnknown_080D8B44.variant;
    s->prevVariant = -1;
    s->x = I(trs->unk78[0].x);
    s->y = I(trs->unk78[0].y);
    s->oamFlags = 0xC0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    for (i = 0; i < ARRAY_COUNT(trs->spr43C); i++) {
        s = &trs->spr43C[i];
        s->tiles = trs->vramA0;
        trs->vramA0 += gUnknown_080D8B44.numTiles * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D8B44.anim;
        s->variant = 11 + gUnknown_080D8B44.variant + i;
        s->prevVariant = -1;
        s->x = I(trs->unk78[0].x);
        s->y = I(trs->unk78[0].y);
        s->oamFlags = 0xC0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }

    langOffset = (trs->language) ? 1 : 0;
    s = &trs->sprA4[2];
    s->tiles = trs->vramA0;
    trs->vramA0 += gUnknown_080D8ACC[langOffset].numTiles << 5;
    s->anim = gUnknown_080D8ACC[langOffset].anim;
    s->variant = gUnknown_080D8ACC[langOffset].variant;
    s->prevVariant = -1;
    s->x = I(trs->qUnk48);
    s->y = I(trs->qUnk4C);
    s->oamFlags = 0xC0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    s = &trs->spr16C;
    s->tiles = trs->vramA0;
    trs->vramA0 += 0x80;
    s->anim = sAnimsTimeAttackDigits.anim;
    s->variant = sAnimsTimeAttackDigits.variant;
    s->prevVariant |= ~0;
    s->x = ((s32)trs->unk30 >> 8) + 0x2000;
    s->y = I(trs->unk34);
    s->oamFlags = 0xC0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);
}

void sub_8094F3C(TimeRecordScreen *trs)
{
    Background *bg0, *bg1, *bg2;
    gDispCnt |= DISPCNT_BG0_ON;

    gBgCntRegs[0] = BGCNT_SCREENBASE(6) | BGCNT_CHARBASE(0) | BGCNT_PRIORITY(3) | BGCNT_16COLOR | BGCNT_TXT256x256;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;

    bg0 = &trs->bg50C;
    bg0->graphics.dest = (void *)BG_CHAR_ADDR(0);
    bg0->graphics.anim = 0;
    bg0->layoutVram = (u16 *)BG_SCREEN_ADDR(6);
    bg0->unk18 = 0;
    bg0->unk1A = 0;
    bg0->tilemapId = TM_UNKNOWN_353;
    bg0->unk1E = 0;
    bg0->unk20 = 0;
    bg0->unk22 = 0;
    bg0->unk24 = 0;
    bg0->targetTilesX = 32;
    bg0->targetTilesY = 32;
    bg0->paletteOffset = 0;
    bg0->flags = BACKGROUND_FLAGS_BG_ID(2);
    DrawBackground(bg0);

    gBgCntRegs[1] = BGCNT_SCREENBASE(14) | BGCNT_CHARBASE(1) | BGCNT_PRIORITY(2) | BGCNT_16COLOR | BGCNT_TXT512x256;
    // gDispCnt |= DISPCNT_BG1_ON; // NOTE: BG1 is NOT enabled here!!!
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 128;

    bg1 = &trs->bg4CC;
    bg1->graphics.dest = (void *)BG_CHAR_ADDR(1);
    bg1->graphics.anim = 0;
    bg1->layoutVram = (u16 *)BG_SCREEN_ADDR(14);
    bg1->unk18 = 0;
    bg1->unk1A = 0;
    bg1->tilemapId = TM_UNKNOWN_354;
    bg1->unk1E = 0;
    bg1->unk20 = 0;
    bg1->unk22 = 0;
    bg1->unk24 = 0;
    bg1->targetTilesX = 32;
    bg1->targetTilesY = 32;
    bg1->paletteOffset = 0;
    bg1->flags = BACKGROUND_FLAGS_BG_ID(1);
    DrawBackground(bg1);

    gBgCntRegs[2] = BGCNT_SCREENBASE(22) | BGCNT_CHARBASE(2) | BGCNT_PRIORITY(1) | BGCNT_16COLOR | BGCNT_TXT512x256;
    gDispCnt |= DISPCNT_BG2_ON;
    gBgScrollRegs[2][0] = -250;
    gBgScrollRegs[2][1] = 0;

    bg2 = &trs->bg48C;
    bg2->graphics.dest = (void *)BG_CHAR_ADDR(2);
    bg2->graphics.anim = 0;
    bg2->layoutVram = (u16 *)BG_SCREEN_ADDR(22);
    bg2->unk18 = 0;
    bg2->unk1A = 0;
    bg2->tilemapId = TM_UNKNOWN_355;
    bg2->unk1E = 0;
    bg2->unk20 = 0;
    bg2->unk22 = 0;
    bg2->unk24 = 0;
    bg2->targetTilesX = 32;
    bg2->targetTilesY = 32;
    bg2->paletteOffset = 0;
    bg2->flags = BACKGROUND_FLAGS_BG_ID(0);
    DrawBackground(bg2);
}

void sub_809508C(void)
{
    TimeRecordScreen *trs = TASK_DATA(gCurTask);
    u16 temp_r0;

    if (trs->unk28 == 0) {
        gBldRegs.bldCnt = BLDCNT_EFFECT_DARKEN | BLDCNT_TGT1_ALL | BLDCNT_TGT2_ALL;
        gDispCnt |= DISPCNT_WIN0_ON | DISPCNT_WIN1_ON;
        gWinRegs[WINREG_WIN0H] = WIN_RANGE(0, WIN_GET_HIGHER(-1));
        gWinRegs[WINREG_WIN1H] = WIN_RANGE(0, WIN_GET_HIGHER(-1));
        gWinRegs[WINREG_WIN1V] = WIN_RANGE(0, WIN_GET_HIGHER(-1));
        gWinRegs[WINREG_WININ] = 0x3130;
        gWinRegs[WINREG_WINOUT] = 0;
        gBldRegs.bldY = 0x10;
        trs->unk26 = 0x1000;
        trs->unk28 = 1;
    }

    gWinRegs[2] = (((s32)trs->unk54 >> 8) * 0x101) + ((s32)trs->unk2C >> 8);

    if (gBldRegs.bldY != 0) {
        gBldRegs.bldY = (u16)((u16)trs->unk26 >> 8);
        trs->unk26 -= Q(2);
        if (trs->unk26 > 0x0FFF) {
            trs->unk26 = 0;
        }
    } else {
        trs->unk28 = gBldRegs.bldY;
        gWinRegs[4] = 0x3110;
        gBldRegs.bldAlpha = 0x1F;
        gBldRegs.bldY = 0x10;
        gCurTask->main = sub_8095674;
    }
}

void sub_809514C(void)
{
    TimeRecordScreen *trs = TASK_DATA(gCurTask);
    s32 temp_r1;
    u8 prevUnk4 = trs->unk4;
    trs->unk4 = 0;
    trs->unk24 = 0;
    trs->unk26 = 0;
    trs->unk28 = 0;
    trs->unk1 = 4;
    trs->unk30 = Q(280);
    trs->unk34 = Q(140 - prevUnk4);
    trs->unk2C = Q(24);
    temp_r1 = trs->unk34 + Q(prevUnk4) - Q(12);
    trs->unk54 = temp_r1;
    gWinRegs[2] = (temp_r1 >> 8) + temp_r1 + 24;
    gCurTask->main = Task_8095210;
}

void sub_80951B0(void)
{
    TimeRecordScreen *trs = TASK_DATA(gCurTask);
#ifndef NON_MATCHING
    register u32 temp_r1 asm("r1");
#else
    u32 temp_r1;
#endif

    trs->unk4 = 0x20;
    trs->unk24 = 1;
    trs->unk26 = 0;
    trs->unk28 = 0;
    trs->unk1 = 4;
    trs->unk30 = Q(280);
    trs->unk34 = Q(0x6C);
    trs->unk38 = trs->unk30;
    temp_r1 = Q(0x6C);
    trs->qUnk3C = temp_r1;
    trs->unk2C = 0x1800;
    temp_r1 += Q(20);
    trs->unk54 = temp_r1;
    trs->unk1E = 3;
    gWinRegs[2] = (temp_r1 | (temp_r1 >> 8)) + 24;
    gCurTask->main = Task_8095210;
}

void Task_8095210(void)
{
    TimeRecordScreen *trs = TASK_DATA(gCurTask);
    u16 temp_r5;
    u16 var_r0;

    if (trs->unk28 == 0) {
        gBldRegs.bldCnt = 0x3FFF;
        gDispCnt |= 0x6000;
        gWinRegs[0] = 0xFF;
        gWinRegs[1] = 0xFF;
        gWinRegs[3] = 0xFF;
        if ((u32)(u8)(trs->unk3 - 1) < 2) {
            gWinRegs[WINREG_WININ] = 0x3530;
        } else {
            gWinRegs[WINREG_WININ] = 0x3510;
        }
        gWinRegs[WINREG_WINOUT] = 0;
        gBldRegs.bldY = 0x10;
        trs->unk26 = 0x1000;
        trs->unk28 = 1;
    }
    gWinRegs[2] = (((s32)trs->unk54 >> 8) * 0x101) + ((s32)trs->unk2C >> 8);
    sub_80964F8(trs);
    sub_8096590(trs);
    sub_8095D24(trs);
    sub_809660C(trs);
    sub_80960B8(trs);
    sub_8095EF4(trs);
    if ((s16)trs->unk24 == 0) {
        sub_809673C(trs);
    } else {
        sub_8096758(trs);
    }

    if (gBldRegs.bldY != 0) {
        gBldRegs.bldY = (u16)((u16)trs->unk26 >> 8);
        trs->unk26 -= Q(1);
        return;
    }
    trs->unk26 = gBldRegs.bldY << 8;
    trs->unk30 = -0x3200;
    gDispCnt |= 0x200;
    if ((s16)trs->unk24 != 0) {
        trs->unk34 += 0x2000;
    }
    trs->qUnk48 = trs->unk30 + 0x2A00;
    trs->qUnk4C = trs->unk34;
    gBldRegs.bldCnt = 0x82;
    gWinRegs[4] = 0x3532;
    gBldRegs.bldY = 0x10;
    trs->unk28 = 0;
    trs->unk26 = gBldRegs.bldY << 8;
    gCurTask->main = Task_8095840;
}

#if 0
void Task_8095370(void) {
    TimeRecordScreen *trs = TASK_DATA(gCurTask);
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

    gWinRegs[WINREG_WIN0V] = (I(trs->unk54) * WIN_RANGE(1, 1)) + WIN_RANGE(0, I(trs->unk2C));
    if (gBldRegs.bldY < 0x10) {
        gBldRegs.bldY = (u16) ((u16) trs->unk26 >> 8);
        trs->unk26 += 0x100;
        return;
    }
    trs->unk26 = gBldRegs.bldY << 8;
    for(var_r3 = 0; var_r3 < ARRAY_COUNT(trs->unk78); var_r3++)
    {
        trs->unk78[var_r3].x = (var_r3 << 14) + 0xF000;
        trs->unk78[var_r3].y = (var_r3 << 12) + 0x1000;
        trs->unkF[var_r3] = 0;
    }

    
    trs->unk1E = trs->unk1F = 0;
    gBgScrollRegs[1][1] = 128;
    gCurTask->main = sub_80962B4;
}

void Task_80954A8(void) {
    TimeRecordScreen *trs = TASK_DATA(gCurTask);
    s32 var_r0;
    u8 temp_r0;
    u8 temp_r0_2;
    u8 var_r1;

    if (trs->unk28 != 0) {
        gBldRegs.bldCnt = 0x3FFF;
        gDispCnt |= 0x6000;
        if (trs->unk3 == 0) {
            gWinRegs[0] = 0xFF;
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
    switch (temp_r0) {
    case 1:
    case 3:
    case 5:
    case 7:
        sub_809673C(trs);
        sub_8096814(trs);
        sub_8096774(trs);
        sub_809673C(trs);
        sub_8095E8C(trs);
        sub_80960B8(trs);
        sub_80967DC(trs);
        sub_8095EF4(trs);
        break;
    case 2:
    case 6:
    case 8:
    case 4:
        sub_8096758(trs);
        sub_809673C(trs);
        sub_8095E8C(trs);
        sub_80960B8(trs);
        sub_80967DC(trs);
        sub_8095EF4(trs);
        break;
    default:                                        /* switch 1 */
        if (trs->unk24 == 0) {
            sub_809673C(trs);
        } else {
            sub_8096758(trs);
        }
        break;
    }
    if (gBldRegs.bldY < 0x10) {
        gBldRegs.bldY = I(trs->unk26);
        trs->unk26 += 0x100;
        return;
    }

    {
        u32 unk3 = trs->unk3;
        if (unk3 == 1 || unk3 == 3) {
            gStageData.gameMode = GAME_MODE_TIME_ATTACK;
            WarpToMap(LEVEL_INDEX(trs->unk1F, trs->unk1E) + 3, 0);
            gStageData.difficulty = 0;
            return;
        } else if(unk3 == 2 || unk3 == 4) {
            gStageData.gameMode = GAME_MODE_BOSS_TIME_ATTACK;
            WarpToMap(LEVEL_INDEX(trs->unk1F, 7), 0);
            gStageData.difficulty = 0;
            return;
        } else if(unk3 == 5) {
            gStageData.gameMode = GAME_MODE_TIME_ATTACK;
            gStageData.playerIndex = PLAYER_1;
            CreateCharacterSelect(0U);
        } else if(unk3 == 6) {
            gStageData.gameMode = GAME_MODE_BOSS_TIME_ATTACK;
            gStageData.playerIndex = PLAYER_1;
            CreateCharacterSelect(0U);
        } else if(unk3 == 7) {
            gStageData.playerIndex = PLAYER_1;
            CreateCharacterSelect(3);
        } else if(unk3 == 8) {
            gStageData.playerIndex = PLAYER_1;
            CreateCharacterSelect(3);
        } else {
            LaunchOptionsMenu(9);
        }
    }
    
    TaskDestroy(gCurTask);
    return;
}

void sub_8095674(void) {
    TimeRecordScreen *trs = TASK_DATA(gCurTask);
    u8 var_r5;
    u8 temp_r0;

    var_r5 = 0;
    if ((s16) trs->unk24 == 0) {
        sub_809673C(trs);
    } else {
        sub_8096758(trs);
    }

    if (sub_8096398(trs) == 1) {
        var_r5 += 1;
        trs->unk1 = 1;
    }
    if (sub_8096678(trs) == 1) {
        var_r5 = (u32) (u8) (var_r5 + 1);
        trs->unk1 = 2;
    }
    if (var_r5 == 2) {
        trs->unk1 = 3;
        gCurTask->main = Task_8095764;
    }
}

void Task_80956E4(void) {
    TimeRecordScreen *trs = TASK_DATA(gCurTask);
    u8 var_r5 = 0;
    if ((s16) trs->unk24 == 0) {
        sub_809673C(trs);
    } else {
        sub_8096758(trs);
    }
    if (sub_80963E0(trs) == 1) {
        var_r5 += 0x01;
    }
    if (sub_80966C4(trs) == 1) {
        var_r5 += 1;
    }
    gWinRegs[WINREG_WIN0V] = (I(trs->unk54) * WIN_RANGE(1, 1))
        + WIN_RANGE(0, I(trs->unk2C));

    if (var_r5 == 2) {
        trs->unk1 = 3;
        gCurTask->main = Task_80954A8;
    }
}

void Task_8095764(void) {
    TimeRecordScreen *trs = TASK_DATA(gCurTask);
    u8 temp_r2;

    sub_809673C(trs);
    sub_8096758(trs);
    sub_8096790(trs);
    sub_8096428(trs);
    sub_8096554(trs);
    if (2 & gPressedKeys) {
        m4aSongNumStart(0x6BU);
        trs->unk1 = 1;
        trs->unk28 = 1;
        gCurTask->main = Task_80956E4;
        return;
    }
    temp_r2 = 1 & gPressedKeys;
    if (temp_r2 != 0) {
        m4aSongNumStart(0x6AU);
        trs->unk1 = 4;
        gCurTask->main = Task_809624C;
        return;
    }
    if (0xC0 & gPressedKeys) {
        if ((0x40 & gPressedKeys) && ((s16) trs->unk24 != 0)) {
            trs->unk4 = temp_r2;
            trs->unk24 = (u16) temp_r2;
            trs->unk64 = 0x2000;
            m4aSongNumStart(0x6CU);
        }
        if ((0x80 & gPressedKeys) && ((s16) trs->unk24 == 0)) {
            trs->unk4 = 0x20;
            trs->unk24 = 1;
            trs->unk64 = -0x800;
            m4aSongNumStart(0x6CU);
        }
        trs->unk60 = 0x7800;
    }
}

void Task_8095840(void) {
    TimeRecordScreen *trs = TASK_DATA(gCurTask);
    s32 temp_r1;
    u16 temp_r0;
    u8 var_r5;

    var_r5 = 0;
    sub_80960B8(trs);
    sub_80964F8(trs);
    if (sub_8095D24(trs) == 1) {
        var_r5 = 2;
    }
    if (sub_8096590(trs) == 1) {
        var_r5 |= 1;
    }
    if (sub_809660C(trs) == 1) {
        var_r5 |= 4;
    }
    sub_80967DC(trs);
    if ((s16) trs->unk24 == 0) {
        sub_809673C(trs);
        sub_8096774(trs);
        sub_8096814(trs);
    } else {
        sub_809673C(trs);
        sub_8096758(trs);
    }
    sub_8095EF4(trs);
    if ((gBldRegs.bldCnt == 0x82) && (trs->unk28 != 0)) {
        sub_8095DF8(trs);
    } else if (2 & var_r5) {
        u16 blendY;
        if (gBldRegs.bldY != 0) {
            trs->unk26 -= Q(1);
            gBldRegs.bldY = I(trs->unk26);
        }
        blendY = gBldRegs.bldY - 1;
        if (blendY > 0xEU) {
            gBldRegs.bldY = 0;
            trs->unk26 = 0;
            var_r5 = 0xF;
        }
    }

    if (var_r5 == 0xF) {
        gDispCnt |= DISPCNT_BG1_ON;
        gDispCnt |= DISPCNT_BG2_ON;
        gBldRegs.bldCnt = 0x82;
        gWinRegs[4] = 0x3532;
        gBgScrollRegs[2][0] = I(trs->unk78[0].x) + 0xF;
        trs->unk68 = 0x8400;
        trs->unk6C = trs->unk34;
        trs->unk70 = 0x7C00;
        trs->unk74 = trs->unk6C;
        gCurTask->main = Task_809630C;
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
    s8 temp_r7;
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
        if (trs->unk3 == 1) {
            trs->unk3 = 5;
            gCurTask->main = Task_80954A8;
            return;
        } else if(trs->unk3 == 2) {
            trs->unk3 = 6;
            gCurTask->main = Task_80954A8;
            return;
        } else if(trs->unk3 == 3) {
            trs->unk3 = 7;
            gCurTask->main = Task_80954A8;
            return;
        } else if(trs->unk3 == 4) {
            trs->unk3 = 8;
            gCurTask->main = Task_80954A8;
            return;
        } else {
            if ((s16) trs->unk24 != 0) {
                trs->unk30 = trs->unk38;
                trs->unk34 = trs->qUnk3C + 0xFFFFE000;
            }
            trs->unk1 = 3;
            gCurTask->main = Task_8095370;
            return;
        }
    } else {
        if ((trs->unk3 != 0) && (1 & gPressedKeys)) {
            m4aSongNumStart(0x6AU);
            trs->unk28 = 1;
            gCurTask->main = Task_80954A8;
            return;
        }
        if (0xC0 & gRepeatedKeys) {
            if (0x40 & gRepeatedKeys) {
                if (++trs->unk1F >= (s32) trs->unk14) {
                    trs->unk1F = 0;
                }
            }
            if (0x80 & gRepeatedKeys) {
                if (--trs->unk1F < 0) {
                    trs->unk1F = trs->unk14 - 1;
                }
            }
            if (trs->unk1F != temp_r7) {
                var_r6 = 1;
            }
            if (var_r6 != 0) {
                m4aSongNumStart(0x6CU);
                trs->unk28 = 2;
                for(var_r3 = 0; var_r3 < 5; var_r3++)
                {
                    trs->unk78[var_r3].x = (var_r3 << 14) + 0xF000;
                    trs->unk78[var_r3].y = (var_r3 << 12) + (1 << 12);
                    trs->unkF[var_r3] = 0;
                }
                gCurTask->main = Task_8095840;
                return;
            }
        }

        if (!(DPAD_SIDEWAYS & gRepeatedKeys)) {
            return;
        }
        m4aSongNumStart(0x6CU);
        if (0x10 & gRepeatedKeys) {
            if (trs->unk24 == 0) {
                if (++trs->unk1E > 2) {
                    trs->unk1E = 0;

                    if (++trs->unk1F >= (s32) trs->unk14) {
                        trs->unk1F = 0;
                    }
                }
            } else {
                trs->unk1E = 3;
                trs->unk1F += 1;
                if ((s32) trs->unk1F > (s32) (trs->unk14 - 1)) {
                    trs->unk1F = 0;
                }
            }
        }
        if (0x20 & gRepeatedKeys) {
            if ((s16) trs->unk24 == 0) {
                if (--trs->unk1E < 0) {
                    trs->unk1E = 2;
                    if (--trs->unk1F < 0) {
                        trs->unk1F = trs->unk14 - 1;
                    }
                }
            } else {
                trs->unk1E = 3;
                    if (--trs->unk1F < 0) {
                        trs->unk1F = trs->unk14 - 1;
                    }
            }
        }
        if ((trs->unk1F != (s8) temp_r7) || (trs->unk1E != (s8) temp_r8)) {
            var_r6 = 1;
        }
        if (var_r6 != 0) {
            if (trs->unk1F != temp_r7) {
                trs->unk28 = 2;
            }

            for(var_r3 = 0; var_r3 < 5; var_r3++)
            {
                trs->unk78[var_r3].x = (var_r3 << 14) + 0xF000;
                trs->unk78[var_r3].y = (var_r3 << 12) + 0x1000;
                trs->unkF[var_r3] = 0;
            }

            gCurTask->main = Task_8095840;
        }
    }
}

void sub_8095C14(TimeRecordScreen *trs) {
    u8 var_r0;

    if (SELECT_BUTTON & gPressedKeys) {
        trs->unk1 = 1;
        trs->unk24 = 0;
        trs->unk1E = 0;
        trs->unk22 = 0;
        trs->unk4 = 0;

        var_r0 = 0;
        if(var_r0 <= trs->unk2)
        {
            while(var_r0 <= trs->unk2) {
                var_r0++;                
            }

            trs->unk34 = +Q(80);
            trs->unk30 = -Q(50);
        }

        trs->unk54 = 0;
        trs->unk2C = 0xA000;
        gWinRegs[WINREG_WIN0H] = WIN_RANGE(0, WIN_GET_HIGHER(-1));
        gWinRegs[WINREG_WIN0V] = WIN_RANGE(0, DISPLAY_HEIGHT);
        gCurTask->main = sub_8095674;
        return;
    }
    if (L_BUTTON & gPressedKeys) {
        trs->unk20 += 1;
    }
    if (R_BUTTON & gPressedKeys) {
        trs->unk20 -= 1;
        if (trs->unk20 == 1) {
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
    u8 unk4 = trs->unk4;

    var_r4 = 0;
    temp_r3 = Q(0x8C - unk4);
    if (trs->unk34 < temp_r3) {
        temp_r1_2 = trs->unk34 + ((trs->unk20 - 1) << 8);
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
    trs->qUnk3C = trs->unk34 + 0x2000;

    if (var_r4 != 0) {
        return 1;
    }
    return 0;
}

s32 sub_8095D24(TimeRecordScreen *trs) {
    u8 var_r3;
    u8 var_r5;
    u8 someCount;

    someCount = 0;
    {
        for(var_r5 = 0; var_r5 < 5; var_r5++)
        {
            var_r3 = (u8) trs->unkF[var_r5];
            trs->unk78[var_r5].y = gUnknown_080D8B9C[var_r5] << 8;
            if (var_r3 == 6) {
                if (trs->unk78[var_r5].x >= 0) {
                    trs->unk78[var_r5].x = 0;
                    someCount += 1;
                } else {
                    trs->unk78[var_r5].x = 0;
                }
            } else {
                if (var_r3 < 6) {
                    if (I(trs->unk78[var_r5].x) <= gUnknown_080D8BB0[var_r3]) {
                        var_r3 += 1;
                    }
                } else {
                    if (I(trs->unk78[var_r5].x) >= gUnknown_080D8BB0[var_r3]) {
                        var_r3 += 1;
                    }
                }
                trs->unk78[var_r5].x -= gUnknown_080D8BD8[var_r3] << 8;
            }
            trs->unkF[var_r5] = (s8) var_r3;
        }
    }

    if(someCount < 5) {
        return 0;
    } else {
        return 1;        
    }
}

s32 sub_8095DF8(TimeRecordScreen *trs) {
    u16 temp_r0;
    u16 temp_r0_2;
    u8 unk1F = trs->unk1F;

    gBgScrollRegs[1][0] = 0;
    if (trs->unk28 == 2) {
        u16 blendY;
        if (gBldRegs.bldY < 0x10) {
            trs->unk26 += 0x100;
            gBldRegs.bldY = I(trs->unk26);
        }
        blendY = gBldRegs.bldY - 1;
        if (blendY > 0xEU) {
            gBldRegs.bldY = 0x10;
            trs->unk28 = 1;
            trs->unk26 = Q(gBldRegs.bldY);
            gBgScrollRegs[1][1] = 0x80 + (unk1F * 0x10) + ((unk1F * 8));
        }
    }
    if (trs->unk28 == 1) {
        if (gBldRegs.bldY != 0) {
            trs->unk26 -= Q(1);
            gBldRegs.bldY = (trs->unk26 >> 8);
        }
        if ((u32) (u16) (gBldRegs.bldY - 1) > 0xFU) {
            gBldRegs.bldY = 0;
            trs->unk28 = 0;
        }
    }
    return 0;
}

void sub_8095E8C(TimeRecordScreen *trs) {
    Sprite *s = &trs->spr144;

    s->x = I(trs->unk68) - 0x20;
    s->y = I(trs->unk6C);
    s->frameFlags &= ~0x400;

    if (trs->unk1E == 3 && trs->unk1F == 6) {
        UpdateSpriteAnimation(s);
    }

    DisplaySprite(s);
    s->x = I(trs->unk70) + 0x69;
    s->y = I(trs->unk74);
    s->frameFlags |= 0x400;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void sub_8095EF4(TimeRecordScreen *trs) {
    u8 sp00[5];
    u8 sp5[3];
    u8 sp8[5];
    s32 sp10;
    s32 sp14;
    s32 sp18;
    s32 sp1C;
    void *sp20;
    s32 sp24;
    s32 sp2C;
    Sprite *s;
    Vec2_32 *var_r5;
    s32 *temp_r4;
    s32 *temp_r5;
    s32 var_r7;
    u8 *temp_r2_2;
    u8 var_r3;
    u8 var_r4;
    u8 var_r8;

    sp10 = 0;
    memcpy(sp00, &gUnknown_080D8BE2, 5);
    var_r3 = 0;
    sp14 = (trs->unk1E * 60);
    sp18 = trs->unk1F * 0xF0;
loop_1:
    var_r8 = 0;
    if (((u32) trs->recordData[trs->unk1F][trs->unk1E].chars[0][var_r3] > 4U) || (sp10 != 0)) {
        sp10 = 1;
        for(var_r4 = 0; var_r4 < 5; var_r4++)
        {
            if ((var_r4 == 1) || (var_r4 == 3)) {
                var_r8 += 1;
            }
            s = &trs->spr194[1 + sp00[var_r4]];
            s->x = ((s32) trs->unk78[var_r3].x >> 8) + 0xAA + (var_r4 * 8) + var_r4 + (var_r8 * 8);
            s->y = (s16) (trs->unk78[var_r3].y >> 8);
            DisplaySprite(s);
        }
    } else {
        for(var_r4 = 0; var_r4 < 5; var_r4++)
        {
            s = &trs->spr194[1 + trs->recordData[trs->unk1F][trs->unk1E].rankTimes[var_r3][var_r4]];
            if ((var_r4 == 1) || (var_r4 == 3)) {
                var_r8 += 1;
            }
            s->x = I(trs->unk78[var_r3].x) + 170 + (var_r4 * 8) + var_r4 + (var_r8 * 8);
            s->y = I(trs->unk78[var_r3].y);
            DisplaySprite(s);
        }
    }

    s = &trs->spr43C[0];
    s->x = I(trs->unk78[var_r3].x) + 0xB3;
    s->y = I(trs->unk78[var_r3].y);
    DisplaySprite(s);
    s = &trs->spr43C[1];
    s->x = I(trs->unk78[var_r3].x) + 0xCE;
    s->y = I(trs->unk78[var_r3].y);
    DisplaySprite(s);

    var_r3 += 1;
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
    u8 temp_sl;
    u8 var_sb;
    u8 language = trs->language;
    Sprite *s;

    sp4 = (language == 0) ? 0 : 1;
    for(var_sb = 0; var_sb < 5; var_sb++)
    {
        temp_r7 = &trs->recordData[trs->unk1F][trs->unk1E].chars[var_sb][0];
        temp_r0 = trs->recordData[trs->unk1F][trs->unk1E].chars[var_sb][0];
        if (temp_r0 < NUM_CHARACTERS) {
            temp_r2 = &trs->spr34C[temp_r0];
            temp_r4 = ((s32) trs->unk78[var_sb].x >> 8) + 0x20;
            temp_r2->x = (s16) temp_r4;
            temp_r5 = &trs->unk78[0].y + (var_sb * 8);
            temp_r2->y = (s16) ((s32) *temp_r5 >> 8);
            temp_r2->frameFlags &= ~0x80;
            DisplaySprite(temp_r2);

            temp_r2 = &trs->spr414;
            temp_r2->anim = gUnknown_080D8B44.anim;
            temp_r2->variant = gUnknown_080D8B44.variant;
            temp_r4_2 = temp_r4 + gUnknown_080D8BE7[((sp4 * 4) | sp4) + temp_r7[0]];
            temp_r2->x = (s16) temp_r4_2;
            temp_r2->y = (s16) ((s32) *temp_r5 >> 8);
            temp_r2->frameFlags &= ~0x80;
            DisplaySprite(temp_r2);

            temp_r2 = &trs->spr34C[trs->recordData[trs->unk1F][trs->unk1E].chars[var_sb][1]];
            temp_r2->x = temp_r4_2 + 0x10;
            temp_r2->y = (s16) ((s32) *temp_r5 >> 8);
            temp_r2->frameFlags &= ~0x80;
            DisplaySprite(temp_r2);
        } else {
            break;
        }
    }
}

void CreateTimeRecordScreen(u8 arg0) {
    TimeRecordScreen *trs;

    gDispCnt = DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;

    trs = TASK_DATA(TaskCreate(Task_TimeRecordScreenInit, sizeof(TimeRecordScreen), 0x101U, 0U, TaskDestructor_TimeRecordScreen));
    trs->unk3 = arg0;

    sub_80947EC(trs);
    sub_8094924(trs);

    if (trs->unk3 != 0) {
        m4aMPlayAllStop();
        m4aSongNumStart(71);
    }
}

void Task_809624C(void) {
    TimeRecordScreen *trs = TASK_DATA(gCurTask);

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
        gCurTask->main = Task_8095210;
    }
}

void sub_80962B4(void) {
    TimeRecordScreen *trs = TASK_DATA(gCurTask);

    if ((s16) trs->unk24 == 0) {
        sub_809673C(trs);
    } else {
        sub_8096758(trs);
    }
    sub_8096714(trs);
    if (sub_8096490(trs) == 1) {
        sub_8096714(trs);
        gCurTask->main = Task_8095764;
    }
}

void Task_809630C(void) {
#ifndef BUG_FIX
    s32 undeclared;
#else
    s32 undeclared = 0;
#endif
    TimeRecordScreen *trs = TASK_DATA(gCurTask);

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
    sub_8095980(trs, undeclared);
}

bool32 sub_8096398(TimeRecordScreen *trs) {
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
    } else {
        return 0;
    }
    
    if (trs->unk38 == Q(120)) {
        return 1;
    } else {
        return 0;
    }
}

s32 sub_80963E0(TimeRecordScreen *trs) {
    s32 temp_r1;
    s32 temp_r1_2;
    u8 unk4 = trs->unk4;

    if (trs->unk1 != 0) {
        if (trs->unk30 >= -Q(50)) {
            trs->unk30 -= ((trs->unk20 + 1) << 8);
            trs->unk34 = (80 - unk4) << 8;
            if (trs->unk30 <= -Q(50)) {
                trs->unk30 = -Q(50);
            }
        }

        trs->unk38 = trs->unk30;
    } else {
        return 0;        
    }

    if (trs->unk38 == -Q(50)) {
        return 1;
    } else {
        return 0;
    }
}

void sub_8096428(TimeRecordScreen *trs) {
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r3;
    u8 unk4 = trs->unk4;

    if (trs->unk30 == 0x7800) {
        if ((s16) trs->unk24 != 0) {
            temp_r1 = (0x50 - unk4) << 8;
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
    trs->qUnk3C = trs->unk34 + 0x2000;
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
    trs->qUnk3C = trs->unk34 + 0x2000;
    if (var_r5 != 0) {
        return 1;
    }
    return 0;
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
    if (trs->unk24 == 0) {
        trs->unk64 += 0x80;
        if (trs->unk64 > 0x2500) {
            trs->unk64 = 0x2000;
        }
    } else {
        trs->unk64 -= 0x80;;
        if (trs->unk64 < -0xD00) {
            trs->unk64 = -0x800;
        }
    }
}

s32 sub_8096590(TimeRecordScreen *trs) {
    s32 var_r0;
    u16 var_r3;
    u16 var_r5;
    u16 line;
    winreg_t *var_r2;

    line = 0;
    var_r3 = 0;
    var_r5 = 0;
    gFlags |= 4;
    gHBlankCopyTarget = (void *)&REG_BG2HOFS;
    gHBlankCopySize = 2;
    var_r2 = gBgOffsetsHBlankPrimary;
    do {
        var_r0 = I(trs->unk78[var_r5].x) - 15;
        if (var_r0 > 0xF0) {
            var_r0 = 0xF0; // Probably DISPLAY_WIDTH!
        }
        *var_r2 = -var_r0;
        var_r2 += 1;
        if (line > 3U) {
            var_r3 += 1;
            if (var_r3 == 0x18) {
                var_r5 += 1;
                var_r3 = 0;
            }
        }
        line += 1;
    } while (line < DISPLAY_HEIGHT);
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
    if (trs->unk24 == 0) {
        var_r1 = 0x7C;
    } else {
        var_r1 = 0x8C;        
    }

    temp_r4 = Q(var_r1);
    temp_r0 = trs->unk30;
    if (temp_r0 <= temp_r4) {
        temp_r2 = temp_r0 + ((trs->unk20 + 8) << 8);
        trs->unk30 = temp_r2;
        trs->qUnk48 += (trs->unk20 + 8) << 8;
        if (temp_r2 > temp_r4) {
            trs->unk30 = temp_r4;
            trs->qUnk48 = temp_r4 + 0x2A00;
            var_r5 = 1;
        }
    }
    temp_r1 = trs->unk30;
    trs->unk38 = temp_r1 + 0x3C00;
    if (trs->language != 0) {
        trs->unk38 = temp_r1 + 0x4200;
    }
    trs->qUnk3C = trs->unk34;
    if (var_r5 != 0) {
        return 1;
    }
    return 0;
}

s32 sub_8096678(TimeRecordScreen *trs) {
    u8 unk4 = trs->unk4;
    s32 temp_r0;
    s32 temp_r0_2;

    if (trs->unk2C > 0x1800) {
        trs->unk2C = trs->unk2C - (trs->unk20 << 8);
        if (trs->unk2C <= 0x1800) {
            trs->unk2C = 0x1800;
        }

        trs->unk54 = (trs->unk34 + Q(unk4)) - (trs->unk2C >> 1);
        gWinRegs[2] = ((trs->unk54 >> 8) * 0x101) + (trs->unk2C >> 8);
        return 0;
    }
    return 1;
}

s32 sub_80966C4(TimeRecordScreen *trs) {
    s32 temp_r0;
    s32 temp_r0_2;
    u8 unk4 = trs->unk4;

    if (trs->unk2C < 0xA000) {
        trs->unk2C += Q(trs->unk20);
        if (trs->unk2C >= 0xA000) {
            trs->unk2C = 0xA000;
        }

        trs->unk54 = (trs->unk34 + (unk4 << 8)) - (trs->unk2C >> 1);
        gWinRegs[2] = ((trs->unk54 >> 8) * 0x101) + (trs->unk2C >> 8);
        return 0;
    }
    return 1;
}

void sub_8096714(TimeRecordScreen *trs) {
    trs->unk54 = trs->unk34 + (trs->unk4 << 8) + 0xFFFFF400;
    gWinRegs[2] = ((trs->unk54 >> 8) * 0x101) + ((s32) trs->unk2C >> 8);
}

void sub_809673C(TimeRecordScreen *trs) {
    Sprite *s = &trs->sprA4[0];
    s->x = I(trs->unk30);
    s->y = I(trs->unk34);
    DisplaySprite(s);
}

void sub_8096758(TimeRecordScreen *trs) {
    Sprite *s = &trs->sprA4[1];
    s->x = I(trs->unk38);
    s->y = I(trs->qUnk3C);
    DisplaySprite(&trs->sprA4[1]);
}

void sub_8096774(TimeRecordScreen *trs) {
    Sprite *s = &trs->sprA4[2];
    s->x = I(trs->qUnk48);
    s->y = I(trs->qUnk4C);
    DisplaySprite(&trs->sprA4[2]);
}

void sub_8096790(TimeRecordScreen *trs) {
    Sprite *s = &trs->spr11C;
    s->x = (s16) ((s32) trs->unk60 >> 8);
    s->y = I(trs->unk64);
    s->y += I(trs->unk54);

    if (trs->unk24 == 0) {
        s->frameFlags |= 0x800;
    } else {
        s->frameFlags &= ~0x800;
    }

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void sub_80967DC(TimeRecordScreen *trs) {
    Sprite *s = &trs->spr16C;
    s->x = I(trs->unk30) + 25;
    s->y = I(trs->unk34);
    s->variant = sAnimsTimeAttackDigits.variant + trs->unk1F;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void sub_8096814(TimeRecordScreen *trs) {
    u8 unk1E = trs->unk1E;
    Sprite *s = trs->spr194;
    s->x = I(trs->qUnk48) + 0x2D;
    s->y = I(trs->qUnk4C);
    s->variant = sAnimsTimeAttackDigits.variant + unk1E;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void TaskDestructor_TimeRecordScreen(Task *t) {

}
#endif