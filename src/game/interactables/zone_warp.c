#include "global.h"
#include "module_unclear.h"
#include "core.h"
#include "sprite.h"
#include "trig.h"
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
    /* 0x00 */ SpriteBase2 base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ u8 targetZone;
} ZoneWarp; /* size: 0x38 */

void Task_ZoneWarpInit(void);
void sub_802DB9C(void);
void Task_802D8C8(void);
void Task_802D9A8(void);
void Task_802DA3C(void);
void Task_802DADC(void);
void TaskDestructor_ZoneWarp(struct Task *);

// TODO: For some reason the callsite only matches with s16 zoneId.
//       But the code itself needs zoneId to be u16, which makes sense.
static void InitSprite(s16 zoneId, Sprite *s);

void CreateEntity_ZoneWarp(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    s16 zoneId;

    for (zoneId = 0; zoneId < 6; zoneId++) {
        if (GetBit(me->d.uData[4], zoneId)) {
            break;
        }
    }

    if (gStageData.zone <= zoneId) {
        zoneId++;
    }

    if (gSaveGame.unlockedZones - 1 >= zoneId) {
        struct Task *t = TaskCreate(Task_ZoneWarpInit, sizeof(ZoneWarp), 0x2100, 0, TaskDestructor_ZoneWarp);
        ZoneWarp *warp = TASK_DATA(t);
        Sprite *s = &warp->s;

        warp->base.regionX = regionX;
        warp->base.regionY = regionY;
        warp->base.me = me;
        warp->base.spriteX = me->x;
        warp->base.id = id;
        warp->targetZone = zoneId;

        s->x = TO_WORLD_POS(me->x, regionX);
        s->y = TO_WORLD_POS(me->y, regionY);

        SET_MAP_ENTITY_INITIALIZED(me);
        InitSprite(zoneId, s);
    }
}

void Task_ZoneWarpInit(void)
{
    ZoneWarp *warp = TASK_DATA(gCurTask);
    Sprite *s = &warp->s;
    MapEntity *me = warp->base.me;
    Player *p = GET_SP_PLAYER_V0(PLAYER_1);
    s16 worldX, worldY;

    worldX = TO_WORLD_POS(warp->base.spriteX, warp->base.regionX);
    worldY = TO_WORLD_POS(me->y, warp->base.regionY);

    if (!sub_802C080(p) && (gStageData.playerIndex == 0)) {
        if (sub_8020700(s, worldX, worldY, 0, p, 0)) {
            sub_8016F28(p);

            p->moveState |= (MOVESTATE_20000000 | MOVESTATE_10000000 | MOVESTATE_2);

            p->charFlags.anim0 = 11;
            p->qSpeedGround = 0;
            p->qSpeedAirX = 0;
            p->qSpeedAirY = 0;

            Player_8004FF8(p);
            sub_8003DF0(SE_SPIN_ATTACK);
            gCurTask->main = Task_802D8C8;
        }
    }

    sub_802DB9C();
}

void Task_802D8C8(void)
{
    Player *p = GET_SP_PLAYER_V0(PLAYER_1);
    ZoneWarp *warp = TASK_DATA(gCurTask);
    MapEntity *me = warp->base.me;
    s16 qWorldX16, qWorldY16;
    s32 qWorldX, qWorldY;

    // TODO: Match directly using Q() ?
    qWorldX16 = TO_WORLD_POS(warp->base.spriteX, warp->base.regionX);
    qWorldY16 = TO_WORLD_POS(me->y, warp->base.regionY);

    qWorldX = Q(qWorldX16);
    qWorldY = Q(qWorldY16);

    if (qWorldX != p->qWorldX) {
        if (qWorldX < p->qWorldX) {
            p->qWorldX -= Q(2);

            if (p->qWorldX <= qWorldX) {
                p->qWorldX = qWorldX;
            }
        } else {
            p->qWorldX += Q(2);

            if (p->qWorldX >= qWorldX) {
                p->qWorldX = qWorldX;
            }
        }
    }

    if (qWorldY != p->qWorldY) {
        if (qWorldY < p->qWorldY) {
            p->qWorldY -= Q(2);

            if (p->qWorldY <= qWorldY) {
                p->qWorldY = qWorldY;
            }
        } else {
            p->qWorldY += Q(2);

            if (p->qWorldY >= qWorldY) {
                p->qWorldY = qWorldY;
            }
        }
    }

    if ((qWorldX == p->qWorldX) && (qWorldY == p->qWorldY)) {
        gCurTask->main = Task_802D9A8;
        warp->base.unk8 = 120;
    }

    sub_802DB9C();

    if (p->moveState & MOVESTATE_1000000) {
        gCurTask->main = Task_802DADC;
        warp->base.unk8 = 30;
    }
}

void Task_802D9A8(void)
{
    Player *p = GET_SP_PLAYER_V0(PLAYER_1);
    ZoneWarp *warp = TASK_DATA(gCurTask);

    sub_802DB9C();

    p->charFlags.unk2C_40 = 1;

    warp->base.unk8--;

    if ((p->keyInput & DPAD_DOWN) || (p->moveState & MOVESTATE_1000000)) {
        SetPlayerCallback(p, Player_800DB30);
        gCurTask->main = Task_802DADC;
        warp->base.unk8 = 30;
    } else if ((warp->base.unk8 == 0) || (p->keyInput & DPAD_UP)) {
        gCurTask->main = Task_802DA3C;
        warp->base.unk8 = 30;
    }
}

void Task_802DA3C(void)
{
    ZoneWarp *warp = TASK_DATA(gCurTask);

    gStageData.zone = warp->targetZone;
    gStageData.act = ACT_HUB;
    gStageData.currMapIndex = LEVEL_INDEX(warp->targetZone, ACT_HUB);
    gStageData.nextMapIndex = LEVEL_INDEX(warp->targetZone, ACT_HUB);
    gStageData.unkC = 0;

    if (GAME_MODE_IS_MULTI_PLAYER(gStageData.gameMode)) {
        sub_80275B8(LEVEL_INDEX(gStageData.zone, gStageData.act), 0, 0);
    }

    sub_8003D2C();

    TasksDestroyAll();

    gUnknown_03003F94 = gUnknown_03003D20;
    gUnknown_03006840 = 0;
    gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;

    sub_8057AA0(gStageData.zone, 0, 0);
}

void Task_802DADC(void)
{
    Player *p = GET_SP_PLAYER_V0(PLAYER_1);
    ZoneWarp *warp = TASK_DATA(gCurTask);
    Sprite *s = &warp->s;
    MapEntity *me = warp->base.me;
    s16 worldX, worldY;

    worldX = TO_WORLD_POS(warp->base.spriteX, warp->base.regionX);
    worldY = TO_WORLD_POS(me->y, warp->base.regionY);

    p->qWorldY += p->qSpeedAirY;
    p->qSpeedAirY += Q(42. / 256.);
    sub_802DB9C();

    if (--warp->base.unk8 == 0) {
        if (!sub_8020700(s, worldX, worldY, 0, p, 0)) {
            p->moveState &= ~MOVESTATE_10000000;
            gCurTask->main = Task_ZoneWarpInit;
        }
    }
}

void sub_802DB9C(void)
{
    ZoneWarp *warp = TASK_DATA(gCurTask);
    Sprite *s = &warp->s;
    MapEntity *me = warp->base.me;
    s16 worldX, worldY;

    worldX = TO_WORLD_POS(warp->base.spriteX, warp->base.regionX);
    worldY = TO_WORLD_POS(me->y, warp->base.regionY);

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    if (!IsPointInScreenRect(worldX, worldY)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, warp->base.spriteX);
        TaskDestroy(gCurTask);
        return;
    } else {
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void TaskDestructor_ZoneWarp(struct Task *t)
{
    ZoneWarp *zone = TASK_DATA(t);
    VramFree(zone->s.tiles);
}

static void InitSprite(s16 in_zoneId, Sprite *s)
{
    u16 zoneId = in_zoneId;

    s->tiles = ALLOC_TILES(ANIM_ZONE_WARP);
    s->anim = ANIM_ZONE_WARP;
    s->variant = (u8)(zoneId * 2 + 1);
    s->oamFlags = SPRITE_OAM_ORDER(8);
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 0);
}