#include <string.h>
#include "global.h"
#include "task.h"
#include "malloc_vram.h"
#include "module_unclear.h"
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
    /* 0x0C */ Sprite s[2];
    /* 0x5C */ Sprite s3[2];
    /* 0xAC */ void *tiles;
    /* 0xB0 */ u8 unkB0;
    /* 0xB1 */ u8 unkB1;
    /* 0xB2 */ u8 unkB2;
    /* 0xB3 */ u8 unkB3;
} BonusUfo; /* 0xB4 */

void Task_BonusUfoMain(void);
void Task_804165C(void);
void Task_8041710(void);
void sub_8041A48(void);
void sub_80417F0(BonusUfo *);
bool16 sub_8041988();
void TaskDestructor_BonusUfo(struct Task *);

extern const u16 sUfoActs[3];
// const u16 sUfoActs[3] = {ACT_BOSS, ACT_BONUS_CAPSULE, ACT_BONUS_ENEMIES};

void CreateEntity_BonusUfo(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t;
    BonusUfo *ufo;
    Sprite *s;
    u16 array[ARRAY_COUNT(sUfoActs)];
    s16 i;
    s16 worldX, worldY;

    memcpy(array, sUfoActs, sizeof(sUfoActs));

#ifndef NON_MATCHING
    // NOTE: This loop does nothing
    for (i = 0; i < (s32)ARRAY_COUNT(array); i++) {
        if ((me->d.uData[4] >> i) & 1)
            break;
    }
#endif

    t = TaskCreate(Task_BonusUfoMain, sizeof(BonusUfo), 0x2100, 0, TaskDestructor_BonusUfo);
    ufo = TASK_DATA(t);

    ufo->base.regionX = regionX;
    ufo->base.regionY = regionY;
    ufo->base.me = me;
    ufo->base.spriteX = me->x;
    ufo->base.id = id;

    for (i = 0; i < (s32)ARRAY_COUNT(array); i++) {
        if ((me->d.uData[4] >> i) & 1)
            break;
    }

    ufo->unkB1 = array[i];
    ufo->unkB2 = ZONE_TIME_TO_INT(0, 1);
    ufo->unkB3 = 0;

    worldX = TO_WORLD_POS(me->x, regionX);
    worldY = TO_WORLD_POS(me->y, regionY);

    s = &ufo->s[0];
    s->x = worldX;
    s->y = worldY;

    s = &ufo->s[1];
    s->x = worldX;
    s->y = worldY;

    s = &ufo->s3[0];
    s->x = worldX;
    s->y = worldY;

    s = &ufo->s3[1];
    s->x = worldX;
    s->y = worldY;

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_80417F0(ufo);
}

void Task_BonusUfoMain(void)
{
    u8 zone = gStageData.zone;
    BonusUfo *ufo = TASK_DATA(gCurTask);
    MapEntity *me = ufo->base.me;
    s32 qWorldX, qWorldY;
    s32 qLeft, qRight;
    s32 qTop, qBottom;
    Player *p;

    qWorldX = Q(TO_WORLD_POS(ufo->base.spriteX, ufo->base.regionX));
    qWorldY = Q(TO_WORLD_POS(me->y, ufo->base.regionY));
    qTop = qWorldY + Q(me->d.sData[1] * TILE_WIDTH);
    qBottom = qTop + Q(me->d.uData[3] * TILE_WIDTH);
    qLeft = qWorldX + Q(me->d.sData[0] * TILE_WIDTH);
    qRight = qLeft + Q(me->d.uData[2] * TILE_WIDTH);

    p = &gPlayers[gStageData.playerIndex];

    if (zone > ZONE_7) {
        zone = 0;
    }

    if (((ufo->unkB1 == 7) && ((gSaveGame.unlockedStages[zone] & 0x7) == 7)) || ((ufo->unkB1 == 8) && !(gStageData.unkBE[zone] & 0x1))
        || ((ufo->unkB1 == 9) && !(gStageData.unkBE[zone] & 0x2))) {
        if (!(p->moveState & (MOVESTATE_1000000 | MOVESTATE_200 | MOVESTATE_100 | MOVESTATE_IN_AIR))) {
            s16 anim0 = p->charFlags.anim0;
            if ((p->charFlags.anim0 != 238) // NOTE: Direct var load for matching
                && (anim0 != 239) //
                && (anim0 != 244) //
                && (anim0 != 245) //
                && (gStageData.playerIndex == 0) //
                && (ABS(p->qSpeedGround) < Q(0.5)) //
                && (p->qWorldX > qLeft) //
                && (p->qWorldX < qRight) //
                && (p->qWorldY > qTop) //
                && (p->qWorldY < qBottom)) { //
                gStageData.unk4 = 8;

                sub_8016F28(p);
                sub_8003DF0(SE_BONUS_UFO);

                p->charFlags.anim0 = 1;
                SetPlayerCallback(p, Player_800EB4C);

                ufo->unkB3 = 1;

                if (ufo->unkB1 == ACT_BOSS) {
                    if (CheckBit(gSaveGame.unlockedStages[zone], ACT_1)) {
                        ufo->unkB0 = 8;
                    } else if ((gSaveGame.unlockedStages[zone] & ACT_MASK_DEFAULT_UNLOCKED) == ACT_MASK_DEFAULT_UNLOCKED) {
                        ufo->unkB0 = 4;
                    }
                } else {
                    ufo->unkB0 = 0;
                }

                ufo->s[0].variant = ufo->unkB0 + 1;
                ufo->s[1].variant = ufo->unkB0 + 1;
                gCurTask->main = Task_804165C;
            }
        }
    }

    sub_8041988();
}

void Task_804165C(void)
{
    BonusUfo *ufo = TASK_DATA(gCurTask);
    MapEntity *me = ufo->base.me;
    Player *p;
    s32 qWorldX, qWorldY;

    if (ufo->unkB2 == 0) {
        qWorldX = Q(TO_WORLD_POS(ufo->base.spriteX, ufo->base.regionX));
        qWorldY = Q(TO_WORLD_POS(me->y, ufo->base.regionY));

        p = &gPlayers[gStageData.playerIndex];

        if (p->qWorldX < qWorldX) {
            p->qWorldX += Q(1);
        } else if (p->qWorldX > qWorldX) {
            p->qWorldX -= Q(1);
        }

        if (p->qWorldY > qWorldY) {
            p->qWorldY -= Q(1);
        }

        if (p->qWorldY <= qWorldY) {
            ufo->s3[0].variant++;
            ufo->s3[1].variant++;
            gCurTask->main = Task_8041710;
        }
    } else {
        ufo->unkB2--;
    }

    if (sub_8041988()) {
        sub_8041A48();
    }
}

void Task_8041710(void)
{
    BonusUfo *ufo = TASK_DATA(gCurTask);
    Player *p;

    if ((ufo->s3[0].frameFlags & SPRITE_FLAG_MASK_ANIM_OVER) && (ufo->unkB3 != 0)) {
        ufo->unkB3 = 0;

        ufo->s[0].variant = ufo->unkB0 + 2;
        ufo->s[1].variant = ufo->unkB0 + 2;

        sub_8003E28(SE_BONUS_UFO);
    } else if ((ufo->s[0].frameFlags & SPRITE_FLAG_MASK_ANIM_OVER) && (ufo->s[0].variant != ufo->unkB0 + 3)) {
        ufo->s[0].variant = ufo->unkB0 + 3;
        ufo->s[1].variant = ufo->unkB0 + 3;

        p = &gPlayers[gStageData.playerIndex];
        p->unkA4 = ufo->unkB1;
        p->unkA4 += gStageData.zone * 10;

        SetPlayerCallback(p, Player_800AEF4);
    }

    if (sub_8041988()) {
        if (ufo->unkB3 != 0) {
            sub_8041A48();
        }
    }
}

void sub_80417F0(BonusUfo *ufo)
{
    void *tilesUfo;
    void *tilesRay;
    u8 zone;
    s16 i;

    ufo->tiles = VramMalloc(MAX_TILES(ANIM_BONUS_UFO) + MAX_TILES(ANIM_BONUS_UFO_RAY));
    tilesUfo = ufo->tiles;
    tilesRay = ufo->tiles + MAX_TILES(ANIM_BONUS_UFO) * TILE_SIZE_4BPP;
    zone = gStageData.zone;
    gStageData.unkBE[zone];

    for (i = 0; i < 2; i++) {
        Sprite *s = &ufo->s[i];
        Sprite *s3 = &ufo->s3[i];

        s->tiles = tilesUfo;

        if (ufo->unkB1 == ACT_BOSS) {
            if (IS_ACT_COMPLETE(zone, BOSS)) {
                s->anim = ANIM_BONUS_UFO;
                ufo->unkB0 = 8; // "closed"
            } else {
                if (ARE_STAGE_ACTS_COMPLETE(zone)) {
                    s->anim = ANIM_BONUS_UFO;
                    ufo->unkB0 = 4; // "active"
                } else {
                    s->anim = ANIM_BONUS_UFO;
                    ufo->unkB0 = 7;
                }
            }
        } else if (((ufo->unkB1 == ACT_BONUS_CAPSULE) && !(gStageData.unkBE[zone] & 0x1))
                   || ((ufo->unkB1 == ACT_BONUS_ENEMIES) && !(gStageData.unkBE[zone] & 0x2))) {
            s->anim = ANIM_BONUS_UFO;
            ufo->unkB0 = 0;
        } else {
            s->anim = ANIM_BONUS_UFO;
            ufo->unkB0 = 3;
        }
        // _080418D6

        s->variant = ufo->unkB0;
        s->oamFlags = SPRITE_OAM_ORDER(11);
        s->animCursor = 0;
        s->qAnimDelay = 0;
        s->prevVariant = -1;
        s->animSpeed = SPRITE_ANIM_SPEED(1.0);
        s->palId = 0;
        s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
        s->frameFlags = SPRITE_FLAG(PRIORITY, 1);

        if (i != 0) {
            SPRITE_FLAG_SET(s, X_FLIP);
        }

        UpdateSpriteAnimation(s);

        s3->tiles = tilesRay;
        s3->anim = ANIM_BONUS_UFO_RAY;
        s3->variant = 0;
        s3->oamFlags = SPRITE_OAM_ORDER(12);
        s3->animCursor = 0;
        s3->qAnimDelay = 0;
        s3->prevVariant = -1;
        s3->animSpeed = SPRITE_ANIM_SPEED(1.0);
        s3->palId = 0;
        s3->hitboxes[0].index = HITBOX_STATE_INACTIVE;
        s3->frameFlags = SPRITE_FLAG(PRIORITY, 1);

        if (i != 0) {
            SPRITE_FLAG_SET(s3, X_FLIP);
        }

        UpdateSpriteAnimation(s3);
    }
}

bool16 sub_8041988(void)
{
    BonusUfo *ufo = TASK_DATA(gCurTask);
    Sprite *s = &ufo->s[0];
    Sprite *s2 = &ufo->s[1];
    MapEntity *me = ufo->base.me;
    s16 worldX, worldY;

    worldX = TO_WORLD_POS(ufo->base.spriteX, ufo->base.regionX);
    worldY = TO_WORLD_POS(me->y, ufo->base.regionY);

    if (!IsPointInScreenRect(worldX, worldY)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, ufo->base.spriteX);
        TaskDestroy(gCurTask);
        return FALSE;
    } else {
        s32 screenX, screenY;

        screenX = worldX - gCamera.x;
        s->x = screenX;
        s2->x = screenX;
        screenY = worldY - gCamera.y;
        s->y = screenY;
        s2->y = screenY;
        UpdateSpriteAnimation(s);
        UpdateSpriteAnimation(s2);
        DisplaySprite(s);
        DisplaySprite(s2);
    }

    return TRUE;
}

void TaskDestructor_BonusUfo(struct Task *t)
{
    BonusUfo *ufo = TASK_DATA(t);
    VramFree(ufo->tiles);
}

void sub_8041A48(void)
{
    BonusUfo *ufo = TASK_DATA(gCurTask);
    Sprite *s = &ufo->s[0];
    Sprite *s3 = &ufo->s3[0];
    Sprite *s4 = s3 + 1;

    s3->x = s->x;
    s4->x = s->x;
    s3->y = s->y;
    s4->y = s->y;
    UpdateSpriteAnimation(s3);
    UpdateSpriteAnimation(s4);
    DisplaySprite(s3);
    DisplaySprite(s4);
}