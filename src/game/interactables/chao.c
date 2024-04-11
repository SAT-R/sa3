#include "global.h"
#include "sprite.h"
#include "task.h"
#include "game/camera.h"
#include "game/entity.h"
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
void TaskDestructor_IAChao(struct Task *);
u16 GetChaoFlag(u16 ZoneIndex, u16 ChaoIndex);

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
    // _0804DE82

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