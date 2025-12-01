#include "global.h"
#include "module_unclear.h"
#include "core.h"
#include "sprite.h"
#include "trig.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/interactables/platform_shared.h"
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
    /* 0x00 */ SpriteBase2 base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ u8 unk34[0x10];
    /* 0x44 */ Sprite s2;
    /* 0x6C */ u16 unk6C;
    /* 0x6E */ u16 unk6E;
    /* 0x70 */ u8 kind;
    /* 0x71 */ u8 unk71;
    /* 0x72 */ u8 unk72;
    /* 0x73 */ u8 unk73;
    /* 0x74 */ u8 unk74[NUM_SINGLE_PLAYER_CHARS];
    /* 0x76 */ s8 unk76[NUM_SINGLE_PLAYER_CHARS];
    /* 0x78 */ u16 unk78[NUM_SINGLE_PLAYER_CHARS];
    /* 0x7C */ s32 qWorldX;
    /* 0x80 */ s32 qWorldY;
    /* 0x84 */ Vec2_32 unk84[2];
} DashRing;

void Task_DashRing(void);
bool32 sub_8035480(Player *p, u8 i);
static bool32 SetPlayerAcceleration(Player *p, u8 i);
void sub_80358A0(void);
void sub_803598C(u8 type, Sprite *s, Sprite *s2);
void TaskDestructor_DashRing(struct Task *t);

void CreateDashRing(u8 kind, MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_DashRing, sizeof(DashRing), 0x2100, 0, TaskDestructor_DashRing);
    DashRing *ring = TASK_DATA(t);
    Sprite *s = &ring->s;
    Sprite *s2 = &ring->s2;

    ring->base.regionX = regionX;
    ring->base.regionY = regionY;
    ring->base.me = me;
    ring->base.meX = me->x;
    ring->base.id = id;
    ring->kind = kind;
    ring->base.unk8 = 0;
    ring->unk74[PLAYER_1] = 0;
    ring->unk74[PLAYER_2] = 0;
    ring->unk78[PLAYER_1] = 0;
    ring->unk78[PLAYER_2] = 0;
    ring->unk84[0].x = 0;
    ring->unk84[0].y = 0;
    ring->unk84[1].x = 0;
    ring->unk84[1].y = 0;
    ring->unk76[PLAYER_1] = 0;
    ring->unk76[PLAYER_2] = 0;

#ifndef BUG_FIX
    ring->qWorldX = TO_WORLD_POS(me->x, regionX);
    ring->qWorldY = TO_WORLD_POS(me->y, regionY);
    ring->unk6E = sub_804DC38(kind, ring->qWorldX, ring->qWorldY, ring->base.me);
#else
    ring->qWorldX = Q(TO_WORLD_POS(me->x, regionX));
    ring->qWorldY = Q(TO_WORLD_POS(me->y, regionY));
    ring->unk6E = sub_804DC38(kind, I(ring->qWorldX), I(ring->qWorldY), ring->base.me);
#endif

    ring->unk6C = 0;
    ring->kind = kind;
    ring->unk71 = me->d.uData[4];
    ring->unk72 = 4;

#ifndef BUG_FIX
    // NOTE: Sets Sprite position to world position, not screen pos
    s->x = ring->qWorldX;
    s->y = ring->qWorldY;
#else
    s->x = I(ring->qWorldX) - gCamera.x;
    s->y = I(ring->qWorldY) - gCamera.y;
#endif
    s2->x = s->x;
    s2->y = s->y;

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_803598C(ring->unk71 & 0xF, s, s2);
}

void sub_8035374()
{
    u8 unused[0x8];
    s32 pindex = gStageData.playerIndex;
    s32 r7 = (pindex + 1) & 0x1;
    DashRing *ring = TASK_DATA(gCurTask);
    u8 i;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p = (i != 0) ? &gPlayers[r7] : &gPlayers[pindex];

        if (((p->charFlags.someIndex == 1) || (p->charFlags.someIndex == 2) || (p->charFlags.someIndex == 4)) && !sub_802C0D4(p)) {
            if (ring->unk74[i] == 1) {
                if ((ring->unk71 & 0xF) > 2) {
                    if (ring->unk76[i] == -1) {
                        p->moveState |= MOVESTATE_FACING_LEFT;
                    } else if (ring->unk76[i] == +1) {
                        p->moveState &= ~MOVESTATE_FACING_LEFT;
                    }
                }

                sub_8035480(p, i);
            } else {
                SetPlayerAcceleration(p, i);
            }

            if (ring->unk78[i] != 0) {
                if ((u16)(ring->unk78[i] - 1) < 30) {
                    ring->unk78[i]--;

                    if (ring->unk78[i] > 30) {
                        ring->unk78[i] = 0;
                    }
                    continue;
                } else {
                    p->moveState &= ~(MOVESTATE_IGNORE_INPUT | MOVESTATE_40000);
                }
            } else {
                p->moveState &= ~(MOVESTATE_IGNORE_INPUT | MOVESTATE_40000);
            }
        }
    }
}

bool32 sub_8035480(Player *p, u8 i)
{
    DashRing *ring = TASK_DATA(gCurTask);
    Sprite *s = &ring->s;
    s16 worldX, worldY;

    worldX = I(ring->qWorldX);
    worldY = I(ring->qWorldY);

    if (ring->unk78[i] < 30) {
        p->qSpeedAirX = ring->unk84[i].x;
        p->qSpeedAirY = ring->unk84[i].y;

        if (!sub_8020700(s, worldX, worldY, 0, p, 0)) {
            if (!(p->moveState & MOVESTATE_40000)) {
                ring->unk78[i] = 0;
                ring->unk74[i] = 0;
                p->moveState &= ~MOVESTATE_40000;
                return 0;
            }
        }
    }

    return 1;
}

static bool32 SetPlayerAcceleration(Player *p, u8 i)
{
    s32 speedExp = 9;
    bool32 sb = 0;
    DashRing *ring = TASK_DATA(gCurTask);
    Sprite *s = &ring->s;
    s16 worldX, worldY;

    worldX = I(ring->qWorldX);
    worldY = I(ring->qWorldY);

    if (sub_8020700(s, worldX, worldY, 0, p, 0) == 1) {
        if (!(p->moveState & MOVESTATE_1000000)) {
            sub_8016F28(p);
        }

        if (p->moveState & MOVESTATE_40000) {
            p->moveState &= ~MOVESTATE_40000;
            return FALSE;
        }

        p->charFlags.unk2C_04 = 1;
        sb = TRUE;

        switch ((ring->unk71 & 0xF) - 1) {
            case 0: {
                p->charFlags.anim1 = -1;
                SetPlayerCallback(p, Player_80071A8);
                p->qSpeedAirY = -(ring->unk72 << speedExp);
                p->qSpeedAirX = 0;
                p->qWorldX = ring->qWorldX;
                // p->qWorldY = ring->qWorldY;
                p->unk26 = 0x40;
            } break;

            case 1: {
                SetPlayerCallback(p, Player_8007240);
                p->qSpeedAirY = +(ring->unk72 << speedExp);
                p->qSpeedAirX = 0;
                p->qWorldX = ring->qWorldX;
                // p->qWorldY = ring->qWorldY;
                p->unk26 = 0xC0;
            } break;

            case 3: {
                SetPlayerCallback(p, Player_8007110);
                p->moveState |= MOVESTATE_FACING_LEFT;
                ring->unk76[i] = -1;
                p->qSpeedAirX = -(ring->unk72 << speedExp);
                p->qSpeedAirY = 0;
                // p->qWorldX = ring->qWorldX;
                p->qWorldY = ring->qWorldY;
                p->unk26 = 0x80;
            } break;

            case 7: {
                SetPlayerCallback(p, Player_8007110);
                p->moveState &= ~MOVESTATE_FACING_LEFT;
                ring->unk76[i] = +1;
                p->qSpeedAirX = +(ring->unk72 << speedExp);
                p->qSpeedAirY = 0;
                // p->qWorldX = ring->qWorldX;
                p->qWorldY = ring->qWorldY;
                p->unk26 = 0;
            } break;

            case 4: {
                SetPlayerCallback(p, Player_8007110);
                p->moveState |= MOVESTATE_FACING_LEFT;
                ring->unk76[i] = -1;
                p->qSpeedAirY = -(ring->unk72 << speedExp);
                p->qSpeedAirX = -(ring->unk72 << speedExp);
                p->qWorldX = ring->qWorldX;
                p->qWorldY = ring->qWorldY;
                p->unk26 = 0x60;
            } break;

            case 5: {
                SetPlayerCallback(p, Player_8007240);
                p->moveState |= MOVESTATE_FACING_LEFT;
                ring->unk76[i] = -1;
                p->qSpeedAirY = +(ring->unk72 << speedExp);
                p->qSpeedAirX = -(ring->unk72 << speedExp);
                p->qWorldX = ring->qWorldX;
                p->qWorldY = ring->qWorldY;
                p->unk26 = 0xA0;
            } break;

            case 8: {
                SetPlayerCallback(p, Player_8007110);
                p->moveState &= ~MOVESTATE_FACING_LEFT;
                ring->unk76[i] = +1;
                p->qSpeedAirY = -(ring->unk72 << speedExp);
                p->qSpeedAirX = +(ring->unk72 << speedExp);
                p->qWorldX = ring->qWorldX;
                p->qWorldY = ring->qWorldY;
                p->unk26 = 0x20;
            } break;

            case 9: {
                SetPlayerCallback(p, Player_8007240);
                p->moveState &= ~MOVESTATE_FACING_LEFT;
                ring->unk76[i] = +1;
                p->qSpeedAirY = +(ring->unk72 << speedExp);
                p->qSpeedAirX = +(ring->unk72 << speedExp);
                p->qWorldX = ring->qWorldX;
                p->qWorldY = ring->qWorldY;
                p->unk26 = 0xE0;
            } break;
        }

        if (ring->unk76[i] != 0) {
            p->qSpeedGround = -p->qSpeedGround;
        }

        p->callback(p);
        Player_PlaySong(p, SE_DASH_RING);

        ring->unk84[i].x = p->qSpeedAirX;
        ring->unk84[i].y = p->qSpeedAirY;
        ring->unk74[i] = 1;
        ring->unk78[i] = 30;
    }

    if (sb) {
        return TRUE;
    } else {
        return FALSE;
    }
}

NONMATCH("asm/non_matching/game/interactables/dash_ring__sub_80358A0.inc", void sub_80358A0(void))
{
    DashRing *ring = TASK_DATA(gCurTask);
    MapEntity *me = ring->base.me;
    Sprite *s = &ring->s;
    s32 qLeft, qTop;
    s32 qRight, qBottom;
    s32 qWidth, qHeight;

    qLeft = Q(TO_WORLD_POS(ring->base.meX, ring->base.regionX));
    qTop = Q(TO_WORLD_POS(me->y, ring->base.regionY));

    ring->unk6C = ((gStageData.timer * ring->unk72) + ring->unk6E) & 0x3FF;

    qTop = qTop + Q(me->d.sData[1] * TILE_WIDTH);
    qHeight = Q(me->d.uData[3] * (TILE_WIDTH / 2));
    qLeft = qLeft + Q(me->d.sData[0] * TILE_WIDTH);
    qWidth = Q(me->d.uData[2] * (TILE_WIDTH / 2));
    qRight = qLeft + qWidth;
    qBottom = qTop + qHeight;

    ring->qWorldX = ({
        s32 v = ((SIN(ring->unk6C) * qWidth) >> 14);
        qRight - ((ring->kind & 0x2) ? +v : -v);
    });

    ring->qWorldY = ({
        s32 v = ((qHeight * SIN(ring->unk6C)) >> 14);
        (qBottom - (!(ring->kind & 0x1) ? -v : +v));
    });
}
END_NONMATCH

void sub_803598C(u8 type, Sprite *s, Sprite *s2)
{
    u32 mask = 0;
    void *tiles;

    switch (type) {
        case 2:
            mask = SPRITE_FLAG(Y_FLIP, 1);
            // FALLTHROUGH!!!
        case 0:
        case 1:
        case 3:
        case 7:
        case 11:
        case 12:
        case 13:
        case 14:
        case 15: {
            // TODO: Remove direct VramMalloc call!
            tiles = VramMalloc(MAX_TILES_VARIANT(ANIM_DASH_RING, 2) + MAX_TILES_VARIANT(ANIM_DASH_RING, 3));
            s->tiles = tiles;
            tiles += MAX_TILES_VARIANT(ANIM_DASH_RING, 2) * TILE_SIZE_4BPP;
            s2->tiles = tiles;
            s->variant = 2;
            s2->variant = 3;
        } break;

        case 4:
            mask = SPRITE_FLAG(X_FLIP, 1);
            // FALLTHROUGH!!!
        case 8: {
            // TODO: Remove direct VramMalloc call!
            tiles = VramMalloc(MAX_TILES_VARIANT(ANIM_DASH_RING, 0) + MAX_TILES_VARIANT(ANIM_DASH_RING, 1));
            s->tiles = tiles;
            tiles += MAX_TILES_VARIANT(ANIM_DASH_RING, 0) * TILE_SIZE_4BPP;
            s2->tiles = tiles;
            s->variant = 0;
            s2->variant = 1;
        } break;

        case 5:
        case 6:
        case 9:
        case 10: {
            // TODO: Remove direct VramMalloc call!
            tiles = VramMalloc(MAX_TILES_VARIANT(ANIM_DASH_RING, 4) + MAX_TILES_VARIANT(ANIM_DASH_RING, 5));
            s->tiles = tiles;
            tiles += MAX_TILES_VARIANT(ANIM_DASH_RING, 4) * TILE_SIZE_4BPP;
            s2->tiles = tiles;
            s->variant = 4;
            s2->variant = 5;

            if (type & 0x2) {
                // TODO/BUG?: Does not OR 'mask' value
                mask = SPRITE_FLAG(Y_FLIP, 1);
            }
            if (!(type & 0x4)) {
                mask |= SPRITE_FLAG(X_FLIP, 1);
            }
        } break;
    }

    s->anim = ANIM_DASH_RING;
    s->oamFlags = SPRITE_OAM_ORDER(12);
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;

    s2->anim = ANIM_DASH_RING;
    s2->oamFlags = SPRITE_OAM_ORDER(24);
    s2->animCursor = 0;
    s2->qAnimDelay = Q(0);
    s2->prevVariant = -1;
    s2->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s2->palId = 0;
    s2->hitboxes[0].index = HITBOX_STATE_INACTIVE;

    s->frameFlags = SPRITE_FLAG(PRIORITY, 1) | mask;
    s2->frameFlags = SPRITE_FLAG(PRIORITY, 1) | mask;

    UpdateSpriteAnimation(s);
    UpdateSpriteAnimation(s2);
}

void sub_8035AC8(void)
{
    DashRing *ring = TASK_DATA(gCurTask);
    Sprite *s = &ring->s;
    Sprite *s2 = &ring->s2;
    MapEntity *me = ring->base.me;
    s16 worldX, worldY;
    s16 i;

    worldX = TO_WORLD_POS(ring->base.meX, ring->base.regionX);
    worldY = TO_WORLD_POS(me->y, ring->base.regionY);

    if (!IsWorldPtActive(worldX, worldY)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, ring->base.meX);
        TaskDestroy(gCurTask);
        return;
    } else {
        s->x = I(ring->qWorldX) - gCamera.x;
        s->y = I(ring->qWorldY) - gCamera.y;
        s2->x = s->x;
        s2->y = s->y;
        DisplaySprite(s);
        DisplaySprite(s2);
    }
}

void CreateEntity_DashRing0(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateDashRing(0, me, regionX, regionY, id); }

void CreateEntity_DashRing1(MapEntity *me, u16 regionX, u16 regionY, u8 id) { CreateDashRing(1, me, regionX, regionY, id); }

void TaskDestructor_DashRing(struct Task *t)
{
    u32 p1Index = gStageData.playerIndex;
    u32 p2Index = ((gStageData.playerIndex + 1) % 2u);
    u8 i;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p = (i != 0) ? &gPlayers[p2Index] : &gPlayers[p1Index];
        p->moveState &= ~(MOVESTATE_IGNORE_INPUT | MOVESTATE_40000);
    }

    {
        DashRing *ring = TASK_DATA(t);
        VramFree(ring->s.tiles);
    }
}

void Task_DashRing(void)
{
    sub_8035374();
    sub_80358A0();
    sub_8035AC8();
}