#include "global.h"
#include "core.h"
#include "lib/m4a/m4a.h"
#include "game/save.h"

typedef struct {
    /* 0x00 */ u8 unk0;
    /* 0x00 */ u8 unk1;
    /* 0x04 */ u8 *initArg3;
    /* 0x08 */ s16 highlitButton;
    /* 0x0C */ s16 *unkC;
    /* 0x10 */ u8 filler10[2];
    /* 0x12 */ u16 unk12;
    /* 0x14 */ u16 unk14;
    /* 0x18 */ Vec2_32 unk18[2];
    /* 0x28 */ Vec2_32 posControls;
    /* 0x30 */ Vec2_32 unk30;
    /* 0x38 */ Vec2_32 unk38;
    /* 0x40 */ Vec2_u16 unk40;
    /* 0x44 */ Vec2_u16 unk44;
    /* 0x48 */ u8 *vram48; // <- param1 on creation
    /* 0x4C */ Sprite buttons[2];
    /* 0x9C */ Sprite controls;
    /* 0xC4 */ Sprite outline;
    /* 0xEC */ Sprite headline;
    /* 0x114 */ Sprite spr114;
} OptionsDeleteSave; /* 0x13C */

static void Task_Options_DeleteSaveData(void);
static void InitSprites(OptionsDeleteSave *ds);
static void TaskDestructor_Options_DeleteSaveData(struct Task *t);

static void UpdateUiPositions(OptionsDeleteSave *ds);
static void RenderButtons(OptionsDeleteSave *ds);
static void RenderHeadline(OptionsDeleteSave *ds);
static void RenderControls(OptionsDeleteSave *ds);
static void RenderButtonsOutline(OptionsDeleteSave *ds);
static void RenderAreYouSureHeadline(OptionsDeleteSave *ds);

extern const TileInfo2 gUnknown_080D7134[12];
extern const TileInfo2 gUnknown_080D7024[6];
extern const TileInfo2 gUnknown_080D7194[6];
extern const TileInfo2 gUnknown_080D71C4[6];
extern const TileInfo2 gUnknown_080D71F4;
extern const TileInfo2 gUnknown_080D722C;

void Options_DeleteSaveData(s16 highlitButton, u8 *vramBase, s16 *arg2, u8 *arg3);

void Options_DeleteSaveData(s16 highlitButton, u8 *vramBase, s16 *arg2, u8 *arg3)
{
    u8 *sp4;
    s32 temp_r1;
    u8 i;
    Task *t = TaskCreate(Task_Options_DeleteSaveData, sizeof(OptionsDeleteSave), 0x100U, 0U, TaskDestructor_Options_DeleteSaveData);
    OptionsDeleteSave *ds = TASK_DATA(t);

    ds->initArg3 = arg3;
    ds->highlitButton = highlitButton;
    ds->unkC = arg2;
    ds->unk1 = 0;
    ds->unk14 = 0;
    ds->unk12 = 0;

    for (i = 0; i < ARRAY_COUNT(ds->unk18); i++) {
        ds->unk18[i].x = 55 - gBgScrollRegs[1][0];
        ds->unk18[i].y = 70 - gBgScrollRegs[1][1];
    }

    ds->posControls.x = -gBgScrollRegs[1][0];
    ds->posControls.y = -gBgScrollRegs[1][1];
    ds->unk40.x = -gBgScrollRegs[1][0] + 100;
    ds->unk40.y = -gBgScrollRegs[1][1];
    ds->unk44.x = -gBgScrollRegs[1][0] + 100;
    ds->unk44.y = -gBgScrollRegs[1][1];
    ds->unk30.x = -gBgScrollRegs[1][0];
    ds->unk30.y = -gBgScrollRegs[1][1];
    ds->vram48 = vramBase;
    ds->unk0 = LOADED_SAVE->language;

    InitSprites(ds);
}

static void InitSprites(OptionsDeleteSave *ds)
{
    u8 i;

    {
        Sprite *s = &ds->headline;
        s->tiles = ds->vram48;
        ds->vram48 += gUnknown_080D7194[ds->unk0].numTiles * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D7194[ds->unk0].anim;
        s->variant = gUnknown_080D7194[ds->unk0].variant;
        s->prevVariant = -1;
        s->x = I(ds->unk40.x);
        s->y = I(ds->unk40.y);
        s->oamFlags = SPRITE_OAM_ORDER(0);
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        s->hitboxes[0].index = -1;
        UpdateSpriteAnimation(s);
    }

    {
        Sprite *s = &ds->spr114;
        s->tiles = ds->vram48;
        ds->vram48 += gUnknown_080D71C4[ds->unk0].numTiles * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D71C4[ds->unk0].anim;
        s->variant = gUnknown_080D71C4[ds->unk0].variant;
        s->prevVariant = -1;
        s->x = I(ds->unk44.x);
        s->y = I(ds->unk44.y);
        s->oamFlags = SPRITE_OAM_ORDER(0);
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        s->hitboxes[0].index = -1;
        UpdateSpriteAnimation(s);
    }
    for (i = 0; i < ARRAY_COUNT(ds->buttons); i++) {
        Sprite *s = &ds->buttons[i];
        s->tiles = ds->vram48;
        ds->vram48 += gUnknown_080D7134[i + ds->unk0 * 2].numTiles * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D7134[i + ds->unk0 * 2].anim;
        s->variant = gUnknown_080D7134[i + ds->unk0 * 2].variant;
        s->prevVariant = 0xFF;
        s->x = I(ds->unk18[i].x);
        s->y = I(ds->unk18[i].y);
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
        Sprite *s = &ds->controls;
        s->tiles = ds->vram48;
        ds->vram48 += gUnknown_080D7024[ds->unk0].numTiles * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D7024[ds->unk0].anim;
        s->variant = gUnknown_080D7024[ds->unk0].variant;
        s->prevVariant = -1;
        s->x = I(ds->posControls.x);
        s->y = I(ds->posControls.y);
        s->oamFlags = SPRITE_OAM_ORDER(0);
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        s->hitboxes[0].index = -1;
        UpdateSpriteAnimation(s);
    }

    {
        Sprite *s = &ds->outline;
        s->tiles = ds->vram48;
        ds->vram48 += gUnknown_080D71F4.numTiles * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D71F4.anim;
        s->variant = gUnknown_080D71F4.variant;
        s->prevVariant = -1;
        s->x = I(ds->unk38.x);
        s->y = I(ds->unk38.y);
        s->oamFlags = SPRITE_OAM_ORDER(0);
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->animSpeed = 0x10;
        s->palId = 0;
        s->frameFlags = 0;
        s->hitboxes[0].index = -1;
        UpdateSpriteAnimation(s);
    }
}

void Task_Options_DeleteSaveData()
{
    OptionsDeleteSave *ds = TASK_DATA(gCurTask);

    UpdateUiPositions(ds);
    RenderButtons(ds);
    RenderControls(ds);
    RenderButtonsOutline(ds);

    if ((ds->unk1 != 0) || (RenderHeadline(ds), (ds->unk1 != 0))) {
        RenderAreYouSureHeadline(ds);
    }

    if ((gBgScrollRegs[1][0] <= -200) && (ds->unk30.x <= -gBgScrollRegs[1][0])) {
        *ds->initArg3 = 0;
        TaskDestroy(gCurTask);
        return;
    }
    ds->unk30.x = 0 - gBgScrollRegs[1][0];
    if (gBldRegs.bldY == 16) {
        if (ds->unk1 == 2) {
            ds->unk1 = 0;
            return;
        }
    } else if (gBldRegs.bldY == 0) {
        if (gBgScrollRegs[1][0] == 0) {
            if (A_BUTTON & gPressedKeys) {
                m4aSongNumStart(SE_SELECT);

                if (ds->unk1 == 0) {
                    switch (*ds->unkC) {
                        case 0:
                            ds->unk1 = 1;
                            break;
                        case 1:
                            ds->unk1 = 0;
                            break;
                    }
                    *ds->unkC = 1;
                } else if (ds->unk1 == 1) {
                    switch (*ds->unkC) {
                        case 0:
                            ds->unk1 = 2;
                            break;
                        case 1:
                            ds->unk1 = 0;
                            break;
                    }
                }
            }
            if ((gBgScrollRegs[1][0] == 0) && (DPAD_SIDEWAYS & gRepeatedKeys)) {
                m4aSongNumStart(SE_DPAD_SELECT);

                if (DPAD_RIGHT & gRepeatedKeys) {
                    if (*ds->unkC == 0) {
                        *ds->unkC = 1;
                    } else {
                        *ds->unkC -= 1;
                    }
                } else if (DPAD_LEFT & gRepeatedKeys) {
                    if (*ds->unkC == 1) {
                        *ds->unkC = 0;
                        return;
                    }

                    *ds->unkC += 1;
                }
            }
        }
    }
}

static void UpdateUiPositions(OptionsDeleteSave *ds)
{
    u8 i;

    for (i = 0; i < ARRAY_COUNT(ds->unk18); i++) {
        ds->unk18[i].x = 55 - gBgScrollRegs[1][0];
        ds->unk18[i].y = 70 - gBgScrollRegs[1][1];
    }

    ds->posControls.x = 120 - gBgScrollRegs[1][0];
    ds->posControls.y = 135 - gBgScrollRegs[1][1];
    ds->unk40.x = 120 - gBgScrollRegs[1][0];
    ds->unk40.y = 30 - gBgScrollRegs[1][1];
    ds->unk44.x = 120 - gBgScrollRegs[1][0];
    ds->unk44.y = 50 - gBgScrollRegs[1][1];
}

static void RenderButtons(OptionsDeleteSave *ds)
{
    Sprite *s;
    u8 i;

    for (i = 0; i < ARRAY_COUNT(ds->buttons); i++) {
        s = &ds->buttons[i];
        s->anim = gUnknown_080D7134[i + (ds->unk0 * 2)].anim;
        s->variant = gUnknown_080D7134[i + (ds->unk0 * 2)].variant;
        s->x = ds->unk18[i].x + (i * 64);
        s->y = ds->unk18[i].y;

        if (i != *ds->unkC) {
            s->palId = 1;
        } else {
            s->palId = 0;
        }

        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

static void RenderHeadline(OptionsDeleteSave *ds)
{
    Sprite *s = &ds->headline;
    s->anim = gUnknown_080D7194[ds->unk0].anim;
    s->variant = gUnknown_080D7194[ds->unk0].variant;
    s->x = ds->unk40.x;
    s->y = ds->unk40.y;
    DisplaySprite(s);
}

static void RenderControls(OptionsDeleteSave *ds)
{
    Sprite *s = &ds->controls;
    s->anim = gUnknown_080D7024[ds->unk0].anim;
    s->variant = gUnknown_080D7024[ds->unk0].variant;
    s->x = ds->posControls.x;
    s->y = ds->posControls.y;
    DisplaySprite(s);
}

static void RenderButtonsOutline(OptionsDeleteSave *ds)
{
    Sprite *s = &ds->outline;
    s->x = ds->unk18[*ds->unkC].x + (*ds->unkC << 6) - 3;
    s->y = ds->unk18[*ds->unkC].y;
    DisplaySprite(s);
}

extern const TileInfo2 gUnknown_080D71C4[6];

static void RenderAreYouSureHeadline(OptionsDeleteSave *ds)
{
    Sprite *s = &ds->spr114;
    s->anim = gUnknown_080D71C4[ds->unk0].anim;
    s->variant = gUnknown_080D71C4[ds->unk0].variant;
    s->x = ds->unk40.x;
    s->y = ds->unk40.y;
    DisplaySprite(s);
}

static void TaskDestructor_Options_DeleteSaveData(Task *t) { }
