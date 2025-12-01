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
#include "constants/move_states.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ s16 worldX;
    /* 0x36 */ s16 worldY;
    /* 0x38 */ s32 qWorldX;
    /* 0x3C */ s32 qWorldY;
    /* 0x40 */ u16 unk40;
    /* 0x42 */ u8 unk42;
    /* 0x43 */ u8 unk43;
} PlatformCA; /* size: 0x44 */

void Task_PlatformChaosAngel(void);
void sub_804DB08(void);
void TaskDestructor_PlatformChaosAngel(struct Task *);
static void InitSprite(Sprite *s);

extern u8 gUnknown_080D03E8[8][2];

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

// (85.26%) https://decomp.me/scratch/K73NL
NONMATCH("asm/non_matching/game/interactables/platform_ca__Task_PlatformChaosAngel.inc", void Task_PlatformChaosAngel(void))
{
    PlatformCA *platform = TASK_DATA(gCurTask);
    Sprite *s = &platform->s;
    s16 r9 = 0;
    s32 qWorldX, qWorldY;
    s32 qWorldX32, qWorldY32;
    s32 qLeft, qTop;
    s16 i;
    s16 temp, temp2;

    if ((gStageData.unk4 == 4) || (platform->unk42 & 0x10)) {
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

        temp = gUnknown_080D03E8[unk42][0];
        temp2 = (platform->unk43 * 16);
        temp *= temp2;

        platform->unk40 = gUnknown_080D03E8[unk42][1] * temp2;
        qLeft += qWorldX;
        platform->qWorldX = qLeft;

        qTop = Q(platform->worldX) + temp;
        platform->qWorldX = qTop;
        r9 = platform->unk43 * 16;
        platform->qWorldY += temp;
    }

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p = GET_SP_PLAYER_V0(i);

        if (!sub_802C0D4(p)) {
            s32 res;

            if ((p->moveState & MOVESTATE_COLLIDING_ENT) && (p->sprColliding == s)) {

                res = sub_80110E8(3, p, NULL, NULL);
                if (res > 0) {
                    p->qWorldY += Q(4) + r9;
                    asm("");
                } else {
                    p->qWorldY += Q(res);
                }
            }

            res = sub_8020950(s, I(platform->qWorldX), I(platform->qWorldY), p, 0);

            if (res & 0x10000) {
                s16 res16 = Q(res);
                p->qWorldY += res16;
                p->qSpeedAirY = 0;
                platform->unk42 |= 0x10;
            }
        }
    }

    sub_804DB08();
}
END_NONMATCH

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

        if (sub_802C1F8(s->x, s->y) == TRUE) {
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
