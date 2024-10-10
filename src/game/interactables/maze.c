#include "global.h"
#include "module_unclear.h"
#include "malloc_vram.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/player_callbacks.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    u8 filler34[8];
    /* 0x3C */ u8 unk3C;
    /* 0x3D */ u8 unk3D;
    /* 0x3E */ u16 unk3E;
    /* 0x40 */ s16 worldX;
    /* 0x42 */ s16 worldY;
} Maze; /* 0x44 */

void Task_MazeEnter(void);
void TaskDestructor_Maze(struct Task *);
void Task_MazeCorner(void);
void TaskDestructor_MazeCorner(struct Task *);
void Task_Interactable138Main(void);
void TaskDestructor_Interactable138(struct Task *);
void sub_804D08C(Sprite *, s16 i);
void sub_804D114(void);
void ApplyMazeCornerDirection(Player *p, u8 kind, s16 worldX, s16 worldY);
void sub_804D360(Sprite *, s16 i, s16 a);
void sub_804D3FC(void);
void sub_804D658(Sprite *, s16 i); // like sub_804D08C, but for MazeC
void sub_804D6D8(void);
void sub_804D7F0(Player *p, u8 kind, s16 worldX, s16 worldY);
void ApplyMazeEndDirection(Player *p, u8 kind, s16 worldX, s16 worldY);
void sub_800B6C4(Player *p);
void sub_800B748(Player *p);

void CreateEntity_MazeEnter(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_MazeEnter, sizeof(Maze), 0x2100, 0, TaskDestructor_Maze);
    Maze *maze = TASK_DATA(t);
    Sprite *s;
    s16 i;

    maze->base.regionX = regionX;
    maze->base.regionY = regionY;
    maze->base.me = me;
    maze->base.spriteX = me->x;
    maze->base.id = id;

    for (i = 0; i < 4; i++) {
        if ((me->d.uData[4] >> i) & 0x1)
            break;
    }

    maze->unk3C = i;
    maze->unk3D = 0;
    maze->unk3E = 0;

    maze->worldX = TO_WORLD_POS(me->x, regionX);
    maze->worldY = TO_WORLD_POS(me->y, regionY);

    s = &maze->s;
    s->x = maze->worldX - gCamera.x;
    s->y = maze->worldY - gCamera.y;

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_804D08C(s, i);
}

// (99.64%) https://decomp.me/scratch/ADZew
// NOTE: Reg-alloc mismatch r9/sl
NONMATCH("asm/non_matching/game/interactables/maze__CreateEntity_MazeCorner.inc",
         void CreateEntity_MazeCorner(MapEntity *me, u16 regionX, u16 regionY, u8 id))
{
    struct Task *t = TaskCreate(Task_MazeCorner, sizeof(Maze), 0x2100, 0, TaskDestructor_MazeCorner);
    Maze *maze = TASK_DATA(t);
    Sprite *s;
    s16 i;

    maze->base.regionX = regionX;
    maze->base.regionY = regionY;
    maze->base.me = me;
    maze->base.spriteX = me->x;
    maze->base.id = id;

    for (i = 0; i < 4; i++) {
        if ((me->d.uData[4] >> i) & 0x1)
            break;
    }

    maze->unk3C = i;

    for (i = 0; i < 4; i++) {
        if (((me->d.uData[4]) >> (i + 4)) & 0x1)
            break;
    }

    maze->unk3D = i;
    maze->unk3E = 0;
    maze->worldX = TO_WORLD_POS(me->x, regionX);
    maze->worldY = TO_WORLD_POS(me->y, regionY);
    s = &maze->s;
    s->x = maze->worldX - gCamera.x;
    s->y = maze->worldY - gCamera.y;

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_804D360(s, maze->unk3C, maze->unk3D);
}
END_NONMATCH

void CreateEntity_MazeExit(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Interactable138Main, sizeof(Maze), 0x2100, 0, TaskDestructor_Interactable138);
    Maze *maze = TASK_DATA(t);
    Sprite *s;
    s16 i;

    maze->base.regionX = regionX;
    maze->base.regionY = regionY;
    maze->base.me = me;
    maze->base.spriteX = me->x;
    maze->base.id = id;

    for (i = 0; i < 4; i++) {
        if ((me->d.uData[4] >> i) & 0x1)
            break;
    }

    maze->unk3C = i;
    maze->unk3E = 0;

    maze->worldX = TO_WORLD_POS(me->x, regionX);
    maze->worldY = TO_WORLD_POS(me->y, regionY);

    s = &maze->s;
    s->x = maze->worldX - gCamera.x;
    s->y = maze->worldY - gCamera.y;

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_804D658(s, i);
}

void Task_MazeEnter(void)
{
    Maze *maze = TASK_DATA(gCurTask);
    Sprite *s = &maze->s;
    s16 worldX = maze->worldX;
    s16 worldY = maze->worldY;
    s16 i;

    maze->unk3D = ((maze->unk3D + 1) % 256u) % 16u;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p = GET_SP_PLAYER_V0(i);

        if ((p->moveState & MOVESTATE_20) && (p->spr6C == s)) {
            if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
                p->qWorldY -= Q(2);
            } else {
                p->qWorldY += Q(2);
            }
        }

        if (!sub_802C080(p)) {
            if ((p->callback == Player_800B5A4) || (p->callback == Player_800DD44) || (p->callback == Player_800DDD0)) {
                if (p->charFlags.someIndex == 1) {
                    if ((p->qSpeedAirX < 0) || (p->qSpeedAirY < 0)) {
                        maze->unk3D &= 0xF;
                        maze->unk3D |= 0x10;
                    } else {
                        maze->unk3D &= 0xF;
                        maze->unk3D |= 0x20;
                    }
                }

                continue;
            } else if (sub_8020700(s, worldX, worldY, 1, p, 0)) {
                sub_804D7F0(p, maze->unk3C, worldX, worldY);
                continue;
            }
        }

        if ((p->charFlags.someIndex == 1) || (p->charFlags.someIndex == 2) || (p->charFlags.someIndex == 4)) {
            if (!sub_802C0D4(p)) {
                u32 res = sub_8020950(s, worldX, worldY, p, 0);

                if (res & 0x10000) {
                    p->qWorldY += Q_8_8(res);
                } else if (res & 0x20000) {
                    p->qWorldY += Q_8_8(res);

                    if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
                        p->qWorldY -= Q(1);
                    } else {
                        p->qWorldY += Q(1);
                    }

                    p->qSpeedAirY = 0;
                    p->qSpeedGround = 0;
                }

                if (res & 0xC0000) {
                    p->qWorldX += Q((s16)res >> 8);

                    p->qSpeedAirX = 0;
                    p->qSpeedGround = 0;
                }
            }
        }
    }

    sub_804D114();
}

void sub_804D08C(Sprite *s, s16 i)
{
    u32 flags = 0;
    if (i & 0x2) {
        // Horizontal
        s->tiles = ALLOC_TILES_VARIANT(ANIM_MAZE, 3);
        s->anim = ANIM_MAZE;
        s->variant = 3;
        flags |= ((i & 0x1) ? SPRITE_FLAG(Y_FLIP, 1) : SPRITE_FLAG(Y_FLIP, 0));
    } else {
        // Vertical
        s->tiles = ALLOC_TILES_VARIANT(ANIM_MAZE, 0);
        s->anim = ANIM_MAZE;
        s->variant = 0;

        flags |= ((i & 0x1) ? SPRITE_FLAG(X_FLIP, 1) : SPRITE_FLAG(X_FLIP, 0));
    }

    s->oamFlags = SPRITE_OAM_ORDER(12);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->hitboxes[1].index = -1;
    s->frameFlags = flags | SPRITE_FLAG(PRIORITY, 1);
    UpdateSpriteAnimation(s);
}

void sub_804D114(void)
{
    Maze *maze = TASK_DATA(gCurTask);
    Sprite *s = &maze->s;
    MapEntity *me = maze->base.me;
    s16 worldX, worldY;
    s32 kind;
    u8 variant;

    worldX = maze->worldX;
    worldY = maze->worldY;

    if (!IsPointInScreenRect(worldX, worldY)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, maze->base.spriteX);
        TaskDestroy(gCurTask);
        return;
    }

    kind = maze->unk3D >> 4;
    switch (kind) {
        case 0: {
            // Entry
            s->variant = (maze->unk3C & 0x2) ? 3 : 0;
        } break;

        case 1: {
            // Corner
            s->variant = (maze->unk3C & 0x2) ? 4 : 1;
        } break;

        case 2: {
            // Exit
            s->variant = (maze->unk3C & 0x2) ? 5 : 2;
        } break;
    }

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void Task_MazeCorner(void)
{
    Maze *maze = TASK_DATA(gCurTask);
    Sprite *s = &maze->s;
    s16 worldX, worldY;
    s16 i;

    worldX = maze->worldX;
    worldY = maze->worldY;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p = GET_SP_PLAYER_V0(i);

        if (!sub_802C080(p)) {
            // TODO/BUG: Either this should only check for Player_800DDD0
            //           or the 2nd part is inverted.
            if ((p->callback == Player_800DDD0) && (p->callback != Player_800B628)) {
                if (sub_8020700(s, worldX, worldY, 1, p, 0)) {
                    ApplyMazeCornerDirection(p, maze->unk3D, worldX, worldY);
                }
            }
        }
    }

    sub_804D3FC();
}

void ApplyMazeCornerDirection(Player *p, u8 direction, s16 worldX, s16 worldY)
{
    p->qUnk70 = Q(worldX);
    p->qUnk74 = Q(worldY);
    p->qSpeedGround = Q(0);

    switch (direction) {
        case 0: {
            p->qSpeedAirX = -Q(8);
            p->qSpeedAirY = Q(0);
        } break;

        case 1: {
            p->qSpeedAirX = +Q(8);
            p->qSpeedAirY = Q(0);
        } break;

        case 2: {
            p->qSpeedAirX = Q(0);
            p->qSpeedAirY = -Q(8);
        } break;

        case 3: {
            p->qSpeedAirX = Q(0);
            p->qSpeedAirY = +Q(8);
        } break;
    }

    SetPlayerCallback(p, Player_800DDB4);
}

void sub_804D360(Sprite *s, s16 i, s16 param2)
{
    u32 flags = 0;

    switch (i) {
        case 0: {
            flags |= SPRITE_FLAG(X_FLIP, 1);
            if (param2 == 2) {
                flags |= SPRITE_FLAG(Y_FLIP, 1);
            }
        } break;

        case 1: {
            if (param2 == 2) {
                flags |= SPRITE_FLAG(Y_FLIP, 1);
            }
        } break;

        case 2: {
            flags |= SPRITE_FLAG(Y_FLIP, 1);

            if (param2 == 0) {
                flags |= SPRITE_FLAG(X_FLIP, 1);
            }
        } break;

        case 3: {
            if (param2 == 0) {
                flags |= SPRITE_FLAG(X_FLIP, 1);
            }
        } break;
    }

    s->tiles = ALLOC_TILES_VARIANT(ANIM_MAZE, 6);
    s->anim = ANIM_MAZE;
    s->variant = 6;
    s->oamFlags = SPRITE_OAM_ORDER(24);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = flags | SPRITE_FLAG(PRIORITY, 1);
    UpdateSpriteAnimation(s);
}

void sub_804D3FC(void)
{
    Maze *maze = TASK_DATA(gCurTask);
    Sprite *s = &maze->s;
    MapEntity *me = maze->base.me;
    s16 worldX, worldY;

    worldX = TO_WORLD_POS(maze->base.spriteX, maze->base.regionX);
    worldY = TO_WORLD_POS(me->y, maze->base.regionY);

    if (!IsPointInScreenRect(worldX, worldY)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, maze->base.spriteX);
        TaskDestroy(gCurTask);
        return;
    }

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

// TODO: Match without goto!
void Task_Interactable138Main(void)
{
    Maze *maze = TASK_DATA(gCurTask);
    Sprite *s = &maze->s;
    s16 worldX = maze->worldX;
    s16 worldY = maze->worldY;
    s16 i;

    maze->unk3D = ((maze->unk3D + 1) % 256u) % 16u;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p = GET_SP_PLAYER_V0(i);

        if ((p->moveState & MOVESTATE_20) && (p->spr6C == s)) {
            if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
                p->qWorldY -= Q(2);
            } else {
                p->qWorldY += Q(2);
            }
        }

        if (!sub_802C080(p)) {
            if (p->callback != Player_800DDD0) {
                if ((p->callback != Player_800B6C4) && (p->callback != Player_800B748)) {
                    goto lbl;
                } else {
                    continue;
                }
            } else {
                if (sub_8020700(s, worldX, worldY, 0, p, 0)) {
                    ApplyMazeEndDirection(p, maze->unk3C, worldX, worldY);
                }

                continue;
            }
        }
    lbl:

        if ((p->charFlags.someIndex == 1) || (p->charFlags.someIndex == 2) || (p->charFlags.someIndex == 4)) {
            if (!sub_802C0D4(p)) {
                u32 res = sub_8020950(s, worldX, worldY, p, 0);

                if (res & 0x10000) {
                    p->qWorldY += Q_8_8(res);
                } else if (res & 0x20000) {
                    p->qWorldY += Q_8_8(res);

                    if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
                        p->qWorldY -= Q(1);
                    } else {
                        p->qWorldY += Q(1);
                    }

                    p->qSpeedAirY = 0;
                    p->qSpeedGround = 0;
                }

                if (res & 0xC0000) {
                    p->qWorldX += Q((s16)res >> 8);

                    p->qSpeedAirX = 0;
                    p->qSpeedGround = 0;
                }
            }
        }
    }

    sub_804D6D8();
}

void sub_804D658(Sprite *s, s16 i)
{
    u32 flags = 0;
    if (i & 0x2) {
        // Horizontal
        s->tiles = ALLOC_TILES_VARIANT(ANIM_MAZE, 7);
        s->anim = ANIM_MAZE;
        s->variant = 7;
        flags |= ((i & 0x1) ? SPRITE_FLAG(Y_FLIP, 0) : SPRITE_FLAG(Y_FLIP, 1));
    } else {
        // Vertical
        s->tiles = ALLOC_TILES_VARIANT(ANIM_MAZE, 8);
        s->anim = ANIM_MAZE;
        s->variant = 8;

        flags |= ((i & 0x1) ? SPRITE_FLAG(X_FLIP, 0) : SPRITE_FLAG(X_FLIP, 1));
    }

    s->oamFlags = SPRITE_OAM_ORDER(12);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = flags | SPRITE_FLAG(PRIORITY, 1);
    UpdateSpriteAnimation(s);
}

void sub_804D6D8(void)
{
    Maze *maze = TASK_DATA(gCurTask);
    Sprite *s = &maze->s;
    MapEntity *me = maze->base.me;
    s16 worldX, worldY;
    s16 i;

    worldX = TO_WORLD_POS(maze->base.spriteX, maze->base.regionX);
    worldY = TO_WORLD_POS(me->y, maze->base.regionY);

    if (!IsPointInScreenRect(worldX, worldY)) {
        for (i = 0; i < 2; i++) {
            Player *p = GET_SP_PLAYER_V1(i);

            sub_80213B0(s, p);
        }

        SET_MAP_ENTITY_NOT_INITIALIZED(me, maze->base.spriteX);
        TaskDestroy(gCurTask);
        return;
    }

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void TaskDestructor_Maze(struct Task *t)
{
    Maze *maze = TASK_DATA(t);
    VramFree(maze->s.tiles);
}
void TaskDestructor_MazeCorner(struct Task *t)
{
    Maze *maze = TASK_DATA(t);
    VramFree(maze->s.tiles);
}
void TaskDestructor_Interactable138(struct Task *t)
{
    Maze *maze = TASK_DATA(t);
    VramFree(maze->s.tiles);
}

void sub_804D7F0(Player *p, u8 kind, s16 worldX, s16 worldY)
{
    p->qUnk70 = Q(worldX);
    p->qUnk74 = Q(worldY);

    p->qSpeedGround = Q(0);
    p->qSpeedAirX = Q(0);
    p->qSpeedAirY = Q(0);

    switch (kind) {
        case 0:
        case 1: {
            SetPlayerCallback(p, Player_800DD0C);
        } break;

        case 2:
        case 3: {
            SetPlayerCallback(p, Player_800DD28);
        } break;
    }
}

void ApplyMazeEndDirection(Player *p, u8 direction, s16 worldX, s16 worldY)
{
    p->qUnk70 = Q(worldX);
    p->qUnk74 = Q(worldY);

    switch (direction) {
        case 0: {
            p->qSpeedAirX = -Q(8);
            p->qSpeedAirY = Q(0);
        } break;

        case 1: {
            p->qSpeedAirX = +Q(8);
            p->qSpeedAirY = Q(0);
        } break;

        case 2: {
            p->qSpeedAirX = Q(0);
            p->qSpeedAirY = -Q(8);
        } break;

        case 3: {
            p->qSpeedAirX = Q(0);
            p->qSpeedAirY = +Q(8);
        } break;
    }

    SetPlayerCallback(p, Player_800DE48);
}
