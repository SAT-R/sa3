#include "global.h"
#include "core.h"
#include "trig.h"
#include "sprite.h"
#include "malloc_vram.h"
#include "module_unclear.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/player_callbacks.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"
#include "constants/songs.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite sprites[4];
    /* 0xAC */ void *tiles;
    /* 0xB0 */ u8 unkB0;
    /* 0xB1 */ u8 unkB1;
    /* 0xB2 */ u16 timer;
    /* 0xB4 */ s16 unkB4[4];
    /* 0xBC */ s16 unkBC[4];
} PlatformMaybeFalling; /* 0xC4 */

void Task_PlatformMaybeFalling(void);
void sub_8042EA8(PlatformMaybeFalling *platform);
void sub_8042F10(void);
void TaskDestructor_PlatformMaybeFalling(struct Task *t);

void CreateEntity_PlatformMaybeFalling(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_PlatformMaybeFalling, sizeof(PlatformMaybeFalling), 0x2100, 0, TaskDestructor_PlatformMaybeFalling);
    PlatformMaybeFalling *platform = TASK_DATA(t);

    platform->base.regionX = regionX;
    platform->base.regionY = regionY;
    platform->base.me = me;
    platform->base.spriteX = me->x;
    platform->base.id = id;

    platform->unkB0 = 2;
    platform->unkB1 = GetBit(me->d.uData[4], 7);
    platform->timer = 0;
    platform->unkB4[0] = +40;
    platform->unkBC[0] = +18;
    platform->unkB4[1] = +40;
    platform->unkBC[1] = -24;
    platform->unkB4[2] = -40;
    platform->unkBC[2] = +18;
    platform->unkB4[3] = -40;
    platform->unkBC[3] = -24;

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_8042EA8(platform);
}

// (97.36%) https://decomp.me/scratch/DdoVW
NONMATCH("asm/non_matching/game/interactables/platform_maybe_falling__Task_PlatformMaybeFalling.inc", void Task_PlatformMaybeFalling(void))
{
    PlatformMaybeFalling *platform = TASK_DATA(gCurTask);
    MapEntity *me = platform->base.me;
    s16 worldX, worldY;
    s16 i, pid;

    worldX = TO_WORLD_POS(platform->base.spriteX, platform->base.regionX);
    worldY = TO_WORLD_POS(me->y, platform->base.regionY);

    platform->timer = gStageData.timer & 0x1FF;

    for (i = 0; i < 4; i++) {
        // _08042C76_loop
        Sprite *s;
        s32 r3 = (platform->timer + (i << 7)) & 0x1FF;
        s16 sb = platform->unkB4[i];
        s16 r8 = platform->unkBC[i];
        u16 index;

        r3 &= 0x1FF;

        if (r3 < 0x40) {
            index = r3;
            index *= 8;
            platform->unkBC[i] = -4 - ((COS(index) * 22) >> 14);
            platform->unkB4[i] = -0x60 - ((SIN(index) * 22) >> 14);
        } else if (r3 < 0x100) {
            platform->unkB4[i] = r3 - 0xA0;
            platform->unkBC[i] = 18;
        } else if (r3 < 0x140) {
            index = (r3 - 0xC0);
            index *= 8;
            platform->unkBC[i] = -4 - ((COS(index) * 22) >> 14);
            platform->unkB4[i] = 0x60 - ((SIN(index) * 22) >> 14);
        } else {
            // _08042D50
            platform->unkB4[i] = 0x1A0 - r3;
            platform->unkBC[i] = -26;
        }

        if (platform->unkB1 == 0) {
            NEGATE(platform->unkB4[i]);
        }

        sb -= platform->unkB4[i];
        r8 -= platform->unkBC[i];

        s = &platform->sprites[i];
        for (pid = 0; pid < NUM_SINGLE_PLAYER_CHARS; pid++) {
            Player *p = GET_SP_PLAYER_V0(pid);

            if ((p->charFlags.someIndex == 1) || (p->charFlags.someIndex == 2) || (p->charFlags.someIndex == 4)) {
                s32 res;

                if (!sub_802C0D4(p)) {
                    if ((p->moveState & MOVESTATE_COLLIDING_ENT) && (p->sprColliding == s)) {
                        p->qWorldX -= Q(sb);
                        p->qWorldY += Q(4);
                        p->qWorldY -= Q(r8);
                    }
                    // _08042E32

                    res = sub_8020950(s, platform->unkB4[i] + worldX, platform->unkBC[i] + worldY, p, 0);

                    if (res & 0x10000) {
                        p->qWorldY += Q_8_8(res);
                    }
                }
            }
        }
    }

    sub_8042F10();
}
END_NONMATCH

void sub_8042EA8(PlatformMaybeFalling *platform)
{
    s16 i;
    platform->tiles = ALLOC_TILES(ANIM_PLATFORM_3_0);

    for (i = 0; i < (s32)ARRAY_COUNT(platform->sprites); i++) {
        Sprite *s = &platform->sprites[i];
        s->tiles = platform->tiles;
        s->anim = ANIM_PLATFORM_3_0;
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
}