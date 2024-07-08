#include <string.h>

#include "global.h"
#include "core.h"
#include "malloc_ewram.h"
#include "malloc_vram.h"
#include "module_unclear.h"
#include "sprite.h"
#include "task.h"
#include "game/camera.h"
#include "game/chao.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/screen_fade.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/move_states.h"
#include "constants/songs.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x0C */ Sprite s2;
    /* 0x5C */ ScreenFade fade;
    /* 0x68 */ void *vram;
    /* 0x6C */ s16 worldX;
    /* 0x6E */ s16 worldY;
    /* 0x70 */ u8 unk70;
    /* 0x71 */ u8 chaoKind;
    /* 0x72 */ u8 blend;
    /* 0x73 */ s8 unk73;
    /* 0x74 */ void *someData; // allocated in sub_804E210
} IAChao; /* size: 0x78 */

typedef struct {
    /* 0x04 */ AnimId anim;
    /* 0x06 */ u16 variant;
} ChaoTileInfo;

void Task_ChaoMain(void);
void Task_804E1AC(void);
void Task_804E2D8(void);
void Task_804E398(void);
void Task_804E41C(void);
void sub_804E530(IAChao *);
void sub_804E5CC(void);
void Task_804E66C(void);
void TaskDestructor_IAChao(struct Task *);

extern u8 gUnknown_080D0410[7][NUM_CHAO_PER_ZONE][2];
extern u8 gUnknown_080D049C[NUM_CHAO_PER_ZONE];
extern const u16 sChaoIATilesInfo[3][2];

#define CHAOKIND_PLAYGROUND 0xFF

void CreateEntity_ChaoInStage(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t;
    IAChao *chao;
    Sprite *s;
    u32 chaoKind;
    s32 worldX, worldY;
    u16 chaoFlag;

    if (gStageData.gameMode != GAME_MODE_SINGLE_PLAYER) {
        SET_MAP_ENTITY_INITIALIZED(me);
        return;
    }

    chaoKind = me->d.uData[4] & 0xF;
    chaoFlag = GetChaoFlag(gStageData.zone, chaoKind);
    if (chaoFlag) {
        SET_MAP_ENTITY_INITIALIZED(me);
        return;
    }

    t = TaskCreate(Task_ChaoMain, sizeof(IAChao), 0x2100, 0, TaskDestructor_IAChao);
    chao = TASK_DATA(t);

    chao->base.regionX = regionX;
    chao->base.regionY = regionY;
    chao->base.me = me;
    chao->base.spriteX = me->x;
    chao->base.id = id;

    worldX = TO_WORLD_POS(me->x, regionX);
    chao->worldX = worldX;
    worldY = TO_WORLD_POS(me->y, regionY);
    chao->worldY = worldY;

    chao->unk70 = (me->d.uData[4] >> 4);
    chao->chaoKind = chaoKind;
    chao->someData = NULL;

    s = &chao->s;
    s->x = chao->worldX - gCamera.x;
    s->y = chao->worldY - gCamera.y;

    SET_MAP_ENTITY_INITIALIZED(me);
    sub_804E530(chao);
}

void CreateEntity_ChaoInPlayground(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t;
    IAChao *chao;
    Sprite *s;
    u32 chaoKind;
    s32 worldX, worldY;

    if ((gStageData.gameMode != GAME_MODE_SINGLE_PLAYER)
        && (gStageData.gameMode != GAME_MODE_5)) {
        SET_MAP_ENTITY_INITIALIZED(me);
        return;
    }

    chaoKind = me->d.uData[4] & 0xF;
    if (!GetChaoFlag(gStageData.zone, chaoKind)) {
        SET_MAP_ENTITY_INITIALIZED(me);
        return;
    }

    t = TaskCreate(Task_ChaoMain, sizeof(IAChao), 0x2100, 0, TaskDestructor_IAChao);
    chao = TASK_DATA(t);

    chao->base.regionX = regionX;
    chao->base.regionY = regionY;
    chao->base.me = me;
    chao->base.spriteX = me->x;
    chao->base.id = id;

    worldX = TO_WORLD_POS(me->x, regionX);
    chao->worldX = worldX;
    worldY = TO_WORLD_POS(me->y, regionY);
    chao->worldY = worldY - gUnknown_080D0410[gStageData.zone][chaoKind][1];

    chao->unk70 = gUnknown_080D0410[gStageData.zone][chaoKind][0];
    ;
    chao->chaoKind = 0xFF;
    chao->someData = 0;

    s = &chao->s;
    s->x = chao->worldX - gCamera.x;
    s->y = chao->worldY - gCamera.y;

    SET_MAP_ENTITY_INITIALIZED(me);
    sub_804E530(chao);
}

void Task_ChaoMain(void)
{
    IAChao *chao = TASK_DATA(gCurTask);
    Sprite *s;
    s16 worldX, worldY;
    Player *p, *partner;
    bool32 r6;
    ScreenFade *fade;

    if (chao->chaoKind != CHAOKIND_PLAYGROUND) {
        worldX = chao->worldX;
        worldY = chao->worldY;

        p = &gPlayers[gStageData.charId];
        if (!sub_802C080(p)) {
            s = &chao->s;
            if (sub_8020700(s, worldX, worldY, 0, p, 0)) {
                SetChaoFlag(chao->chaoKind);

                p->qCamOffsetY = 0;
                fade = &chao->fade;
                chao->unk73 = 2;

                fade->window = 0;
                fade->flags = SCREEN_FADE_FLAG_LIGHTEN;
                fade->brightness = Q(0.0);
                fade->speed = Q(2.0);
                fade->bldCnt = (BLDCNT_EFFECT_LIGHTEN | BLDCNT_TGT1_ALL);
                fade->bldAlpha = 0;
                ScreenFadeUpdateValues(fade);

                gStageData.unk4 = 0x4;
                gStageData.unkB9 = (1 << gStageData.charId);
                gStageData.unk85 = 1;

                chao->blend = 0x10;

                p->moveState |= MOVESTATE_10000000;

                partner = &gPlayers[p->charFlags.partnerIndex];

                if ((partner->charFlags.someIndex) == 0x2) {
                    partner->moveState |= MOVESTATE_10000000;
                }

                gCurTask->main = Task_804E1AC;
                return;
            }
        }
    }

    sub_804E5CC();
}

void Task_804E1AC(void)
{
    IAChao *chao = TASK_DATA(gCurTask);

    ScreenFade *fade = &chao->fade;

    if (UpdateScreenFade(fade) != SCREEN_FADE_RUNNING) {
        if (--chao->unk73 == 0) {
            sub_8001E58();

            gCurTask->main = Task_804E66C;

            fade->window = 0;
            fade->flags = SCREEN_FADE_FLAG_2;
            fade->brightness = Q(0.0);
            fade->speed = Q(2.0);
            fade->bldCnt = (BLDCNT_EFFECT_LIGHTEN | BLDCNT_TGT1_ALL);
            fade->bldAlpha = 0;
            ScreenFadeUpdateValues(fade);
        }
    }
}

void sub_804E210(void)
{
    Player *p;
    IAChao *chao;
    u8 array[NUM_CHAO_PER_ZONE];
    u8 lastChaoId;

    // TODO: This might be an implicit memcpy
    memcpy(array, gUnknown_080D049C, sizeof(array));

    chao = TASK_DATA(gCurTask);
    lastChaoId = GetChaoCount(gStageData.zone) - 1;

    // TODO: Could this be the scruct (size) for a message box prompt?
    chao->someData = EwramMalloc(0xCAC);

    sub_80236C8(&chao->s2, array[lastChaoId], chao->someData);

    chao->blend = 0x10;

    p = &gPlayers[gStageData.charId];

    if (p->unk56 <= 5) {
        sub_80299FC();
    }

    sub_8004E98(p, SE_PICKUP_OMOCHAO_2);

    if (lastChaoId == (NUM_CHAO_PER_ZONE - 1)) {
        sub_8004E98(p, SE_672);
    } else {
        sub_8004E98(p, VOICE__CHAO__COLLECTED);
    }

    gCurTask->main = Task_804E2D8;
}

void Task_804E2D8(void)
{
    IAChao *chao = TASK_DATA(gCurTask);
    Player *p = &gPlayers[gStageData.charId];

    chao->blend--;
    chao->unk73 = 16 - chao->blend;

    gDispCnt |= DISPCNT_WIN1_ON;
    gDispCnt &= ~DISPCNT_WIN0_ON;

    gWinRegs[WINREG_WIN1H] = WIN_RANGE(32, DISPLAY_WIDTH - 32);
    gWinRegs[WINREG_WIN1V] = WIN_RANGE((chao->blend * 2) + 24, 88 - (chao->blend * 2));
    gWinRegs[WINREG_WININ] = (WININ_WIN1_ALL | (WININ_WIN0_BG_ALL | WININ_WIN0_OBJ));
    gWinRegs[WINREG_WINOUT] = (WINOUT_WIN01_BG_ALL | WINOUT_WIN01_OBJ);

    gBldRegs.bldCnt
        = BLDCNT_EFFECT_LIGHTEN | (BLDCNT_TGT1_ALL & ~BLDCNT_TGT1_OBJ) | BLDCNT_TGT2_ALL;
    gBldRegs.bldY = 8 - (chao->blend / 2u);

    p->qCamOffsetY -= Q(0.25);

    if (chao->blend == 0) {
        gCurTask->main = Task_804E398;
    }
}

void Task_804E398(void)
{
    Player *p = &gPlayers[gStageData.charId];
    IAChao *chao = TASK_DATA(gCurTask);
    void *unkData;

    gWinRegs[WINREG_WIN1H] = WIN_RANGE(32, DISPLAY_WIDTH - 32);
    gWinRegs[WINREG_WIN1V] = WIN_RANGE(24, 88);

    gBldRegs.bldY = 8;

    p->qCamOffsetY = -Q(4.0);
    unkData = chao->someData;
    if (sub_8023734(unkData)) {
        chao->blend = 0x10;
        gCurTask->main = Task_804E41C;
    }

    sub_80239A8(unkData);
}

void Task_804E41C(void)
{
    Player *p = &gPlayers[gStageData.charId];
    Player *partner;
    IAChao *chao = TASK_DATA(gCurTask);
    s32 bld;

    chao->blend--;
    chao->unk73 = chao->blend;

    p->qCamOffsetY += Q(0.25);

    if (chao->blend != 0) {

        gWinRegs[WINREG_WIN1H] = WIN_RANGE(32, DISPLAY_WIDTH - 32);
        bld = (16 - chao->blend) * 2;
        gWinRegs[WINREG_WIN1V] = WIN_RANGE(bld + 24, 88 - bld);

        gBldRegs.bldY = chao->blend / 2u;
    } else {
        gDispCnt &= ~0x4000;
        gBldRegs.bldCnt = 0;
        gBldRegs.bldY = 0;

        p->moveState &= ~MOVESTATE_10000000;

        partner = &gPlayers[p->charFlags.partnerIndex];

        if ((partner->charFlags.someIndex) == 0x2) {
            partner->moveState &= ~MOVESTATE_10000000;
        }

        gStageData.unk4 = 3;
        gStageData.unkB9 = 0;
        gStageData.unk85 = 0;

        TaskDestroy(gCurTask);

        if (p->unk56 <= 5) {
            sub_8029A18(75);
        }
    }
}

void sub_804E530(IAChao *chao)
{
    Sprite *s, *s2;
    u8 unk70 = chao->unk70;
    void *ptr = VramMalloc(20);

    // TODO: Use ALLOC_TILES() here with the proper anim!
    chao->vram = ptr;

    s = &chao->s;
    s->tiles = ptr;

    s->anim = sChaoIATilesInfo[unk70][0];
    s->variant = sChaoIATilesInfo[unk70][1];
    s->oamFlags = SPRITE_OAM_ORDER(24);
    s->animCursor = 0;
    s->timeUntilNextFrame = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = 0x1000;
    UpdateSpriteAnimation(s);

    s2 = &chao->s2;
    s2->tiles = chao->vram + (16 * TILE_SIZE_4BPP);
    s2->anim = ANIM_UI_PROMPT_BUTTON;
    s2->variant = 0;
    s2->oamFlags = SPRITE_OAM_ORDER(0);
    s2->animCursor = 0;
    s2->timeUntilNextFrame = 0;
    s2->prevVariant = -1;
    s2->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s2->palId = 15;
    s2->hitboxes[0].index = -1;
    s2->frameFlags = 0;
    UpdateSpriteAnimation(s2);
}

void sub_804E5CC(void)
{
    IAChao *chao = TASK_DATA(gCurTask);
    Sprite *s = &chao->s;
    MapEntity *me = chao->base.me;

    s16 worldX, worldY;

    worldX = chao->worldX;
    worldY = chao->worldY;

    if (!IsPointInScreenRect(worldX, worldY)) {
        me->x = chao->base.spriteX;
        TaskDestroy(gCurTask);
        return;
    }

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

#if 01
#endif

void TaskDestructor_IAChao(struct Task *t)
{
    IAChao *chao = TASK_DATA(t);

    VramFree(chao->vram);

    if (chao->someData) {
        EwramFree(chao->someData);
    }
}

void Task_804E66C(void)
{
    IAChao *chao = TASK_DATA(gCurTask);

    if (UpdateScreenFade(&chao->fade) != SCREEN_FADE_RUNNING) {
        sub_804E210();
        sub_8003DF0(VOICE__CHAO__COLLECTED);
    }
}