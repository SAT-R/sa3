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

#define NUM_CORD_SEGMENTS 8

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ Vec2_16 positions[NUM_CORD_SEGMENTS - 1]; // -1 because no need to store Player pos
    /* 0x50 */ Player *tetheredPlayer[NUM_SINGLE_PLAYER_CHARS];
} BungeeCord; /* size: 0x58 */

void Task_BungeeCord(void);
void sub_803FC80(void);
void TaskDestructor_BungeeCord(struct Task *t);
static void InitSprite(Sprite *s, Vec2_16 *inPositions);
s16 sub_803FD5C(Vec2_16 *inPositions);

void Task_BungeeCord(void)
{
    BungeeCord *cord = TASK_DATA(gCurTask);
    Sprite *s = &cord->s;
    MapEntity *me = cord->base.me;
    s16 worldX, worldY;
    s32 qWorldX, qWorldY;
    s32 qLeft, qRight;
    s32 qTop, qBottom;
    s16 i;

    worldX = TO_WORLD_POS(cord->base.meX, cord->base.regionX);
    worldY = TO_WORLD_POS(me->y, cord->base.regionY);

    qWorldY = Q(worldY);
    qTop = qWorldY + Q(me->d.sData[1] * TILE_WIDTH);
    qBottom = qTop + Q(me->d.uData[3] * TILE_WIDTH);

    qWorldX = Q(worldX);
    qLeft = qWorldX + Q(me->d.sData[0] * TILE_WIDTH);
    qRight = qLeft + Q(me->d.uData[2] * TILE_WIDTH);

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p = GET_SP_PLAYER_V0(i);

        if (((p->charFlags.someIndex == 1) || (p->charFlags.someIndex == 2) || (p->charFlags.someIndex == 4))) {
            if (!sub_802C080(p) && !(p->moveState & MOVESTATE_IN_AIR) && (p->qWorldX > qLeft) && (p->qWorldX < qRight)
                && (p->qWorldY > qTop) && (p->qWorldY < qBottom)) {
                sub_8016F28(p);
                SetPlayerCallback(p, Player_800A3C0);
                p->moveState |= (MOVESTATE_COLLIDING_ENT | MOVESTATE_IN_AIR);
                p->sprColliding = s;
                cord->tetheredPlayer[i] = p;
            }
        }
    }

    sub_803FC80();
}

static void InitSprite(Sprite *s, Vec2_16 *inPositions)
{
    s16 i;

    s->tiles = ALLOC_TILES(ANIM_BUNGEE_CORD);
    s->anim = ANIM_BUNGEE_CORD;
    s->variant = 0;
    s->oamFlags = SPRITE_OAM_ORDER(12);
    s->x = 0;
    s->y = 0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;

    for (i = 0; i < NUM_CORD_SEGMENTS - 1; i++) {
        inPositions->x = 0;
        inPositions->y = 0;
#ifdef BUG_FIX
        // BUG: Without this, it just sets the same target 7 times
        inPositions++;
#endif
    }
}

void sub_803FC80(void)
{
    BungeeCord *cord = TASK_DATA(gCurTask);
    Sprite *s = &cord->s;
    Vec2_16 *cordPos = &cord->positions[0];
    Vec2_16 positions[NUM_CORD_SEGMENTS];
    Vec2_16 *currPos = &positions[0];
    MapEntity *me = cord->base.me;
    s16 i;

    u16 numTetheredPlayers = sub_803FD5C(positions);

    for (i = 0; i < (s32)ARRAY_COUNT(cord->positions); i++, currPos++, cordPos++) {
        cordPos->x = currPos->x - gCamera.x;
        cordPos->y = currPos->y - gCamera.y;
    }

    s->x = currPos->x - gCamera.x;
    s->y = currPos->y - gCamera.y;

    if (IS_OUT_OF_CAM_RANGE(s->x, s->y) && (numTetheredPlayers == 0)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, cord->base.meX);
        TaskDestroy(gCurTask);
        return;
    } else {
        UpdateSpriteAnimation(s);
        DisplaySprite(s);

        DisplaySprites(s, &cord->positions[0], ARRAY_COUNT(cord->positions));
    }
}

s16 sub_803FD5C(Vec2_16 *inPositions)
{
    BungeeCord *cord = TASK_DATA(gCurTask);
    Sprite *s = &cord->s;
    Vec2_16 *positions = inPositions;
    MapEntity *me = cord->base.me;
    s16 i, j;
    s8 result = 0;
    s16 worldX, worldY;

    for (i = 0; i < (s32)ARRAY_COUNT(cord->tetheredPlayer); i++) {
        Player *p = cord->tetheredPlayer[i];

        if (p != NULL) {
            if ((p->moveState & MOVESTATE_COLLIDING_ENT) && (p->sprColliding == s)) {
                result++;
            } else {
                cord->tetheredPlayer[i] = NULL;
            }

            if ((gStageData.unk4 == 5 || gStageData.unk4 == 6) && gStageData.gameMode == GAME_MODE_5) {
                cord->tetheredPlayer[i] = NULL;
            }
        }
    }

    worldX = TO_WORLD_POS(cord->base.meX, cord->base.regionX);
    worldY = TO_WORLD_POS(me->y, cord->base.regionY);

    if (result == 0) {
        for (i = 0; i < NUM_CORD_SEGMENTS; i++, positions++) {
            positions->x = worldX;
            positions->y = worldY;
        }

        return 0;
    } else {
        s8 sp08 = (4 - result);

        for (i = 0; i < (s32)ARRAY_COUNT(cord->tetheredPlayer); i++) {
            Player *p = cord->tetheredPlayer[i];
            s32 r4, r3;

            if (p != NULL) {
                positions->x = I(p->qWorldX);
                positions->y = I(p->qWorldY);

                r4 = (((u16)positions->x - worldX) * 16) >> sp08;
                r3 = (((u16)positions->y - worldY) * 16) >> sp08;

                for (j = 0; j < (1 << sp08); j++, positions++) {
                    positions->x = worldX + ((r4 * j) >> 4);
                    positions->y = worldY + ((r3 * j) >> 4);
                }
            }
        }
    }

    return result;
}

void CreateEntity_BungeeCord(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_BungeeCord, sizeof(BungeeCord), 0x2100, 0, TaskDestructor_BungeeCord);
    BungeeCord *cord = TASK_DATA(t);
    Sprite *s;
    s16 i;

    cord->base.regionX = regionX;
    cord->base.regionY = regionY;
    cord->base.me = me;
    cord->base.meX = me->x;
    cord->base.id = id;
    SET_MAP_ENTITY_INITIALIZED(me);

    for (i = 0; i < (s32)ARRAY_COUNT(cord->tetheredPlayer); i++) {
        cord->tetheredPlayer[i] = NULL;
    }

    s = &cord->s;
    InitSprite(s, &cord->positions[0]);
}

void TaskDestructor_BungeeCord(struct Task *t)
{
    BungeeCord *cord = TASK_DATA(t);
    VramFree(cord->s.tiles);
}