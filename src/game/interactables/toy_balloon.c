#include "sprite.h"
#include "malloc_vram.h"
#include "task.h"
#include "module_unclear.h"

#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/player_callbacks.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/songs.h"

// There is difference between the two types.
// The type gets ignored in CreateEntity_ToyBalloon.
// The color (/sprite variant) gets determined by the MapEntity's data:
// (me->d.uData[4] >> 6)
#define TOY_BALLOON_TYPE_0 0
#define TOY_BALLOON_TYPE_1 1

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ s16 destructDelay;
    /* 0x36 */ u8 variant;
    /* 0x37 */ u8 unk37;
    /* 0x38 */ s32 worldX;
    /* 0x3C */ s32 worldY;
} ToyBalloon; /* size: 0x40 */

static void Task_ToyBalloon(void);
static void TaskDestructor_ToyBalloon(struct Task *);
static void ToyBalloon_Update(void);
static void ToyBalloon_InitSprite(Sprite *s, u16 variant);
static void sub_804BAEC(Sprite *s, u16 variant);

static void CreateEntity_ToyBalloon(u32 type, MapEntity *me, u16 regionX, u16 regionY,
                                    u8 id)
{
    struct Task *t = TaskCreate(Task_ToyBalloon, sizeof(ToyBalloon), 0x2100, 0,
                                TaskDestructor_ToyBalloon);
    ToyBalloon *balloon = TASK_DATA(t);
    Sprite *s;
    s16 i;

    balloon->base.regionX = regionX;
    balloon->base.regionY = regionY;
    balloon->base.me = me;
    balloon->base.spriteX = me->x;
    balloon->base.spriteY = id;
    balloon->destructDelay = 0;
    balloon->variant = (me->d.uData[4] >> 6);

    for (i = 0; (i <= 5) && !((me->d.uData[4] >> i) & 0x1); i++) {
        ;
    }

    balloon->unk37 = 0;

    balloon->worldX = TO_WORLD_POS(me->x, regionX);
    balloon->worldY = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    s = &balloon->s;
    ToyBalloon_InitSprite(s, balloon->variant);
}

static void Task_ToyBalloon(void)
{
    ToyBalloon *balloon = TASK_DATA(gCurTask);
    Sprite *s = &balloon->s;
    Player *p;
    s16 i;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        if (i == 0) {
            p = &gPlayers[gStageData.charId];
        } else {
            p = &gPlayers[p->charFlags.partnerIndex];
        }

        if (!sub_802C0D4(p) && (s->anim == ANIM_TOY_BALLOON)) {
            if (sub_8020700(s, balloon->worldX, balloon->worldY, 0, p, 0)) {
                if (p->qSpeedAirX > Q(2.5)) {
                    SetPlayerCallback(p, (void *)PlayerCB_8009B4C);
                } else {
                    SetPlayerCallback(p, (void *)PlayerCB_800EA0C);
                }

                p->unkA4 = balloon->unk37 & 7;
                sub_804BAEC(s, balloon->variant);

                balloon->destructDelay = -10;
                sub_8003DF0(SE_MINECART_DESTROYED);
            }
        }
    }

    ToyBalloon_Update();
}

static void ToyBalloon_Update(void)
{
    ToyBalloon *balloon = TASK_DATA(gCurTask);
    Sprite *s = &balloon->s;
    MapEntity *me = balloon->base.me;
    s16 worldX, worldY;

    worldX = balloon->worldX;
    worldY = balloon->worldY;

    if (!IsPointInScreenRect(worldX, worldY)) {
        me->x = balloon->base.spriteX;
        TaskDestroy(gCurTask);
        return;
    }

    // TODO: Merge the two ifs
    if ((balloon->destructDelay < 0) && (++balloon->destructDelay == 0)) {
        me->x = balloon->base.spriteX;
        TaskDestroy(gCurTask);
        return;
    }

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void CreateEntity_Interactable129(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    CreateEntity_ToyBalloon(TOY_BALLOON_TYPE_0, me, regionX, regionY, id);
}

void CreateEntity_Interactable130(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    CreateEntity_ToyBalloon(TOY_BALLOON_TYPE_1, me, regionX, regionY, id);
}

static void TaskDestructor_ToyBalloon(struct Task *t)
{
    ToyBalloon *balloon = TASK_DATA(t);
    VramFree(balloon->s.tiles);
}

static void ToyBalloon_InitSprite(Sprite *s, u16 variant)
{
    s->tiles = ALLOC_TILES(ANIM_TOY_BALLOON);
    s->anim = ANIM_TOY_BALLOON;
    s->variant = variant;
    s->oamFlags = SPRITE_OAM_ORDER(24);
    s->animCursor = 0;
    s->timeUntilNextFrame = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
    UpdateSpriteAnimation(s);
}

static void sub_804BAEC(Sprite *s, u16 variant)
{
    s->anim = ANIM_TOY_BALLOON_POPPED;
    s->variant = variant;
}
