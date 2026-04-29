#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/game.h"
#include "game/player.h"
#include "game/save.h" // NUM_LANGUAGES
#include "game/screen_fade.h"
#include "game/stage.h"
#include "module_unclear.h"
#include "constants/animations.h"
#include "constants/zones.h"

#define TXT_POS_DEMO_PLAY_X DISPLAY_CENTER_X
#define TXT_POS_DEMO_PLAY_Y (DISPLAY_CENTER_Y + 16)

#define TXT_POS_PRESS_START_X DISPLAY_CENTER_X
#define TXT_POS_PRESS_START_Y (DISPLAY_CENTER_Y + 40)

#define DEMO_DURATION                    TIME(0, 30)
#define DEMO_FADE_OUT_START              TIME(0, 1.2)
#define PRESS_START_BLINK_DURATION_OFF   TIME(0, 0.5)
#define PRESS_START_BLINK_DURATION_ON    TIME(0, 1.0)
#define PRESS_START_BLINK_CYCLE_DURATION (PRESS_START_BLINK_DURATION_OFF + PRESS_START_BLINK_DURATION_ON)

typedef struct DemoPlay {
    /* 0x00 */ s16 tCountdown;
    /* 0x02 */ s16 tBlink;
    /* 0x04 */ Sprite sprPressStart;
    /* 0x2C */ Sprite sprDemoPlay;
    /* 0x54 */ ScreenFade fade;
    /* 0x60 */ s16 unk60;
    /* 0x62 */ s16 unk62;
} DemoPlay;

typedef struct DemoPlayFadeout {
    /* 0x00 */ s16 unk0;
    /* 0x04 */ ScreenFade fade;
} DemoPlayFadeout;

typedef struct TileInfo_Demo {
    AnimId anim;
    u8 variant;
    u8 numTiles;
} TileInfo_Demo;

const TileInfo_Demo sTileInfoPressStart[NUM_LANGUAGES] = {
    [JAPANESE] = { 1007, 0, 46 }, //
    [ENGLISH] = { 1009, 0, 30 }, //
    [GERMAN] = { 1010, 0, 34 }, //
    [FRENCH] = { 1011, 0, 46 }, //
    [SPANISH] = { 1012, 0, 30 }, //
    [ITALIAN] = { 1013, 0, 30 }, //
};

void Task_DemoPlaySplashTexts(void);
void TaskDestructor_DemoPlaySplashText(struct Task *t);
void Task_8053094(void);

extern void LaunchGameIntro(void);
extern void LaunchTitleScreen(void);
extern void DemoPlayFree(Player *p);
extern void sub_80A872C(u8);

void DemoPlay_Init(void)
{
    gStageData.playerIndex = PLAYER_1;
    gStageData.gameMode = GAME_MODE_DEMO;
    gStageData.zone = ZONE_1;
    gStageData.act = ACT_1;
    gStageData.currentLevel = LEVEL_INDEX(ZONE_1, ACT_1);
    sub_800214C();

    gPlayers[PLAYER_1].charFlags.partnerIndex = PLAYER_2;
    gPlayers[PLAYER_1].charFlags.character = SONIC;
    gPlayers[PLAYER_1].charFlags.someIndex = 4;
    gPlayers[PLAYER_2].charFlags.partnerIndex = PLAYER_1;
    gPlayers[PLAYER_2].charFlags.character = TAILS;
    gPlayers[PLAYER_2].charFlags.someIndex = 2;
    gPlayers[PLAYER_3].charFlags.someIndex = 0;
    gPlayers[PLAYER_4].charFlags.someIndex = 0;

    WarpToMap(gStageData.currentLevel, 0);
}

void DemoPlay_InitSprites(void)
{
    DemoPlay *demo;
    Sprite *s;
    ScreenFade *fade;

    demo = TASK_DATA(TaskCreate(Task_DemoPlaySplashTexts, sizeof(DemoPlay), 0x1000U, 0U, TaskDestructor_DemoPlaySplashText));
    demo->tCountdown = DEMO_DURATION;
    demo->unk62 = 0;
    demo->unk60 = 0;
    demo->tBlink = 0;

    s = &demo->sprPressStart;
    s->tiles = OBJ_VRAM0 + 0x3800;
    s->anim = sTileInfoPressStart[gStageData.language].anim;
    s->x = TXT_POS_PRESS_START_X;
    s->y = TXT_POS_PRESS_START_Y;
    s->oamFlags = 0;
    s->qAnimDelay = 0;
    s->prevAnim = -1;
    s->variant = sTileInfoPressStart[gStageData.language].variant;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 15;
    s->frameFlags = 0;
    s->hitboxes[0].index = -1;
    UpdateSpriteAnimation(s);

    s = &demo->sprDemoPlay;
    s->tiles = ALLOC_TILES(ANIM_DEMO_PLAY);
    s->anim = ANIM_DEMO_PLAY;
    s->x = TXT_POS_DEMO_PLAY_X;
    s->y = TXT_POS_DEMO_PLAY_Y;
    s->oamFlags = 0;
    s->qAnimDelay = 0;
    s->prevAnim = -1;
    s->variant = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->frameFlags = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    UpdateSpriteAnimation(s);

    fade = &demo->fade;
    fade->window = 0;
    fade->flags = 1;
    fade->brightness = 0;
    fade->speed = Q(0.5);
    fade->bldCnt = 0xBF;
    fade->bldAlpha = 0;
}

void Task_DemoPlaySplashTexts(void)
{
    DemoPlay *demo = TASK_DATA(gCurTask);
    Sprite *s;

    if (demo->tCountdown < DEMO_FADE_OUT_START) {
        UpdateScreenFade(&demo->fade);
    }

    if (demo->tCountdown <= 0) {
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();
        m4aMPlayAllStop();
        LaunchGameIntro();
    } else if (START_BUTTON & gPressedKeys) {
        sub_8003D2C();
        m4aMPlayAllStop();
        LaunchTitleScreen();
    } else {
        if (gStageData.unk4 == 3) {
            if (demo->tBlink > PRESS_START_BLINK_CYCLE_DURATION) {
                demo->tBlink = 0;
            }

            if (demo->tBlink >= PRESS_START_BLINK_DURATION_OFF) {
                s = &demo->sprPressStart;
                UpdateSpriteAnimation(s);
                DisplaySprite(s);
            }

            s = &demo->sprDemoPlay;
            UpdateSpriteAnimation(s);
            DisplaySprite(s);
        }

        demo->tCountdown--;
        demo->tBlink++;
    }
}

void sub_8053030(void)
{
    DemoPlayFadeout *strc;
    ScreenFade *fade;

    strc = TASK_DATA(TaskCreate(Task_8053094, sizeof(DemoPlayFadeout), 0x1000U, 0U, NULL));
    strc->unk0 = TIME(0, 10);
    fade = &strc->fade;
    fade->window = 0;
    fade->flags = 1;
    fade->brightness = 0;
    fade->speed = Q(0.5);
    fade->bldCnt = 0xFF;
    fade->bldAlpha = 0;
    ScreenFadeUpdateValues(fade);
}

void TaskDestructor_DemoPlaySplashText(struct Task *t)
{
    DemoPlay *demo = TASK_DATA(t);
    VramFree(demo->sprDemoPlay.tiles);
}

void Task_8053094(void)
{
    DemoPlayFadeout *strc = TASK_DATA(gCurTask);

    if (strc->unk0 != 0) {
        strc->unk0--;
    } else if (UpdateScreenFade(&strc->fade) != SCREEN_FADE_RUNNING) {
        // BUG: It seems like DemoPlayFree() is never called, because
        //      Task_DemoPlaySplashTexts() seems to always end before Task_8053094().
        //      And since it calls TasksDestroyAll(), that includes this task.
        DemoPlayFree(&gPlayers[PLAYER_1]);
        sub_8003D2C();
        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();
        sub_80A872C(ZONE_FINAL - gStageData.zone);
    }
}
