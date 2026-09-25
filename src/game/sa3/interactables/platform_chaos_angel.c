#include "global.h"
#include "task.h"
#include "malloc_vram.h"
#include "game/shared/entities_manager.h"
#include "game/shared/stage/camera.h"
#include "game/shared/stage/entity.h"
#include "game/shared/stage/player.h"
#include "game/shared/stage/player_callbacks.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ s16 worldX;
    /* 0x36 */ s16 worldY;
    /* 0x38 */ s32 qWorldX;
    /* 0x3C */ s32 qWorldY;
    /* 0x40 */ s16 unk40;
    /* 0x42 */ u8 unk42;
    /* 0x43 */ u8 unk43;
} PlatformCA; /* size: 0x44 */

void Task_PlatformChaosAngel(void);
void sub_804DB08(void);
void TaskDestructor_PlatformChaosAngel(struct Task *);
static void InitSprite(Sprite *s);

// TODO: Is this s8[] ?
const s8 gUnknown_080D03E8[8][2] = {
    { 0, 0 }, { 2, 1 }, { -1, 2 }, { -3, -2 }, { 1, 1 }, { 3, 0 }, { 2, -3 }, { -1, -1 },
};

void CreateEntity_PlatformChaosAngel(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_PlatformChaosAngel, sizeof(PlatformCA), 0x2100, 0, TaskDestructor_PlatformChaosAngel);
    PlatformCA *platform = TASK_DATA(t);
    Sprite *s;

    platform->base.regionX = regionX;
    platform->base.regionY = regionY;
    platform->base.me = me;
    platform->base.meX = me->x;
    platform->base.id = id;

    platform->worldX = TO_WORLD_POS(me->x, regionX);
    platform->worldY = TO_WORLD_POS(me->y, regionY);

    platform->qWorldX = Q(platform->worldX);
    platform->qWorldY = Q(platform->worldY);

    platform->unk40 = 0;
    platform->unk42 = 0;
    platform->unk43 = 1;

    s = &platform->s;
    s->x = platform->worldX - gCamera.x;
    s->y = platform->worldY - gCamera.y;

    SET_MAP_ENTITY_INITIALIZED(me);

    InitSprite(s);
}

void Task_PlatformChaosAngel(void)
{
    PlatformCA *platform;
    Sprite *s;
    s16 r9;
    s16 i;

    platform = TASK_DATA(gCurTask);
    s = &platform->s;
    r9 = 0;

    if ((gStageData.unk4 != 4) && (platform->unk42 & 0x10)) {
        s32 u4316;
        s32 unk_42_first;
        s16 temp1;
        s16 temp2;
        MapEntity *me = platform->base.me;
        u8 unk42 = (platform->unk42 & 0x7);

        platform->unk42 = ((platform->unk42 + 1) & 0xF) | 0x10;

        if ((platform->unk42 & 0xF) == 0) {
            platform->unk43 += 6;
        }

        if (platform->unk43 > 32) {
            platform->unk43 = 32;
        }

        platform->unk40 += platform->unk43 / 4;

        unk_42_first = gUnknown_080D03E8[unk42][0];
        u4316 = (platform->unk43 * 16);
        temp1 = (unk_42_first * u4316);
        temp2 = (gUnknown_080D03E8[unk42][1] * u4316);

        r9 += (temp2 + platform->unk40);

        platform->qWorldX = (Q(platform->worldX) + temp1);
        platform->qWorldY += r9;
    }

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p = (i == 0) ? &gPlayers[gStageData.playerIndex] : &gPlayers[p->charFlags.partnerIndex];
        s32 res;

        if (!sub_802C0D4(p)) {
            if ((p->moveState & MOVESTATE_COLLIDING_ENT) && (p->sprColliding == s)) {
                s32 res = sub_80110E8(3, p, NULL, NULL);
                if (res > 0) {
                    s32 q4 = Q(4);
                    p->qWorldY = p->qWorldY + q4 + r9;
                } else {
                    p->qWorldY += Q(res);
                }
            }

            res = sub_8020950(s, I(platform->qWorldX), I(platform->qWorldY), p, 0);
            if (res & 0x10000) {
                p->qWorldY += (s16)Q(res);
                p->qSpeedAirY = 0;
                platform->unk42 |= 0x10;
            }
        }
    }

    sub_804DB08();
}

void sub_804DB08(void)
{
    PlatformCA *platform = TASK_DATA(gCurTask);
    MapEntity *me = platform->base.me;
    Sprite *s;
    s16 worldX, worldY;
    s16 i;

    worldX = I(platform->qWorldX);
    worldY = I(platform->qWorldY);

    s = &platform->s;

    if (!IsWorldPtActive(worldX, worldY)) {
        for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            Player *p = GET_SP_PLAYER_V1(i);

            ResolvePlayerSpriteCollision(s, p);
        }

        me->x = platform->base.meX;
        TaskDestroy(gCurTask);
        return;
    } else {
        s->x = worldX - gCamera.x;
        s->y = worldY - gCamera.y;
        UpdateSpriteAnimation(s);

        if (IsScreenPtActive32px(s->x, s->y) == TRUE) {
            DisplaySprite(s);
        }
    }
}

void TaskDestructor_PlatformChaosAngel(struct Task *t)
{
    PlatformCA *platform = TASK_DATA(t);
    VramFree(platform->s.tiles);
}

static void InitSprite(Sprite *s)
{
    s->tiles = ALLOC_TILES(ANIM_FALL_PLATFORM_CA);
    s->anim = ANIM_FALL_PLATFORM_CA;
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
