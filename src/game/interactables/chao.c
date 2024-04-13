#include <string.h>

#include "global.h"
#include "malloc_ewram.h"
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
    /* 0x34 */ u8 unk34[0x28];
    /* 0x5C */ ScreenFade fade;
    /* 0x68 */ u8 filler68[0x4];
    /* 0x6C */ s16 worldX;
    /* 0x6E */ s16 worldY;
    /* 0x70 */ u8 unk70;
    /* 0x71 */ u8 chaoKind;
    /* 0x72 */ u8 unk72;
    /* 0x73 */ s8 unk73;
    /* 0x74 */ void *someData; // allocated in sub_804E210
} IAChao; /* size: 0x78 */

void Task_ChaoMain(void);
void Task_804E1AC(void);
void sub_804E2D8(void);
void sub_804E530(IAChao *);
void sub_804E5CC(void);
void Task_804E66C(void);
void TaskDestructor_IAChao(struct Task *);

extern bool32 sub_8020700(Sprite *s, s32 worldX, s32 worldY, s16 p3, Player *p, s16 p5);

extern u8 gUnknown_080D0410[7][10][2];
extern u8 gUnknown_080D049C[10];

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
    chao->base.spriteY = id;

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
    chao->base.spriteY = id;

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

                p->unk9E = 0;
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

                chao->unk72 = 0x10;

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
    u8 array[10];
    u8 lastChaoId;

    // TODO: This might be an implicit memcpy
    memcpy(array, gUnknown_080D049C, sizeof(array));

    chao = TASK_DATA(gCurTask);
    lastChaoId = GetChaoCount(gStageData.zone) - 1;

    chao->someData = EwramMalloc(0xCAC);

    sub_80236C8(&chao->unk34, array[lastChaoId], chao->someData);

    chao->unk72 = 0x10;

    p = &gPlayers[gStageData.charId];

    if (p->unk56 <= 5) {
        sub_80299FC();
    }

    sub_8004E98(p, SE_PICKUP_OMOCHAO_2);

    if (lastChaoId == 9) {
        sub_8004E98(p, SE_672);
    } else {
        sub_8004E98(p, VOICE__CHAO__COLLECTED);
    }

    gCurTask->main = sub_804E2D8;
}

#if 01
#endif
