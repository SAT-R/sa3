#if 0
s32 CreateSomeTask_809BF3C(s32, s32, s32, s32, s32); /* extern */
? sub_802613C();                                    /* extern */
? sub_809BFE8(s32);                                 /* extern */
void Task_809FEB0(? arg3);                          /* static */
void Task_80A13B4(? arg3);                          /* static */
void Task_80A13F4(? arg3);                          /* static */
void Task_80A1430(? arg3);                          /* static */
void Task_80A14AC(? arg3);                          /* static */
void Task_CallDestroy_80A1498(? arg3);              /* static */
void sub_80A0080(? arg3);                           /* static */
void sub_80A010C(? arg3);                           /* static */
void sub_80A021C(? arg3);                           /* static */
void sub_80A0344(? arg3);                           /* static */
void sub_80A03F8(? arg3);                           /* static */
void sub_80A04D8(? arg3);                           /* static */
void sub_80A0644(? arg3);                           /* static */
void sub_80A06E8(? arg3);                           /* static */
void sub_80A07E0(? arg3);                           /* static */
void sub_80A087C(? arg3);                           /* static */
void sub_80A094C(? arg3);                           /* static */
void sub_80A0A08(u16 arg0);                         /* static */
void sub_80A0ADC(? arg3);                           /* static */
void sub_80A0B9C(? arg3);                           /* static */
void sub_80A0C5C(? arg3);                           /* static */
void sub_80A0D20(? arg3);                           /* static */
void sub_80A0DC8(u16 arg0);                         /* static */
void sub_80A0EA8(u16 arg0);                         /* static */
void sub_80A1030(u16 arg0);                         /* static */
void sub_80A10B0(u16 arg0);                         /* static */
void sub_80A1110(u16 arg0);                         /* static */
void sub_80A11B8(u16 arg0);                         /* static */
void sub_80A124C(u16 arg0);                         /* static */
void sub_80A137C(u16 arg0);                         /* static */
s32 sub_80A14E4(u16 arg0);                          /* static */
s32 sub_80A1540(u16 arg0);                          /* static */
s32 sub_80A1598(u16 arg0);                          /* static */
s32 sub_80A15E8(u16 arg0);                          /* static */
s32 sub_80A163C(u16 arg0);                          /* static */
s32 sub_80A1668(u16 arg0);                          /* static */
s32 sub_80A1694(u16 arg0);                          /* static */
s32 sub_80A16EC(u16 arg0);                          /* static */
s32 sub_80A1740(u16 arg0, s32 arg1);                /* static */
s32 sub_80A1768(u16 arg0);                          /* static */
s32 sub_80A1798(u16 arg0);                          /* static */
s32 sub_80A17FC(u16 arg0);                          /* static */
s32 sub_80A182C(u16 arg0);                          /* static */
s32 sub_80A185C(u16 arg0);                          /* static */
s8 sub_80A1888(u16 arg0);                           /* static */
s32 sub_80A18B8(u16 arg0);                          /* static */
s32 sub_80A18E0(u16 arg0);                          /* static */
s32 sub_80A1908(u16 arg0);                          /* static */
s32 sub_80A1938(u16 arg0);                          /* static */
void sub_80A19C0(u16 arg0);                         /* static */
void sub_80A1A04(u16 arg0);                         /* static */
void sub_80A1A28(u16 arg0);                         /* static */
extern ? gAnnouncerSelect1st;
extern ? gAnnouncerSelect2nd;
extern ? gCharacterSelectOrderLUT;
extern ? gTileInfo_CharSelect3_NameTagNames;
extern ? gTileInfo_CharSelect3_TeamDescriptions;
extern ? gUnknown_030010AC;
extern ? gUnknown_080D8EF8;
extern ? gUnknown_080D8F00;
extern ? gUnknown_080D8F08;
extern ? gUnknown_080D8F10;
extern ? gUnknown_080D8F1D;
extern ? gUnknown_080D8F95;
extern ? gUnknown_08E2EE50;
#endif

#include "global.h"
#include "core.h"
#include "lib/m4a/m4a.h"
#include "game/sa3/character_select.h"
#include "game/save.h" // LOADED_SAVE
#include "constants/songs.h"

void Task_809FCFC(void);
void TaskDestructor_80A13B0(Task *t);
static void CharSelectMP_InitSprites(CharacterSelectMP *cs);
void CharSelectMP_InitBackgrounds(CharacterSelectMP *cs);

// TODO: Fake-match!
void CreateCharacterSelectMultiplayer(SDC_EC *strcEC)
{
    CharacterSelectMP *cs;
    u8 i;

    gDispCnt = DISPCNT_BG0_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP | DISPCNT_MODE_1;
    cs = TASK_DATA(TaskCreate(Task_809FCFC, sizeof(CharacterSelectMP), 0x100U, 0U, TaskDestructor_80A13B0));
    cs->language = LOADED_SAVE->language;

    for (i = 0; i < 4; i++) {
        cs->unk1C[i] = &strcEC->unkE[i];
    }

    cs->unk30 = &strcEC->unk12;
    cs->unk2C = &strcEC->unk14;
    cs->unk18 = &strcEC->unk17;
    cs->unk3 = strcEC->unk17;
    cs->unk14 = &strcEC->unk16;
    strcEC->unk16 = 1;
    cs->listIndex[CS_CHARID_PLAYER] = strcEC->unk12;
    {
#ifndef NON_MATCHING
        register s32 r0 asm("r0");
        asm("mov %0, #1" : "=r"(r0));
#else
        s32 r0 = 1;
#endif
        cs->unk6 = r0;
    }
    cs->unk8 = 0;
    cs->unk4 = 0;
    cs->unkA = 0;
    cs->qBgCharNameScale = Q(16);
    cs->qUnk4C = Q(DISPLAY_CENTER_X);
    cs->qUnk50 = Q(DISPLAY_CENTER_Y);
    cs->qUnk54 = Q(DISPLAY_CENTER_X);
    cs->qUnk58 = Q(DISPLAY_CENTER_Y);
    cs->qUnk34 = Q(DISPLAY_CENTER_X);
    cs->qUnk38 = Q(17);
    cs->qUnk3C = Q(DISPLAY_CENTER_X);
    cs->qUnk40 = Q(17);
    cs->qUnk44 = Q(0);
    cs->qUnk48 = Q(0);
    cs->qUnk7C = Q(0);
    cs->qUnk80 = Q(0);
    cs->qUnk6C = Q(DISPLAY_CENTER_X);
    cs->qUnk70 = Q(DISPLAY_CENTER_Y + 5);
    cs->qUnk74 = Q(201);
    cs->qUnk78 = Q(22);
    cs->qNameTagPos[CS_CHARID_PLAYER].x = Q(DISPLAY_CENTER_X);
    cs->qNameTagPos[CS_CHARID_PLAYER].y = Q(DISPLAY_HEIGHT - 15);
    cs->qNameTagPos[CS_CHARID_PARTNER].x = Q(DISPLAY_WIDTH + 60);
    cs->qNameTagPos[CS_CHARID_PARTNER].y = Q(DISPLAY_HEIGHT - 15);
    cs->tilesCharacters[CS_CHARID_ACTIVE] = OBJ_VRAM0;
    CharSelectMP_InitSprites(cs);
    CharSelectMP_InitBackgrounds(cs);
    m4aMPlayAllStop();
    m4aSongNumStart(MUS_CHARACTER_SELECT);
}

static void CharSelectMP_InitSprites(CharacterSelectMP *cs)
{
    u8 *vram = OBJ_VRAM0;
    u16 language;
    s32 index2;

    {
        Sprite *s = &cs->sprDC;
        s->tiles = vram;
        vram += (45 * TILE_SIZE_4BPP);
        s->anim = gTileInfo_CharSelect3_HeaderBackdrop->anim;
        s->variant = gTileInfo_CharSelect3_HeaderBackdrop->variant;
        s->prevVariant = 0xFF;
        s->x = I(cs->qUnk3C);
        s->y = I(cs->qUnk40);
        s->oamFlags = 0x40;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }
    {
        Sprite *s = &cs->sprB4;
        s->tiles = vram;
        vram += 0x640;
        s->anim = gTileInfo_CharSelect3_TeamDescriptions[cs->language * 8].anim;
        s->variant = gTileInfo_CharSelect3_TeamDescriptions[cs->language * 8].variant;
        s->prevVariant = -1;
        s->x = I(cs->qUnk34);
        s->y = I(cs->qUnk38);
        s->oamFlags = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }
    {
        Sprite *s = &cs->spr1A4;
        s->tiles = vram;
        vram += 0x80;
        s->anim = 0x574;
        s->variant = 5;
        s->prevVariant = -1;
        s->x = DISPLAY_CENTER_X;
        s->y = I(cs->qNameTagPos[CS_CHARID_PLAYER].y);
        s->oamFlags = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }
    {
        Sprite *s = &cs->spr8C;
        s->tiles = vram;
        vram += 0x200;
        s->anim = gUnknown_080D8F08[0].anim;
        s->variant = gUnknown_080D8F08[0].variant;
        s->prevVariant = -1;
        s->x = (s16)((s32)cs->qUnk44 >> 8);
        s->y = (s16)((s32)cs->qUnk48 >> 8);
        s->oamFlags = -0x40;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }
    {
        Sprite *s = &cs->spr104;
        language = (cs->language == 0) ? 0 : 1;
        index2 = (gCharSelect_DisplayOrder[cs->listIndex[CS_CHARID_PLAYER]]);
        s->tiles = vram;
        vram += 14 * TILE_SIZE_4BPP;
        s->anim = gTileInfo_CharSelect3_NameTagNames[index2 += language * sizeof(TileInfo2)].anim;
        s->variant = gTileInfo_CharSelect3_NameTagNames[index2].variant;
        s->prevVariant = -1;
        s->x = I(cs->qNameTagPos[CS_CHARID_PLAYER].x);
        s->y = I(cs->qNameTagPos[CS_CHARID_PLAYER].y);
        s->oamFlags = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }
    {
        Sprite *s = &cs->spr154;
        language = (cs->language == 0) ? 0 : 1;
        index2 = (gCharSelect_DisplayOrder[cs->listIndex[CS_CHARID_PLAYER]]);
        s->tiles = vram;
        vram += 0x1C0;
        s->anim = gTileInfo_CharSelect3_NameTagNames[index2 += language * sizeof(TileInfo2)].anim;
        s->variant = gTileInfo_CharSelect3_NameTagNames[index2].variant;
        s->prevVariant = -1;
        s->x = I(cs->qNameTagPos[CS_CHARID_PARTNER].x);
        s->y = I(cs->qNameTagPos[CS_CHARID_PARTNER].y);
        s->oamFlags = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }
    {
        Sprite *s = &cs->spr12C;
        s->tiles = vram;
        vram += 0x300;
        s->anim = gUnknown_080D8EF8[0].anim;
        s->variant = gUnknown_080D8EF8[0].variant;
        s->prevVariant = -1;
        s->x = I(cs->qNameTagPos[CS_CHARID_PLAYER].x);
        s->y = I(cs->qNameTagPos[CS_CHARID_PLAYER].y);
        s->oamFlags = 0x40;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }
    {
        Sprite *s = &cs->spr1CC;
        s->tiles = vram;
        vram += 0x200;
        s->anim = gUnknown_080D8F10[0].anim;
        s->variant = gUnknown_080D8F10[0].variant;
        s->prevVariant = -1;
        s->x = (s16)((s32)cs->qUnk4C >> 8);
        s->y = (s16)((s32)cs->qUnk50 >> 8);
        s->oamFlags = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }

    cs->tilesCharacters[0] = vram;
}

#if 0
void CharSelectMP_InitBackgrounds(void *arg0) {
    Background *temp_r0;
    Background *temp_r0_2;
    Background *temp_r0_3;
    
    // Display Mode 1:
    // BG0 : Text
    // BG1 : Text
    // BG2 : Affine
    // BG3 : Off

    gBgCntRegs->unk0 = 0x4E07;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    temp_r0 = arg0 + 0x1F4;
    temp_r0->graphics.dest = (void *)0x06004000;
    temp_r0->graphics.anim = 0;
    temp_r0->layoutVram = (u16 *)0x06007000;
    temp_r0->unk18 = 0;
    temp_r0->unk1A = 0;
    temp_r0->tilemapId = gCharSelect3_Tilemaps->unk0;
    temp_r0->unk1E = 0;
    temp_r0->unk20 = 0;
    temp_r0->unk22 = 0;
    temp_r0->unk24 = 0;
    temp_r0->targetTilesX = 0x2D;
    temp_r0->targetTilesY = 0x14;
    arg0->unk21E = 0;
    temp_r0->flags = 0;
    DrawBackground(temp_r0);
    gBgCntRegs[1] = 0x30E;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    temp_r0_2 = arg0 + 0x234;
    temp_r0_2->graphics.dest = (void *)0x0600C000;
    temp_r0_2->graphics.anim = 0;
    temp_r0_2->layoutVram = (u16 *)0x06001800;
    temp_r0_2->unk18 = 0;
    temp_r0_2->unk1A = 0;
    temp_r0_2->tilemapId = gCharSelect3_Tilemaps[0xB];
    temp_r0_2->unk1E = 0;
    temp_r0_2->unk20 = 0;
    temp_r0_2->unk22 = 0;
    temp_r0_2->unk24 = 0;
    temp_r0_2->targetTilesX = 0x10;
    temp_r0_2->targetTilesY = 0x10;
    arg0->unk25E = 0;
    temp_r0_2->flags = 1;
    DrawBackground(temp_r0_2);
    gBgCntRegs[2] = 0x1B89;
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;
    temp_r0_3 = arg0 + 0x274;
    temp_r0_3->graphics.dest = (void *)0x06008000;
    temp_r0_3->graphics.anim = 0;
    temp_r0_3->layoutVram = (u16 *)0x0600D800;
    temp_r0_3->unk18 = 0;
    temp_r0_3->unk1A = 0;
    temp_r0_3->tilemapId = gCharSelect3_Tilemaps[arg0->unk1 + 5];
    temp_r0_3->unk1E = 0;
    temp_r0_3->unk20 = 0;
    temp_r0_3->unk22 = 0;
    temp_r0_3->unk24 = 0;
    temp_r0_3->targetTilesX = 0x10;
    temp_r0_3->targetTilesY = 0x10;
    arg0->unk29E = 0;
    temp_r0_3->flags = 6;
    DrawBackground(temp_r0_3);
}

void Task_809FCFC(void) {
    Player *temp_r0;
    Player *temp_r1;
    u16 temp_r5;
    u8 *temp_r1_2;
    u8 temp_r0_2;
    u8 var_r4;
    void (*var_r0)(?);

    temp_r5 = gCurTask->data;
    sub_80A19C0(temp_r5);
    sub_80A1030(temp_r5);
    sub_80A10B0(temp_r5);
    sub_80A1110(temp_r5);
    sub_80A11B8(temp_r5);
    temp_r5->unk88 = CreateSomeTask_809BF3C(temp_r5 + 1, temp_r5 + 3, temp_r5 + 0x4C, temp_r5 + 0x50, temp_r5->unk84);
    gPlayers->unk2A = (u8) (-0x10 & gPlayers->unk2A);
    gPlayers->unk2B = (u8) ((-4 & gPlayers->unk2B) | 2);
    gPlayers->unk17A = (u8) (-0x10 & gPlayers->unk17A);
    gPlayers->unk17B = (u8) (gPlayers->unk17B | 3);
    gPlayers->unk2CA = (u8) ((-0x10 & gPlayers->unk2CA) | 2);
    gPlayers->unk2CB = (u8) (-4 & gPlayers->unk2CB);
    gPlayers->unk41A = (u8) ((-0x10 & gPlayers->unk41A) | 2);
    gPlayers->unk41B = (u8) ((-4 & gPlayers->unk41B) | 1);
    var_r4 = 0;
    do {
        if (gStageData.playerIndex == var_r4) {
            temp_r0 = &gPlayers[var_r4];
            temp_r0->unk2B = (u8) ((-0x1D & temp_r0->unk2B) | 4);
        } else {
            temp_r1 = &gPlayers[var_r4];
            temp_r1->unk2B = (u8) ((-0x1D & temp_r1->unk2B) | 0xC);
            temp_r1->unk2A = (u8) ((0xF & temp_r1->unk2A) | (var_r4 * 0x10));
        }
        var_r4 += 1;
    } while ((u32) var_r4 <= 3U);
    temp_r1_2 = temp_r5->unk18;
    temp_r0_2 = *temp_r1_2;
    if (temp_r0_2 == 0x23) {
        *temp_r1_2 = 0x1D;
        temp_r5->unk3 = (u8) *temp_r5->unk18;
        temp_r5->unk4C = 0x13600;
        temp_r5->unk54 = 0x13600;
        var_r0 = Task_80A13F4;
    } else if (temp_r0_2 == 0x22) {
        var_r0 = Task_80A14AC;
    } else {
        var_r0 = Task_809FEB0;
    }
    gCurTask->main = var_r0;
}

void Task_809FEB0(? arg3) {
    s32 var_r6;
    s8 temp_r0_3;
    u16 temp_r0;
    u8 *temp_r1;
    u8 *temp_r2;
    u8 temp_r0_2;
    u8 temp_r1_2;
    u8 temp_r5;
    u8 var_r5;
    void (*var_r0)(?);

    temp_r0 = gCurTask->data;
    temp_r5 = gStageData.playerIndex;
    var_r6 = 0;
    temp_r1 = temp_r0->unk18;
    temp_r0_2 = *temp_r1;
    if (temp_r0_2 == 0x22) {
        gCurTask->main = Task_80A14AC;
        return;
    }
    if (temp_r0_2 == 0x23) {
        *temp_r1 = 0x1D;
        temp_r0->unk3 = (u8) *temp_r0->unk18;
        temp_r0->unk2 = (u8) temp_r0->unk1;
        temp_r0->unk4C = 0x13600;
        temp_r0->unk54 = 0x13600;
        sub_80A19C0(temp_r0);
        sub_80A10B0(temp_r0);
        sub_80A1110(temp_r0);
        var_r0 = Task_80A13F4;
        goto block_33;
    }
    sub_80A19C0(temp_r0);
    sub_80A10B0(temp_r0);
    sub_80A1110(temp_r0);
    if (((u32) (u16) temp_r5 <= 1U) && (temp_r0->unk1 == (s8) *temp_r0->unk30)) {
        var_r5 = 0;
        do {
            if (((s16) temp_r5 != var_r5) && (*(var_r5 + &gUnknown_030010AC) == *((s8) *temp_r0->unk30 + gCharSelect_DisplayOrder))) {
                sub_80A1A28(temp_r0);
            }
            var_r5 += 1;
        } while ((u32) var_r5 <= 3U);
    }
    if ((u32) *temp_r0->unk18 > 0xBU) {
        *temp_r0->unk14 = 0;
        temp_r0->unk3 = (u8) *temp_r0->unk18;
        var_r0 = sub_80A021C;
        goto block_33;
    }
    if (temp_r0->unk1 != (s8) *temp_r0->unk30) {
        *temp_r0->unk14 = 0;
        if ((temp_r0->unk1 != 0) || ((s8) *temp_r0->unk30 != 4)) {
            temp_r2 = temp_r0->unk30;
            if ((temp_r0->unk1 == 4) && ((s8) *temp_r2 == 0)) {
                var_r6 = 2;
                goto block_24;
            }
            temp_r1_2 = temp_r0->unk1;
            temp_r0_3 = (s8) *temp_r2;
            if ((s32) temp_r1_2 > (s32) temp_r0_3) {
                goto block_20;
            }
            if ((s32) temp_r1_2 < (s32) temp_r0_3) {
                var_r6 = 2;
            }
            goto block_23;
        }
block_20:
        var_r6 = 1;
        goto block_24;
    }
block_23:
    if (var_r6 != 0) {
block_24:
        sub_80A18B8(temp_r0);
    } else {
        sub_80A18E0(temp_r0);
        sub_80A1030(temp_r0);
    }
    switch (var_r6) {                               /* irregular */
    case 1:
        if (sub_80A14E4(temp_r0) == 1) {
            temp_r0->unk4C = 0xFFFFC400;
            temp_r0->unk1 = (u8) *temp_r0->unk30;
            sub_80A0DC8(temp_r0);
            var_r0 = sub_80A0080;
block_33:
            gCurTask->main = var_r0;
        }
        return;
    case 2:
        if (sub_80A1540(temp_r0) == 1) {
            temp_r0->unk4C = 0x12C00;
            temp_r0->unk1 = (u8) *temp_r0->unk30;
            sub_80A0DC8(temp_r0);
            var_r0 = sub_80A010C;
            goto block_33;
        }
        break;
    }
}

void sub_80A0080(? arg3) {
    s8 temp_r0;
    u16 temp_r1;
    u8 *temp_r1_2;
    void (*var_r0)(?);

    temp_r1 = gCurTask->data;
    if (*temp_r1->unk18 == 0x22) {
        gCurTask->main = Task_80A14AC;
        return;
    }
    sub_80A19C0(temp_r1);
    sub_80A10B0(temp_r1);
    sub_80A1110(temp_r1);
    if (sub_80A15E8(temp_r1) == 1) {
        temp_r0 = sub_80A1888(temp_r1);
        if (temp_r0 == 1) {
            *temp_r1->unk14 = temp_r0;
            var_r0 = Task_809FEB0;
            goto block_7;
        }
    }
    temp_r1_2 = temp_r1->unk18;
    if (*temp_r1_2 == 0x23) {
        *temp_r1_2 = 0x1D;
        temp_r1->unk3 = (u8) *temp_r1->unk18;
        temp_r1->unk4C = 0x13600;
        temp_r1->unk54 = 0x13600;
        var_r0 = Task_80A13F4;
block_7:
        gCurTask->main = var_r0;
    }
}

void sub_80A010C(? arg3) {
    s8 temp_r0;
    u16 temp_r1;
    u8 *temp_r1_2;
    void (*var_r0)(?);

    temp_r1 = gCurTask->data;
    if (*temp_r1->unk18 == 0x22) {
        gCurTask->main = Task_80A14AC;
        return;
    }
    sub_80A19C0(temp_r1);
    sub_80A10B0(temp_r1);
    sub_80A1110(temp_r1);
    if (sub_80A1598(temp_r1) == 1) {
        temp_r0 = sub_80A1888(temp_r1);
        if (temp_r0 == 1) {
            *temp_r1->unk14 = temp_r0;
            var_r0 = Task_809FEB0;
            goto block_7;
        }
    }
    temp_r1_2 = temp_r1->unk18;
    if (*temp_r1_2 == 0x23) {
        *temp_r1_2 = 0x1D;
        temp_r1->unk3 = (u8) *temp_r1->unk18;
        temp_r1->unk4C = 0x13600;
        temp_r1->unk54 = 0x13600;
        var_r0 = Task_80A13F4;
block_7:
        gCurTask->main = var_r0;
    }
}

void sub_80A0198(void) {
    u16 temp_r1;
    u8 var_r5;

    temp_r1 = gCurTask->data;
    var_r5 = 0;
    if (*temp_r1->unk18 == 0x22) {
        gCurTask->main = Task_80A14AC;
        return;
    }
    sub_80A19C0(temp_r1);
    sub_80A1A04(temp_r1);
    sub_80A10B0(temp_r1);
    sub_80A1110(temp_r1);
    sub_80A11B8(temp_r1);
    if (sub_80A1694(temp_r1) == 1) {
        var_r5 = 1;
    }
    if (sub_80A1740(temp_r1, 0x78) == 1) {
        var_r5 += 1;
    }
    if (var_r5 == 2) {
        temp_r1->unk3 = 0x1D;
        temp_r1->unk54 = 0x13600;
        gCurTask->main = Task_80A1430;
    }
}

void sub_80A021C(? arg3) {
    Sprite *temp_r0_2;
    u16 temp_r4;
    u8 temp_r0;

    temp_r4 = gCurTask->data;
    temp_r0 = *temp_r4->unk18;
    switch (temp_r0) {                              /* irregular */
    case 34:
        gCurTask->main = Task_80A14AC;
        return;
    case 13:
        temp_r0_2 = temp_r4 + 0xB4;
        temp_r0_2->anim = *((((temp_r4->unk0 * 8) + 1) * 8) + &gTileInfo_CharSelect3_TeamDescriptions);
        temp_r0_2->variant = ((((temp_r4->unk0 * 8) + 1) * 8) + &gTileInfo_CharSelect3_TeamDescriptions)->unk2;
        UpdateSpriteAnimation(temp_r0_2);
        temp_r4->unk6C = 0x12C00;
        temp_r4->unk4C = 0x12C00;
        temp_r4->unk2 = (u8) temp_r4->unk1;
        temp_r4->unk1 = (u8) *temp_r4->unk30;
        temp_r4->unk74 = 0xC900;
        sub_80A0EA8(temp_r4);
        temp_r4->unk54 = 0x7800;
        temp_r4->unk58 = 0x5000;
        CreateSomeTask_809BF3C(temp_r4 + 2, temp_r4 + 3, temp_r4 + 0x54, temp_r4 + 0x58, temp_r4->unk88);
        temp_r4->unk3 = (u8) *temp_r4->unk18;
        sub_80A19C0(temp_r4);
        sub_80A1A04(temp_r4);
        sub_80A10B0(temp_r4);
        gCurTask->main = sub_80A0344;
        return;
    case 2:
        sub_80A19C0(temp_r4);
        sub_80A1A04(temp_r4);
        sub_80A10B0(temp_r4);
        sub_80A1110(temp_r4);
        *temp_r4->unk14 = 1;
        *temp_r4->unk18 = 1;
        temp_r4->unk3 = (u8) *temp_r4->unk18;
        gCurTask->main = Task_809FEB0;
        return;
    default:
        sub_80A19C0(temp_r4);
        sub_80A1A04(temp_r4);
        sub_80A10B0(temp_r4);
        sub_80A1110(temp_r4);
        return;
    }
}

void sub_80A0344(? arg3) {
    u16 temp_r1;
    u8 var_r5;

    temp_r1 = gCurTask->data;
    var_r5 = 0;
    if (*temp_r1->unk18 == 0x22) {
        gCurTask->main = Task_80A14AC;
        return;
    }
    sub_80A19C0(temp_r1);
    sub_80A1A04(temp_r1);
    sub_80A10B0(temp_r1);
    sub_80A1110(temp_r1);
    sub_80A11B8(temp_r1);
    if (sub_80A1798(temp_r1) == 1) {
        var_r5 = 1;
    }
    if (sub_80A17FC(temp_r1) == 1) {
        var_r5 += 1;
    }
    if (sub_80A1668(temp_r1) == 1) {
        var_r5 += 1;
    }
    if (sub_80A163C(temp_r1) == 1) {
        var_r5 += 1;
    }
    temp_r1->unk5C = (s32) temp_r1->unk54;
    temp_r1->unk64 = (s32) temp_r1->unk4C;
    if ((var_r5 == 4) && (sub_80A1908(temp_r1) == 1)) {
        *temp_r1->unk18 = 0xE;
        temp_r1->unk3 = (u8) *temp_r1->unk18;
        gCurTask->main = sub_80A03F8;
    }
}

void sub_80A03F8(? arg3) {
    u16 temp_r1;
    u8 var_r5;

    temp_r1 = gCurTask->data;
    var_r5 = 0;
    if (*temp_r1->unk18 == 0x22) {
        gCurTask->main = Task_80A14AC;
        return;
    }
    sub_80A19C0(temp_r1);
    sub_80A1A04(temp_r1);
    sub_80A10B0(temp_r1);
    sub_80A1110(temp_r1);
    sub_80A11B8(temp_r1);
    if (temp_r1->unk3 == *temp_r1->unk18) {
        if (sub_80A1798(temp_r1) == 1) {
            var_r5 = 1;
        }
        if (sub_80A17FC(temp_r1) == 1) {
            var_r5 += 1;
        }
        if (sub_80A1668(temp_r1) == 1) {
            var_r5 += 1;
        }
        if (sub_80A163C(temp_r1) == 1) {
            var_r5 += 1;
        }
        if (sub_80A1908(temp_r1) == 1) {
            var_r5 += 1;
        }
        if (var_r5 == 5) {
            temp_r1->unk3 = (u8) *temp_r1->unk18;
            *temp_r1->unk14 = 1;
            temp_r1->unk74 = 0x10500;
            temp_r1->unk7C = 0x7800;
            temp_r1->unk6C = 0xB400;
            temp_r1->unk54 = 0x3C00;
            temp_r1->unk4C = 0xB400;
            temp_r1->unk68 = 0x9100;
            gCurTask->main = sub_80A0644;
        }
    }
}

void sub_80A04D8(? arg3) {
    u16 temp_r1;
    u32 var_r8;
    u8 *temp_r1_2;
    u8 temp_r0;
    u8 var_r5;
    u8 var_r7;

    temp_r1 = gCurTask->data;
    var_r7 = gStageData.playerIndex;
    var_r8 = 0;
    if (*temp_r1->unk18 == 0x22) {
        gCurTask->main = Task_80A14AC;
        return;
    }
    sub_80A19C0(temp_r1);
    sub_80A1A04(temp_r1);
    sub_80A10B0(temp_r1);
    sub_80A1110(temp_r1);
    sub_80A11B8(temp_r1);
    if ((u32) (u16) var_r7 <= 1U) {
        var_r7 = (u8) ((u32) ((var_r7 << 0x10) + 0x20000) >> 0x10);
    }
    if (*temp_r1->unk18 == 0x15) {
        *temp_r1->unk14 = 0;
        return;
    }
    var_r5 = 0;
    do {
        if (((s16) var_r7 != var_r5) && (*(var_r5 + &gUnknown_030010AC) == *((s8) *temp_r1->unk30 + gCharSelect_DisplayOrder))) {
            sub_80A1A28(temp_r1);
        }
        var_r5 += 1;
    } while ((u32) var_r5 <= 3U);
    temp_r1_2 = temp_r1->unk18;
    temp_r0 = *temp_r1_2;
    if (temp_r0 == 0x14) {
        temp_r1->unk1 = (u8) *temp_r1->unk30;
        temp_r1->unk3 = (u8) *temp_r1_2;
        gCurTask->main = sub_80A06E8;
        return;
    }
    if (temp_r0 == 0x13) {
        *temp_r1->unk14 = 1;
    }
    if (temp_r1->unk1 != (s8) *temp_r1->unk30) {
        *temp_r1->unk14 = 0;
        if (sub_80A1694(temp_r1) == 1) {
            var_r8 = 0x01000000U >> 0x18;
        }
        if (sub_80A1938(temp_r1) == 1) {
            var_r8 = (u32) (u8) (var_r8 + 1);
        }
        if (var_r8 == 2) {
            temp_r1->unk4C = 0x12C00;
            temp_r1->unk1 = (u8) *temp_r1->unk30;
            sub_80A0DC8(temp_r1);
            gCurTask->main = sub_80A0644;
        }
    } else if ((u32) *temp_r1->unk18 <= 0x13U) {
        sub_80A18E0(temp_r1);
        sub_80A1030(temp_r1);
    }
}

void sub_80A0644(? arg3) {
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 var_r0;
    u16 temp_r1;
    u8 var_r5;

    temp_r1 = gCurTask->data;
    var_r5 = 0;
    if (*temp_r1->unk18 == 0x22) {
        gCurTask->main = Task_80A14AC;
        return;
    }
    sub_80A19C0(temp_r1);
    sub_80A1A04(temp_r1);
    sub_80A10B0(temp_r1);
    sub_80A1110(temp_r1);
    sub_80A11B8(temp_r1);
    if (sub_80A16EC(temp_r1) == 1) {
        var_r5 = 1;
    }
    temp_r1_2 = temp_r1->unk68;
    if ((temp_r1_2 <= 0x9100) || (temp_r1_3 = temp_r1_2 + 0xFFFFFA00, temp_r1->unk68 = temp_r1_3, (temp_r1_3 <= 0x90FF))) {
        temp_r1->unk68 = 0x9100;
        var_r0 = 1;
    } else {
        var_r0 = 0;
    }
    if (var_r0 == 1) {
        var_r5 += 1;
    }
    if (var_r5 == 2) {
        *temp_r1->unk14 = 1;
        gCurTask->main = sub_80A04D8;
    }
}

void sub_80A06E8(? arg3) {
    Background *temp_r0;
    Task *temp_r1;
    u16 temp_r6;
    void (*var_r0)(?);

    temp_r1 = gCurTask;
    temp_r6 = temp_r1->data;
    if (*temp_r6->unk18 == 0x22) {
        var_r0 = Task_80A14AC;
    } else {
        gBgSprites_Unknown1[2] = 0;
        gBgSprites_Unknown2[2][0] = 0;
        gBgSprites_Unknown2[2][1] = 0;
        gBgSprites_Unknown2[2][2] = 0xFF;
        gBgSprites_Unknown2[2][3] = 0x40;
        temp_r6->unk6C = 0x8E00;
        temp_r6->unk70 = 0x1600;
        gBgScrollRegs[2][0] = 0x8E;
        gBgScrollRegs[2][1] = -0x16;
        gDispCnt = 0x1740;
        gBgCntRegs[2] = 0x1B09;
        temp_r0 = temp_r6 + 0x274;
        temp_r0->graphics.dest = (void *)0x06008000;
        temp_r0->graphics.anim = 0;
        temp_r0->layoutVram = (u16 *)0x0600D800;
        temp_r0->unk18 = 0;
        temp_r0->unk1A = 0;
        temp_r0->tilemapId = gCharSelect3_Tilemaps[*(temp_r6->unk1 + gCharSelect_DisplayOrder) + 0xA];
        temp_r0->unk1E = 0;
        temp_r0->unk20 = 0;
        temp_r0->unk22 = 0;
        temp_r0->unk24 = 0;
        temp_r0->targetTilesX = 0x10;
        temp_r0->targetTilesY = 0x10;
        temp_r6->unk29E = 0;
        temp_r0->flags = 2;
        DrawBackground(temp_r0);
        sub_80A10B0(temp_r6);
        sub_80A1110(temp_r6);
        sub_80A11B8(temp_r6);
        var_r0 = sub_80A07E0;
    }
    temp_r1->main = var_r0;
}

void sub_80A07E0(? arg3) {
    u16 temp_r1;
    u8 var_r5;

    temp_r1 = gCurTask->data;
    var_r5 = 0;
    if (*temp_r1->unk18 == 0x22) {
        gCurTask->main = Task_80A14AC;
        return;
    }
    sub_80A137C(temp_r1);
    sub_80A10B0(temp_r1);
    sub_80A1110(temp_r1);
    sub_80A11B8(temp_r1);
    if (sub_80A1740(temp_r1, 0x5A) == 1) {
        var_r5 = 1;
    }
    if (sub_80A1768(temp_r1) == 1) {
        var_r5 += 1;
    }
    if (sub_80A185C(temp_r1) == 1) {
        var_r5 += 1;
    }
    if (sub_80A182C(temp_r1) == 1) {
        var_r5 += 1;
    }
    temp_r1->unk5C = (s32) temp_r1->unk54;
    temp_r1->unk64 = (s32) (temp_r1->unk4C + 5);
    if (var_r5 == 4) {
        gCurTask->main = sub_80A087C;
    }
}

void sub_80A087C(? arg3) {
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    if (*temp_r1->unk18 == 0x22) {
        gCurTask->main = Task_80A14AC;
        return;
    }
    sub_80A19C0(temp_r1);
    sub_80A1A04(temp_r1);
    sub_80A10B0(temp_r1);
    sub_80A1110(temp_r1);
    sub_80A11B8(temp_r1);
    if (temp_r1->unk6 != 0) {
        gDispCnt |= 0x2000;
        gWinRegs->unk0 = 0xF0;
        gWinRegs[2] = 0xA0;
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FBF;
        gBldRegs.bldY = 0;
        temp_r1->unk6 = 0U;
        temp_r1->unk8 = 0U;
    }
    if ((u32) gBldRegs.bldY <= 0xFU) {
        gBldRegs.bldY = (u16) ((u16) temp_r1->unk8 >> 8);
        temp_r1->unk8 = (u16) (temp_r1->unk8 + 0x100);
        return;
    }
    gBldRegs.bldY = 0x10;
    *temp_r1->unk18 = 0x16;
    temp_r1->unk3 = (u8) *temp_r1->unk18;
    temp_r1->unk6 = 1U;
    gCurTask->main = sub_80A094C;
}

void sub_80A094C(? arg3) {
    Background *temp_r0;
    Task *temp_r1;
    u16 temp_r5;
    void (*var_r0)(?);

    temp_r1 = gCurTask;
    temp_r5 = temp_r1->data;
    if (*temp_r5->unk18 == 0x22) {
        var_r0 = Task_80A14AC;
    } else {
        gDispCnt = 0x1541;
        gBgCntRegs[2] = 0x1B89;
        gBgScrollRegs[2][0] = 0;
        gBgScrollRegs[2][1] = 0;
        temp_r5->unk6C = 0x7800;
        temp_r5->unk70 = 0x5500;
        temp_r0 = temp_r5 + 0x274;
        temp_r0->graphics.dest = (void *)0x06008000;
        temp_r0->graphics.anim = 0;
        temp_r0->layoutVram = (u16 *)0x0600D800;
        temp_r0->unk18 = 0;
        temp_r0->unk1A = 0;
        temp_r0->tilemapId = gCharSelect3_Tilemaps[0xF];
        temp_r0->unk1E = 0;
        temp_r0->unk20 = 0;
        temp_r0->unk22 = 0;
        temp_r0->unk24 = 0;
        temp_r0->targetTilesX = 0x10;
        temp_r0->targetTilesY = 0x10;
        temp_r5->unk29E = 0;
        temp_r0->flags = 6;
        DrawBackground(temp_r0);
        sub_80A0A08(temp_r5);
        var_r0 = sub_80A0ADC;
    }
    temp_r1->main = var_r0;
}

void sub_80A0A08(void *arg0) {
    Sprite *temp_r0;
    Sprite *temp_r7;
    s32 var_r4;
    u8 temp_r4;
    u8 temp_r5;

    temp_r0 = arg0 + 0x12C;
    temp_r0->anim = gUnknown_080D8F00.unk0;
    temp_r0->variant = gUnknown_080D8F00.unk2;
    temp_r0->prevVariant = 0xFF;
    temp_r0->x = (s16) ((s32) arg0->unk5C >> 8);
    temp_r0->y = (s16) ((s32) arg0->unk60 >> 8);
    temp_r0->oamFlags = 0x40;
    temp_r0->animCursor = 0;
    temp_r0->qAnimDelay = 0;
    temp_r0->animSpeed = 0x10;
    temp_r0->palId = 0;
    temp_r0->frameFlags = 0;
    UpdateSpriteAnimation(temp_r0);
    temp_r7 = arg0 + 0xB4;
    temp_r4 = *(arg0->unk2 + gCharSelect_DisplayOrder);
    temp_r5 = *(arg0->unk1 + gCharSelect_DisplayOrder);
    if (((u32) temp_r4 > 4U) || ((u32) temp_r5 > 4U)) {
        sub_802613C();
    }
    if ((temp_r4 == 0) || (temp_r5 == 0)) {
        if ((temp_r4 == 2) || (temp_r5 == 2)) {
            var_r4 = 4;
        } else if ((temp_r4 == 3) || (temp_r5 == 3)) {
            var_r4 = 6;
        } else if ((temp_r4 == 4) || (temp_r5 == 4)) {
            var_r4 = 3;
        } else {
            goto block_19;
        }
    } else if (((temp_r4 == 4) && (temp_r5 == 1)) || ((temp_r4 == 1) && (temp_r5 == 4))) {
        var_r4 = 5;
    } else {
block_19:
        var_r4 = 2;
    }
    temp_r7->anim = *(((var_r4 + (arg0->unk0 * 8)) * 8) + &gTileInfo_CharSelect3_TeamDescriptions);
    temp_r7->variant = (((var_r4 + (arg0->unk0 * 8)) * 8) + &gTileInfo_CharSelect3_TeamDescriptions)->unk2;
    UpdateSpriteAnimation(temp_r7);
}

void sub_80A0ADC(? arg3) {
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    if (*temp_r1->unk18 == 0x22) {
        gCurTask->main = Task_80A14AC;
        return;
    }
    sub_80A19C0(temp_r1);
    sub_80A10B0(temp_r1);
    sub_80A124C(temp_r1);
    if (temp_r1->unk6 != 0) {
        gDispCnt |= 0x2000;
        gWinRegs->unk0 = 0xF0;
        gWinRegs[2] = 0xA0;
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FBF;
        gBldRegs.bldY = 0x10;
        temp_r1->unk8 = 0x1000U;
        temp_r1->unk6 = 0U;
    }
    if (gBldRegs.bldY != 0) {
        gBldRegs.bldY = (u16) ((u16) temp_r1->unk8 >> 8);
        temp_r1->unk8 = (u16) (temp_r1->unk8 + 0xFFFFFF00);
        return;
    }
    temp_r1->unk6 = 1U;
    gBldRegs.bldY = gBldRegs.bldY;
    gCurTask->main = sub_80A0B9C;
}

void sub_80A0B9C(? arg3) {
    u16 temp_r0;
    u16 temp_r0_2;
    u16 temp_r1;
    u8 temp_r5;
    u8 temp_r6;

    temp_r1 = gCurTask->data;
    temp_r5 = *(temp_r1->unk2 + gCharSelect_DisplayOrder);
    temp_r6 = *(temp_r1->unk1 + gCharSelect_DisplayOrder);
    if (*temp_r1->unk18 == 0x22) {
        gCurTask->main = Task_80A14AC;
        return;
    }
    sub_80A19C0(temp_r1);
    sub_80A10B0(temp_r1);
    sub_80A124C(temp_r1);
    temp_r0 = temp_r1->unk4;
    switch (temp_r0) {                              /* irregular */
    case 0x0:
        m4aSongNumStart(*((*(temp_r5 + &gCharacterSelectOrderLUT) * 2) + &gAnnouncerSelect1st));
        break;
    case 0x3C:
        m4aSongNumStart(0x1FFU);
        break;
    case 0x5A:
        m4aSongNumStart(*((*(temp_r6 + &gCharacterSelectOrderLUT) * 2) + &gAnnouncerSelect2nd));
        break;
    }
    temp_r0_2 = temp_r1->unk4 + 1;
    temp_r1->unk4 = temp_r0_2;
    if ((u32) temp_r0_2 > 0x77U) {
        gCurTask->main = sub_80A0C5C;
    }
}

void sub_80A0C5C(? arg3) {
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    if (*temp_r1->unk18 == 0x22) {
        gCurTask->main = Task_80A14AC;
        return;
    }
    sub_80A19C0(temp_r1);
    sub_80A10B0(temp_r1);
    sub_80A124C(temp_r1);
    if (temp_r1->unk6 != 0) {
        gDispCnt |= 0x2000;
        gWinRegs->unk0 = 0xF0;
        gWinRegs[2] = 0xA0;
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FFF;
        temp_r1->unk6 = 0U;
        temp_r1->unk8 = 0U;
    }
    if ((u32) gBldRegs.bldY <= 0xFU) {
        gBldRegs.bldY = (u16) ((u16) temp_r1->unk8 >> 8);
        temp_r1->unk8 = (u16) (temp_r1->unk8 + 0x100);
        return;
    }
    gBldRegs.bldY = 0x10;
    temp_r1->unk4C = 0x13600;
    temp_r1->unk54 = 0x13600;
    temp_r1->unk3 = 0x1D;
    *temp_r1->unk18 = 0x1D;
    temp_r1->unk4 = 0;
    gCurTask->main = Task_80A13B4;
}

void sub_80A0D20(? arg3) {
    Player *temp_r1;
    u8 var_r4;

    if (*gCurTask->data->unk18 == 0x22) {
        gCurTask->main = Task_80A14AC;
        return;
    }
    var_r4 = 0;
    do {
        temp_r1 = &gPlayers[var_r4];
        temp_r1->unk2A = (u8) ((-0x10 & temp_r1->unk2A) | (0xF & *(var_r4 + &gUnknown_030010AC)));
        var_r4 += 1;
    } while ((u32) var_r4 <= 3U);
    TasksDestroyInPriorityRange(0U, 0xFFFFU);
    gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;
    gBgSpritesCount = 0;
    gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;
    sub_809BFE8(0);
}

void sub_80A0DC8(void *arg0) {
    Background *temp_r0;
    s32 var_r5;
    u8 temp_r6;

    temp_r0 = arg0 + 0x274;
    temp_r6 = *(arg0->unk1 + gCharSelect_DisplayOrder);
    temp_r0->graphics.dest = (void *)0x06008000;
    temp_r0->graphics.anim = 0;
    temp_r0->layoutVram = (u16 *)0x0600D800;
    temp_r0->unk18 = 0;
    temp_r0->unk1A = 0;
    temp_r0->tilemapId = gCharSelect3_Tilemaps[temp_r6 + 5];
    temp_r0->unk1E = 0;
    temp_r0->unk20 = 0;
    temp_r0->unk22 = 0;
    temp_r0->unk24 = 0;
    temp_r0->targetTilesX = 0x10;
    temp_r0->targetTilesY = 0x10;
    arg0->unk29E = 0;
    temp_r0->flags = 6;
    DrawBackground(temp_r0);
    arg0->unk50 = 0x5000;
    var_r5 = 7;
    if ((u32) *arg0->unk18 <= 0xBU) {
        var_r5 = 6;
    }
    if (0x20000 & gFlags) {
        CopyObjPaletteMasked((temp_r6 << 5) + &gUnknown_08E2EE50, var_r5 * 0x10, 0x10U);
    } else {
        (void *)0x040000D4->unk0 = (void *) ((temp_r6 << 5) + &gUnknown_08E2EE50);
        (void *)0x040000D4->unk4 = (void *) ((var_r5 << 5) + gObjPalette);
        (void *)0x040000D4->unk8 = 0x80000010;
        gFlags |= 2;
    }
    gFlags |= 2;
}

void sub_80A0EA8(void *arg0) {
    Background *temp_r0;
    Background *temp_r0_2;
    u8 temp_r1;

    temp_r1 = *(arg0->unk1 + gCharSelect_DisplayOrder);
    if (0x20000 & gFlags) {
        CopyObjPaletteMasked((temp_r1 << 5) + &gUnknown_08E2EE50, 0x70U, 0x10U);
    } else {
        (void *)0x040000D4->unk0 = (void *) ((temp_r1 << 5) + &gUnknown_08E2EE50);
        (void *)0x040000D4->unk4 = &gObjPalette[0x70];
        (void *)0x040000D4->unk8 = 0x80000010;
        gFlags |= 2;
    }
    gFlags |= 2;
    gDispCnt = 0x1741;
    gBgSprites_Unknown1[1] = 0;
    gBgSprites_Unknown2[1][0] = 0;
    gBgSprites_Unknown2[1][1] = 0;
    gBgSprites_Unknown2[1][2] = 0xFF;
    gBgSprites_Unknown2[1][3] = 0x40;
    gBgCntRegs[1] = 0x30E;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    temp_r0 = arg0 + 0x234;
    temp_r0->graphics.dest = (void *)0x0600C000;
    temp_r0->graphics.anim = 0;
    temp_r0->layoutVram = (u16 *)0x06001800;
    temp_r0->unk18 = 0;
    temp_r0->unk1A = 0;
    temp_r0->tilemapId = gCharSelect3_Tilemaps[*(arg0->unk2 + gCharSelect_DisplayOrder) + 0xA];
    temp_r0->unk1E = 0;
    temp_r0->unk20 = 0;
    temp_r0->unk22 = 0;
    temp_r0->unk24 = 0;
    temp_r0->targetTilesX = 0x10;
    temp_r0->targetTilesY = 0x10;
    arg0->unk25E = 0;
    temp_r0->flags = 1;
    DrawBackground(temp_r0);
    gBgCntRegs[2] = 0x1B89;
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;
    temp_r0_2 = arg0 + 0x274;
    temp_r0_2->graphics.dest = (void *)0x06008000;
    temp_r0_2->graphics.anim = 0;
    temp_r0_2->layoutVram = (u16 *)0x0600D800;
    temp_r0_2->unk18 = 0;
    temp_r0_2->unk1A = 0;
    temp_r0_2->tilemapId = gCharSelect3_Tilemaps[*(arg0->unk1 + gCharSelect_DisplayOrder) + 5];
    temp_r0_2->unk1E = 0;
    temp_r0_2->unk20 = 0;
    temp_r0_2->unk22 = 0;
    temp_r0_2->unk24 = 0;
    temp_r0_2->targetTilesX = 0x10;
    temp_r0_2->targetTilesY = 0x10;
    arg0->unk29E = 0;
    temp_r0_2->flags = 6;
    DrawBackground(temp_r0_2);
}

void sub_80A1030(void *arg0) {
    Sprite *temp_r4;
    s16 var_r0;
    s32 var_r1;
    u32 var_r0_2;
    u8 var_r6;

    temp_r4 = arg0 + 0x8C;
    var_r1 = 0x78;
    if ((u32) *arg0->unk18 > 0xDU) {
        var_r1 = 0xB4;
    }
    var_r6 = 0;
    do {
        if (var_r6 != 0) {
            var_r0 = (var_r1 - 0x28) - ((s32) arg0->unk44 >> 8);
        } else {
            var_r0 = var_r1 + 0x28 + ((s32) arg0->unk44 >> 8);
        }
        temp_r4->x = var_r0;
        temp_r4->y = (s16) ((s32) arg0->unk48 >> 8);
        if (var_r6 != 0) {
            var_r0_2 = temp_r4->frameFlags | 0x400;
        } else {
            var_r0_2 = temp_r4->frameFlags & 0xFFFFFBFF;
        }
        temp_r4->frameFlags = var_r0_2;
        DisplaySprite(temp_r4);
        var_r6 += 1;
    } while ((u32) var_r6 < 2U);
}

void sub_80A10B0(void *arg0) {
    Sprite *temp_r4;
    Sprite *temp_r4_2;
    u32 var_r0;
    u8 var_r6;

    var_r6 = 0;
    temp_r4 = arg0 + 0xDC;
    do {
        temp_r4->x = (s16) ((s32) arg0->unk3C >> 8);
        temp_r4->y = (s16) ((s32) arg0->unk40 >> 8);
        if (var_r6 != 0) {
            var_r0 = temp_r4->frameFlags & 0xFFFFFBFF;
        } else {
            var_r0 = temp_r4->frameFlags | 0x400;
        }
        temp_r4->frameFlags = var_r0;
        DisplaySprite(temp_r4);
        var_r6 += 1;
    } while ((u32) var_r6 <= 1U);
    temp_r4_2 = arg0 + 0xB4;
    temp_r4_2->x = (s16) ((s32) arg0->unk34 >> 8);
    temp_r4_2->y = (s16) ((s32) arg0->unk38 >> 8);
    DisplaySprite(temp_r4_2);
}

void sub_80A1110(void *arg0) {
    Sprite *temp_r4;
    Sprite *temp_r4_2;
    u32 var_r0;
    u8 temp_r1;
    u8 var_r0_2;
    u8 var_r6;
    void *temp_r0;

    var_r6 = 0;
    temp_r4 = arg0 + 0x12C;
    do {
        temp_r4->x = (s16) ((s32) arg0->unk5C >> 8);
        temp_r4->y = (s16) ((s32) arg0->unk60 >> 8);
        temp_r4->palId = 0;
        if (var_r6 != 0) {
            var_r0 = temp_r4->frameFlags | 0x400;
        } else {
            var_r0 = temp_r4->frameFlags & 0xFFFFFBFF;
        }
        temp_r4->frameFlags = var_r0;
        DisplaySprite(temp_r4);
        var_r6 += 1;
    } while ((u32) var_r6 <= 1U);
    temp_r1 = arg0->unk0;
    if ((u32) *arg0->unk18 > 0xCU) {
        var_r0_2 = arg0->unk2;
    } else {
        var_r0_2 = arg0->unk1;
    }
    temp_r4_2 = arg0 + 0x104;
    temp_r0 = ((*(var_r0_2 + gCharSelect_DisplayOrder) + (((u32) ((0 - temp_r1) | temp_r1) >> 0x1F) * 8)) * 8) + &gTileInfo_CharSelect3_NameTagNames;
    temp_r4_2->anim = temp_r0->unk0;
    temp_r4_2->variant = temp_r0->unk2;
    temp_r4_2->x = (s16) ((s32) arg0->unk5C >> 8);
    temp_r4_2->y = (s16) ((s32) arg0->unk60 >> 8);
    UpdateSpriteAnimation(temp_r4_2);
    DisplaySprite(temp_r4_2);
}

void sub_80A11B8(void *arg0) {
    Sprite *temp_r4;
    Sprite *temp_r4_2;
    u32 var_r0;
    u8 temp_r1;
    u8 var_r6;
    void *temp_r0;

    var_r6 = 0;
    temp_r4 = arg0 + 0x12C;
    do {
        temp_r4->x = (s16) ((s32) arg0->unk64 >> 8);
        temp_r4->y = (s16) ((s32) arg0->unk68 >> 8);
        temp_r4->palId = 1;
        if (var_r6 != 0) {
            var_r0 = temp_r4->frameFlags | 0x400;
        } else {
            var_r0 = temp_r4->frameFlags & 0xFFFFFBFF;
        }
        temp_r4->frameFlags = var_r0;
        DisplaySprite(temp_r4);
        var_r6 += 1;
    } while ((u32) var_r6 <= 1U);
    temp_r1 = arg0->unk0;
    temp_r4_2 = arg0 + 0x154;
    temp_r0 = (((((u32) ((0 - temp_r1) | temp_r1) >> 0x1F) * 8) + *(arg0->unk1 + gCharSelect_DisplayOrder)) * 8) + &gTileInfo_CharSelect3_NameTagNames;
    temp_r4_2->anim = temp_r0->unk0;
    temp_r4_2->variant = temp_r0->unk2;
    temp_r4_2->x = (s16) ((s32) arg0->unk64 >> 8);
    temp_r4_2->y = (s16) ((s32) arg0->unk68 >> 8);
    UpdateSpriteAnimation(temp_r4_2);
    DisplaySprite(temp_r4_2);
}

void sub_80A124C(void *arg0) {
    ? *var_r0_2;
    Sprite *temp_r4;
    Sprite *temp_r4_2;
    Sprite *temp_r4_3;
    Sprite *temp_r4_4;
    s32 var_r1;
    u32 var_r0_3;
    u8 var_r0;
    u8 var_r6;
    void *temp_r7;

    if (((u32) arg0->unk2 > 4U) || ((u32) arg0->unk1 > 4U)) {
        if ((u32) gStageData.playerIndex > 1U) {
            arg0->unk2 = (u8) gUnknown_03001060.unk4C[1 & gStageData.playerIndex];
            var_r0 = gStageData.playerIndex;
        } else {
            arg0->unk2 = (u8) gUnknown_03001060.unk4C[gStageData.playerIndex];
            var_r0 = (1 & gStageData.playerIndex) + 2;
        }
        arg0->unk1 = (u8) *(var_r0 + gUnknown_03001060.unk4C);
    }
    if (arg0->unk0 != 0) {
        var_r1 = ((arg0->unk2 * 8) + arg0->unk1) * 3;
        var_r0_2 = &gUnknown_080D8F95;
    } else {
        var_r1 = ((arg0->unk2 * 8) + arg0->unk1) * 3;
        var_r0_2 = &gUnknown_080D8F1D;
    }
    temp_r7 = var_r1 + var_r0_2;
    if ((temp_r7->unk0 == 0) || (temp_r7->unk1 == 0) || (temp_r7->unk2 == 0)) {
        sub_802613C();
    }
    var_r6 = 0;
    temp_r4 = arg0 + 0x12C;
    do {
        temp_r4->x = 0x78;
        temp_r4->y = (s16) ((s32) arg0->unk60 >> 8);
        if (var_r6 != 0) {
            var_r0_3 = temp_r4->frameFlags | 0x400;
        } else {
            var_r0_3 = temp_r4->frameFlags & 0xFFFFFBFF;
        }
        temp_r4->frameFlags = var_r0_3;
        DisplaySprite(temp_r4);
        var_r6 += 1;
    } while ((u32) var_r6 <= 1U);
    temp_r4_2 = arg0 + 0x104;
    temp_r4_2->x = (s16) temp_r7->unk0;
    temp_r4_2->y = (s16) ((s32) arg0->unk60 >> 8);
    UpdateSpriteAnimation(temp_r4_2);
    DisplaySprite(temp_r4_2);
    temp_r4_3 = arg0 + 0x1A4;
    temp_r4_3->x = (s16) temp_r7->unk1;
    temp_r4_3->y = (s16) ((s32) arg0->unk60 >> 8);
    UpdateSpriteAnimation(temp_r4_3);
    DisplaySprite(temp_r4_3);
    temp_r4_4 = arg0 + 0x154;
    temp_r4_4->x = (s16) temp_r7->unk2;
    temp_r4_4->y = (s16) ((s32) arg0->unk68 >> 8);
    UpdateSpriteAnimation(temp_r4_4);
    DisplaySprite(temp_r4_4);
}

void sub_80A137C(void *arg0) {
    gBgScrollRegs[1][0] = (s16) ((s32) arg0->unk74 >> 8);
    gBgScrollRegs[1][1] = 0 - ((s32) arg0->unk78 >> 8);
    gBgScrollRegs[0][0] = (s16) ((s32) arg0->unk7C >> 8);
    gBgScrollRegs[0][1] = (s16) ((s32) arg0->unk80 >> 8);
    gBgScrollRegs[2][0] = (s16) ((s32) arg0->unk6C >> 8);
    gBgScrollRegs[2][1] = 0 - ((s32) arg0->unk70 >> 8);
}

void TaskDestructor_80A13B0(void) {

}

void Task_80A13B4(? arg3) {
    u16 temp_r0;
    u8 *temp_r3;

    temp_r0 = gCurTask->data;
    temp_r3 = temp_r0->unk18;
    if (*temp_r3 == 0x22) {
        gCurTask->main = Task_80A14AC;
        return;
    }
    if (temp_r0->unk3 == 0x25) {
        *temp_r3 = 0x26;
        gCurTask->main = sub_80A0D20;
    }
}

void Task_80A13F4(? arg3) {
    u16 temp_r0;
    u8 *temp_r3;

    temp_r0 = gCurTask->data;
    temp_r3 = temp_r0->unk18;
    if (*temp_r3 == 0x22) {
        gCurTask->main = Task_80A14AC;
        return;
    }
    if (temp_r0->unk3 == 0x25) {
        *temp_r3 = 0x26;
        TaskDestroy(gCurTask);
    }
}

void Task_80A1430(? arg3) {
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    if (*temp_r1->unk18 == 0x22) {
        gCurTask->main = Task_80A14AC;
        return;
    }
    sub_80A19C0(temp_r1);
    sub_80A1A04(temp_r1);
    sub_80A10B0(temp_r1);
    sub_80A1110(temp_r1);
    sub_80A11B8(temp_r1);
    temp_r1->unk4C = 0x7800;
    *temp_r1->unk14 = 1;
    *temp_r1->unk18 = 1;
    temp_r1->unk3 = (u8) *temp_r1->unk18;
    gCurTask->main = Task_809FEB0;
}

void Task_CallDestroy_80A1498(? arg3) {
    TaskDestroy(gCurTask);
}

void Task_80A14AC(? arg3) {
    u16 temp_r0;

    temp_r0 = gCurTask->data;
    temp_r0->unk4C = 0x13600;
    temp_r0->unk54 = 0x13600;
    temp_r0->unk3 = 0x1D;
    *temp_r0->unk18 = 0x1D;
    temp_r0->unk4 = 0;
    gCurTask->main = Task_CallDestroy_80A1498;
}

s32 sub_80A14E4(void *arg0) {
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    u8 var_r2;

    var_r2 = 0;
    temp_r0 = arg0->unk4C;
    if ((temp_r0 > 0x12BFF) || (temp_r0_2 = temp_r0 + 0xE00, arg0->unk4C = temp_r0_2, (temp_r0_2 > 0x12BFF))) {
        arg0->unk4C = 0x12C00;
        var_r2 = 1;
    }
    temp_r0_3 = arg0->unk6C;
    if ((temp_r0_3 > 0x149FF) || (temp_r0_4 = temp_r0_3 + 0xE00, arg0->unk6C = temp_r0_4, (temp_r0_4 > 0x149FF))) {
        arg0->unk6C = -0x3C00;
        var_r2 += 1;
    }
    if (var_r2 != 2) {
        return 0;
    }
    return 1;
}

s32 sub_80A1540(void *arg0) {
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    u8 var_r3;

    var_r3 = 0;
    temp_r0 = arg0->unk4C;
    if ((temp_r0 <= 0xFFFFC400) || (temp_r0_2 = temp_r0 + 0xFFFFF200, arg0->unk4C = temp_r0_2, (temp_r0_2 <= 0xFFFFC400))) {
        arg0->unk4C = -0x3C00;
        var_r3 = 1;
    }
    temp_r0_3 = arg0->unk6C;
    if ((temp_r0_3 <= 0xFFFFA600) || (temp_r0_4 = temp_r0_3 + 0xFFFFF200, arg0->unk6C = temp_r0_4, (temp_r0_4 <= 0xFFFFA600))) {
        arg0->unk6C = 0x12C00;
        var_r3 += 1;
    }
    if (var_r3 != 2) {
        return 0;
    }
    return 1;
}

s32 sub_80A1598(void *arg0) {
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    u8 var_r3;

    var_r3 = 0;
    temp_r0 = arg0->unk4C;
    if ((temp_r0 <= 0x7800) || (temp_r0_2 = temp_r0 + 0xFFFFF200, arg0->unk4C = temp_r0_2, (temp_r0_2 <= 0x7800))) {
        arg0->unk4C = 0x7800;
        var_r3 = 1;
    }
    temp_r0_3 = arg0->unk6C;
    if ((temp_r0_3 <= 0x7800) || (temp_r0_4 = temp_r0_3 + 0xFFFFF200, arg0->unk6C = temp_r0_4, (temp_r0_4 <= 0x7800))) {
        arg0->unk6C = 0x7800;
        var_r3 += 1;
    }
    if (var_r3 != 2) {
        return 0;
    }
    return 1;
}

s32 sub_80A15E8(void *arg0) {
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    u8 var_r3;

    var_r3 = 0;
    temp_r0 = arg0->unk4C;
    if ((temp_r0 > 0x77FF) || (temp_r0_2 = temp_r0 + 0xE00, arg0->unk4C = temp_r0_2, (temp_r0_2 > 0x77FF))) {
        arg0->unk4C = 0x7800;
        var_r3 = 1;
    }
    temp_r0_3 = arg0->unk6C;
    if ((temp_r0_3 >= 0x7800) || (temp_r0_4 = temp_r0_3 + 0xE00, arg0->unk6C = temp_r0_4, (temp_r0_4 >= 0x7800))) {
        arg0->unk6C = 0x7800;
        var_r3 += 1;
    }
    if (var_r3 != 2) {
        return 0;
    }
    return 1;
}

s32 sub_80A163C(void *arg0) {
    s32 temp_r0;
    s32 temp_r0_2;

    temp_r0 = arg0->unk4C;
    if ((temp_r0 <= 0xB400) || (temp_r0_2 = temp_r0 + 0xFFFFF740, arg0->unk4C = temp_r0_2, (temp_r0_2 <= 0xB3))) {
        arg0->unk4C = 0xB400;
        return 1;
    }
    return 0;
}

s32 sub_80A1668(void *arg0) {
    s32 temp_r0;
    s32 temp_r0_2;

    temp_r0 = arg0->unk54;
    if ((temp_r0 <= 0x3C00) || (temp_r0_2 = temp_r0 + 0xFFFFF740, arg0->unk54 = temp_r0_2, (temp_r0_2 <= 0x3B))) {
        arg0->unk54 = 0x3C00;
        return 1;
    }
    return 0;
}

s32 sub_80A1694(void *arg0) {
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    u8 var_r2;

    var_r2 = 0;
    temp_r0 = arg0->unk4C;
    if ((temp_r0 > 0x12BFF) || (temp_r0_2 = temp_r0 + 0x8C0, arg0->unk4C = temp_r0_2, (temp_r0_2 > 0x12BFF))) {
        arg0->unk4C = 0x12C00;
        var_r2 = 1;
    }
    temp_r0_3 = arg0->unk6C;
    if ((temp_r0_3 > 0x12BFF) || (temp_r0_4 = temp_r0_3 + 0x840, arg0->unk6C = temp_r0_4, (temp_r0_4 > 0x12BFF))) {
        arg0->unk6C = 0x12C00;
        var_r2 += 1;
    }
    if (var_r2 != 2) {
        return 0;
    }
    return 1;
}

s32 sub_80A16EC(void *arg0) {
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    u8 var_r3;

    var_r3 = 0;
    temp_r0 = arg0->unk4C;
    if ((temp_r0 <= 0xB400) || (temp_r0_2 = temp_r0 + 0xFFFFF740, arg0->unk4C = temp_r0_2, (temp_r0_2 <= 0xB400))) {
        arg0->unk4C = 0xB400;
        var_r3 = 1;
    }
    temp_r0_3 = arg0->unk6C;
    if ((temp_r0_3 <= 0xB400) || (temp_r0_4 = temp_r0_3 + 0xFFFFF7C0, arg0->unk6C = temp_r0_4, (temp_r0_4 <= 0xB400))) {
        arg0->unk6C = 0xB400;
        var_r3 += 1;
    }
    if (var_r3 != 2) {
        return 0;
    }
    return 1;
}

s32 sub_80A1740(void *arg0, s32 arg1) {
    s32 temp_r0;
    s32 temp_r0_2;
    u16 temp_r1;

    temp_r1 = arg1 << 8;
    temp_r0 = arg0->unk54;
    if ((temp_r0 >= (s32) temp_r1) || (temp_r0_2 = temp_r0 + 0x300, arg0->unk54 = temp_r0_2, (temp_r0_2 > (s32) temp_r1))) {
        arg0->unk54 = (s32) temp_r1;
        return 1;
    }
    return 0;
}

s32 sub_80A1768(void *arg0) {
    s32 temp_r1;
    s32 temp_r1_2;

    temp_r1 = arg0->unk4C;
    if ((temp_r1 <= 0x9600) || (temp_r1_2 = temp_r1 + 0xFFFFFD00, arg0->unk4C = temp_r1_2, (temp_r1_2 <= 0x95FF))) {
        arg0->unk4C = 0x9600;
        return 1;
    }
    return 0;
}

s32 sub_80A1798(void *arg0) {
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r2;
    u8 var_r3;

    var_r3 = 0;
    temp_r0 = arg0->unk74;
    if ((temp_r0 > 0x104FF) || (temp_r0_2 = temp_r0 + 0x600, arg0->unk74 = temp_r0_2, (temp_r0_2 > 0x104FF))) {
        arg0->unk74 = 0x10500;
        var_r3 = 1;
    }
    temp_r2 = arg0->unk7C;
    if (temp_r2 <= 0x77FF) {
        temp_r0_3 = temp_r2 + 0x7E0;
        arg0->unk7C = temp_r0_3;
        if (temp_r0_3 > 0x7800) {
            arg0->unk7C = 0x7800;
            goto block_7;
        }
    } else {
        arg0->unk7C = 0x7800;
block_7:
        var_r3 += 1;
    }
    if (var_r3 != 2) {
        return 0;
    }
    return 1;
}

s32 sub_80A17FC(void *arg0) {
    s32 temp_r1;
    s32 temp_r1_2;

    temp_r1 = arg0->unk6C;
    if ((temp_r1 <= 0xB400) || (temp_r1_2 = temp_r1 + 0xFFFFF7C0, arg0->unk6C = temp_r1_2, (temp_r1_2 <= 0xB3FF))) {
        arg0->unk6C = 0xB400;
        return 1;
    }
    return 0;
}

s32 sub_80A182C(void *arg0) {
    s32 temp_r0;
    s32 temp_r2;

    temp_r2 = arg0->unk6C;
    if ((temp_r2 > 0xC8FF) || (temp_r0 = temp_r2 + 0x300, arg0->unk6C = temp_r0, (temp_r0 > 0xC8FF))) {
        arg0->unk6C = 0xC900;
        return 1;
    }
    return 0;
}

s32 sub_80A185C(void *arg0) {
    s32 temp_r0;
    s32 temp_r0_2;

    temp_r0 = arg0->unk74;
    if ((temp_r0 <= 0xC900) || (temp_r0_2 = temp_r0 + 0xFFFFFD00, arg0->unk74 = temp_r0_2, (temp_r0_2 <= 0xC900))) {
        arg0->unk74 = 0xC900;
        return 1;
    }
    return 0;
}

s8 sub_80A1888(void *arg0) {
    s32 temp_r1;
    s32 temp_r1_2;

    temp_r1 = arg0->unk60;
    if (temp_r1 <= 0x9100) {
        arg0->unk60 = 0x9100;
        return 1;
    }
    temp_r1_2 = temp_r1 + 0xFFFFFA00;
    arg0->unk60 = temp_r1_2;
    if (temp_r1_2 <= 0x90FF) {
        arg0->unk60 = 0x9100;
    }
    return 0;
}

s32 sub_80A18B8(void *arg0) {
    s32 temp_r2;

    temp_r2 = arg0->unk60;
    if (temp_r2 > 0xB3FF) {
        arg0->unk60 = 0xB400;
        return 1;
    }
    arg0->unk60 = (s32) (temp_r2 + 0x600);
    return 0;
}

s32 sub_80A18E0(void *arg0) {
    s32 temp_r2;
    s32 var_r0;

    temp_r2 = arg0->unk44;
    if (temp_r2 <= 0x4FF) {
        var_r0 = temp_r2 + 0x40;
    } else {
        var_r0 = 0;
    }
    arg0->unk44 = var_r0;
    arg0->unk48 = 0x5A00;
    return 1;
}

s32 sub_80A1908(void *arg0) {
    s32 temp_r1;
    s32 temp_r1_2;

    temp_r1 = arg0->unk68;
    if ((temp_r1 <= 0x9100) || (temp_r1_2 = temp_r1 + 0xFFFFFA00, arg0->unk68 = temp_r1_2, (temp_r1_2 <= 0x90FF))) {
        arg0->unk68 = 0x9100;
        return 1;
    }
    return 0;
}

s32 sub_80A1938(void *arg0) {
    s32 temp_r0;
    s32 temp_r0_2;

    temp_r0 = arg0->unk68;
    if ((temp_r0 > 0xB3FF) || (temp_r0_2 = temp_r0 + 0x600, arg0->unk68 = temp_r0_2, (temp_r0_2 > 0xB3FF))) {
        arg0->unk68 = 0xB400;
        return 1;
    }
    return 0;
}

s32 sub_80A1968(void *arg0) {
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    u8 var_r3;

    var_r3 = 0;
    temp_r0 = arg0->unk5C;
    if ((temp_r0 > 0x77FF) || (temp_r0_2 = temp_r0 + 0x300, arg0->unk5C = temp_r0_2, (temp_r0_2 > 0x77FF))) {
        arg0->unk5C = 0x7800;
        var_r3 = 1;
    }
    temp_r0_3 = arg0->unk64;
    if ((temp_r0_3 <= 0x7800) || (temp_r0_4 = temp_r0_3 + 0xFFFFFD00, arg0->unk64 = temp_r0_4, (temp_r0_4 <= 0x7800))) {
        arg0->unk64 = 0x7800;
        var_r3 += 1;
    }
    if (var_r3 != 2) {
        return 0;
    }
    return 1;
}

void sub_80A19C0(void *arg0) {
    u16 temp_r0;

    temp_r0 = arg0->unkA + 0xC0;
    arg0->unkA = temp_r0;
    sa2__sub_8003EE4((u16) ((u32) (temp_r0 << 0x10) >> 0x16), (s16) ((s32) (arg0->unkC << 0x10) >> 0x14), 0x100, 0x40, 0x40, (s16) ((s32) (arg0->unk6C << 8) >> 0x10), (s16) ((s32) (arg0->unk70 << 8) >> 0x10), gBgAffineRegs);
}

void sub_80A1A04(void *arg0) {
    gBgScrollRegs[1][0] = (s16) ((s32) arg0->unk74 >> 8);
    gBgScrollRegs[1][1] = 0 - ((s32) arg0->unk78 >> 8);
    gBgScrollRegs[0][0] = (s16) ((s32) arg0->unk7C >> 8);
    gBgScrollRegs[0][1] = (s16) ((s32) arg0->unk80 >> 8);
}

void sub_80A1A28(void *arg0) {
    Sprite *temp_r2;

    temp_r2 = arg0 + 0x1CC;
    temp_r2->x = (s16) ((s32) arg0->unk4C >> 8);
    temp_r2->y = (s16) ((s32) arg0->unk50 >> 8);
    DisplaySprite(temp_r2);
}
#endif
