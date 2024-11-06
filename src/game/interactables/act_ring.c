#include "global.h"
#include "module_unclear.h"
#include "malloc_vram.h"
#include "task.h"
#include "game/game.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/player_callbacks.h"
#include "game/save.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"
#include "constants/songs.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s0;
    /* 0x34 */ Sprite s1;
    /* 0x5C */ s16 worldX;
    /* 0x5E */ s16 worldY;
    /* 0x60 */ u8 unk60;
    /* 0x61 */ u8 act;
    /* 0x62 */ u8 unk62;
    /* 0x63 */ u8 wasCompletedBefore;
} ActRing; /* size: 0x64 */

void Task_ActRingMain(void);
void TaskDestructor_ActRing(struct Task *);
void sub_8040B34(ActRing *);
bool32 sub_8040BE4(void);

void CreateEntity_ActRing(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_ActRingMain, sizeof(ActRing), 0x2100, 0, TaskDestructor_ActRing);
    ActRing *ring = TASK_DATA(t);
    s16 act;

    ring->base.regionX = regionX;
    ring->base.regionY = regionY;
    ring->base.me = me;
    ring->base.spriteX = me->x;
    ring->base.id = id;

    for (act = 0; act < 3; act++) {
        if (GetBit(me->d.uData[4], act)) {
            break;
        }
    }

    ring->worldX = TO_WORLD_POS(me->x, regionX);
    ring->worldY = TO_WORLD_POS(me->y, regionY);
    ring->act = act;
    ring->unk60 = 0;
    ring->unk62 = me->d.uData[4] >> 7;
    ring->wasCompletedBefore = GetBit(gSaveGame.unlockedStages[gStageData.zone], act);

    {
        Sprite *s = &ring->s0;
        s->x = ring->worldX - gCamera.x;
        s->y = ring->worldY - gCamera.y;
    }

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_8040B34(ring);
}

void Task_ActRingMain(void)
{
    Player *p = &gPlayers[gStageData.playerIndex];
    ActRing *ring = TASK_DATA(gCurTask);
    Player *partner;
    s16 i;

    if ((p->callback != Player_80052C8) && (p->callback != Player_800522C)) {
        if (!(p->moveState & (MOVESTATE_1000000 | MOVESTATE_200 | MOVESTATE_100)) && (gStageData.playerIndex == CHARACTER_SONIC)) {
            Sprite *s = &ring->s0;
            s16 worldX = ring->worldX;
            s16 worldY = ring->worldY;
            if (sub_8020700(s, worldX, worldY, 0, p, 0)) {
                sub_8016F28(p);
                sub_8019A64(p);
                Player_PlaySoundEffect(p, SE_BIG_WARP_RING);

                gStageData.nextMapIndex = (gStageData.zone * 10) + ring->act + 3;
                gStageData.unkC = 0;

                SetPlayerCallback(p, Player_800AD24);

                partner = &gPlayers[p->charFlags.partnerIndex];

                if (partner->charFlags.someIndex == 2) {
                    SetPlayerCallback(partner, Player_800AD24);
                }

                if (GAME_MODE_IS_MULTI_PLAYER(gStageData.gameMode)) {
                    sub_80275B8((u8)gStageData.nextMapIndex, 0, gStageData.unkC);
                }

                gStageData.unk4 = 8;
            }
        }
    } else {
        for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            p = GET_SP_PLAYER_V0(i);

            if ((p->charFlags.someIndex == 1) || (p->charFlags.someIndex == 2) || (p->charFlags.someIndex == 4)) {
                if (gStageData.entryIndex == (ring->act + 1)) {
                    if (ring->unk62 != 0) {
                        p->qSpeedAirX = -Q(4);
                        p->moveState |= MOVESTATE_FACING_LEFT;
                    } else {
                        p->qSpeedAirX = +Q(4);
                        p->moveState &= ~MOVESTATE_FACING_LEFT;
                    }
                }
            }
        }
    }

    sub_8040BE4();
}

void sub_8040B34(ActRing *ring)
{
    Sprite *s = &ring->s0;
    u8 act = ring->act;

    s->tiles = ALLOC_TILES(ANIM_ACT_RING);
    s->anim = ANIM_ACT_RING;
    s->variant = act;
    s->oamFlags = SPRITE_OAM_ORDER(24);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
    UpdateSpriteAnimation(s);

    if (ring->wasCompletedBefore) {
        s = &ring->s1;
        s->tiles = ALLOC_TILES_VARIANT(ANIM_ACT_RING, 3);
        s->anim = ANIM_ACT_RING;
        s->variant = 3;
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

bool32 sub_8040BE4(void)
{
    ActRing *ring = TASK_DATA(gCurTask);
    Sprite *s = &ring->s0;
    MapEntity *me = ring->base.me;
    s16 worldX, worldY;

    worldX = ring->worldX;
    worldY = ring->worldY;

    if (!IsPointInScreenRect(worldX, worldY)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, ring->base.spriteX);
        TaskDestroy(gCurTask);
        return FALSE;
    } else {
        s->x = worldX - gCamera.x;
        s->y = worldY - gCamera.y;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);

        if (ring->wasCompletedBefore) {
            Sprite *s = &ring->s1;
            s->x = worldX - gCamera.x;
            s->y = worldY - gCamera.y;
            UpdateSpriteAnimation(s);
            DisplaySprite(s);
        }
    }

    return TRUE;
}

void TaskDestructor_ActRing(struct Task *t)
{
    ActRing *ring = TASK_DATA(t);

    VramFree(ring->s0.tiles);

    if (ring->wasCompletedBefore) {
        VramFree(ring->s1.tiles);
    }
}

void sub_8040CD0(void) { sub_8040BE4(); }