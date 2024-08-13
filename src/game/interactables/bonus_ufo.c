#include <string.h>
#include "global.h"
#include "task.h"
#include "module_unclear.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/player_callbacks.h"
#include "game/save.h"
#include "game/stage.h"

#include "constants/move_states.h"
#include "constants/songs.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ Sprite s2;
    /* 0x5C */ Sprite s3;
    /* 0x84 */ Sprite s4;
    /* 0xAC */ u8 fillerAC[0x4];
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
    ufo->unkB2 = 60;
    ufo->unkB3 = 0;

    worldX = TO_WORLD_POS(me->x, regionX);
    worldY = TO_WORLD_POS(me->y, regionY);

    s = &ufo->s;
    s->x = worldX;
    s->y = worldY;

    s = &ufo->s2;
    s->x = worldX;
    s->y = worldY;

    s = &ufo->s3;
    s->x = worldX;
    s->y = worldY;

    s = &ufo->s4;
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

    p = &gPlayers[gStageData.charId];

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
                && (gStageData.charId == 0) //
                && (ABS(p->qSpeedGround) < Q(0.5)) //
                && (p->qWorldX > qLeft) //
                && (p->qWorldX < qRight) //
                && (p->qWorldY > qTop) //
                && (p->qWorldY < qBottom)) { //
                gStageData.unk4 = 8;

                sub_8016F28(p);
                sub_8003DF0(SE_BONUS_UFO);

                p->charFlags.anim0 = 1;
                SetPlayerCallback(p, (void *)Player_800EB4C);

                ufo->unkB3 = 1;

                if (ufo->unkB1 == ACT_BOSS) {
                    if (gSaveGame.unlockedStages[zone] & (1 << 3)) {
                        ufo->unkB0 = 8;
                    } else if ((gSaveGame.unlockedStages[zone] & 0x7) == 0x7) {
                        ufo->unkB0 = 4;
                    }
                } else {
                    ufo->unkB0 = 0;
                }

                ufo->s.variant = ufo->unkB0 + 1;
                ufo->s2.variant = ufo->unkB0 + 1;
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

        p = &gPlayers[gStageData.charId];

        if (p->qWorldX < qWorldX) {
            p->qWorldX += Q(1);
        } else if (p->qWorldX > qWorldX) {
            p->qWorldX -= Q(1);
        }

        if (p->qWorldY > qWorldY) {
            p->qWorldY -= Q(1);
        }

        if (p->qWorldY <= qWorldY) {
            ufo->s3.variant++;
            ufo->s4.variant++;
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

    if ((ufo->s3.frameFlags & SPRITE_FLAG_MASK_ANIM_OVER) && (ufo->unkB3 != 0)) {
        ufo->unkB3 = 0;

        ufo->s.variant = ufo->unkB0 + 2;
        ufo->s2.variant = ufo->unkB0 + 2;

        sub_8003E28(SE_BONUS_UFO);
    } else if ((ufo->s.frameFlags & SPRITE_FLAG_MASK_ANIM_OVER) && (ufo->s.variant != ufo->unkB0 + 3)) {
        ufo->s.variant = ufo->unkB0 + 3;
        ufo->s2.variant = ufo->unkB0 + 3;

        p = &gPlayers[gStageData.charId];
        p->unkA4 = ufo->unkB1;
        p->unkA4 += gStageData.zone * 10;

        SetPlayerCallback(p, (void *)Player_800AEF4);
    }

    if (sub_8041988()) {
        if (ufo->unkB3 != 0) {
            sub_8041A48();
        }
    }
}
