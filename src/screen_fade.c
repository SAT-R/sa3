#include "global.h"
#include "core.h"
#include "screen_fade.h"

static inline void ScreenFadeUpdateValues_inline(ScreenFade *fade)
{
    if (fade->window != SCREEN_FADE_USE_WINDOW_0) {
        gDispCnt |= DISPCNT_WIN1_ON;
        gWinRegs[WINREG_WIN1H] = WIN_RANGE(0, DISPLAY_WIDTH);
        gWinRegs[WINREG_WIN1V] = WIN_RANGE(0, DISPLAY_HEIGHT);
        gWinRegs[WINREG_WININ] |= BLDCNT_TGT2_ALL;
        gWinRegs[WINREG_WINOUT] |= (WINOUT_WIN01_OBJ | WINOUT_WIN01_BG_ALL);
    } else {
        gDispCnt |= DISPCNT_WIN0_ON;
        gWinRegs[WINREG_WIN0H] = WIN_RANGE(0, DISPLAY_WIDTH);
        gWinRegs[WINREG_WIN0V] = WIN_RANGE(0, DISPLAY_HEIGHT);
        gWinRegs[WINREG_WININ] |= BLDCNT_TGT1_ALL;
        gWinRegs[WINREG_WINOUT] |= (WINOUT_WIN01_OBJ | WINOUT_WIN01_BG_ALL);
    }

    gBldRegs.bldCnt = fade->bldCnt;
    gBldRegs.bldAlpha = fade->bldAlpha;

    if (fade->flags & SCREEN_FADE_FLAG_LIGHTEN) {
        gBldRegs.bldY = Q_8_8_TO_INT(fade->brightness);
    } else {
        gBldRegs.bldY = SCREEN_FADE_BLEND_MAX - Q_8_8_TO_INT(fade->brightness);
    }

    if (gBldRegs.bldY >= SCREEN_FADE_BLEND_MAX) {
        gBldRegs.bldY = SCREEN_FADE_BLEND_MAX;
    }

    gBldRegs.bldY /= 2;
}

u8 UpdateScreenFade(ScreenFade *fade)
{
    ScreenFadeUpdateValues_inline(fade);

#if ((GAME == GAME_SA1) || (GAME == GAME_SA2))
    {
        // Almost the same as the else block in the SA3 version.
        fade->brightness += fade->speed;

        if (fade->brightness >= Q_8_8(SCREEN_FADE_BLEND_MAX)) {
            fade->brightness = Q_8_8(SCREEN_FADE_BLEND_MAX);
            return SCREEN_FADE_COMPLETE;
        } else {
            return SCREEN_FADE_RUNNING;
        }
    }
#elif (GAME == GAME_SA3)
    if (fade->brightness >= Q(32)) {
        fade->brightness = Q(32);

        if (fade->flags & SCREEN_FADE_FLAG_LIGHTEN) {
            gBldRegs.bldY = 0x10;
        } else {
            gBldRegs.bldY = 0;
        }

        return SCREEN_FADE_COMPLETE;
    } else {
        fade->brightness += fade->speed;

        if (fade->brightness >= Q_8_8(SCREEN_FADE_BLEND_MAX)) {
            fade->brightness = Q_8_8(SCREEN_FADE_BLEND_MAX);
        }

        return SCREEN_FADE_RUNNING;
    }
#endif
}

// static
void ScreenFadeUpdateValues(ScreenFade *fade) { ScreenFadeUpdateValues_inline(fade); }
