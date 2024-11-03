#include "global.h"
#include "module_unclear.h"
#include "core.h"
#include "sprite.h"
#include "malloc_ewram.h"
#include "malloc_vram.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/player_callbacks.h"
#include "game/save.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"
#include "constants/songs.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ Sprite s2;
    /* 0x5C */ Player *player;
    /* 0x60 */ u8 unk60;
    /* 0x61 */ u8 textId;
    /* 0x61 */ u8 unk62;
    /* 0x64 */ void *data;
} Omochao; /* 0x68 */

#define TXTBOX_X      ((DISPLAY_WIDTH / 2) - 88)
#define TXTBOX_Y      ((DISPLAY_HEIGHT / 2) - 56)
#define TXTBOX_WIDTH  (176)
#define TXTBOX_HEIGHT (64)
#define TXTBOX_RIGHT  (TXTBOX_X + TXTBOX_WIDTH)
#define TXTBOX_BOTTOM (TXTBOX_Y + TXTBOX_HEIGHT)

// NOTE: It checks for the GAME_MODE twice, making the entire last condition redundant!
//       Modern compilers optimize that out.
#define SHOULD_SPAWN(_id)                                                                                                                  \
    ((gStageData.gameMode == GAME_MODE_SINGLE_PLAYER)                                                                                      \
     && (((_id != 44) || (gSaveGame.unlockedZones > ZONE_FINAL))                                                                           \
         && ((me->d.uData[4] != 3 && me->d.uData[4] != 8 && me->d.uData[4] != 9) || (gStageData.gameMode == GAME_MODE_SINGLE_PLAYER))))

void Task_OmochaoInit(void);
void Task_8037F8C(void);
void Task_8038058(void);
void Task_80380FC(void);
bool32 sub_80382EC(void);
void sub_80384B0(Sprite *s, Sprite *s2);
bool32 sub_8038548(void);
void TaskDestructor_Omochao(struct Task *t);

// (99.92%) https://decomp.me/scratch/8EpcD
NONMATCH("asm/non_matching/game/interactables/omochao__CreateEntity_Omochao.inc",
         void CreateEntity_Omochao(MapEntity *me, u16 regionX, u16 regionY, u8 id))
{
    u8 textId = me->d.uData[4];

    if (SHOULD_SPAWN(textId)) {
        struct Task *t = TaskCreate(Task_OmochaoInit, sizeof(Omochao), 0x2100, 0, TaskDestructor_Omochao);
        Omochao *omochao = TASK_DATA(t);
        Sprite *s = &omochao->s;
        Sprite *s2 = &omochao->s2;

        omochao->data = EwramMalloc(0xCAC);

        omochao->base.regionX = regionX;
        omochao->base.regionY = regionY;
        omochao->base.me = me;
        omochao->base.spriteX = me->x;
        omochao->base.id = id;
        omochao->textId = textId;
        omochao->unk60 = 0x10;
        omochao->unk62 = 0;
        omochao->player = NULL;

        // NOTE: This should be screen pos, not world pos
        s->x = TO_WORLD_POS(me->x, regionX);
        s->y = TO_WORLD_POS(me->y, regionY);

        sub_80384B0(s, s2);
    }

    SET_MAP_ENTITY_INITIALIZED(me);
}
END_NONMATCH

void Task_OmochaoInit(void)
{
    Omochao *omochao = TASK_DATA(gCurTask);

    if (sub_80382EC()) {
        gCurTask->main = Task_8037F8C;

        omochao->unk60 = 0x10;
        gStageData.unk4 = 4;
        gStageData.unkB9 = (1 << gStageData.playerIndex);
        gStageData.unk85 = 1;

        sub_8003DF0(SE_PICKUP_OMOCHAO_1);

        if (omochao->player->unk56 < 6) {
            sub_80299FC();
        }
    }

    sub_8038548();
}

void Task_8037F8C(void)
{
    Omochao *omochao;
    Player *p;

    gStageData.unk4 = 4;
    gStageData.unkB9 = (1 << gStageData.playerIndex);
    gStageData.unk85 = 1;

    omochao = TASK_DATA(gCurTask);
    p = &gPlayers[gStageData.playerIndex];
    p->qCamOffsetY -= Q(0.25);

    if (--omochao->unk60 == 0) {
        gCurTask->main = Task_8038058;
    }

    gDispCnt |= DISPCNT_WIN1_ON;
    gDispCnt &= ~DISPCNT_WIN0_ON;

    gWinRegs[WINREG_WIN1H] = WIN_RANGE(TXTBOX_X, TXTBOX_RIGHT);
    gWinRegs[WINREG_WIN1V] = WIN_RANGE((omochao->unk60 * 2 + 24), (88 - omochao->unk60 * 2));

    gWinRegs[WINREG_WININ] = (WININ_WIN1_ALL | (WININ_WIN0_ALL & ~WININ_WIN0_CLR));
    gWinRegs[WINREG_WINOUT] = (WINOUT_WIN01_ALL & ~WINOUT_WIN01_CLR);

    gBldRegs.bldCnt = 0x3FAF;
    gBldRegs.bldY = 8 - (omochao->unk60 >> 1);

    sub_8038548();
}

void Task_8038058(void)
{
    Omochao *omochao;
    Player *p;
    void *data;

    gStageData.unk4 = 4;
    gStageData.unkB9 = (1 << gStageData.playerIndex);
    gStageData.unk85 = 1;

    omochao = TASK_DATA(gCurTask);
    data = omochao->data;

    p = &gPlayers[gStageData.playerIndex];

    gWinRegs[WINREG_WIN1H] = WIN_RANGE(TXTBOX_X, TXTBOX_RIGHT);
    gWinRegs[WINREG_WIN1V] = WIN_RANGE(TXTBOX_Y, TXTBOX_BOTTOM);

    gBldRegs.bldY = 8;

    p->qCamOffsetY = -Q(4);

    if (sub_8038548()) {
        if (sub_8023734(data)) {
            omochao->unk60 = 0x10;
            gCurTask->main = Task_80380FC;
        }

        sub_80239A8(data);
    }
}