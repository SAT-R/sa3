#include "global.h"
#include "core.h"
#include "task.h"
#include "module_unclear.h" // WarpToMap
#include "lib/m4a/m4a.h"
#include "game/code_1_3.h"
#include "game/screen_fade.h"
#include "game/shared/stage/player_callbacks.h"
#include "game/stage.h"
#include "constants/songs.h"

typedef struct {
    /* 0x00 */ ScreenFade fade;
    /* 0x10 */ s16 levelId;
} Strc_10_8056120;

typedef struct {
    /* 0x00 */ ScreenFade fade;
    /* 0x0C */ u8 fillerC[0x28];
    /* 0x34 */ u16 unk34;
} Strc_38_8055F28;

typedef struct {
    /* 0x00 */ u8 filler0[0xC];
    /* 0x0C */ Sprite s;
    /* 0x34 */ Sprite s2;
    /* 0x5C */ u8 filler5C[0x4];
    /* 0x60 */ u8 unk60;
} Strc_64_8056090;

void sub_8053284(s32 unused0, s32 unused1, s32 unused2, s32 unused3);
void Task_80567A0(void);
void Task_nullsub_80568C8(void);
void Task_nullsub_8056980(void);
void Task_10_8056A58(void);
void Task_38_8056758(void);
extern void sub_80AE174(void);
extern void sub_80AE1C8(void);
extern void sub_80AE770(void);

/* TODO: Merge with code_1_3 */

void sub_80565BC(void)
{
    Strc_2A4_8053284 *strc = TASK_DATA(gCurTask);
    Sprite *s = &strc->spriteD4;

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void sub_80565E4(void)
{
    Strc_2A4_8053284 *strc = TASK_DATA(gCurTask);
    Sprite *s = &strc->sprite214;

    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    s = &strc->sprite23C;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void sub_8056620(void)
{
    Strc_2A4_8053284 *strc = TASK_DATA(gCurTask);
    Sprite *s = &strc->sprite264;

    if (CURRENT_GAME_MODE == GAME_MODE_TIME_ATTACK || CURRENT_GAME_MODE == GAME_MODE_BOSS_TIME_ATTACK) {
        if (s->variant < 5) {
            UpdateSpriteAnimation(s);
            DisplaySprite(s);
        }
    }
}

void Task_64_8056660(void)
{
    Strc_64_8056090 *strc = TASK_DATA(gCurTask);
    Sprite *s = &strc->s;

    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    if (strc->unk60) {
        s = &strc->s2;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void Task_38_80566A8(void)
{
    Player *p = &gPlayers[PLAYER_1];
    Player *partner = GET_SP_PLAYER_V1(PLAYER_2);

    p->charFlags.anim0 = 0;
    p->qWorldX = Q(7296);
    p->qWorldY = Q(1714);
    p->moveState &= ~0x10010001;

    partner->charFlags.anim0 = 0;
    partner->qWorldX = Q(7296) - Q(32);
    partner->qWorldY = Q(1714);
    partner->moveState &= ~0x10010001;

    gCamera.x = 7216;
    gCamera.SA2_LABEL(unk10) = 7216;
    gCamera.y = 1604;
    gCamera.SA2_LABEL(unk14) = 1604;
}

void Task_38_8056714(void)
{
    Strc_38_8055F28 *strc = TASK_DATA(gCurTask);
    ScreenFade *fade = &strc->fade;

    if (UpdateScreenFade(fade) != SCREEN_FADE_RUNNING) {
        if (--strc->unk34 == 0) {
            strc->unk34 = 600;
            sub_80AE770();
            gCurTask->main = Task_38_8056758;
        }
    }
}

void Task_38_8056758(void)
{
    Strc_38_8055F28 *strc = TASK_DATA(gCurTask);
    strc->unk34--;
}

// TODO: Unused?
void sub_8056770(void)
{
    ScreenFade *fade = TASK_DATA(gCurTask);
    fade->window = 1;
    fade->flags = 1;
    fade->brightness = 0;
    fade->speed = Q(4);
    fade->bldCnt = 0xBF;
    fade->bldAlpha = 0;
    gCurTask->main = Task_80567A0;
}

void Task_80567A0(void)
{
    ScreenFade *fade = TASK_DATA(gCurTask);
    if (UpdateScreenFade(fade) != SCREEN_FADE_RUNNING) {
        sub_8003D2C();

        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();

        WarpToMap(LEVEL_INDEX(gStageData.zone, ACT_HUB), gStageData.act - 2);
    }
}

void sub_8056818(void)
{
    Player *p = &gPlayers[PLAYER_1];
    Player *partner = GET_SP_PLAYER_V1(PLAYER_2);

    p->charFlags.anim0 = 0;
    p->qWorldX = Q(7968);
    p->qWorldY = Q(754);
    p->moveState &= ~0x10010001;

    partner->charFlags.anim0 = 0;
    partner->qWorldX = Q(7968) - Q(32);
    partner->qWorldY = Q(754);
    partner->moveState &= ~0x10010001;

    gCamera.x = 7888;
    gCamera.SA2_LABEL(unk10) = 7888;
    gCamera.y = 644;
    gCamera.SA2_LABEL(unk14) = 644;
}

void Task_38_8056884(void)
{
    Strc_38_8055F28 *strc = TASK_DATA(gCurTask);
    ScreenFade *fade = &strc->fade;

    if (UpdateScreenFade(fade) != SCREEN_FADE_RUNNING) {
        if (strc->unk34 == 60) {
            sub_80AE174();
        }

        if (--strc->unk34 == 0) {
            gCurTask->main = Task_nullsub_80568C8;
        }
    }
}

void Task_nullsub_80568C8(void) { }

void sub_80568CC(void)
{
    Player *p = &gPlayers[PLAYER_1];
    Player *partner = GET_SP_PLAYER_V1(PLAYER_2);

    p->charFlags.anim0 = 0;
    p->qWorldX = Q(12768);
    p->qWorldY = Q(274);
    p->moveState &= ~0x10010001;

    partner->charFlags.anim0 = 0;
    partner->qWorldX = Q(12768) - Q(32);
    partner->qWorldY = Q(274);
    partner->moveState &= ~0x10010001;

    gCamera.x = 12688;
    gCamera.SA2_LABEL(unk10) = 12688;
    gCamera.y = 164;
    gCamera.SA2_LABEL(unk14) = 164;
}

void Task_38_8056934(void)
{
    Strc_38_8055F28 *strc = TASK_DATA(gCurTask);
    ScreenFade *fade = &strc->fade;

    if (strc->unk34 == 120) {
        sub_80AE1C8();
        strc->unk34--;
    }

    if ((UpdateScreenFade(fade) != SCREEN_FADE_RUNNING) && (--strc->unk34 == 0)) {
        gCurTask->main = Task_nullsub_8056980;
    }
}

void Task_nullsub_8056980(void) { }

void Task_10_8056984(void)
{
    Strc_10_8056120 *strc10 = TASK_DATA(gCurTask);
    if (UpdateScreenFade(&strc10->fade) != SCREEN_FADE_RUNNING) {
        sub_8003D2C();
        gCurTask->main = Task_10_8056A58;
    }
}

void Task_Fade_80569B4(void)
{
    ScreenFade *fade = TASK_DATA(gCurTask);
    if (UpdateScreenFade(fade) != SCREEN_FADE_RUNNING) {
        sub_8003D2C();

        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();

        gStageData.warpId = 1;
        sub_8003D04(gStageData.zone);
    }
}

void Task_8056A20(void)
{
    sub_8053284(0, 0, 0, 0);
    gDispCnt &= ~0xF00;
    m4aSongNumStart(MUS_EXTRA_CLEAR);
    TaskDestroy(gCurTask);
}

void Task_10_8056A58(void)
{
    Strc_10_8056120 *strc10 = TASK_DATA(gCurTask);

    TasksDestroyAll();
    PAUSE_BACKGROUNDS_QUEUE();
    gBgSpritesCount = 0;
    PAUSE_GRAPHICS_QUEUE();

    WarpToMap(strc10->levelId, 0);
}