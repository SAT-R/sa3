#include "global.h"
#include "core.h"
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
void sub_809B69C(CharacterSelect *cs);
void sub_809B6C0(CharacterSelect *cs);
void Task_80983E8(void);
void Task_8098600(void);
void Task_8098DE4(void);
s16 sub_8023E04(void);
s16 sub_8024074(u8);
void sub_802613C(void);
void CharSelect_InitBackgrounds(CharacterSelect *cs);

extern u16 gUnknown_080D8CDC[];
extern const TileInfo2 gUnknown_080D8D00[2];
extern const TileInfo2 gUnknown_080D8D08[6][8];
extern TileInfo2 gUnknown_080D8E80[];
extern TileInfo2 gUnknown_080D8EF8;
extern const TileInfo2 gUnknown_080D8F08[2];
extern const u8 gUnknown_080D8F18[8];

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

#if 0
bool32 sub_80988B0(CharacterSelect *cs) {
    u8 temp_r1;
    u8 temp_r4;

    gStageData.playerIndex = 0;
    sub_800214C();
    gStageData.difficulty = gLoadedSaveGame.difficulty;
    gPlayers->callback = NULL;
    temp_r1 = (-4 & gPlayers->unk2B) | 1;
    gPlayers->unk2B = temp_r1;
    gPlayers->unk2A = (u8) ((-0x10 & gPlayers->unk2A) | (0xF & gUnknown_080D8F18[cs->unk5]));
    gPlayers->unk2B = (u8) ((temp_r1 & ~0x1C) | 4);
    gPlayers[1].callback = NULL;
    temp_r4 = -4 & gPlayers->unk17B;
    gPlayers->unk17B = temp_r4;
    gPlayers->unk17A = (u8) ((-0x10 & gPlayers->unk17A) | (0xF & gUnknown_080D8F18[cs->unk6]));
    gPlayers->unk17B = (u8) ((temp_r4 & ~0x1C) | 8);
    gPlayers[2].callback = NULL;
    gPlayers->unk2CB = (u8) (-0x1D & gPlayers->unk2CB);
    gPlayers[3].callback = NULL;
    gPlayers->unk41B = (u8) (-0x1D & gPlayers->unk41B);

    (void *)0x040000D4->unk0 = &gUnknown_082B5344;
    (void *)0x040000D4->unk4 = 0x06017EC0;
    (void *)0x040000D4->unk8 = 0x800000A0;

    sub_80003B8((void *)0x040000D4->unk8);
    if (!(1 & gLoadedSaveGame.unk34)) {
        sub_80AD824();
        return FALSE;
    }

    WarpToMap((s16) ((s32) ((gLoadedSaveGame.continueZone * 0xA0000) + 0x20000) >> 0x10), 0U);
    return TRUE;
}
#endif
