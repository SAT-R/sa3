#include "global.h"
#include "sprite.h"
#include "task.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/songs.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ u8 filler34[0x38];
    /* 0x6C */ s16 worldX;
    /* 0x6E */ s16 worldY;
    /* 0x70 */ u8 unk70;
    /* 0x71 */ u8 chaoKind;
    /* 0x72 */ u8 filler72[0x2];
    /* 0x74 */ u32 flags;
} IAChao; /* size: 0x78 */

void Task_ChaoMain(void);
void sub_804E530(IAChao *);
void sub_804E5CC(void);
void TaskDestructor_IAChao(struct Task *);
u16 GetChaoFlag(u16 zoneIndex, u16 chaoIndex);
void SetChaoFlag(u16 chaoIndex);

extern bool32 sub_8020700(Sprite *s, s32 worldX, s32 worldY, s16 p3, Player *p, s16 p5);

extern u8 gUnknown_080D0410[7][10][2];

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
    chao->flags = chaoFlag;

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
    chao->flags = 0;

    s = &chao->s;
    s->x = chao->worldX - gCamera.x;
    s->y = chao->worldY - gCamera.y;

    SET_MAP_ENTITY_INITIALIZED(me);
    sub_804E530(chao);
}

#if 0
void Task_ChaoMain(void)
{
    IAChao *chao = TASK_DATA(gCurTask);
    Sprite *s;
    s16 worldX, worldY;
    Player *p;
    bool32 r6;

    if(chao->chaoKind == CHAOKIND_PLAYGROUND) {
        sub_804E5CC();
        return;
    }

    worldX = chao->worldX;
    worldY = chao->worldY;
    
    p = &gPlayers[gStageData.charId];
    r6 = sub_802C080(p);
    if(r6) {
        sub_804E5CC();
        return;
    }

    s = &chao->s;
    // r6 = 0
    if(sub_8020700(s, worldX, worldY, 0, p, r6)) {
        SetChaoFlag(chao->chaoKind);

        p->unk9E = r6; // r6 = 0

    } else {
        sub_804E5CC();
        return;
    }
}
#endif
