#include "global.h"
#include "core.h"
#include "flags.h"
#include "lib/m4a/m4a.h"
#include "game/save.h"

typedef struct {
    u8 unk0;
    u8 *initArg3;
    u8 unk8;
    u8 unk9;
    s16 highlitButton;
    s16 *initArg2;
    u8 filler10[0x4];
    Vec2_32 unk14[NUM_LANGUAGES];
    Vec2_32 unk44;
    Vec2_32 unk4C;
    Vec2_u16 unk54;
    Vec2_32 unk58;
    u8 *vram60;
    Sprite buttonsLang[NUM_LANGUAGES];
    Sprite spr154;
    Sprite spr17C;
    Sprite spr1A4;
    Background bg1CC;
    Background bg20C;
} OptionsLanguage; /* 0x24C */

void Options_Language(s16 highlitButton, u8 *vramBase, s16 *arg2, u8 *arg3);
void Task_Options_Language_Init(void);
void sub_808FDCC(OptionsLanguage *lang);
void sub_808FCF4(OptionsLanguage *lang);
void sub_809014C(OptionsLanguage *lang);
void sub_80901D4(OptionsLanguage *lang);
void sub_8090244(OptionsLanguage *lang);
void sub_8090290(OptionsLanguage *lang);
void TaskDestructor_Options_Language(struct Task *t);

extern const ColorRaw gOptionsBgPalette[256];

extern const TileInfo2 gUnknown_080D701C;
extern const TileInfo2 gUnknown_080D7024[6];
extern const TileInfo2 gUnknown_080D70BC[2];
extern const TileInfo2 gUnknown_080D70CC[6];
extern const TileInfo2 gUnknown_080D70FC[7];

void sub_809014C(OptionsLanguage *lang);
void sub_8090244(OptionsLanguage *lang);
void sub_80901D4(OptionsLanguage *lang);
void sub_8090290(OptionsLanguage *lang);

void Options_Language(s16 highlitButton, u8 *vramBase, s16 *arg2, u8 *arg3)
{
    u8 i;
    OptionsLanguage *lang;
    struct Task *t = TaskCreate(Task_Options_Language_Init, sizeof(OptionsLanguage), 0x100U, 0U, TaskDestructor_Options_Language);

    if (arg2 == NULL) {
        gBgScrollRegs[1][0] = 0;
        gBgScrollRegs[1][1] = -10;
    }

    lang = TASK_DATA(t);
    lang->initArg3 = arg3;
    lang->highlitButton = highlitButton;
    lang->initArg2 = arg2;
    lang->unk8 = 0;

    for (i = 0; i < ARRAY_COUNT(lang->unk14); i++) {
        lang->unk14[i].x = 40 - gBgScrollRegs[1][0];
        lang->unk14[i].y = 38 - gBgScrollRegs[1][1];
    }

    lang->unk44.x = -gBgScrollRegs[1][0];
    lang->unk44.y = -gBgScrollRegs[1][1];
    lang->unk54.x = -gBgScrollRegs[1][0] + 100;
    lang->unk54.y = -gBgScrollRegs[1][1];
    lang->unk4C.x = -gBgScrollRegs[1][0];
    lang->unk4C.y = -gBgScrollRegs[1][1];
    lang->vram60 = vramBase;
    lang->unk0 = LOADED_SAVE->language;
    *lang->initArg2 = LOADED_SAVE->language;
    lang->highlitButton = LOADED_SAVE->language;

    sub_808FDCC(lang);

    if (arg2 == NULL) {
        sub_808FCF4(lang);
        CpuFastCopy(gOptionsBgPalette, gObjPalette, sizeof(gOptionsBgPalette));
        gFlags |= FLAGS_UPDATE_SPRITE_PALETTES;
    }
}

void sub_808FCF4(OptionsLanguage *lang)
{
    gDispCnt = DISPCNT_OBJ_ON | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_OBJ_1D_MAP | DISPCNT_MODE_1;

    gBgCntRegs[0] = BGCNT_SCREENBASE(6) | BGCNT_CHARBASE(0) | BGCNT_PRIORITY(3) | BGCNT_16COLOR | BGCNT_TXT256x256;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;

    {
        Background *bg = &lang->bg20C;
        bg->graphics.dest = (void *)BG_VRAM;
        bg->graphics.anim = 0;
        bg->layoutVram = (u16 *)BG_SCREEN_ADDR(6);
        bg->unk18 = 0;
        bg->unk1A = 0;
        bg->tilemapId = 349;
        bg->unk1E = 0;
        bg->unk20 = 0;
        bg->unk22 = 0;
        bg->unk24 = 0;
        bg->targetTilesX = 256 / TILE_WIDTH;
        bg->targetTilesY = 256 / TILE_WIDTH;
        bg->paletteOffset = 0;
        bg->flags = 0;
        DrawBackground(bg);
    }

    gBgCntRegs[1] = BGCNT_SCREENBASE(30) | BGCNT_CHARBASE(1) | BGCNT_PRIORITY(2) | BGCNT_16COLOR | BGCNT_TXT256x256 | BGCNT_TXT512x256;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = -10;

    {
        Background *bg;
        bg = &lang->bg1CC;
        bg->graphics.dest = (void *)(BG_VRAM + 0x4000);
        bg->graphics.anim = 0;
        bg->layoutVram = (u16 *)BG_SCREEN_ADDR(30);
        bg->unk18 = 0;
        bg->unk1A = 0;
        bg->tilemapId = 350;
        bg->unk1E = 0;
        bg->unk20 = 0;
        bg->unk22 = 0;
        bg->unk24 = 0;
        bg->targetTilesX = DISPLAY_WIDTH / TILE_WIDTH;
        bg->targetTilesY = DISPLAY_HEIGHT / TILE_WIDTH;
        bg->paletteOffset = 0;
        bg->flags = 1;
        DrawBackground(bg);
    }
}

void sub_808FDCC(OptionsLanguage *lang)
{
    u8 i;
    Sprite *s = &lang->spr1A4;
    s->tiles = lang->vram60;
    lang->vram60 += 0x640;
    s->anim = gUnknown_080D70FC[lang->unk0].anim;
    s->variant = gUnknown_080D70FC[lang->unk0].variant;
    s->prevVariant = -1;
    s->x = I(lang->unk54.x);
    s->y = I(lang->unk54.y);
    s->oamFlags = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    s->hitboxes[0].index = -1;
    UpdateSpriteAnimation(s);

    for (i = 0; i < 6; i++) {
        Sprite *s = &lang->buttonsLang[i];
        s->tiles = lang->vram60;
        lang->vram60 += gUnknown_080D70CC[i].numTiles * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D70CC[i].anim;
        s->variant = gUnknown_080D70CC[i].variant;
        s->prevVariant = -1;
        s->x = I(lang->unk14[i].x);
        s->y = I(lang->unk14[i].y);
        s->oamFlags = SPRITE_OAM_ORDER(1);
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        s->hitboxes[0].index = -1;
        UpdateSpriteAnimation(s);
    }

    {
        Sprite *s = &lang->spr154;
        u16 index = (lang->unk0) ? 1 : 0;
        s->tiles = lang->vram60;
        if (lang->initArg2 == NULL) {
            lang->vram60 += 42 * TILE_SIZE_4BPP;
            s->anim = gUnknown_080D70BC[index].anim;
            s->variant = gUnknown_080D70BC[index].variant;
        } else {
            lang->vram60 += 45 * TILE_SIZE_4BPP;
            s->anim = gUnknown_080D7024[lang->unk0].anim;
            s->variant = gUnknown_080D7024[lang->unk0].variant;
        }
        s->prevVariant = -1;
        s->x = I(lang->unk44.x);
        s->y = I(lang->unk44.y);
        s->oamFlags = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        s->hitboxes[0].index = -1;
        UpdateSpriteAnimation(s);
    }

    {
        Sprite *s = &lang->spr17C;
        s->tiles = lang->vram60;
        lang->vram60 += gUnknown_080D701C.numTiles * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D701C.anim;
        s->variant = gUnknown_080D701C.variant;
        s->prevVariant = -1;
        s->x = lang->unk14[lang->highlitButton].x - 1;
        s->y = lang->unk14[lang->highlitButton].y + ((u16)lang->highlitButton * 0x10) + 1;
        s->oamFlags = 0;
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        s->hitboxes[0].index = -1;
        UpdateSpriteAnimation(s);
    }

    gDispCnt |= DISPCNT_WIN0_ON;

    gWinRegs[0] = WIN_RANGE(0, DISPLAY_WIDTH);
    gWinRegs[2] = WIN_RANGE(0, DISPLAY_HEIGHT);
    gWinRegs[4] |= 0x3F;
    gWinRegs[5] |= 0x1F;
    gBldRegs.bldCnt = 0x3FFF;
    gBldRegs.bldY = 0;
}

void sub_8090314(OptionsLanguage *lang);
extern void CreateNameEntryScreen(u8);

void Task_Options_Language_Init(void)
{
    OptionsLanguage *lang = TASK_DATA(gCurTask);
    s16 *temp_r1;
    s16 *temp_r5;
    s16 var_r0;
    s32 temp_r1_2;
    u16 temp_r2;

    sub_8090314(lang);

    if ((gBgScrollRegs[1][0] == 0) && (9 & gPressedKeys)) {
        m4aSongNumStart(0x6AU);

        if (lang->initArg2 == NULL) {
            gLoadedSaveGame.language = (u8)(u16)lang->highlitButton;
            CreateNameEntryScreen(0);
            TaskDestroy(gCurTask);
            lang->unk8 = 1;
            *lang->initArg3 = 0;
            return;
        }
    }

    if ((gBgScrollRegs[1][0] <= -200) && (lang->unk4C.x <= -gBgScrollRegs[1][0])) {
        *lang->initArg3 = 0;
        TaskDestroy(gCurTask);
        return;
    }

    lang->unk4C.x = 0 - gBgScrollRegs[1][0];
    if ((gBgScrollRegs[1][0] == 0) && (*lang->initArg3 != 0) && (0xC0 & gRepeatedKeys)) {
        m4aSongNumStart(0x6CU);
        if (0x40 & gRepeatedKeys) {
            if (lang->highlitButton == 0) {
                lang->highlitButton = 5;
            } else {
                lang->highlitButton -= 1;
            }
        } else if (0x80 & gRepeatedKeys) {
            if (lang->highlitButton == 5) {
                lang->highlitButton = 0;
            } else {
                lang->highlitButton += 1;
            }
        }
        if (lang->initArg2 != NULL) {
            *lang->initArg2 = (s16)(u16)lang->highlitButton;
        }
    }

    if (lang->initArg2 == NULL) {
        lang->unk58.x += 0x180;
        lang->unk58.y -= 0x180;
        gBgScrollRegs[0][0] = I(lang->unk58.x);
        gBgScrollRegs[0][1] = I(lang->unk58.y);
    }
    sub_809014C(lang);
    sub_8090244(lang);
    sub_80901D4(lang);
    sub_8090290(lang);
}

void sub_809014C(OptionsLanguage *lang)
{
    Sprite *s;
    s32 temp_r2;
    u8 var_r0;
    u8 var_r5;
    u8 var_r7;
    void *temp_r1;

    if (lang->initArg2 == NULL) {
        var_r7 = lang->highlitButton;
    } else {
        var_r7 = *lang->initArg2;
    }

    for (var_r5 = 0; var_r5 < 6; var_r5++) {
        s = &lang->buttonsLang[var_r5];
        s->anim = gUnknown_080D70CC[var_r5].anim;
        s->variant = gUnknown_080D70CC[var_r5].variant;
        s->x = lang->unk14[var_r5].x;
        s->y = lang->unk14[var_r5].y + var_r5 * 0x10;
        if (var_r5 != var_r7) {
            s->palId = 1;
        } else {
            s->palId = 0;
        }
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void sub_80901D4(OptionsLanguage *lang)
{
    Sprite *s;
    u16 *var_r0;
    u8 var_r1;
    u8 index;

    if (lang->initArg2 == NULL) {
        var_r1 = lang->highlitButton;
    } else {
        var_r1 = *lang->initArg2;
    }
    index = var_r1 ? 1 : 0;
    s = &lang->spr154;
    if (lang->initArg2 == NULL) {
        s->anim = gUnknown_080D70BC[index].anim;
        s->variant = gUnknown_080D70BC[index].variant;
    } else {
        s->anim = gUnknown_080D7024[*lang->initArg2].anim;
        s->variant = gUnknown_080D7024[*lang->initArg2].variant;
    }
    s->x = lang->unk44.x;
    s->y = lang->unk44.y;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void sub_8090244(OptionsLanguage *lang)
{
    Sprite *s;
    u8 var_r0;
    s16 *temp_r0 = lang->initArg2;

    if (temp_r0 == NULL) {
        var_r0 = lang->highlitButton;
    } else {
        var_r0 = *temp_r0;
    }

    s = &lang->spr1A4;
    s->anim = gUnknown_080D70FC[var_r0].anim;
    s->variant = gUnknown_080D70FC[var_r0].variant;
    s->x = (s16)lang->unk54.x;
    s->y = (s16)lang->unk54.y;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void sub_8090290(OptionsLanguage *lang)
{
    Sprite *s;
    if (lang->initArg2 != NULL) {
        s = &lang->spr17C;
        s->x = lang->unk14[*lang->initArg2].x - 1;
        s->y = lang->unk14[*lang->initArg2].y + ((u16)*lang->initArg2 * 0x10) + 1;
        DisplaySprite(&lang->spr17C);
        return;
    } else {
        s = &lang->spr17C;
        s->x = lang->unk14[lang->highlitButton].x - 1;
        s->y = lang->unk14[lang->highlitButton].y + ((u16)lang->highlitButton * 0x10) + 1;
        DisplaySprite(s);
    }
}

void TaskDestructor_Options_Language(Task *t) { }

void sub_8090314(OptionsLanguage *lang)
{
    s32 temp_r1;
    u8 var_r2;

    for (var_r2 = 0; var_r2 < 6; var_r2++) {
        lang->unk14[var_r2].x = 0x28 - gBgScrollRegs[1][0];
        lang->unk14[var_r2].y = 0x26 - gBgScrollRegs[1][1];
    }

    lang->unk44.x = 120 - gBgScrollRegs[1][0];
    lang->unk44.y = 140 - gBgScrollRegs[1][1];
    lang->unk54.x = 120 - gBgScrollRegs[1][0];
    lang->unk54.y = 26 - gBgScrollRegs[1][1];
}
