#include "global.h"
#include "core.h"
#include "game/save.h"

/* NOTE: Module basically identical to options_time_up */

typedef struct {
    /* 0x00 */ u8 unk0;
    /* 0x04 */ u8 *initArg3;
    /* 0x08 */ s16 difficultyValue;
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
} OptionsDifficulty; /* 0x104 */

static void Task_Options_Difficulty(void);
static void InitSprites(OptionsDifficulty *difficulty);
static void TaskDestructor_Options_Difficulty(struct Task *t);

static void UpdateUiPositions(OptionsDifficulty *difficulty);
static void RenderButtons(OptionsDifficulty *difficulty);
static void RenderHeadline(OptionsDifficulty *difficulty);
static void RenderControls(OptionsDifficulty *difficulty);
static void RenderButtonsOutline(OptionsDifficulty *difficulty);

extern const TileInfo2 gUnknown_080D6AE8[12];
extern const TileInfo2 gUnknown_080D7024[6];
extern const TileInfo2 gUnknown_080D7084[6];
extern const TileInfo2 gUnknown_080D70B4[1];

void Options_Difficulty(s16 difficultyValue, u8 *vramBase, s32 unused, u8 *arg3);

void Options_Difficulty(s16 difficultyValue, u8 *vramBase, s32 unused, u8 *arg3)
{
    u8 *sp4;
    s32 temp_r1;
    u8 i;
    Task *t = TaskCreate(Task_Options_Difficulty, sizeof(OptionsDifficulty), 0x100U, 0U, TaskDestructor_Options_Difficulty);
    OptionsDifficulty *difficulty = TASK_DATA(t);

    difficulty->difficultyValue = difficultyValue;
    difficulty->initArg3 = arg3;

    for (i = 0; i < ARRAY_COUNT(difficulty->unkC); i++) {
        difficulty->unkC[i].x = 55 - gBgScrollRegs[1][0];
        difficulty->unkC[i].y = 70 - gBgScrollRegs[1][1];
    }

    difficulty->posControls.x = -gBgScrollRegs[1][0];
    difficulty->posControls.y = -gBgScrollRegs[1][1];
    difficulty->unk34 = -gBgScrollRegs[1][0] + 100;
    difficulty->unk36 = -gBgScrollRegs[1][1];
    difficulty->unk24.x = -gBgScrollRegs[1][0];
    difficulty->unk24.y = -gBgScrollRegs[1][1];
    difficulty->vram38 = vramBase;
    difficulty->unk0 = LOADED_SAVE->language;

    InitSprites(difficulty);
}

static void InitSprites(OptionsDifficulty *difficulty)
{
    u8 i;
    Sprite *s = &difficulty->headline;

    s->tiles = difficulty->vram38;
    difficulty->vram38 += gUnknown_080D7084[difficulty->unk0].numTiles * TILE_SIZE_4BPP;
    s->anim = gUnknown_080D7084[difficulty->unk0].anim;
    s->variant = gUnknown_080D7084[difficulty->unk0].variant;
    s->prevVariant = -1;
    s->x = I(difficulty->unk34);
    s->y = I(difficulty->unk36);
    s->oamFlags = SPRITE_OAM_ORDER(0);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    s->hitboxes[0].index = -1;
    UpdateSpriteAnimation(s);

    for (i = 0; i < ARRAY_COUNT(difficulty->buttons); i++) {
        Sprite *s = &difficulty->buttons[i];
        s->tiles = difficulty->vram38;
        difficulty->vram38 += gUnknown_080D6AE8[i + difficulty->unk0 * 2].numTiles * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D6AE8[i + difficulty->unk0 * 2].anim;
        s->variant = gUnknown_080D6AE8[i + difficulty->unk0 * 2].variant;
        s->prevVariant = 0xFF;
        s->x = I(difficulty->unkC[i].x);
        s->y = I(difficulty->unkC[i].y);
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
        Sprite *s = &difficulty->controls;
        s->tiles = difficulty->vram38;
        difficulty->vram38 += gUnknown_080D7024[difficulty->unk0].numTiles * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D7024[difficulty->unk0].anim;
        s->variant = gUnknown_080D7024[difficulty->unk0].variant;
        s->prevVariant = -1;
        s->x = I(difficulty->posControls.x);
        s->y = I(difficulty->posControls.y);
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
        Sprite *s = &difficulty->outline;
        s->tiles = difficulty->vram38;
        difficulty->vram38 += gUnknown_080D70B4[0].numTiles * TILE_SIZE_4BPP;
        s->anim = gUnknown_080D70B4[0].anim;
        s->variant = gUnknown_080D70B4[0].variant;
        s->prevVariant = -1;
        s->x = I(difficulty->unk2C.x);
        s->y = I(difficulty->unk2C.y);
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

static void Task_Options_Difficulty(void)
{
    OptionsDifficulty *difficulty = TASK_DATA(gCurTask);

    UpdateUiPositions(difficulty);
    RenderButtons(difficulty);
    RenderHeadline(difficulty);
    RenderControls(difficulty);
    RenderButtonsOutline(difficulty);

    if ((gBgScrollRegs[1][0] == 0) && (A_BUTTON & gPressedKeys)) {
        switch (difficulty->difficultyValue) {
            case DIFFICULTY_NORMAL:
                LOADED_SAVE->difficulty = DIFFICULTY_NORMAL;
                break;

            case DIFFICULTY_EASY:
                LOADED_SAVE->difficulty = DIFFICULTY_EASY;
                break;
        }
    } else {
        if ((gBgScrollRegs[1][0] <= -200) && (difficulty->unk24.x <= -gBgScrollRegs[1][0])) {
            *difficulty->initArg3 = 0;
            TaskDestroy(gCurTask);
            return;
        }

        difficulty->unk24.x = -gBgScrollRegs[1][0];

        if ((gBgScrollRegs[1][0] == 0) && (DPAD_SIDEWAYS & gRepeatedKeys)) {
            if (DPAD_RIGHT & gRepeatedKeys) {
                if (difficulty->difficultyValue == 0) {
                    difficulty->difficultyValue = 1;
                } else {
                    difficulty->difficultyValue--;
                }
            } else if (DPAD_LEFT & gRepeatedKeys) {
                if (difficulty->difficultyValue == 1) {
                    difficulty->difficultyValue = 0;
                } else {
                    difficulty->difficultyValue++;
                }
            }
        }
    }
}

static void RenderButtons(OptionsDifficulty *difficulty)
{
    Sprite *s;
    u8 i;

    for (i = 0; i < ARRAY_COUNT(difficulty->buttons); i++) {
        s = &difficulty->buttons[i];
        s->anim = gUnknown_080D6AE8[i + (difficulty->unk0 * 2)].anim;
        s->variant = gUnknown_080D6AE8[i + (difficulty->unk0 * 2)].variant;
        s->x = difficulty->unkC[i].x + (i * 64);
        s->y = difficulty->unkC[i].y;

        if (i != difficulty->difficultyValue) {
            s->palId = 1;
        } else {
            s->palId = 0;
        }

        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

static void UpdateUiPositions(OptionsDifficulty *difficulty)
{
    u8 i;

    for (i = 0; i < ARRAY_COUNT(difficulty->unkC); i++) {
        difficulty->unkC[i].x = 55 - gBgScrollRegs[1][0];
        difficulty->unkC[i].y = 70 - gBgScrollRegs[1][1];
    }

    difficulty->posControls.x = 120 - gBgScrollRegs[1][0];
    difficulty->posControls.y = 135 - gBgScrollRegs[1][1];
    difficulty->unk34 = 120 - gBgScrollRegs[1][0];
    difficulty->unk36 = 30 - gBgScrollRegs[1][1];
}

static void RenderHeadline(OptionsDifficulty *difficulty)
{
    Sprite *s = &difficulty->headline;
    s->anim = gUnknown_080D7084[difficulty->unk0].anim;
    s->variant = gUnknown_080D7084[difficulty->unk0].variant;
    s->x = difficulty->unk34;
    s->y = difficulty->unk36;
    DisplaySprite(s);
}

static void RenderControls(OptionsDifficulty *difficulty)
{
    Sprite *s = &difficulty->controls;
    s->anim = gUnknown_080D7024[difficulty->unk0].anim;
    s->variant = gUnknown_080D7024[difficulty->unk0].variant;
    s->x = difficulty->posControls.x;
    s->y = difficulty->posControls.y;
    DisplaySprite(s);
}

static void RenderButtonsOutline(OptionsDifficulty *difficulty)
{
    Sprite *s = &difficulty->outline;
    s->x = difficulty->unkC[difficulty->difficultyValue].x + (difficulty->difficultyValue << 6) - 3;
    s->y = difficulty->unkC[difficulty->difficultyValue].y;
    DisplaySprite(s);
}

static void TaskDestructor_Options_Difficulty(Task *t) { }
