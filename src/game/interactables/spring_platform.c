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
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ s32 qWorldX;
    /* 0x10 */ s32 qWorldY;
    /* 0x14 */ s32 qUnk14;
    /* 0x18 */ s32 qUnk18;
    /* 0x1C */ s32 qUnk1C;
    /* 0x20 */ s32 qUnk20;
    /* 0x24 */ s16 somePosX;
    /* 0x26 */ s16 somePosY;
    /* 0x28 */ s16 unk28;
    /* 0x2A */ u8 unk2A;
    /* 0x2B */ u8 unk2B;
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

    spring->base.regionX = regionX;
    spring->base.regionY = regionY;
    spring->base.me = me;
    spring->base.spriteX = me->x;
    spring->base.id = id;
    spring->qWorldX = qWorldX = Q(TO_WORLD_POS(me->x, regionX));
    spring->qWorldY = qWorldY = Q(TO_WORLD_POS(me->y, regionY));

    spring->somePosX = I(spring->qWorldX);
    spring->somePosY = I(spring->qWorldY);
    spring->unk28 = sub_804DC38(kind, I(spring->qWorldX), I(spring->qWorldY), me);
    spring->unk2B = kind;

    qTop = qWorldY + Q(me->d.sData[1] * TILE_WIDTH);
    qMiddleY = Q(me->d.uData[3] * (TILE_WIDTH / 2));
    qLeft = qWorldX + Q(me->d.sData[0] * TILE_WIDTH);
    qMiddleX = Q(me->d.uData[2] * (TILE_WIDTH / 2));

    spring->qUnk14 = qMiddleY;
    spring->qUnk18 = qMiddleX;
    spring->qUnk1C = qLeft + qMiddleX;
    spring->qUnk20 = qTop + qMiddleY;

    for (i = 0; i < 5; i++) {
        if (GetBit(me->d.uData[4], i))
            break;
    }
#ifndef NON_MATCHING
    // only needed for matching
    spring2->unk2A = i + 1;
#else
    spring->unk2A = i + 1;
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

    sub_804DD68(spring);

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p = (i == 0) ? &gPlayers[gStageData.charId] : &gPlayers[p->charFlags.partnerIndex];

        if (sub_802C0D4(p)) {
            continue;
        }
        // _0804C3C4

        r5 = FALSE;

        if ((p->charFlags.anim0 == 168) || (p->charFlags.anim0 == 184) || (p->charFlags.anim0 == 204)
            || ((p->charFlags.anim0 == 213) && (p->charFlags.state1 == 1)) || (p->charFlags.anim0 == 230) || (p->charFlags.anim0 == 254)
            || (p->charFlags.anim0 == 255) || (p->charFlags.anim0 == 258) || (p->charFlags.anim0 == 259) || (p->charFlags.anim0 == 260)
            || (p->charFlags.anim0 == 256)) {
            // _0804C406
            // PERFORMANCE: sub_8020700 is called twice
            //              with identical arguments, if this path is reached.
            if (sub_8020700(s, I(spring->qWorldX), I(spring->qWorldY), 1, p, 1)) {
                r5 = TRUE;
            }
        }
        // _0804C422

        if (r5 || sub_8020700(s, I(spring->qWorldX), I(spring->qWorldY), 1, p, r5)) {
            // _0804C43E

            if (s->variant == 0) {
                SPRITE_FLAG_CLEAR(s, ANIM_OVER);
                s->variant++;
            }
            // _0804C450

            if (r5) {
                SetPlayerCallback(p, Player_800EA74);
            } else {
                SetPlayerCallback(p, Player_800E9A4);
            }

            p->unkA4 = ((spring2->data4_bit5 << 4) | (spring2->data4_bits67 & 0xF));
            sub_8004E98(p, 0x94);
        } else {
            // _0804C49C
            u32 res = sub_8020874(s, I(spring->qWorldX), I(spring->qWorldY), 0, p, r5, 1);
            if (res & 0x20000) {
                s32 diff;
                if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
                    p->qWorldY -= Q(4);
                    p->qWorldY += Q_8_8(res);
                } else {
                    p->qWorldY += Q(4);
                    p->qWorldY += Q_8_8(res);
                }
                // p->qWorldY = diff;
                p->qSpeedAirY = 0;

                if ((p->charFlags.anim0 == 238) || (p->charFlags.anim0 == 239) || (p->charFlags.anim0 == 244)
                    || (p->charFlags.anim0 == 245)) {
                    sub_8012FE0(p);
                    p->charFlags.anim0 = 24;
                    Player_800DAF4(p);
                }
            }
            // _0804C516

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
                    r1 = I(spring->qWorldX);
                    r0 = I(p->qWorldX);
                    r2 = r1 - r0;
                    r0 = r2;
                    if (r2 < 0)
                        r0 = -r2;

                    if ((r0 < 13) && !sub_802C080(p)) {
                        sub_8008E38(p);
                    }
                } else {
                    // _0804C558
                    p->qWorldX += Q((s16)res >> 8);
                }
                // _0804C564

                if (sub_801246C(p) < 0) {
                    if (!sub_802C080(p)) {
                        sub_8008E38(p);
                    }
                } else if (sub_8012550(p) < 0) {
                    // _0804C580

                    if (!sub_802C080(p)) {
                        sub_8008E38(p);
                    }
                }
                p->qSpeedAirX = 0;
            }
            // continue
        }
    }
    // _0804C5AE

    someX = spring->qWorldX;
    worldX = I(someX);
    worldY = I(spring->qWorldY);
    someX = spring->somePosX;
    someY = spring->somePosY;
    me = spring->base.me;
    if (!sub_802C140(someX, someY, worldX, worldY)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, spring->base.spriteX);
        TaskDestroy(gCurTask);
        return;
    }

    sub_804DDD4(spring, s);

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
        // _0804C62C
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