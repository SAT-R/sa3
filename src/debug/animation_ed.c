#include "global.h"
#include "core.h"
#include "sprite.h"
#include "malloc_vram.h"
#include "data/sprite_tables.h"
#include "constants/animations.h"
#include "constants/anim_commands.h"
#include "constants/tilemaps.h"
#include "animation_commands.h"

typedef struct {
    Sprite sprPreview;
    Sprite sprIndicator;
    Background bg;
    s32 frameCount;
} AnimationEd;

void Task_AnimEd();
void HandleInput(AnimationEd *ed);
void DrawCommands(AnimationEd *ed);
void SkipCommand(const ACmd **pCursor);
s32 GetCurrentFrameIndex(Sprite *s);
void DrawEndOrLoopCommand(AnimationEd *ed);
void TaskDestructor_AnimEd(struct Task *t);
s32 CountFrames(AnimationEd *ed);

#define CMD_COUNT    13
#define CMD_MARGIN   8
#define CMD_WINDOW_Y (DISPLAY_HEIGHT - (CMD_COUNT * CMD_MARGIN))
#define CMD_TILES_Y  (CMD_WINDOW_Y + CMD_MARGIN)

s8 cmdSizes[CMD_COUNT] = {
    AnimCommandSizeInWords(ACmd_GetTiles),          AnimCommandSizeInWords(ACmd_GetPalette),
    AnimCommandSizeInWords(ACmd_JumpBack),          AnimCommandSizeInWords(ACmd_4),
    AnimCommandSizeInWords(ACmd_PlaySoundEffect),   AnimCommandSizeInWords(ACmd_Hitbox),
    AnimCommandSizeInWords(ACmd_TranslateSprite),   AnimCommandSizeInWords(ACmd_8),
    AnimCommandSizeInWords(ACmd_SetIdAndVariant),   AnimCommandSizeInWords(ACmd_10),
    AnimCommandSizeInWords(ACmd_SetSpritePriority), AnimCommandSizeInWords(ACmd_SetOamOrder),
    AnimCommandSizeInWords(ACmd_ShowFrame),
};

/* NOTE(Jace): This is still missing a lot of features, but right now it's more important to focus on removing ASM */

void CreateAnimationEd(void)
{
    AnimationEd *ed = TASK_DATA(TaskCreate(Task_AnimEd, sizeof(AnimationEd), 0x2000, 0, TaskDestructor_AnimEd));
    Sprite *s = &ed->sprPreview;
    Sprite *sprIndicator = &ed->sprIndicator;
    Background *bgA = &ed->bg;

    gDispCnt |= DISPCNT_BG0_ON;
#if 0
    gBgCntRegs[0] = BGCNT_256COLOR | BGCNT_AFF256x256 | BGCNT_SCREENBASE(14) | BGCNT_CHARBASE(1) | BGCNT_PRIORITY(3);
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    bgA->graphics.dest = (void *)BG_SCREEN_ADDR(8);
    bgA->graphics.anim = 0;
    bgA->layoutVram = (void *)BG_SCREEN_ADDR(14);
    bgA->unk18 = 0;
    bgA->unk1A = 0;
    bgA->tilemapId = 434;
    bgA->unk1E = 0;
    bgA->unk20 = 0;
    bgA->unk22 = 0;
    bgA->unk24 = 0;
    bgA->targetTilesX = 32;
    bgA->targetTilesY = 32;
    bgA->paletteOffset = 0;
    bgA->flags = 0;
    DrawBackground(bgA);
#endif

    {
        AnimId anim = ANIM_ASCII;
        u8 pattern = 0;
        SPRITE_INIT_WITHOUT_VRAM(s, anim, pattern, 0, 2, 0);
        s->tiles = OBJ_VRAM0;
        s->x = DISPLAY_CENTER_X + 32;
        s->y = 32;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);

        ed->frameCount = CountFrames(ed);
    }

    {
        const s32 indicatorSize = 4;
        AnimId anim = ANIM_BUZZER_PROJ;
        u8 pattern = 0;
        sprIndicator->palId = 2;
        SPRITE_INIT(sprIndicator, indicatorSize, anim, pattern, 3, 3);
        UpdateSpriteAnimation(sprIndicator);
    }
}

void Task_AnimEd()
{
    AnimationEd *ed = TASK_DATA(gCurTask);
    Sprite *s = &ed->sprPreview;
    Sprite *sprIndicator = &ed->sprIndicator;

    HandleInput(ed);

    if (gSpriteTables.animations[s->anim] == NULL) {
        // Render "EMPTY" string
    } else {
        UpdateSpriteAnimation(s);
        DisplaySprite(s);

        DrawCommands(ed);
    }
}

void HandleInput(AnimationEd *ed)
{
    Sprite *s = &ed->sprPreview;

    if (gInput & L_BUTTON) {
        AnimId newAnim = (s->anim - 1);

        if (newAnim == (AnimId)-1) {
            newAnim = ANIM_COUNT - 1;
        }

        s->anim = newAnim;
    } else if (gInput & R_BUTTON) {
        AnimId newAnim = (s->anim + 1) % ANIM_COUNT;

        s->anim = newAnim;
    }

    if (gInput & (L_BUTTON | R_BUTTON)) {
        ed->frameCount = CountFrames(ed);
    }
}

#define IS_LAST_CMD(_cmd)    (((_cmd)->id == ANIM_CMD__END) || ((_cmd)->id == ANIM_CMD__JUMP_BACK))
#define IS_DISPLAY_CMD(_cmd) ((_cmd)->id >= 0)

// TODO: Only call this when sprPreview anim changed.
s32 CountFrames(AnimationEd *ed)
{
    Sprite *sprPreview = &ed->sprPreview;
    const ACmd **patterns = gSpriteTables.animations[sprPreview->anim];
    s32 frameCount = 0;

    if (patterns != NULL) {
        const ACmd *cursor = patterns[sprPreview->variant];

        while (!IS_LAST_CMD(cursor)) {
            if (IS_DISPLAY_CMD(cursor)) {
                frameCount++;
            }

            SkipCommand(&cursor);
        }
    }

    return frameCount;
}

void SkipCommand(const ACmd **pCursor)
{
    s32 *cmd = (s32 *)(*pCursor);
    s32 dummy;

    if ((*pCursor)->id < 0) {
        cmd += cmdSizes[~((*pCursor)->id)];
    } else {
        cmd += cmdSizes[~ANIM_CMD__SHOW_FRAME];
    }

    *pCursor = (const ACmd *)cmd;
}

void DrawCommands(AnimationEd *ed)
{
    Sprite *sprPreview = &ed->sprPreview;
    Sprite *sprIndicator = &ed->sprIndicator;
    const ACmd **patterns = gSpriteTables.animations[sprPreview->anim];

    if (patterns != NULL) {
        const ACmd *cursorFirst = patterns[sprPreview->variant];
        const ACmd *cursor = cursorFirst;

        s32 frame = 0;
        s32 currentFrame = GetCurrentFrameIndex(sprPreview);
        s32 frameCount = ed->frameCount;
        s32 margin = 10;
        float invFrame = 1. / (float)frameCount;

        while (!IS_LAST_CMD(cursor)) {
            float normalizedX = ((float)frame) * invFrame;
            sprIndicator->x = margin + (s32)((float)(DISPLAY_WIDTH - 2 * margin) * normalizedX);

            while (!IS_DISPLAY_CMD(cursor)) {
                sprIndicator->y = CMD_TILES_Y + (~cursor->id) * (2 * CMD_MARGIN);
                DisplaySprite(sprIndicator);
                SkipCommand(&cursor);
            }

            if (frame == currentFrame) {
                sprIndicator->y = CMD_TILES_Y - CMD_MARGIN;
                DisplaySprite(sprIndicator);
            }

            frame++;
            // Skip DISPLAY command
            SkipCommand(&cursor);
        }

        DrawEndOrLoopCommand(ed);
    }
}

s32 GetCurrentFrameIndex(Sprite *s)
{
    s32 frameIndex = 0;
    const ACmd **patterns = gSpriteTables.animations[s->anim];

    if (patterns != NULL) {
        const ACmd *cursorFirst = patterns[s->variant];
        const ACmd *cursor = cursorFirst;
        s32 i;

        for (i = 0; i < s->animCursor;) {
            if (cursor->id < 0) {
                SkipCommand(&cursor);
            } else {
                frameIndex++;
                SkipCommand(&cursor);
            }

            if (cursor->id < 0) {
                i += cmdSizes[~cursor->id];
            } else {
                i += cmdSizes[~ANIM_CMD__SHOW_FRAME];
            }
        }

        if (frameIndex > 0) // this *should* always be true.
        {
            frameIndex--;
        }
    }

    return frameIndex;
}

void DrawEndOrLoopCommand(AnimationEd *ed) { }

void TaskDestructor_AnimEd(struct Task *t) { }