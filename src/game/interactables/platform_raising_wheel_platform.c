#include "global.h"
#include "malloc_vram.h"
#include "sprite.h"
#include "task.h"
#include "module_unclear.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ u8 unk34;
    /* 0x36 */ s16 worldX;
    /* 0x38 */ s16 worldY;
    /* 0x3C */ s32 qWorldX32;
    /* 0x40 */ s32 qWorldY32;
} PlatformRaisingWheelPlatform; /* size: 0x44 */

void Task_PlatformRaisingWheelPlatform(void);
void sub_8036304(void);
void sub_80363FC(Sprite *s);
void TaskDestructor_PlatformRaisingWheelPlatform(struct Task *);

void CreateEntity_PlatformRaisingWheelPlatform(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_PlatformRaisingWheelPlatform, sizeof(PlatformRaisingWheelPlatform), 0x2100, 0,
                                TaskDestructor_PlatformRaisingWheelPlatform);
    PlatformRaisingWheelPlatform *platform = TASK_DATA(t);
    Sprite *s = &platform->s;
    s16 worldX, worldY;
    s16 i;

    platform->base.regionX = regionX;
    platform->base.regionY = regionY;
    platform->base.me = me;
    platform->base.spriteX = me->x;
    platform->base.id = id;

    for (i = 0; i < 8; i++) {
        if ((me->d.uData[4] >> i) & 0x1) {
            break;
        }
    }

    platform->unk34 = i;

    // TODO: It's confusing that qWorldX32|Y32 aren't explicitly converted
    //       to a Q-value, but are treated as such in all others functions.
    platform->worldX = worldX = TO_WORLD_POS(me->x, regionX);
    platform->qWorldX32 = worldX;
    platform->worldY = worldY = TO_WORLD_POS(me->y, regionY);
    platform->qWorldY32 = worldY;

    s->x = platform->qWorldX32 - gCamera.x;
    s->y = platform->qWorldY32 - gCamera.y;

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_80363FC(s);
}

void Task_PlatformRaisingWheelPlatform(void)
{
    PlatformRaisingWheelPlatform *platform = TASK_DATA(gCurTask);
    Sprite *s = &platform->s;
    MapEntity *me = platform->base.me;
    s32 qWorldX, qWorldY;
    s32 qWorldX32, qWorldY32;
    s32 qLeft, qTop;
    s16 i;

    qWorldX = Q(platform->worldX);
    qWorldY = Q(platform->worldY);

    qTop = Q(me->d.sData[1] * TILE_WIDTH);
    qLeft = Q(me->d.sData[0] * TILE_WIDTH);

    qWorldX32 = platform->qWorldX32;
    qWorldY32 = platform->qWorldY32;

    qLeft = (qLeft * gStageData.unk5E[platform->unk34]) >> 10;
    qLeft += qWorldX;
    platform->qWorldX32 = qLeft;

    qTop = (qTop * gStageData.unk5E[platform->unk34]) >> 10;
    qTop += qWorldY;
    platform->qWorldY32 = qTop;

    qWorldX32 -= qLeft;
    qWorldY32 -= qTop;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p;

        if (i == 0) {
            p = &gPlayers[gStageData.charId];
        } else {
            p = &gPlayers[p->charFlags.partnerIndex];
        }

        if (((p->charFlags.someIndex == 1) || (p->charFlags.someIndex == 2) || (p->charFlags.someIndex == 4)) && !sub_802C0D4(p)) {
            s32 res;

            if ((p->moveState & MOVESTATE_20) && (p->spr6C == s)) {
                p->qWorldX -= qWorldX32;
                p->qWorldY -= (qWorldY32 - Q(4));

                res = sub_80110E8(3, p, NULL, NULL);
                if (res <= -6) {
                    p->qWorldY += Q(res);
                }

                Player_80149E4(p);
            }

            res = sub_8020950(s, I(platform->qWorldX32), I(platform->qWorldY32), p, NULL);

            if (res & 0x10000) {
                s16 res16 = Q(res);
                p->qWorldY += res16;
            }

            sub_80110E8(3, p, 0, 0);
        }
    }

    sub_8036304();
}

void sub_8036304(void)
{
    PlatformRaisingWheelPlatform *platform = TASK_DATA(gCurTask);
    Sprite *s = &platform->s;
    MapEntity *me = platform->base.me;
    Player *p;
    s16 worldX, worldY;
    s16 i;

    worldX = I(platform->qWorldX32);
    worldY = I(platform->qWorldY32);

    if (!IsPointInScreenRect(worldX, worldY) && !IsPointInScreenRect(platform->worldX, platform->worldY)) {
        for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            // _08036350
            if (i != 0) {
                p = &gPlayers[p->charFlags.partnerIndex];
            } else {
                p = &gPlayers[gStageData.charId];
            }

            sub_80213B0(s, p);
        }

        me->x = platform->base.spriteX;
        TaskDestroy(gCurTask);
        return;
    } else {
        s->x = worldX - gCamera.x;
        s->y = worldY - gCamera.y;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void TaskDestructor_PlatformRaisingWheelPlatform(struct Task *t)
{
    PlatformRaisingWheelPlatform *platform = TASK_DATA(t);

    VramFree(platform->s.tiles);
}

void sub_80363FC(Sprite *s)
{
    s->tiles = ALLOC_TILES(ANIM_PLATFORM_RAISING_WHEEL);
    s->anim = ANIM_PLATFORM_RAISING_WHEEL;
    s->variant = 2;
    s->oamFlags = SPRITE_OAM_ORDER(28);
    s->animCursor = 0;
    s->timeUntilNextFrame = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 2);
    UpdateSpriteAnimation(s);
}