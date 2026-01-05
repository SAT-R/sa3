#include "global.h"
#include "task.h"
#include "malloc_vram.h"
#include "module_unclear.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ s16 worldX;
    /* 0x36 */ s16 worldY;
    /* 0x38 */ u8 unk38;
} IA_MP024; /* size: 0x3C */

static void Task_MultiplayerChao(void);
static void ChaoDestroyOrUpdateAnim(void);
static void TaskDestructor_MultiplayerChao(struct Task *t);
static void ChaoInitSprite(Sprite *s);

void CreateEntity_MultiplayerChao(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    u32 uData = me->d.uData[4];

    if (gStageData.taskCheese == 0) {
        u32 unk56 = gUnknown_03001060.unk56;

        if (unk56 == uData) {
            struct Task *t = TaskCreate(Task_MultiplayerChao, sizeof(IA_MP024), 0x2100, 0, TaskDestructor_MultiplayerChao);
            IA_MP024 *ia = TASK_DATA(t);
            Sprite *s;

            ia->base.regionX = regionX;
            ia->base.regionY = regionY;
            ia->base.me = me;
            ia->base.meX = me->x;
            ia->base.id = id;

            ia->worldX = TO_WORLD_POS(me->x, regionX);
            ia->worldY = TO_WORLD_POS(me->y, regionY);
            ia->unk38 = unk56;

            s = &ia->s;
            s->x = ia->worldX - gCamera.x;
            s->y = ia->worldY - gCamera.y;
            ChaoInitSprite(s);
        }
    }

    SET_MAP_ENTITY_INITIALIZED(me);
}

static void Task_MultiplayerChao(void)
{
    bool32 r7 = FALSE;
    IA_MP024 *ia = TASK_DATA(gCurTask);
    Sprite *s = &ia->s;
    Player *p = &gPlayers[gStageData.playerIndex];
    // NOTE: Changing worldX|Y to s32 is non-matching
    s16 worldX, worldY;

    worldX = ia->worldX;
    worldY = ia->worldY;

    if (sub_8020700(s, worldX, worldY, 0, p, r7)) {
        sub_80276A8(gStageData.playerIndex);

        sub_802954C(p, worldX, worldY);
        r7 = TRUE;
    }

    if (gStageData.taskCheese != 0) {
        r7 = TRUE;
    }

    if (r7) {
        TaskDestroy(gCurTask);
        return;
    } else {
        ChaoDestroyOrUpdateAnim();
    }
}

static void ChaoDestroyOrUpdateAnim(void)
{
    IA_MP024 *ia = TASK_DATA(gCurTask);
    Sprite *s = &ia->s;
    MapEntity *me = ia->base.me;
    s16 worldX, worldY;

    worldX = ia->worldX;
    worldY = ia->worldY;

    if (!IsWorldPtActive(worldX, worldY)) {
        me->x = ia->base.meX;
        TaskDestroy(gCurTask);
        return;
    } else {
        s->x = worldX - gCamera.x;
        s->y = worldY - gCamera.y;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

static void TaskDestructor_MultiplayerChao(struct Task *t)
{
    IA_MP024 *ia = TASK_DATA(t);
    VramFree(ia->s.tiles);
}

static void ChaoInitSprite(Sprite *s)
{
    s->tiles = ALLOC_TILES(ANIM_CHAO_SITTING);
    s->anim = ANIM_CHAO_SITTING;
    s->variant = 0;
    s->oamFlags = SPRITE_OAM_ORDER(24);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
    UpdateSpriteAnimation(s);
}