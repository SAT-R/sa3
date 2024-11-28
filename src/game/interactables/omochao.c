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
    /* 0x62 */ u8 unk62;
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
bool32 OmochaoPickUp(void);
void sub_80384B0(Sprite *s, Sprite *s2);
bool32 sub_8038548(void);
void TaskDestructor_Omochao(struct Task *t);

// const AnimId gUnknown_080CF690[NUM_CHARACTERS] = {ANIM_OMOCHAO1, ANIM_OMOCHAO2, ANIM_OMOCHAO3, ANIM_OMOCHAO4, ANIM_OMOCHAO5 };
extern const AnimId gUnknown_080CF690[NUM_CHARACTERS];

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

    if (OmochaoPickUp()) {
        gCurTask->main = Task_8037F8C;

        omochao->unk60 = 0x10;
        gStageData.unk4 = 4;
        SetSoleBit(gStageData.unkB9, gStageData.playerIndex);
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
    SetSoleBit(gStageData.unkB9, gStageData.playerIndex);
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
    gBldRegs.bldY = 8 - (omochao->unk60 / 2);

    sub_8038548();
}

void Task_8038058(void)
{
    Omochao *omochao;
    Player *p;
    void *data;

    gStageData.unk4 = 4;
    SetSoleBit(gStageData.unkB9, gStageData.playerIndex);
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

void Task_80380FC(void)
{
    Omochao *omochao;
    Player *p;
    void *data;
    u8 i;

    gStageData.unk4 = 4;
    SetSoleBit(gStageData.unkB9, gStageData.playerIndex);
    gStageData.unk85 = 1;

    omochao = TASK_DATA(gCurTask);
    p = &gPlayers[gStageData.playerIndex];
    p->qCamOffsetY += Q(0.25);

    if (omochao->unk60 == 0x10) {
        for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            p = GET_SP_PLAYER_V1(i);

            if (GetBit(omochao->unk62, i)) {
                Player_800ED34(p);
            }
        }
    }

    if (--omochao->unk60 == 0) {
        gDispCnt &= ~DISPCNT_WIN1_ON;
        gBldRegs.bldCnt = 0;
        gBldRegs.bldY = 0;

        gCamera.shiftY = 0;
        for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            p = GET_SP_PLAYER_V1(i);

            p->moveState &= ~MOVESTATE_10000000;

            if (GetBit(omochao->unk62, i)) {
                SetPlayerCallback(p, Player_8005380);
            }
        }

        if (omochao->player->unk56 < 6) {
            sub_8029A18(MUS_DROWNING);
        }

        gCurTask->main = Task_OmochaoInit;
        omochao->player = NULL;

        omochao->s.anim = ANIM_OMOCHAO0;
        omochao->s.variant = 1;
        omochao->s.frameFlags = SPRITE_FLAG(PRIORITY, 1);
        omochao->s.oamFlags = SPRITE_OAM_ORDER(24);

        gStageData.unk4 = 3;
        gStageData.unkB9 = 0;
        gStageData.unk85 = 0;
    } else {
        gWinRegs[WINREG_WIN1H] = WIN_RANGE(TXTBOX_X, TXTBOX_RIGHT);
        gWinRegs[WINREG_WIN1V] = WIN_RANGE((24 + (16 - omochao->unk60) * 2), (88 - (16 - omochao->unk60) * 2));

        gBldRegs.bldY = omochao->unk60 / 2;
    }

    sub_8038548();
}

// (98.00%) https://decomp.me/scratch/qgAUG
// Result
// - TRUE: Picked up
NONMATCH("asm/non_matching/game/interactables/omochao__OmochaoPickUp.inc", bool32 OmochaoPickUp(void))
{
    u8 sb = 0;
    Omochao *omochao = TASK_DATA(gCurTask);
    Sprite *s = &omochao->s;
    MapEntity *me = omochao->base.me;
    Player *p;
    s16 worldX, worldY;
    u8 i;

    worldX = TO_WORLD_POS(omochao->base.spriteX, omochao->base.regionX);
    worldY = TO_WORLD_POS(me->y, omochao->base.regionY);

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        p = GET_SP_PLAYER_V1(i);

        if ((p->charFlags.someIndex != 2) && (p->charFlags.someIndex != 5) && !(p->moveState & MOVESTATE_IN_AIR)
            && (p->charFlags.anim0 == 0) && !(p->moveState & MOVESTATE_COLLIDING_ENT) && !sub_802C080(p)
            && sub_8020700(s, worldX, worldY, 0, p, 0) && (p->keyInput2 & DPAD_UP)) {
            SetSoleBit(sb, i);
        }
    }

    if (sb != 0) {
        omochao->unk62 = sb;
        sub_80236C8(&omochao->s2, omochao->textId, omochao->data);

        for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            // _08038404
            p = GET_SP_PLAYER_V1(i);

            if (GetBit(sb, i)) {
                sub_8016F28(p);
                Player_800ED14(p);

                omochao->player = p;

                omochao->s.anim = gUnknown_080CF690[p->charFlags.character];
                omochao->s.variant = 0;

                omochao->s.oamFlags = p->spriteData->s.oamFlags + SPRITE_OAM_ORDER(1);
                omochao->s.frameFlags = p->spriteData->s.frameFlags & SPRITE_FLAG_MASK_PRIORITY;

                if (!(p->moveState & MOVESTATE_FACING_LEFT)) {
                    SPRITE_FLAG_SET(&omochao->s, X_FLIP);
                } else {
                    SPRITE_FLAG_CLEAR(&omochao->s, X_FLIP);
                }

                Player_PlaySong(p, SE_PICKUP_OMOCHAO_2);
            } else {
                p->moveState |= MOVESTATE_10000000;
            }
        }

        return TRUE;
    }

    return FALSE;
}
END_NONMATCH

void sub_80384B0(Sprite *s, Sprite *s2)
{
    s->tiles = ALLOC_TILES(ANIM_OMOCHAO0);
    s->anim = ANIM_OMOCHAO0;
    s->variant = 1;
    s->oamFlags = SPRITE_OAM_ORDER(24);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
    UpdateSpriteAnimation(s);

    s2->tiles = ALLOC_TILES(ANIM_UI_PROMPT_BUTTON);
    s2->anim = ANIM_UI_PROMPT_BUTTON;
    s2->variant = 0;
    s2->oamFlags = SPRITE_OAM_ORDER(0);
    s2->animCursor = 0;
    s2->qAnimDelay = 0;
    s2->prevVariant = -1;
    s2->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s2->palId = 15;
    s2->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s2->frameFlags = SPRITE_FLAG(PRIORITY, 0);
    UpdateSpriteAnimation(s2);
}

bool32 sub_8038548(void)
{
    Omochao *omochao = TASK_DATA(gCurTask);
    Sprite *s = &omochao->s;
    MapEntity *me = omochao->base.me;
    s16 worldX, worldY;

    worldX = TO_WORLD_POS(omochao->base.spriteX, omochao->base.regionX);
    worldY = TO_WORLD_POS(me->y, omochao->base.regionY);

    if (!IsWorldPtActive(worldX, worldY)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, omochao->base.spriteX);
        TaskDestroy(gCurTask);
        return FALSE;
    }

    if (omochao->player) {
        s->x = I(omochao->player->qWorldX) - gCamera.x;
        s->y = I(omochao->player->qWorldY) - gCamera.y;
    } else {
        s->x = worldX - gCamera.x;
        s->y = worldY - gCamera.y;
    }

    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    return TRUE;
}

void TaskDestructor_Omochao(struct Task *t)
{
    Omochao *omochao = TASK_DATA(t);
    VramFree(omochao->s.tiles);
    VramFree(omochao->s2.tiles);
    EwramFree(omochao->data);
}