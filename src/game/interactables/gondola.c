#include "global.h"
#include "module_unclear.h"
#include "malloc_vram.h"
#include "task.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"
#include "constants/songs.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ s16 qTrajectoryX;
    /* 0x36 */ s16 qTrajectoryY;
    /* 0x38 */ s16 worldX;
    /* 0x3A */ s16 worldY;
    /* 0x3C */ s32 qWorldX;
    /* 0x40 */ s32 qWorldY;
    /* 0x44 */ s16 unk44;
    /* 0x46 */ s16 unk46;
    /* 0x48 */ u8 unk48;
    /* 0x49 */ u8 unk49;
    /* 0x4A */ u8 unk4A;
} Gondola; /* size: 0x4C */

void sub_80499B8(Sprite *s);
void Task_Gondola(void);
void sub_80497FC(void);
void sub_80498B4(void);
void TaskDestructor_Gondola(struct Task *t);

void CreateEntity_Gondola(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Gondola, sizeof(Gondola), 0x2100, 0, TaskDestructor_Gondola);
    Gondola *gond = TASK_DATA(t);
    Sprite *s;

    gond->base.regionX = regionX;
    gond->base.regionY = regionY;
    gond->base.me = me;
    gond->base.spriteX = me->x;
    gond->base.id = id;

    gond->qTrajectoryX = Q(2);
    gond->qTrajectoryY = Q(0.5);

    gond->worldX = TO_WORLD_POS(me->x, regionX);
    gond->worldY = TO_WORLD_POS(me->y, regionY);

    gond->qWorldX = Q(gond->worldX);
    gond->qWorldY = Q(gond->worldY);

    gond->unk44 = gond->worldX;
    gond->unk46 = gond->worldY + Q(0.75);
    gond->unk48 = 0;
    gond->unk4A = GetBit(me->d.uData[4], 0);
    gond->unk49 = 0;

    if (gond->unk4A) {
        gond->qTrajectoryX *= -1;
        gond->unk44 -= Q(3);
    } else {
        gond->unk44 += Q(3);
    }

    s = &gond->s;
    s->x = gond->worldX - gCamera.x;
    s->y = gond->worldY - gCamera.y;

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_80499B8(s);
}

void Task_Gondola(void)
{
    Gondola *gond = TASK_DATA(gCurTask);
    Sprite *s = &gond->s;
    Player *p;
    s16 i;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        if (i == 0) {
            p = &gPlayers[gStageData.charId];
        } else {
            p = &gPlayers[p->charFlags.partnerIndex];
        }

        // If player is standing on the platform, move player
        if ((p->moveState & MOVESTATE_20) && (p->spr6C == s)) {
            p->qWorldX += gond->qTrajectoryX;

            // NOTE/BUG(?): Shouldn't this be +gond->qTrajectoryY instead of X?
            // It seems like the Q(4) acts sort of like a brake?
            p->qWorldY += Q(4) + gond->qTrajectoryX;
        }

        if (!sub_802C0D4(p)) {
            u32 mask = sub_8020950(s, I(gond->qWorldX), I(gond->qWorldY), p, 0);
            if (mask & 0x10000) {
                s16 qDY = Q(mask & 0x00FF);
                p->qWorldY += qDY;
                p->qSpeedAirY = 0;

                if (gond->unk49 == 0) {
                    gond->unk49 = 1;
                }
            }
        }
    }

    sub_80497FC();
    sub_80498B4();
}

void sub_80497FC(void)
{
    Gondola *gond = TASK_DATA(gCurTask);

    switch (gond->unk49) {
        case 0: {
            ;
        } break;

        case 1: {
            gond->qWorldX += gond->qTrajectoryX;
            gond->qWorldY += gond->qTrajectoryY;

            sub_8003E0C(SE_GONDOLA);

            if (((gond->unk4A == 0) && (I(gond->qWorldX) >= gond->unk44)) || ((gond->unk4A == 1) && (I(gond->qWorldX) <= gond->unk44))) {
                gond->unk48 = 120; // TODO: Is it (DISPLAY_WIDTH/2)?
                gond->unk49 = 2;

                gond->qTrajectoryY = 0;
                gond->qTrajectoryX = 0;

                sub_8003E28(SE_GONDOLA);
            }
        } break;

        case 2: {
            ;
        } break;

        case 3: {
            gond->qTrajectoryY += Q(4. / 256.);
            gond->qWorldY += gond->qTrajectoryY;
        } break;

        default: {
            ;
        } break;
    }
}

void sub_80498B4(void)
{
    Gondola *gond = TASK_DATA(gCurTask);
    MapEntity *me = gond->base.me;
    Sprite *s = &gond->s;
    Player *p;
    s16 worldX, worldY;
    s16 i;

    worldX = I(gond->qWorldX);
    worldY = I(gond->qWorldY);

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    if (!IsPointInScreenRect(worldX, worldY)) {
        sub_8003E28(SE_GONDOLA);

        for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            if (i != 0) {
                p = &gPlayers[p->charFlags.partnerIndex];
            } else {
                p = &gPlayers[gStageData.charId];
            }

            sub_80213B0(s, p);
        }

        SET_MAP_ENTITY_NOT_INITIALIZED(me, gond->base.spriteX);
        TaskDestroy(gCurTask);
        return;
    } else {
        u8 variant = 0;

        if (gond->unk49 == 1) {
            variant = 1;
        }
        s->variant = variant;

        UpdateSpriteAnimation(s);

        if (sub_802C1F8(s->x, s->y) == 1) {
            DisplaySprite(s);
        }
    }
}

void TaskDestructor_Gondola(struct Task *t)
{
    Gondola *gond = TASK_DATA(t);
    VramFree(gond->s.tiles);
}

void sub_80499B8(Sprite *s)
{
    // TODO/NOTE:
    // Usually we want to use ALLOC_TILES() instead,
    // but for this IA, tiles are stored in a "pseudo-compressed" way,
    // so we have to come up with a different macro.
    s->tiles = VramMalloc(26);
    s->anim = ANIM_GONDOLA;
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
