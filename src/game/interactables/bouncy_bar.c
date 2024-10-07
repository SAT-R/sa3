#include <string.h> // memcpy
#include "global.h"
#include "module_unclear.h"
#include "malloc_vram.h"
#include "task.h"
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
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ u8 isXFlipped;
    /* 0x35 */ u8 unk35;
    /* 0x36 */ u8 unk36;
    /* 0x37 */ u8 unk37;
    /* 0x38 */ Player *activePlayer;
} BouncyBar; /* size: 0x3C */

static void InitSprite(Sprite *, u8);
static void Task_BouncyBarIdle(void);
static void Task_BouncyBarLaunch(void);
static void TaskDestructor_BouncyBar(struct Task *);
static void UpdateSprite(void);

extern u8 sWindupOffsets[11];

#define LAUNCH_SPEED Q(7.5)

void CreateEntity_BouncyBar(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_BouncyBarIdle, sizeof(BouncyBar), 0x2100, 0, TaskDestructor_BouncyBar);
    BouncyBar *bar = TASK_DATA(t);
    Sprite *s = &bar->s;

    bar->base.regionX = regionX;
    bar->base.regionY = regionY;
    bar->base.me = me;
    bar->base.spriteX = me->x;
    bar->base.id = id;

    bar->isXFlipped = GetBit(me->d.uData[4], 0);
    bar->activePlayer = NULL;
    bar->unk36 = 0;
    bar->unk35 = 0;

    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    InitSprite(s, bar->isXFlipped);
}

static void Task_BouncyBarIdle(void)
{
    BouncyBar *bar = TASK_DATA(gCurTask);
    Sprite *s = &bar->s;
    MapEntity *me = bar->base.me;
    s32 worldX, worldY;
    s32 i;

    worldX = TO_WORLD_POS(bar->base.spriteX, bar->base.regionX);
    worldY = TO_WORLD_POS(me->y, bar->base.regionY);

    if (bar->unk36 > 0) {
        bar->unk36--;
    }

    if (bar->unk35 == 0) {
        for (i = 0; i < 2; i++) {
            Player *p;

            if (bar->unk35 == 0) {
                p = GET_SP_PLAYER_V0(i);

                if (((p->charFlags.someIndex == 1) || (p->charFlags.someIndex == 2) || (p->charFlags.someIndex == 4)) && !sub_802C0D4(p)) {
                    if (((p->callback != Player_8008A8C) && (p->callback != Player_800ED80))
                        && ((bar->activePlayer != p) || (bar->unk36 == 0))) {
                        if (p->charFlags.state1 == 1) {
                            s->y += Q(16. / 256.);
                        }

                        if (sub_8020700(s, worldX, worldY, 0, p, 0)) {
                            if (s->variant == 0) {
                                s->variant = 1;
                            }

                            if (bar->isXFlipped) {
                                p->qWorldX = Q(worldX + 16);
                                p->moveState |= MOVESTATE_FACING_LEFT;
                            } else {
                                p->qWorldX = Q(worldX - 16);
                                p->moveState &= ~MOVESTATE_FACING_LEFT;
                            }

                            p->qWorldY = Q(worldY + 20);

                            SetPlayerCallback(p, Player_800BEE8);
                            bar->activePlayer = p;

                            bar->unk36 = 0;
                            bar->unk35 = 1;

                            sub_8004E98(p, SE_BOUNCY_BAR);

                            gCurTask->main = Task_BouncyBarLaunch;
                        }

                        if (p->charFlags.state1 == 1) {
                            s->y -= Q(16. / 256.);
                        }
                    }
                }
            }
        }

        UpdateSprite();
    }
}

static void Task_BouncyBarLaunch(void)
{
    BouncyBar *bar;
    MapEntity *me;
    Player *activePlayer;
    s32 worldX, worldY;
    u8 sp00[11];
    s32 offset;
    memcpy(sp00, sWindupOffsets, sizeof(sp00));

    bar = TASK_DATA(gCurTask);
    me = bar->base.me;
    activePlayer = bar->activePlayer;

    UpdateSprite();

    if ((activePlayer->callback != Player_800EAA8) || sub_802C0D4(activePlayer)) {
        bar->unk35 = 0;
        gCurTask->main = Task_BouncyBarIdle;
    } else {
        // _08034560
        worldX = TO_WORLD_POS(bar->base.spriteX, bar->base.regionX);
        worldY = TO_WORLD_POS(me->y, bar->base.regionY);

        if (bar->isXFlipped) {
            activePlayer->qWorldX = Q(worldX + 16);
        } else {
            activePlayer->qWorldX = Q(worldX - 16);
        }

        offset = sp00[bar->unk36] + 20;
        activePlayer->qWorldY = Q(worldY + offset);

        if (++bar->unk36 < ARRAY_COUNT(sp00) - 1) {
            return;
        }

        SetPlayerCallback(activePlayer, Player_8006DB8);
        activePlayer->qSpeedAirX = 0;
        activePlayer->qSpeedAirY = -LAUNCH_SPEED;
        bar->unk35 = 0;
        gCurTask->main = Task_BouncyBarIdle;
    }
}

static void UpdateSprite(void)
{
    BouncyBar *bar = TASK_DATA(gCurTask);
    Sprite *s = &bar->s;
    MapEntity *me = bar->base.me;
    s16 worldX, worldY;

    worldX = TO_WORLD_POS(bar->base.spriteX, bar->base.regionX);
    worldY = TO_WORLD_POS(me->y, bar->base.regionY);

    if (!IsPointInScreenRect(worldX, worldY)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, bar->base.spriteX);
        TaskDestroy(gCurTask);
        return;
    } else {
        s->x = worldX - gCamera.x;
        s->y = worldY - gCamera.y;

        if (((u16)UpdateSpriteAnimation(s) == ACMD_RESULT__ENDED) && (s->variant == 1)) {
            s->variant = 0;
        }

        DisplaySprite(s);
    }
}

static void TaskDestructor_BouncyBar(struct Task *t)
{
    BouncyBar *bar = TASK_DATA(t);
    VramFree(bar->s.tiles);
}

static void InitSprite(Sprite *s, u8 param1)
{
    s->tiles = ALLOC_TILES(ANIM_BOUNCY_BAR);
    s->anim = ANIM_BOUNCY_BAR;
    s->variant = 0;
    s->oamFlags = SPRITE_OAM_ORDER(24);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);

    if (!param1) {
        s->frameFlags |= SPRITE_FLAG_MASK_X_FLIP;
    }

    UpdateSpriteAnimation(s);
}