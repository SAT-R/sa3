#include "global.h"
#include "core.h"
#include "flags.h"
#include "code_z_1.h" // CopyObjPaletteMasked
#include "lib/m4a/m4a.h"
#include "multi_sio_stuff.h" // gUnknown_03001060
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
s32 sub_80A1740(CharacterSelectMP *cs, u8 param1);
s32 sub_80A1768(CharacterSelectMP *cs);
s32 sub_80A1798(CharacterSelectMP *cs);
s32 sub_80A17FC(CharacterSelectMP *cs);
s32 sub_80A1908(CharacterSelectMP *cs);
s32 sub_80A182C(CharacterSelectMP *cs);
s32 sub_80A185C(CharacterSelectMP *cs);
s32 sub_80A1888(CharacterSelectMP *cs);
s32 sub_80A18B8(CharacterSelectMP *cs);
s32 sub_80A18E0(CharacterSelectMP *cs);
s32 sub_80A1938(CharacterSelectMP *cs);
s32 sub_80A1968(CharacterSelectMP *cs);
void sub_80A19C0(CharacterSelectMP *cs);
void sub_80A1A04(CharacterSelectMP *cs);
void sub_80A1A28(CharacterSelectMP *cs);
void sub_80A137C(CharacterSelectMP *cs);
void sub_80A10B0(CharacterSelectMP *cs);
void sub_80A1110(CharacterSelectMP *cs);
void sub_80A11B8(CharacterSelectMP *cs);
void sub_80A124C(CharacterSelectMP *cs);

extern void sub_809BFE8(u8 arg0);

extern void *CreateSomeTask_809BF3C(void *param0, void *param1, void *param2, void *param3, void *tiles);
extern void sub_802613C(void);

extern u8 gUnknown_030010AC[4];
extern const u8 gUnknown_080D8F95[NUM_CHARACTERS * 8][3];
extern const u8 gUnknown_080D8F1D[NUM_CHARACTERS * 8][3];
extern const u16 gAnnouncerSelect1st[NUM_CHARACTERS];
extern const u16 gAnnouncerSelect2nd[NUM_CHARACTERS];
extern const u16 gCharacterSelectedVoices[NUM_CHARACTERS];
extern const u8 gCharacterSelectOrderLUT[NUM_CHARACTERS];
extern const ColorRaw gUnknown_08E2EE50[10][16];
extern const ColorRaw gUnknown_08E2EEF0[16];

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
            const ECharacters *order = gCharSelect_DisplayOrder;
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
        const ECharacters *order = gCharSelect_DisplayOrder;
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

void sub_80A0A08(CharacterSelectMP *cs)
{
    Sprite *s;
    Sprite *temp_r7;
    s32 var_r4 = 0;
    u8 temp_r4;
    u8 temp_r5;

    s = &cs->spr12C;
    s->anim = gUnknown_080D8F00[0].anim;
    s->variant = gUnknown_080D8F00[0].variant;
    s->prevVariant = 0xFF;
    s->x = (s16)((s32)cs->qNameTagPos[0].x >> 8);
    s->y = I(cs->qNameTagPos[0].y);
    s->oamFlags = 0x40;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    temp_r7 = &cs->sprB4;
    temp_r4 = gCharSelect_DisplayOrder[cs->listIndex[1]];
    temp_r5 = gCharSelect_DisplayOrder[cs->listIndex[0]];
    if (((u32)temp_r4 > 4U) || ((u32)temp_r5 > 4U)) {
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

void Task_80A0ADC(void)
{
    CharacterSelectMP *cs = TASK_DATA(gCurTask);
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
        gBldRegs.bldY = (u16)((u16)cs->unk8 >> 8);
        cs->unk8 -= Q(1);
        return;
    }
    cs->unk6 = 1;
    gBldRegs.bldY = 0;
    gCurTask->main = Task_80A0B9C;
}

void Task_80A0B9C(void)
{
    CharacterSelectMP *cs = TASK_DATA(gCurTask);
    u16 temp_r0;
    u16 temp_r0_2;
    u8 charPartner = gCharSelect_DisplayOrder[cs->listIndex[CS_CHARID_PARTNER]];
    u8 charPlayer = gCharSelect_DisplayOrder[cs->listIndex[CS_CHARID_PLAYER]];

    if (*cs->unk18 == 0x22) {
        gCurTask->main = Task_80A14AC;
        return;
    }
    sub_80A19C0(cs);
    sub_80A10B0(cs);
    sub_80A124C(cs);
    if (cs->unk4 == 0) {
        m4aSongNumStart(gAnnouncerSelect1st[gCharacterSelectOrderLUT[charPartner]]);
    } else if (cs->unk4 == 60) {
        m4aSongNumStart(VOICE__ANNOUNCER__AND);
    } else if (cs->unk4 == 90) {
        m4aSongNumStart(gAnnouncerSelect2nd[gCharacterSelectOrderLUT[charPlayer]]);
    }

    if (++cs->unk4 >= 120) {
        gCurTask->main = Task_80A0C5C;
    }
}

void Task_80A0C5C(void)
{
    CharacterSelectMP *cs = TASK_DATA(gCurTask);
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
    if ((u32)gBldRegs.bldY <= 0xFU) {
        gBldRegs.bldY = (u16)((u16)cs->unk8 >> 8);
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

void Task_80A0D20(void)
{
    CharacterSelectMP *cs = TASK_DATA(gCurTask);
    u8 i;

    if (*cs->unk18 == 0x22) {
        gCurTask->main = Task_80A14AC;
        return;
    }

    for (i = 0; i < NUM_MULTI_PLAYER_CHARS; i++) {
        // NOTE(Jace): This is so stupid, but I cannot match it otherwise...
        Player *p = gPlayers;
        p += i;
        p->charFlags.character = gUnknown_030010AC[i];
    }

    TasksDestroyAll();
    PAUSE_BACKGROUNDS_QUEUE();
    gBgSpritesCount = 0;
    PAUSE_GRAPHICS_QUEUE();
    sub_809BFE8(0);
}

void sub_80A0DC8(CharacterSelectMP *cs)
{
    Background *bg2 = &cs->bg274;
    u8 temp_r6 = gCharSelect_DisplayOrder[cs->listIndex[0]];
    s32 var_r5 = 0;

    bg2->graphics.dest = BG_CHAR_ADDR(2);
    bg2->graphics.anim = 0;
    bg2->layoutVram = BG_SCREEN_ADDR(27);
    bg2->unk18 = 0;
    bg2->unk1A = 0;
    bg2->tilemapId = gCharSelect3_Tilemaps[temp_r6 + 5];
    bg2->unk1E = 0;
    bg2->unk20 = 0;
    bg2->unk22 = 0;
    bg2->unk24 = 0;
    bg2->targetTilesX = 0x10;
    bg2->targetTilesY = 0x10;
    bg2->paletteOffset = 0;
    bg2->flags = 6;
    DrawBackground(bg2);
    cs->qUnk50 = 0x5000;
    if ((u32)*cs->unk18 <= 0xBU) {
        var_r5 = 6;
    } else {
        var_r5 = 7;
    }
    if (gFlags & FLAGS_20000) {
        CopyObjPaletteMasked(gUnknown_08E2EE50[temp_r6], var_r5 * PALETTE_LEN_4BPP, PALETTE_LEN_4BPP);
    } else {
        DmaCopy16(3, &gUnknown_08E2EE50[temp_r6], &gObjPalette[var_r5 * PALETTE_LEN_4BPP], PALETTE_LEN_4BPP * sizeof(ColorRaw));
        gFlags |= FLAGS_UPDATE_SPRITE_PALETTES;
    }
    gFlags |= FLAGS_UPDATE_SPRITE_PALETTES;
}

void sub_80A0EA8(CharacterSelectMP *cs)
{
    u8 temp_r1;

    temp_r1 = gCharSelect_DisplayOrder[cs->listIndex[0]];
    if (0x20000 & gFlags) {
        CopyObjPaletteMasked(gUnknown_08E2EE50[temp_r1], 0x70U, 16);
    } else {
        DmaCopy16(3, gUnknown_08E2EE50[temp_r1], &gObjPalette[0x70], 16 * sizeof(ColorRaw));
        gFlags |= FLAGS_UPDATE_SPRITE_PALETTES;
    }
    gFlags |= FLAGS_UPDATE_SPRITE_PALETTES;
    gDispCnt = DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP | DISPCNT_MODE_1;
    gBgSprites_Unknown1[1] = 0;
    gBgSprites_Unknown2[1][0] = 0;
    gBgSprites_Unknown2[1][1] = 0;
    gBgSprites_Unknown2[1][2] = 0xFF;
    gBgSprites_Unknown2[1][3] = 0x40;
    gBgCntRegs[1] = BGCNT_SCREENBASE(3) | BGCNT_CHARBASE(3) | BGCNT_16COLOR | BGCNT_TXT256x256 | BGCNT_PRIORITY(2);
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;

    {
        Background *bg1 = &cs->bg234;
        u8 index = gCharSelect_DisplayOrder[cs->listIndex[CS_CHARID_PARTNER]];
        bg1->graphics.dest = BG_CHAR_ADDR(3);
        bg1->graphics.anim = 0;
        bg1->layoutVram = BG_SCREEN_ADDR(3);
        bg1->unk18 = 0;
        bg1->unk1A = 0;
        bg1->tilemapId = gCharSelect3_Tilemaps[CSTMI_TXTMAP_NAMES + index];
        bg1->unk1E = 0;
        bg1->unk20 = 0;
        bg1->unk22 = 0;
        bg1->unk24 = 0;
        bg1->targetTilesX = 0x10;
        bg1->targetTilesY = 0x10;
        bg1->paletteOffset = 0;
        bg1->flags = 1;
        DrawBackground(bg1);
    }
    gBgCntRegs[2] = 0x1B89;
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;
    {
        Background *bg2 = &cs->bg274;
        u8 index = gCharSelect_DisplayOrder[cs->listIndex[CS_CHARID_PLAYER]];
        bg2->graphics.dest = BG_CHAR_ADDR(2);
        bg2->graphics.anim = 0;
        bg2->layoutVram = BG_SCREEN_ADDR(27);
        bg2->unk18 = 0;
        bg2->unk1A = 0;
        bg2->tilemapId = gCharSelect3_Tilemaps[5 + index];
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
}

void sub_80A1030(CharacterSelectMP *cs)
{
    s16 var_r0;
    u32 var_r0_2;
    u8 var_r6;
    Sprite *s = &cs->spr8C;
    u32 max = 2;
    s32 var_r1 = (*cs->unk18 > 0xDU) ? 0xB4 : 0x78;
    s32 r7, r8;

    for (var_r6 = 0, r8 = -40 + var_r1, r7 = +40 + var_r1; var_r6 < max; var_r6++) {
        if (var_r6 != 0) {
            s->x = r8 - I(cs->qUnk44);
            s->y = I(cs->qUnk48);
        } else {
            s->x = r7 + I(cs->qUnk44);
            s->y = I(cs->qUnk48);
        }
        if (var_r6 != 0) {
            s->frameFlags |= 0x400;
        } else {
            s->frameFlags &= ~0x400;
        }
        DisplaySprite(s);
    }
}

void sub_80A10B0(CharacterSelectMP *cs)
{
    u32 var_r0;
    u8 var_r6;
    Sprite *s;

    for (var_r6 = 0; var_r6 < 2; var_r6++) {
        s = &cs->sprDC;
        s->x = (s16)((s32)cs->qUnk3C >> 8);
        s->y = (s16)((s32)cs->qUnk40 >> 8);
        if (var_r6 != 0) {
            s->frameFlags &= ~0x400;
        } else {
            s->frameFlags |= 0x400;
        }
        DisplaySprite(s);
    }

    {
        s = &cs->sprB4;
        s->x = (s16)((s32)cs->qUnk34 >> 8);
        s->y = (s16)((s32)cs->qUnk38 >> 8);
        DisplaySprite(s);
    }
}

void sub_80A1110(CharacterSelectMP *cs)
{
    Sprite *temp_r4;
    const TileInfo2 *temp_r0;
    u32 var_r0;
    u8 language;
    u8 var_r0_2;
    u8 var_r6;

    for (var_r6 = 0; var_r6 < 2; var_r6++) {
        Sprite *s = &cs->spr12C;
        s->x = (s16)((s32)cs->qNameTagPos[0].x >> 8);
        s->y = I(cs->qNameTagPos[0].y);
        s->palId = 0;
        if (var_r6 != 0) {
            s->frameFlags |= 0x400;
        } else {
            s->frameFlags &= ~0x400;
        }
        DisplaySprite(s);
    }

    language = (cs->language == 0) ? 0 : 1;
    if ((u32)*cs->unk18 > 0xCU) {
        var_r0_2 = gCharSelect_DisplayOrder[cs->listIndex[1]];
    } else {
        var_r0_2 = gCharSelect_DisplayOrder[cs->listIndex[0]];
    }
    temp_r4 = &cs->spr104;
    temp_r4->anim = gTileInfo_CharSelect3_NameTagNames[var_r0_2 + (language * 8)].anim;
    temp_r4->variant = gTileInfo_CharSelect3_NameTagNames[var_r0_2 + (language * 8)].variant;
    temp_r4->x = (s16)((s32)cs->qNameTagPos[0].x >> 8);
    temp_r4->y = I(cs->qNameTagPos[0].y);
    UpdateSpriteAnimation(temp_r4);
    DisplaySprite(temp_r4);
}

void sub_80A11B8(CharacterSelectMP *cs)
{
    TileInfo2 *temp_r0;
    u32 var_r0;
    u8 temp_r1;
    u8 var_r6;
    u8 language;

    u8 var_r0_2;

    for (var_r6 = 0; var_r6 < 2; var_r6++) {
        Sprite *s = &cs->spr12C;
        s->x = (s16)((s32)cs->qNameTagPos[1].x >> 8);
        s->y = I(cs->qNameTagPos[1].y);
        s->palId = 1;
        if (var_r6 != 0) {
            s->frameFlags |= 0x400;
        } else {
            s->frameFlags &= ~0x400;
        }
        DisplaySprite(s);
    }

    language = (cs->language == 0) ? 0 : 1;
    var_r0_2 = gCharSelect_DisplayOrder[cs->listIndex[0]];
    temp_r1 = cs->language;

    {
        Sprite *s = &cs->spr154;
        s->anim = gTileInfo_CharSelect3_NameTagNames[var_r0_2 + (language * 8)].anim;
        s->variant = gTileInfo_CharSelect3_NameTagNames[var_r0_2 + (language * 8)].variant;
        s->x = (s16)((s32)cs->qNameTagPos[1].x >> 8);
        s->y = I(cs->qNameTagPos[1].y);
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void sub_80A124C(CharacterSelectMP *cs)
{
    Sprite *temp_r4;
    u8 var_r6;
    const u8 *temp_r7;
    u8 listIndexPlayer = cs->listIndex[CS_CHARID_PLAYER];
    u8 listIndexPartner = cs->listIndex[CS_CHARID_PARTNER];

    if ((listIndexPartner > 4U) || (listIndexPlayer > 4U)) {
        if (gStageData.playerIndex > 1U) {
            cs->listIndex[1] = gUnknown_03001060.unk4C[(gStageData.playerIndex & 1) + 0];
            cs->listIndex[0] = gUnknown_03001060.unk4C[gStageData.playerIndex];
        } else {
            cs->listIndex[1] = gUnknown_03001060.unk4C[gStageData.playerIndex];
            cs->listIndex[0] = gUnknown_03001060.unk4C[(gStageData.playerIndex & 1) + 2];
        }
    }
    if (cs->language != 0) {
        temp_r7 = gUnknown_080D8F95[(cs->listIndex[1] * 8) + cs->listIndex[0]];
    } else {
        temp_r7 = gUnknown_080D8F1D[(cs->listIndex[1] * 8) + cs->listIndex[0]];
    }
    if ((temp_r7[0] == 0) || (temp_r7[1] == 0) || (temp_r7[2] == 0)) {
        sub_802613C();
    }
    for (var_r6 = 0; var_r6 < 2; var_r6++) {
        temp_r4 = &cs->spr12C;
        temp_r4->x = 0x78;
        temp_r4->y = I(cs->qNameTagPos[0].y);
        if (var_r6 != 0) {
            temp_r4->frameFlags |= 0x400;
        } else {
            temp_r4->frameFlags &= ~0x400;
        }
        DisplaySprite(temp_r4);
    }

    {
        Sprite *s = &cs->spr104;
        s->x = (s16)temp_r7[0];
        s->y = I(cs->qNameTagPos[0].y);
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
    {
        Sprite *s = &cs->spr1A4;
        s->x = (s16)temp_r7[1];
        s->y = I(cs->qNameTagPos[0].y);
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
    {
        Sprite *s = &cs->spr154;
        s->x = (s16)temp_r7[2];
        s->y = I(cs->qNameTagPos[1].y);
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void sub_80A137C(CharacterSelectMP *cs)
{
    gBgScrollRegs[1][0] = +I(cs->qUnk74);
    gBgScrollRegs[1][1] = -I(cs->qUnk78);
    gBgScrollRegs[0][0] = +I(cs->qUnk7C);
    gBgScrollRegs[0][1] = +I(cs->qUnk80);
    gBgScrollRegs[2][0] = +I(cs->qUnk6C);
    gBgScrollRegs[2][1] = -I(cs->qUnk70);
}

void TaskDestructor_80A13B0(Task *t) { }

void Task_80A13B4(void)
{
    CharacterSelectMP *cs = TASK_DATA(gCurTask);

    if (*cs->unk18 == 0x22) {
        gCurTask->main = Task_80A14AC;
    } else if (cs->unk3 == 0x25) {
        *cs->unk18 = 0x26;
        gCurTask->main = Task_80A0D20;
    }
}

void Task_80A13F4(void)
{
    CharacterSelectMP *cs = TASK_DATA(gCurTask);

    if (*cs->unk18 == 0x22) {
        gCurTask->main = Task_80A14AC;
    } else if (cs->unk3 == 0x25) {
        *cs->unk18 = 0x26;
        TaskDestroy(gCurTask);
    }
}

void Task_80A1430(void)
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
    cs->qUnk4C = 0x7800;
    *cs->unk14 = 1;
    *cs->unk18 = 1;
    cs->unk3 = *cs->unk18;
    gCurTask->main = Task_809FEB0;
}

void Task_CallDestroy_80A1498(void) { TaskDestroy(gCurTask); }

void Task_80A14AC(void)
{
    CharacterSelectMP *cs = TASK_DATA(gCurTask);
    cs->qUnk4C = Q(0x136);
    cs->qUnk54 = Q(0x136);
    cs->unk3 = 0x1D;
    *cs->unk18 = 0x1D;
    cs->unk4 = 0;
    gCurTask->main = Task_CallDestroy_80A1498;
}

s32 sub_80A14E4(CharacterSelectMP *cs)
{
    s32 temp_r0_2;
    s32 temp_r0_4;
    u8 var_r2;

    var_r2 = 0;
    if (cs->qUnk4C >= Q(300)) {
        cs->qUnk4C = Q(300);
        var_r2 += 1;
    } else {
        cs->qUnk4C += Q(14);
        if (cs->qUnk4C >= Q(300)) {
            cs->qUnk4C = Q(300);
            var_r2 += 1;
        }
    }

    if (cs->qUnk6C < Q(330)) {
        cs->qUnk6C += Q(14);
    }

    if (cs->qUnk6C >= Q(330)) {
        cs->qUnk6C = -Q(60);
        var_r2 += 1;
    }

    if (var_r2 == 2) {
        return 1;
    } else {
        return 0;
    }
}

s32 sub_80A1540(CharacterSelectMP *cs)
{
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    u8 var_r3;

    var_r3 = 0;
    if ((cs->qUnk4C <= -Q(60)) || (temp_r0_2 = cs->qUnk4C + -Q(14), cs->qUnk4C = temp_r0_2, (temp_r0_2 <= -Q(60)))) {
        cs->qUnk4C = -0x3C00;
        var_r3 += 1;
    }
    temp_r0_3 = cs->qUnk6C;
    if ((temp_r0_3 <= -Q(90)) || (temp_r0_4 = temp_r0_3 + -Q(14), cs->qUnk6C = temp_r0_4, (temp_r0_4 <= -Q(90)))) {
        cs->qUnk6C = Q(300);
        var_r3 += 1;
    }
    if (var_r3 == 2) {
        return 1;
    }
    return 0;
}

// TODO: Fake-match!
s32 sub_80A1598(CharacterSelectMP *cs)
{
    u8 var_r3 = 0;
    s32 max;

    if (cs->qUnk4C <= 0x7800) {
        cs->qUnk4C = 0x7800;
        var_r3 += 1;
    } else {
        cs->qUnk4C -= Q(14);
        if (cs->qUnk4C <= 0x7800) {
            cs->qUnk4C = 0x7800;
            var_r3 += 1;
        }
    }
    {
#ifndef NON_MATCHING
        register s32 r0 asm("r0");
        asm("mov %0, #120" : "=r"(r0));
#else
        s32 r0 = 120;
#endif
        max = Q(r0);
        r0 = cs->qUnk6C;
        if (r0 > max) {
            cs->qUnk6C -= Q(14);
            if (cs->qUnk6C <= max) {
                cs->qUnk6C = max;
                var_r3 += 1;
            }
        } else {
            cs->qUnk6C = max;
            var_r3 += 1;
        }
        if (var_r3 == 2) {
            return 1;
        } else {
            return 0;
        }
    }
}

// TODO: Fake-match!
s32 sub_80A15E8(CharacterSelectMP *cs)
{
    u8 var_r3 = 0;

    if (cs->qUnk4C >= 0x7800) {
        cs->qUnk4C = 0x7800;
        var_r3 += 1;
    } else {
        cs->qUnk4C += 0xE00;
        if (cs->qUnk4C >= 0x7800) {
            cs->qUnk4C = 0x7800;
            var_r3 += 1;
        }
    }

    {
#ifndef NON_MATCHING
        s32 r0;
        s32 max;
        asm("mov %0, #120" : "=r"(r0));
#else
        s32 r0 = 120;
        s32 max;
#endif
        max = Q(r0);
        if (cs->qUnk6C < max) {
            cs->qUnk6C += 0xE00;
            if (cs->qUnk6C >= max) {
                cs->qUnk6C = max;
                var_r3 += 1;
            }
        } else {
            cs->qUnk6C = max;
            var_r3 += 1;
        }
    }
    if (var_r3 == 2) {
        return 1;
    }
    return 0;
}

s32 sub_80A163C(CharacterSelectMP *cs)
{
    s32 temp_r0;
    s32 temp_r0_2;

    temp_r0 = cs->qUnk4C;
    if ((temp_r0 <= 0xB400) || (temp_r0_2 = temp_r0 + 0xFFFFF740, cs->qUnk4C = temp_r0_2, (temp_r0_2 <= 0xB3))) {
        cs->qUnk4C = 0xB400;
        return 1;
    }
    return 0;
}

s32 sub_80A1668(CharacterSelectMP *cs)
{
    s32 temp_r0;
    s32 temp_r0_2;

    temp_r0 = cs->qUnk54;
    if ((temp_r0 <= 0x3C00) || (temp_r0_2 = temp_r0 + 0xFFFFF740, cs->qUnk54 = temp_r0_2, (temp_r0_2 <= 0x3B))) {
        cs->qUnk54 = 0x3C00;
        return 1;
    }
    return 0;
}

s32 sub_80A1694(CharacterSelectMP *cs)
{
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    u8 var_r2 = 0;

    if (cs->qUnk4C >= Q(300)) {
        cs->qUnk4C = Q(300);
        var_r2 += 1;
    } else {
        cs->qUnk4C += 0x8C0;
        if (cs->qUnk4C >= Q(300)) {
            cs->qUnk4C = Q(300);
            var_r2 += 1;
        }
    }
    if ((cs->qUnk6C >= Q(300)) || (temp_r0_4 = cs->qUnk6C + 0x840, cs->qUnk6C = temp_r0_4, (temp_r0_4 >= Q(300)))) {
        cs->qUnk6C = Q(300);
        var_r2 += 1;
    }
    if (var_r2 == 2) {
        return 1;
    }
    return 0;
}

s32 sub_80A16EC(CharacterSelectMP *cs)
{
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
    if (var_r3 == 2) {
        return 1;
    }
    return 0;
}

s32 sub_80A1740(CharacterSelectMP *cs, u8 param1)
{
    s32 temp_r0_2;

    if ((cs->qUnk54 >= Q(param1)) || (temp_r0_2 = cs->qUnk54 + 0x300, cs->qUnk54 = temp_r0_2, (temp_r0_2 > Q(param1)))) {
        cs->qUnk54 = Q(param1);
        return 1;
    }
    return 0;
}

s32 sub_80A1768(CharacterSelectMP *cs)
{
    s32 temp_r1;
    s32 temp_r1_2;

    temp_r1 = cs->qUnk4C;
    if ((temp_r1 <= 0x9600) || (temp_r1_2 = temp_r1 + 0xFFFFFD00, cs->qUnk4C = temp_r1_2, (temp_r1_2 <= 0x95FF))) {
        cs->qUnk4C = 0x9600;
        return 1;
    }
    return 0;
}

s32 sub_80A1798(CharacterSelectMP *cs)
{
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r2;
    u8 var_r3;

    var_r3 = 0;
    temp_r0 = cs->qUnk74;
    if ((temp_r0 >= 0x10500) || (temp_r0_2 = temp_r0 + 0x600, cs->qUnk74 = temp_r0_2, (temp_r0_2 >= 0x10500))) {
        cs->qUnk74 = 0x10500;
        var_r3 = 1;
    }
    temp_r2 = cs->qUnk7C;
    if (temp_r2 <= 0x77FF) {
        temp_r0_3 = temp_r2 + 0x7E0;
        cs->qUnk7C = temp_r0_3;
        if (temp_r0_3 > 0x7800) {
            cs->qUnk7C = 0x7800;
            var_r3 += 1;
        }
    } else {
        cs->qUnk7C = 0x7800;
        var_r3 += 1;
    }
    if (var_r3 == 2) {
        return 1;
    } else {
        return 0;
    }
}

s32 sub_80A17FC(CharacterSelectMP *cs)
{
    s32 temp_r1;
    s32 temp_r1_2;

    temp_r1 = cs->qUnk6C;
    if ((temp_r1 <= 0xB400) || (temp_r1_2 = temp_r1 + 0xFFFFF7C0, cs->qUnk6C = temp_r1_2, (temp_r1_2 <= 0xB3FF))) {
        cs->qUnk6C = 0xB400;
        return 1;
    }
    return 0;
}

// TODO: Fake-match!
s32 sub_80A182C(CharacterSelectMP *cs)
{
    if (cs->qUnk6C >= Q(201)) {
        cs->qUnk6C = Q(201);
        return 1;
    } else {
        s32 three = 3;
#ifndef NON_MATCHING
        asm("" ::"r"(three));
#endif
        cs->qUnk6C += Q(three);
        if (cs->qUnk6C < Q(201)) {
            return 0;
        } else {
            cs->qUnk6C = Q(201);
            return 1;
        }
    }
}

s32 sub_80A185C(CharacterSelectMP *cs)
{
    s32 temp_r0;
    s32 temp_r0_2;

    temp_r0 = cs->qUnk74;
    if ((temp_r0 <= Q(201)) || (temp_r0_2 = temp_r0 - Q(3), cs->qUnk74 = temp_r0_2, (temp_r0_2 <= Q(201)))) {
        cs->qUnk74 = Q(201);
        return 1;
    }
    return 0;
}

s32 sub_80A1888(CharacterSelectMP *cs)
{
    if (cs->qNameTagPos[0].y <= Q(145)) {
        cs->qNameTagPos[0].y = Q(145);
        return 1;
    } else {
        cs->qNameTagPos[0].y -= Q(6);
        if (cs->qNameTagPos[0].y < Q(145)) {
            cs->qNameTagPos[0].y = Q(145);
        }
    }
    return 0;
}

s32 sub_80A18B8(CharacterSelectMP *cs)
{
    if (cs->qNameTagPos[0].y < Q(180)) {
        cs->qNameTagPos[0].y += Q(6);
        return 0;
    } else {
        cs->qNameTagPos[0].y = Q(180);
        return 1;
    }
}

s32 sub_80A18E0(CharacterSelectMP *cs)
{
    if (cs->qUnk44 < Q(5)) {
        cs->qUnk44 += Q(0.25);
    } else {
        cs->qUnk44 = Q(0);
    }
    cs->qUnk48 = Q(90);

    return 1;
}

s32 sub_80A1908(CharacterSelectMP *cs)
{
    s32 temp_r1;
    s32 temp_r1_2;

    temp_r1 = cs->qNameTagPos[1].y;
    if ((temp_r1 <= Q(145)) || (temp_r1_2 = temp_r1 - Q(6), cs->qNameTagPos[1].y = temp_r1_2, (temp_r1_2 < Q(145)))) {
        cs->qNameTagPos[1].y = Q(145);
        return 1;
    }
    return 0;
}

s32 sub_80A1938(CharacterSelectMP *cs)
{
    s32 temp_r0_2;

    if ((cs->qNameTagPos[1].y > 0xB3FF)
        || (temp_r0_2 = cs->qNameTagPos[1].y + 0x600, cs->qNameTagPos[1].y = temp_r0_2, (temp_r0_2 > 0xB3FF))) {
        cs->qNameTagPos[1].y = 0xB400;
        return 1;
    }
    return 0;
}

s32 sub_80A1968(CharacterSelectMP *cs)
{
    s32 temp_r0_2;
    s32 temp_r0_4;
    u8 var_r3 = 0;

    if ((cs->qNameTagPos[0].x >= 0x7800)
        || (temp_r0_2 = cs->qNameTagPos[0].x + 0x300, cs->qNameTagPos[0].x = temp_r0_2, (temp_r0_2 >= 0x7800))) {
        cs->qNameTagPos[0].x = 0x7800;
        var_r3 += 1;
    }
    if ((cs->qNameTagPos[1].x <= 0x7800)
        || (temp_r0_4 = cs->qNameTagPos[1].x + 0xFFFFFD00, cs->qNameTagPos[1].x = temp_r0_4, (temp_r0_4 <= 0x7800))) {
        cs->qNameTagPos[1].x = 0x7800;
        var_r3 += 1;
    }
    if (var_r3 == 2) {
        return 1;
    } else {
        return 0;
    }
}

void sub_80A19C0(CharacterSelectMP *cs)
{
    cs->unkA += 0xC0;
    sa2__sub_8003EE4(cs->unkA >> 6, cs->qBgCharNameScale >> 4, 0x100, 0x40, 0x40, I(cs->qUnk6C), I(cs->qUnk70), gBgAffineRegs);
}

void sub_80A1A04(CharacterSelectMP *cs)
{
    gBgScrollRegs[1][0] = +I(cs->qUnk74);
    gBgScrollRegs[1][1] = -I(cs->qUnk78);
    gBgScrollRegs[0][0] = +I(cs->qUnk7C);
    gBgScrollRegs[0][1] = +I(cs->qUnk80);
}

void sub_80A1A28(CharacterSelectMP *cs)
{
    Sprite *s = &cs->spr1CC;
#ifndef NON_MATCHING
    register s32 screenX asm("r0") = *(volatile u8 *)cs->unk18;
    screenX = I(cs->qUnk4C);
#else
    s32 screenX = I(cs->qUnk4C);
#endif
    s->x = screenX;
    s->y = I(cs->qUnk50);
    DisplaySprite(s);
}
