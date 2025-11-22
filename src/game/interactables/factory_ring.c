#include "global.h"
#include "malloc_vram.h"
#include "module_unclear.h"
#include "sprite.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/player_callbacks.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"
#include "constants/songs.h"

typedef struct {
    SpriteBase base;
    Sprite s;
} FactoryRing; /* size: 0x34 */

void Task_FactoryRingMain(void);
void TaskDestructor_FactoryRing(struct Task *t);
void FactoryRing_InitSprite(Sprite *s);
void sub_8041248(void);

#define FACTORY_RING_SPAWN_SPEED Q(4.0)

void Task_FactoryRingMain(void)
{
    FactoryRing *ring = TASK_DATA(gCurTask);
    Sprite *s = &ring->s;
    MapEntity *me = ring->base.me;
    Player *p, *partner;
    s16 worldX, worldY;

    worldX = TO_WORLD_POS(ring->base.meX, ring->base.regionX);
    worldY = TO_WORLD_POS(me->y, ring->base.regionY);

    p = &gPlayers[gStageData.playerIndex];

    if ((p->callback != Player_80052C8) && (p->callback != Player_800522C)) {
        if (!(p->moveState & (MOVESTATE_1000000 | MOVESTATE_200 | MOVESTATE_100))) {
            if (gStageData.playerIndex == 0) {
                if (sub_8020700(s, worldX, worldY, 0, p, 0)) {
                    sub_8016F28(p);
                    sub_8019A64(p);
                    Player_PlaySong(p, SE_BIG_WARP_RING);
                    SetPlayerCallback(p, Player_800AE14);

                    partner = &gPlayers[p->charFlags.partnerIndex];

                    if (partner->charFlags.someIndex == 2) {
                        SetPlayerCallback(partner, Player_800AE14);
                    }

                    if (!GAME_MODE_IS_SINGLE_PLAYER(gStageData.gameMode)) {
                        sub_80275B8(1, gStageData.zone, 1);
                    }

                    gStageData.unk4 = 8;
                }
            }
        }
    } else {
        s16 i;
        for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            if (i == 0) {
                p = &gPlayers[gStageData.playerIndex];
            } else {
                p = &gPlayers[p->charFlags.partnerIndex];
            }

            if (p->charFlags.someIndex == 1 || p->charFlags.someIndex == 2 || p->charFlags.someIndex == 4) {
                if (gStageData.entryIndex == 0) {
                    p->qSpeedAirX = FACTORY_RING_SPAWN_SPEED;
                    p->moveState &= ~MOVESTATE_FACING_LEFT;
                }
            }
        }
    }

    sub_8041248();
}

void sub_8041248(void)
{
    FactoryRing *ring = TASK_DATA(gCurTask);
    Sprite *s = &ring->s;
    MapEntity *me = ring->base.me;
    s16 worldX, worldY;

    worldX = TO_WORLD_POS(ring->base.meX, ring->base.regionX);
    worldY = TO_WORLD_POS(me->y, ring->base.regionY);

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

void CreateEntity_FactoryRing(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_FactoryRingMain, sizeof(FactoryRing), 0x2100, 0, TaskDestructor_FactoryRing);
    FactoryRing *ring = TASK_DATA(t);
    Sprite *s;

    ring->base.regionX = regionX;
    ring->base.regionY = regionY;
    ring->base.me = me;
    ring->base.meX = me->x;
    ring->base.id = id;

    s = &ring->s;
    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);
    SET_MAP_ENTITY_INITIALIZED(me);

    FactoryRing_InitSprite(s);
}

void TaskDestructor_FactoryRing(struct Task *t)
{
    FactoryRing *ring = TASK_DATA(t);
    VramFree(ring->s.tiles);
}

void FactoryRing_InitSprite(Sprite *s)
{
    s->tiles = ALLOC_TILES(ANIM_FACTORY_RING);
    s->anim = ANIM_FACTORY_RING;
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