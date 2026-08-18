#include "global.h"
#include "core.h"
#include "trig.h"
#include "flags.h"
#include "lib/m4a/m4a.h"
#include "code_z_1.h" // CopyObjPaletteMasked
#include "game/character_select.h"
#include "game/sa3/title_screen.h"
#include "game/save.h"
#include "game/special_stage.h"
#include "game/stage.h"
#include "code_0_1.h" // WarpToMap
#include "constants/songs.h"
#include "constants/tilemaps.h"

typedef struct {
    /* 0x00 */ u8 language;
    /* 0x04 */ u8 *initArg1;
    /* 0x08 */ u8 initArg0;
    /* 0x0C */ s32 qUnkC;
    /* 0x10 */ s32 qUnk10;
    /* 0x14 */ s32 unk14;
    /* 0x18 */ s32 unk18;
    /* 0x1C */ Sprite spr1C;
    /* 0x44 */ Sprite spr44;
    /* 0x6C */ Sprite spr6C;
} MMChaoMessage; /* 0x94 */

typedef struct {
    /* 0x000 */ u8 language;
    /* 0x001 */ u8 initArg1;
    /* 0x002 */ u8 unk2;
    /* 0x003 */ u8 unk3;
    /* 0x004 */ u8 unk4;
    /* 0x005 */ u8 unk5;
    /* 0x006 */ u8 unk6;
    /* 0x007 */ u8 unk7[4];
    /* 0x00B */ u8 unkB;
    /* 0x00C */ u8 unkC;
    /* 0x00D */ u8 unkD;
    /* 0x00E */ u8 unkE;
    /* 0x00F */ u8 unkF;
    /* 0x010 */ s16 highlitButton;
    /* 0x012 */ s16 unk12;
    /* 0x014 */ s16 unk14;
    /* 0x038 */ Vec2_32 unk18[4];
    /* 0x038 */ Vec2_32 unk38[2];
    /* 0x048 */ s32 unk48;
    /* 0x04C */ s32 unk4C;
    /* 0x050 */ s32 unk50;
    /* 0x054 */ s32 unk54;
    /* 0x058 */ s32 unk58;
    /* 0x05C */ s32 unk5C;
    /* 0x060 */ s32 unk60;
    /* 0x064 */ s32 unk64;
    /* 0x068 */ s16 unk68;
    /* 0x06A */ s16 unk6A;
    /* 0x06C */ u16 unk6C;
    /* 0x06E */ u16 unk6E;
    /* 0x070 */ u16 unk70;
    /* 0x072 */ u16 unk72;
    /* 0x074 */ u16 unk74;
    /* 0x074 */ u8 *vram78;
    /* 0x07C */ Sprite spr7C[2];
    /* 0x0CC */ Sprite sprCC[2];
    /* 0x11C */ Sprite spr11C[2];
    /* 0x16C */ Sprite spr16C[2];
    /* 0x1BC */ Sprite spr1BC[2];
    /* 0x20C */ Sprite spr20C[2];
    /* 0x25C */ Sprite spr25C[2];
    /* 0x2AC */ Sprite spr2AC;
    /* 0x2D4 */ Sprite spr2D4;
    /* 0x2FC */ Sprite spr2FC;
    /* 0x324 */ SpriteTransform tf324;
    /* 0x330 */ Background bg330;
    /* 0x370 */ Background bg370;
    /* 0x3A0 */ Background bg3A0;
} MainMenu; /* 0x3F0 */

void sub_808738C(MainMenu *menu);
void sub_8087498(MainMenu *menu);
void sub_8087590(MainMenu *menu);
void sub_80877F4(MainMenu *menu);
void sub_8087A48(MainMenu *menu);
void sub_8088FD4(MainMenu *menu);
u8 sub_8089028(MainMenu *menu);
void sub_80890F8(MainMenu *menu);
void sub_8089150(MainMenu *menu);
void sub_80891E4(MainMenu *menu);
bool32 sub_808927C(MainMenu *menu);
u8 sub_8089E50(MainMenu *menu);
u8 sub_8089DA0(MainMenu *menu);
u8 sub_8089EA0(MainMenu *menu);
void sub_8089308(MainMenu *menu);
void sub_8089398(MainMenu *menu);
void sub_8089428(MainMenu *menu);
void sub_80894BC(MainMenu *menu);
void sub_8089550(MainMenu *menu);
void sub_80895E0(MainMenu *menu);
void sub_8089670(MainMenu *menu);
void sub_8089704(MainMenu *menu);
void sub_8089B38(MMChaoMessage *msg, u8 *vram);
void sub_8089C48(MMChaoMessage *msg);
u8 sub_8089DF4(MainMenu *menu);
void sub_8089EF8(MainMenu *menu);
void sub_8089F08(MainMenu *menu);
void sub_8089F40(MainMenu *menu);
void Task_3F0_8087B80(void);
void Task_3F0_8087C74(void);
void Task_3F0_8087D54(void);
void Task_3F0_8087F18(void);
void Task_3F0_8088088(void);
void Task_3F0_808819C(void);
void Task_3F0_8088440(void);
void Task_3F0_80885CC(void);
void Task_3F0_8088770(void);
void Task_3F0_80888E8(void);
void Task_3F0_80889CC(void);
void Task_3F0_8088B48(void);
void Task_3F0_8088BD0(void);
void Task_3F0_8088E74(void);
void Task_3F0_80897BC(void);
void Task_3F0_8089970(void);
void Task_3F0_MainMenuInit(void);
void Task_3F0_8089FCC(void);
void Task_3F0_808A060(void);
void Task_3F0_808A0D8(void);
void Task_3F0_808A144(void);
void Task_94_808A22C(void);
void TaskDestructor_MainMenu(Task *t);

void sub_808A1B0(u8 arg0, void *arg1, u8 *vram, s16 arg3, s16 arg4);

extern void CreateNameEntryScreen(u8);
extern void sub_80A1A4C(u8 param0);
extern void sub_808D0F0(u8 param0);
extern void sub_8000340(u16 arg0);
extern void LaunchOptionsMenu(u16 arg0);
extern void CreateTimeRecordScreen(u8 param0);
extern TileInfo2 gUnknown_080D6654[4];
extern TileInfo2 gUnknown_080D6674[4];

extern const TileInfo2 gUnknown_080D6594[12];
extern const TileInfo2 gUnknown_080D65F4[12];
extern const ColorRaw gUnknown_080D66D8[0x40];
extern const TileInfo2 sAnimsMenuChao[2];
extern const TileInfo2 gUnknown_080D6694[4];
extern const TileInfo2 gUnknown_080D6114[NUM_LANGUAGES * 2];
extern const TileInfo2 gUnknown_080D6174[NUM_LANGUAGES * 2];
extern const TileInfo2 gUnknown_080D61D4[NUM_LANGUAGES * 2];
extern const TileInfo2 gUnknown_080D6234[NUM_LANGUAGES * 2];
extern const TileInfo2 gUnknown_080D6294[NUM_LANGUAGES * 6];
extern const TileInfo2 gUnknown_080D62F4[NUM_LANGUAGES * 6];
extern const TileInfo2 gUnknown_080D6354[NUM_LANGUAGES * 2];
extern const TileInfo2 gUnknown_080D63B4[NUM_LANGUAGES * 2];
extern const TileInfo2 gUnknown_080D6414[NUM_LANGUAGES * 2];
extern const TileInfo2 gUnknown_080D6474[NUM_LANGUAGES * 2];
extern const TileInfo2 gUnknown_080D64D4[NUM_LANGUAGES * 2];
extern const TileInfo2 gUnknown_080D6534[NUM_LANGUAGES * 2];
extern const u16 gUnknown_080D66C4[4];
extern const s16 gUnknown_080D6770[4][2];
extern const u16 gUnknown_080D66CC[6];
extern const TaskMain gUnknown_080D6758[6];
extern const TileInfo2 gUnknown_080D6780[3];
extern const TileInfo2 gUnknown_080D6798[NUM_LANGUAGES];
extern const TileInfo2 gUnknown_080D67C8[];
extern const TileInfo2 gUnknown_080D67F8[NUM_LANGUAGES];
extern const TileInfo2 gUnknown_080D6828[];

void CreateMainMenu(s16 highlitButton, u8 arg1)
{
    MainMenu *menu;

    gDispCnt = DISPCNT_MODE_1 | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
    menu = TASK_DATA(TaskCreate(Task_3F0_MainMenuInit, sizeof(MainMenu), 0x100U, 0U, TaskDestructor_MainMenu));
    gPseudoRandom = gFrameCount;
    menu->highlitButton = highlitButton;
    menu->initArg1 = arg1;
    sub_808738C(menu);

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

    gDispCnt |= DISPCNT_WIN0_ON;
    gWinRegs[0] = WIN_RANGE(0, DISPLAY_WIDTH);
    gWinRegs[2] = WIN_RANGE(0, DISPLAY_HEIGHT);
    gBldRegs.bldCnt = 0x3FFF;
    gBldRegs.bldY = 0x10;

    if (FLAGS_20000 & gFlags) {
        CopyObjPaletteMasked(gUnknown_080D66D8, 0U, ARRAY_COUNT(gUnknown_080D66D8));
    } else {
        DmaCopy16(3, gUnknown_080D66D8, gObjPalette, sizeof(gUnknown_080D66D8));
        gFlags |= FLAGS_UPDATE_SPRITE_PALETTES;
    }
}

// (98.09%) https://decomp.me/scratch/V4Nme
NONMATCH("asm/non_matching/game/sa3/mm__sub_808738C.inc", void sub_808738C(MainMenu *menu))
{
    u32 lang;
    u8 i;

    for (i = 0; i < ARRAY_COUNT(menu->unk7); i++) {
        menu->unk7[i] = 0xC;
    }

    if ((menu->initArg1 == 0) || (menu->initArg1 == 4) || (menu->initArg1 == 5)) {
        menu->unk6E = 0;
    } else {
        menu->unk6E = 1;
    }

    menu->unk70 = 0;
    menu->unkC = 0;
    menu->unkD = 0;
    menu->unk12 = -240;
    menu->unkB = 2;
    menu->unk6C = 0;
    menu->unk4 = 0;
    menu->unk2 = 0;
    menu->unk5 = 0;
    menu->unkE = 1;
    menu->unk72 = 0;
    menu->unk74 = 0x400;
    menu->unkF = 1;
    menu->unk18[0].x = 0x12C00;
    menu->unk18[0].y = 0x2000;
    menu->unk18[1].x = 0x15C00;
    menu->unk18[1].y = menu->unk18[0].y + menu->unk18[0].y;
    menu->unk18[2].x = 0x18C00;
    menu->unk18[2].y = menu->unk18[1].y + menu->unk18[0].y;
    menu->unk18[3].x = 0x1BC00;
    menu->unk18[3].y = menu->unk18[2].y + menu->unk18[0].y;
    menu->unk58 = -Q(40);
    menu->unk5C = 0x5600;
    menu->unk60 = -Q(40);
    menu->unk64 = 0x5600;
    menu->unk38[0].x = 0x18C00;
    menu->unk38[0].y = 0x1A00 + menu->unk18[0].y;
    menu->unk38[1].x = 0x18C00;
    menu->unk38[1].y = 0x4600 + menu->unk18[0].y;
    menu->unk48 = 0x3C00;
    menu->unk4C = menu->unk18[0].y;
    menu->unk6 = 0;
    menu->unk50 = 0;
    menu->unk54 = 0;
    menu->unk68 = 0x100;
    menu->unk6A = 0x100;
    menu->language = LOADED_SAVE->language;
    menu->unk14 = -1;
    menu->vram78 = OBJ_VRAM0;
}
END_NONMATCH

void sub_8087498(MainMenu *menu)
{
    {
        Sprite *s = &menu->spr2D4;
        s->tiles = menu->vram78;
        menu->vram78 += sAnimsMenuChao[0].numTiles * TILE_SIZE_4BPP;
        s->anim = sAnimsMenuChao[0].anim;
        s->variant = sAnimsMenuChao[0].variant;
        s->prevVariant = -1;
        s->x = (s16)((s32)menu->unk58 >> 8);
        s->y = (s16)((s32)menu->unk5C >> 8);
        s->oamFlags = 0x140;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }

    {
        Sprite *s = &menu->spr2FC;
        s->tiles = menu->vram78;
        menu->vram78 += sAnimsMenuChao[1].numTiles * TILE_SIZE_4BPP;
        s->anim = sAnimsMenuChao[1].anim;
        s->variant = sAnimsMenuChao[1].variant;
        s->prevVariant = -1;
        s->x = I(menu->unk60);
        s->y = I(menu->unk64);
        s->oamFlags = 0x140;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }

    {
        Sprite *s = &menu->spr2AC;
        s->tiles = menu->vram78;
        menu->vram78 += gUnknown_080D6694[0].numTiles * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D6694[0].anim;
        s->variant = gUnknown_080D6694[0].variant;
        s->prevVariant = -1;
        s->x = (s16)((s32)menu->unk58 >> 8);
        s->y = (s16)((s32)menu->unk5C >> 8);
        s->oamFlags = 0x100;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }
}

void sub_8087590(MainMenu *menu)
{
    Sprite *s;
    u8 i;

    for (i = 0; i < ARRAY_COUNT(menu->spr7C); i++) {
        s = &menu->spr7C[i];
        s->tiles = menu->vram78;
        menu->vram78 = (u8 *)(menu->vram78 + 0x800);
        s->anim = gUnknown_080D6114[i + menu->language * 2].anim;
        s->variant = gUnknown_080D6114[i + menu->language * 2].variant;
        s->prevVariant = -1;
        s->x = I(menu->unk18[0].x);
        s->y = I(menu->unk18[0].y);
        s->oamFlags = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0x20;
        UpdateSpriteAnimation(s);
    }

    for (i = 0; i < ARRAY_COUNT(menu->sprCC); i++) {
        s = &menu->sprCC[i];
        s->tiles = menu->vram78;
        menu->vram78 += 0x800;
        s->anim = gUnknown_080D6174[i + menu->language * 2].anim;
        s->variant = gUnknown_080D6174[i + menu->language * 2].variant;
        s->prevVariant = -1;
        s->x = I(menu->unk18[1].x);
        s->y = I(menu->unk18[1].y);
        s->oamFlags = 0x40;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }

    for (i = 0; i < ARRAY_COUNT(menu->spr11C); i++) {
        s = &menu->spr11C[i];
        s->tiles = menu->vram78;
        menu->vram78 += 0x800;
        s->anim = gUnknown_080D61D4[i + menu->language * 2].anim;
        s->variant = gUnknown_080D61D4[i + menu->language * 2].variant;
        s->prevVariant = -1;
        s->x = I(menu->unk18[2].x);
        s->y = I(menu->unk18[2].y);
        s->oamFlags = 0x80;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }

    for (i = 0; i < ARRAY_COUNT(menu->spr16C); i++) {
        s = &menu->spr16C[i];
        s->tiles = menu->vram78;
        menu->vram78 = (u8 *)(menu->vram78 + 0x800);
        s->anim = gUnknown_080D6234[i + menu->language * 2].anim;
        s->variant = gUnknown_080D6234[i + menu->language * 2].variant;
        s->prevVariant = -1;
        s->x = I(menu->unk18[3].x);
        s->y = I(menu->unk18[3].y);
        s->oamFlags = 0xC0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }

    for (i = 0; i < ARRAY_COUNT(menu->spr25C); i++) {
        s = &menu->spr25C[i];
        s->tiles = menu->vram78;
        menu->vram78 = (u8 *)(menu->vram78 + 0x800);
        s->anim = gUnknown_080D6354[i + menu->language * 2].anim;
        s->variant = gUnknown_080D6354[i + menu->language * 2].variant;
        s->prevVariant = -1;
        s->x = I(menu->unk48);
        s->y = I(menu->unk4C);
        s->oamFlags = 0xC0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }
}

void sub_80877F4(MainMenu *menu)
{
    Sprite *s;
    u8 i;

    for (i = 0; i < ARRAY_COUNT(menu->spr7C); i++) {
        s = &menu->spr7C[i];
        s->tiles = menu->vram78;

        if (i == 0) {
            menu->vram78 += 0x800;
        } else {
            menu->vram78 += 0x800;
        }

        s->anim = gUnknown_080D63B4[i + menu->language * 2].anim;
        s->variant = gUnknown_080D63B4[i + menu->language * 2].variant;
        s->prevVariant = -1;
        s->x = I(menu->unk18[0].x);
        s->y = I(menu->unk18[0].y);
        s->oamFlags = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0x20;
        UpdateSpriteAnimation(s);
    }

    for (i = 0; i < 2; i++) {
        s = &menu->sprCC[i];
        s->tiles = menu->vram78;
        if (i == 0) {
            menu->vram78 = menu->vram78 + 0x800;
        } else {
            menu->vram78 = menu->vram78 + 0x800;
        }
        s->anim = gUnknown_080D6414[i + menu->language * 2].anim;
        s->variant = gUnknown_080D6414[i + menu->language * 2].variant;
        s->prevVariant = -1;
        s->x = I(menu->unk18[1].x);
        s->y = I(menu->unk18[1].y);
        s->oamFlags = 0x40;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }

    for (i = 0; i < 2; i++) {
        s = &menu->spr11C[i];
        s->tiles = menu->vram78;
        if (menu->initArg1 == 2) {
            menu->vram78 += 0x800;
            s->anim = gUnknown_080D6474[i + menu->language * 2].anim;
            s->variant = gUnknown_080D6474[i + menu->language * 2].variant;
        } else if (menu->initArg1 == 3) {
            menu->vram78 += 0x800;
            s->anim = gUnknown_080D64D4[i + menu->language * 2].anim;
            s->variant = gUnknown_080D64D4[i + menu->language * 2].variant;
        }
        s->prevVariant = -1;
        s->x = I(menu->unk18[2].x);
        s->y = I(menu->unk18[2].y);
        s->oamFlags = 0x80;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }

    for (i = 0; i < 2; i++) {
        s = &menu->spr16C[i];
        s->tiles = menu->vram78;
        if (i == 0) {
            menu->vram78 += 0x800;
        } else {
            menu->vram78 += 0x800;
        }
        s->anim = gUnknown_080D6534[i + menu->language * 2].anim;
        s->variant = gUnknown_080D6534[i + menu->language * 2].variant;
        s->prevVariant = -1;
        s->x = (s16)((s32)menu->unk18[3].x >> 8);
        s->y = (s16)((s32)menu->unk18[3].y >> 8);
        s->oamFlags = 0xC0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }
}

void sub_8087A48(MainMenu *menu)
{
    Background *bg0, *bg1, *bg2;

    gBgCntRegs[0] = BGCNT_SCREENBASE(14) | BGCNT_CHARBASE(1) | BGCNT_PRIORITY(3) | BGCNT_16COLOR | BGCNT_TXT512x256;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    bg0 = &menu->bg330;
    bg0->graphics.dest = (void *)BG_CHAR_ADDR(1);
    bg0->graphics.anim = 0;
    bg0->layoutVram = (u16 *)BG_SCREEN_ADDR(14);
    bg0->unk18 = 0;
    bg0->unk1A = 0;
    bg0->tilemapId = TM_UNKNOWN_343;
    bg0->unk1E = 0;
    bg0->unk20 = 0;
    bg0->unk22 = 0;
    bg0->unk24 = 0;
    bg0->targetTilesX = 0x40;
    bg0->targetTilesY = 0x14;
    bg0->paletteOffset = 0;
    bg0->flags = 0;
    DrawBackground(bg0);

    gBgCntRegs[1] = BGCNT_SCREENBASE(6) | BGCNT_CHARBASE(0) | BGCNT_PRIORITY(1) | BGCNT_16COLOR | BGCNT_TXT256x256;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    bg1 = &menu->bg3A0;
    bg1->graphics.dest = (void *)BG_CHAR_ADDR(0);
    bg1->graphics.anim = 0;
    bg1->layoutVram = (u16 *)BG_SCREEN_ADDR(6);
    bg1->unk18 = 0;
    bg1->unk1A = 0;
    bg1->tilemapId = TM_UNKNOWN_344;
    bg1->unk1E = 0;
    bg1->unk20 = 0;
    bg1->unk22 = 0;
    bg1->unk24 = 0;
    bg1->targetTilesX = 0x20;
    bg1->targetTilesY = 0x20;
    bg1->paletteOffset = 0;
    bg1->flags = 1;
    DrawBackground(bg1);

    gBgCntRegs[2] = BGCNT_SCREENBASE(24) | BGCNT_CHARBASE(2) | BGCNT_PRIORITY(2) | BGCNT_256COLOR | BGCNT_AFF128x128;
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;
    bg2 = &menu->bg370;
    bg2->graphics.dest = (void *)BG_CHAR_ADDR(2);
    bg2->graphics.anim = 0;
    bg2->layoutVram = (u16 *)BG_SCREEN_ADDR(24);
    bg2->unk18 = 0;
    bg2->unk1A = 0;
    if (menu->initArg1 == 2 || menu->initArg1 == 3) {
        bg2->tilemapId = gUnknown_080D66C4[2];
    } else {
        bg2->tilemapId = gUnknown_080D66C4[menu->highlitButton];
    }
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

#if 01
void Task_3F0_8087B80(void) {
    MainMenu *menu = TASK_DATA(gCurTask);
    if (menu->unk6E != 0) {
        gDispCnt |= DISPCNT_WIN0_ON;
        gWinRegs[0] = WIN_RANGE(0, DISPLAY_WIDTH);
        gWinRegs[2] = WIN_RANGE(0, DISPLAY_HEIGHT);
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FFF;
        gBldRegs.bldY = 0x10;
        menu->unk70 = 0x1000;
        menu->unk6E = 0;
    }
    sub_8089028(menu);
    sub_8089150(menu);
    sub_80891E4(menu);
    sub_8088FD4(menu);
    sub_8089EF8(menu);
    sub_8089398(menu);
    sub_80894BC(menu);
    sub_8089308(menu);
    sub_8089428(menu);
    sub_8089F08(menu);
    sub_8089F40(menu);
    sub_8089704(menu);
    sub_808927C(menu);
    if (gBldRegs.bldY != 0) {
        gBldRegs.bldY = (u16) ((u16) menu->unk70 >> 8);
        menu->unk70 -= Q(1);
    } else {    
        gBldRegs.bldY = gBldRegs.bldY;
        gCurTask->main = Task_3F0_8089FCC;
    }
}

void Task_3F0_8087C74(void) {
    MainMenu *menu = TASK_DATA(gCurTask);
    if (menu->unk6E != 0) {
        gDispCnt |= DISPCNT_WIN0_ON;
        gWinRegs[0] = WIN_RANGE(0, DISPLAY_WIDTH);
        gWinRegs[2] = WIN_RANGE(0, DISPLAY_HEIGHT);
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FFF;
        menu->unk70 = 0;
        menu->unk6E = 0;
    }
    if (menu->highlitButton == 4) {
        sub_8089028(menu);
    }
    sub_80890F8(menu);
    sub_8089150(menu);
    sub_80891E4(menu);
    sub_8088FD4(menu);
    sub_8089EF8(menu);
    sub_8089F08(menu);
    sub_8089F40(menu);
    sub_8089704(menu);
    if ((u32) gBldRegs.bldY <= 0xFU) {
        gBldRegs.bldY = (u16) ((u16) menu->unk70 >> 8);
        menu->unk70 += 0x100;
        return;
    }
    gBldRegs.bldY = 0x10;
    menu->unkD = 0xB;
    gCurTask->main = Task_3F0_8087D54;
}


void Task_3F0_8087D54(void) {
    MainMenu *menu = TASK_DATA(gCurTask);
    s16 temp_r0;
    u8 temp_r1;
    u8 var_r0;
    u8 var_r1;

    temp_r0 = menu->highlitButton;
    switch ((u32) temp_r0) {
    case 0:
        if (menu->unkC == 0) {
            gStageData.gameMode = 0;
            gStageData.playerIndex = 0;
            CreateCharacterSelect(0U);
        } else {
            gStageData.gameMode = 5;
            sub_80A1A4C(0);
        }
        break;
    case 1:
        if (menu->unkC == 0) {
            if (LOADED_SAVE->playerName[0] == 0xFFFF) {
                CreateNameEntryScreen(2);
            } else {
                gStageData.gameMode = 6;
                sub_808D0F0(0);
            }
        } else {
            gStageData.gameMode = 7;
            sub_80003B8();
            sub_8000340(0);
        }
        break;
    case 2: {
        StageData *stgData; // for matching
        if (menu->unkC == 0) {
            stgData = &gStageData;
            stgData->gameMode = 3;
            stgData->playerIndex = 0;
        } else {
            stgData = &gStageData;
            stgData->gameMode = 4;
            stgData->playerIndex = 0;
        }
        gStageData.buttonConfig.jump = LOADED_SAVE->buttonConfig.jump;
        gStageData.buttonConfig.attack = LOADED_SAVE->buttonConfig.attack;
        gStageData.buttonConfig.trick = LOADED_SAVE->buttonConfig.trick;
        CreateCharacterSelect(0U);
    } break;
    case 3:
        LaunchOptionsMenu(0);
        break;
    case 4:
        CreateTitleScreen(1U);
        break;
    case 10:
        TasksDestroyInPriorityRange(0U, 0xFFFFU);
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();
        gStageData.buttonConfig.jump = LOADED_SAVE->buttonConfig.jump;
        gStageData.buttonConfig.attack = LOADED_SAVE->buttonConfig.attack;
        gStageData.buttonConfig.trick = LOADED_SAVE->buttonConfig.trick;
        gStageData.gameMode = 0;
        gStageData.unkD = 1;
        sub_80B1AF4(0, 0, 0);
        break;
    case 11:
        sub_80AB120(3U);
        break;
    }
    if (menu->highlitButton != 0xA) {
        TaskDestroy(gCurTask);
    }
}

void Task_3F0_8087F18(void) {
    MainMenu *menu = TASK_DATA(gCurTask);
    s16 temp_r0;

    if (menu->unk6E != 0) {
        gDispCnt |= DISPCNT_WIN0_ON;
        gWinRegs[0] = WIN_RANGE(0, DISPLAY_WIDTH);
        gWinRegs[2] = WIN_RANGE(0, DISPLAY_HEIGHT);
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FFF;
        menu->unk70 = 0;
        menu->unk6E = 0;
    }
    sub_8089028(menu);
    sub_80890F8(menu);
    sub_8089150(menu);
    sub_80891E4(menu);
    sub_8088FD4(menu);
    sub_8089EF8(menu);
    sub_8089F08(menu);
    sub_8089F40(menu);
    sub_8089704(menu);
    if ((u32) gBldRegs.bldY <= 0xFU) {
        gBldRegs.bldY = (u16) ((u16) menu->unk70 >> 8);
        menu->unk70 += 0x100;
        return;
    }
    gBldRegs.bldY = 0x10;
    temp_r0 = menu->highlitButton;
    switch (temp_r0) {
    case 0:
        sub_80003B8();
        WarpToMap((gStageData.zone * 0xA) + gStageData.act, 0);
        gStageData.difficulty = 0;
        return;
    case 1:
        gStageData.playerIndex = 0;
        CreateCharacterSelect(3U);
        break;
    case 2:
        if (gStageData.gameMode == 3) {
            sub_80003B8();
            CreateTimeRecordScreen(3);
        } else if (gStageData.gameMode == 4) {
            sub_80003B8();
            CreateTimeRecordScreen(4);
        } else {
            CreateTitleScreen(1U);
        }
        break;
    case 3:
        CreateTitleScreen(1U);
        break;
    case 4:
        CreateTitleScreen(1U);
        break;
    }
    TaskDestroy(gCurTask);
    return;
}

void Task_3F0_8088088(void) {
    MainMenu *menu = TASK_DATA(gCurTask);
    s16 temp_r0;

    sub_8089028(menu);
    sub_80890F8(menu);
    sub_8088FD4(menu);
    sub_8089EF8(menu);
    sub_8089150(menu);
    sub_80891E4(menu);
    sub_8089398(menu);
    sub_80894BC(menu);
    sub_8089308(menu);
    sub_8089428(menu);
    sub_8089F40(menu);
    sub_8089F08(menu);
    sub_8089704(menu);

    if (sub_8089DF4(menu) == 4) {
        if (menu->initArg1 == 2 || menu->initArg1 == 3)
        {
            gCurTask->main = Task_3F0_8087F18;
        } else {
            if (menu->highlitButton == 0) {
                menu->unk4 = 0;
                menu->unk68 = 0x100;
                menu->unk6A = 0x100;
                gCurTask->main = Task_3F0_8088E74;
            } else if(menu->highlitButton == 1) {
                menu->unk4 = 0;
                menu->unk68 = 0x100;
                menu->unk6A = 0x100;
                gCurTask->main = Task_3F0_80897BC;
            } else if(menu->highlitButton == 2) {
                menu->unk4 = 0;
                menu->unk68 = 0x100;
                menu->unk6A = 0x100;
                gCurTask->main = Task_3F0_8089970;
            } else {
                gCurTask->main = Task_3F0_8087C74;
            }
        }
    }
}

void Task_3F0_808819C(void) {
    MainMenu *menu = TASK_DATA(gCurTask);
    s16 temp_r0;
    s16 temp_r1_2;
    s16 var_r0;
    u16 temp_r2;
    void *temp_r1;

    sub_8088FD4(menu);
    sub_8089EF8(menu);
    sub_8089150(menu);
    sub_80891E4(menu);
    sub_8089398(menu);
    sub_80894BC(menu);
    sub_8089308(menu);
    sub_8089428(menu);
    sub_8089F40(menu);
    sub_8089F08(menu);
    sub_8089704(menu);
    if ((menu->unk14 != 4) && (0x20 & gPressedKeys) && (4 & LOADED_SAVE->unlockFlags) && (menu->highlitButton == 3)) {
        if ((menu->spr16C[0].anim == gUnknown_080D6234[menu->language * 2].anim)
            && (menu->spr16C[0].variant == gUnknown_080D6234[menu->language * 2].variant)) 
        {
            m4aSongNumStart(0x6CU);
            menu->highlitButton = 0xB;
            menu->unk6E = 1;
            gCurTask->main = Task_3F0_8087C74;
            return;
        }
    }
    if (menu->initArg1 != 2 && menu->initArg1 != 3)
    {
        if (sub_808927C(menu) == 1) {
            sub_8089670(menu);
            if (menu->unk14 == 10) {
                menu->unk4 = 0;
                menu->unk68 = 1;
                menu->highlitButton = 10;
                menu->unk14 = (s16) ((u16) menu->unk14 + 1);
            } else {
                if ((0x20 & gPressedKeys) && (menu->highlitButton == 0)) {
                    m4aSongNumStart(0x6CU);
                    menu->highlitButton = 0xA;
                    menu->unk4 = 0;
                    menu->unk68 = 0x100;
                    menu->unk6A = 0x100;
                }
                if ((0x10 & gPressedKeys) && (menu->highlitButton == 0xA)) {
                    m4aSongNumStart(0x6CU);
                    menu->highlitButton = 0;
                    menu->unk4 = 0;
                    menu->unk68 = 0x100;
                    menu->unk6A = 0x100;
                }
            }
        }
        if (((u32) (u8) (menu->initArg1 - 2) > 1U) && (2 & gPressedKeys)) {
            m4aSongNumStart(0x6BU);
            menu->unk12 = 0;
            menu->unk6E = 1;
            menu->highlitButton = 4;
            menu->unk6 = 3;
            menu->unkB = 2;
            goto block_22;
        }
        goto block_20;
    }
block_20:
    if (1 & gPressedKeys) {
        m4aSongNumStart(0x6AU);
        menu->unk6E = 1;
block_22:
        gCurTask->main = Task_3F0_8088088;
        return;
    }
    if (((s32) menu->highlitButton <= 9) && (0xC0 & gRepeatedKeys)) {
        m4aSongNumStart(0x6CU);
        temp_r2 = 0x40 & gRepeatedKeys;
        if (temp_r2 != 0) {
            if ((s32) menu->highlitButton <= 0) {
                menu->highlitButton = 3;
            } else {
                menu->highlitButton = (u16) menu->highlitButton - 1;
            }
        } else if (0x80 & gRepeatedKeys) {
            if ((s32) menu->highlitButton > 2) {
                menu->highlitButton = (s16) temp_r2;
            } else {
                menu->highlitButton = (u16) menu->highlitButton + 1;
            }
        }
        menu->unk68 = 0x100;
        menu->unk6A = 0x100;
        menu->tf324.qScaleX = 0x100;
        menu->tf324.qScaleY = 0x100;
        menu->unk2 = 0;
        menu->unk4 = 0x40;
        if ((u32) (u8) (menu->initArg1 - 2) > 1U) {
            Background *bg = &menu->bg370;
            bg->tilemapId = gUnknown_080D66C4[menu->highlitButton];
            bg->flags = 6;
            DrawBackground(bg);
        }
    }
    sub_80890F8(menu);
    if ((s32) menu->highlitButton <= 9) {
        menu->unkB = (u8) (u16) menu->highlitButton;
        return;
    }
    menu->unkB = 0;
}

void Task_3F0_8088440(void) {
    MainMenu *menu = TASK_DATA(gCurTask);
    Sprite *s;
    u16 temp_r0;
    u8 *var_r6;
    u8 var_r5;
    u8 var_r5_2;

    var_r5 = 0;
    var_r6 = menu->spr7C[0].tiles;
    menu->unk38[0].x = 0xAA00;
    menu->unk38[1].x = 0xAA00;
    menu->unk58 = 0x5000;
    menu->unk6 = 1;
    menu->unk74 = 0x180;
    menu->unk3 = 1;
    temp_r0 = menu->highlitButton;
    menu->unkC = (u8) temp_r0;
    menu->highlitButton = 1U;
    menu->unkD = (u8) temp_r0;
    menu->unk38[0].y = 0x6400;
    menu->unk38[1].y = 0x8200;
    
    for(var_r5 = 0; var_r5 < 2; var_r5++)
    {
        s = &menu->spr1BC[var_r5];
        s->tiles = var_r6;
        var_r6 += 0x800;
        s->anim    = gUnknown_080D6594[var_r5 + (menu->language * 2)].anim;
        s->variant = gUnknown_080D6594[var_r5 + (menu->language * 2)].variant;
        s->prevVariant = -1;
        s->x = I(menu->unk38[0].x);
        s->y = I(menu->unk38[0].y);
        s->oamFlags = 0xC0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }

    for(var_r5 = 0; var_r5 < 2; var_r5++)
    {
        s = &menu->spr20C[var_r5];
        s->tiles = var_r6;
        var_r6 += 0x800;
        s->anim    = gUnknown_080D65F4[var_r5 + (menu->language * 2)].anim;
        s->variant = gUnknown_080D65F4[var_r5 + (menu->language * 2)].variant;
        s->prevVariant = -1;
        s->x = (s16) ((s32) menu->unk38[1].x >> 8);
        s->y = (s16) ((s32) menu->unk38[1].y >> 8);
        s->oamFlags = 0xC0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }

    sub_808A1B0(0U, &menu->unkD, var_r6, 0x64U, 0x26);
    menu->unkB = 2;
    {
        Background *bg = &menu->bg370;
        bg->tilemapId = gUnknown_080D66C4[1];
        bg->flags = 6;
        DrawBackground(bg);
    }
    gCurTask->main = Task_3F0_80888E8;
}

void Task_3F0_80885CC(void) {
    MainMenu *menu = TASK_DATA(gCurTask);
    s32 sp4;
    Sprite *s;
    Sprite *temp_r2_2;
    u32 temp_r0;
    u8 *var_r5;
    u8 temp_r1;
    u8 var_r6;
    u8 var_r6_2;
    void *temp_r0_2;
    void *temp_r0_3;

    var_r6 = 0;
    temp_r1 = menu->language;
    temp_r0 = (u32) ((0 - temp_r1) | temp_r1) >> 0x1F;
    var_r5 = menu->spr7C[0].tiles;
    menu->unk38[0].x = 0xAA00;
    menu->unk38[1].x = 0xAA00;
    menu->unk58 = 0x5000;
    menu->unk6 = 1;
    menu->unk74 = 0x180;
    menu->unk3 = 1;
    menu->unkC = (u8) menu->highlitButton;
    menu->highlitButton = 2U;
    menu->unk38[0].y = 0x6400;
    menu->unk38[1].y = 0x8200;

    for(var_r6 = 0; var_r6 < 2; var_r6++)
    {
        s = &menu->spr1BC[var_r6];
        s->tiles = var_r5;
        if (var_r6 == 0) {
            var_r5 += 0x800;
        } else {
            var_r5 += 0x800;
        }
        s->anim    = gUnknown_080D6654[var_r6 + (temp_r0 * 2)].anim;
        s->variant = gUnknown_080D6654[var_r6 + (temp_r0 * 2)].variant;
        s->prevVariant = -1;
        s->x = (s16) ((s32) menu->unk38[0].x >> 8);
        s->y = (s16) ((s32) menu->unk38[0].y >> 8);
        s->oamFlags = 0xC0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }

    for(var_r6 = 0; var_r6 < 2; var_r6++)
    {
        s = &menu->spr20C[var_r6];
        s->tiles = var_r5;
        if (var_r6 == 0) {
            var_r5 += 0x800;
        } else {
            var_r5 += 0x800;
        }
        s->anim    = gUnknown_080D6674[var_r6 + (temp_r0 * 2)].anim;
        s->variant = gUnknown_080D6674[var_r6 + (temp_r0 * 2)].variant;
        s->prevVariant = -1;
        s->x = (s16) ((s32) menu->unk38[1].x >> 8);
        s->y = (s16) ((s32) menu->unk38[1].y >> 8);
        s->oamFlags = 0xC0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }

    menu->unkD = 0;
    sub_808A1B0(1U, &menu->unkD, var_r5, 0x58U, 0x22);
    menu->unkB = 2;

    {
        Background *bg = &menu->bg370;
        bg->tilemapId = gUnknown_080D66C4[2];
        bg->flags = 6;
        DrawBackground(bg);
    }
    gCurTask->main = Task_3F0_80888E8;
}

void Task_3F0_8088770(void) {
    MainMenu *menu = TASK_DATA(gCurTask);
    Sprite *s;
    u16 temp_r0;
    u8 *var_r6;
    u8 i;

    i = 0;
    var_r6 = menu->spr7C[0].tiles;
    menu->unk38[0].x = 0xAA00;
    menu->unk38[1].x = 0xAA00;
    menu->unk58 = 0x5000;
    menu->unk6 = 1;
    menu->unk74 = 0x180;
    menu->unk3 = 1;
    temp_r0 = menu->highlitButton;
    menu->unkC = (u8) temp_r0;
    menu->unkB = temp_r0 + 1;
    menu->highlitButton = 0U;
    menu->unk38[0].y = (s32) (menu->unk18[0].y + 0x1A00);
    menu->unk38[1].y = (s32) (menu->unk18[2].y + 0x600);

    for(i = 0; i < 2; i++)
    {
        s = &menu->spr1BC[i];
        s->tiles = var_r6;
        var_r6 += 0x800;
        s->anim    = gUnknown_080D6294[i + (menu->language * 2)].anim;
        s->variant = gUnknown_080D6294[i + (menu->language * 2)].variant;
        s->prevVariant = -1;
        s->x = (s16) ((s32) menu->unk38[0].x >> 8);
        s->y = (s16) ((s32) menu->unk38[0].y >> 8);
        s->oamFlags = 0xC0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }

    for(i = 0; i < 2; i++)
    {
        s = &menu->spr20C[i];
        s->tiles = var_r6;
        var_r6 += 0x800;
        s->anim    = gUnknown_080D62F4[i + (menu->language * 2)].anim;
        s->variant = gUnknown_080D62F4[i + (menu->language * 2)].variant;
        s->prevVariant = -1;
        s->x = (s16) ((s32) menu->unk38[1].x >> 8);
        s->y = (s16) ((s32) menu->unk38[1].y >> 8);
        s->oamFlags = 0xC0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }

    {
        Background *bg = &menu->bg370;
        bg->tilemapId = gUnknown_080D66C4[0];
        bg->flags = 6;
        DrawBackground(bg);
    }
    gCurTask->main = Task_3F0_80888E8;
}

void Task_3F0_80888E8(void) {
    MainMenu *menu = TASK_DATA(gCurTask);
    if (menu->unk6E != 0) {
        gDispCnt |= 0x2000;
        gWinRegs[0] = 0xF0;
        gWinRegs[2] = 0xA0;
        gWinRegs[4] |= 0x3F;
        gWinRegs[5] |= 0x1F;
        gBldRegs.bldCnt = 0x3FFF;
        gBldRegs.bldY = 0x10;
        menu->unk70 = 0x1000;
        menu->unk6E = 0;
    }
    sub_8089150(menu);
    sub_80891E4(menu);
    sub_80890F8(menu);
    sub_8088FD4(menu);
    sub_8089EF8(menu);
    sub_80895E0(menu);
    sub_8089550(menu);
    sub_8089F08(menu);
    sub_8089F40(menu);
    sub_8089704(menu);
    if (gBldRegs.bldY != 0) {
        gBldRegs.bldY = (u16) ((u16) menu->unk70 >> 8);
        menu->unk70 -= Q(1);
        return;
    }
    gBldRegs.bldY = gBldRegs.bldY;
    gCurTask->main = Task_3F0_80889CC;
}

void Task_3F0_80889CC(void) {
    MainMenu *menu = TASK_DATA(gCurTask);
    s16 temp_r1;
    s16 temp_r1_3;
    u16 temp_r5;
    u8 temp_r1_2;
    u8 temp_r2;
    void (*var_r0)(MainMenu *);

    sub_8088FD4(menu);
    sub_8089EF8(menu);
    sub_8089150(menu);
    sub_80891E4(menu);
    sub_80895E0(menu);
    sub_8089550(menu);
    sub_8089F40(menu);
    sub_8089F08(menu);
    sub_8089704(menu);

    if (2 & gPressedKeys) {
        m4aSongNumStart(0x6BU);
        menu->unk12 = 0;
        menu->unk6E = 1;
        menu->unk6 = 2;
        menu->unkC = 0;
        menu->unkD = 0xB;
        gCurTask->main = Task_3F0_8088B48;
    } else {
        if (0xC0 & gRepeatedKeys) {
            m4aSongNumStart(0x6CU);
            if (menu->unkC == 1) {
                menu->unkC = 0;
            } else {
                menu->unkC = 1;
            }
        
            if (menu->highlitButton == 0) {
                menu->unkB = menu->unkC + 1;
            } else if(menu->highlitButton == 1) {
                menu->unkB = menu->unkC + 2;
                menu->unkD = menu->unkC;
            } else if(menu->highlitButton == 2) {
                menu->unkB = menu->unkC + 2;
                if (!(2 & LOADED_SAVE->unlockFlags)) {
                    menu->unkD = menu->unkC;
                }
            }
            menu->unk68 = 0x100;
            menu->unk6A = 0x100;
            menu->tf324.qScaleX = 0x100;
            menu->tf324.qScaleY = 0x100;
            menu->unk2 = 0;
            menu->unk4 = 0x40;
        } 
        
        sub_80890F8(menu);
        if (1 & gPressedKeys) {
            if (menu->highlitButton == 2) {
                if (!(2 & LOADED_SAVE->unlockFlags) && (menu->unkC == 1)) {
                    m4aSongNumStart(0x69U);
                    return;
                }
                m4aSongNumStart(0x6AU);
                menu->unk6E = 1;
            } else {
                m4aSongNumStart(0x6AU);
                menu->unk6E = 1;
            }
            gCurTask->main = Task_3F0_808A144;
        }    
    }
}

void Task_3F0_8088B48(void) {
    MainMenu *menu = TASK_DATA(gCurTask);
    sub_80890F8(menu);
    sub_8088FD4(menu);
    sub_8089EF8(menu);
    sub_8089150(menu);
    sub_80891E4(menu);
    sub_80895E0(menu);
    sub_8089550(menu);
    sub_8089F40(menu);
    sub_8089F08(menu);
    sub_8089704(menu);
    if (sub_8089EA0(menu) == 2) {
        menu->unk4 = 0;
        menu->unk68 = 0x100;
        menu->unk6A = 0x100;
        gCurTask->main = Task_3F0_8088BD0;
    }
}

void Task_3F0_8088BD0(void) {
    MainMenu *menu = TASK_DATA(gCurTask);
    Sprite *s;
    u8 *var_r6;
    u8 i = 0;

    sub_8088FD4(menu);
    sub_8089EF8(menu);
    sub_8089150(menu);
    sub_80891E4(menu);
    sub_8089F40(menu);
    sub_8089F08(menu);
    sub_8089704(menu);

    var_r6 = menu->spr7C[0].tiles;

    for(i = 0; i < 2; i++)
    {
        s = &menu->spr7C[i];
        s->tiles = var_r6;
        var_r6 += 0x800;
        s->anim    = gUnknown_080D6114[i + (menu->language * 2)].anim;
        s->variant = gUnknown_080D6114[i + (menu->language * 2)].variant;
        s->prevVariant = -1;
        s->x = (s16) ((s32) menu->unk18[0].x >> 8);
        s->y = (s16) ((s32) menu->unk18[0].y >> 8);
        s->oamFlags = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0x20;
        UpdateSpriteAnimation(s);
    }

    for(i = 0; i < 2; i++)
    {
        s = &menu->sprCC[i];
        s->tiles = var_r6;
        var_r6 += 0x800;
        s->anim    = gUnknown_080D6174[i + (menu->language * 2)].anim;
        s->variant = gUnknown_080D6174[i + (menu->language * 2)].variant;
        s->prevVariant = -1;
        s->x = (s16) ((s32) menu->unk18[1].x >> 8);
        s->y = (s16) ((s32) menu->unk18[1].y >> 8);
        s->oamFlags = 0x40;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }
    
    for(i = 0; i < 2; i++) {
        s = &menu->spr11C[i];
        s->tiles = var_r6;
        var_r6 += 0x800;
        s->anim    = gUnknown_080D61D4[i + (menu->language * 2)].anim;
        s->variant = gUnknown_080D61D4[i + (menu->language * 2)].variant;
        s->prevVariant = -1;
        s->x = (s16) ((s32) menu->unk18[2].x >> 8);
        s->y = (s16) ((s32) menu->unk18[2].y >> 8);
        s->oamFlags = 0x80;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }

    
    for(i = 0; i < 2; i++)
    {
        s = &menu->spr16C[i];
        s->tiles = var_r6;
        var_r6 += 0x800;
        s->anim    = gUnknown_080D6234[i + (menu->language * 2)].anim;
        s->variant = gUnknown_080D6234[i + (menu->language * 2)].variant;
        s->prevVariant = -1;
        s->x = (s16) ((s32) menu->unk18[3].x >> 8);
        s->y = (s16) ((s32) menu->unk18[3].y >> 8);
        s->oamFlags = 0xC0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }

    
    for(i = 0; i < 2; i++)
    {
        s = &menu->spr25C[i];
        s->tiles = var_r6;
        var_r6 += 0x800;
        s->anim    = gUnknown_080D6354[i + (menu->language * 2)].anim;
        s->variant = gUnknown_080D6354[i + (menu->language * 2)].variant;
        s->prevVariant = -1;
        s->x = (s16) ((s32) menu->unk48 >> 8);
        s->y = (s16) ((s32) menu->unk4C >> 8);
        s->oamFlags = 0xC0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }

    gCurTask->main = Task_3F0_808A060;
}

void Task_3F0_8088E74(void) {
    MainMenu *menu = TASK_DATA(gCurTask);
    Sprite *s;
#ifndef NON_MATCHING
    register u8 *vram asm("r5");
#else
    u8 *vram;
#endif
    u8 var_r6;

    var_r6 = 0;
    menu->unk38[0].y = (s32) (menu->unk18[0].y + 0x1A00);
    menu->unk38[1].y = (s32) (menu->unk18[2].y + 0x600);
    sub_8088FD4(menu);
    sub_8089EF8(menu);
    sub_8089150(menu);
    sub_80891E4(menu);
    sub_8089F40(menu);
    sub_8089F08(menu);
    sub_8089704(menu);
    vram = menu->spr7C[0].tiles;

    for(var_r6 = 0; var_r6 < 2; var_r6++)
    {
        s = &menu->spr1BC[var_r6];
        s->tiles = vram;
        vram += 0x800;
        s->anim = gUnknown_080D6294[var_r6 + (menu->language * 2)].anim;
        s->variant = gUnknown_080D6294[var_r6 + (menu->language * 2)].variant;
        s->prevVariant = -1;
        s->x = (s16) ((s32) menu->unk38[0].x >> 8);
        s->y = (s16) ((s32) menu->unk38[0].y >> 8);
        s->oamFlags = 0xC0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }

    for(var_r6 = 0; var_r6 < 2; var_r6++)
    {
        s = &menu->spr20C[var_r6];
        s->tiles = vram;
        vram += 0x800;
        s->anim = gUnknown_080D62F4[var_r6 + (menu->language * 2)].anim;
        s->variant = gUnknown_080D62F4[var_r6 + (menu->language * 2)].variant;
        s->prevVariant = -1;
        s->x = (s16) ((s32) menu->unk38[1].x >> 8);
        s->y = (s16) ((s32) menu->unk38[1].y >> 8);
        s->oamFlags = 0xC0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }
    menu->unkB = 1;
    gCurTask->main = Task_3F0_808A0D8;
}

void sub_8088FD4(MainMenu *menu) {
    s32 var_r2;
    u16 *var_r1;
    u16 temp_r0;
    u16 temp_r0_2;

    if (menu->unk3 == 0) {
        menu->unk72 -= Q(4);
    } else {
        menu->unk72 -= Q(1);
    }

    if ((u32) menu->unk74 > 0x180U) {
        menu->unk74 -= 0x20;
        if (menu->unk74 <= 0x180U) {
            menu->unk3 = 1;
        }
    } else {
        menu->unk74 = 0x180;
    }
}

u8 sub_8089028(MainMenu *menu) {
    u16 temp_r2;
    u16 var_r0;
    u16 var_r3;
    u16 var_r5;
    u16 *var_r1;
    s32 offset = 10;

    var_r3 = 0;
    var_r5 = 0;
    gFlags |= 4;
    gHBlankCopyTarget = (void *)&REG_BG0HOFS;
    gHBlankCopySize = 2;
    var_r1 = gBgOffsetsHBlankPrimary;
    temp_r2 = menu->unk12;
    if ((u32) menu->unk6 <= 2U) {
        do {
            if (var_r5 & 1) {
                *var_r1 = (u16) (0 - temp_r2);
            } else {
                *var_r1 = temp_r2;
            }
            var_r1 += 1;
            if ((7 & var_r3) == 7) {
                var_r5 += 1;
            }
            var_r3 += 1;
        } while ((u32) var_r3 < DISPLAY_HEIGHT);
        if ((s32) (s16) menu->unk12 < 0) {
            menu->unk12 += offset;
            return 0;
        } else {
            // TODO: Remove goto!
            goto block_18;            
        }
    }
    do {
        if (var_r5 & 1) {
            *var_r1 = (u16) (0 - temp_r2);
        } else {
            *var_r1 = temp_r2;
        }
        var_r1 += 1;
        if ((7 & var_r3) == 7) {
            var_r5 += 1;
        }
        var_r3 += 1;
    } while ((u32) var_r3 < 160);
    if ((s32) (s16) menu->unk12 <= -260) {
block_18:
        return 1;
    }
    menu->unk12 -= offset;
    return 0;
}

void sub_80890F8(MainMenu *menu) {
    s32 temp_r0;

    menu->unk4 += 2;
    menu->unk68 = SIN_24_8(menu->unk4 * 4) + (SIN_24_8(menu->unk4 * 4) >> 1);
    if ((menu->unk68 == 0) || (menu->unk68 == 0xFF)) {
        menu->unk68 = SIN_24_8(((menu->unk4+3) & 0xFF) * 4) + (SIN_24_8(((menu->unk4+3) & 0xFF) * 4) >> 1);
    }
    menu->unk6A = 0x180;
}

void sub_8089150(MainMenu *menu) {
    s32 temp_r0;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r1_3;
    u8 temp_r3;

    menu->unk5 += 3;
    temp_r1 = menu->unk58;
    if ((temp_r1 <= 0x5000) && (menu->unk6 == 0)) {
        temp_r1_2 = temp_r1 + 0x400;
        menu->unk58 = temp_r1_2;
        if (temp_r1_2 > 0x4FFF) {
            menu->unk6 = 2;
        }
    } else {
        if ((menu->unk58 > 0x4FFF) && (menu->unk6 == 1)) {
            temp_r0 = menu->unk58 - Q(3);
            menu->unk58 = temp_r0;
            if (temp_r0 <= 0x5000) {
                menu->unk58 = 0x5000;
                menu->unk6 = 2;
            }
        } else if (menu->unk6 == 3) {
            menu->unk58 = (s32) (menu->unk58 - Q(4));
        }
    }
    menu->unk5C = (( COS_24_8(menu->unk5 * 4) * 4) + Q(86));
}

void sub_80891E4(MainMenu *menu) {
    s32 var_r0;
    s32 var_r1;

    menu->unk5 += 3;
    if (menu->unk6 == 0) {
        menu->unk60 = (s32) (menu->unk58 -Q(3));
        menu->unk64 = menu->unk5C - Q(54);
    } else if(menu->unk6 == 1) {
        menu->unk60 = menu->unk58 + Q(3);
        menu->unk64 = menu->unk5C - Q(54);
    } else if(menu->unk6 == 2) {
        menu->unk60 = menu->unk58 - Q(gUnknown_080D6770[menu->unkB][0]);
        menu->unk64 = menu->unk5C + Q(gUnknown_080D6770[menu->unkB][1]);
    } else if(menu->unk6 == 3) {
        menu->unk60 = menu->unk58 + Q(3);
        menu->unk64 = menu->unk5C - Q(54);
    }
    menu->unk64 += SIN_24_8(menu->unk5 * 4) * 2;
}

bool32 sub_808927C(MainMenu *menu) {
    s16 temp_r0;
    u16 temp_r0_2;
    u16 temp_r1;
    u16 temp_r5;

    if ((0x7F & LOADED_SAVE->collectedEmeralds) == 0x7F) {
        if (menu->unk14 <= 9) {
            if (gPressedKeys & gUnknown_080D66CC[menu->unk14 + 1]) {
                if (++menu->unk14 == 5) {
                    m4aSongNumStart(0x6CU);
                    menu->unk14 = 0xAU;
                    return 1;
                }
            } else if (gPressedKeys & gUnknown_080D66CC[0]) {
                menu->unk14 = 0;
            } else {
                if (gPressedKeys) {
                    menu->unk14 = -1;
                }
                if (gPressedKeys & gUnknown_080D66CC[0]) {
                    menu->unk14 = +1;
                }
            }
        } else {
            return 1;
        }
    }
    return 0;
}

void sub_8089308(MainMenu *menu) {
    Sprite *temp_r4;
    SpriteTransform *tf = &menu->tf324;
    u8 var_r0;
    u8 var_r7;

    for(var_r7 = 0; var_r7 < 2; var_r7++)
    {
        temp_r4 = &menu->spr7C[var_r7];
        if (menu->highlitButton == 0) {
            if ((s32) menu->unk68 <= 0) {
                temp_r4->palId = 3;
            } else {
                temp_r4->palId = 1;
            }
        } else {
            temp_r4->palId = 0;
        }
        temp_r4->x = (s16) ((s32) menu->unk18[0].x >> 8);
        temp_r4->y = (s16) ((s32) menu->unk18[0].y >> 8);
        if (menu->highlitButton == 0) {
            temp_r4->frameFlags |= 0x61;
            tf->rotation = 0;
            tf->qScaleX = menu->unk68;
            tf->qScaleY = menu->unk6A;
            tf->x       = temp_r4->x;
            tf->y       = temp_r4->y;
            TransformSprite(temp_r4, tf);
        } else {
            temp_r4->frameFlags = 0;
        }
        DisplaySprite(temp_r4);
    }
}

void sub_8089398(MainMenu *menu) {
    SpriteTransform *tf = &menu->tf324;
    Sprite *temp_r4;
    s16 temp_r1;
    u8 var_r0;
    u8 var_r7;

    var_r7 = 0;
    do {
        temp_r4 = &menu->sprCC[var_r7];
        if (menu->highlitButton == 1) {
            if ((s32) menu->unk68 <= 0) {
                temp_r4->palId = 3;
            } else {
                temp_r4->palId = 1;                
            }
        } else {
            temp_r4->palId = 0;
        }
        temp_r4->x = (s16) ((s32) menu->unk18[1].x >> 8);
        temp_r4->y = (s16) ((s32) menu->unk18[1].y >> 8);
        if (menu->highlitButton == 1) {
            temp_r4->frameFlags |= 0x61;
            tf->rotation = 0;
            tf->qScaleX = menu->unk68;
            tf->qScaleY = menu->unk6A;
            tf->x       = temp_r4->x;
            tf->y       = temp_r4->y;
            TransformSprite(temp_r4, tf);
        } else {
            temp_r4->frameFlags = 0;
        }
        DisplaySprite(temp_r4);
        var_r7 += 1;
    } while ((u32) var_r7 <= 1U);
}

void sub_8089428(MainMenu *menu) {
    SpriteTransform *tf = &menu->tf324;
    Sprite *temp_r4;
    u8 var_r0;
    u8 var_r7;

    for(var_r7 = 0; var_r7 < 2; var_r7++)
    {
        temp_r4 = &menu->spr11C[var_r7];
        if (menu->highlitButton == 2) {
            if ((s32) menu->unk68 <= 0) {
                temp_r4->palId = 3;
            } else {
                temp_r4->palId = 1;
            }
        } else {
            temp_r4->palId = 0;
        }
        temp_r4->x = (s16) ((s32) menu->unk18[2].x >> 8);
        temp_r4->y = (s16) ((s32) menu->unk18[2].y >> 8);
        if (menu->highlitButton == 2) {
            temp_r4->frameFlags |= 0x61;
            tf->rotation = 0;
            tf->qScaleX = menu->unk68;
            tf->qScaleY = menu->unk6A;
            tf->x       = temp_r4->x;
            tf->y       = temp_r4->y;
            TransformSprite(temp_r4, tf);
        } else {
            temp_r4->frameFlags = 0;
        }
        DisplaySprite(temp_r4);
    }
}

void sub_80894BC(MainMenu *menu) {
    SpriteTransform *tf = &menu->tf324;
    Sprite *temp_r4;
    s16 temp_r1;
    u8 var_r0;
    u8 var_r7;

    var_r7 = 0;
    do {
        temp_r4 = &menu->spr16C[var_r7];
        temp_r1 = menu->highlitButton;
        if (temp_r1 == 3) {
            if ((s32) menu->unk68 <= 0) {
                temp_r4->palId = 3;
            } else {
                temp_r4->palId = 1;
            }
        } else {
            temp_r4->palId = 0;
        }
        temp_r4->x = (s16) ((s32) menu->unk18[3].x >> 8);
        temp_r4->y = (s16) ((s32) menu->unk18[3].y >> 8);
        if (menu->highlitButton == 3) {
            temp_r4->frameFlags |= 0x61;
            tf->rotation = 0;
            tf->qScaleX = menu->unk68;
            tf->qScaleY = menu->unk6A;
            tf->x       = temp_r4->x;
            tf->y       = temp_r4->y;
            TransformSprite(temp_r4, tf);
        } else {
            temp_r4->frameFlags = 0;
        }
        DisplaySprite(temp_r4);
        var_r7 += 1;
    } while ((u32) var_r7 <= 1U);
}

void sub_8089550(MainMenu *menu) {
    SpriteTransform *tf = &menu->tf324;
    Sprite *s;
    u8 var_r0;
    u8 var_r7;

    for(var_r7 = 0; var_r7 < 2; var_r7++)
    {
        s = &menu->spr1BC[var_r7];
        if (menu->unkC == 0) {
            if ((s32) menu->unk68 <= 0) {
                s->palId = 3;
            } else {
                s->palId = 1;
            }
        } else {
            s->palId = 0;
        }
        s->x = (s16) ((s32) menu->unk38[0].x >> 8);
        s->y = (s16) ((s32) menu->unk38[0].y >> 8);
        if (menu->unkC == 0) {
            s->frameFlags |= 0x61;
            tf->rotation = 0;
            tf->qScaleX = menu->unk68;
            tf->qScaleY = menu->unk6A;
            tf->x       = s->x;
            tf->y       = s->y;
            TransformSprite(s, tf);
        } else {
            s->frameFlags = 0;
        }
        DisplaySprite(s);
    }
}

void sub_80895E0(MainMenu *menu) {
    SpriteTransform *tf = &menu->tf324;
    Sprite *s;
    u8 temp_r1;
    u8 var_r0;
    u8 var_r7;

    var_r7 = 0;
    do {
        s = &menu->spr20C[var_r7];
        temp_r1 = menu->unkC;
        if (temp_r1 == 1) {
            if ((s32) menu->unk68 <= 0) {
                s->palId = 3;
            } else {
                s->palId = 1;                
            }
        } else {
            s->palId = 0;
        }
        s->x = (s16) ((s32) menu->unk38[1].x >> 8);
        s->y = (s16) ((s32) menu->unk38[1].y >> 8);
        if (menu->unkC == 1) {
            s->frameFlags |= 0x61;
            tf->rotation = 0;
            tf->qScaleX = menu->unk68;
            tf->qScaleY = menu->unk6A;
            tf->x       = s->x;
            tf->y       = s->y;
            TransformSprite(s, tf);
        } else {
            s->frameFlags = 0;
        }
        DisplaySprite(s);
        var_r7 += 1;
    } while ((u32) var_r7 <= 1U);
}

void sub_8089670(MainMenu *menu) {
    SpriteTransform *tf = &menu->tf324;
    Sprite *s;
    u8 var_r0;
    u8 var_r7;

    var_r7 = 0;
    do {
        s = &menu->spr25C[var_r7];
        if ((s32) menu->highlitButton > 9) {
            if ((s32) menu->unk68 <= 0) {
                s->palId = 3;
            } else {
                s->palId = 1;
            }
        } else {
            s->palId = 0;
        }
        s->x = (s16) ((s32) menu->unk48 >> 8);
        s->y = (s16) ((s32) menu->unk4C >> 8);
        if ((s32) menu->highlitButton > 9) {
            s->frameFlags |= 0x61;
            tf->rotation = 0;
            tf->qScaleX = menu->unk68;
            tf->qScaleY = menu->unk6A;
            tf->x       = s->x;
            tf->y       = s->y;
            TransformSprite(s, tf);
        } else {
            s->frameFlags = 0;
        }
        DisplaySprite(s);
        var_r7 += 1;
    } while ((u32) var_r7 <= 1U);
}

void sub_8089704(MainMenu *menu) {
    Sprite *s = &menu->spr2D4;
    u32 var_r0;
    u32 var_r0_2;
    u8 temp_r0;
    u8 temp_r0_2;

    s->x = (s16) ((s32) menu->unk58 >> 8);
    s->y = (s16) ((s32) menu->unk5C >> 8);
    temp_r0 = menu->unk6;
    if ((temp_r0 == 1) || (temp_r0 == 3)) {
        s->frameFlags = s->frameFlags | 0x400;
    } else {
        s->frameFlags = s->frameFlags & 0xFFFFFBFF;
    }
    DisplaySprite(s);
    s = &menu->spr2FC;
    s->x = (s16) ((s32) menu->unk60 >> 8);
    s->y = (s16) ((s32) menu->unk64 >> 8);
    DisplaySprite(s);
    s = &menu->spr2AC;
    s->anim = gUnknown_080D6694[menu->unkB].anim;
    s->variant = gUnknown_080D6694[menu->unkB].variant;
    s->prevVariant = 0xFF;
    s->x = (s16) ((s32) menu->unk58 >> 8);
    s->y = (s16) ((s32) menu->unk5C >> 8);
    temp_r0_2 = menu->unk6;
    if ((temp_r0_2 == 1) || (temp_r0_2 == 3)) {
        s->frameFlags = s->frameFlags | 0x400;
    } else {
        s->frameFlags = s->frameFlags & 0xFFFFFBFF;
    }
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void Task_3F0_80897BC(void) {
    MainMenu *menu = TASK_DATA(gCurTask);
    TileInfo2 *sp10;
    Sprite *temp_r1;
    TileInfo2 *var_r2;
    TileInfo2 *var_r2_2;
    s16 temp_r2;
    u8 var_r6 = 0;
    u8 *var_r7 = NULL;
    u8 var_r6_2;

    menu->unk38[0].y = 0x6400;
    menu->unk38[1].y = 0x8200;
    menu->unkD = 0;
    sub_8088FD4(menu);
    menu->unk50 = 0;
    menu->unk54 += 0x100;
    sub_8089150(menu);
    sub_80891E4(menu);
    gBgScrollRegs[1][0] = (s16) ((s32) menu->unk50 >> 8);
    gBgScrollRegs[1][1] = (s16) ((s32) menu->unk54 >> 8);
    sa2__sub_8003EE4((u16) ((u16) menu->unk72 >> 6), menu->unk74, menu->unk74, 0x40, 0x40, 0x48, 0x50, gBgAffineRegs);
    sub_8089704(menu);

    var_r7 = menu->spr7C[0].tiles;
    for(var_r6 = 0; var_r6 < 2; var_r6++)
    {
        temp_r1 = &menu->spr1BC[var_r6];
        temp_r1->tiles = var_r7;
        var_r7 += 0x800;
        temp_r1->anim = gUnknown_080D6594[var_r6 + (menu->language * 2)].anim;
        temp_r1->variant = gUnknown_080D6594[var_r6 + (menu->language * 2)].variant;
        temp_r1->prevVariant = 0xFF;
        temp_r1->x = (s16) ((s32) menu->unk38[0].x >> 8);
        temp_r1->y = (s16) ((s32) menu->unk38[0].y >> 8);
        temp_r1->oamFlags = 0xC0;
        temp_r1->animCursor = 0;
        temp_r1->qAnimDelay = 0;
        temp_r1->animSpeed = 0x10;
        temp_r1->palId = 0;
        temp_r1->frameFlags = 0;
        UpdateSpriteAnimation(temp_r1);
    }

    for(var_r6 = 0; var_r6 < 2; var_r6++)
    {
        temp_r1 = &menu->spr20C[var_r6];
        temp_r1->tiles = var_r7;
        var_r7 += 0x800;
        temp_r1->anim = gUnknown_080D65F4[var_r6 + (menu->language * 2)].anim;
        temp_r1->variant = gUnknown_080D65F4[var_r6 + (menu->language * 2)].variant;
        temp_r1->prevVariant = 0xFF;
        temp_r1->x = (s16) ((s32) menu->unk38[1].x >> 8);
        temp_r1->y = (s16) ((s32) menu->unk38[1].y >> 8);
        temp_r1->oamFlags = 0xC0;
        temp_r1->animCursor = 0;
        temp_r1->qAnimDelay = 0;
        temp_r1->animSpeed = 0x10;
        temp_r1->palId = 0;
        temp_r1->frameFlags = 0;
        UpdateSpriteAnimation(temp_r1);
    }

    sub_808A1B0(0U, &menu->unkD, var_r7, 0x64, 0x26);
    menu->unkB = 2;
    gCurTask->main = Task_3F0_808A0D8;
}

void Task_3F0_8089970(void) {
    MainMenu *menu = TASK_DATA(gCurTask);
    s32 sp10;
    s32 sp14;
    Sprite *temp_r2_2;
    Sprite *temp_r2_3;
    s16 temp_r2;
    u16 var_r3;
    u32 temp_r4;
    u8 var_r7 = 0;
    u8 *var_r6 = 0;
    u8 temp_r1;
    u8 var_r7_2;
    void *temp_r0;
    void *temp_r0_2;

    menu->unk38[0].y = 0x6400;
    menu->unk38[1].y = 0x8200;
    menu->unkD = 0;
    sub_8088FD4(menu);
    menu->unk50 = 0;
    menu->unk54 = (s32) (menu->unk54 + 0x100);
    sub_8089150(menu);
    sub_80891E4(menu);
    gBgScrollRegs[1][0] = (s16) ((s32) menu->unk50 >> 8);
    gBgScrollRegs[1][1] = (s16) ((s32) menu->unk54 >> 8);
    sa2__sub_8003EE4((u16) ((u16) menu->unk72 >> 6), menu->unk74, menu->unk74, 0x40, 0x40, 0x48, 0x50, gBgAffineRegs);
    sub_8089704(menu);
    var_r6 = menu->spr7C[0].tiles;
    temp_r4 = (menu->language == JAPANESE) ? 0 : 1;
    for(var_r7 = 0; var_r7 < 2; var_r7++) {
        temp_r2_2 = &menu->spr1BC[var_r7];
        temp_r2_2->tiles = var_r6;
        if (var_r7 == 0) {
            var_r6 += 0x200;
        } else {
            var_r6 += 0x200;
        }
        temp_r2_2->anim = gUnknown_080D6654[var_r7 + (temp_r4 * 2)].anim;
        temp_r2_2->variant = gUnknown_080D6654[var_r7 + (temp_r4 * 2)].variant;
        temp_r2_2->prevVariant = -1;
        temp_r2_2->x = (s16) ((s32) menu->unk38[0].x >> 8);
        temp_r2_2->y = (s16) ((s32) menu->unk38[0].y >> 8);
        temp_r2_2->oamFlags = 0xC0;
        temp_r2_2->animCursor = 0;
        temp_r2_2->qAnimDelay = (s16) 0;
        temp_r2_2->animSpeed = 0x10;
        temp_r2_2->palId = 0;
        temp_r2_2->frameFlags = (u32) 0;
        UpdateSpriteAnimation(temp_r2_2);
    }

    for(var_r7 = 0; var_r7 < 2; var_r7++)
    {
        temp_r2_2 = &menu->spr20C[var_r7];
        temp_r2_2->tiles = var_r6;
        if (var_r7 == 0) {
            var_r6 += 0x200;
        } else {
            var_r6 += 0x200;
        }
        temp_r2_2->anim = gUnknown_080D6674[var_r7 + (temp_r4 * 2)].anim;
        temp_r2_2->variant = gUnknown_080D6674[var_r7 + (temp_r4 * 2)].variant;
        temp_r2_2->prevVariant = -1;
        temp_r2_2->x = (s16) ((s32) menu->unk38[1].x >> 8);
        temp_r2_2->y = (s16) ((s32) menu->unk38[1].y >> 8);
        temp_r2_2->oamFlags = 0xC0;
        temp_r2_2->animCursor = 0;
        temp_r2_2->qAnimDelay = 0;
        temp_r2_2->animSpeed = 0x10;
        temp_r2_2->palId = 0;
        temp_r2_2->frameFlags = 0;
        UpdateSpriteAnimation(temp_r2_2);
    }

    sub_808A1B0(1U, &menu->unkD, var_r6, 0x58U, 0x22);
    menu->unkB = 2;
    gCurTask->main = Task_3F0_808A0D8;
}

void sub_8089B38(MMChaoMessage *msg, u8 *vram) {
    u8 temp_r0;
    u8 temp_r0_2;
    s32 var_r1 = 0;
    Sprite *s = &msg->spr1C;
    Sprite *spr6C;
    s->tiles = vram;
    temp_r0 = msg->initArg0;
    if (msg->initArg0 != 0) {
        if(temp_r0 == 1) {
            var_r1 = 1;            
        }
    }
    vram += gUnknown_080D6780[var_r1].numTiles * TILE_SIZE_4BPP;
    s->anim = gUnknown_080D6780[var_r1].anim;
    s->variant = gUnknown_080D6780[var_r1].variant;
    s->prevVariant = -1;
    s->x = (s16) ((s32) msg->qUnkC >> 8);
    s->y = (s16) ((s32) msg->qUnk10 >> 8);
    s->oamFlags = 0x40;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    UpdateSpriteAnimation(s);

    spr6C = &msg->spr6C;
    spr6C->tiles = vram;
    vram += (gUnknown_080D6780[2].numTiles * TILE_SIZE_4BPP);
    spr6C->anim = gUnknown_080D6780[2].anim;
    spr6C->variant = gUnknown_080D6780[2].variant;
    spr6C->prevVariant = -1;
    spr6C->x = (s16) ((s32) msg->unk14 >> 8);
    spr6C->y = (s16) ((s32) msg->unk18 >> 8);
    spr6C->oamFlags = 0;
    spr6C->animCursor = 0;
    spr6C->qAnimDelay = 0;
    spr6C->animSpeed = 0x10;
    spr6C->palId = 0;
    spr6C->frameFlags = 0;
    UpdateSpriteAnimation(spr6C);

    {
        Sprite *s = &msg->spr44;
        s->tiles = vram;
        if (msg->initArg0 == 0) {
            s->anim    = gUnknown_080D67F8[msg->language].anim;
            s->variant = gUnknown_080D67F8[msg->language].variant;
        } else if (msg->initArg0 == 1) {
            s->anim    = gUnknown_080D6798[msg->language].anim;
            s->variant = gUnknown_080D6798[msg->language].variant;
        }
        s->prevVariant = -1;
        s->x = (s16) ((s32) msg->qUnkC >> 8);
        s->y = (s16) ((s32) msg->qUnk10 >> 8);
        s->oamFlags = 0x40;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        UpdateSpriteAnimation(s);
    }
}


void sub_8089C48(MMChaoMessage *msg) {
    Sprite *s;
    s16 var_r0_3;
    s32 var_r0_2;
    s32 var_r7;
    u32 var_r0;
    u8 temp_r0;
    u8 temp_r0_2;
    u8 temp_r0_3;
    u8 var_r6;

    var_r6 = 0;
    var_r7 = 0;
    s = &msg->spr1C;
    for(var_r6 = 0; var_r6 < 4; var_r6++)
    {
        temp_r0 = msg->initArg0;
        if (temp_r0 == 0) {
            var_r7 = 0;
        } else if (temp_r0 == 1) {
            var_r7 = 1;
        }
        s->anim = gUnknown_080D6780[var_r7].anim;
        s->variant = gUnknown_080D6780[var_r7].variant;
        s->prevVariant = -1;
        s->x = (s16) ((s32) msg->qUnkC >> 8);
        s->y = (s16) ((s32) msg->qUnk10 >> 8);
        if (var_r6 == 0) {
            s->frameFlags &= 0xFFFFFBFF;
            s->frameFlags &= 0xFFFFF7FF;
        } else if(var_r6 == 1) {
            s->frameFlags |= 0x400;
            s->frameFlags &= 0xFFFFF7FF;
        } else if(var_r6 == 2) {
            s->frameFlags &= 0xFFFFFBFF;
            s->frameFlags |= 0x800;
        } else if(var_r6 == 3) {
            s->frameFlags |= 0x400;
            s->frameFlags |= 0x800;
        }
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }

    s = &msg->spr6C;
    temp_r0_2 = msg->initArg0;
    if (temp_r0_2 == 0) {
        s->x = ((s32) msg->qUnkC >> 8) - 0x41;
        var_r0_3 = ((s32) msg->qUnk10 >> 8) + 0xC;
        s->y = var_r0_3;
    } else if (temp_r0_2 == 1) {
        s->x = ((s32) msg->qUnkC >> 8) - 0x2D;
        var_r0_3 = ((s32) msg->qUnk10 >> 8) + 8;
        s->y = var_r0_3;
    }
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
    s = &msg->spr44;
    if (msg->initArg0 == 0) {
        if (*msg->initArg1 == 0) {
            s->anim = gUnknown_080D67F8[msg->language].anim;
            s->variant = gUnknown_080D67F8[msg->language].variant;
        } else {
            s->anim = gUnknown_080D6828[msg->language].anim;
            s->variant = gUnknown_080D6828[msg->language].variant;
        }
    } else if (msg->initArg0 == 1) {
        if (*msg->initArg1 == 0) {
            s->anim = gUnknown_080D6798[msg->language].anim;
            s->variant = gUnknown_080D6798[msg->language].variant;
        } else {
            s->anim = gUnknown_080D67C8[msg->language].anim;
            s->variant = gUnknown_080D67C8[msg->language].variant;
        }
    }
    s->prevVariant = -1;
    s->x = (s16) ((s32) msg->qUnkC >> 8);
    s->y = (s16) ((s32) msg->qUnk10 >> 8);
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

u8 sub_8089DA0(MainMenu *menu){
    s32 *sp0[4];
    u8 i;
    u8 result;

    result = 0;
    sp0[0] = &menu->unk18[0].x;
    sp0[1] = &menu->unk18[1].x;
    sp0[2] = &menu->unk18[2].x;
    sp0[3] = &menu->unk18[3].x;
    for(i = 0; i < 4; i++)
    {
        if (*sp0[i] <= 0xAA00) {
            *sp0[i] = 0xAA00;
            result += 1;
        } else {
            *sp0[i] -= (menu->unk7[i] << 8);
        }
    }

    return result;
}

u8 sub_8089DF4(MainMenu *menu) {
    s32 *sp0[4];
    u8 i;
    u8 result;

    result = 0;
    sp0[0] = &menu->unk18[0].x;
    sp0[1] = &menu->unk18[1].x;
    sp0[2] = &menu->unk18[2].x;
    sp0[3] = &menu->unk18[3].x;
    for(i = 0; i < 4; i++)
    {
        if (*sp0[i] >= 0x12C00) {
            *sp0[i] = 0x12C00;
            result += 1;
        } else {
            *sp0[i] += (menu->unk7[i] << 9);
        }
    }

    return result;
}

u8 sub_8089E50(MainMenu *menu) {
    s32 *sp0[2];
    u8 i;
    u8 result;

    result = 0;
    sp0[0] = &menu->unk38[0].x;
    sp0[1] = &menu->unk38[1].x;
    for(i = 0; i < 2; i++)
    {
        if (*sp0[i] <= 0xAA00) {
            *sp0[i] = 0xAA00;
            result += 1;
        } else {
            *sp0[i] -= (menu->unk7[i] << 8);
        }
    }

    return result;
}

u8 sub_8089EA0(MainMenu *menu) {
    s32 *sp0[2];
    u8 i;
    u8 result;

    result = 0;
    sp0[0] = &menu->unk38[0].x;
    sp0[1] = &menu->unk38[1].x;
    for(i = 0; i < 2; i++)
    {
        if (*sp0[i] >= 0x12C00) {
            *sp0[i] = 0x12C00;
            result += 1;
        } else {
            *sp0[i] += (menu->unk7[i] << 9);
        }
    }

    return result;
}

void sub_8089EF8(MainMenu *menu) {
    menu->unk50 = 0;
    menu->unk54 = (s32) (menu->unk54 + 0x100);
}

void sub_8089F08(MainMenu *menu) {
    sa2__sub_8003EE4((u16) ((u16) menu->unk72 >> 6), menu->unk74, menu->unk74, 0x40, 0x40, 0x48, 0x50, gBgAffineRegs);
}

void sub_8089F40(MainMenu *menu) {
    gBgScrollRegs[1][0] = (s16) ((s32) menu->unk50 >> 8);
    gBgScrollRegs[1][1] = (s16) ((s32) menu->unk54 >> 8);
}

void Task_3F0_MainMenuInit(void) {
    MainMenu *menu = TASK_DATA(gCurTask);
    sub_8087A48(menu);
    if ((u32) (u8) (menu->initArg1 - 2) <= 1U) {
        sub_80877F4(menu);
    } else {
        sub_8087590(menu);
    }
    sub_8087498(menu);
    if ((u32) (u8) (menu->initArg1 - 2) <= 1U) {
        m4aMPlayAllStop();
        m4aSongNumStart(0x48U);
    } else {
        m4aMPlayAllStop();
        m4aSongNumStart(2U);
    }
    gCurTask->main = gUnknown_080D6758[menu->initArg1];
}

void Task_3F0_8089FCC(void) {
    MainMenu *menu = TASK_DATA(gCurTask);
    sub_8089028(menu);
    sub_80890F8(menu);
    sub_8088FD4(menu);
    sub_8089EF8(menu);
    sub_8089150(menu);
    sub_80891E4(menu);
    sub_8089398(menu);
    sub_80894BC(menu);
    sub_8089308(menu);
    sub_8089428(menu);
    sub_8089F40(menu);
    sub_8089F08(menu);
    sub_8089704(menu);
    sub_808927C(menu);
    if ((sub_8089DA0(menu) == 4) && (sub_8089028(menu) != 0)) {
        menu->unk2 = 1;
        gCurTask->main = Task_3F0_808819C;
    }
}

void Task_3F0_808A060(void) {
    MainMenu *menu = TASK_DATA(gCurTask);
    sub_80890F8(menu);
    sub_8088FD4(menu);
    sub_8089EF8(menu);
    sub_8089398(menu);
    sub_80894BC(menu);
    sub_8089308(menu);
    sub_8089428(menu);
    sub_8089F40(menu);
    sub_8089F08(menu);
    sub_8089704(menu);
    sub_808927C(menu);
    if (sub_8089DA0(menu) == 4) {
        menu->unk2 = 1;
        gCurTask->main = Task_3F0_808819C;
    }
}

void Task_3F0_808A0D8(void) {
    MainMenu *menu = TASK_DATA(gCurTask);
    sub_80890F8(menu);
    sub_8088FD4(menu);
    sub_8089EF8(menu);
    sub_8089150(menu);
    sub_80891E4(menu);
    sub_80895E0(menu);
    sub_8089550(menu);
    sub_8089F40(menu);
    sub_8089F08(menu);
    sub_8089704(menu);

    if (sub_8089E50(menu) == 2) {
        gCurTask->main = Task_3F0_80889CC;
    }
}

void Task_3F0_808A144(void) {
    MainMenu *menu = TASK_DATA(gCurTask);
    sub_8088FD4(menu);
    sub_8089EF8(menu);
    sub_8089150(menu);
    sub_80891E4(menu);
    sub_80895E0(menu);
    sub_8089550(menu);
    sub_8089F40(menu);
    sub_8089F08(menu);
    sub_8089704(menu);

    if (sub_8089EA0(menu) == 2) {
        gCurTask->main = Task_3F0_8087C74;
    }
}

void TaskDestructor_MainMenu(Task *arg0) {

}

void sub_808A1B0(u8 arg0, void *arg1, u8 *vram, s16 arg3, s16 arg4)
{
    MMChaoMessage *msg = TASK_DATA(TaskCreate(Task_94_808A22C, sizeof(MMChaoMessage), 0x100U, 0U, TaskDestructor_MainMenu));
    msg->language = LOADED_SAVE->language;
    msg->initArg1 = arg1;
    msg->initArg0 = arg0;
    msg->qUnkC = Q(arg3 & 0xFFFF);
    msg->qUnk10 = Q(arg4 & 0xFFFF);
    msg->unk14 = 0;
    msg->unk18 = 0;
    sub_8089B38(msg, vram);
}

void Task_94_808A22C(void) {
    MMChaoMessage *msg = TASK_DATA(gCurTask);
    sub_8089C48(msg);
    if (*msg->initArg1 == 0xB) {
        TaskDestroy(gCurTask);
    }
}

void sub_808A258(void) {

}
#endif
