#include "global.h"
#include "core.h"
#include "task.h"
#include "malloc_vram.h"
#include "module_unclear.h" // WarpToMap
#include "lib/m4a/m4a.h"
#include "game/code_1_3.h"
#include "game/screen_fade.h"
#include "game/shared/stage/player_callbacks.h"
#include "game/save.h"
#include "game/stage.h"
#include "constants/songs.h"

typedef struct {
    /* 0x00 */ ScreenFade fade;
    /* 0x0C */ s16 levelId;
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
    /* 0x5C */ u16 unk5C;
    /* 0x5E */ u8 unk5E;
    /* 0x5F */ u8 unk5F;
    /* 0x60 */ u8 unk60;
} Strc_64_8056090;

// TODO: Function unused, so this is probably a different, bigger struct.
typedef struct {
    /* 0x00 */ u8 filler0[6];
    /* 0x06 */ int_vcount winMinX;
    /* 0x07 */ int_vcount winMinY;
    /* 0x08 */ int_vcount winMaxX;
    /* 0x09 */ int_vcount winMaxY;
} Strc_sub_80561E8;

void sub_8053284(s32 unused0, s32 unused1, s32 unused2, s32 unused3);
void Task_274_80547DC(void);
void Task_274_8054764(void);
void sub_8054E38(void);
void sub_8055E50(Strc_64_8056090 *);
void Task_274_80562BC(void);
void Task_2A4_80552C8(void);
void Task_2A4_8055378(void);
void sub_8055CA8(void);
void sub_8055D44(void);
void TaskDestructor_8056104(Task *t);
void Task_274_8056314(void);
void Task_274_8056370(void);
void sub_80563BC(void);
void sub_8056430(void);
void sub_8056408(void);
void sub_8056564(void);
void sub_80565BC(void);
void sub_80565E4(void);
void sub_8056620(void);
void Task_64_8056660(void);
void Task_38_80566A8(void);
void Task_38_8056714(void);
void Task_80567A0(void);
void sub_8056818(void);
void Task_38_8056884(void);
void Task_nullsub_80568C8(void);
void sub_80568CC(void);
void Task_38_8056934(void);
void Task_nullsub_8056980(void);
void Task_10_8056984(void);
void Task_Fade_80569B4(void);
void Task_8056A20(void);
void Task_10_8056A58(void);
void Task_38_8056758(void);
extern void sub_8001EEC(u8 param0);
extern void sub_80AE174(void);
extern void sub_80AE1C8(void);
extern void sub_80AE770(void);
extern void sub_80B1AF4(s16 character, s16 zone, u8 collectedEmeralds);

extern const u8 gUnknown_080D1D50[];
extern const u16 gUnknown_080D1CD2[][3];
extern const u16 gUnknown_080D1CE4[NUM_LANGUAGES][3][3];

/* TODO: Merge module with code_1_3 */

void Task_10_8055DA8(void)
{
    Strc_10_8055DA8 *strc = TASK_DATA(gCurTask);
    ScreenFade *fade = &strc->fade;

    if (strc->unkE == 0) {
        if (UpdateScreenFade(fade) != SCREEN_FADE_RUNNING) {
            strc->unkE = 1;
        }
    } else {
        sub_8001E58();
        sub_8003D2C();

        TasksDestroyAll();
        PAUSE_BACKGROUNDS_QUEUE();
        gBgSpritesCount = 0;
        PAUSE_GRAPHICS_QUEUE();

        gStageData.unkD = 0;
        {
            Player *players = gPlayers;
            Player *p = &players[gStageData.playerIndex];
            sub_80B1AF4(p->charFlags.character, gStageData.zone, LOADED_SAVE->collectedEmeralds);
        }
    }
}

void sub_8055E50(Strc_64_8056090 *strc)
{
    s32 temp_r4;
    s32 temp_r4_2;
    s32 temp_sb;
    Sprite *s;
    s32 n;
    u8 language = gStageData.language;

    temp_sb = strc->unk5E;
    temp_r4 = strc->unk5F;

    s = &strc->s;
    n = 8;
    s->tiles = VramMalloc(TI2_NUM_TILES(gUnknown_080D1CE4[language][temp_r4]));
    s->anim = TI2_ANIM(gUnknown_080D1CE4[language][temp_r4]);
    s->variant = TI2_VARIANT(gUnknown_080D1CE4[language][temp_r4]);
    s->oamFlags = 0x80;
    s->frameFlags = 0;
    s->animCursor = 0;
    s->x = DISPLAY_CENTER_X;
    s->y = DISPLAY_CENTER_Y;
    s->qAnimDelay = 0;
    s->prevVariant = 0xFF;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;

    s = &strc->s2;

    s->tiles = VramMalloc(TI2_NUM_TILES(gUnknown_080D1CD2[temp_sb]));
    s->anim = TI2_ANIM(gUnknown_080D1CD2[temp_sb]);
    s->variant = TI2_VARIANT(gUnknown_080D1CD2[temp_sb]);
    s->oamFlags = 0x80;
    s->frameFlags = 0;
    s->animCursor = 0;
    s->x = DISPLAY_CENTER_X;
    s->y = DISPLAY_CENTER_Y - 40;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
}

void sub_8055F28(void)
{
    struct Task *t;
    Strc_38_8055F28 *strc;
    Player *p;

    if (gStageData.zone == ZONE_2) {
        t = TaskCreate(Task_38_8056714, sizeof(Strc_38_8055F28), 0x100, 0, NULL);
        Task_38_80566A8();
        sub_8001EEC(8);
    } else if (gStageData.zone == ZONE_4) {
        t = TaskCreate(Task_38_8056884, sizeof(Strc_38_8055F28), 0x100, 0, NULL);
        sub_8056818();
        sub_8001EEC(16);
    } else if (gStageData.zone == ZONE_6) {
        t = TaskCreate(Task_38_8056934, sizeof(Strc_38_8055F28), 0x100, 0, NULL);
        sub_80568CC();
        sub_8001EEC(2);
    } else {
        return;
    }

    strc = TASK_DATA(t);
    strc->unk34 = 0x78;
    strc->fade.window = 1;
    strc->fade.flags = 2;
    strc->fade.brightness = 0;
    strc->fade.speed = 0x400;
    strc->fade.bldCnt = 0xBF;
    strc->fade.bldAlpha = 0;

    if (gStageData.taskA4 != NULL) {
        TaskDestroy(gStageData.taskA4);
        gStageData.taskA4 = NULL;
    }

    gStageData.unk4 = 9;

    p = &gPlayers[PLAYER_1];
    if (p->charFlags.character == CREAM) {
        sub_801EBC0(0, p);
    }

    p = &gPlayers[PLAYER_2];
    if (p->charFlags.character == CREAM) {
        sub_801EBC0(0, p);
    }
}

void sub_805602C(void)
{
    sub_8003D2C();

    TasksDestroyAll();
    PAUSE_BACKGROUNDS_QUEUE();
    gBgSpritesCount = 0;
    PAUSE_GRAPHICS_QUEUE();

    TaskCreate(Task_8056A20, 0U, 0x100U, 0U, NULL);
    gStageData.unk4 = 6;
}

void sub_8056090(u16 arg0, u16 arg1, u16 arg2)
{
    Strc_64_8056090 *strc;

    strc = TASK_DATA(TaskCreate(Task_64_8056660, sizeof(Strc_64_8056090), 0x100U, 0U, TaskDestructor_8056104));
    strc->unk5C = 0;
    strc->unk5E = (s8)arg0;
    strc->unk5F = (s8)arg1;
    strc->unk60 = (s8)arg2;
    sub_8055E50(strc);
    sub_80299FC();
    m4aSongNumStart(MUS_VS_BGM_4);
}

void TaskDestructor_8056104(Task *t)
{
    Strc_64_8056090 *temp_r4;

    temp_r4 = TASK_DATA(t);
    VramFree(temp_r4->s.tiles);
    VramFree(temp_r4->s2.tiles);
}

void sub_8056120(u16 arg0)
{
    Strc_10_8056120 *strc;

    strc = TASK_DATA(TaskCreate(Task_10_8056984, sizeof(Strc_10_8056120), 0x100U, 0U, NULL));
    strc->levelId = arg0;
    strc->fade.window = 0;
    strc->fade.flags = 1;
    strc->fade.brightness = 0;
    strc->fade.speed = Q(4);
    strc->fade.bldCnt = 0xBF;
    strc->fade.bldAlpha = 0;
}

void sub_8056168(void)
{
    ScreenFade *fade;

    fade = TASK_DATA(TaskCreate(Task_Fade_80569B4, sizeof(ScreenFade), 0x100U, 0U, NULL));
    fade->window = 0;
    fade->flags = 1;
    fade->brightness = 0;
    fade->speed = Q(4);
    fade->bldCnt = 0xBF;
    fade->bldAlpha = 0;
}

bool32 MetExtraBossEnableConditions(void)
{
    if ((gPlayers->charFlags.character == SONIC) && (LOADED_SAVE->collectedEmeralds == 0x7F) && (LOADED_SAVE->unlockedCharacters == 0x1F)
        && (LOADED_SAVE->unk34 & 0x10)) {
        return TRUE;
    }

    return FALSE;
}

void sub_80561E8(void)
{
    Strc_sub_80561E8 *strc = TASK_DATA(gCurTask);
    gWinRegs[WINREG_WIN0H] = WIN_RANGE(strc->winMinX, strc->winMaxX);
    gWinRegs[WINREG_WIN0V] = WIN_RANGE(strc->winMinY, strc->winMaxY);
}

void Task_274_8056214(void)
{
    Strc_274_8053284 *strc = TASK_DATA(gCurTask);

    if (strc->fade.bldAlpha > 120) {
        strc->fade.bldAlpha -= 12;
    } else {
        strc->fade.bldAlpha = 120;
    }

    sub_8054E38();

    if ((u16)++strc->fade.brightness >= 60) {
        strc->fade.brightness = 0;
        gCurTask->main = Task_274_8054764;
    }
}

void Task_274_8056268(void)
{
    Strc_274_8053284 *strc = TASK_DATA(gCurTask);

    if (strc->fade.bldAlpha > 8) {
        strc->fade.bldAlpha -= 8;
    } else {
        strc->fade.bldAlpha = 8;
    }

    sub_8054E38();

    if ((u16)++strc->fade.brightness >= 30) {
        strc->fade.brightness = 0;
        gCurTask->main = Task_274_80562BC;
    }
}

void Task_274_80562BC(void)
{
    Strc_274_8053284 *strc = TASK_DATA(gCurTask);

    if (strc->someX > 130) {
        strc->someX -= 12;
    } else {
        strc->someX = 130;
    }

    sub_8054E38();
    sub_80563BC();

    if ((u16)++strc->fade.brightness >= 30) {
        strc->fade.brightness = 0;
        gCurTask->main = Task_274_8056314;
    }
}

void Task_274_8056314(void)
{
    Strc_274_8053284 *strc = TASK_DATA(gCurTask);

    if (strc->unk18 > 132) {
        strc->unk18 -= 8;
    } else {
        strc->unk18 = 0x84;
        sub_8056408();
    }

    sub_8054E38();
    sub_80563BC();
    sub_8056430();

    if ((u16)++strc->fade.brightness >= 30) {
        strc->fade.brightness = 0;
        gCurTask->main = Task_274_8056370;
    }
}

void Task_274_8056370(void)
{
    Strc_274_8053284 *strc = TASK_DATA(gCurTask);
    sub_8054E38();
    sub_80563BC();
    sub_8056430();
    sub_8056408();

    // TODO: This probably isn't a fade/brightness value...
    if ((u16)++strc->fade.brightness >= 60) {
        strc->fade.brightness = 0;
        m4aSongNumStart(SE_GOAL_RING_RESULT);
        gCurTask->main = Task_274_80547DC;
    }
}

void sub_80563BC(void)
{
    Strc_274_8053284 *strc = TASK_DATA(gCurTask);
    Sprite *s = &strc->sprite94;

    s->x = strc->someX;

    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    s = &strc->spriteBC;
    s->x = strc->someX + strc->unk17;

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void sub_8056408(void)
{
    Strc_274_8053284 *strc = TASK_DATA(gCurTask);
    Sprite *s = &strc->spriteE4;

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void sub_8056430(void)
{
    Strc_274_8053284 *strc = TASK_DATA(gCurTask);
    u8 sp00[7];
    s16 i;

    // TODO: Remove memcpy
    memcpy(sp00, gUnknown_080D1D50, sizeof(sp00));

    for (i = 0; i < (s32)ARRAY_COUNT(sp00); i++) {
        Sprite *s = &strc->sprites10C[i];
        s->x = strc->unk18 + sp00[i];
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void Task_274_8056494(void)
{
    Strc_274_8053284 *strc = TASK_DATA(gCurTask);
    Sprite *s = &strc->sprite224;

    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    s = &strc->sprite24C;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void Task_2A4_80564D0(void)
{
    Strc_2A4_8053284 *strc = TASK_DATA(gCurTask);

    sub_8055CA8();
    sub_8056564();
    sub_8055D44();
    sub_80565BC();
    sub_80565E4();
    sub_8056620();

    strc->unk290++;

    if (((gStageData.currentLevel != 72) && (strc->unk290 < 120)) //
        || ((gStageData.currentLevel == 72) && (strc->unk290 < 180))) {
        return;
    } else {
        gCurTask->main = Task_2A4_80552C8;
    }
}

void Task_2A4_8056538(void)
{
    Strc_2A4_8053284 *strc = TASK_DATA(gCurTask);
    ScreenFade *fade = &strc->fade;

    if (UpdateScreenFade(fade) != SCREEN_FADE_RUNNING) {
        gCurTask->main = Task_2A4_8055378;
    }
}

void sub_8056564(void)
{
    Strc_2A4_8053284 *strc = TASK_DATA(gCurTask);
    Sprite *s = &strc->sprites84[0];

    s->x = strc->someX;

    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    s = &strc->sprites84[1];
    s->x = strc->someX + strc->unk29F;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

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
    gDispCnt &= ~DISPCNT_BG_ALL_ON;
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