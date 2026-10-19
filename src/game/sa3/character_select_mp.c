#include "global.h"
#include "core.h"
#include "lib/m4a/m4a.h"
#include "game/sa3/character_select.h"
#include "game/save.h" // LOADED_SAVE
#include "game/stage.h"
#include "constants/songs.h"

void CharSelectMP_InitBackgrounds(CharacterSelectMP *cs);
static void CharSelectMP_InitSprites(CharacterSelectMP *cs);

void Task_809FCFC(void);
void Task_809FEB0(void);
void Task_80A0080(void);
void Task_80A010C(void);
void Task_80A021C(void);
void Task_80A0344(void);
void Task_80A03F8(void);
void Task_80A04D8(void);
void Task_80A0644(void);
void Task_80A06E8(void);
void Task_80A07E0(void);
void Task_80A087C(void);
void Task_80A094C(void);
void sub_80A0A08(CharacterSelectMP *cs);
void Task_80A0ADC(void);
void Task_80A0B9C(void);
void Task_80A0C5C(void);
void Task_80A0D20(void);
void sub_80A0EA8(CharacterSelectMP *cs);

void sub_80A0DC8(CharacterSelectMP *cs);
void sub_80A1030(CharacterSelectMP *cs);
void sub_80A10B0(CharacterSelectMP *cs);
void sub_80A1110(CharacterSelectMP *cs);
void sub_80A11B8(CharacterSelectMP *cs);
void TaskDestructor_80A13B0(Task *t);
void Task_80A13F4(void);
void Task_80A1430(void);
s32 sub_80A14E4(CharacterSelectMP *cs);
void Task_80A13B4(void);
void Task_80A13F4(void);
void Task_80A1430(void);
void Task_80A14AC(void);
s32 sub_80A1540(CharacterSelectMP *cs);
s32 sub_80A1598(CharacterSelectMP *cs);
s32 sub_80A15E8(CharacterSelectMP *cs);
s32 sub_80A163C(CharacterSelectMP *cs);
s32 sub_80A1668(CharacterSelectMP *cs);
s32 sub_80A1694(CharacterSelectMP *cs);
s32 sub_80A16EC(CharacterSelectMP *cs);
s32 sub_80A1740(CharacterSelectMP *cs, s32 param1);
s32 sub_80A1768(CharacterSelectMP *cs);
s32 sub_80A1798(CharacterSelectMP *cs);
s32 sub_80A17FC(CharacterSelectMP *cs);
s32 sub_80A1908(CharacterSelectMP *cs);
s32 sub_80A182C(CharacterSelectMP *cs);
s32 sub_80A185C(CharacterSelectMP *cs);
s32 sub_80A1888(CharacterSelectMP *cs);
void sub_80A18B8(CharacterSelectMP *cs);
void sub_80A18E0(CharacterSelectMP *cs);
s32 sub_80A1938(CharacterSelectMP *cs);
s32 sub_80A1968(CharacterSelectMP *cs);
void sub_80A19C0(CharacterSelectMP *cs);
void sub_80A1A04(CharacterSelectMP *cs);
void sub_80A1A28(CharacterSelectMP *cs);
void sub_80A137C(CharacterSelectMP *cs);
void sub_80A10B0(CharacterSelectMP *cs);
void sub_80A1110(CharacterSelectMP *cs);
void sub_80A11B8(CharacterSelectMP *cs);

extern void *CreateSomeTask_809BF3C(void *param0, void *param1, void *param2, void *param3, void *tiles);

extern u8 gUnknown_030010AC[4];

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

void CharSelectMP_InitBackgrounds(CharacterSelectMP *cs)
{
    gBgCntRegs[0] = BGCNT_CHARBASE(1) | BGCNT_SCREENBASE(14) | BGCNT_TXT512x256 | BGCNT_16COLOR | BGCNT_PRIORITY(3);
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    {
        Background *bg = &cs->bg1F4;
        bg->graphics.dest = BG_CHAR_ADDR(1);
        bg->graphics.anim = 0;
        bg->layoutVram = BG_SCREEN_ADDR(14);
        bg->unk18 = 0;
        bg->unk1A = 0;
        bg->tilemapId = gCharSelect3_Tilemaps[CSTMI_BACKDROP];
        bg->unk1E = 0;
        bg->unk20 = 0;
        bg->unk22 = 0;
        bg->unk24 = 0;
        bg->targetTilesX = 360 / TILE_WIDTH;
        bg->targetTilesY = 160 / TILE_WIDTH;
        bg->paletteOffset = 0;
        bg->flags = BACKGROUND_FLAGS_BG_ID(0);
        DrawBackground(bg);
    }

    gBgCntRegs[1] = BGCNT_CHARBASE(3) | BGCNT_SCREENBASE(3) | BGCNT_TXT256x256 | BGCNT_16COLOR | BGCNT_PRIORITY(2);
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    {
        Background *bg = &cs->bg234;
        bg->graphics.dest = BG_CHAR_ADDR(3);
        bg->graphics.anim = 0;
        bg->layoutVram = BG_SCREEN_ADDR(3);
        bg->unk18 = 0;
        bg->unk1A = 0;
        bg->tilemapId = gCharSelect3_Tilemaps[CSTMI_TXTMAP_NAMES + CSLI_TAILS];
        bg->unk1E = 0;
        bg->unk20 = 0;
        bg->unk22 = 0;
        bg->unk24 = 0;
        bg->targetTilesX = 128 / TILE_WIDTH;
        bg->targetTilesY = 128 / TILE_WIDTH;
        bg->paletteOffset = 0;
        bg->flags = BACKGROUND_FLAGS_BG_ID(1);
        DrawBackground(bg);
    }

    gBgCntRegs[2] = BGCNT_CHARBASE(2) | BGCNT_SCREENBASE(27) | BGCNT_AFF128x128 | BGCNT_256COLOR | BGCNT_PRIORITY(1);
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;
    {
        Background *bg = &cs->bg274;
        bg->graphics.dest = BG_CHAR_ADDR(2);
        bg->graphics.anim = 0;
        bg->layoutVram = BG_SCREEN_ADDR(27);
        bg->unk18 = 0;
        bg->unk1A = 0;
        bg->tilemapId = gCharSelect3_Tilemaps[CSTMI_AFFINE_NAMES + cs->listIndex[CS_CHARID_PLAYER]];
        bg->unk1E = 0;
        bg->unk20 = 0;
        bg->unk22 = 0;
        bg->unk24 = 0;
        bg->targetTilesX = 128 / TILE_WIDTH;
        bg->targetTilesY = 128 / TILE_WIDTH;
        bg->paletteOffset = 0;
        bg->flags = BACKGROUND_FLAG_4 | BACKGROUND_FLAGS_BG_ID(2);
        DrawBackground(bg);
    }
}

void Task_809FCFC(void)
{
    struct Task *t;
    u8 pid;
    u8 playerIndex;

    CharacterSelectMP *cs = TASK_DATA(gCurTask);

    sub_80A19C0(cs);
    sub_80A1030(cs);
    sub_80A10B0(cs);
    sub_80A1110(cs);
    sub_80A11B8(cs);

    cs->tilesCharacters[CS_CHARID_PARTNER] = CreateSomeTask_809BF3C(&cs->listIndex[CS_CHARID_PLAYER], &cs->unk3, &cs->qUnk4C, &cs->qUnk50,
                                                                    cs->tilesCharacters[CS_CHARID_PLAYER]);

    {
        gPlayers[PLAYER_1].charFlags.character = SONIC;
        gPlayers[PLAYER_1].charFlags.partnerIndex = PLAYER_3;
        gPlayers[PLAYER_2].charFlags.character = SONIC;
        gPlayers[PLAYER_2].charFlags.partnerIndex = PLAYER_4;
        gPlayers[PLAYER_3].charFlags.character = TAILS;
        gPlayers[PLAYER_3].charFlags.partnerIndex = PLAYER_1;
        gPlayers[PLAYER_4].charFlags.character = TAILS;
        gPlayers[PLAYER_4].charFlags.partnerIndex = PLAYER_2;

        for (pid = 0; pid < NUM_MULTI_PLAYER_CHARS; pid++) {
            if (gStageData.playerIndex == pid) {
                gPlayers[pid].charFlags.someIndex = 1;
            } else {
                gPlayers[pid].charFlags.someIndex = 3;
                gPlayers[pid].charFlags.playerIndex = pid;
            }
        }
    }

    if (*cs->unk18 == 0x23) {
        *cs->unk18 = 29;
        cs->unk3 = *cs->unk18;
        cs->qUnk54 = cs->qUnk4C = Q(310);
        gCurTask->main = Task_80A13F4;
    } else if (*cs->unk18 == 0x22) {
        gCurTask->main = Task_80A14AC;
    } else {
        gCurTask->main = Task_809FEB0;
    }
}

void Task_809FEB0(void)
{
    CharacterSelectMP *cs = TASK_DATA(gCurTask);
    s32 var_r6;
    s8 temp_r0_2;
    u8 *temp_r1;
    u8 temp_r0;
    u8 temp_r1_2;
    u8 var_r5;
    void (*var_r0)(CharacterSelectMP *);
    void *temp_r2;
    s16 temp_r5 = gStageData.playerIndex;

    var_r6 = 0;
    temp_r1 = cs->unk18;
    temp_r0 = *temp_r1;
    if (temp_r0 == 0x22) {
        gCurTask->main = Task_80A14AC;
        return;
    }
    if (temp_r0 == 0x23) {
        *temp_r1 = 0x1D;
        cs->unk3 = *cs->unk18;
        cs->listIndex[CS_CHARID_PARTNER] = cs->listIndex[CS_CHARID_PLAYER];
        cs->qUnk4C = 0x13600;
        cs->qUnk54 = 0x13600;
        sub_80A19C0(cs);
        sub_80A10B0(cs);
        sub_80A1110(cs);
        gCurTask->main = Task_80A13F4;
        return;
    }
    sub_80A19C0(cs);
    sub_80A10B0(cs);
    sub_80A1110(cs);
    if ((temp_r5 <= 1U) && (cs->listIndex[CS_CHARID_PLAYER] == (s8)*cs->unk30)) {
        for (var_r5 = 0; var_r5 < 4; var_r5++) {
            u8 *ptr = gUnknown_030010AC;
            ECharacters *order = gCharSelect_DisplayOrder;
            if (temp_r5 != var_r5) {
                if (ptr[var_r5] == order[*cs->unk30]) {
                    sub_80A1A28(cs);
                }
            }
        }
    }
    if ((u32)*cs->unk18 > 0xBU) {
        *cs->unk14 = 0;
        cs->unk3 = *cs->unk18;
        gCurTask->main = Task_80A021C;
        return;
    }
    if (cs->listIndex[CS_CHARID_PLAYER] != (s8)*cs->unk30) {
        *cs->unk14 = 0;
        if ((cs->listIndex[CS_CHARID_PLAYER] == 0) && ((s8)*cs->unk30 == 4)) {
            var_r6 = 1;
        } else {
            if ((cs->listIndex[CS_CHARID_PLAYER] == 4) && ((s8)*cs->unk30 == 0)) {
                var_r6 = 2;
            } else if (cs->listIndex[CS_CHARID_PLAYER] > *cs->unk30) {
                var_r6 = 1;
            } else if (cs->listIndex[CS_CHARID_PLAYER] < *cs->unk30) {
                var_r6 = 2;
            }
        }
    }

    if (var_r6 != 0) {
        sub_80A18B8(cs);
    } else {
        sub_80A18E0(cs);
        sub_80A1030(cs);
    }
    switch (var_r6) { /* irregular */
        case 1:
            if (sub_80A14E4(cs) == 1) {
                cs->qUnk4C = -0x3C00;
                cs->listIndex[CS_CHARID_PLAYER] = *cs->unk30;
                sub_80A0DC8(cs);
                gCurTask->main = Task_80A0080;
                return;
            }
            break;
        case 2:
            if (sub_80A1540(cs) == 1) {
                cs->qUnk4C = 0x12C00;
                cs->listIndex[CS_CHARID_PLAYER] = *cs->unk30;
                sub_80A0DC8(cs);
                gCurTask->main = Task_80A010C;
                return;
            }
            break;
    }
}

void Task_80A0080(void)
{
    CharacterSelectMP *cs = TASK_DATA(gCurTask);

    if (*cs->unk18 == 0x22) {
        gCurTask->main = Task_80A14AC;
        return;
    }

    sub_80A19C0(cs);
    sub_80A10B0(cs);
    sub_80A1110(cs);

    if ((sub_80A15E8(cs) == 1) && (sub_80A1888(cs) == 1)) {
        *cs->unk14 = 1;
        gCurTask->main = Task_809FEB0;
    } else {
        if (*cs->unk18 == 0x23) {
            *cs->unk18 = 0x1D;
            cs->unk3 = *cs->unk18;
            cs->qUnk54 = cs->qUnk4C = Q(0x136);
            gCurTask->main = Task_80A13F4;
        }
    }
}

void Task_80A010C(void)
{
    CharacterSelectMP *cs = TASK_DATA(gCurTask);

    if (*cs->unk18 == 0x22) {
        gCurTask->main = Task_80A14AC;
        return;
    }

    sub_80A19C0(cs);
    sub_80A10B0(cs);
    sub_80A1110(cs);

    if ((sub_80A1598(cs) == 1) && (sub_80A1888(cs) == 1)) {
        *cs->unk14 = 1;
        gCurTask->main = Task_809FEB0;
    } else if (*cs->unk18 == 0x23) {
        *cs->unk18 = 0x1D;
        cs->unk3 = *cs->unk18;
        cs->qUnk4C = Q(0x136);
        cs->qUnk54 = Q(0x136);
        gCurTask->main = Task_80A13F4;
    }
}

void sub_80A0198(void)
{
    CharacterSelectMP *cs = TASK_DATA(gCurTask);
    u8 r5 = 0;

    if (*cs->unk18 == 0x22) {
        gCurTask->main = Task_80A14AC;
        return;
    }

    sub_80A19C0(cs);
    sub_80A1A04(cs);
    sub_80A10B0(cs);
    sub_80A1110(cs);
    sub_80A11B8(cs);

    if (sub_80A1694(cs) == 1) {
        r5 += 1;
    }

    if (sub_80A1740(cs, 0x78) == 1) {
        r5 += 1;
    }

    if (r5 == 2) {
        cs->unk3 = 0x1D;
        cs->qUnk54 = Q(0x136);
        gCurTask->main = Task_80A1430;
    }
}

void Task_80A021C(void)
{
    CharacterSelectMP *cs = TASK_DATA(gCurTask);

    if (*cs->unk18 == 34) {
        gCurTask->main = Task_80A14AC;
        return;
    } else if (*cs->unk18 == 13) {
        Sprite *s = &cs->sprB4;
        s->anim = gTileInfo_CharSelect3_TeamDescriptions[(cs->language * 8) + 1].anim;
        s->variant = gTileInfo_CharSelect3_TeamDescriptions[(cs->language * 8) + 1].variant;
        UpdateSpriteAnimation(s);
        cs->qUnk6C = 0x12C00;
        cs->qUnk4C = 0x12C00;
        cs->listIndex[1] = cs->listIndex[0];
        cs->listIndex[0] = (u8)*cs->unk30;
        cs->qUnk74 = 0xC900;
        sub_80A0EA8(cs);
        cs->qUnk54 = 0x7800;
        cs->qUnk58 = 0x5000;
        CreateSomeTask_809BF3C(&cs->listIndex[1], &cs->unk3, &cs->qUnk54, &cs->qUnk58, cs->tilesCharacters[1]);
        cs->unk3 = *cs->unk18;
        sub_80A19C0(cs);
        sub_80A1A04(cs);
        sub_80A10B0(cs);
        gCurTask->main = Task_80A0344;
        return;
    } else if (*cs->unk18 == 2) {
        sub_80A19C0(cs);
        sub_80A1A04(cs);
        sub_80A10B0(cs);
        sub_80A1110(cs);
        *cs->unk14 = 1;
        *cs->unk18 = 1;
        cs->unk3 = *cs->unk18;
        gCurTask->main = Task_809FEB0;
        return;
    } else {
        sub_80A19C0(cs);
        sub_80A1A04(cs);
        sub_80A10B0(cs);
        sub_80A1110(cs);
        return;
    }
}

void Task_80A0344(void)
{
    CharacterSelectMP *cs = TASK_DATA(gCurTask);
    u8 var_r5;

    var_r5 = 0;
    if (*cs->unk18 == 0x22) {
        gCurTask->main = Task_80A14AC;
        return;
    }
    sub_80A19C0(cs);
    sub_80A1A04(cs);
    sub_80A10B0(cs);
    sub_80A1110(cs);
    sub_80A11B8(cs);
    if (sub_80A1798(cs) == 1) {
        var_r5 = 1;
    }
    if (sub_80A17FC(cs) == 1) {
        var_r5 += 1;
    }
    if (sub_80A1668(cs) == 1) {
        var_r5 += 1;
    }
    if (sub_80A163C(cs) == 1) {
        var_r5 += 1;
    }
    cs->qNameTagPos[0].x = cs->qUnk54;
    cs->qNameTagPos[1].x = cs->qUnk4C;
    if ((var_r5 == 4) && (sub_80A1908(cs) == 1)) {
        *cs->unk18 = 0xE;
        cs->unk3 = *cs->unk18;
        gCurTask->main = Task_80A03F8;
    }
}

void Task_80A03F8(void)
{
    CharacterSelectMP *cs = TASK_DATA(gCurTask);
    u8 var_r5 = 0;

    if (*cs->unk18 == 0x22) {
        gCurTask->main = Task_80A14AC;
        return;
    }

    sub_80A19C0(cs);
    sub_80A1A04(cs);
    sub_80A10B0(cs);
    sub_80A1110(cs);
    sub_80A11B8(cs);

    if (cs->unk3 == *cs->unk18) {
        if (sub_80A1798(cs) == 1) {
            var_r5 += 1;
        }
        if (sub_80A17FC(cs) == 1) {
            var_r5 += 1;
        }
        if (sub_80A1668(cs) == 1) {
            var_r5 += 1;
        }
        if (sub_80A163C(cs) == 1) {
            var_r5 += 1;
        }
        if (sub_80A1908(cs) == 1) {
            var_r5 += 1;
        }

        if (var_r5 == 5) {
            cs->unk3 = *cs->unk18;
            *cs->unk14 = 1;
            cs->qUnk74 = Q(0x105);
            cs->qUnk7C = Q(0x78);
            cs->qUnk6C = Q(0xB4);
            cs->qUnk54 = Q(0x3C);
            cs->qUnk4C = Q(0xB4);
            cs->qNameTagPos[1].y = Q(0x91);
            gCurTask->main = Task_80A0644;
        }
    }
}

void Task_80A04D8(void)
{
    CharacterSelectMP *cs = TASK_DATA(gCurTask);
    u8 *temp_r1;
    u8 temp_r0;
    u8 var_r5;
    s16 var_r7 = gStageData.playerIndex;
    u8 var_r8 = 0;

    if (*cs->unk18 == 0x22) {
        gCurTask->main = Task_80A14AC;
        return;
    }
    sub_80A19C0(cs);
    sub_80A1A04(cs);
    sub_80A10B0(cs);
    sub_80A1110(cs);
    sub_80A11B8(cs);
    if ((u32)(u16)var_r7 <= 1U) {
        var_r7 += 2;
    }
    if (*cs->unk18 == 0x15) {
        *cs->unk14 = 0;
        return;
    }
    for (var_r5 = 0; var_r5 < 4; var_r5++) {
        u8 *ptr = gUnknown_030010AC;
        ECharacters *order = gCharSelect_DisplayOrder;
        if (var_r7 != var_r5) {
            if (ptr[var_r5] == order[*cs->unk30]) {
                sub_80A1A28(cs);
            }
        }
    }

    temp_r1 = cs->unk18;
    temp_r0 = *temp_r1;
    if (temp_r0 == 0x14) {
        cs->listIndex[0] = (u8)*cs->unk30;
        cs->unk3 = *temp_r1;
        gCurTask->main = Task_80A06E8;
        return;
    }
    if (temp_r0 == 0x13) {
        *cs->unk14 = 1;
    }
    if (cs->listIndex[0] != (s8)(u8)*cs->unk30) {
        *cs->unk14 = 0;
        if (sub_80A1694(cs) == 1) {
            var_r8 += 1;
        }
        if (sub_80A1938(cs) == 1) {
            var_r8 += 1;
        }
        if (var_r8 == 2) {
            cs->qUnk4C = 0x12C00;
            cs->listIndex[0] = (u8)*cs->unk30;
            sub_80A0DC8(cs);
            gCurTask->main = Task_80A0644;
        }
    } else if ((u32)*cs->unk18 <= 0x13U) {
        sub_80A18E0(cs);
        sub_80A1030(cs);
    }
}

void Task_80A0644(void)
{
    CharacterSelectMP *cs = TASK_DATA(gCurTask);
    s32 temp_r1;
    s32 temp_r1_2;
    s32 var_r0;
    u8 var_r5 = 0;

    if (*cs->unk18 == 0x22) {
        gCurTask->main = Task_80A14AC;
        return;
    }
    sub_80A19C0(cs);
    sub_80A1A04(cs);
    sub_80A10B0(cs);
    sub_80A1110(cs);
    sub_80A11B8(cs);

    if (sub_80A16EC(cs) == 1) {
        var_r5 += 1;
    }
    temp_r1 = cs->qNameTagPos[1].y;

    // TODO: Expand the if-cond
    if ((temp_r1 <= 0x9100) || (temp_r1_2 = temp_r1 - Q(6), cs->qNameTagPos[1].y = temp_r1_2, (temp_r1_2 < 0x9100))) {
        cs->qNameTagPos[1].y = 0x9100;
        var_r0 = 1;
    } else {
        var_r0 = 0;
    }
    if (var_r0 == 1) {
        var_r5 += 1;
    }
    if (var_r5 == 2) {
        *cs->unk14 = 1;
        gCurTask->main = Task_80A04D8;
    }
}

void Task_80A06E8(void)
{
    CharacterSelectMP *cs = TASK_DATA(gCurTask);

    if (*cs->unk18 == 0x22) {
        gCurTask->main = Task_80A14AC;
        return;
    } else {
        gBgSprites_Unknown1[2] = 0;
        gBgSprites_Unknown2[2][0] = 0;
        gBgSprites_Unknown2[2][1] = 0;
        gBgSprites_Unknown2[2][2] = 0xFF;
        gBgSprites_Unknown2[2][3] = 0x40;
        cs->qUnk6C = +Q(142);
        cs->qUnk70 = +Q(22);

        gBgScrollRegs[2][0] = 142;
        gBgScrollRegs[2][1] = -22;
        gDispCnt = DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP | DISPCNT_MODE_0;
        gBgCntRegs[2] = BGCNT_CHARBASE(2) | BGCNT_SCREENBASE(27) | BGCNT_AFF128x128 | BGCNT_16COLOR | BGCNT_PRIORITY(1);
        {
            Background *bg2 = &cs->bg274;
            u8 order = gCharSelect_DisplayOrder[cs->listIndex[CS_CHARID_PLAYER]];
            bg2->graphics.dest = BG_CHAR_ADDR(2);
            bg2->graphics.anim = 0;
            bg2->layoutVram = BG_SCREEN_ADDR(27);
            bg2->unk18 = 0;
            bg2->unk1A = 0;
            bg2->tilemapId = gCharSelect3_Tilemaps[CSTMI_TXTMAP_NAMES + order];
            bg2->unk1E = 0;
            bg2->unk20 = 0;
            bg2->unk22 = 0;
            bg2->unk24 = 0;
            bg2->targetTilesX = 0x10;
            bg2->targetTilesY = 0x10;
            bg2->paletteOffset = 0;
            bg2->flags = BACKGROUND_FLAGS_BG_ID(2);
            DrawBackground(bg2);
        }
        sub_80A10B0(cs);
        sub_80A1110(cs);
        sub_80A11B8(cs);
        gCurTask->main = Task_80A07E0;
        return;
    }
}

void Task_80A07E0(void)
{
    CharacterSelectMP *cs = TASK_DATA(gCurTask);
    u8 var_r5 = 0;

    if (*cs->unk18 == 0x22) {
        gCurTask->main = Task_80A14AC;
        return;
    }

    sub_80A137C(cs);
    sub_80A10B0(cs);
    sub_80A1110(cs);
    sub_80A11B8(cs);

    if (sub_80A1740(cs, 90) == 1) {
        var_r5 += 1;
    }
    if (sub_80A1768(cs) == 1) {
        var_r5 += 1;
    }
    if (sub_80A185C(cs) == 1) {
        var_r5 += 1;
    }
    if (sub_80A182C(cs) == 1) {
        var_r5 += 1;
    }
    cs->qNameTagPos[0].x = cs->qUnk54;
    cs->qNameTagPos[1].x = cs->qUnk4C + 5;
    if (var_r5 == 4) {
        gCurTask->main = Task_80A087C;
    }
}

void Task_80A087C(void)
{
    CharacterSelectMP *cs = TASK_DATA(gCurTask);

    if (*cs->unk18 == 0x22) {
        gCurTask->main = Task_80A14AC;
        return;
    }

    sub_80A19C0(cs);
    sub_80A1A04(cs);
    sub_80A10B0(cs);
    sub_80A1110(cs);
    sub_80A11B8(cs);

    if (cs->unk6 != 0) {
        gDispCnt |= DISPCNT_WIN0_ON;
        gWinRegs[0] = WIN_RANGE(0, DISPLAY_WIDTH);
        gWinRegs[2] = WIN_RANGE(0, DISPLAY_HEIGHT);
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FBF;
        gBldRegs.bldY = 0;
        cs->unk6 = 0;
        cs->unk8 = 0;
    }

    if (gBldRegs.bldY < 0x10) {
        gBldRegs.bldY = I(cs->unk8);
        cs->unk8 += 0x100;
    } else {
        gBldRegs.bldY = 0x10;
        *cs->unk18 = 0x16;
        cs->unk3 = *cs->unk18;
        cs->unk6 = 1;
        gCurTask->main = Task_80A094C;
    }
}

void Task_80A094C(void)
{
    CharacterSelectMP *cs = TASK_DATA(gCurTask);

    if (*cs->unk18 == 0x22) {
        gCurTask->main = Task_80A14AC;
    } else {
        gDispCnt = 0x1541;
        gBgCntRegs[2] = BGCNT_CHARBASE(2) | BGCNT_SCREENBASE(27) | BGCNT_AFF128x128 | BGCNT_256COLOR | BGCNT_PRIORITY(1);
        gBgScrollRegs[2][0] = 0;
        gBgScrollRegs[2][1] = 0;
        cs->qUnk6C = 0x7800;
        cs->qUnk70 = 0x5500;
        {
            Background *bg2 = &cs->bg274;
            bg2->graphics.dest = BG_CHAR_ADDR(2);
            bg2->graphics.anim = 0;
            bg2->layoutVram = BG_SCREEN_ADDR(27);
            bg2->unk18 = 0;
            bg2->unk1A = 0;
            bg2->tilemapId = gCharSelect3_Tilemaps[0xF];
            bg2->unk1E = 0;
            bg2->unk20 = 0;
            bg2->unk22 = 0;
            bg2->unk24 = 0;
            bg2->targetTilesX = 0x10;
            bg2->targetTilesY = 0x10;
            bg2->paletteOffset = 0;
            bg2->flags = 6;
            DrawBackground(bg2);
        }

        sub_80A0A08(cs);
        gCurTask->main = Task_80A0ADC;
    }
}

#if 0
void sub_80A0A08(CharacterSelectMP *cs) {
    Sprite *temp_r0;
    Sprite *temp_r7;
    s32 var_r4;
    u8 temp_r4;
    u8 temp_r5;

    temp_r0 = cs + 0x12C;
    temp_r0->anim = gUnknown_080D8F00.unk0;
    temp_r0->variant = gUnknown_080D8F00.unk2;
    temp_r0->prevVariant = 0xFF;
    temp_r0->x = (s16) ((s32) cs->qNameTagPos[0].x >> 8);
    temp_r0->y = (s16) ((s32) cs->qNameTagPos[0].y >> 8);
    temp_r0->oamFlags = 0x40;
    temp_r0->animCursor = 0;
    temp_r0->qAnimDelay = 0;
    temp_r0->animSpeed = 0x10;
    temp_r0->palId = 0;
    temp_r0->frameFlags = 0;
    UpdateSpriteAnimation(temp_r0);
    temp_r7 = cs + 0xB4;
    temp_r4 = *(cs->listIndex[1] + gCharSelect_DisplayOrder);
    temp_r5 = *(cs->listIndex[0] + gCharSelect_DisplayOrder);
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
    temp_r7->anim = gTileInfo_CharSelect3_TeamDescriptions[var_r4 + (cs->language * 8)].anim;
    temp_r7->variant = gTileInfo_CharSelect3_TeamDescriptions[var_r4 + (cs->language * 8)].variant;
    UpdateSpriteAnimation(temp_r7);
}

void Task_80A0ADC(CharacterSelectMP *cs) {
    if (*cs->unk18 == 0x22) {
        gCurTask->main = Task_80A14AC;
        return;
    }
    sub_80A19C0(cs);
    sub_80A10B0(cs);
    sub_80A124C(cs);
    if (cs->unk6 != 0) {
        gDispCnt |= 0x2000;
        gWinRegs[0] = WIN_RANGE(0, DISPLAY_WIDTH);
        gWinRegs[2] = WIN_RANGE(0, DISPLAY_HEIGHT);
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FBF;
        gBldRegs.bldY = 0x10;
        cs->unk8 = 0x1000;
        cs->unk6 = 0;
    }
    if (gBldRegs.bldY != 0) {
        gBldRegs.bldY = (u16) ((u16) cs->unk8 >> 8);
        cs->unk8 += 0xFFFFFF00;
        return;
    }
    cs->unk6 = 1;
    gBldRegs.bldY = gBldRegs.bldY;
    gCurTask->main = Task_80A0B9C;
}

void Task_80A0B9C(CharacterSelectMP *cs) {
    u16 temp_r0;
    u8 temp_r5;
    u8 temp_r6;

    temp_r5 = *(gCurTask.unk2 + gCharSelect_DisplayOrder);
    temp_r6 = *(gCurTask.unk1 + gCharSelect_DisplayOrder);
    if (*gCurTask.unk18 == 0x22) {
        gCurTask.unk0->main = Task_80A14AC;
        return;
    }
    sub_80A19C0((CharacterSelectMP *) &gCurTask);
    sub_80A10B0((CharacterSelectMP *) &gCurTask);
    sub_80A124C((CharacterSelectMP *) &gCurTask);
    switch (gCurTask.unk4) {                        /* irregular */
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
    temp_r0 = gCurTask.unk4 + 1;
    gCurTask.unk4 = temp_r0;
    if ((u32) temp_r0 > 0x77U) {
        gCurTask.unk0->main = Task_80A0C5C;
    }
}

void Task_80A0C5C(CharacterSelectMP *cs) {
    if (*cs->unk18 == 0x22) {
        gCurTask->main = Task_80A14AC;
        return;
    }
    sub_80A19C0(cs);
    sub_80A10B0(cs);
    sub_80A124C(cs);
    if (cs->unk6 != 0) {
        gDispCnt |= 0x2000;
        gWinRegs[0] = WIN_RANGE(0, DISPLAY_WIDTH);
        gWinRegs[2] = WIN_RANGE(0, DISPLAY_HEIGHT);
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FFF;
        cs->unk6 = 0;
        cs->unk8 = 0;
    }
    if ((u32) gBldRegs.bldY <= 0xFU) {
        gBldRegs.bldY = (u16) ((u16) cs->unk8 >> 8);
        cs->unk8 += 0x100;
        return;
    }
    gBldRegs.bldY = 0x10;
    cs->qUnk4C = 0x13600;
    cs->qUnk54 = 0x13600;
    cs->unk3 = 0x1D;
    *cs->unk18 = 0x1D;
    cs->unk4 = 0;
    gCurTask->main = Task_80A13B4;
}

void Task_80A0D20(CharacterSelectMP *cs) {
    Player *temp_r1;
    u8 var_r4;

    if (*cs->unk18 == 0x22) {
        gCurTask->main = Task_80A14AC;
        return;
    }
    var_r4 = 0;
    do {
        temp_r1 = &gPlayers[var_r4];
        temp_r1->unk2A = (u8) ((-0x10 & temp_r1->unk2A) | (0xF & gUnknown_030010AC[var_r4]));
        var_r4 += 1;
    } while ((u32) var_r4 <= 3U);
    TasksDestroyInPriorityRange(0U, 0xFFFFU);
    gBackgroundsCopyQueueCursor = gBackgroundsCopyQueueIndex;
    gBgSpritesCount = 0;
    gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;
    sub_809BFE8(0);
}

void sub_80A0DC8(CharacterSelectMP *cs) {
    s32 var_r5;
    u8 temp_r6;

    temp_r6 = *(cs->listIndex[0] + gCharSelect_DisplayOrder);
    cs->bg274.graphics.dest = (void *)0x06008000;
    cs->bg274.graphics.anim = 0;
    cs->bg274.layoutVram = (u16 *)0x0600D800;
    cs->bg274.unk18 = 0;
    cs->bg274.unk1A = 0;
    cs->bg274.tilemapId = gCharSelect3_Tilemaps[temp_r6 + 5];
    cs->bg274.unk1E = 0;
    cs->bg274.unk20 = 0;
    cs->bg274.unk22 = 0;
    cs->bg274.unk24 = 0;
    cs->bg274.targetTilesX = 0x10;
    cs->bg274.targetTilesY = 0x10;
    cs->bg274.paletteOffset = 0;
    cs->bg274.flags = 6;
    DrawBackground(&cs->bg274);
    cs->qUnk50 = 0x5000;
    var_r5 = 7;
    if ((u32) *cs->unk18 <= 0xBU) {
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

void sub_80A0EA8(CharacterSelectMP *cs) {
    Background *temp_r0;
    Background *temp_r0_2;
    u8 temp_r1;

    temp_r1 = *(cs->listIndex[0] + gCharSelect_DisplayOrder);
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
    temp_r0 = cs + 0x234;
    temp_r0->graphics.dest = (void *)0x0600C000;
    temp_r0->graphics.anim = 0;
    temp_r0->layoutVram = (u16 *)0x06001800;
    temp_r0->unk18 = 0;
    temp_r0->unk1A = 0;
    temp_r0->tilemapId = gCharSelect3_Tilemaps[*(cs->listIndex[1] + gCharSelect_DisplayOrder) + 0xA];
    temp_r0->unk1E = 0;
    temp_r0->unk20 = 0;
    temp_r0->unk22 = 0;
    temp_r0->unk24 = 0;
    temp_r0->targetTilesX = 0x10;
    temp_r0->targetTilesY = 0x10;
    cs->bg234.paletteOffset = 0;
    temp_r0->flags = 1;
    DrawBackground(temp_r0);
    gBgCntRegs[2] = 0x1B89;
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;
    temp_r0_2 = cs + 0x274;
    temp_r0_2->graphics.dest = (void *)0x06008000;
    temp_r0_2->graphics.anim = 0;
    temp_r0_2->layoutVram = (u16 *)0x0600D800;
    temp_r0_2->unk18 = 0;
    temp_r0_2->unk1A = 0;
    temp_r0_2->tilemapId = gCharSelect3_Tilemaps[*(cs->listIndex[0] + gCharSelect_DisplayOrder) + 5];
    temp_r0_2->unk1E = 0;
    temp_r0_2->unk20 = 0;
    temp_r0_2->unk22 = 0;
    temp_r0_2->unk24 = 0;
    temp_r0_2->targetTilesX = 0x10;
    temp_r0_2->targetTilesY = 0x10;
    cs->bg274.paletteOffset = 0;
    temp_r0_2->flags = 6;
    DrawBackground(temp_r0_2);
}

void sub_80A1030(CharacterSelectMP *cs) {
    s16 var_r0;
    s32 var_r1;
    u32 var_r0_2;
    u8 var_r6;

    var_r1 = 0x78;
    if ((u32) *cs->unk18 > 0xDU) {
        var_r1 = 0xB4;
    }
    var_r6 = 0;
    do {
        if (var_r6 != 0) {
            var_r0 = (var_r1 - 0x28) - ((s32) cs->qUnk44 >> 8);
        } else {
            var_r0 = var_r1 + 0x28 + ((s32) cs->qUnk44 >> 8);
        }
        cs->spr8C.x = var_r0;
        cs->spr8C.y = (s16) ((s32) cs->qUnk48 >> 8);
        if (var_r6 != 0) {
            var_r0_2 = cs->spr8C.frameFlags | 0x400;
        } else {
            var_r0_2 = cs->spr8C.frameFlags & 0xFFFFFBFF;
        }
        cs->spr8C.frameFlags = var_r0_2;
        DisplaySprite(&cs->spr8C);
        var_r6 += 1;
    } while ((u32) var_r6 < 2U);
}

void sub_80A10B0(CharacterSelectMP *cs) {
    u32 var_r0;
    u8 var_r6;

    var_r6 = 0;
    do {
        cs->sprDC.x = (s16) ((s32) cs->qUnk3C >> 8);
        cs->sprDC.y = (s16) ((s32) cs->qUnk40 >> 8);
        if (var_r6 != 0) {
            var_r0 = cs->sprDC.frameFlags & 0xFFFFFBFF;
        } else {
            var_r0 = cs->sprDC.frameFlags | 0x400;
        }
        cs->sprDC.frameFlags = var_r0;
        DisplaySprite(&cs->sprDC);
        var_r6 += 1;
    } while ((u32) var_r6 <= 1U);
    cs->sprB4.x = (s16) ((s32) cs->qUnk34 >> 8);
    cs->sprB4.y = (s16) ((s32) cs->qUnk38 >> 8);
    DisplaySprite(&cs->sprB4);
}

void sub_80A1110(CharacterSelectMP *cs) {
    Sprite *temp_r4;
    TileInfo2 *temp_r0;
    u32 var_r0;
    u8 temp_r1;
    u8 var_r0_2;
    u8 var_r6;

    var_r6 = 0;
    do {
        cs->spr12C.x = (s16) ((s32) cs->qNameTagPos[0].x >> 8);
        cs->spr12C.y = (s16) ((s32) cs->qNameTagPos[0].y >> 8);
        cs->spr12C.palId = 0;
        if (var_r6 != 0) {
            var_r0 = cs->spr12C.frameFlags | 0x400;
        } else {
            var_r0 = cs->spr12C.frameFlags & 0xFFFFFBFF;
        }
        cs->spr12C.frameFlags = var_r0;
        DisplaySprite(&cs->spr12C);
        var_r6 += 1;
    } while ((u32) var_r6 <= 1U);
    temp_r1 = cs->language;
    if ((u32) *cs->unk18 > 0xCU) {
        var_r0_2 = cs->listIndex[1];
    } else {
        var_r0_2 = cs->listIndex[0];
    }
    temp_r4 = &cs->spr104;
    temp_r0 = &gTileInfo_CharSelect3_NameTagNames[*(var_r0_2 + gCharSelect_DisplayOrder) + (((u32) ((0 - temp_r1) | temp_r1) >> 0x1F) * 8)];
    cs->spr104.anim = temp_r0->anim;
    cs->spr104.variant = temp_r0->variant;
    cs->spr104.x = (s16) ((s32) cs->qNameTagPos[0].x >> 8);
    cs->spr104.y = (s16) ((s32) cs->qNameTagPos[0].y >> 8);
    UpdateSpriteAnimation(temp_r4);
    DisplaySprite(temp_r4);
}

void sub_80A11B8(CharacterSelectMP *cs) {
    Sprite *temp_r4;
    TileInfo2 *temp_r0;
    u32 var_r0;
    u8 temp_r1;
    u8 var_r6;

    var_r6 = 0;
    do {
        cs->spr12C.x = (s16) ((s32) cs->qNameTagPos[1].x >> 8);
        cs->spr12C.y = (s16) ((s32) cs->qNameTagPos[1].y >> 8);
        cs->spr12C.palId = 1;
        if (var_r6 != 0) {
            var_r0 = cs->spr12C.frameFlags | 0x400;
        } else {
            var_r0 = cs->spr12C.frameFlags & 0xFFFFFBFF;
        }
        cs->spr12C.frameFlags = var_r0;
        DisplaySprite(&cs->spr12C);
        var_r6 += 1;
    } while ((u32) var_r6 <= 1U);
    temp_r1 = cs->language;
    temp_r4 = &cs->spr154;
    temp_r0 = &gTileInfo_CharSelect3_NameTagNames[(((u32) ((0 - temp_r1) | temp_r1) >> 0x1F) * 8) + *(cs->listIndex[0] + gCharSelect_DisplayOrder)];
    cs->spr154.anim = temp_r0->anim;
    cs->spr154.variant = temp_r0->variant;
    cs->spr154.x = (s16) ((s32) cs->qNameTagPos[1].x >> 8);
    cs->spr154.y = (s16) ((s32) cs->qNameTagPos[1].y >> 8);
    UpdateSpriteAnimation(temp_r4);
    DisplaySprite(temp_r4);
}

void sub_80A124C(CharacterSelectMP *cs) {
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

    if (((u32) cs->listIndex[1] > 4U) || ((u32) cs->listIndex[0] > 4U)) {
        if ((u32) gStageData.playerIndex > 1U) {
            cs->listIndex[1] = gUnknown_03001060.unk4C[1 & gStageData.playerIndex];
            var_r0 = gStageData.playerIndex;
        } else {
            cs->listIndex[1] = gUnknown_03001060.unk4C[gStageData.playerIndex];
            var_r0 = (1 & gStageData.playerIndex) + 2;
        }
        cs->listIndex[0] = *(var_r0 + gUnknown_03001060.unk4C);
    }
    if (cs->language != 0) {
        var_r1 = ((cs->listIndex[1] * 8) + cs->listIndex[0]) * 3;
        var_r0_2 = &gUnknown_080D8F95;
    } else {
        var_r1 = ((cs->listIndex[1] * 8) + cs->listIndex[0]) * 3;
        var_r0_2 = &gUnknown_080D8F1D;
    }
    temp_r7 = var_r1 + var_r0_2;
    if ((temp_r7->unk0 == 0) || (temp_r7->unk1 == 0) || (temp_r7->unk2 == 0)) {
        sub_802613C();
    }
    var_r6 = 0;
    temp_r4 = cs + 0x12C;
    do {
        temp_r4->x = 0x78;
        temp_r4->y = (s16) ((s32) cs->qNameTagPos[0].y >> 8);
        if (var_r6 != 0) {
            var_r0_3 = temp_r4->frameFlags | 0x400;
        } else {
            var_r0_3 = temp_r4->frameFlags & 0xFFFFFBFF;
        }
        temp_r4->frameFlags = var_r0_3;
        DisplaySprite(temp_r4);
        var_r6 += 1;
    } while ((u32) var_r6 <= 1U);
    temp_r4_2 = cs + 0x104;
    temp_r4_2->x = (s16) temp_r7->unk0;
    temp_r4_2->y = (s16) ((s32) cs->qNameTagPos[0].y >> 8);
    UpdateSpriteAnimation(temp_r4_2);
    DisplaySprite(temp_r4_2);
    temp_r4_3 = cs + 0x1A4;
    temp_r4_3->x = (s16) temp_r7->unk1;
    temp_r4_3->y = (s16) ((s32) cs->qNameTagPos[0].y >> 8);
    UpdateSpriteAnimation(temp_r4_3);
    DisplaySprite(temp_r4_3);
    temp_r4_4 = cs + 0x154;
    temp_r4_4->x = (s16) temp_r7->unk2;
    temp_r4_4->y = (s16) ((s32) cs->qNameTagPos[1].y >> 8);
    UpdateSpriteAnimation(temp_r4_4);
    DisplaySprite(temp_r4_4);
}

void sub_80A137C(CharacterSelectMP *cs) {
    gBgScrollRegs[1][0] = (s16) ((s32) cs->qUnk74 >> 8);
    gBgScrollRegs[1][1] = 0 - ((s32) cs->qUnk78 >> 8);
    gBgScrollRegs[0][0] = (s16) ((s32) cs->qUnk7C >> 8);
    gBgScrollRegs[0][1] = (s16) ((s32) cs->qUnk80 >> 8);
    gBgScrollRegs[2][0] = (s16) ((s32) cs->qUnk6C >> 8);
    gBgScrollRegs[2][1] = 0 - ((s32) cs->qUnk70 >> 8);
}

void TaskDestructor_80A13B0(Task *t) {

}

void Task_80A13B4(CharacterSelectMP *cs) {
    u8 *temp_r3;

    temp_r3 = cs->unk18;
    if (*temp_r3 == 0x22) {
        gCurTask->main = Task_80A14AC;
        return;
    }
    if (cs->unk3 == 0x25) {
        *temp_r3 = 0x26;
        gCurTask->main = Task_80A0D20;
    }
}

void Task_80A13F4(CharacterSelectMP *cs) {
    u8 *temp_r3;

    temp_r3 = cs->unk18;
    if (*temp_r3 == 0x22) {
        gCurTask->main = Task_80A14AC;
        return;
    }
    if (cs->unk3 == 0x25) {
        *temp_r3 = 0x26;
        TaskDestroy(gCurTask);
    }
}

void Task_80A1430(CharacterSelectMP *cs) {
    if (*cs->unk18 == 0x22) {
        gCurTask->main = Task_80A14AC;
        return;
    }
    sub_80A19C0(cs);
    sub_80A1A04(cs);
    sub_80A10B0(cs);
    sub_80A1110(cs);
    sub_80A11B8(cs);
    cs->qUnk4C = 0x7800;
    *cs->unk14 = 1;
    *cs->unk18 = 1;
    cs->unk3 = *cs->unk18;
    gCurTask->main = Task_809FEB0;
}

void Task_CallDestroy_80A1498(void) {
    TaskDestroy(gCurTask);
}

void Task_80A14AC(CharacterSelectMP *cs) {
    cs->qUnk4C = 0x13600;
    cs->qUnk54 = 0x13600;
    cs->unk3 = 0x1D;
    *cs->unk18 = 0x1D;
    cs->unk4 = 0;
    gCurTask->main = Task_CallDestroy_80A1498;
}

s32 sub_80A14E4(CharacterSelectMP *cs) {
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    u8 var_r2;

    var_r2 = 0;
    temp_r0 = cs->qUnk4C;
    if ((temp_r0 > 0x12BFF) || (temp_r0_2 = temp_r0 + 0xE00, cs->qUnk4C = temp_r0_2, (temp_r0_2 > 0x12BFF))) {
        cs->qUnk4C = 0x12C00;
        var_r2 = 1;
    }
    temp_r0_3 = cs->qUnk6C;
    if ((temp_r0_3 > 0x149FF) || (temp_r0_4 = temp_r0_3 + 0xE00, cs->qUnk6C = temp_r0_4, (temp_r0_4 > 0x149FF))) {
        cs->qUnk6C = -0x3C00;
        var_r2 += 1;
    }
    if (var_r2 != 2) {
        return 0;
    }
    return 1;
}

s32 sub_80A1540(CharacterSelectMP *cs) {
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    u8 var_r3;

    var_r3 = 0;
    temp_r0 = cs->qUnk4C;
    if ((temp_r0 <= 0xFFFFC400) || (temp_r0_2 = temp_r0 + 0xFFFFF200, cs->qUnk4C = temp_r0_2, (temp_r0_2 <= 0xFFFFC400))) {
        cs->qUnk4C = -0x3C00;
        var_r3 = 1;
    }
    temp_r0_3 = cs->qUnk6C;
    if ((temp_r0_3 <= 0xFFFFA600) || (temp_r0_4 = temp_r0_3 + 0xFFFFF200, cs->qUnk6C = temp_r0_4, (temp_r0_4 <= 0xFFFFA600))) {
        cs->qUnk6C = 0x12C00;
        var_r3 += 1;
    }
    if (var_r3 != 2) {
        return 0;
    }
    return 1;
}

s32 sub_80A1598(CharacterSelectMP *cs) {
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    u8 var_r3;

    var_r3 = 0;
    temp_r0 = cs->qUnk4C;
    if ((temp_r0 <= 0x7800) || (temp_r0_2 = temp_r0 + 0xFFFFF200, cs->qUnk4C = temp_r0_2, (temp_r0_2 <= 0x7800))) {
        cs->qUnk4C = 0x7800;
        var_r3 = 1;
    }
    temp_r0_3 = cs->qUnk6C;
    if ((temp_r0_3 <= 0x7800) || (temp_r0_4 = temp_r0_3 + 0xFFFFF200, cs->qUnk6C = temp_r0_4, (temp_r0_4 <= 0x7800))) {
        cs->qUnk6C = 0x7800;
        var_r3 += 1;
    }
    if (var_r3 != 2) {
        return 0;
    }
    return 1;
}

s32 sub_80A15E8(CharacterSelectMP *cs) {
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    u8 var_r3;

    var_r3 = 0;
    temp_r0 = cs->qUnk4C;
    if ((temp_r0 > 0x77FF) || (temp_r0_2 = temp_r0 + 0xE00, cs->qUnk4C = temp_r0_2, (temp_r0_2 > 0x77FF))) {
        cs->qUnk4C = 0x7800;
        var_r3 = 1;
    }
    temp_r0_3 = cs->qUnk6C;
    if ((temp_r0_3 >= 0x7800) || (temp_r0_4 = temp_r0_3 + 0xE00, cs->qUnk6C = temp_r0_4, (temp_r0_4 >= 0x7800))) {
        cs->qUnk6C = 0x7800;
        var_r3 += 1;
    }
    if (var_r3 != 2) {
        return 0;
    }
    return 1;
}

s32 sub_80A163C(CharacterSelectMP *cs) {
    s32 temp_r0;
    s32 temp_r0_2;

    temp_r0 = cs->qUnk4C;
    if ((temp_r0 <= 0xB400) || (temp_r0_2 = temp_r0 + 0xFFFFF740, cs->qUnk4C = temp_r0_2, (temp_r0_2 <= 0xB3))) {
        cs->qUnk4C = 0xB400;
        return 1;
    }
    return 0;
}

s32 sub_80A1668(CharacterSelectMP *cs) {
    s32 temp_r0;
    s32 temp_r0_2;

    temp_r0 = cs->qUnk54;
    if ((temp_r0 <= 0x3C00) || (temp_r0_2 = temp_r0 + 0xFFFFF740, cs->qUnk54 = temp_r0_2, (temp_r0_2 <= 0x3B))) {
        cs->qUnk54 = 0x3C00;
        return 1;
    }
    return 0;
}

s32 sub_80A1694(CharacterSelectMP *cs) {
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    u8 var_r2;

    var_r2 = 0;
    temp_r0 = cs->qUnk4C;
    if ((temp_r0 > 0x12BFF) || (temp_r0_2 = temp_r0 + 0x8C0, cs->qUnk4C = temp_r0_2, (temp_r0_2 > 0x12BFF))) {
        cs->qUnk4C = 0x12C00;
        var_r2 = 1;
    }
    temp_r0_3 = cs->qUnk6C;
    if ((temp_r0_3 > 0x12BFF) || (temp_r0_4 = temp_r0_3 + 0x840, cs->qUnk6C = temp_r0_4, (temp_r0_4 > 0x12BFF))) {
        cs->qUnk6C = 0x12C00;
        var_r2 += 1;
    }
    if (var_r2 != 2) {
        return 0;
    }
    return 1;
}

s32 sub_80A16EC(CharacterSelectMP *cs) {
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    u8 var_r3;

    var_r3 = 0;
    temp_r0 = cs->qUnk4C;
    if ((temp_r0 <= 0xB400) || (temp_r0_2 = temp_r0 + 0xFFFFF740, cs->qUnk4C = temp_r0_2, (temp_r0_2 <= 0xB400))) {
        cs->qUnk4C = 0xB400;
        var_r3 = 1;
    }
    temp_r0_3 = cs->qUnk6C;
    if ((temp_r0_3 <= 0xB400) || (temp_r0_4 = temp_r0_3 + 0xFFFFF7C0, cs->qUnk6C = temp_r0_4, (temp_r0_4 <= 0xB400))) {
        cs->qUnk6C = 0xB400;
        var_r3 += 1;
    }
    if (var_r3 != 2) {
        return 0;
    }
    return 1;
}

s32 sub_80A1740(CharacterSelectMP *cs, s32 param1) {
    s32 temp_r0;
    s32 temp_r0_2;
    u16 temp_r1;

    temp_r1 = param1 << 8;
    temp_r0 = cs->qUnk54;
    if ((temp_r0 >= (s32) temp_r1) || (temp_r0_2 = temp_r0 + 0x300, cs->qUnk54 = temp_r0_2, (temp_r0_2 > (s32) temp_r1))) {
        cs->qUnk54 = (s32) temp_r1;
        return 1;
    }
    return 0;
}

s32 sub_80A1768(CharacterSelectMP *cs) {
    s32 temp_r1;
    s32 temp_r1_2;

    temp_r1 = cs->qUnk4C;
    if ((temp_r1 <= 0x9600) || (temp_r1_2 = temp_r1 + 0xFFFFFD00, cs->qUnk4C = temp_r1_2, (temp_r1_2 <= 0x95FF))) {
        cs->qUnk4C = 0x9600;
        return 1;
    }
    return 0;
}

s32 sub_80A1798(CharacterSelectMP *cs) {
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r2;
    u8 var_r3;

    var_r3 = 0;
    temp_r0 = cs->qUnk74;
    if ((temp_r0 > 0x104FF) || (temp_r0_2 = temp_r0 + 0x600, cs->qUnk74 = temp_r0_2, (temp_r0_2 > 0x104FF))) {
        cs->qUnk74 = 0x10500;
        var_r3 = 1;
    }
    temp_r2 = cs->qUnk7C;
    if (temp_r2 <= 0x77FF) {
        temp_r0_3 = temp_r2 + 0x7E0;
        cs->qUnk7C = temp_r0_3;
        if (temp_r0_3 > 0x7800) {
            cs->qUnk7C = 0x7800;
            goto block_7;
        }
    } else {
        cs->qUnk7C = 0x7800;
block_7:
        var_r3 += 1;
    }
    if (var_r3 != 2) {
        return 0;
    }
    return 1;
}

s32 sub_80A17FC(CharacterSelectMP *cs) {
    s32 temp_r1;
    s32 temp_r1_2;

    temp_r1 = cs->qUnk6C;
    if ((temp_r1 <= 0xB400) || (temp_r1_2 = temp_r1 + 0xFFFFF7C0, cs->qUnk6C = temp_r1_2, (temp_r1_2 <= 0xB3FF))) {
        cs->qUnk6C = 0xB400;
        return 1;
    }
    return 0;
}

s32 sub_80A182C(CharacterSelectMP *cs) {
    s32 temp_r0;
    s32 temp_r2;

    temp_r2 = cs->qUnk6C;
    if ((temp_r2 > 0xC8FF) || (temp_r0 = temp_r2 + 0x300, cs->qUnk6C = temp_r0, (temp_r0 > 0xC8FF))) {
        cs->qUnk6C = 0xC900;
        return 1;
    }
    return 0;
}

s32 sub_80A185C(CharacterSelectMP *cs) {
    s32 temp_r0;
    s32 temp_r0_2;

    temp_r0 = cs->qUnk74;
    if ((temp_r0 <= 0xC900) || (temp_r0_2 = temp_r0 + 0xFFFFFD00, cs->qUnk74 = temp_r0_2, (temp_r0_2 <= 0xC900))) {
        cs->qUnk74 = 0xC900;
        return 1;
    }
    return 0;
}

s32 sub_80A1888(CharacterSelectMP *cs) {
    s32 temp_r1;
    s32 temp_r1_2;

    temp_r1 = cs->qNameTagPos[0].y;
    if (temp_r1 <= 0x9100) {
        cs->qNameTagPos[0].y = 0x9100;
        return 1;
    }
    temp_r1_2 = temp_r1 + 0xFFFFFA00;
    cs->qNameTagPos[0].y = temp_r1_2;
    if (temp_r1_2 <= 0x90FF) {
        cs->qNameTagPos[0].y = 0x9100;
    }
    return 0;
}

void sub_80A18B8(CharacterSelectMP *cs) {
    s32 temp_r2;

    temp_r2 = cs->qNameTagPos[0].y;
    if (temp_r2 > 0xB3FF) {
        cs->qNameTagPos[0].y = 0xB400;
        return;
    }
    cs->qNameTagPos[0].y = temp_r2 + 0x600;
}

void sub_80A18E0(CharacterSelectMP *cs) {
    s32 temp_r2;
    s32 var_r0;

    temp_r2 = cs->qUnk44;
    if (temp_r2 <= 0x4FF) {
        var_r0 = temp_r2 + 0x40;
    } else {
        var_r0 = 0;
    }
    cs->qUnk44 = var_r0;
    cs->qUnk48 = 0x5A00;
}

s32 sub_80A1908(CharacterSelectMP *cs) {
    s32 temp_r1;
    s32 temp_r1_2;

    temp_r1 = cs->qNameTagPos[1].y;
    if ((temp_r1 <= 0x9100) || (temp_r1_2 = temp_r1 + 0xFFFFFA00, cs->qNameTagPos[1].y = temp_r1_2, (temp_r1_2 <= 0x90FF))) {
        cs->qNameTagPos[1].y = 0x9100;
        return 1;
    }
    return 0;
}

s32 sub_80A1938(CharacterSelectMP *cs) {
    s32 temp_r0;
    s32 temp_r0_2;

    temp_r0 = cs->qNameTagPos[1].y;
    if ((temp_r0 > 0xB3FF) || (temp_r0_2 = temp_r0 + 0x600, cs->qNameTagPos[1].y = temp_r0_2, (temp_r0_2 > 0xB3FF))) {
        cs->qNameTagPos[1].y = 0xB400;
        return 1;
    }
    return 0;
}

s32 sub_80A1968(CharacterSelectMP *cs) {
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    u8 var_r3;

    var_r3 = 0;
    temp_r0 = cs->qNameTagPos[0].x;
    if ((temp_r0 > 0x77FF) || (temp_r0_2 = temp_r0 + 0x300, cs->qNameTagPos[0].x = temp_r0_2, (temp_r0_2 > 0x77FF))) {
        cs->qNameTagPos[0].x = 0x7800;
        var_r3 = 1;
    }
    temp_r0_3 = cs->qNameTagPos[1].x;
    if ((temp_r0_3 <= 0x7800) || (temp_r0_4 = temp_r0_3 + 0xFFFFFD00, cs->qNameTagPos[1].x = temp_r0_4, (temp_r0_4 <= 0x7800))) {
        cs->qNameTagPos[1].x = 0x7800;
        var_r3 += 1;
    }
    if (var_r3 != 2) {
        return 0;
    }
    return 1;
}

void sub_80A19C0(CharacterSelectMP *cs) {
    u16 temp_r0;

    temp_r0 = cs->unkA + 0xC0;
    cs->unkA = temp_r0;
    sa2__sub_8003EE4((u16) ((u32) (temp_r0 << 0x10) >> 0x16), (s16) ((s32) (cs->qBgCharNameScale << 0x10) >> 0x14), 0x100, 0x40, 0x40, (s16) ((s32) (cs->qUnk6C << 8) >> 0x10), (s16) ((s32) (cs->qUnk70 << 8) >> 0x10), gBgAffineRegs);
}

void sub_80A1A04(CharacterSelectMP *cs) {
    gBgScrollRegs[1][0] = (s16) ((s32) cs->qUnk74 >> 8);
    gBgScrollRegs[1][1] = 0 - ((s32) cs->qUnk78 >> 8);
    gBgScrollRegs[0][0] = (s16) ((s32) cs->qUnk7C >> 8);
    gBgScrollRegs[0][1] = (s16) ((s32) cs->qUnk80 >> 8);
}

void sub_80A1A28(CharacterSelectMP *cs) {
    cs->spr1CC.x = (s16) ((s32) cs->qUnk4C >> 8);
    cs->spr1CC.y = (s16) ((s32) cs->qUnk50 >> 8);
    DisplaySprite(&cs->spr1CC);
}
#endif
