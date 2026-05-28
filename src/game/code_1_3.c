#include "global.h"
#include "core.h"
#include "lib/m4a/m4a.h"
#include "game/code_1_3.h"
#include "game/screen_fade.h"
#include "game/shared/stage/player_callbacks.h"
#include "game/stage.h"
#include "constants/songs.h"

/* TODO: Merge with code_1_4 */

void sub_8053128(s16 arg0, s16 arg1)
{
    Strc_220_sub_8053128 *strc220;
    ScreenFade *fade;

    strc220 = TASK_DATA(TaskCreate(Task_220_8053904, sizeof(Strc_220_sub_8053128), 0x100U, 0U, NULL));

    if (arg0 == 1) {
        strc220->unk21C = 1;
    } else {
        if (arg1 == 1) {
            strc220->unk21C = 2;
        } else {
            strc220->unk21C = 0;
        }
    }

    sub_8053440(strc220);
    sub_80534DC(strc220, arg0, arg1);
    sub_805365C(strc220);

    strc220->unk164 = 0;
    strc220->unk166 = 0x8C;
    strc220->unk168 = 0;
    strc220->unk16A = 0;
    strc220->unk16C = 0;
    strc220->unk16E = 0;
    strc220->unk170 = 0x30;
    strc220->unk172 = 0x10;
    strc220->unk174 = 0xFFF0;
    strc220->unk176 = 0;
    strc220->unk178 = 0;
    strc220->unk17A = arg0;
    strc220->unk17B = arg1;

    strc220->fade.window = 0;
    strc220->fade.flags = 2;
    strc220->fade.brightness = 0;
    strc220->fade.speed = Q(0.5);
    strc220->fade.bldCnt = 0xBF;
    strc220->fade.bldAlpha = 0;
    ScreenFadeUpdateValues(&strc220->fade);

    if (gStageData.levelTimer <= gMedalTimes[gStageData.currentLevel][0]) {
        m4aSongNumStart(MUS_BOSS_CLEAR_GOLD);
    } else {
        m4aSongNumStart(MUS_BOSS_CLEAR);
    }
}
