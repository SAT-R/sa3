#include "global.h"
#include "core.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/stage.h"
#include "game/save.h"
#include "game/screen_fade.h"
#include "game/camera.h" // TODO: for CamCoord used in entities_manager.h
#include "game/shared/entities_manager.h"
#include "game/shared/rings_manager.h"
#include "game/player_callbacks.h" // Player_BoostModeDisengage
#include "module_unclear.h"

#include "constants/songs.h"
#include "constants/zones.h"

typedef struct GameOver {
    /* 0x00 */ u16 unk0;
    /* 0x04 */ Sprite s;
    /* 0x2C */ Sprite s2;
    /* 0x54 */ ScreenFade fade;
} GameOver;

typedef struct GameOver38 {
    /* 0x00 */ u8 padding[0x10];
    /* 0x10 */ Sprite s;
} GameOver38;

typedef struct TimeOver {
    /* 0x00 */ u16 unk0;
    /* 0x04 */ Sprite s;
    /* 0x2C */ Sprite s2;
    /* 0x54 */ ScreenFade fade;
} TimeOver;

void sub_80525F0(s32, s32); /* extern */
extern u8 gUnknown_080CE548[4];
extern void *gUnknown_08E2EC78[8];

void Task_60_8003FEC(void);
void TaskDestructor_8003D28(struct Task *t);
void sub_8029990(u16 song);

extern void Create_gTask_03001CFC();
extern void DemoPlayAlloc(Player *, u8);
void Task_00_8002988();
extern void sub_8002618();
extern void sub_8002838(s16);
extern void sub_8003E44(s16);
extern struct Task *sub_80215A0();
extern void sub_8022FB0();
void Task_8002BBC();
extern void sub_80261B0();
extern void sub_80275F0(u8, u8, u8);
extern void sub_8027878(u8 lives);
extern void sub_804F740(u16, u8);
extern void sub_805235C();
extern void sub_8056AB0();
extern void sub_8056AFC(u8);
extern void sub_8056B78();
extern void sub_8057ECC();
extern void sub_806611C(u8);
extern void sub_8081C80();
extern void InitializePlayer(s16 playerId);
extern void sub_8052E30();
extern void sub_8053030();

extern void sub_80299FC(void);
extern void sub_8053284(UNUSED u32, UNUSED u32, UNUSED s16, UNUSED s32);
extern void AddLives(u16 count);

void DestroyStageEntitiesManager(); /* extern */
void LaunchGameIntro(); /* extern */
void sub_8001D58(void (*)(), s32); /* extern */
void sub_8001E84(); /* extern */
void sub_80026BC(); /* extern */
void sub_8004CC8(u32); /* extern */
void sub_8013D70(s16, s16); /* extern */
void sub_80260F0(); /* extern */
void sub_8051140(); /* extern */
void TaskDestructor_80040BC(Task *); /* static */
void Task_8003C38(); /* static */
void sub_8003F40(); /* static */
void sub_8003FC8(); /* static */
void Task_8004058(); /* static */
void sub_80040D8(s16 arg0, s16 arg1); /* static */

void Task_TimeOver_Update(void);
void Task_TimeOver_InitSprites(void);

typedef struct MusicManagerState {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 unk4;
    u8 unk5;
    u16 fadeoutSpeed;
} MusicManagerState; /* size: 8 */

extern MusicManagerState gUnknown_03001CF0; // TODO: <- gMusicManagerState

void sub_8003A14(void)
{
    Player *p;
    s16 temp_r4_2;
    s16 pid;
    u16 temp_r4;
    TimeOver *timeOver;

    timeOver = TASK_DATA(TaskCreate(Task_TimeOver_InitSprites, sizeof(TimeOver), 0x2000U, 0U, TaskDestructor_80040BC));
    timeOver->unk0 = 0;

    for (pid = 0; pid < 4; pid++) {
        p = &gPlayers[pid];
        p->unk13C = 0;
        p->unk13D = 0;
        Player_BoostModeDisengage(p);
    }

    gStageData.unk24 = 0;
    gStageData.unk20 = 1;
}

void Task_TimeOver_InitSprites()
{
    TimeOver *timeOver = TASK_DATA(gCurTask);
    Sprite *s, *s2;

    if (gStageData.unk4 == 5) {
        TaskDestroy(gCurTask);
        return;
    }

    s = &timeOver->s;
    s->tiles = OBJ_VRAM0 + 0x2000;
    s->anim = 1427;
    s->variant = 2;
    s->oamFlags = 0;
    s->x = 0;
    s->y = DISPLAY_CENTER_Y;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0;

    s = &timeOver->s2;
    s->tiles = OBJ_VRAM0 + 0x29C0;
    s->anim = 1427;
    s->variant = 1;
    s->oamFlags = 0;
    s->x = 0;
    s->y = DISPLAY_CENTER_Y;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0;

    gCurTask->main = Task_TimeOver_Update;
}

void Task_TimeOver_Update()
{
    Sprite *s;
    u16 temp_r0;
    u16 temp_r0_2;
    u16 timeTxtX;

    TimeOver *timeOver = TASK_DATA(gCurTask);

    if (gStageData.unk4 == 5) {
        TaskDestroy(gCurTask);
        return;
    }
    if (timeOver->unk0 == 4) {
        m4aSongNumStart(0x95U);
    }
    if (++timeOver->unk0 >= TIME(0, 5)) {
        gCurTask->main = Task_8003C38;
        return;
    }
    timeTxtX = timeOver->unk0;
    if (timeTxtX > DISPLAY_CENTER_X) {
        timeTxtX = DISPLAY_CENTER_X;
    }
    if (timeOver->unk0 > 3U) {
        s = &timeOver->s;
        s->x = timeTxtX;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
        s = &timeOver->s2;
        s->x = DISPLAY_WIDTH - timeTxtX;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

NONMATCH("asm/non_matching/game/shared/go__sub_8003BD8.inc", void sub_8003BD8(void))
{
    GameOver *temp_r2;
    ScreenFade *fade;

    temp_r2 = TASK_DATA(gCurTask);
    fade = &temp_r2->fade;
    fade->window = 0;
    fade->flags = 1;
    fade->brightness = 0;
    fade->speed = Q(0.5);
    fade->bldCnt = 0xBF;
    fade->bldAlpha = 0;
    ScreenFadeUpdateValues(fade);
    gCurTask->main = Task_8003C38;
}
END_NONMATCH

void Task_8003C38(void)
{
    Player *p, *partner;

    p = GET_SP_PLAYER_V0(PLAYER_1);
    partner = GET_SP_PLAYER_V0(PLAYER_2);
    p->framesInvulnerable = 0;
    partner->framesInvulnerable = 0;
    if (gStageData.gameMode == 6) {
        gStageData.unk4 = 5;
        gStageData.unk5 = 0xAA;
        gStageData.task90->main = Task_800303C;
    }
    TaskDestroy(gCurTask);
}

NONMATCH("asm/non_matching/game/shared/go__sub_8003CA4.inc", void sub_8003CA4(void))
{
    GameOver *temp_r2;
    ScreenFade *fade;

    temp_r2 = TASK_DATA(gCurTask);
    fade = &temp_r2->fade;
    fade->window = 0;
    fade->flags = 1;
    fade->brightness = 0;
    fade->speed = Q(0.5);
    fade->bldCnt = 0xBF;
    fade->bldAlpha = 0;
    ScreenFadeUpdateValues(fade);
    gCurTask->main = Task_8004058;
}
END_NONMATCH

void sub_8003D04(u8 zone)
{
    gStageData.zone = zone;
    gStageData.act = 1;
    CURRENT_LEVEL = 1;
    sub_8001D58(sub_8003F40, 0x7FFF);
}

void TaskDestructor_8003D28(Task *t) { }

void sub_8003D2C(void)
{
    Player *p;

    p = &gPlayers[gStageData.playerIndex];
    sub_8004CC8(gStageData.playerIndex);
    sub_8004CC8(p->charFlags.partnerIndex);
    DestroyStageEntitiesManager();
    sub_8051140();
}

void TaskDestructor_8003D68(void)
{
    GameOver38 *strc = TASK_DATA(gCurTask);
    VramFree(strc->s.tiles);
}

void sub_8003D84(void) { }

void sub_8003D88(void) { }

void sub_8003D8C(void) { }

void AddLives(u16 count)
{
    if ((u16)(count += gStageData.lives) > 255) {
        gStageData.lives = 255;
    } else {
        gStageData.lives = count;
    }

    // Music manager reset
    gUnknown_03001CF0.unk3 = 0x10;
}

void sub_8003DC4(u16 count)
{
    if ((u16)(count += gStageData.lives) > 255) {
        gStageData.lives = 255;
    } else {
        gStageData.lives = count;
    }
}

void sub_8003DF0(u16 song)
{
    if (gStageData.gameMode != 2) {
        m4aSongNumStart(song);
    }
}

void sub_8003E0C(u16 song)
{
    if (gStageData.gameMode != 2) {
        m4aSongNumStartOrContinue(song);
    }
}

void sub_8003E28(u16 song)
{
    if (gStageData.gameMode != 2) {
        m4aSongNumStop(song);
    }
}

void sub_8003E44(s16 level)
{
    void *vramBase;

    if (gStageData.gameMode != 7) {
        vramBase = OBJ_VRAM0 + 0x4D80;
        if (gStageData.gameMode > 5U) {
            if (gStageData.gameMode == 6) {
                vramBase = OBJ_VRAM0 + 0x4DA0;
            }
        }

        switch (level) {
            case 13:
            case 24:
            case 25:
            case 43:
            case 44:
            case 45:
            case 49:
                vramBase += 2 * TILE_SIZE_4BPP;
                break;
        }
    } else {
        vramBase = OBJ_VRAM0 + 0x2700;
    }
    gVramHeapMaxTileSlots = GET_TILE_NUM_FROM_BASE(vramBase, OBJ_VRAM0 + 0x8000);
    gVramHeapStartAddr = vramBase;
}

void sub_8003F40(void)
{
    s16 level = CURRENT_LEVEL;

    gStageData.timer = 0;
    gStageData.unk21 = 0;
    sub_80040D8(level, 0);
    sub_80040D8(level, 1);
    sub_80040D8(level, 2);
    sub_80040D8(level, 3);
    if (gStageData.gameMode != 2) {
        m4aMPlayAllStop();
    }
    sub_8003FC8();
}
