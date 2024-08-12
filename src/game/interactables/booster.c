#include "global.h"
#include "module_unclear.h"
#include "malloc_vram.h"
#include "sprite.h"
#include "task.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/player_callbacks.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"
#include "constants/songs.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ u8 kind;
    /* 0x35 */ u8 unk35;
    /* 0x36 */ u8 unk36;
} Booster; /* size: 0x38 */

enum BoosterKind {
    DEFAULT = 0,
    TILT_RIGHT_SMALL = 1,
    TILT_LEFT_SMALL = 2,
    TILT_RIGHT_BIG = 3,
    TILT_LEFT_BIG = 4,
    WALL = 5,
};

void Task_Booster(void);
static void UpdateSprite(void);
static void InitSprite(u8 kind, u8 xFlip, u8 yFlip, Sprite *s);
void TaskDestructor_Booster(struct Task *t);

void CreateEntity_Booster(u8 kind, MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Booster, sizeof(Booster), 0x2100, 0, TaskDestructor_Booster);
    Booster *booster = TASK_DATA(t);
    Sprite *s = &booster->s;

    booster->base.regionX = regionX;
    booster->base.regionY = regionY;
    booster->base.me = me;
    booster->base.spriteX = me->x;
    booster->base.id = id;
    booster->kind = kind;

    booster->unk35 = me->d.uData[4] & 1;
    booster->unk36 = (me->d.uData[4] >> 1) & 1;

    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);
    SET_MAP_ENTITY_INITIALIZED(me);

    InitSprite(kind, booster->unk35, booster->unk36, s);
}

void Task_Booster(void)
{
    Booster *booster = TASK_DATA(gCurTask);
    Sprite *s = &booster->s;
    MapEntity *me = booster->base.me;
    s16 worldX, worldY;
    s16 qGroundSpeed;
    s16 i;

    worldX = TO_WORLD_POS(booster->base.spriteX, booster->base.regionX);
    worldY = TO_WORLD_POS(me->y, booster->base.regionY);

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p;

        if ((gStageData.gameMode == GAME_MODE_MP_SINGLE_PACK) && (i != 0)) {
            continue;
        }

        if (i == 0) {
            p = &gPlayers[gStageData.charId];
        } else {
            p = &gPlayers[p->charFlags.partnerIndex];
        }

        if ((p->charFlags.someIndex == 1) || (p->charFlags.someIndex == 2) || (p->charFlags.someIndex == 4)) {
            if (!sub_802C0D4(p)) {
                if (p->moveState & MOVESTATE_IN_AIR) {
                    continue;
                }

                if (!sub_8020700(s, worldX, worldY, 0, p, 0)) {
                    continue;
                }

                sub_8004E98(p, SE_SPEED_BOOSTER);

                p->unk99 = 0;
                p->qCamOffsetY = Q(0);

                if ((gStageData.gameMode != GAME_MODE_MP_SINGLE_PACK) && (p->unkC & 0x1) && !(p->moveState & MOVESTATE_800000)) {
                    sub_8019A58(p);

                    qGroundSpeed = Q(12);
                } else {
                    qGroundSpeed = Q(9.5);
                }

                if (booster->unk35 != 0) {
                    qGroundSpeed = -qGroundSpeed;
                }

                if (booster->unk36 != 0) {
                    qGroundSpeed = -qGroundSpeed;
                }

                if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
                    qGroundSpeed = -qGroundSpeed;
                }

                if (p->qSpeedGround < Q(0)) {
                    if (qGroundSpeed < Q(0)) {
                        if (p->qSpeedGround > qGroundSpeed) {
                            p->qSpeedGround = qGroundSpeed;
                        }
                    } else {
                        p->moveState &= ~MOVESTATE_FACING_LEFT;
                        p->qSpeedGround = qGroundSpeed;
                    }
                } else if (qGroundSpeed < Q(0)) {
                    p->moveState |= MOVESTATE_FACING_LEFT;
                    p->qSpeedGround = qGroundSpeed;
                } else {
                    if (p->qSpeedGround < qGroundSpeed) {
                        p->qSpeedGround = qGroundSpeed;
                    }
                }

                if (p->moveState & MOVESTATE_800000) {
                    Player_8007898(p);
                } else if (p->charFlags.anim0 == 11) {
                    Player_800891C(p);
                } else {
                    Player_8005528(p);
                }
            }
        }
    }

    UpdateSprite();
}

static void InitSprite(u8 kind, u8 xFlip, u8 yFlip, Sprite *s)
{
    u32 mask = 0;

    // Since the wall-mounted booster is rotated by 90 degrees
    // it needs a different way of flipping the graphics
    if (yFlip != 0) {
        mask |= (kind == WALL) ? SPRITE_FLAG_MASK_X_FLIP : SPRITE_FLAG_MASK_Y_FLIP;
    }

    if (xFlip != 0) {
        mask |= (kind == WALL) ? SPRITE_FLAG_MASK_Y_FLIP : SPRITE_FLAG_MASK_X_FLIP;
    }

    // TODO: s->tiles = ALLOC_TILES(ANIM_BOOSTER);
    s->tiles = VramMalloc(20);
    s->anim = ANIM_BOOSTER;

    if (gStageData.gameMode != GAME_MODE_MP_SINGLE_PACK) {
        s->variant = kind;
    } else {
        s->variant = 0;
        mask |= SPRITE_FLAG_MASK_MOSAIC;
    }

    s->oamFlags = SPRITE_OAM_ORDER(24);
    s->animCursor = 0;
    s->timeUntilNextFrame = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = mask | SPRITE_FLAG(PRIORITY, 1);
}

static void UpdateSprite(void)
{
    Booster *booster = TASK_DATA(gCurTask);
    Sprite *s = &booster->s;
    MapEntity *me = booster->base.me;
    s16 worldX, worldY;

    worldX = TO_WORLD_POS(booster->base.spriteX, booster->base.regionX);
    worldY = TO_WORLD_POS(me->y, booster->base.regionY);

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    if (!IsPointInScreenRect(worldX, worldY)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, booster->base.spriteX);
        TaskDestroy(gCurTask);
        return;
    } else {
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void CreateEntity_Booster_Default(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    CreateEntity_Booster(DEFAULT, me, regionX, regionY, id);
}

void CreateEntity_Booster_TiltRight_Small(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    CreateEntity_Booster(TILT_RIGHT_SMALL, me, regionX, regionY, id);
}

void CreateEntity_Booster_TiltRight_Big(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    CreateEntity_Booster(TILT_RIGHT_BIG, me, regionX, regionY, id);
}

void CreateEntity_Booster_TiltLeft_Small(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    CreateEntity_Booster(TILT_LEFT_SMALL, me, regionX, regionY, id);
}

void CreateEntity_Booster_TiltLeft_Big(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    CreateEntity_Booster(TILT_LEFT_BIG, me, regionX, regionY, id);
}

void CreateEntity_Booster_Wall(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateEntity_Booster(WALL, me, regionX, regionY, id); }

void TaskDestructor_Booster(struct Task *t)
{
    Booster *booster = TASK_DATA(t);
    VramFree(booster->s.tiles);
}