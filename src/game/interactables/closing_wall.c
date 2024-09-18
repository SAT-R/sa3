#include "global.h"
#include "task.h"
#include "malloc_vram.h"
#include "module_unclear.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"

#define WALLSTATE_0 0
#define WALLSTATE_1 1
#define WALLSTATE_2 2

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s[2];
    /* 0x5C */ u8 state;
    /* 0x5D */ u8 unk5D;
    /* 0x5E */ s16 unk5E;
    /* 0x60 */ s16 unk60;
    /* 0x62 */ s16 worldX;
    /* 0x64 */ s16 worldY;
    /* 0x68 */ void *tiles;
} ClosingWall; /* 0x6C */

void Task_ClosingWall(void);
void sub_804AC58(ClosingWall *);
void sub_804ACF0(void);
void TaskDestructor_ClosingWall(struct Task *);

void CreateEntity_ClosingWall(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_ClosingWall, sizeof(ClosingWall), 0x2100, 0, TaskDestructor_ClosingWall);
    ClosingWall *wall = TASK_DATA(t);
    Sprite *s;

    wall->base.regionX = regionX;
    wall->base.regionY = regionY;
    wall->base.me = me;
    wall->base.spriteX = me->x;
    wall->base.id = id;

    wall->state = WALLSTATE_0;
    wall->unk5D = 0;
    wall->unk5E = me->d.uData[2] * (TILE_WIDTH / 2);
    wall->unk60 = gStageData.timer;
    wall->worldX = TO_WORLD_POS(me->x, regionX);
    wall->worldY = TO_WORLD_POS(me->y, regionY);

    s = &wall->s[0];
    s->x = wall->worldX;
    s->y = wall->worldY;

    s = &wall->s[1];
    s->x = wall->worldX;
    s->y = wall->worldY;

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_804AC58(wall);
}

// (94.46%) https://decomp.me/scratch/BEkaq
// (99.84%) https://decomp.me/scratch/ximFR (by idefix)
NONMATCH("asm/non_matching/game/interactables/closing_wall__Task_ClosingWall.inc", void Task_ClosingWall(void))
{
    ClosingWall *const wall = TASK_DATA(gCurTask);
    s16 i = 0;
    s16 j = 0;
    s16 sp4, sp8, spC, sp10;
    s16 worldX;
    s16 worldY;

    if (wall->state != WALLSTATE_2) {
        sp4 = wall->worldX - wall->unk5E;
        spC = wall->worldX + wall->unk5E;
        sp8 = wall->worldY - 24;
        sp10 = wall->worldY + 24;
    } else {
        // _0804AA78
        sp4 = 0;
        spC = 0;
        sp8 = 0;
        sp10 = 0;
    }
    // _0804AA88

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p;
        if (i == 0) {
            p = &gPlayers[gStageData.charId];
        } else {
            p = &gPlayers[p->charFlags.partnerIndex];
        }

        for (j = 0; j < (s32)ARRAY_COUNT(wall->s); j++) {
            // _0804AAD2_inner_loop
            s16 r4;
            Sprite *const s = &wall->s[j];
            const s32 wallWorldXCopy = wall->worldX;

            if (j != 0) {
                r4 = wallWorldXCopy + wall->unk5E;
            } else {
                r4 = wallWorldXCopy - wall->unk5E;
            }
            worldY = wall->worldY;

            if (!sub_802C0D4(p)) {
                const s32 res = sub_8020950(s, r4, worldY, p, 0);

                if (res & 0x10000) {
                    p->qWorldY += Q_8_8(res);
                } else if (res & 0x20000) {
                    p->qWorldY += Q_8_8(res) + Q(1);
                    p->qSpeedAirY = 0;
                }

                if (res & 0xC0000) {
                    p->qWorldX += Q_8_8((s16)res >> 8);
                    p->qSpeedAirX = 0;
                    p->qSpeedGround = 0;
                }
                // _0804AB76

                if (wall->state == WALLSTATE_2) {
                    continue;
                }

                worldX = I(p->qWorldX);
                worldY = I(p->qWorldY);

                if ((worldX <= sp4) || (worldX >= spC) || (worldY <= sp8) || (worldY >= sp10)) {
                    continue;
                }

                if (wall->state == WALLSTATE_0) {
                    if ((p->charFlags.someIndex == 2) || (p->charFlags.someIndex == 5)) {
                        continue;
                    }

                    wall->state = WALLSTATE_1;
                } else {
                    // _0804ABD2
                    if (wall->unk5E < 38) {
                        if (!sub_802C080(p)) {
                            sub_8008E38(p);
                        }
                    }
                }
            }
        }
    }
    // _0804AC0A

    if (wall->state == WALLSTATE_1) {
        const u16 time = gStageData.timer - wall->unk60;

        if ((wall->unk5E <= 32) || ((wall->unk5E -= time) <= 32)) {
            wall->state = WALLSTATE_2;
        }
    }
    // _0804AC3A
    wall->unk60 = gStageData.timer;

    sub_804ACF0();
}
END_NONMATCH

void sub_804AC58(ClosingWall *wall)
{
    Sprite *s;
    wall->tiles = ALLOC_TILES(ANIM_CLOSING_WALL);

    s = &wall->s[0];
    s->tiles = wall->tiles;
    s->anim = ANIM_CLOSING_WALL;
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

    s = &wall->s[1];
    s->tiles = wall->tiles;
    s->anim = ANIM_CLOSING_WALL;
    s->variant = 0;
    s->oamFlags = SPRITE_OAM_ORDER(24);
    s->animCursor = 0;
    s->timeUntilNextFrame = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG_MASK_19 | SPRITE_FLAG_MASK_X_FLIP | SPRITE_FLAG(PRIORITY, 1);
    UpdateSpriteAnimation(s);
}

void sub_804ACF0(void)
{
    ClosingWall *wall = TASK_DATA(gCurTask);
    MapEntity *me = wall->base.me;
    Player *p;
    Sprite *s;
    s16 worldX, worldY;
    s16 i, j;

    worldX = wall->worldX;
    worldY = wall->worldY;

    if (!IsPointInScreenRect(worldX, worldY)) {
        // i,j shadowed here for matching
        s16 i, j;

        for (i = 0; i < (s32)ARRAY_COUNT(wall->s); i++) {
            s = &wall->s[i];

            for (j = 0; j < NUM_SINGLE_PLAYER_CHARS; j++) {
                p = (j != 0) ? &gPlayers[p->charFlags.partnerIndex] : &gPlayers[gStageData.charId];

                sub_80213B0(s, p);
            }
        }

        SET_MAP_ENTITY_NOT_INITIALIZED(me, wall->base.spriteX);
        TaskDestroy(gCurTask);
        return;
    }

    for (i = 0; i < (s32)ARRAY_COUNT(wall->s); i++) {
        s = &wall->s[i];

        s->x = worldX - gCamera.x;

        if (i == 0) {
            s->x -= wall->unk5E;
        } else {
            s->x += wall->unk5E;
        }

        s->y = worldY - gCamera.y;

        for (j = 0; j < 2; j++) {
            if (j != 0) {
                s->frameFlags |= SPRITE_FLAG_MASK_Y_FLIP;
            } else {
                s->frameFlags &= ~SPRITE_FLAG_MASK_Y_FLIP;
            }

            DisplaySprite(s);
        }
    }
}

void TaskDestructor_ClosingWall(struct Task *t)
{
    ClosingWall *wall = TASK_DATA(t);
    VramFree(wall->tiles);
}