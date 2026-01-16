#include "global.h"
#include "core.h"
#include "lib/m4a/m4a.h"
#include "game/save.h"
#include "game/stage.h"

#include "constants/songs.h"

typedef struct CharacterSelect {
    /* 0x00 */ u8 unk0;
    /* 0x01 */ u8 unk1;
    /* 0x02 */ u8 unk2;
    /* 0x03 */ u8 unk3;
    /* 0x04 */ u8 unk4;
    /* 0x05 */ u8 unk5;
    /* 0x06 */ u8 unk6;
    /* 0x07 */ u8 inputIndex;
    /* 0x08 */ u8 unk8;
    /* 0x09 */ u8 unk9;
    /* 0x09 */ u8 language;
    /* 0x0B */ u8 unkB;
    /* 0x0C */ u8 unkC[2];
    /* 0x0E */ u16 unkE;
    /* 0x10 */ u16 unk10;
    /* 0x12 */ u16 unk12;
    /* 0x14 */ u16 unk14;
    /* 0x16 */ s16 qUnk16;
    /* 0x18 */ s16 qUnk18;
    /* 0x1A */ u8 filler1A[0x2];
    /* 0x1C */ void *unk1C;
    /* 0x20 */ s32 unk20;
    /* 0x24 */ s32 qUnk24;
    /* 0x28 */ s32 qUnk28;
    /* 0x2C */ s32 qUnk2C;
    /* 0x30 */ s32 qUnk30;
    /* 0x34 */ s32 qUnk34;
    /* 0x38 */ s32 qUnk38;
    /* 0x3C */ s32 qUnk3C;
    /* 0x40 */ s32 qUnk40;
    /* 0x44 */ s32 qUnk44;
    /* 0x48 */ s32 qUnk48;
    /* 0x4C */ s32 qUnk4C;
    /* 0x50 */ s32 qUnk50;
    /* 0x54 */ s32 qUnk54;
    /* 0x58 */ s32 qUnk58;
    /* 0x5C */ s32 qUnk5C;
    /* 0x60 */ s32 qUnk60;
    /* 0x64 */ s32 qUnk64;
    /* 0x68 */ s32 qUnk68;
    /* 0x6C */ s32 qUnk6C;
    /* 0x70 */ s32 qUnk70;
    /* 0x74 */ Sprite spr74;
    /* 0x9C */ Sprite spr9C;
    /* 0xC4 */ Sprite sprC4;
    /* 0xEC */ Sprite sprEC;
    /* 0x114 */ Sprite spr114;
    /* 0x13C */ Sprite spr13C;
    /* 0x164 */ Sprite spr164;
    /* 0x18C */ Sprite spr18C;
    /* 0x1B4 */ Background bg1B4;
    /* 0x1F4 */ Background bg1F4;
    /* 0x234 */ Background bg234;
} CharacterSelect; /* 0x274 */

void Task_CharacterSelectInit(void);
void TaskDestructor_CharacterSelect(struct Task *t);
void sub_8097D90(CharacterSelect *cs);
void sub_8097E5C(CharacterSelect *cs);
void CharSelect_InitBackgrounds(CharacterSelect *cs);

extern u16 gUnknown_080D8CDC[];
extern const TileInfo2 gUnknown_080D8D00[2];
extern const TileInfo2 gUnknown_080D8D08[6][8];
extern TileInfo2 gUnknown_080D8E80[];
extern TileInfo2 gUnknown_080D8EF8;
extern const TileInfo2 gUnknown_080D8F08[2];
extern const u8 gUnknown_080D8F18[8];

void CreateCharacterSelect(u8 inputIndex)
{
    s32 sp4;
    struct Task *t;
    CharacterSelect *cs;

    gDispCnt = DISPCNT_OBJ_ON | DISPCNT_BG0_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_1D_MAP | DISPCNT_MODE_1;
    t = TaskCreate(Task_CharacterSelectInit, sizeof(CharacterSelect), 0x100U, 0U, TaskDestructor_CharacterSelect);

    DmaFill32(3, 0, BG_CHAR_ADDR_FROM_BGCNT(2), 0x40);

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

    cs = TASK_DATA(t);
    if (inputIndex == 4) {
        cs->unk8 = 1;
        if (gStageData.gameMode == 0) {
            cs->inputIndex = 0U;
        } else if (gStageData.gameMode == 5) {
            cs->inputIndex = 1U;
        } else if (gStageData.gameMode == 3 || gStageData.gameMode == 4) {
            cs->inputIndex = 3U;
        }
    } else {
        cs->inputIndex = inputIndex;
        cs->unk8 = 0;
    }

    sub_8097D90(cs);
    CharSelect_InitBackgrounds(cs);
    sub_8097E5C(cs);

    m4aMPlayAllStop();
    m4aSongNumStart(MUS_CHARACTER_SELECT);
    gDispCnt |= DISPCNT_WIN0_ON;
    gWinRegs[WINREG_WIN0H] = WIN_RANGE(0, DISPLAY_WIDTH);
    gWinRegs[WINREG_WIN0V] = WIN_RANGE(0, DISPLAY_HEIGHT);
    gWinRegs[WINREG_WININ] |= 0x3F;
    gWinRegs[WINREG_WINOUT] |= 0x1F;
    gBldRegs.bldCnt = 0x3FFF;
    gBldRegs.bldY = 0x10;
}

void sub_8097D90(CharacterSelect *cs)
{
    s32 playerIndex;
    s32 partnerIndex;
#ifndef NON_MATCHING
    register s32 mask asm("r1");
#else
    s32 mask;
#endif

    cs->language = LOADED_SAVE->language;
    cs->unk3 = 0;
    cs->unk4 = 0;
    cs->unk5 = 0;
    cs->unk6 = 2;
    cs->unkB = 0;
    cs->unkE = 0;
    cs->unk14 = 0;
    cs->qUnk16 = 0;
    cs->unk0 = 0;
    cs->unk9 = 0;
    cs->unkE = 1;
    cs->unk10 = 0;
    cs->unk12 = 0;
    cs->qUnk18 = Q(16);
    cs->qUnk24 = Q(120);
    cs->qUnk28 = Q(17);
    cs->qUnk2C = Q(120);
    cs->qUnk30 = Q(17);
    cs->qUnk44 = Q(0);
    cs->qUnk48 = Q(0);
    cs->qUnk4C = Q(120);
    cs->qUnk50 = Q(85);
    cs->qUnk54 = Q(201);
    cs->qUnk58 = Q(22);
    cs->qUnk3C = Q(120);
    cs->qUnk40 = Q(80);
    cs->qUnk34 = Q(120);
    cs->qUnk38 = Q(80);
    cs->qUnk64 = Q(120);
    cs->qUnk68 = Q(145);
    cs->qUnk6C = Q(300);
    cs->qUnk70 = Q(145);
    cs->qUnk5C = 0;
    cs->qUnk60 = 0;
    cs->unk20 = 0;
    cs->unk1C = 0;
    playerIndex = gStageData.playerIndex;
    partnerIndex = (gStageData.playerIndex + 1);
    mask = 1;
    partnerIndex &= mask;
    cs->unkC[PLAYER_1] = gPlayers[playerIndex].charFlags.character;
    cs->unkC[PLAYER_2] = gPlayers[partnerIndex].charFlags.character;
}

// (99.57%) https://decomp.me/scratch/KvZA5
NONMATCH("asm/non_matching/game/char_select__sub_8097E5C.inc", void sub_8097E5C(CharacterSelect *cs))
{
    TileInfo2 *ti;
#ifndef NON_MATCHING
    register Sprite *s asm("r0");
#else
    Sprite *s;
#endif
    u16 language;
    void *vram = OBJ_VRAM0;
    s32 index, index2;
    s32 unk5;

    s = &cs->sprC4;
    s->tiles = vram;
    vram += 0x5A0;
    s->anim = gUnknown_080D8D00[0].anim;
    s->variant = gUnknown_080D8D00[0].variant;
    s->prevVariant = 0xFF;
    s->x = (s16)((s32)cs->qUnk2C >> 8);
    s->y = (s16)((s32)cs->qUnk30 >> 8);
    s->oamFlags = 0x40;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    s = &cs->spr9C;
    s->tiles = vram;
    vram += 0x640;
    s->anim = gUnknown_080D8D08[cs->language][0].anim;
    s->variant = gUnknown_080D8D08[cs->language][0].variant;
    s->prevVariant = -1;
    s->x = I(cs->qUnk24);
    s->y = I(cs->qUnk28);
    s->oamFlags = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    s = &cs->spr18C;
    s->tiles = vram;
    vram += 0x80;
    s->anim = 0x574;
    s->variant = 5;
    s->prevVariant = -1;
    s->x = (DISPLAY_WIDTH / 2);
    s->y = I(cs->qUnk68);
    s->oamFlags = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    s = &cs->spr74;
    cs->spr74.tiles = vram;
    vram += 0x200;
    s->anim = gUnknown_080D8F08[0].anim;
    s->variant = gUnknown_080D8F08[0].variant;
    s->prevVariant = -1;
    s->x = I(cs->qUnk5C);
    s->y = I(cs->qUnk60);
    s->oamFlags = -0x40;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    s = &cs->sprEC;
    language = (cs->language == 0) ? 0 : 1;
    index2 = (gUnknown_080D8F18[cs->unk5]);
    s->tiles = vram;
    vram += 0x1C0;
    s->anim = gUnknown_080D8E80[language * sizeof(TileInfo2) + index2].anim;
    s->variant = gUnknown_080D8E80[language * sizeof(TileInfo2) + index2].variant;
    s->prevVariant = -1;
    s->x = I(cs->qUnk64);
    s->y = I(cs->qUnk68);
    s->oamFlags = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    s = &cs->spr13C;
    language = (cs->language == 0) ? 0 : 1;
    index2 = (gUnknown_080D8F18[cs->unk5]);
    s->tiles = vram;
    vram += 0x1C0;
    s->anim = gUnknown_080D8E80[language * sizeof(TileInfo2) + index2].anim;
    s->variant = gUnknown_080D8E80[language * sizeof(TileInfo2) + index2].variant;
    s->prevVariant = -1;
    s->x = I(cs->qUnk6C);
    s->y = I(cs->qUnk70);
    s->oamFlags = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    s = &cs->spr114;
    s->tiles = vram;
    vram += 0x300;
    s->anim = gUnknown_080D8EF8.anim;
    s->variant = gUnknown_080D8EF8.variant;
    s->prevVariant = -1;
    s->x = I(cs->qUnk64);
    s->y = I(cs->qUnk68);
    s->oamFlags = 0x40;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    cs->unk1C = vram;
}
END_NONMATCH

void CharSelect_InitBackgrounds(CharacterSelect *cs)
{
    Background *bgA;
    Background *bgB;
    Background *bgC;

    gBgCntRegs[0] = 0x4E07;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    bgA = &cs->bg1B4;
    bgA->graphics.dest = (void *)BG_SCREEN_ADDR(8);
    bgA->graphics.anim = 0;
    bgA->layoutVram = (void *)BG_SCREEN_ADDR(14);
    bgA->unk18 = 0;
    bgA->unk1A = 0;
    bgA->tilemapId = gUnknown_080D8CDC[0];
    bgA->unk1E = 0;
    bgA->unk20 = 0;
    bgA->unk22 = 0;
    bgA->unk24 = 0;
    bgA->targetTilesX = 45;
    bgA->targetTilesY = 20;
    cs->bg1B4.paletteOffset = 0;
    bgA->flags = 0;
    DrawBackground(bgA);

    gBgCntRegs[1] = 0x30E;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    bgB = &cs->bg1F4;
    bgB->graphics.dest = (void *)BG_SCREEN_ADDR(24);
    bgB->graphics.anim = 0;
    bgB->layoutVram = (void *)BG_SCREEN_ADDR(3);
    bgB->unk18 = 0;
    bgB->unk1A = 0;
    bgB->tilemapId = gUnknown_080D8CDC[11];
    bgB->unk1E = 0;
    bgB->unk20 = 0;
    bgB->unk22 = 0;
    bgB->unk24 = 0;
    bgB->targetTilesX = 16;
    bgB->targetTilesY = 16;
    cs->bg1F4.paletteOffset = 0;
    bgB->flags = 1;
    DrawBackground(bgB);

    gBgCntRegs[2] = 0x1B89;
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;
    bgC = &cs->bg234;
    bgC->graphics.dest = (void *)BG_SCREEN_ADDR(16);
    bgC->graphics.anim = 0;
    bgC->layoutVram = (void *)BG_SCREEN_ADDR(27);
    bgC->unk18 = 0;
    bgC->unk1A = 0;
    bgC->tilemapId = gUnknown_080D8CDC[cs->unk5 + 5];
    bgC->unk1E = 0;
    bgC->unk20 = 0;
    bgC->unk22 = 0;
    bgC->unk24 = 0;
    bgC->targetTilesX = 16;
    bgC->targetTilesY = 16;
    cs->bg234.paletteOffset = 0;
    bgC->flags = 6;
    DrawBackground(bgC);
}
