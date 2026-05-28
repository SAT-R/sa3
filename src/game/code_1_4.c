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
    ScreenFade fade;
    s16 levelId;
} Strc_10_8056120;

void sub_8053284(s32 unused0, s32 unused1, s32 unused2, s32 unused3);
void Task_10_8056A58(void);

void sub_8056980(void) { }

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