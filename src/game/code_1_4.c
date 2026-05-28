#include "global.h"
#include "core.h"
#include "task.h"
#include "module_unclear.h" // WarpToMap
#include "lib/m4a/m4a.h"
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
    /* 0x00 */ u8 filler0[0x64];
} Strc_64_8056090;

void sub_8053284(s32 unused0, s32 unused1, s32 unused2, s32 unused3);
void Task_nullsub_80568C8(void);
void Task_nullsub_8056980(void);
void Task_10_8056A58(void);
extern void sub_80AE174(void);
extern void sub_80AE1C8(void);

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