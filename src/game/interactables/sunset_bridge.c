#include "global.h"
#include "task.h"
#include "trig.h"
#include "module_unclear.h"
#include "malloc_vram.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"

#define MAX_BRIDGE_SEGMENTS 16

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ s32 qWorldX;
    /* 0x10 */ s32 qWorldY;

    /* 0x14 */ s16 left;
    /* 0x16 */ s16 top;
    /* 0x18 */ s16 right;
    /* 0x1A */ s16 bottom;
    /* 0x1C */ s32 qMiddleX;
    /* 0x20 */ s16 offsetMiddle;
    /* 0x22 */ s16 unk22;
    /* 0x24 */ u16 unk24;
    /* 0x26 */ u8 filler26[0x2];
    /* 0x28 */ s32 unk28[MAX_BRIDGE_SEGMENTS];
    /* 0x68 */ u16 numSegments;
    /* 0x6C */ s32 unk6C;
    /* 0x70 */ s32 unk70;
    /* 0x74 */ Player *ps[2];
    /* 0x7C */ Player *unk7C;
    /* 0x80 */ Sprite s;
} SunsetBridge; /* 0xA8 */

void Task_SunsetBridge(void);
void sub_8044F74(SunsetBridge *bridge);
void sub_8045060(SunsetBridge *bridge);
void sub_80450D8(SunsetBridge *bridge, Player *p);
void TaskDestructor_SunsetBridge(struct Task *);

// (95.73%) https://decomp.me/scratch/YtwLu
NONMATCH("asm/non_matching/game/interactables/sunset_bridge__CreateEntity_SunsetBridge.inc",
         void CreateEntity_SunsetBridge(MapEntity *me, u16 regionX, u16 regionY, u8 id))
{
    struct Task *t = TaskCreate(Task_SunsetBridge, sizeof(SunsetBridge), 0x2100, 0, TaskDestructor_SunsetBridge);
    SunsetBridge *bridge = TASK_DATA(t);
    Sprite *s = &bridge->s;
    s32 worldX, worldY;
    s32 top, bottom, left, right;
    s32 width;

    bridge->base.regionX = regionX;
    bridge->base.regionY = regionY;
    bridge->base.me = me;
    bridge->base.unk8 = me->x;
    bridge->base.unk9 = id;

    worldX = TO_WORLD_POS(me->x, regionX);
    bridge->qWorldX = worldX;
    worldY = TO_WORLD_POS(me->y, regionY);
    bridge->qWorldY = worldY;

    bridge->ps[0] = &gPlayers[gStageData.charId];
    bridge->ps[1] = &gPlayers[bridge->ps[0]->charFlags.partnerIndex];

    bridge->top = worldY + me->d.sData[1] * TILE_WIDTH;
    bridge->bottom = bridge->top + me->d.uData[3] * TILE_WIDTH;
    bridge->left = worldX + me->d.sData[0] * TILE_WIDTH;
    bridge->right = bridge->left + me->d.uData[2] * TILE_WIDTH;

    bridge->qWorldX = Q(bridge->qWorldX);
    bridge->qWorldY = Q(bridge->qWorldY);
    bridge->unk6C = 0x20;
    bridge->unk70 = 0x20;

    // Without setting the variable, the multiplication gets partly optimized out by the compiler
    width = (me->d.uData[2] * TILE_WIDTH);
    bridge->numSegments = width / ANIM_SUNSET_BRIDGE_WIDTH;

    if (bridge->numSegments > MAX_BRIDGE_SEGMENTS) {
        bridge->numSegments = MAX_BRIDGE_SEGMENTS;
    }
    // _08044D2A

    bridge->offsetMiddle = me->d.uData[2] * (TILE_WIDTH / 2);
    bridge->qMiddleX = Q(bridge->left + bridge->right) / 2;
    bridge->unk22 = me->d.uData[3] * TILE_WIDTH;

    if (bridge->numSegments > 1)
        bridge->unk24 = (Q(2) / (bridge->numSegments - 1));
    else
        bridge->unk24 = Q(2);

    sub_8045060(bridge);

    SET_MAP_ENTITY_INITIALIZED(me);

    s->tiles = ALLOC_TILES(ANIM_SUNSET_BRIDGE);
    s->oamFlags = SPRITE_OAM_ORDER(24);
    s->anim = ANIM_SUNSET_BRIDGE;
    s->variant = 0;
    s->timeUntilNextFrame = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->x = 0;
    s->y = 0;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
    UpdateSpriteAnimation(s);
}
END_NONMATCH

// (99.28%) https://decomp.me/scratch/cFbak
NONMATCH("asm/non_matching/game/interactables/sunset_bridge__Task_SunsetBridge.inc", void Task_SunsetBridge(void))
{
    volatile u32 unused;
    SunsetBridge *bridge = TASK_DATA(gCurTask);
    SpriteBase *base = &bridge->base;
    MapEntity *me = base->me;
    Sprite *s = &bridge->s;

    s16 worldX, worldY;
    u16 numSegments;
    u8 i;

    worldX = I(bridge->qWorldX);
    worldY = I(bridge->qWorldY);

    numSegments = bridge->numSegments;
    bridge->unk7C = NULL;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        // _08044E18
        Player *p = bridge->ps[i];

        bool32 someBool = FALSE;
        s16 segmentX;
        u8 j = 0;
        segmentX = bridge->left + (ANIM_SUNSET_BRIDGE_WIDTH / 2);
        for (; j < numSegments; j++) {
            // _08044E3A
            s32 segmentY = Q(bridge->unk28[j] * bridge->unk70);

            if (sub_8020700(s, segmentX, worldY + (segmentY >> 16), 0, p, 0) && p->qSpeedAirY >= Q(0)) {
                // _mid_section
                p->moveState |= MOVESTATE_20;
                p->moveState &= ~MOVESTATE_IN_AIR;
                p->spr6C = s;

                sub_80450D8(bridge, p);

                someBool = TRUE;

                if (bridge->unk7C == NULL) {
                    bridge->unk7C = p;
                }

                break;
            }

            segmentX += ANIM_SUNSET_BRIDGE_WIDTH;
        }
        // _08044EB8

        if (!someBool && (p->moveState & MOVESTATE_20) && (p->spr6C == s)) {
            p->moveState &= ~MOVESTATE_20;
            p->spr6C = NULL;
        }
    }
    // __08044EE2

    if (!sub_802C140(worldX, worldY, worldX - gCamera.x, worldY - gCamera.y)) {
        Player *p;
        s16 i;
        for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            p = (i != 0) ? &gPlayers[p->charFlags.partnerIndex] : &gPlayers[gStageData.charId];

            sub_80213B0(s, p);
        }

        SET_MAP_ENTITY_NOT_INITIALIZED(me, bridge->base.unk8);
        TaskDestroy(gCurTask);
        return;
    } else {
        sub_8044F74(bridge);
    }
}
END_NONMATCH

void sub_8044F74(SunsetBridge *bridge)
{
    Sprite *s = &bridge->s;
    Player *playerUnk = bridge->unk7C;
    s32 numSegments = bridge->numSegments;
    s32 segmentX;
    s32 r4;
    u8 i;

    s16 screenY = I(bridge->qWorldY) - gCamera.y + 19;

    if (playerUnk != NULL) {
        r4 = ABS(playerUnk->qWorldX - bridge->qMiddleX);
        r4 = r4 / bridge->offsetMiddle;
        r4 = Q(1) - r4;

        CLAMP_INLINE(r4, Q(0), Q(1));
    } else {
        r4 = 0;
    }

    bridge->unk70 = bridge->unk6C;

    if (r4 < bridge->unk70) {
        if (bridge->unk7C != NULL) {
            bridge->unk6C = r4;
        } else {
            bridge->unk6C = bridge->unk70 - 4;
        }
    } else if (r4 > bridge->unk70) {
        bridge->unk6C = bridge->unk70 + 4;
    }

    r4 = bridge->unk70;
    CLAMP_INLINE(r4, Q(0.125), Q(1));

    segmentX = bridge->left + (ANIM_SUNSET_BRIDGE_WIDTH / 2);
    for (i = 0; i < numSegments; i++) {
        s->x = segmentX - gCamera.x;
        s->y = screenY + I(r4 * bridge->unk28[i]);
        DisplaySprite(s);

        segmentX += ANIM_SUNSET_BRIDGE_WIDTH;
    }
}

// (92.63%) https://decomp.me/scratch/M2IgH
NONMATCH("asm/non_matching/game/interactables/Sunset_Bridge__sub_8045060.inc", void sub_8045060(SunsetBridge *bridge))
{
    s32 numSegments = bridge->numSegments;
    u8 i;
    s16 r1 = 0;

    for (i = 0; i < numSegments; i++, r1 += bridge->unk24) {
        bridge->unk28[i] = (SIN(r1) * bridge->unk22) >> 14;
    }
    // _080450AE

    // Set remaining segments' y positions to 0
    for (; i < MAX_BRIDGE_SEGMENTS; i++) {
        bridge->unk28[i] = 0;
    }
}
END_NONMATCH
