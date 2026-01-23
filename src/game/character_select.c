#include "global.h"
#include "core.h"
#include "flags.h"
#include "code_z_1.h" // CopyPalette
#include "module_unclear.h"
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
    /* 0x07 */ u8 createIndex;
    /* 0x08 */ u8 unk8;
    /* 0x09 */ u8 unk9;
    /* 0x09 */ u8 language;
    /* 0x0B */ u8 unkB;
    /* 0x0C */ u8 unkC[2];
    /* 0x0E */ u16 unkE;
    /* 0x10 */ u16 qFadeBrightness;
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
void sub_808723C(s16 param0, u8 param1);
void sub_8097D90(CharacterSelect *cs);
void sub_8097E5C(CharacterSelect *cs);
void sub_80986AC(CharacterSelect *cs);
bool32 sub_80988B0(CharacterSelect *cs);
bool32 sub_8098A00(CharacterSelect *cs);
bool32 sub_8098B50(CharacterSelect *cs);
bool32 sub_8098CFC(CharacterSelect *cs);
void sub_80990B0(CharacterSelect *cs);
void sub_80992A8(CharacterSelect *cs);
void sub_8099C34(CharacterSelect *cs);
void sub_809AD74(CharacterSelect *cs);
void sub_809ADF0(CharacterSelect *cs);
void sub_809AE50(CharacterSelect *cs);
void sub_809AFC0(CharacterSelect *cs);
void sub_809B13C(CharacterSelect *cs);
void sub_809B148(CharacterSelect *cs);
void sub_809B184(CharacterSelect *cs);
void sub_809B1E4(CharacterSelect *cs);
void sub_809B234(CharacterSelect *cs);
void sub_809B284(CharacterSelect *cs);
void sub_809B2E4(CharacterSelect *cs);
void sub_809B5D0(CharacterSelect *cs);
bool32 sub_809B638(CharacterSelect *cs);
bool32 sub_809B668(CharacterSelect *cs);
void sub_809B69C(CharacterSelect *cs);
void sub_809B6C0(CharacterSelect *cs);
void Task_80983E8(void);
void Task_8098600(void);
void Task_8098DE4(void);
void Task_8098FF0(void);
void Task_8099200(void);
void Task_8099300(void);
s16 sub_8023E04(void);
s16 sub_8024074(u8);
void sub_802613C(void);
void CharSelect_InitBackgrounds(CharacterSelect *cs);
void sub_80AD824(void);

extern u16 gUnknown_080D8CDC[];
extern const TileInfo2 gUnknown_080D8D00[2];
extern const TileInfo2 gUnknown_080D8D08[6][8];
extern TileInfo2 gUnknown_080D8E80[];
extern TileInfo2 gUnknown_080D8EF8;
extern const TileInfo2 gUnknown_080D8F08[2];
extern const u8 gUnknown_080D8F18[8];
extern u8 gUnknown_080D946D[NUM_CHARACTERS];
extern const u8 gUnknown_082B5344[0x140];
extern const u16 gCharacterSelectedVoices[NUM_CHARACTERS];
extern const u16 gUnknown_08E2EE50[10][16];
extern const u16 gUnknown_08E2EEF0[16];

void CreateCharacterSelect(u8 createIndex)
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
    if (createIndex == 4) {
        cs->unk8 = 1;
        if (gStageData.gameMode == 0) {
            cs->createIndex = 0U;
        } else if (gStageData.gameMode == 5) {
            cs->createIndex = 1U;
        } else if (gStageData.gameMode == 3 || gStageData.gameMode == 4) {
            cs->createIndex = 3U;
        }
    } else {
        cs->createIndex = createIndex;
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
    cs->qFadeBrightness = 0;
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
    bgC->paletteOffset = 0;
    bgC->flags = 6;
    DrawBackground(bgC);
}

void Task_80981A8(void)
{
    s16 var_r3;
    s16 var_r0;
    struct Task *t;
    s16 playerIndex;

    CharacterSelect *cs = TASK_DATA(gCurTask);

    playerIndex = gStageData.playerIndex;
    if (playerIndex == 0) {
        var_r0 = sub_8024074(0U);
    } else {
        var_r0 = sub_8023E04();
    }

    cs->unk9 |= (var_r0 & 0x10);
    if (var_r0 < 0) {
        sub_802613C();
        return;
    }

    if (cs->createIndex == 1) {
        gPlayers[PLAYER_1].charFlags.character = SONIC;
        gPlayers[PLAYER_1].charFlags.partnerIndex = PLAYER_2;
        gPlayers[PLAYER_2].charFlags.character = TAILS;
        gPlayers[PLAYER_2].charFlags.partnerIndex = PLAYER_1;

        for (var_r3 = 0; var_r3 < 2; var_r3++) {
            if (playerIndex == var_r3) {
                gPlayers[var_r3].charFlags.someIndex = 1;
            } else {
                gPlayers[var_r3].charFlags.someIndex = 3;
                gPlayers[var_r3].charFlags.padding1 = var_r3;
            }
        }
    } else if (cs->createIndex == 2) {
        gPlayers[PLAYER_1].charFlags.character = SONIC;
        gPlayers[PLAYER_1].charFlags.partnerIndex = PLAYER_3;
        gPlayers[PLAYER_2].charFlags.character = SONIC;
        gPlayers[PLAYER_2].charFlags.partnerIndex = PLAYER_4;
        gPlayers[PLAYER_3].charFlags.character = TAILS;
        gPlayers[PLAYER_3].charFlags.partnerIndex = PLAYER_1;
        gPlayers[PLAYER_4].charFlags.character = TAILS;
        gPlayers[PLAYER_4].charFlags.partnerIndex = PLAYER_2;

        for (var_r3 = 0; var_r3 < NUM_MULTI_PLAYER_CHARS; var_r3++) {
            if (playerIndex == var_r3) {
                gPlayers[var_r3].charFlags.someIndex = 1;
            } else {
                gPlayers[var_r3].charFlags.someIndex = 3;
                gPlayers[var_r3].charFlags.padding1 = var_r3;
            }
        }
    }
    gCurTask->main = Task_80983E8;
}

void Task_80983E8(void)
{
    CharacterSelect *cs = TASK_DATA(gCurTask);
    s16 var_r0;
    u8 playerIndex;

    playerIndex = gStageData.playerIndex;

    if ((cs->createIndex != 0) && (cs->createIndex != 3)) {
        if (playerIndex == 0) {
            var_r0 = sub_8024074(0);
        } else {
            var_r0 = sub_8023E04();
        }

        cs->unk9 |= 0x10 & var_r0;
        if (var_r0 < 0) {
            sub_802613C();
            return;
        }
    }

    if (cs->unkE != 0) {
        gDispCnt |= DISPCNT_WIN0_ON;
        gWinRegs[WINREG_WIN0H] = WIN_RANGE(0, DISPLAY_WIDTH);
        gWinRegs[WINREG_WIN0V] = WIN_RANGE(0, DISPLAY_HEIGHT);
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FFF;
        gBldRegs.bldY = 0x10;
        cs->qFadeBrightness = Q(16);
        cs->unkE = 0;
    }
    sub_809B13C(cs);

    if (cs->createIndex == 0 || cs->createIndex == 3 || (cs->createIndex == 1 && playerIndex == 0)
        || (cs->createIndex == 2 && playerIndex <= 1)) {
        sub_809B284(cs);
        sub_809AD74(cs);
    }

    sub_809ADF0(cs);
    sub_809AE50(cs);
    sub_809B69C(cs);
    sub_809B6C0(cs);

    if (gBldRegs.bldY != 0) {
        gBldRegs.bldY = I(cs->qFadeBrightness);
        cs->qFadeBrightness -= Q(1.0);
    } else {
        cs->unkE = 1;
        gBldRegs.bldY = 0;
        gCurTask->main = Task_8098DE4;
    }
}

void sub_8098508(void)
{
    CharacterSelect *cs = TASK_DATA(gCurTask);

    if (cs->unkE != 0) {
        gDispCnt |= DISPCNT_WIN0_ON;
        gWinRegs[WINREG_WIN0H] = WIN_RANGE(0, DISPLAY_WIDTH);
        gWinRegs[WINREG_WIN0V] = WIN_RANGE(0, DISPLAY_HEIGHT);
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FFF;
        cs->unkE = 0;
        cs->qFadeBrightness = 0;
    }

    sub_809ADF0(cs);
    sub_809B6C0(cs);

    if (cs->unkB > 0x13U) {
        sub_809AFC0(cs);
    } else {
        sub_809AE50(cs);
    }

    if (cs->unkB == 1) {
        sub_809AD74(cs);
    }

    if (cs->unkB == 5) {
        sub_809B234(cs);
        sub_809B1E4(cs);
    } else if (cs->unkB == 8) {
        sub_809B184(cs);
        sub_809B148(cs);
    }

    if (gBldRegs.bldY < 16) {
        gBldRegs.bldY = I(cs->qFadeBrightness);
        cs->qFadeBrightness += Q(1);
    } else {
        gBldRegs.bldY = 0x10;
        cs->qUnk3C = Q(310);
        cs->qUnk34 = Q(310);
        cs->unkB = 0x1D;
        gCurTask->main = Task_8098600;
    }
}

void Task_8098600(void)
{
    CharacterSelect *cs = TASK_DATA(gCurTask);
    s32 var_r0;

    switch (cs->unk2) {
        case 2:
            if (cs->unk8 != 0) {
                sub_80986AC(cs);
                return;
            }
            if (gStageData.gameMode == 0) {
                var_r0 = sub_80988B0(cs);
            } else if (gStageData.gameMode == 5) {
                var_r0 = sub_8098A00(cs);
            } else if (gStageData.gameMode == 3 || gStageData.gameMode == 4) {
                var_r0 = sub_8098B50(cs);
            } else {
                case 3:
                    var_r0 = sub_8098CFC(cs);
            }

            if (var_r0 == 1) {
                return;
            }

            break;
        case 4:
            sub_802613C();
            break;

        default:
            MultiSioStop();
            MultiSioInit(0U);
            gMultiSioEnabled = 0;
            sub_808723C(1, 0);
            break;
    }

    TaskDestroy(gCurTask);
}

void sub_80986AC(CharacterSelect *cs)
{
    u8 var_r1;
    u8 var_r6;

    sub_80003B8();

    if (gStageData.gameMode == GAME_MODE_5) {
        s16 playerIndex = gStageData.playerIndex;
        s16 partnerIndex = (playerIndex + 1);
        partnerIndex &= 1;

        if (playerIndex == PLAYER_1) {
            var_r6 = gUnknown_080D8F18[cs->unk5];
            var_r1 = gUnknown_080D8F18[cs->unk6];
        } else {
            var_r6 = gUnknown_080D8F18[cs->unk6];
            var_r1 = gUnknown_080D8F18[cs->unk5];
        }

        gPlayers[playerIndex].callback = NULL;
        gPlayers[playerIndex].charFlags.partnerIndex = partnerIndex;
        gPlayers[playerIndex].charFlags.character = var_r6;
        gPlayers[playerIndex].charFlags.someIndex = 1;
        gPlayers[partnerIndex].callback = NULL;
        gPlayers[partnerIndex].charFlags.someIndex = 3;
        gPlayers[partnerIndex].charFlags.padding1 = partnerIndex;
        gPlayers[partnerIndex].charFlags.partnerIndex = playerIndex;
        gPlayers[partnerIndex].charFlags.character = var_r1;
        gPlayers[PLAYER_3].callback = NULL;
        gPlayers[PLAYER_3].charFlags.someIndex = 0;
        gPlayers[PLAYER_4].callback = NULL;
        gPlayers[PLAYER_4].charFlags.someIndex = 0;
    } else {
        gStageData.playerIndex = 0;
        gPlayers[PLAYER_1].callback = NULL;
        gPlayers[PLAYER_1].charFlags.partnerIndex = PLAYER_2;
        gPlayers[PLAYER_1].charFlags.character = gUnknown_080D8F18[cs->unk5];
        gPlayers[PLAYER_1].charFlags.someIndex = 1;
        gPlayers[PLAYER_2].callback = NULL;
        gPlayers[PLAYER_2].charFlags.partnerIndex = PLAYER_1;
        gPlayers[PLAYER_2].charFlags.character = gUnknown_080D8F18[cs->unk6];
        gPlayers[PLAYER_2].charFlags.someIndex = 2;
        gPlayers[PLAYER_3].callback = NULL;
        gPlayers[PLAYER_3].charFlags.someIndex = 0;
        gPlayers[PLAYER_4].callback = NULL;
        gPlayers[PLAYER_4].charFlags.someIndex = 0;
    }

    WarpToMap(COURSE_INDEX(ZONE_1, ACT_SONIC_FACTORY), 0U);
}

bool32 sub_80988B0(CharacterSelect *cs)
{
    gStageData.playerIndex = 0;
    sub_800214C();
    gStageData.difficulty = LOADED_SAVE->difficulty;

    gPlayers[PLAYER_1].callback = NULL;
    gPlayers[PLAYER_1].charFlags.partnerIndex = PLAYER_2;
    gPlayers[PLAYER_1].charFlags.character = gUnknown_080D8F18[cs->unk5];
    gPlayers[PLAYER_1].charFlags.someIndex = 1;
    gPlayers[PLAYER_2].callback = NULL;
    gPlayers[PLAYER_2].charFlags.partnerIndex = PLAYER_1;
    gPlayers[PLAYER_2].charFlags.character = gUnknown_080D8F18[cs->unk6];
    gPlayers[PLAYER_2].charFlags.someIndex = 2;
    gPlayers[PLAYER_3].callback = NULL;
    gPlayers[PLAYER_3].charFlags.someIndex = 0;
    gPlayers[PLAYER_4].callback = NULL;
    gPlayers[PLAYER_4].charFlags.someIndex = 0;

    DmaCopy16(3, &gUnknown_082B5344, OBJ_VRAM0 + 0x7EC0, 0x140);

    sub_80003B8();

    if ((1 & LOADED_SAVE->unk34)) {
        WarpToMap(LEVEL_INDEX(LOADED_SAVE->continueZone, ACT_HUB), 0U);
        return TRUE;
    } else {
        sub_80AD824();
        return FALSE;
    }
}

bool32 sub_8098A00(CharacterSelect *cs)
{
    Player *players;
    Player *player;
    Player *partner;
    s16 playerIndex;
    s16 partnerIndex;
    u8 character;
    s32 var_r1;
    u8 var_r6;

    playerIndex = gStageData.playerIndex;
    partnerIndex = (playerIndex + 1) & 1;
    if (playerIndex == 0) {
        var_r6 = gUnknown_080D8F18[cs->unk5];
        character = gUnknown_080D8F18[cs->unk6];
    } else {
        var_r6 = gUnknown_080D8F18[cs->unk6];
        character = gUnknown_080D8F18[cs->unk5];
    }
    sub_800214C();
    gStageData.difficulty = LOADED_SAVE->difficulty;

    players = &gPlayers[0];
    player = &players[playerIndex];
    player->callback = NULL;
    player->charFlags.partnerIndex = partnerIndex;
    player->charFlags.character = var_r6;
    player->charFlags.someIndex = 1;

    partner = &gPlayers[partnerIndex];
    partner->callback = NULL;
    partner->charFlags.someIndex = 3;
    partner->charFlags.padding1 = partnerIndex;
    partner->charFlags.partnerIndex = playerIndex;
    partner->charFlags.character = character;

    gPlayers[PLAYER_3].callback = NULL;
    gPlayers[PLAYER_3].charFlags.someIndex = 0;
    gPlayers[PLAYER_4].callback = NULL;
    gPlayers[PLAYER_4].charFlags.someIndex = 0;
    sub_80003B8();
    WarpToMap(LEVEL_INDEX(ZONE_1, ACT_HUB), 0U);

    return TRUE;
}

bool32 sub_8098B50(CharacterSelect *cs)
{
    u8 temp_r1;
    u8 temp_r1_2;
    u8 temp_r1_3;
    u8 temp_r1_4;

    gStageData.playerIndex = PLAYER_1;

    gPlayers[PLAYER_1].callback = NULL;
    gPlayers[PLAYER_1].charFlags.partnerIndex = 1;
    gPlayers[PLAYER_1].charFlags.character = gUnknown_080D8F18[cs->unk5];
    gPlayers[PLAYER_1].charFlags.someIndex = 1;
    gPlayers[PLAYER_2].callback = NULL;
    gPlayers[PLAYER_2].charFlags.partnerIndex = 0;
    gPlayers[PLAYER_2].charFlags.character = gUnknown_080D8F18[cs->unk6];
    gPlayers[PLAYER_2].charFlags.someIndex = 2;
    gPlayers[PLAYER_3].callback = NULL;
    gPlayers[PLAYER_3].charFlags.someIndex = 0;
    gPlayers[PLAYER_4].callback = NULL;
    gPlayers[PLAYER_4].charFlags.someIndex = 0;

    if (gStageData.gameMode == GAME_MODE_TIME_ATTACK) {
        sub_800214C();

        // TODO:
        // This looks like a macro, otherwise it wouldn't be identical to the above block...
        gPlayers[PLAYER_1].callback = NULL;
        gPlayers[PLAYER_1].charFlags.partnerIndex = 1;
        gPlayers[PLAYER_1].charFlags.character = gUnknown_080D8F18[cs->unk5];
        gPlayers[PLAYER_1].charFlags.someIndex = 1;
        gPlayers[PLAYER_2].callback = NULL;
        gPlayers[PLAYER_2].charFlags.partnerIndex = 0;
        gPlayers[PLAYER_2].charFlags.character = gUnknown_080D8F18[cs->unk6];
        gPlayers[PLAYER_2].charFlags.someIndex = 2;
        gPlayers[PLAYER_3].callback = NULL;
        gPlayers[PLAYER_3].charFlags.someIndex = 0;
        gPlayers[PLAYER_4].callback = NULL;
        gPlayers[PLAYER_4].charFlags.someIndex = 0;

        sub_80003B8();
        sub_80961E4(1);
    } else if (gStageData.gameMode == GAME_MODE_BOSS_TIME_ATTACK) {
        sub_80003B8();
        sub_80961E4(2);
    }

    return FALSE;
}

bool32 sub_8098CFC(CharacterSelect *cs)
{
    s32 playerIndex = gStageData.playerIndex;
    s32 partnerIndex = (playerIndex + 1) % 2u;

    m4aSongNumStart(SE_ABORT);
    gPlayers[playerIndex].charFlags.character = cs->unkC[PLAYER_1];
    gPlayers[partnerIndex].charFlags.character = cs->unkC[PLAYER_2];

    if ((cs->unk8 != 0) || (MultiSioStop(), MultiSioInit(0U), gMultiSioEnabled = 0, (cs->unk8 != 0))) {
        sub_80003B8();
        WarpToMap(1, 0U);
        return TRUE;
    }

    if (cs->createIndex == 0) {
        if (gStageData.gameMode == GAME_MODE_TIME_ATTACK) {
            sub_808723C(0, 5U);
        } else if (gStageData.gameMode == GAME_MODE_BOSS_TIME_ATTACK) {
            sub_808723C(1, 5U);
        } else {
            sub_808723C(0, 0U);
        }
    } else if (cs->createIndex == 1) {
        sub_808723C(1, 4U);
    } else if (cs->createIndex == 3) {
        sub_808723C(0, 5U);
    }

    return FALSE;
}

void Task_8098DE4(void)
{
    s16 temp_r0_4;
    s16 temp_r2;
    s16 temp_r2_2;
    s16 var_r0;
    s32 var_r3;
#ifndef BUG_FIX
    s16 var_r6;
#else
    // TODO: Maybe a different init value?
    s16 var_r6 = 0;
#endif
    u8 temp_r0;
    u8 temp_r0_2;
    u8 temp_r0_3;
    s32 temp_r1;
    u8 temp_r3;
    u8 temp_r5;
    u8 var_r0_3;
    void (*var_r0_2)(u16);
    CharacterSelect *cs = TASK_DATA(gCurTask);

    temp_r5 = gStageData.playerIndex;
    sub_809B13C(cs);
    sub_809ADF0(cs);
    sub_809AE50(cs);
    sub_809B69C(cs);
    sub_809B6C0(cs);

    if (cs->createIndex == 0 || cs->createIndex == 3 || (cs->createIndex == 1 && temp_r5 == 0)
        || (((cs->createIndex == 2) && ((u32)temp_r5 <= 1U)))) {
        sub_809B284(cs);
        sub_809AD74(cs);
    }
    gDispCnt &= ~DISPCNT_BG1_ON;

    if (cs->createIndex != 0) {
        if (cs->createIndex != 3) {
            if (cs->createIndex == 1) {
                if (temp_r5 == 0) {
                    var_r6 = sub_8024074(cs->unk4);
                } else {
                    var_r6 = sub_8023E04();
                }
                cs->unk9 |= 0x10 & var_r6;
            }
            if (var_r6 < 0) {
                sub_802613C();
                return;
            }
        }
    }

    if (((cs->createIndex == 0) || (cs->createIndex == 3)) || ((cs->createIndex == 1) && (temp_r5 == 0))
        || ((cs->createIndex == 2) && ((u32)temp_r5 <= 1U))) {
        if (((cs->createIndex == 0) || (cs->createIndex == 3)) && (B_BUTTON & gPressedKeys)) {
            m4aSongNumStart(SE_ABORT);
            cs->unk2 = 3;
            cs->unkB = 2;
            gCurTask->main = sub_8098508;
            return;
        } else {
            if (DPAD_SIDEWAYS & gRepeatedKeys) {
                m4aSongNumStart(SE_CHARSELECT_SLIDE);
                sub_80992A8(cs);
                gCurTask->main = Task_8098FF0;
            } else if (A_BUTTON & gPressedKeys) {
                s32 unlockIndex = gUnknown_080D8F18[cs->unk5];
                if (LOADED_SAVE->unlockedCharacters & gUnknown_080D946D[unlockIndex]) {
                    m4aSongNumStart(gCharacterSelectedVoices[cs->unk5]);
                    sub_809B5D0(cs);
                    gCurTask->main = Task_8099300;
                }
            }
        }
    } else if (cs->createIndex == 1) {
        temp_r2 = (s16)var_r6;
        if ((temp_r2 & 0x10) || (0x10 & cs->unk9)) {
            sub_809B5D0(cs);
            gCurTask->main = Task_8099300;
            return;
        }
        temp_r1 = cs->unk3;
        if ((temp_r1 != temp_r2 - 1) && ((s32)temp_r2 > 0) && ((s32)temp_r2 <= 5)) {
            temp_r2_2 = temp_r2 - 1;
            if (temp_r1 < (s32)temp_r2_2) {
                if ((temp_r1 < 2) && ((s32)(temp_r1 + 2) < (s32)temp_r2_2)) {
                    var_r3 = 2;
                } else {
                    var_r3 = 1;
                }
            } else {
                if ((temp_r1 > 2) && ((s32)(temp_r1 - 2) > (s32)temp_r2_2)) {
                    var_r3 = 1;
                } else {
                    var_r3 = 2;
                }
            }
            if (var_r3 == 1) {
                cs->unk1 = 0;
            } else {
                cs->unk1 = 1;
            }
            cs->unk4 = var_r6 - 1;
            gCurTask->main = Task_8098FF0;
        }
    }
}

void Task_8098FF0()
{
#ifndef BUG_FIX
    s16 var_r0;
#else
    s16 var_r0 = 0;
#endif
    u8 var_r5;
    s32 playerIndex;

    CharacterSelect *cs = TASK_DATA(gCurTask);

    var_r5 = 0;
    playerIndex = gStageData.playerIndex;
    if ((cs->createIndex != 0) && (cs->createIndex != 3)) {
        if (cs->createIndex == 1) {
            if (playerIndex == 0) {
                var_r0 = sub_8024074(cs->unk4);
            } else {
                var_r0 = sub_8023E04();
            }
            cs->unk9 |= 0x10 & (u16)var_r0;
        }

        if (var_r0 < 0) {
            sub_802613C();
            return;
        }
    }
    {
        sub_809B13C(cs);
        sub_809ADF0(cs);
        sub_809AE50(cs);
        sub_809B69C(cs);
        sub_809B6C0(cs);
        sub_809B234(cs);
        sub_809B2E4(cs);

        if (cs->unk1 == 0) {
            var_r5 = sub_809B638(cs);
        }
        if (cs->unk1 == 1) {
            var_r5 = sub_809B668(cs);
        }
        if (var_r5 != 0) {
            sub_80990B0(cs);
            gCurTask->main = Task_8099200;
        }
    }
}

void sub_80990B0(CharacterSelect *cs)
{
    Background *bg;
    u16 *var_r0_2;
    u16 var_r0;
    u8 temp_r5;

    bg = &cs->bg234;
    temp_r5 = gUnknown_080D8F18[cs->unk5];
    bg->graphics.dest = (void *)(BG_VRAM + 0x8000);
    bg->graphics.anim = 0;
    bg->layoutVram = (void *)(BG_VRAM + 0xD800);
    bg->unk18 = 0;
    bg->unk1A = 0;

    if (!(LOADED_SAVE->unlockedCharacters & gUnknown_080D946D[temp_r5])) {
        bg->tilemapId = gUnknown_080D8CDC[16];
    } else {
        bg->tilemapId = gUnknown_080D8CDC[temp_r5 + 5];
    }

    bg->unk1E = 0;
    bg->unk20 = 0;
    bg->unk22 = 0;
    bg->unk24 = 0;
    bg->targetTilesX = 16;
    bg->targetTilesY = 16;
    bg->paletteOffset = 0;
    bg->flags = 6;
    DrawBackground(bg);

    cs->qUnk40 = 0x5000;
    cs->unkB = 4;
    if (!(LOADED_SAVE->unlockedCharacters & gUnknown_080D946D[temp_r5])) {
        if (FLAGS_20000 & gFlags) {
            CopyPalette(&gUnknown_08E2EEF0[0], 0x60U, 16);
        } else {
            DmaCopy16(3, &gUnknown_08E2EEF0[0], &gObjPalette[3 * (16 * sizeof(u16))], 0x20U);
            gFlags |= FLAGS_UPDATE_SPRITE_PALETTES;
        }
    } else if (FLAGS_20000 & gFlags) {
        CopyPalette(&gUnknown_08E2EE50[temp_r5][0], 3 * (16 * sizeof(u16)), ARRAY_COUNT(gUnknown_08E2EE50[temp_r5]));
    } else {
        DmaCopy16(3, &gUnknown_08E2EE50[temp_r5][0], &gObjPalette[3 * (16 * sizeof(u16))], (16 * sizeof(u16)));
        gFlags |= FLAGS_UPDATE_SPRITE_PALETTES;
    }
    gFlags |= FLAGS_UPDATE_SPRITE_PALETTES;
}

#if 0
void sub_8099200(u16 arg2) {
    s16 var_r0;
    u16 temp_r1;
    u8 temp_r0;

    temp_r1 = gCurTask->data;
    temp_r0 = temp_r1->unk7;
    switch (temp_r0) {                              /* irregular */
    case 1:
        if (gStageData.playerIndex == 0) {
            var_r0 = sub_8024074(temp_r1->unk4);
        } else {
            var_r0 = sub_8023E04();
        }
        temp_r1->unk9 = (u8) ((0x10 & (u16) var_r0) | temp_r1->unk9);
        /* fallthrough */
    default:
        if ((s32) (M2C_ERROR(/* Read from unset register $r2 */) << 0x10) < 0) {
            sub_802613C();
            return;
        }
    case 0:
    case 3:
        sub_809B13C((CharacterSelect *) temp_r1);
        sub_809ADF0((CharacterSelect *) temp_r1);
        sub_809AE50((CharacterSelect *) temp_r1);
        sub_809B69C((CharacterSelect *) temp_r1);
        sub_809B6C0((CharacterSelect *) temp_r1);
        sub_809B2AC(temp_r1);
        sub_809B148((CharacterSelect *) temp_r1);
        if (M2C_ERROR(/* Read from unset register $r0 */) == 1) {
            sub_809B184((CharacterSelect *) temp_r1);
            if (M2C_ERROR(/* Read from unset register $r0 */) == 1) {
                temp_r1->unk5C = 0;
                gCurTask->main = sub_8098DE4;
            }
        }
        return;
    }
}

void sub_080992A4(void) {

}

void sub_80992A8(void *arg0) {
    u8 temp_r0;
    u8 temp_r4;
    u8 var_r0;
    u8 var_r0_2;

    temp_r4 = arg0->unk3;
    arg0->unk4 = temp_r4;
    if (0x10 & gRepeatedKeys) {
        if ((u32) temp_r4 > 3U) {
            var_r0 = 0;
        } else {
            var_r0 = temp_r4 + 1;
        }
        arg0->unk4 = var_r0;
        arg0->unk1 = 0;
        arg0->unkB = 6;
    }
    if (0x20 & gRepeatedKeys) {
        temp_r0 = arg0->unk4;
        if (temp_r0 == 0) {
            var_r0_2 = 4;
        } else {
            var_r0_2 = temp_r0 - 1;
        }
        arg0->unk4 = var_r0_2;
        arg0->unk1 = 1;
        arg0->unkB = 7;
    }
}

void Task_8099300(u16 arg2) {
    Player *temp_r1_2;
    Sprite *temp_r0_2;
    u16 temp_r1;
    u16 var_r0;
    u16 var_r2;
    u8 temp_r0;
    u8 temp_r2;

    temp_r1 = gCurTask->data;
    temp_r0 = temp_r1->unk7;
    switch (temp_r0) {                              /* irregular */
    case 1:
        if (gStageData.playerIndex == 0) {
            var_r0 = sub_80240B4(temp_r1->unk3);
        } else {
            var_r0 = sub_80240F4();
        }
        var_r2 = var_r0;
        temp_r1->unk9 = (u8) ((0x10 & var_r2) | temp_r1->unk9);
        /* fallthrough */
    default:
        if ((s32) (M2C_ERROR(/* Read from unset register $r2 */) << 0x10) < 0) {
            sub_802613C();
            return;
        }
    case 0:
    case 3:
        sub_809ADF0((CharacterSelect *) temp_r1);
        sub_809AE50((CharacterSelect *) temp_r1);
        sub_809AF08(temp_r1);
        sub_809B69C((CharacterSelect *) temp_r1);
        sub_809B6C0((CharacterSelect *) temp_r1);
        if ((u32) temp_r1->unkB <= 0xCU) {
            gDispCnt |= 0x200;
            if ((u32) temp_r1->unkB <= 0xCU) {
                temp_r1->unkB = 0xCU;
                temp_r1->unk34 = (s32) temp_r1->unk3C;
                temp_r1->unk38 = (s32) temp_r1->unk40;
                temp_r1->unk5 = (u8) temp_r1->unk3;
                sub_809BF3C(temp_r1 + 5, temp_r1 + 0xB, temp_r1 + 0x34, temp_r1 + 0x38, temp_r1->unk20);
                temp_r1->unk4C = 0x12C00;
            }
        }
        temp_r0_2 = temp_r1 + 0x9C;
        temp_r2 = temp_r1->unkB - 0xB;
        temp_r0_2->anim = (*gUnknown_080D8D08)[temp_r2 + (temp_r1->unkA * 8)].anim;
        temp_r0_2->variant = (*gUnknown_080D8D08)[temp_r2 + (temp_r1->unkA * 8)].variant;
        UpdateSpriteAnimation(temp_r0_2);
        switch (gStageData.gameMode) {              /* switch 1; irregular */
        case 0:                                     /* switch 1 */
        case 3:                                     /* switch 1 */
        case 4:                                     /* switch 1 */
            gPlayers->unk2A = (u8) ((-0x10 & gPlayers->unk2A) | (0xF & gUnknown_080D8F18[temp_r1->unk5]));
block_18:
            gCurTask->main = sub_809947C;
            break;
        case 5:                                     /* switch 1 */
            temp_r1_2 = &gPlayers[gStageData.playerIndex];
            temp_r1_2->unk2A = (u8) ((-0x10 & temp_r1_2->unk2A) | (0xF & gUnknown_080D8F18[temp_r1->unk5]));
            goto block_18;
        }
        return;
    }
}

void sub_809947C(u16 arg2) {
    Background *temp_r2;
    u16 *var_r0_2;
    u16 temp_r1;
    u16 var_r0;
    u16 var_r0_3;
    u8 temp_r0;
    u8 temp_r0_2;
    u8 temp_r0_3;
    u8 temp_r5;
    u8 var_r1;

    temp_r1 = gCurTask->data;
    temp_r0 = temp_r1->unk7;
    switch (temp_r0) {                              /* irregular */
    case 1:
        if (gStageData.playerIndex == 0) {
            var_r0 = sub_80240B4(temp_r1->unk3);
        } else {
            var_r0 = sub_80240F4();
        }
        temp_r1->unk9 = (u8) ((0x10 & var_r0) | temp_r1->unk9);
        /* fallthrough */
    default:
        if ((s32) (M2C_ERROR(/* Read from unset register $r2 */) << 0x10) < 0) {
            sub_802613C();
            return;
        }
    case 0:
    case 3:
        sub_809ADF0((CharacterSelect *) temp_r1);
        sub_809AE50((CharacterSelect *) temp_r1);
        sub_809AF08(temp_r1);
        sub_809B69C((CharacterSelect *) temp_r1);
        sub_809B6C0((CharacterSelect *) temp_r1);
        temp_r1->unk3 = 0U;
        var_r1 = 0;
        if (temp_r1->unk5 == 0) {
loop_10:
            temp_r1->unk3 = (u8) (temp_r1->unk3 + 1);
loop_11:
            var_r1 += 1;
            if ((u32) var_r1 <= 3U) {
                temp_r0_2 = temp_r1->unk3;
                if (temp_r0_2 != temp_r1->unk5) {
                    if ((u32) temp_r0_2 > 4U) {
                        goto loop_11;
                    }
                } else {
                    goto loop_10;
                }
            }
        }
        temp_r0_3 = temp_r1->unk3;
        temp_r1->unk4 = temp_r0_3;
        temp_r1->unk6 = temp_r0_3;
        temp_r5 = gUnknown_080D8F18[temp_r1->unk6];
        temp_r1->unk3C = 0x13600;
        temp_r1->unk40 = 0x5000;
        if (!(*(temp_r5 + &gUnknown_080D946D) & LOADED_SAVE->unlockedCharacters)) {
            if (0x20000 & gFlags) {
                var_r0_2 = &gUnknown_08E2EEF0;
                goto block_20;
            }
            (void *)0x040000D4->unk0 = &gUnknown_08E2EEF0;
            (void *)0x040000D4->unk4 = &gObjPalette[0x70];
            (void *)0x040000D4->unk8 = 0x80000010;
            gFlags |= 2;
        } else if (0x20000 & gFlags) {
            var_r0_2 = (temp_r5 << 5) + &gUnknown_08E2EE50;
block_20:
            CopyPalette(var_r0_2, 0x70U, 0x10U);
        } else {
            (void *)0x040000D4->unk0 = (u16 *) ((temp_r5 << 5) + &gUnknown_08E2EE50);
            (void *)0x040000D4->unk4 = &gObjPalette[0x70];
            (void *)0x040000D4->unk8 = 0x80000010;
            gFlags |= 2;
        }
        gFlags |= 2;
        temp_r1->unk157 = 0xFF;
        temp_r2 = temp_r1 + 0x234;
        temp_r2->graphics.dest = (void *)0x06008000;
        temp_r2->graphics.anim = 0;
        temp_r2->layoutVram = (u16 *)0x0600D800;
        temp_r2->unk18 = 0;
        temp_r2->unk1A = 0;
        if (!(*(temp_r5 + &gUnknown_080D946D) & LOADED_SAVE->unlockedCharacters)) {
            var_r0_3 = gUnknown_080D8CDC->unk20;
        } else {
            var_r0_3 = gUnknown_080D8CDC[temp_r5 + 5];
        }
        temp_r2->tilemapId = var_r0_3;
        temp_r2->unk1E = 0;
        temp_r2->unk20 = 0;
        temp_r2->unk22 = 0;
        temp_r2->unk24 = 0;
        temp_r2->targetTilesX = 0x10;
        temp_r2->targetTilesY = 0x10;
        temp_r2->paletteOffset = 0;
        temp_r2->flags = 6;
        DrawBackground(temp_r2);
        gCurTask->main = sub_8099680;
        return;
    }
}

void sub_8099680(u16 arg2) {
    u16 temp_r1;
    u16 var_r0;
    u32 var_r5;
    u8 temp_r0;

    temp_r1 = gCurTask->data;
    var_r5 = 0;
    temp_r0 = temp_r1->unk7;
    switch (temp_r0) {                              /* irregular */
    case 1:
        if (gStageData.playerIndex == 0) {
            var_r0 = sub_8023E80();
        } else {
            var_r0 = sub_8024188(temp_r1->unk4);
        }
        temp_r1->unk9 = (u8) ((0x10 & var_r0) | temp_r1->unk9);
        /* fallthrough */
    default:
        if ((s32) (M2C_ERROR(/* Read from unset register $r2 */) << 0x10) < 0) {
            sub_802613C();
            return;
        }
    case 0:
    case 3:
        temp_r1->unkB = 0xC;
        if (sub_809AC44(temp_r1, 0) == 1) {
            var_r5 = 0x01000000U >> 0x18;
        }
        if (sub_809B32C(temp_r1, 0) == 1) {
            var_r5 = (u32) (u8) (var_r5 + 1);
        }
        if (sub_809B3C4(temp_r1, 0) == 1) {
            var_r5 = (u32) (u8) (var_r5 + 1);
        }
        sub_809B41C(temp_r1);
        sub_809B13C((CharacterSelect *) temp_r1);
        sub_809ADF0((CharacterSelect *) temp_r1);
        sub_809AE50((CharacterSelect *) temp_r1);
        sub_809AF08(temp_r1);
        sub_809B69C((CharacterSelect *) temp_r1);
        sub_809B6C0((CharacterSelect *) temp_r1);
        if (var_r5 == 3) {
            temp_r1->unkB = 0xE;
            gCurTask->main = sub_8099758;
        }
        return;
    }
}

void sub_8099758(u16 arg2) {
    s16 temp_r0_4;
    s16 temp_r1_2;
    s16 temp_r2_2;
    s32 var_r3;
    s8 var_r0_3;
    u16 temp_r1;
    u16 var_r0;
    u16 var_r6;
    u8 temp_r0;
    u8 temp_r0_2;
    u8 temp_r0_3;
    u8 temp_r2;
    u8 temp_r3;
    u8 temp_r5;
    void (*var_r0_2)(u16);

    var_r6 = saved_reg_r6;
    temp_r1 = gCurTask->data;
    temp_r5 = gStageData.playerIndex;
    sub_809B13C((CharacterSelect *) temp_r1);
    sub_809ADF0((CharacterSelect *) temp_r1);
    sub_809AE50((CharacterSelect *) temp_r1);
    sub_809AF08(temp_r1);
    sub_809B69C((CharacterSelect *) temp_r1);
    sub_809B6C0((CharacterSelect *) temp_r1);
    temp_r0 = temp_r1->unk7;
    switch (temp_r0) {                              /* irregular */
    case 1:
        if (temp_r5 != 1) {
            if ((temp_r0 == 2) && ((u32) (u16) (temp_r5 - 2) <= 1U)) {
                goto block_6;
            }
        } else {
        case 0:
        case 3:
block_6:
            sub_809B284((CharacterSelect *) temp_r1);
            sub_809AD74((CharacterSelect *) temp_r1);
        }
        break;
    }
    temp_r0_2 = temp_r1->unk7;
    switch (temp_r0_2) {                            /* switch 1; irregular */
    case 1:                                         /* switch 1 */
        if (temp_r5 == 0) {
            var_r0 = sub_8023E80();
        } else {
            var_r0 = sub_8024188(temp_r1->unk4);
        }
        var_r6 = var_r0;
        temp_r1->unk9 = (u8) ((0x10 & var_r6) | temp_r1->unk9);
        /* fallthrough */
    default:                                        /* switch 1 */
        if ((s32) (var_r6 << 0x10) >= 0) {
        case 3:                                     /* switch 1 */
            temp_r0_3 = temp_r1->unk7;
            if (temp_r0_3 != 0) {
                if ((temp_r0_3 == 3) || ((temp_r0_3 == 1) && (temp_r5 == 1)) || ((temp_r0_3 == 2) && ((u32) (u16) (temp_r5 - 2) <= 1U))) {
                    if ((temp_r0_3 == 0) || (temp_r0_3 == 3)) {
                        goto block_23;
                    }
                    goto block_25;
                }
                if (temp_r0_3 == 1) {
                    temp_r1_2 = (s16) var_r6;
                    if (0x10 & temp_r1_2) {
                        temp_r1->unkB = 0x14;
                        var_r0_2 = sub_8099C9C;
                        goto block_50;
                    }
                    temp_r2 = temp_r1->unk3;
                    temp_r0_4 = temp_r1_2 - 1;
                    if ((temp_r2 != temp_r0_4) && ((s32) temp_r1_2 > 0) && ((s32) temp_r1_2 <= 5)) {
                        temp_r2_2 = temp_r0_4;
                        if ((s32) temp_r2 < (s32) temp_r2_2) {
                            var_r3 = 1;
                            if (((s32) temp_r2 <= 1) && ((s32) (temp_r2 + 2) < (s32) temp_r2_2)) {
                                var_r3 = 2;
                            }
                        } else {
                            var_r3 = 2;
                            if (((s32) temp_r2 > 2) && ((s32) (temp_r2 - 2) > (s32) temp_r2_2)) {
                                var_r3 = 1;
                            }
                        }
                        if (var_r3 == 1) {
                            var_r0_3 = 0;
                        } else {
                            var_r0_3 = 1;
                        }
                        temp_r1->unk1 = var_r0_3;
                        temp_r1->unk4 = (u8) (var_r6 - 1);
                        goto block_49;
                    }
                }
            } else {
            case 0:                                 /* switch 1 */
block_23:
                if (2 & gPressedKeys) {
                    m4aSongNumStart(0x6BU);
                    temp_r1->unkB = 0x13;
                    var_r0_2 = sub_809AABC;
                    goto block_50;
                }
block_25:
                if (0x30 & gRepeatedKeys) {
                    m4aSongNumStart(0x67U);
                    sub_8099C34(temp_r1);
block_49:
                    var_r0_2 = sub_8099968;
                    goto block_50;
                }
                if ((1 & gPressedKeys) && (temp_r3 = temp_r1->unk6, ((*(gUnknown_080D8F18[temp_r3] + &gUnknown_080D946D) & LOADED_SAVE->unlockedCharacters) != 0))) {
                    m4aSongNumStart(*((temp_r3 * 2) + &gCharacterSelectedVoices));
                    temp_r1->unkB = 0x14;
                    if (gUnknown_080D8F18[temp_r1->unk5] == gUnknown_080D8F18[temp_r1->unk6]) {
                        goto block_30;
                    }
                    var_r0_2 = sub_8099C9C;
block_50:
                    gCurTask->main = var_r0_2;
                } else {
                    return;
                }
            }
        } else {
block_30:
            sub_802613C();
            return;
        }
        break;
    }
}

void sub_8099968(u16 arg2) {
    Background *temp_r2;
    u16 *var_r0_2;
    u16 temp_r1;
    u16 var_r0;
    u16 var_r0_3;
    u16 var_r2;
    u32 var_r6;
    u8 temp_r0;
    u8 temp_r1_2;
    u8 temp_r5;

    temp_r1 = gCurTask->data;
    var_r6 = 0;
    temp_r0 = temp_r1->unk7;
    switch (temp_r0) {                              /* irregular */
    case 1:
        if (gStageData.playerIndex == 0) {
            var_r0 = sub_8023E80();
        } else {
            var_r0 = sub_8024188(temp_r1->unk4);
        }
        var_r2 = var_r0;
        temp_r1->unk9 = (u8) ((0x10 & var_r2) | temp_r1->unk9);
        /* fallthrough */
    default:
        if ((s32) (M2C_ERROR(/* Read from unset register $r2 */) << 0x10) < 0) {
            sub_802613C();
            return;
        }
    case 0:
    case 3:
        if (sub_809B32C(temp_r1, 1) == 1) {
            var_r6 = 0x01000000U >> 0x18;
        }
        if (sub_809B25C(temp_r1) == 1) {
            var_r6 = (u32) (u8) (var_r6 + 1);
        }
        sub_809B13C((CharacterSelect *) temp_r1);
        sub_809ADF0((CharacterSelect *) temp_r1);
        sub_809AE50((CharacterSelect *) temp_r1);
        sub_809AF08(temp_r1);
        sub_809B69C((CharacterSelect *) temp_r1);
        sub_809B6C0((CharacterSelect *) temp_r1);
        if (var_r6 != 2) {
            return;
        }
        temp_r1_2 = temp_r1->unk4;
        temp_r1->unk3 = temp_r1_2;
        temp_r1->unk3C = 0x14A00;
        temp_r1->unk6 = temp_r1_2;
        temp_r1->unk40 = 0x5000;
        temp_r1->unkB = 4;
        temp_r1->unk4C = 0x14000;
        temp_r5 = gUnknown_080D8F18[temp_r1->unk6];
        if (!(*(temp_r5 + &gUnknown_080D946D) & LOADED_SAVE->unlockedCharacters)) {
            if (0x20000 & gFlags) {
                var_r0_2 = &gUnknown_08E2EEF0;
                goto block_21;
            }
            (void *)0x040000D4->unk0 = &gUnknown_08E2EEF0;
            (void *)0x040000D4->unk4 = &gObjPalette[0x70];
            (void *)0x040000D4->unk8 = 0x80000010;
            gFlags |= var_r6;
        } else if (0x20000 & gFlags) {
            var_r0_2 = (temp_r5 << 5) + &gUnknown_08E2EE50;
block_21:
            CopyPalette(var_r0_2, 0x70U, 0x10U);
        } else {
            (void *)0x040000D4->unk0 = (u16 *) ((temp_r5 << 5) + &gUnknown_08E2EE50);
            (void *)0x040000D4->unk4 = &gObjPalette[0x70];
            (void *)0x040000D4->unk8 = 0x80000010;
            gFlags |= var_r6;
        }
        gFlags |= 2;
        temp_r1->unkB = 0xE;
        temp_r2 = temp_r1 + 0x234;
        temp_r2->graphics.dest = (void *)0x06008000;
        temp_r2->graphics.anim = 0;
        temp_r2->layoutVram = (u16 *)0x0600D800;
        temp_r2->unk18 = 0;
        temp_r2->unk1A = 0;
        if (!(*(temp_r5 + &gUnknown_080D946D) & LOADED_SAVE->unlockedCharacters)) {
            var_r0_3 = gUnknown_080D8CDC->unk20;
        } else {
            var_r0_3 = gUnknown_080D8CDC[temp_r5 + 5];
        }
        temp_r2->tilemapId = var_r0_3;
        temp_r2->unk1E = 0;
        temp_r2->unk20 = 0;
        temp_r2->unk22 = 0;
        temp_r2->unk24 = 0;
        temp_r2->targetTilesX = 0x10;
        temp_r2->targetTilesY = 0x10;
        temp_r2->paletteOffset = 0;
        temp_r2->flags = 6;
        DrawBackground(temp_r2);
        gCurTask->main = sub_8099B78;
        return;
    }
}

void sub_8099B78(u16 arg2) {
    u16 temp_r1;
    u16 var_r0;
    u32 var_r5;
    u8 temp_r0;

    temp_r1 = gCurTask->data;
    var_r5 = 0;
    temp_r0 = temp_r1->unk7;
    switch (temp_r0) {                              /* irregular */
    case 1:
        if (gStageData.playerIndex == 0) {
            var_r0 = sub_8023E80();
        } else {
            var_r0 = sub_8024188(temp_r1->unk4);
        }
        temp_r1->unk9 = (u8) ((0x10 & var_r0) | temp_r1->unk9);
        /* fallthrough */
    default:
        if ((s32) (M2C_ERROR(/* Read from unset register $r2 */) << 0x10) < 0) {
            sub_802613C();
            return;
        }
    case 0:
    case 3:
        if (sub_809B32C(temp_r1, 0) == 1) {
            var_r5 = 0x01000000U >> 0x18;
        }
        if (sub_809B1B4(temp_r1) == 1) {
            var_r5 = (u32) (u8) (var_r5 + 1);
        }
        sub_809B13C((CharacterSelect *) temp_r1);
        sub_809ADF0((CharacterSelect *) temp_r1);
        sub_809AE50((CharacterSelect *) temp_r1);
        sub_809AF08(temp_r1);
        sub_809B69C((CharacterSelect *) temp_r1);
        sub_809B6C0((CharacterSelect *) temp_r1);
        if (var_r5 == 2) {
            temp_r1->unk5C = 0;
            temp_r1->unkB = 0xE;
            gCurTask->main = sub_8099758;
        }
        return;
    }
}

void sub_8099C34(void *arg0) {
    u8 temp_r0;
    u8 temp_r0_2;

    arg0->unk4 = (u8) arg0->unk3;
    if (0x10 & gRepeatedKeys) {
        do {
            temp_r0 = arg0->unk4;
            if ((u32) temp_r0 > 3U) {
                arg0->unk4 = 0U;
            } else {
                arg0->unk4 = (u8) (temp_r0 + 1);
            }
        } while (arg0->unk4 == arg0->unk5);
        arg0->unk1 = 0;
        arg0->unkB = 0xF;
    }
    if (0x20 & gRepeatedKeys) {
        do {
            temp_r0_2 = arg0->unk4;
            if (temp_r0_2 == 0) {
                arg0->unk4 = 4U;
            } else {
                arg0->unk4 = (u8) (temp_r0_2 - 1);
            }
        } while (arg0->unk4 == arg0->unk5);
        arg0->unk1 = 1;
        arg0->unkB = 0x10;
    }
}

void sub_8099C9C(u16 arg2) {
    Background *temp_r0_2;
    Player *temp_r1_2;
    u16 temp_r1;
    u16 var_r0;
    u16 var_r2;
    u8 temp_r0;

    temp_r1 = gCurTask->data;
    temp_r0 = temp_r1->unk7;
    switch (temp_r0) {                              /* irregular */
    case 1:
        if (gStageData.playerIndex == 0) {
            var_r0 = sub_8023EFC();
        } else {
            var_r0 = sub_80241AC(temp_r1->unk4);
        }
        var_r2 = var_r0;
        temp_r1->unk9 = (u8) ((0x10 & var_r2) | temp_r1->unk9);
        /* fallthrough */
    default:
        if ((s32) (M2C_ERROR(/* Read from unset register $r2 */) << 0x10) < 0) {
            sub_802613C();
            return;
        }
    case 0:
    case 3:
        sub_809ADF0((CharacterSelect *) temp_r1);
        sub_809AE50((CharacterSelect *) temp_r1);
        sub_809AF08(temp_r1);
        gBgSprites_Unknown1[2] = 0;
        gBgSprites_Unknown2[2][0] = 0;
        gBgSprites_Unknown2[2][1] = 0;
        gBgSprites_Unknown2[2][2] = 0xFF;
        gBgSprites_Unknown2[2][3] = 0x40;
        temp_r1->unk4C = 0x8E00;
        temp_r1->unk50 = 0x1600;
        gBgScrollRegs[2][0] = 0x8E;
        gBgScrollRegs[2][1] = -0x16;
        gDispCnt = 0x1740;
        gBgCntRegs[2] = 0x1B09;
        temp_r0_2 = temp_r1 + 0x234;
        temp_r0_2->graphics.dest = (void *)0x06008000;
        temp_r0_2->graphics.anim = 0;
        temp_r0_2->layoutVram = (u16 *)0x0600D800;
        temp_r0_2->unk18 = 0;
        temp_r0_2->unk1A = 0;
        temp_r0_2->tilemapId = gUnknown_080D8CDC[gUnknown_080D8F18[temp_r1->unk6] + 0xA];
        temp_r0_2->unk1E = 0;
        temp_r0_2->unk20 = 0;
        temp_r0_2->unk22 = 0;
        temp_r0_2->unk24 = 0;
        temp_r0_2->targetTilesX = 0x10;
        temp_r0_2->targetTilesY = 0x10;
        temp_r1->unk25E = 0;
        temp_r0_2->flags = 2;
        DrawBackground(temp_r0_2);
        sub_809B69C((CharacterSelect *) temp_r1);
        sub_809B6C0((CharacterSelect *) temp_r1);
        switch (gStageData.gameMode) {              /* switch 1; irregular */
        case 0:                                     /* switch 1 */
        case 3:                                     /* switch 1 */
        case 4:                                     /* switch 1 */
            gPlayers->unk17A = (u8) ((-0x10 & gPlayers->unk17A) | (0xF & gUnknown_080D8F18[temp_r1->unk6]));
block_15:
            gCurTask->main = sub_8099EC8;
            break;
        case 5:                                     /* switch 1 */
            temp_r1_2 = &gPlayers[(gStageData.playerIndex + 1) & 1];
            temp_r1_2->unk2A = (u8) ((-0x10 & temp_r1_2->unk2A) | (0xF & gUnknown_080D8F18[temp_r1->unk6]));
            goto block_15;
        }
        return;
    }
}

void sub_8099E44(void) {
    u16 temp_r1;
    u8 var_r5;

    temp_r1 = gCurTask->data;
    var_r5 = 0;
    if (sub_809B424(temp_r1, 0) == 1) {
        var_r5 = 1;
    }
    if (sub_809B470(temp_r1, 0) == 1) {
        var_r5 += 1;
    }
    if (sub_809B4BC(temp_r1, 0) == 1) {
        var_r5 += 1;
    }
    if (sub_809B548(temp_r1, 0) == 1) {
        var_r5 += 1;
    }
    sub_809ADF0((CharacterSelect *) temp_r1);
    sub_809AE50((CharacterSelect *) temp_r1);
    sub_809AF08(temp_r1);
    sub_809B094(temp_r1);
    if (var_r5 == 4) {
        gCurTask->main = sub_8099EC8;
    }
}

void sub_8099EC8(u16 arg2) {
    u16 temp_r1;
    u16 var_r0;
    u32 var_r5;
    u8 temp_r0;

    temp_r1 = gCurTask->data;
    var_r5 = 0;
    if (temp_r1->unkE != 0) {
        gDispCnt |= 0x2000;
        gWinRegs->unk0 = 0xF0;
        gWinRegs[2] = 0xA0;
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FBF;
        temp_r1->unk10 = 0U;
        temp_r1->unkE = 0U;
    }
    temp_r0 = temp_r1->unk7;
    switch (temp_r0) {                              /* irregular */
    case 1:
        if (gStageData.playerIndex == 0) {
            var_r0 = sub_8023EFC();
        } else {
            var_r0 = sub_80241AC(temp_r1->unk4);
        }
        temp_r1->unk9 = (u8) ((0x10 & var_r0) | temp_r1->unk9);
        /* fallthrough */
    default:
        if ((s32) (M2C_ERROR(/* Read from unset register $r3 */) << 0x10) < 0) {
            sub_802613C();
            return;
        }
    case 0:
    case 3:
        if (sub_809B424(temp_r1, 0) == 1) {
            var_r5 = 0x01000000U >> 0x18;
        }
        if (sub_809B470(temp_r1, 0) == 1) {
            var_r5 = (u32) (u8) (var_r5 + 1);
        }
        if (sub_809B4BC(temp_r1, 0) == 1) {
            var_r5 = (u32) (u8) (var_r5 + 1);
        }
        if (sub_809B548(temp_r1, 0) == 1) {
            var_r5 = (u32) (u8) (var_r5 + 1);
        }
        sub_809ADF0((CharacterSelect *) temp_r1);
        sub_809AE50((CharacterSelect *) temp_r1);
        sub_809AF08(temp_r1);
        sub_809B094(temp_r1);
        if ((u32) gBldRegs.bldY <= 0xFU) {
            gBldRegs.bldY = (u16) ((u16) temp_r1->unk10 >> 8);
            temp_r1->unk10 = (u16) (temp_r1->unk10 + 0x100);
            return;
        }
        if (var_r5 == 4) {
            gBldRegs.bldY = 0x10;
            temp_r1->unkB = 0x16;
            sub_809A9A0(temp_r1);
            sub_809A808(temp_r1);
            temp_r1->unk58 = 0xE00;
            gCurTask->main = sub_809A018;
        }
        return;
    }
}

void sub_809A018(u16 arg2) {
    u16 temp_r1;
    u16 var_r0;
    u16 var_r5;
    u8 temp_r0;
    void (*var_r0_2)(u16);

    var_r5 = saved_reg_r5;
    temp_r1 = gCurTask->data;
    if (temp_r1->unkE != 0) {
        gDispCnt |= 0x2000;
        gWinRegs->unk0 = 0xF0;
        gWinRegs[2] = 0xA0;
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FBF;
        gBldRegs.bldY = 0x10;
        temp_r1->unk10 = 0x1000U;
        temp_r1->unkE = 0U;
    }
    temp_r0 = temp_r1->unk7;
    switch (temp_r0) {                              /* irregular */
    case 1:
        if (gStageData.playerIndex == 0) {
            var_r0 = sub_8023EFC();
        } else {
            var_r0 = sub_80241AC(temp_r1->unk4);
        }
        var_r5 = var_r0;
        temp_r1->unk9 = (u8) ((0x10 & var_r5) | temp_r1->unk9);
        /* fallthrough */
    default:
        if ((s32) (var_r5 << 0x10) < 0) {
            sub_802613C();
            return;
        }
    case 0:
    case 3:
        sub_809B13C((CharacterSelect *) temp_r1);
        sub_809ADF0((CharacterSelect *) temp_r1);
        sub_809AFC0((CharacterSelect *) temp_r1);
        sub_809B6C0((CharacterSelect *) temp_r1);
        sub_809B69C((CharacterSelect *) temp_r1);
        if (gBldRegs.bldY != 0) {
            gBldRegs.bldY = (u16) ((u16) temp_r1->unk10 >> 8);
            temp_r1->unk10 = (u16) (temp_r1->unk10 + 0xFFFFFF00);
            return;
        }
        temp_r1->unkE = 1U;
        gBldRegs.bldY = gBldRegs.bldY;
        if (temp_r1->unk7 == 1) {
            var_r0_2 = sub_809A130;
        } else {
            var_r0_2 = sub_809A1C4;
        }
        gCurTask->main = var_r0_2;
        return;
    }
}

void sub_809A130(u16 arg2) {
    u16 temp_r1;
    u16 var_r0;
    u16 var_r5;
    u8 temp_r0;

    var_r5 = saved_reg_r5;
    temp_r1 = gCurTask->data;
    temp_r0 = temp_r1->unk7;
    switch (temp_r0) {                              /* irregular */
    case 1:
        if (gStageData.playerIndex == 0) {
            var_r0 = sub_8023EFC();
        } else {
            var_r0 = sub_80241AC(temp_r1->unk4);
        }
        var_r5 = var_r0;
        temp_r1->unk9 = (u8) ((0x10 & var_r5) | temp_r1->unk9);
        /* fallthrough */
    default:
        if ((s32) (var_r5 << 0x10) < 0) {
            sub_802613C();
            return;
        }
    case 0:
    case 3:
        sub_809B13C((CharacterSelect *) temp_r1);
        sub_809ADF0((CharacterSelect *) temp_r1);
        sub_809AFC0((CharacterSelect *) temp_r1);
        sub_809B6C0((CharacterSelect *) temp_r1);
        sub_809B69C((CharacterSelect *) temp_r1);
        if ((s16) var_r5 & 0x10) {
            gCurTask->main = sub_809A1C4;
        }
        return;
    }
}

void sub_809A1C4(u16 arg2) {
    s16 temp_r0_2;
    u16 temp_r0;
    u16 temp_r1;
    u16 temp_r3;
    u8 temp_r1_2;
    u8 temp_r5;

    temp_r1 = gCurTask->data;
    temp_r5 = gStageData.playerIndex;
    sub_809B13C((CharacterSelect *) temp_r1);
    sub_809ADF0((CharacterSelect *) temp_r1);
    sub_809AFC0((CharacterSelect *) temp_r1);
    sub_809B6C0((CharacterSelect *) temp_r1);
    sub_809B69C((CharacterSelect *) temp_r1);
    temp_r0 = temp_r1->unk14;
    switch (temp_r0) {                              /* irregular */
    case 0x0:
        m4aSongNumStart(*((temp_r1->unk5 * 2) + &gAnnouncerSelect1st));
        break;
    case 0x3C:
        m4aSongNumStart(0x1FFU);
        break;
    case 0x5A:
        m4aSongNumStart(*((temp_r1->unk6 * 2) + &gAnnouncerSelect2nd));
        break;
    }
    temp_r3 = temp_r1->unk14 + 1;
    temp_r1->unk14 = temp_r3;
    temp_r1_2 = temp_r1->unk7;
    if (temp_r1_2 == 1) {
        if (temp_r5 == 0) {
            if ((temp_r1_2 & gPressedKeys) || (8 & gPressedKeys)) {
                if ((s32) (sub_802610C() << 0x10) >= 0) {
                    sub_8024130();
                    goto block_23;
                }
                goto block_16;
            }
            if ((u32) temp_r3 > 0x78U) {
                if ((sub_8024130() << 0x10) == 0) {
                    goto block_19;
                }
                goto block_23;
            }
        } else {
            temp_r0_2 = sub_8024208();
            if ((s32) temp_r0_2 < 0) {
block_16:
                sub_802613C();
                return;
            }
            if (temp_r0_2 == 0) {
                if ((u32) temp_r1->unk14 > 0x78U) {
block_19:
                    temp_r1->unk14 = 0x79U;
                }
            } else {
                goto block_23;
            }
        }
    } else if ((1 & gPressedKeys) || (8 & gPressedKeys) || ((u32) temp_r3 > 0x78U)) {
block_23:
        temp_r1->unk2 = 2;
        temp_r1->unkB = 0x17;
        gCurTask->main = sub_8098508;
    }
}

void sub_809A2E8(void) {
    u16 temp_r1;

    temp_r1 = gCurTask->data;
    if (temp_r1->unkE != 0) {
        gDispCnt |= 0x2000;
        gWinRegs->unk0 = 0xF0;
        gWinRegs[2] = 0xA0;
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FBF;
        temp_r1->unkE = 0U;
        temp_r1->unk10 = 0U;
    }
    sub_809B13C((CharacterSelect *) temp_r1);
    sub_809ADF0((CharacterSelect *) temp_r1);
    sub_809AFC0((CharacterSelect *) temp_r1);
    sub_809B6C0((CharacterSelect *) temp_r1);
    sub_809B69C((CharacterSelect *) temp_r1);
    if ((u32) gBldRegs.bldY > 0xFU) {
        gBldRegs.bldY = 0x10;
        temp_r1->unk14 = 0;
        temp_r1->unk3C = 0x13600;
        temp_r1->unk34 = 0x13600;
        temp_r1->unkB = 0x1D;
        sub_809A50C(temp_r1);
        gCurTask->main = sub_809A3BC;
        return;
    }
    gBldRegs.bldY = (u16) ((u16) temp_r1->unk10 >> 8);
    temp_r1->unk10 = (u16) (temp_r1->unk10 + 0x100);
    if ((temp_r1->unk7 == 1) && (sub_809AD08(temp_r1) == 0)) {
        sub_802613C();
    }
}

void sub_809A3BC(u16 arg2) {
    s32 temp_r5;
    u16 temp_r4;
    u8 temp_r4_2;
    u8 temp_r4_3;

    temp_r4 = gCurTask->data;
    temp_r5 = temp_r4 + 0xB;
    sub_809BF3C(temp_r4 + 5, temp_r5, temp_r4 + 0x34, temp_r4 + 0x38, temp_r4->unk20);
    sub_809BF3C(temp_r4 + 3, temp_r5, temp_r4 + 0x3C, temp_r4 + 0x40, temp_r4->unk1C);
    temp_r4->unkB = 0xE;
    sub_809A644(temp_r4);
    temp_r4->unk34 = 0x5A00;
    temp_r4->unk3C = 0x9600;
    temp_r4->unk64 = 0x5F00;
    temp_r4->unk6C = 0x9100;
    temp_r4->unk54 = 0xC900;
    temp_r4->unk58 = 0x1600;
    temp_r4->unk4C = 0x7800;
    temp_r4_2 = gUnknown_080D8F18[temp_r4->unk5];
    if (0x20000 & gFlags) {
        CopyPalette((temp_r4_2 << 5) + &gUnknown_08E2EE50, 0x60U, 0x10U);
    } else {
        (void *)0x040000D4->unk0 = (void *) ((temp_r4_2 << 5) + &gUnknown_08E2EE50);
        (void *)0x040000D4->unk4 = &gObjPalette[0x60];
        (void *)0x040000D4->unk8 = 0x80000010;
        gFlags |= 2;
    }
    temp_r4_3 = gUnknown_080D8F18[temp_r4->unk6];
    if (0x20000 & gFlags) {
        CopyPalette((temp_r4_3 << 5) + &gUnknown_08E2EE50, 0x70U, 0x10U);
    } else {
        (void *)0x040000D4->unk0 = (void *) ((temp_r4_3 << 5) + &gUnknown_08E2EE50);
        (void *)0x040000D4->unk4 = &gObjPalette[0x70];
        (void *)0x040000D4->unk8 = 0x80000010;
        gFlags |= 2;
    }
    gCurTask->main = sub_809A6C0;
}

void sub_809A50C(void *arg0) {
    Background *temp_r0;
    Background *temp_r3;
    u16 var_r0;
    u8 temp_r4;

    gDispCnt = 0x1741;
    gBgSprites_Unknown1[1] = 0;
    gBgSprites_Unknown2[1][0] = 0;
    gBgSprites_Unknown2[1][1] = 0;
    gBgSprites_Unknown2[1][2] = 0xFF;
    gBgSprites_Unknown2[1][3] = 0x40;
    gBgCntRegs[1] = 0x30E;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    temp_r3 = arg0 + 0x1F4;
    temp_r4 = gUnknown_080D8F18[arg0->unk5];
    temp_r3->graphics.dest = (void *)0x0600C000;
    temp_r3->graphics.anim = 0;
    temp_r3->layoutVram = (u16 *)0x06001800;
    temp_r3->unk18 = 0;
    temp_r3->unk1A = 0;
    if (!(*(temp_r4 + &gUnknown_080D946D) & LOADED_SAVE->unlockedCharacters)) {
        var_r0 = gUnknown_080D8CDC->unk20;
    } else {
        var_r0 = gUnknown_080D8CDC[temp_r4 + 0xA];
    }
    temp_r3->tilemapId = var_r0;
    temp_r3->unk1E = 0;
    temp_r3->unk20 = 0;
    temp_r3->unk22 = 0;
    temp_r3->unk24 = 0;
    temp_r3->targetTilesX = 0x10;
    temp_r3->targetTilesY = 0x10;
    temp_r3->paletteOffset = 0;
    temp_r3->flags = 1;
    DrawBackground(temp_r3);
    gBgCntRegs[2] = 0x1B89;
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;
    temp_r0 = arg0 + 0x234;
    temp_r0->graphics.dest = (void *)0x06008000;
    temp_r0->graphics.anim = 0;
    temp_r0->layoutVram = (u16 *)0x0600D800;
    temp_r0->unk18 = 0;
    temp_r0->unk1A = 0;
    temp_r0->tilemapId = gUnknown_080D8CDC[gUnknown_080D8F18[arg0->unk6] + 5];
    temp_r0->unk1E = 0;
    temp_r0->unk20 = 0;
    temp_r0->unk22 = 0;
    temp_r0->unk24 = 0;
    temp_r0->targetTilesX = 0x10;
    temp_r0->targetTilesY = 0x10;
    arg0->unk25E = 0;
    temp_r0->flags = 6;
    DrawBackground(temp_r0);
}

void sub_809A644(void *arg0) {
    Sprite *temp_r0;
    Sprite *temp_r0_2;
    u8 temp_r2;

    temp_r0 = arg0 + 0x114;
    temp_r0->anim = gUnknown_080D8EF8.anim;
    temp_r0->variant = gUnknown_080D8EF8.variant;
    temp_r0->prevVariant = 0xFF;
    temp_r0->x = (s16) ((s32) arg0->unk64 >> 8);
    temp_r0->y = (s16) ((s32) arg0->unk68 >> 8);
    temp_r0->oamFlags = 0x40;
    temp_r0->animCursor = 0;
    temp_r0->qAnimDelay = 0;
    temp_r0->animSpeed = 0x10;
    temp_r0->palId = 0;
    temp_r0->frameFlags = 0x40000;
    UpdateSpriteAnimation(temp_r0);
    temp_r0_2 = arg0 + 0x9C;
    temp_r2 = arg0->unkB - 0xD;
    temp_r0_2->anim = (*gUnknown_080D8D08)[temp_r2 + (arg0->unkA * 8)].anim;
    temp_r0_2->variant = (*gUnknown_080D8D08)[temp_r2 + (arg0->unkA * 8)].variant;
    UpdateSpriteAnimation(temp_r0_2);
}

void sub_809A6C0(u16 arg2) {
    u16 temp_r1;
    u16 temp_r7;
    u32 var_r5;

    temp_r1 = gCurTask->data;
    var_r5 = 0;
    if (temp_r1->unkE != 0) {
        gDispCnt |= 0x2000;
        gWinRegs->unk0 = 0xF0;
        gWinRegs[2] = 0xA0;
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FBF;
        gBldRegs.bldY = 0x10;
        temp_r1->unk10 = 0x1000U;
        temp_r1->unkE = 0U;
    }
    if ((temp_r1->unk7 == 1) && (sub_809AD08(temp_r1) == 0)) {
        sub_802613C();
        return;
    }
    sub_809B13C((CharacterSelect *) temp_r1);
    sub_809ADF0((CharacterSelect *) temp_r1);
    sub_809AE50((CharacterSelect *) temp_r1);
    sub_809AF08(temp_r1);
    sub_809B69C((CharacterSelect *) temp_r1);
    sub_809B6C0((CharacterSelect *) temp_r1);
    if (sub_809B424(temp_r1, 1) == 1) {
        var_r5 = 0x01000000U >> 0x18;
    }
    if (sub_809B470(temp_r1, 1) == 1) {
        var_r5 = (u32) (u8) (var_r5 + 1);
    }
    if (sub_809B4BC(temp_r1, 1) == 1) {
        var_r5 = (u32) (u8) (var_r5 + 1);
    }
    if (sub_809B548(temp_r1, 1) == 1) {
        var_r5 = (u32) (u8) (var_r5 + 1);
    }
    temp_r7 = gBldRegs.bldY;
    if (temp_r7 != 0) {
        gBldRegs.bldY = (u16) ((u16) temp_r1->unk10 >> 8);
        temp_r1->unk10 = (u16) (temp_r1->unk10 + 0xFFFFFF00);
        return;
    }
    if (var_r5 == 4) {
        temp_r1->unkB = 0xE;
        if (temp_r1->unk7 == 1) {
            sub_809B700(temp_r1);
        }
        if (sub_809B704(temp_r1, 0xEU) != 0) {
            temp_r1->unkE = 1U;
            gBldRegs.bldY = temp_r7;
            gCurTask->main = sub_8099758;
        }
    }
}

void sub_809A808(void *arg0) {
    Sprite *temp_r0_2;
    Sprite *temp_r3;
    s32 var_r2;
    u8 temp_r0;
    u8 temp_r2;

    temp_r3 = arg0 + 0x9C;
    temp_r2 = gUnknown_080D8F18[arg0->unk5];
    temp_r0 = gUnknown_080D8F18[arg0->unk6];
    if ((temp_r2 == 0) || (temp_r0 == 0)) {
        if ((temp_r2 == 2) || (temp_r0 == 2)) {
            var_r2 = 4;
        } else if ((temp_r2 == 3) || (temp_r0 == 3)) {
            var_r2 = 6;
        } else if ((temp_r2 == 4) || (temp_r0 == 4)) {
            var_r2 = 3;
        } else {
            goto block_16;
        }
    } else if (((temp_r2 == 4) && (temp_r0 == 1)) || ((temp_r2 == 1) && (temp_r0 == 4))) {
        var_r2 = 5;
    } else {
block_16:
        var_r2 = 2;
    }
    temp_r3->anim = (*gUnknown_080D8D08)[var_r2 + (arg0->unkA * 8)].anim;
    temp_r3->variant = (*gUnknown_080D8D08)[var_r2 + (arg0->unkA * 8)].variant;
    UpdateSpriteAnimation(temp_r3);
    temp_r0_2 = arg0 + 0x114;
    temp_r0_2->anim = gUnknown_080D8F00.unk0;
    temp_r0_2->variant = gUnknown_080D8F00.unk2;
    temp_r0_2->prevVariant = 0xFF;
    temp_r0_2->x = (s16) ((s32) arg0->unk64 >> 8);
    temp_r0_2->y = (s16) ((s32) arg0->unk68 >> 8);
    temp_r0_2->oamFlags = 0x40;
    temp_r0_2->animCursor = 0;
    temp_r0_2->qAnimDelay = 0;
    temp_r0_2->animSpeed = 0x10;
    temp_r0_2->palId = 0;
    temp_r0_2->frameFlags = 0;
    UpdateSpriteAnimation(temp_r0_2);
}

void sub_809A8D0(void *arg0, u8 arg1) {
    Background *temp_r0;
    s16 var_r0;
    u8 temp_r6;

    temp_r6 = arg1;
    gDispCnt |= 0x200;
    gBgCntRegs[1] = 0x38C;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    temp_r0 = arg0 + 0x1F4;
    temp_r0->graphics.dest = (void *)0x0600C000;
    temp_r0->graphics.anim = 0;
    temp_r0->layoutVram = (u16 *)0x06001800;
    temp_r0->unk18 = 0;
    temp_r0->unk1A = 0;
    temp_r0->tilemapId = gUnknown_080D8CDC[temp_r6 - 2];
    temp_r0->unk1E = 0;
    temp_r0->unk20 = 0;
    temp_r0->unk22 = 0;
    temp_r0->unk24 = 0;
    temp_r0->targetTilesX = 0x10;
    temp_r0->targetTilesY = 0x10;
    arg0->unk21E = 0;
    temp_r0->flags = 5;
    DrawBackground(temp_r0);
    switch (temp_r6) {                              /* irregular */
    case 4:
    case 6:
    case 3:
        if (gUnknown_080D8F18[arg0->unk5] == 0) {
            var_r0 = 0x1000;
        } else {
block_8:
            var_r0 = 0xF000;
        }
block_9:
        arg0->unk18 = var_r0;
        break;
    case 5:
        if (gUnknown_080D8F18[arg0->unk5] == 1) {
            var_r0 = 0x1000;
        } else {
            goto block_8;
        }
        goto block_9;
    }
    arg0->unk12 = 0;
}

void sub_809A9A0(void *arg0) {
    Background *temp_r0;

    gDispCnt = 0x1541;
    gBgCntRegs[2] = 0x1B89;
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;
    arg0->unk4C = 0x7800;
    arg0->unk50 = 0x5500;
    temp_r0 = arg0 + 0x234;
    temp_r0->graphics.dest = (void *)0x06008000;
    temp_r0->graphics.anim = 0;
    temp_r0->layoutVram = (u16 *)0x0600D800;
    temp_r0->unk18 = 0;
    temp_r0->unk1A = 0;
    temp_r0->tilemapId = gUnknown_080D8CDC->unk1E;
    temp_r0->unk1E = 0;
    temp_r0->unk20 = 0;
    temp_r0->unk22 = 0;
    temp_r0->unk24 = 0;
    temp_r0->targetTilesX = 0x10;
    temp_r0->targetTilesY = 0x10;
    arg0->unk25E = 0;
    temp_r0->flags = 6;
    DrawBackground(temp_r0);
}

void sub_809AA28(u16 arg2) {
    Sprite *temp_r0;
    u16 temp_r4;

    temp_r4 = gCurTask->data;
    sub_809ADF0((CharacterSelect *) temp_r4);
    sub_809AE50((CharacterSelect *) temp_r4);
    sub_809AF08(temp_r4);
    sub_809B69C((CharacterSelect *) temp_r4);
    sub_809B6C0((CharacterSelect *) temp_r4);
    if ((u32) temp_r4->unkB > 0xBU) {
        temp_r4->unkB = 1U;
        temp_r4->unk3C = 0x7800;
        temp_r4->unk40 = 0x5000;
        temp_r4->unk3 = (u8) temp_r4->unk5;
    }
    temp_r0 = temp_r4 + 0x9C;
    temp_r0->anim = gUnknown_080D8D08[temp_r4->unkA]->anim;
    temp_r0->variant = gUnknown_080D8D08[temp_r4->unkA]->variant;
    UpdateSpriteAnimation(temp_r0);
    temp_r4->unkB = 4U;
    temp_r4->unk12 = 0;
    temp_r4->unk4C = 0x7800;
    temp_r4->unk50 = 0x5500;
    gCurTask->main = sub_8098DE4;
}

void sub_809AABC(u16 arg2) {
    Background *temp_r3;
    u16 temp_r5;
    u16 var_r0;
    u32 var_r0_2;
    u8 temp_r2;
    u8 temp_r5_2;

    temp_r5 = gCurTask->data;
    sub_809ADF0((CharacterSelect *) temp_r5);
    sub_809AE50((CharacterSelect *) temp_r5);
    sub_809AF08(temp_r5);
    sub_809B69C((CharacterSelect *) temp_r5);
    sub_809B6C0((CharacterSelect *) temp_r5);
    sub_809B32C(temp_r5, 1);
    sub_809B13C((CharacterSelect *) temp_r5);
    sub_809B3C4(temp_r5, 1);
    sub_809B41C(temp_r5);
    if (sub_809AC44(temp_r5, 1) == 1) {
        temp_r5->unk34 = 0x14000;
        temp_r5->unk3 = (u8) temp_r5->unk5;
        temp_r5->unkB = 0x1F;
        temp_r5->unk3C = 0x7800;
        temp_r5->unk40 = 0x5000;
        temp_r3 = temp_r5 + 0x234;
        temp_r5_2 = gUnknown_080D8F18[temp_r5->unk5];
        temp_r3->graphics.dest = (void *)0x06008000;
        temp_r3->graphics.anim = 0;
        temp_r3->layoutVram = (u16 *)0x0600D800;
        temp_r3->unk18 = 0;
        temp_r3->unk1A = 0;
        if (!(*(temp_r5_2 + &gUnknown_080D946D) & LOADED_SAVE->unlockedCharacters)) {
            var_r0 = gUnknown_080D8CDC->unk20;
        } else {
            var_r0 = gUnknown_080D8CDC[temp_r5_2 + 5];
        }
        temp_r3->tilemapId = var_r0;
        temp_r3->unk1E = 0;
        temp_r3->unk20 = 0;
        temp_r3->unk22 = 0;
        temp_r3->unk24 = 0;
        temp_r3->targetTilesX = 0x10;
        temp_r3->targetTilesY = 0x10;
        temp_r3->paletteOffset = 0;
        temp_r3->flags = 6;
        DrawBackground(temp_r3);
        temp_r5->unk70 = 0x9100;
        gCurTask->main = sub_809AA28;
        return;
    }
    if ((temp_r5->unk7 == 1) && (sub_809AD08(temp_r5) == 0)) {
        sub_802613C();
        return;
    }
    temp_r2 = temp_r5->unk7;
    if (1 & gPressedKeys) {
        if ((temp_r2 != 0) && (temp_r2 != 3)) {
            var_r0_2 = (u32) (0 - (gMultiSioStatusFlags & 0x80)) >> 0x1F;
        } else {
            var_r0_2 = 1;
        }
        if (var_r0_2 != 0) {
            temp_r5->unkB = 0xC;
            if (temp_r2 == 1) {
                sub_809B700(temp_r5);
            }
            gCurTask->main = sub_8099680;
        }
    }
}

s32 sub_809AC44(void *arg0, s32 arg1) {
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 var_r0;
    u8 var_r3;

    var_r3 = 0;
    if ((arg1 << 0x18) != 0) {
        temp_r1 = arg0->unk34;
        if (temp_r1 <= 0x77FF) {
            arg0->unk34 = (s32) (temp_r1 + 0x600);
            arg0->unk54 = (s32) (arg0->unk54 + 0xFFFFFA00);
        } else {
            arg0->unk34 = 0x7800;
            arg0->unk54 = 0xC900;
            var_r3 = 1;
        }
        temp_r0 = arg0->unk44;
        if (temp_r0 > 0) {
            temp_r0_2 = temp_r0 + 0xFFFFF820;
            arg0->unk44 = temp_r0_2;
            if (temp_r0_2 < 0) {
                arg0->unk44 = 0;
            }
        } else {
            var_r0 = 0;
            goto block_15;
        }
    } else {
        temp_r1_2 = arg0->unk34;
        if ((s32) (temp_r1_2 >> 8) > 0x3C) {
            arg0->unk34 = (s32) (temp_r1_2 + 0xFFFFFA00);
            arg0->unk54 = (s32) (arg0->unk54 + 0x600);
        } else {
            arg0->unk34 = 0x3C00;
            arg0->unk54 = 0x10500;
            var_r3 = 1;
        }
        temp_r1_3 = arg0->unk44;
        if (temp_r1_3 <= 0x77FF) {
            temp_r0_3 = temp_r1_3 + 0x7E0;
            arg0->unk44 = temp_r0_3;
            if (temp_r0_3 > 0x7800) {
                arg0->unk44 = 0x7800;
            }
        } else {
            var_r0 = 0x7800;
block_15:
            arg0->unk44 = var_r0;
            var_r3 += 1;
        }
    }
    if (var_r3 != 2) {
        return 0;
    }
    return 1;
}

s32 sub_809AD08(void *arg0) {
    s32 var_r0;
    s32 var_r2;

    var_r2 = 0x20;
    if ((arg0->unk7 == 1) && ((u32) gStageData.playerIndex > 1U)) {
        var_r2 = 0x22;
    }
    if (0x80 & gMultiSioStatusFlags) {
        var_r0 = 2;
    } else {
        var_r0 = 1;
    }
    if (!(gMultiSioStatusFlags & var_r0)) {
        var_r2 = 0x21;
    }
    if (var_r2 == 0x21) {
        arg0->unk16 = (u16) (arg0->unk16 + 1);
    }
    if ((u32) arg0->unk16 > 0x77U) {
        switch (var_r2) {                           /* irregular */
        case 33:
        case 34:
            return 0;
        default:
            arg0->unk16 = 0U;
            goto block_18;
        }
    } else {
    case 32:
block_18:
        return 1;
    }
}

void sub_809AD74(CharacterSelect *cs) {
    Sprite *temp_r4;
    s16 var_r0;
    s32 var_r1;
    u32 var_r0_2;
    u8 var_r6;

    temp_r4 = &cs->spr74;
    var_r1 = 0x78;
    if ((u32) cs->unkB > 0xDU) {
        var_r1 = 0xB4;
    }
    var_r6 = 0;
    do {
        if (var_r6 != 0) {
            var_r0 = (var_r1 - 0x28) - ((s32) cs->qUnk5C >> 8);
        } else {
            var_r0 = var_r1 + 0x28 + ((s32) cs->qUnk5C >> 8);
        }
        temp_r4->x = var_r0;
        temp_r4->y = (s16) ((s32) cs->qUnk60 >> 8);
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

void sub_809ADF0(CharacterSelect *cs) {
    Sprite *temp_r4;
    Sprite *temp_r4_2;
    u32 var_r0;
    u8 var_r6;

    var_r6 = 0;
    temp_r4 = &cs->sprC4;
    do {
        temp_r4->x = (s16) ((s32) cs->qUnk2C >> 8);
        temp_r4->y = (s16) ((s32) cs->qUnk30 >> 8);
        if (var_r6 != 0) {
            var_r0 = temp_r4->frameFlags & 0xFFFFFBFF;
        } else {
            var_r0 = temp_r4->frameFlags | 0x400;
        }
        temp_r4->frameFlags = var_r0;
        DisplaySprite(temp_r4);
        var_r6 += 1;
    } while ((u32) var_r6 <= 1U);
    temp_r4_2 = &cs->spr9C;
    temp_r4_2->x = (s16) ((s32) cs->qUnk24 >> 8);
    temp_r4_2->y = (s16) ((s32) cs->qUnk28 >> 8);
    DisplaySprite(temp_r4_2);
}

void sub_809AE50(CharacterSelect *cs) {
    Sprite *temp_r4;
    Sprite *temp_r4_2;
    TileInfo2 *temp_r0;
    s32 var_r0_2;
    u32 temp_r3;
    u32 var_r0;
    u8 temp_r1;
    u8 temp_r2;
    u8 var_r5;

    var_r5 = 0;
    temp_r4 = &cs->spr114;
    do {
        temp_r4->x = (s16) ((s32) cs->qUnk64 >> 8);
        temp_r4->y = (s16) ((s32) cs->qUnk68 >> 8);
        temp_r4->palId = 0;
        if (var_r5 != 0) {
            var_r0 = temp_r4->frameFlags | 0x400;
        } else {
            var_r0 = temp_r4->frameFlags & 0xFFFFFBFF;
        }
        temp_r4->frameFlags = var_r0;
        DisplaySprite(temp_r4);
        var_r5 += 1;
    } while ((u32) var_r5 <= 1U);
    temp_r1 = cs->language;
    temp_r3 = (u32) ((0 - temp_r1) | temp_r1) >> 0x1F;
    temp_r2 = gUnknown_080D8F18[cs->unk5];
    temp_r4_2 = &cs->sprEC;
    if (!(*(temp_r2 + &gUnknown_080D946D) & LOADED_SAVE->unlockedCharacters)) {
        var_r0_2 = (temp_r3 * 8) + 6;
    } else {
        var_r0_2 = temp_r2 + (temp_r3 * 8);
    }
    temp_r0 = &gUnknown_080D8E80[var_r0_2];
    temp_r4_2->anim = temp_r0->anim;
    temp_r4_2->variant = temp_r0->variant;
    temp_r4_2->x = (s16) ((s32) cs->qUnk64 >> 8);
    temp_r4_2->y = (s16) ((s32) cs->qUnk68 >> 8);
    UpdateSpriteAnimation(temp_r4_2);
    DisplaySprite(temp_r4_2);
}

void sub_809AF08(void *arg0) {
    Sprite *temp_r4;
    Sprite *temp_r4_2;
    TileInfo2 *temp_r0;
    s32 var_r0_2;
    u32 temp_r3;
    u32 var_r0;
    u8 temp_r1;
    u8 temp_r2;
    u8 var_r5;

    var_r5 = 0;
    temp_r4 = arg0 + 0x114;
    do {
        temp_r4->x = (s16) ((s32) arg0->unk6C >> 8);
        temp_r4->y = (s16) ((s32) arg0->unk70 >> 8);
        temp_r4->palId = 1;
        if (var_r5 != 0) {
            var_r0 = temp_r4->frameFlags | 0x400;
        } else {
            var_r0 = temp_r4->frameFlags & 0xFFFFFBFF;
        }
        temp_r4->frameFlags = var_r0;
        DisplaySprite(temp_r4);
        var_r5 += 1;
    } while ((u32) var_r5 <= 1U);
    temp_r1 = arg0->unkA;
    temp_r3 = (u32) ((0 - temp_r1) | temp_r1) >> 0x1F;
    temp_r2 = gUnknown_080D8F18[arg0->unk6];
    temp_r4_2 = arg0 + 0x13C;
    if (!(*(temp_r2 + &gUnknown_080D946D) & LOADED_SAVE->unlockedCharacters)) {
        var_r0_2 = (temp_r3 * 8) + 6;
    } else {
        var_r0_2 = temp_r2 + (temp_r3 * 8);
    }
    temp_r0 = &gUnknown_080D8E80[var_r0_2];
    temp_r4_2->anim = temp_r0->anim;
    temp_r4_2->variant = temp_r0->variant;
    temp_r4_2->x = (s16) ((s32) arg0->unk6C >> 8);
    temp_r4_2->y = (s16) ((s32) arg0->unk70 >> 8);
    UpdateSpriteAnimation(temp_r4_2);
    DisplaySprite(temp_r4_2);
}

void sub_809AFC0(CharacterSelect *cs) {
    ? *var_r0;
    Sprite *temp_r0;
    Sprite *temp_r4;
    Sprite *temp_r4_2;
    Sprite *temp_r4_3;
    s32 var_r1;
    u32 var_r0_2;
    u8 temp_r1;
    u8 temp_r2;
    u8 var_r5;
    void *temp_r7;

    temp_r1 = cs->unk5;
    temp_r2 = cs->unk6;
    if (cs->language != 0) {
        var_r1 = ((temp_r1 * 8) + temp_r2) * 3;
        var_r0 = &gUnknown_080D8F95;
    } else {
        var_r1 = ((temp_r1 * 8) + temp_r2) * 3;
        var_r0 = &gUnknown_080D8F1D;
    }
    temp_r7 = var_r1 + var_r0;
    var_r5 = 0;
    temp_r0 = &cs->sprEC;
    temp_r4 = &cs->spr114;
    do {
        temp_r4->x = 0x78;
        temp_r4->y = (s16) ((s32) cs->qUnk68 >> 8);
        if (var_r5 != 0) {
            var_r0_2 = temp_r4->frameFlags | 0x400;
        } else {
            var_r0_2 = temp_r4->frameFlags & 0xFFFFFBFF;
        }
        temp_r4->frameFlags = var_r0_2;
        DisplaySprite(temp_r4);
        var_r5 += 1;
    } while ((u32) var_r5 <= 1U);
    temp_r0->x = (s16) temp_r7->unk0;
    temp_r0->y = (s16) ((s32) cs->qUnk68 >> 8);
    UpdateSpriteAnimation(temp_r0);
    DisplaySprite(temp_r0);
    temp_r4_2 = &cs->spr18C;
    temp_r4_2->x = (s16) temp_r7->unk1;
    temp_r4_2->y = (s16) ((s32) cs->qUnk68 >> 8);
    UpdateSpriteAnimation(temp_r4_2);
    DisplaySprite(temp_r4_2);
    temp_r4_3 = &cs->spr13C;
    temp_r4_3->x = (s16) temp_r7->unk2;
    temp_r4_3->y = (s16) ((s32) cs->qUnk70 >> 8);
    UpdateSpriteAnimation(temp_r4_3);
    DisplaySprite(temp_r4_3);
}

void sub_809B094(void *arg0) {
    gBgScrollRegs[0][0] = (s16) ((s32) arg0->unk44 >> 8);
    gBgScrollRegs[0][1] = (s16) ((s32) arg0->unk48 >> 8);
    gBgScrollRegs[1][0] = (s16) ((s32) arg0->unk54 >> 8);
    gBgScrollRegs[1][1] = 0 - ((s32) arg0->unk58 >> 8);
    gBgScrollRegs[2][0] = (s16) ((s32) arg0->unk4C >> 8);
    gBgScrollRegs[2][1] = 0 - ((s32) arg0->unk50 >> 8);
}

void Task_CharacterSelectInit(void) {
    u16 temp_r3;
    u8 temp_r0;
    void (*var_r0)();

    temp_r3 = gCurTask->data;
    temp_r3->unk20 = sub_809BF3C(temp_r3 + 3, temp_r3 + 0xB, temp_r3 + 0x3C, temp_r3 + 0x40, temp_r3->unk1C);
    temp_r0 = temp_r3->unk7;
    if (temp_r0 == 1) {
        sub_8024068();
        var_r0 = sub_80981A8;
    } else if (temp_r0 == 2) {
        sub_80258D4();
        var_r0 = sub_80981A8;
    } else {
        var_r0 = Task_80983E8;
    }
    gCurTask->main = var_r0;
}

void sub_809B13C(CharacterSelect *cs) {
    cs->unk12 += 0xC0;
}

void sub_809B148(CharacterSelect *cs) {
    s32 temp_r0;
    s32 temp_r0_2;

    if (cs->unk1 == 0) {
        temp_r0 = cs->qUnk3C + 0xFFFFF200;
        cs->qUnk3C = temp_r0;
        if (temp_r0 <= 0x7800) {
            goto block_4;
        }
    } else {
        temp_r0_2 = cs->qUnk3C + 0xE00;
        cs->qUnk3C = temp_r0_2;
        if (temp_r0_2 >= 0x7800) {
block_4:
            cs->qUnk3C = 0x7800;
        }
    }
}

void sub_809B184(CharacterSelect *cs) {
    s32 temp_r1;
    s32 temp_r1_2;

    temp_r1 = cs->qUnk68;
    if (temp_r1 <= 0x9100) {
        cs->qUnk68 = 0x9100;
        return;
    }
    temp_r1_2 = temp_r1 + 0xFFFFFA00;
    cs->qUnk68 = temp_r1_2;
    if (temp_r1_2 <= 0x90FF) {
        cs->qUnk68 = 0x9100;
    }
}

s32 sub_809B1B4(void *arg0) {
    s32 temp_r1;
    s32 temp_r1_2;

    temp_r1 = arg0->unk70;
    if (temp_r1 <= 0x9100) {
        arg0->unk70 = 0x9100;
        return 1;
    }
    temp_r1_2 = temp_r1 + 0xFFFFFA00;
    arg0->unk70 = temp_r1_2;
    if (temp_r1_2 <= 0x90FF) {
        arg0->unk70 = 0x9100;
    }
    return 0;
}

void sub_809B1E4(CharacterSelect *cs) {
    s32 temp_r0;
    s32 temp_r0_2;
    s32 var_r0;

    if (cs->unk1 == 0) {
        temp_r0 = cs->qUnk3C + 0xFFFFF200;
        cs->qUnk3C = temp_r0;
        if (temp_r0 <= 0xFFFFA600) {
            var_r0 = 0x12C00;
            goto block_5;
        }
    } else {
        temp_r0_2 = cs->qUnk3C + 0xE00;
        cs->qUnk3C = temp_r0_2;
        if (temp_r0_2 > 0x149FF) {
            var_r0 = -0x3C00;
block_5:
            cs->qUnk3C = var_r0;
        }
    }
}

void sub_809B234(CharacterSelect *cs) {
    s32 temp_r2;

    temp_r2 = cs->qUnk68;
    if (temp_r2 > 0xB3FF) {
        cs->qUnk68 = 0xB400;
        return;
    }
    cs->qUnk68 = temp_r2 + 0x600;
}

s32 sub_809B25C(void *arg0) {
    s32 temp_r2;

    temp_r2 = arg0->unk70;
    if (temp_r2 > 0xB3FF) {
        arg0->unk70 = 0xB400;
        return 1;
    }
    arg0->unk70 = (s32) (temp_r2 + 0x600);
    return 0;
}

void sub_809B284(CharacterSelect *cs) {
    s32 temp_r2;
    s32 var_r0;

    temp_r2 = cs->qUnk5C;
    if (temp_r2 <= 0x4FF) {
        var_r0 = temp_r2 + 0x40;
    } else {
        var_r0 = 0;
    }
    cs->qUnk5C = var_r0;
    cs->qUnk60 = 0x5A00;
}

void sub_809B2AC(void *arg0) {
    s32 temp_r0;
    s32 temp_r0_2;

    if (arg0->unk1 == 0) {
        temp_r0 = arg0->unk4C + 0xFFFFF200;
        arg0->unk4C = temp_r0;
        if (temp_r0 <= 0x7800) {
            goto block_4;
        }
    } else {
        temp_r0_2 = arg0->unk4C + 0xE00;
        arg0->unk4C = temp_r0_2;
        if (temp_r0_2 >= 0x7800) {
block_4:
            arg0->unk4C = 0x7800;
        }
    }
}

void sub_809B2E4(void *arg0) {
    s32 temp_r0;
    s32 temp_r0_2;
    s32 var_r0;

    if (arg0->unk1 == 0) {
        temp_r0 = arg0->unk4C + 0xFFFFF200;
        arg0->unk4C = temp_r0;
        if (temp_r0 <= 0xFFFFA600) {
            var_r0 = 0x12C00;
            goto block_5;
        }
    } else {
        temp_r0_2 = arg0->unk4C + 0xE00;
        arg0->unk4C = temp_r0_2;
        if (temp_r0_2 > 0x149FF) {
            var_r0 = -0x3C00;
block_5:
            arg0->unk4C = var_r0;
        }
    }
}

s32 sub_809B32C(void *arg0, s32 arg1) {
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r1_3;

    if ((arg1 << 0x18) != 0) {
        temp_r1 = arg0->unk3C;
        if (temp_r1 > 0x12BFF) {
            arg0->unk3C = 0x12C00;
            return 1;
        }
        temp_r0 = temp_r1 + 0x8C0;
        arg0->unk3C = temp_r0;
        if (temp_r0 > 0x12C00) {
            arg0->unk3C = 0x12C00;
        }
        temp_r0_2 = arg0->unk4C + 0x840;
        arg0->unk4C = temp_r0_2;
        if (temp_r0_2 > 0x12C00) {
            arg0->unk4C = 0x12C00;
        }
        goto block_13;
    }
    temp_r1_2 = arg0->unk3C;
    if (temp_r1_2 <= 0xB400) {
        arg0->unk3C = 0xB400;
        return 1;
    }
    temp_r1_3 = temp_r1_2 + 0xFFFFF740;
    arg0->unk3C = temp_r1_3;
    if (temp_r1_3 <= 0xB3FF) {
        arg0->unk3C = 0xB400;
    }
    temp_r0_3 = arg0->unk4C + 0xFFFFF7C0;
    arg0->unk4C = temp_r0_3;
    if (temp_r0_3 <= 0x6DFF) {
        arg0->unk4C = 0x6E00;
    }
block_13:
    return 0;
}

s32 sub_809B3C4(void *arg0, s32 arg1) {
    s32 temp_r0;
    s32 temp_r1;
    s32 var_r3;

    var_r3 = 0;
    if ((arg1 << 0x18) != 0) {
        temp_r1 = arg0->unk64;
        if (temp_r1 <= 0x77FF) {
            arg0->unk64 = (s32) (temp_r1 + 0x610);
            goto block_7;
        }
        arg0->unk64 = 0x7800;
        goto block_9;
    }
    temp_r0 = arg0->unk64;
    if (temp_r0 > 0x3C00) {
        arg0->unk64 = (s32) (temp_r0 + 0xFFFFF9F0);
    } else {
        arg0->unk64 = 0x3C00;
        var_r3 = 1;
    }
block_7:
    if (var_r3 == 0) {
        return 0;
    }
block_9:
    return 1;
}

s32 sub_809B41C(void *arg0) {
    arg0->unk6C = (s32) arg0->unk3C;
    return 1;
}

s32 sub_809B424(void *arg0, s32 arg1) {
    s32 temp_r0;
    s32 temp_r1;
    s32 var_r0;

    if ((arg1 << 0x18) == 0) {
        temp_r1 = arg0->unk34;
        if (temp_r1 <= 0x59FF) {
            var_r0 = temp_r1 + 0x300;
            goto block_7;
        }
        arg0->unk34 = 0x5A00;
        return 1;
    }
    temp_r0 = arg0->unk34;
    if (temp_r0 <= 0x3C00) {
        arg0->unk34 = 0x3C00;
        return 1;
    }
    var_r0 = temp_r0 + 0xFFFFFD00;
block_7:
    arg0->unk34 = var_r0;
    return 0;
}

s32 sub_809B470(void *arg0, s32 arg1) {
    s32 temp_r0;
    s32 temp_r1;
    s32 var_r0;

    if ((arg1 << 0x18) == 0) {
        temp_r0 = arg0->unk3C;
        if (temp_r0 > 0x9600) {
            var_r0 = temp_r0 + 0xFFFFFD00;
            goto block_7;
        }
        arg0->unk3C = 0x9600;
        return 1;
    }
    temp_r1 = arg0->unk3C;
    if (temp_r1 > 0xB3FF) {
        arg0->unk3C = 0xB400;
        return 1;
    }
    var_r0 = temp_r1 + 0x300;
block_7:
    arg0->unk3C = var_r0;
    return 0;
}

s32 sub_809B4BC(void *arg0, s32 arg1) {
    s32 temp_r0;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 var_r0;
    u8 var_r3;

    var_r3 = 0;
    if ((arg1 << 0x18) == 0) {
        temp_r1 = arg0->unk64;
        if (temp_r1 <= 0x5EFF) {
            arg0->unk64 = (s32) (temp_r1 + 0x300);
        } else {
            arg0->unk64 = 0x5F00;
            var_r3 = 1;
        }
        temp_r1_2 = arg0->unk54;
        var_r0 = 0xC900;
        if (temp_r1_2 > 0xC900) {
            arg0->unk54 = (s32) (temp_r1_2 - 0x300);
        } else {
            goto block_12;
        }
    } else {
        temp_r0 = arg0->unk64;
        if (temp_r0 > 0x3C00) {
            arg0->unk64 = (s32) (temp_r0 + 0xFFFFFD00);
        } else {
            arg0->unk64 = 0x3C00;
            var_r3 = 1;
        }
        temp_r1_3 = arg0->unk54;
        if (temp_r1_3 <= 0x104FF) {
            arg0->unk54 = (s32) (temp_r1_3 + 0x300);
        } else {
            var_r0 = 0x10500;
block_12:
            arg0->unk54 = var_r0;
            var_r3 += 1;
        }
    }
    if (var_r3 != 2) {
        return 0;
    }
    return 1;
}

s32 sub_809B548(void *arg0, s32 arg1) {
    s32 temp_r0;
    s32 temp_r1;
    s32 var_r0;
    u8 var_r3;

    var_r3 = 0;
    if ((arg1 << 0x18) == 0) {
        temp_r0 = arg0->unk6C;
        if (temp_r0 > 0x9100) {
            arg0->unk6C = (s32) (temp_r0 + 0xFFFFFD00);
        } else {
            arg0->unk6C = 0x9100;
            var_r3 = 1;
        }
        if ((s32) arg0->unk4C > 0xC8FF) {
            var_r0 = 0xC900;
            goto block_12;
        }
        goto block_10;
    }
    temp_r1 = arg0->unk6C;
    if (temp_r1 <= 0xB3FF) {
        arg0->unk6C = (s32) (temp_r1 + 0x300);
    } else {
        arg0->unk6C = 0xB400;
        var_r3 = 1;
    }
    if ((s32) arg0->unk4C <= 0xB3FF) {
block_10:
        arg0->unk4C = (s32) (arg0->unk4C + 0x300);
    } else {
        var_r0 = 0xB400;
block_12:
        arg0->unk4C = var_r0;
        var_r3 += 1;
    }
    if (var_r3 != 2) {
        return 0;
    }
    return 1;
}

void sub_809B5D0(void *arg0) {
    Background *temp_r0;

    temp_r0 = arg0 + 0x1F4;
    gDispCnt |= 0x200;
    temp_r0->graphics.dest = (void *)0x0600C000;
    temp_r0->layoutVram = (u16 *)0x06001800;
    temp_r0->tilemapId = gUnknown_080D8CDC[gUnknown_080D8F18[arg0->unk5] + 0xA];
    temp_r0->flags = 1;
    DrawBackground(temp_r0);
    arg0->unkB = 3;
    if (arg0->unk7 == 1) {
        sub_809B700((u16) arg0);
    }
}

u8 sub_809B638(CharacterSelect *arg0) {
    u8 temp_r0;
    u8 var_r5;

    var_r5 = 0;
    if (arg0->qUnk3C == 0x14A00) {
        var_r5 = 1;
    } else {
        sub_809B1E4(arg0);
        if (M2C_ERROR(/* Read from unset register $r0 */) == 1) {
            temp_r0 = arg0->unk4;
            arg0->unk3 = temp_r0;
            var_r5 = 1;
            arg0->qUnk3C = 0x14A00;
            arg0->unk5 = temp_r0;
        }
    }
    return var_r5;
}

u8 sub_809B668(CharacterSelect *arg0) {
    u8 temp_r0;
    u8 var_r5;

    var_r5 = 0;
    if (arg0->qUnk3C == -0x5A00) {
        var_r5 = 1;
    } else {
        sub_809B1E4(arg0);
        if (M2C_ERROR(/* Read from unset register $r0 */) == 1) {
            temp_r0 = arg0->unk4;
            arg0->unk3 = temp_r0;
            var_r5 = 1;
            arg0->qUnk3C = -0x5A00;
            arg0->unk5 = temp_r0;
        }
    }
    return var_r5;
}

void sub_809B69C(CharacterSelect *cs) {
    gBgScrollRegs[0][0] = (s16) ((s32) cs->qUnk44 >> 8);
    gBgScrollRegs[0][1] = (s16) ((s32) cs->qUnk48 >> 8);
    gBgScrollRegs[1][0] = (s16) ((s32) cs->qUnk54 >> 8);
    gBgScrollRegs[1][1] = 0 - ((s32) cs->qUnk58 >> 8);
}

void sub_809B6C0(CharacterSelect *cs) {
    sa2__sub_8003EE4((u16) cs->unk12 >> 6, (s32) ((u16) cs->qUnk18 << 0x10) >> 0x14, 0x100, 0x40, 0x40, (s32) (cs->qUnk4C << 8) >> 0x10, (s32) (cs->qUnk50 << 8) >> 0x10, gBgAffineRegs);
}

void sub_809B700(void) {

}

s32 sub_809B704(void *arg0, u16 arg1) {
    u8 temp_r2;

    temp_r2 = arg0->unk7;
    if ((temp_r2 == 0) || (temp_r2 == 3) || (((s16) arg1 == 0) && (arg0->unkB == 0))) {
        return 1;
    }
    return 0;
}

u32 sub_809B730(void *arg0) {
    u8 temp_r0;

    temp_r0 = arg0->unk7;
    if ((temp_r0 != 0) && (temp_r0 != 3)) {
        return (u32) (0 - (gMultiSioStatusFlags & 0x80)) >> 0x1F;
    }
    return 1U;
}

void TaskDestructor_CharacterSelect(Task *t) {
    VramFree(t->data->unkC4);
}
#endif
