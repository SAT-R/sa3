#include "global.h"
#include "task.h"
#include "malloc_vram.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00*/ SpriteBase base;
    /* 0x0C */ s32 qWorldX;
    /* 0x10 */ s32 qWorldY;
    /* 0x14 */ u16 unk14;;
    /* 0x14 */ u8 unk16;;
    /* 0x18 */ Player *ps[NUM_SINGLE_PLAYER_CHARS];
    /* 0x20 */ Sprite s;
    /* 0x48 */ u8 filler48[0x8];
} PlatformSquare; /* 0x50 */

void Task_PlatformSquare(void);
void TaskDestructor_PlatformSquare(struct Task *);

void CreateEntity_PlatformSquare(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_PlatformSquare, sizeof(PlatformSquare), 0x2100, 0, TaskDestructor_PlatformSquare);
    PlatformSquare *platform = TASK_DATA(t);
    Sprite *s;
    s32 worldX, worldY;
    AnimId anim;

    platform->base.regionX = regionX;
    platform->base.regionY = regionY;
    platform->base.me = me;
    platform->base.unk8 = me->x;
    platform->base.unk9 = id;

    worldX = TO_WORLD_POS(me->x, regionX);
    platform->qWorldX = Q(worldX);
    worldY = TO_WORLD_POS(me->y, regionY);
    platform->qWorldY = Q(worldY);
    
    platform->ps[0] = &gPlayers[gStageData.charId];
    platform->ps[1] = &gPlayers[platform->ps[0]->charFlags.partnerIndex];
    platform->unk16 = 0;
    platform->unk14 = 0;

    SET_MAP_ENTITY_INITIALIZED(me);

    s = &platform->s;
    s->tiles = ALLOC_TILES(ANIM_PLATFORM_BONUS);
    if(gStageData.act == ACT_BONUS_ENEMIES) {
        s->anim = ANIM_PLATFORM_BONUS;
        s->variant = 0;
    } else {
        s->anim = ANIM_PLATFORM_TS;
        s->variant = 0;
    }

    s->oamFlags = SPRITE_OAM_ORDER(24);
    s->animCursor = 0;
    s->timeUntilNextFrame = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
    UpdateSpriteAnimation(s);
}