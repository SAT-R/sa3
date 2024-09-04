#include "global.h"
#include "malloc_vram.h"
#include "task.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/stage.h"
#include "game/interactables/platform_shared.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ s32 worldX;
    /* 0x10 */ s32 worldY;
    /* 0x14 */ s16 unk14;
    /* 0x16 */ s16 unk16;
    /* 0x18 */ u8 unk18;
    /* 0x1C */ s32 unk1C;
    /* 0x20 */ s32 unk20;
    /* 0x24 */ s32 unk24;
    /* 0x28 */ s32 unk28;
    /* 0x2C */ s32 unk2C;
    /* 0x30 */ s32 unk30;

    /* 0x34 */ s16 unk34;
    /* 0x36 */ s16 unk36;
    /* 0x38 */ Player *p1;
    /* 0x3C */ Player *p2;
    /* 0x40 */ Sprite s;
    /* 0x68 */ u8 filler68[0x10];
} PlatformSpiked; /* size: 0x78 */

void Task_80452AC(void);
void TaskDestructor_PlatformSpiked(struct Task *);

void CreateEntity_PlatformSpiked(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_80452AC, sizeof(PlatformSpiked), 0x2100, 0, TaskDestructor_PlatformSpiked);
    PlatformSpiked *platform = TASK_DATA(t);
    Sprite *s;
    s32 worldX, worldY;
    u8 i;

    platform->base.regionX = regionX;
    platform->base.regionY = regionY;
    platform->base.me = me;
    platform->base.unk8 = me->x;
    platform->base.unk9 = id;

    worldX = TO_WORLD_POS(me->x, regionX);
    platform->worldX = worldX;
    worldY = TO_WORLD_POS(me->y, regionY);
    platform->worldY = worldY;
    platform->unk34 = worldX;
    platform->unk36 = worldY;

    platform->unk1C = Q(worldY + me->d.sData[1] * TILE_WIDTH);
    platform->unk20 = Q(me->d.uData[3] * (TILE_WIDTH / 2));
    platform->unk24 = Q(worldX + me->d.sData[0] * TILE_WIDTH);
    platform->unk28 = Q(me->d.uData[2] * (TILE_WIDTH / 2));

    platform->unk2C = platform->unk24 + platform->unk28;
    platform->unk30 = platform->unk1C + platform->unk20;

    platform->p1 = &gPlayers[gStageData.charId];
    platform->p2 = &gPlayers[platform->p1->charFlags.partnerIndex];

    platform->unk16 = sub_804DC38(0, worldX, worldY, me);
    platform->unk14 = 0;

    platform->worldX = Q(platform->worldX);
    platform->worldY = Q(platform->worldY);

    for (i = 0; i < 6; i++) {
        if ((me->d.uData[4] >> i) & 1)
            break;
    }

    platform->unk18 = i + 1;

    SET_MAP_ENTITY_INITIALIZED(me);

    s = &platform->s;
    s->tiles = ALLOC_TILES(ANIM_PLATFORM_SPIKED);
    s->anim = ANIM_PLATFORM_SPIKED;
    s->variant = 0;
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
