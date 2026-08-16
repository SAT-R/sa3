#include "global.h"
#include "core.h"
#include "game/save.h"

/* NOTE: Module basically identical to options_difficulty */

typedef struct {
    /* 0x00 */ u8 unk0;
    /* 0x04 */ u8 *initArg3;
    /* 0x08 */ s16 timeUpValue;
    /* 0x0C */ Vec2_32 unkC[2];
    /* 0x1C */ Vec2_32 posControls;
    /* 0x24 */ Vec2_32 unk24;
    /* 0x2C */ Vec2_32 unk2C;
    /* 0x38 */ u16 unk34;
    /* 0x38 */ u16 unk36;
    /* 0x38 */ u8 *vram38; // <- param1 on creation
    /* 0x3C */ Sprite buttons[2];
    /* 0x8C */ Sprite controls;
    /* 0xB4 */ Sprite outline;
    /* 0xDC */ Sprite headline;
} OptionsTimeUp; /* 0x104 */

static void Task_Options_TimeUp(void);
static void InitSprites(OptionsTimeUp *timeUp);
static void TaskDestructor_Options_TimeUp(struct Task *t);

static void UpdateUiPositions(OptionsTimeUp *timeUp);
static void RenderButtons(OptionsTimeUp *timeUp);
static void RenderHeadline(OptionsTimeUp *timeUp);
static void RenderControls(OptionsTimeUp *timeUp);
static void RenderButtonsOutline(OptionsTimeUp *timeUp);

extern const TileInfo2 gUnknown_080D6B48[12];
extern const TileInfo2 gUnknown_080D7024[6];
extern const TileInfo2 gUnknown_080D71FC[6];
extern const TileInfo2 gUnknown_080D722C[1];

void Options_TimeUp(s16 timeUpValue, u8 *vramBase, s32 unused, u8 *arg3);

void Options_TimeUp(s16 timeUpValue, u8 *vramBase, s32 unused, u8 *arg3)
{
    u8 *sp4;
    s32 temp_r1;
    u8 i;
    Task *t = TaskCreate(Task_Options_TimeUp, sizeof(OptionsTimeUp), 0x100U, 0U, TaskDestructor_Options_TimeUp);
    OptionsTimeUp *timeUp = TASK_DATA(t);

    timeUp->timeUpValue = timeUpValue;
    timeUp->initArg3 = arg3;

    for (i = 0; i < ARRAY_COUNT(timeUp->unkC); i++) {
        timeUp->unkC[i].x = 55 - gBgScrollRegs[1][0];
        timeUp->unkC[i].y = 70 - gBgScrollRegs[1][1];
    }

    timeUp->posControls.x = -gBgScrollRegs[1][0];
    timeUp->posControls.y = -gBgScrollRegs[1][1];
    timeUp->unk34 = -gBgScrollRegs[1][0] + 100;
    timeUp->unk36 = -gBgScrollRegs[1][1];
    timeUp->unk24.x = -gBgScrollRegs[1][0];
    timeUp->unk24.y = -gBgScrollRegs[1][1];
    timeUp->vram38 = vramBase;
    timeUp->unk0 = LOADED_SAVE->language;

    InitSprites(timeUp);
}

static void InitSprites(OptionsTimeUp *timeUp)
{
    u8 i;
    Sprite *s = &timeUp->headline;

    s->tiles = timeUp->vram38;
    timeUp->vram38 += gUnknown_080D71FC[timeUp->unk0].numTiles * TILE_SIZE_4BPP;
    s->anim = gUnknown_080D71FC[timeUp->unk0].anim;
    s->variant = gUnknown_080D71FC[timeUp->unk0].variant;
    s->prevVariant = -1;
    s->x = I(timeUp->unk34);
    s->y = I(timeUp->unk36);
    s->oamFlags = SPRITE_OAM_ORDER(0);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    s->hitboxes[0].index = -1;
    UpdateSpriteAnimation(s);

    for (i = 0; i < ARRAY_COUNT(timeUp->buttons); i++) {
        Sprite *s = &timeUp->buttons[i];
        s->tiles = timeUp->vram38;
        timeUp->vram38 += gUnknown_080D6B48[i + timeUp->unk0 * 2].numTiles * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D6B48[i + timeUp->unk0 * 2].anim;
        s->variant = gUnknown_080D6B48[i + timeUp->unk0 * 2].variant;
        s->prevVariant = 0xFF;
        s->x = I(timeUp->unkC[i].x);
        s->y = I(timeUp->unkC[i].y);
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
        Sprite *s = &timeUp->controls;
        s->tiles = timeUp->vram38;
        timeUp->vram38 += gUnknown_080D7024[timeUp->unk0].numTiles * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D7024[timeUp->unk0].anim;
        s->variant = gUnknown_080D7024[timeUp->unk0].variant;
        s->prevVariant = -1;
        s->x = I(timeUp->posControls.x);
        s->y = I(timeUp->posControls.y);
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
        Sprite *s = &timeUp->outline;
        s->tiles = timeUp->vram38;
        timeUp->vram38 += gUnknown_080D722C[0].numTiles * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D722C[0].anim;
        s->variant = gUnknown_080D722C[0].variant;
        s->prevVariant = -1;
        s->x = I(timeUp->unk2C.x);
        s->y = I(timeUp->unk2C.y);
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

static void Task_Options_TimeUp(void)
{
    OptionsTimeUp *timeUp = TASK_DATA(gCurTask);

    UpdateUiPositions(timeUp);
    RenderButtons(timeUp);
    RenderHeadline(timeUp);
    RenderControls(timeUp);
    RenderButtonsOutline(timeUp);

    if ((gBgScrollRegs[1][0] == 0) && (A_BUTTON & gPressedKeys)) {
        switch (timeUp->timeUpValue) {
            case 0:
                LOADED_SAVE->disableTimeLimit = 0;
                break;

            case 1:
                LOADED_SAVE->disableTimeLimit = 1;
                break;
        }
    } else {
        if ((gBgScrollRegs[1][0] <= -200) && (timeUp->unk24.x <= -gBgScrollRegs[1][0])) {
            *timeUp->initArg3 = 0;
            TaskDestroy(gCurTask);
            return;
        }

        timeUp->unk24.x = -gBgScrollRegs[1][0];

        if ((gBgScrollRegs[1][0] == 0) && (DPAD_SIDEWAYS & gRepeatedKeys)) {
            if (DPAD_RIGHT & gRepeatedKeys) {
                if (timeUp->timeUpValue == 0) {
                    timeUp->timeUpValue = 1;
                } else {
                    timeUp->timeUpValue--;
                }
            } else if (DPAD_LEFT & gRepeatedKeys) {
                if (timeUp->timeUpValue == 1) {
                    timeUp->timeUpValue = 0;
                } else {
                    timeUp->timeUpValue++;
                }
            }
        }
    }
}

static void RenderButtons(OptionsTimeUp *timeUp)
{
    Sprite *s;
    u8 i;

    for (i = 0; i < ARRAY_COUNT(timeUp->buttons); i++) {
        s = &timeUp->buttons[i];
        s->anim = gUnknown_080D6B48[i + (timeUp->unk0 * 2)].anim;
        s->variant = gUnknown_080D6B48[i + (timeUp->unk0 * 2)].variant;
        s->x = timeUp->unkC[i].x + (i * 64);
        s->y = timeUp->unkC[i].y;

        if (i != timeUp->timeUpValue) {
            s->palId = 1;
        } else {
            s->palId = 0;
        }

        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

static void UpdateUiPositions(OptionsTimeUp *timeUp)
{
    u8 i;

    for (i = 0; i < ARRAY_COUNT(timeUp->unkC); i++) {
        timeUp->unkC[i].x = 55 - gBgScrollRegs[1][0];
        timeUp->unkC[i].y = 70 - gBgScrollRegs[1][1];
    }

    timeUp->posControls.x = 120 - gBgScrollRegs[1][0];
    timeUp->posControls.y = 135 - gBgScrollRegs[1][1];
    timeUp->unk34 = 120 - gBgScrollRegs[1][0];
    timeUp->unk36 = 30 - gBgScrollRegs[1][1];
}

static void RenderHeadline(OptionsTimeUp *timeUp)
{
    Sprite *s = &timeUp->headline;
    s->anim = gUnknown_080D71FC[timeUp->unk0].anim;
    s->variant = gUnknown_080D71FC[timeUp->unk0].variant;
    s->x = timeUp->unk34;
    s->y = timeUp->unk36;
    DisplaySprite(s);
}

static void RenderControls(OptionsTimeUp *timeUp)
{
    Sprite *s = &timeUp->controls;
    s->anim = gUnknown_080D7024[timeUp->unk0].anim;
    s->variant = gUnknown_080D7024[timeUp->unk0].variant;
    s->x = timeUp->posControls.x;
    s->y = timeUp->posControls.y;
    DisplaySprite(s);
}

static void RenderButtonsOutline(OptionsTimeUp *timeUp)
{
    Sprite *s = &timeUp->outline;
    s->x = timeUp->unkC[timeUp->timeUpValue].x + (timeUp->timeUpValue << 6) - 3;
    s->y = timeUp->unkC[timeUp->timeUpValue].y;
    DisplaySprite(s);
}

static void TaskDestructor_Options_TimeUp(Task *t) { }
