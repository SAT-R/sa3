#include "global.h"
#include "malloc_vram.h"
#include "task.h"
#include "module_unclear.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/songs.h"

typedef struct {
    SpriteBase base;
    Sprite s;
    u8 unk34;
} Checkpoint; /* size: 0x38 */

void Task_Checkpoint(void);
void TaskDestructor_Checkpoint(struct Task *);
void sub_8033C0C(Sprite *s, s16 variant);
void sub_8033C64(void);

void CreateEntity_Checkpoint(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Checkpoint, sizeof(Checkpoint), 0x2100, 0, TaskDestructor_Checkpoint);
    Checkpoint *checkpoint = TASK_DATA(t);
    Sprite *s;
    s16 i;
    s16 variant;

    checkpoint->base.regionX = regionX;
    checkpoint->base.regionY = regionY;
    checkpoint->base.me = me;
    checkpoint->base.meX = me->x;
    checkpoint->base.id = id;

    i = GetFirstSetBitIndex(me->d.uData[4], 8);

    checkpoint->unk34 = i + 1;

    s = &checkpoint->s;
    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    variant = 0;
    if (gStageData.unk21 >= checkpoint->unk34) {
        variant = 1;
    }
    sub_8033C0C(s, variant);
}

void Task_Checkpoint(void)
{
    Checkpoint *checkpoint = TASK_DATA(gCurTask);
    Sprite *s = &checkpoint->s;
    s32 worldX, worldY;
    s32 i;

    if (s->variant == 0) {
        MapEntity *me = checkpoint->base.me;
        worldX = TO_WORLD_POS(checkpoint->base.meX, checkpoint->base.regionX);
        worldY = TO_WORLD_POS(me->y, checkpoint->base.regionY);

        for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            Player *p = GET_SP_PLAYER_V0(i);

            if (p->charFlags.someIndex != 2) {
                if (!sub_802C080(p) && sub_8020700(s, worldX, worldY, 0, p, 0)) {
                    s->variant = 1;
                    sub_8003DF0(SE_CHECKPOINT);

                    gStageData.unk21 = checkpoint->unk34;
                    gStageData.unk24 = gStageData.levelTimer;

                    gStageData.respawnX = worldX - 16;
                    gStageData.respawnY = worldY - 12;

                    if (gStageData.gameMode >= GAME_MODE_5) {
                        if (p->charFlags.someIndex == 1) {
                            sub_80274F4(checkpoint->unk34 & 0x7, gStageData.respawnX, gStageData.respawnY);
                        }
                    }
                }
            }
        }
    }

    sub_8033C64();
}

void sub_8033C0C(Sprite *s, s16 variant)
{
    u32 tileCount;
    if (variant == 0) {
        tileCount = MAX_TILES_VARIANT(ANIM_CHECKPOINT, 1);
    } else {
        tileCount = MAX_TILES_VARIANT(ANIM_CHECKPOINT, 0);
    }
    s->tiles = VramMalloc(tileCount);

    s->anim = ANIM_CHECKPOINT;
    s->variant = ((variant == 0) ? 0 : 2);
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

void sub_8033C64(void)
{
    bool32 isInvisible = FALSE;
    Checkpoint *checkpoint = TASK_DATA(gCurTask);
    Sprite *s = &checkpoint->s;
    MapEntity *me = checkpoint->base.me;
    s16 worldX, worldY;

    worldX = TO_WORLD_POS(checkpoint->base.meX, checkpoint->base.regionX);
    worldY = TO_WORLD_POS(me->y, checkpoint->base.regionY);

    if (!IsWorldPtActive(worldX, worldY)) {
        me->x = checkpoint->base.meX;
        TaskDestroy(gCurTask);
        return;
    }

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    if (gStageData.unk4 == 1) {
        if (gStageData.unkBC & 0x1) {
            s->frameFlags |= SPRITE_FLAG(OBJ_MODE, 1);
        } else {
            s->frameFlags &= ~SPRITE_FLAG(OBJ_MODE, 1);
        }

        if (gStageData.unkBC & 0x2) {
            isInvisible = TRUE;
        }
    } else {
        s->frameFlags &= ~SPRITE_FLAG(OBJ_MODE, 1);
    }

    if ((s16)UpdateSpriteAnimation(s) == ACMD_RESULT__ENDED) {
        if (s->variant == 1) {
            s->variant = 2;
        }
    }

    if (!isInvisible) {
        DisplaySprite(s);
    }
}

void TaskDestructor_Checkpoint(struct Task *t)
{
    Checkpoint *checkpoint = TASK_DATA(t);

    VramFree(checkpoint->s.tiles);
}