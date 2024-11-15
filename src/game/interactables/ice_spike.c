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
    /* 0x00 */ SpriteBase3 base;
    /* 0x1C */ Player *players[2];
    /* 0x24 */ Sprite s;
    /* 0x4C */ u8 filler[0xB0];
    /* 0xFC */ Sprite s2[3];
} IceSpike; /* 0x174 */

extern u16 gUnknown_080D0144[3];

void Task_IceSpikeInit(void);
void TaskDestructor_IceSpike(struct Task *t);

void CreateEntity_IceSpike(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    u16 arr[3];
    struct Task *t;
    IceSpike *spike;
    Sprite *s;
    void *tiles;
    u8 i;

    memcpy(arr, gUnknown_080D0144, sizeof(arr));

    t = TaskCreate(Task_IceSpikeInit, sizeof(IceSpike), 0x2100, 0, TaskDestructor_IceSpike);
    spike = TASK_DATA(t);

    spike->base.regionX = regionX;
    spike->base.regionY = regionY;
    spike->base.me = me;
    spike->base.spriteX = me->x;
    spike->base.id = id;

    spike->base.qWorldX = Q(TO_WORLD_POS(me->x, regionX));
    spike->base.qWorldY = Q(TO_WORLD_POS(me->y, regionY));
    spike->base.unk12 = 0;

    spike->players[PLAYER_1] = &gPlayers[gStageData.playerIndex];
    spike->players[PLAYER_2] = &gPlayers[spike->players[PLAYER_1]->charFlags.partnerIndex];

    spike->base.unk16 = 0;
    spike->base.unk17 = 1;
    spike->base.unk10 = 80;
    spike->base.unk18 = 7;
    spike->base.unk19 = 2;

    tiles = ALLOC_TILES(ANIM_ICE_SPIKE);

    s = &spike->s;
    s->tiles = tiles;
    s->oamFlags = SPRITE_OAM_ORDER(24);
    s->anim = ANIM_ICE_SPIKE;
    s->variant = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->x = 0;
    s->y = 0;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
    UpdateSpriteAnimation(s);

    for (i = 0; i < (s32)ARRAY_COUNT(spike->s2); i++) {
        s = &spike->s2[i];
        s->tiles = tiles;
        s->oamFlags = SPRITE_OAM_ORDER(24);
        s->anim = ANIM_ICE_SPIKE;
        s->variant = 1 + i;
        s->qAnimDelay = 0;
        s->prevVariant = -1;
        s->animSpeed = SPRITE_ANIM_SPEED(1.0);
        s->palId = 0;
        s->x = 0;
        s->y = 0;
        s->frameFlags = SPRITE_FLAG(PRIORITY, 1);

        tiles += arr[i];
    }

    SET_MAP_ENTITY_INITIALIZED(me);
}
