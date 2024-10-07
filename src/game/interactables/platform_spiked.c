#include "global.h"
#include "malloc_vram.h"
#include "module_unclear.h"
#include "task.h"
#include "trig.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/stage.h"
#include "game/interactables/platform_shared.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ s32 qWorldX;
    /* 0x10 */ s32 qWorldY;
    /* 0x14 */ u16 unk14;
    /* 0x16 */ u16 unk16;
    /* 0x18 */ u8 unk18;
    /* 0x1C */ s32 unk1C;
    /* 0x20 */ s32 unk20;
    /* 0x24 */ s32 unk24;
    /* 0x28 */ s32 unk28;
    /* 0x2C */ s32 unk2C;
    /* 0x30 */ s32 unk30;

    /* 0x34 */ s16 unk34;
    /* 0x36 */ s16 unk36;
    /* 0x38 */ Player *ps[NUM_SINGLE_PLAYER_CHARS];
    /* 0x40 */ Sprite s;
    /* 0x68 */ u8 filler68[0x10];
} PlatformSpiked; /* size: 0x78 */

void Task_80452AC(void);
void sub_80455FC(PlatformSpiked *);
void TaskDestructor_PlatformSpiked(struct Task *);

void CreateEntity_PlatformSpiked(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_80452AC, sizeof(PlatformSpiked), 0x2100, 0, TaskDestructor_PlatformSpiked);
    PlatformSpiked *platform = TASK_DATA(t);
    Sprite *s;
    s32 worldX, worldY;
    u8 i;

    platform->base.regionX = regionX;
    platform->base.regionY = regionY;
    platform->base.me = me;
    platform->base.unk8 = me->x;
    platform->base.unk9 = id;

    // NOTE:
    //   platform->qWorldX/Y not yet fixed-point value here
    worldX = TO_WORLD_POS(me->x, regionX);
    platform->qWorldX = worldX;
    worldY = TO_WORLD_POS(me->y, regionY);
    platform->qWorldY = worldY;

    platform->unk34 = worldX;
    platform->unk36 = worldY;

    platform->unk1C = Q(worldY + me->d.sData[1] * TILE_WIDTH);
    platform->unk20 = Q(me->d.uData[3] * (TILE_WIDTH / 2));
    platform->unk24 = Q(worldX + me->d.sData[0] * TILE_WIDTH);
    platform->unk28 = Q(me->d.uData[2] * (TILE_WIDTH / 2));

    platform->unk2C = platform->unk24 + platform->unk28;
    platform->unk30 = platform->unk1C + platform->unk20;

    platform->ps[0] = &gPlayers[gStageData.playerIndex];
    platform->ps[1] = &gPlayers[platform->ps[0]->charFlags.partnerIndex];

    platform->unk16 = sub_804DC38(0, worldX, worldY, me);
    platform->unk14 = 0;

    // NOTE: Only now platform->qWorldX/Y is fixed-point value
    platform->qWorldX = Q(platform->qWorldX);
    platform->qWorldY = Q(platform->qWorldY);

    for (i = 0; i < 6; i++) {
        if ((me->d.uData[4] >> i) & 1)
            break;
    }

    platform->unk18 = i + 1;

    SET_MAP_ENTITY_INITIALIZED(me);

    s = &platform->s;
    s->tiles = ALLOC_TILES(ANIM_PLATFORM_SPIKED);
    s->anim = ANIM_PLATFORM_SPIKED;
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

void Task_80452AC(void)
{
    PlatformSpiked *platform = TASK_DATA(gCurTask);
    MapEntity *me = platform->base.me;
    Sprite *s = &platform->s;
    Player **p0;
    Player *p;
    s32 qWorldX0, qWorldY0;
    s32 qWorldX, qWorldY;
    s32 worldX, worldY;
    u8 i;

    qWorldX0 = platform->qWorldX;
    qWorldY0 = platform->qWorldY;

    if (platform->unk18 > 0) {
        s32 val = gStageData.timer * platform->unk18 + platform->unk16;
        platform->unk14 = val & ONE_CYCLE;
    } else {
        s32 val = gStageData.timer;
        platform->unk14 = ((val + (platform->unk16 >> 2)) & 0xFF) << 2;
    }

    qWorldX = platform->qWorldX;
    qWorldY = platform->qWorldY;

    platform->qWorldX = platform->unk2C + ((SIN(platform->unk14) * platform->unk28) >> 14);
    platform->qWorldY = platform->unk30 + ((SIN(platform->unk14) * platform->unk20) >> 14);

    qWorldX -= platform->qWorldX;
    qWorldY -= platform->qWorldY;

    for (i = 0, p0 = &platform->ps[0], worldX = I(qWorldX0), worldY = I(qWorldY0); i < (s32)ARRAY_COUNT(platform->ps); i++) {
        p = p0[i];

        if ((p->charFlags.someIndex != 1) && (p->charFlags.someIndex != 2) && (p->charFlags.someIndex != 4)) {
            continue;
        }

        if (sub_802C0D4(p)) {
            continue;
        }

        if ((p->moveState & MOVESTATE_20) && p->spr6C == s) {
            p->qWorldX -= qWorldX;
            p->qWorldY += +Q(2);
            p->qWorldY -= qWorldY;
        }

        if ((p->framesInvincible != 0) || (p->framesInvulnerable != 0) || sub_802C080(p)
            || (!sub_8020CE0(s, I(platform->qWorldX), I(platform->qWorldY), 1, p)
                && !sub_8020CE0(s, I(platform->qWorldX), I(platform->qWorldY), 2, p))) {
            u32 res = sub_8020950(s, I(platform->qWorldX), I(platform->qWorldY), p, 0);

            if (res & 0x10000) {
                p->qWorldY += Q_8_8(res);

                if (p->charFlags.anim0 == 92 || p->charFlags.anim0 == 93) {
                    if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
                        p->qWorldY -= Q(32);
                    } else {
                        p->qWorldY += Q(32);
                    }
                }

                if ((sub_801226C(p) < 0) && (!sub_802C080(p))) {
                    sub_8008E38(p);
                }
            } else if (res & 0x20000) {
                p->qWorldY += +Q(1);
                p->qWorldY += Q_8_8(res);
                p->qSpeedAirY = 0;

                if ((sub_8012368(p) < 0) && (!sub_802C080(p))) {
                    sub_8008E38(p);
                }
            } else if (res & 0x40000) {
                p->qWorldX += Q((s16)res >> 8);

                if (p->keyInput & DPAD_LEFT) {
                    s32 qPlatformX = platform->qWorldX;
                    p->qWorldX = qPlatformX + Q(16); // NOTE: This should be a nop, right?

                    if (qWorldX != 0) {
                        p->qWorldX = qPlatformX + Q(18);
                    } else {
                        p->qWorldX = qPlatformX + Q(17);
                    }

                    p->qSpeedGround = -qWorldX;

                    p->moveState |= MOVESTATE_40;
                }

                if ((sub_801246C(p) < 0) && (!sub_802C080(p))) {
                    sub_8008E38(p);
                }
            } else if (res & 0x80000) {
                p->qWorldX += Q((s16)res >> 8);

                if (p->keyInput & DPAD_RIGHT) {
                    s32 qPlatformX = platform->qWorldX;
                    p->qWorldX = qPlatformX - Q(16); // NOTE: This should be a nop, right?

                    if (qWorldX != 0) {
                        p->qWorldX = qPlatformX - Q(18);
                    } else {
                        p->qWorldX = qPlatformX - Q(17);
                    }

                    p->qSpeedGround = -qWorldX;

                    p->moveState |= MOVESTATE_40;
                }

                if ((sub_8012550(p) < 0) && (!sub_802C080(p))) {
                    sub_8008E38(p);
                }
            }
        }
    }

    if (!sub_802C140(platform->unk34, platform->unk36, worldX - gCamera.x, worldY - gCamera.y)) {
        s16 j;

        for (j = 0; j < (s32)ARRAY_COUNT(platform->ps); j++) {
            p = GET_SP_PLAYER_V1(j);

            sub_80213B0(s, p);
        }

        SET_MAP_ENTITY_NOT_INITIALIZED(me, platform->base.unk8);
        TaskDestroy(gCurTask);
        return;
    } else {
        sub_80455FC(platform);
    }
}

void sub_80455FC(PlatformSpiked *platform)
{
    Sprite *s = &platform->s;

    s->x = I(platform->qWorldX) - gCamera.x;
    s->y = I(platform->qWorldY) - gCamera.y;
    UpdateSpriteAnimation(s);

    SPRITE_FLAG_SET(s, X_FLIP);
    DisplaySprite(s);

    SPRITE_FLAG_CLEAR(s, X_FLIP);
    DisplaySprite(s);
}

void TaskDestructor_PlatformSpiked(struct Task *t)
{
    PlatformSpiked *platform = TASK_DATA(t);
    VramFree(platform->s.tiles);
}
