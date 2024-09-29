#include "global.h"
#include "malloc_vram.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"

typedef struct {
    /* 0x00 */ MapEntity *me;
    /* 0x04 */ u16 regionX;
    /* 0x06 */ u16 regionY;
    /* 0x08 */ u8 spriteX;
    /* 0x09 */ u8 id;
    /* 0x0A */ s16 worldX;
    /* 0x0C */ s16 worldY;
    /* 0x10 */ Player *ps[NUM_SINGLE_PLAYER_CHARS];
    /* 0x18 */ Sprite s;
} AirBubbles; /* 0x40 */

void Task_AirBubbles(void);
void TaskDestructor_AirBubbles(struct Task *);

void CreateEntity_AirBubbles(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_AirBubbles, sizeof(AirBubbles), 0x2100, 0, TaskDestructor_AirBubbles);
    AirBubbles *bubbles = TASK_DATA(t);
    Sprite *s;

    bubbles->regionX = regionX;
    bubbles->regionY = regionY;
    bubbles->me = me;
    bubbles->spriteX = me->x;
    bubbles->id = id;
    bubbles->worldX = TO_WORLD_POS(me->x, regionX);
    bubbles->worldY = TO_WORLD_POS(me->y, regionY);
    bubbles->ps[0] = &gPlayers[gStageData.charId];
    bubbles->ps[1] = &gPlayers[bubbles->ps[0]->charFlags.partnerIndex];

    s = &bubbles->s;
    s->tiles = ALLOC_TILES_VARIANT(ANIM_AIR_BUBBLES, 1);
    s->oamFlags = SPRITE_OAM_ORDER(12);
    s->anim = ANIM_AIR_BUBBLES;
    s->variant = 1;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->x = 0;
    s->y = 0;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
    UpdateSpriteAnimation(s);

    SET_MAP_ENTITY_INITIALIZED(me);
}
