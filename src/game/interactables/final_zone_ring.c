#include "global.h"
#include "module_unclear.h"
#include "malloc_vram.h"
#include "sprite.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player_callbacks.h"
#include "game/save.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/move_states.h"
#include "constants/songs.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ s16 worldX;
    /* 0x36 */ s16 worldY;
} FinalZoneRing; /* size: 0x38 */

void Task_FinalZoneRing(void);
void sub_804F4E4(void);
void TaskDestructor_FinalZoneRing(struct Task *t);
void InitFinalZoneRingSprite(Sprite *s);

void CreateEntity_FinalZoneRing(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    if (gSaveGame.unlockedZones > ZONE_FINAL) {
        struct Task *t = TaskCreate(Task_FinalZoneRing, sizeof(FinalZoneRing), 0x2100, 0, TaskDestructor_FinalZoneRing);
        FinalZoneRing *ring = TASK_DATA(t);
        Sprite *s;

        ring->base.regionX = regionX;
        ring->base.regionY = regionY;
        ring->base.me = me;
        ring->base.meX = me->x;
        ring->base.id = id;
        ring->worldX = TO_WORLD_POS(me->x, regionX);
        ring->worldY = TO_WORLD_POS(me->y, regionY);

        s = &ring->s;
        s->x = ring->worldX - gCamera.x;
        s->y = ring->worldY - gCamera.y;
        InitFinalZoneRingSprite(s);
    }

    SET_MAP_ENTITY_INITIALIZED(me);
}

void Task_FinalZoneRing(void)
{
    FinalZoneRing *ring = TASK_DATA(gCurTask);
    Player *p = &gPlayers[gStageData.playerIndex];
    Player *partner;

    if (!(p->moveState & (MOVESTATE_1000000 | MOVESTATE_200 | MOVESTATE_100))) {
        if (gStageData.playerIndex == CHARACTER_SONIC) {
            Sprite *s = &ring->s;

            if (sub_8020700(s, ring->worldX, ring->worldY, 0, p, 0)) {
                sub_8016F28(p);

                gStageData.nextMapIndex = STAGE_ALTAR_EMERALD;
                gStageData.unkC = 0;

                SetPlayerCallback(p, Player_800AD24);

                partner = &gPlayers[p->charFlags.partnerIndex];

                if (partner->charFlags.someIndex == 0x2) {
                    SetPlayerCallback(partner, Player_800AD24);
                }

                Player_PlaySong(p, SE_BIG_WARP_RING);

                if (gStageData.gameMode > GAME_MODE_BOSS_TIME_ATTACK) {
                    if (p->charFlags.someIndex == 0x1) {
                        u8 maybeStageId = 71;
                        sub_80275B8(maybeStageId, 0, gStageData.unkC);
                    }
                }
            }
        }
    }

    sub_804F4E4();
}

void sub_804F4E4(void)
{
    FinalZoneRing *ring = TASK_DATA(gCurTask);
    Sprite *s = &ring->s;
    MapEntity *me = ring->base.me;
    s32 worldX, worldY;

    worldX = ring->worldX;
    worldY = ring->worldY;

    if (!IsWorldPtActive(worldX, worldY)) {
        me->x = ring->base.meX;
        TaskDestroy(gCurTask);
        return;
    }

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void TaskDestructor_FinalZoneRing(struct Task *t)
{
    FinalZoneRing *ring = TASK_DATA(t);

    VramFree(ring->s.tiles);
}

void InitFinalZoneRingSprite(Sprite *s)
{
    // TODO: Use ALLOC_TILES() here with the proper anim!
    s->tiles = VramMalloc(36);
    s->anim = ANIM_FINALZONE_RING;
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