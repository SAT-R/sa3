#include "global.h"
#include "task.h"
#include "malloc_vram.h"
#include "module_unclear.h"
#include "game/interactables/platform_shared.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/player_callbacks.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"
#include "constants/zones.h"

// TODO: Maybe rename "Platform Spring"?
typedef struct {
    /* 0x00 */ PlatformShared shared;
    /* 0x2C */ Sprite s;
    /* 0x54 */ Hitbox reserved;
    /* 0x5C */ u8 data4_bits67;
    /* 0x5D */ u8 data4_bit5;
} SpringPlatform; /* 0x60 */

void Task_SpringPlatform(void);
static void InitSprite(Sprite *s, u16 param1);
void TaskDestructor_SpringPlatform(struct Task *);

// TODO: The constants used for 'kind' might be the same as used in 'spring'.
//       Double-check, once springs are decompiled!
void CreateEntity_SpringPlatform(u16 kind, MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_SpringPlatform, sizeof(SpringPlatform), 0x2100, 0, TaskDestructor_SpringPlatform);
    SpringPlatform *spring = TASK_DATA(t);
#ifndef NON_MATCHING
    // only needed for matching
    SpringPlatform *spring2 = TASK_DATA(t);
#endif
    Sprite *s;
    s32 qWorldX, qWorldY;
    s32 qLeft, qTop, qMiddleX, qMiddleY;
    s16 i;

    spring->shared.base.regionX = regionX;
    spring->shared.base.regionY = regionY;
    spring->shared.base.me = me;
    spring->shared.base.spriteX = me->x;
    spring->shared.base.id = id;
    spring->shared.qWorldX = qWorldX = Q(TO_WORLD_POS(me->x, regionX));
    spring->shared.qWorldY = qWorldY = Q(TO_WORLD_POS(me->y, regionY));

    spring->shared.somePosX = I(spring->shared.qWorldX);
    spring->shared.somePosY = I(spring->shared.qWorldY);
    spring->shared.unk28 = sub_804DC38(kind, I(spring->shared.qWorldX), I(spring->shared.qWorldY), me);
    spring->shared.kind = kind;

    qTop = qWorldY + Q(me->d.sData[1] * TILE_WIDTH);
    qMiddleY = Q(me->d.uData[3] * (TILE_WIDTH / 2));
    qLeft = qWorldX + Q(me->d.sData[0] * TILE_WIDTH);
    qMiddleX = Q(me->d.uData[2] * (TILE_WIDTH / 2));

    spring->shared.qHalfHeight = qMiddleY;
    spring->shared.qHalfWidth = qMiddleX;
    spring->shared.qMiddleX = qLeft + qMiddleX;
    spring->shared.qMiddleY = qTop + qMiddleY;

    for (i = 0; i < 5; i++) {
        if (GetBit(me->d.uData[4], i))
            break;
    }
#ifndef NON_MATCHING
    // only needed for matching
    spring2->shared.unk2A = i + 1;
#else
    spring->shared.unk2A = i + 1;
#endif

    spring->data4_bits67 = (me->d.uData[4] >> 6);
    spring->data4_bit5 = GetBit(me->d.uData[4], 5);
    s = &spring->s;
    s->x = I(qWorldX);
    s->y = I(qWorldY);

    SET_MAP_ENTITY_INITIALIZED(me);

    InitSprite(s, spring->data4_bit5);
}

void Task_SpringPlatform(void)
{
    SpringPlatform *spring = TASK_DATA(gCurTask);
    SpringPlatform *spring2 = TASK_DATA(gCurTask);
    Sprite *s = &spring->s;
    MapEntity *me;
    s16 i;
    bool32 r5;
    s32 worldX, worldY, someX, someY;

    sub_804DD68(&spring->shared);

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p = (i == 0) ? &gPlayers[gStageData.charId] : &gPlayers[p->charFlags.partnerIndex];

        if (sub_802C0D4(p)) {
            continue;
        }

        r5 = FALSE;

        if ((p->charFlags.anim0 == 168) || (p->charFlags.anim0 == 184) || (p->charFlags.anim0 == 204)
            || ((p->charFlags.anim0 == 213) && (p->charFlags.state1 == 1)) || (p->charFlags.anim0 == 230) || (p->charFlags.anim0 == 254)
            || (p->charFlags.anim0 == 255) || (p->charFlags.anim0 == 258) || (p->charFlags.anim0 == 259) || (p->charFlags.anim0 == 260)
            || (p->charFlags.anim0 == 256)) {
            if (sub_8020700(s, I(spring->shared.qWorldX), I(spring->shared.qWorldY), 1, p, 1)) {
                r5 = TRUE;
            }
        }

        if (r5 || sub_8020700(s, I(spring->shared.qWorldX), I(spring->shared.qWorldY), 1, p, r5)) {
            if (s->variant == 0) {
                SPRITE_FLAG_CLEAR(s, ANIM_OVER);
                s->variant++;
            }

            if (r5) {
                SetPlayerCallback(p, Player_800EA74);
            } else {
                SetPlayerCallback(p, Player_800E9A4);
            }

            p->unkA4 = ((spring2->data4_bit5 << 4) | (spring2->data4_bits67 & 0xF));
            sub_8004E98(p, 0x94);
        } else {
            u32 res = sub_8020874(s, I(spring->shared.qWorldX), I(spring->shared.qWorldY), 0, p, r5, 1);
            if (res & 0x20000) {
                if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
                    p->qWorldY -= Q(4);
                    p->qWorldY += Q_8_8(res);
                } else {
                    p->qWorldY += Q(4);
                    p->qWorldY += Q_8_8(res);
                }
                p->qSpeedAirY = 0;

                if ((p->charFlags.anim0 == 238) || (p->charFlags.anim0 == 239) || (p->charFlags.anim0 == 244)
                    || (p->charFlags.anim0 == 245)) {
                    sub_8012FE0(p);
                    p->charFlags.anim0 = 24;
                    Player_800DAF4(p);
                }
            }

            if (res & 0xC0000) {
                if ((p->moveState & (MOVESTATE_40000 | MOVESTATE_IN_AIR)) == MOVESTATE_40000) {
#ifndef NON_MATCHING
                    register s32 r0 asm("r0");
                    register s32 r1 asm("r1");
                    register s32 r2 asm("r2");
#else
                    s32 r0;
                    s32 r1;
                    s32 r2;
#endif
                    r1 = I(spring->shared.qWorldX);
                    r0 = I(p->qWorldX);
                    r2 = r1 - r0;
                    r0 = r2;
                    if (r2 < 0)
                        r0 = -r2;

                    if ((r0 < 13) && !sub_802C080(p)) {
                        sub_8008E38(p);
                    }
                } else {
                    p->qWorldX += Q((s16)res >> 8);
                }

                if (sub_801246C(p) < 0) {
                    if (!sub_802C080(p)) {
                        sub_8008E38(p);
                    }
                } else if (sub_8012550(p) < 0) {
                    if (!sub_802C080(p)) {
                        sub_8008E38(p);
                    }
                }
                p->qSpeedAirX = 0;
            }
        }
    }

    someX = spring->shared.qWorldX;
    worldX = I(someX);
    worldY = I(spring->shared.qWorldY);
    someX = spring->shared.somePosX;
    someY = spring->shared.somePosY;
    me = spring->shared.base.me;
    if (!sub_802C140(someX, someY, worldX, worldY)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, spring->shared.base.spriteX);
        TaskDestroy(gCurTask);
        return;
    }

    sub_804DDD4(&spring->shared, s);

    // Switch back to idle animation
    if ((s->variant == 1) && (s->frameFlags & SPRITE_FLAG_MASK_ANIM_OVER)) {
        s->variant = 0;
    }
}

static void InitSprite(Sprite *s, u16 param1)
{
    if (gStageData.zone == ZONE_4) {
        s->tiles = ALLOC_TILES(ANIM_SPRING_PLATFORM_4);
        s->anim = ANIM_SPRING_PLATFORM_4;
        s->variant = 0;
    } else {
        s->tiles = ALLOC_TILES(ANIM_SPRING_PLATFORM_6);
        s->anim = ANIM_SPRING_PLATFORM_6;
        s->variant = 0;
    }

    s->oamFlags = SPRITE_OAM_ORDER(24);
    s->animCursor = 0;
    s->timeUntilNextFrame = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->hitboxes[1].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);

    if (param1) {
        SPRITE_FLAG_SET(s, Y_FLIP);
    }

    UpdateSpriteAnimation(s);
}

void CreateEntity_SpringPlatformA(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    CreateEntity_SpringPlatform(0, me, regionX, regionY, id);
}

void CreateEntity_SpringPlatformB(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    CreateEntity_SpringPlatform(3, me, regionX, regionY, id);
}

void TaskDestructor_SpringPlatform(struct Task *t)
{
    SpringPlatform *spring = TASK_DATA(t);
    VramFree(spring->s.tiles);
}