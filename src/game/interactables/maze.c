#include "global.h"
#include "module_unclear.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/player_callbacks.h"
#include "game/stage.h"

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
} MazeLauncher; /* 0x44 */

void Task_MazeEnter(void);
void TaskDestructor_MazeLauncher(struct Task *);
void Task_Interactable137Main(void);
void TaskDestructor_Interactable137(struct Task *);
void Task_Interactable138Main(void);
void TaskDestructor_Interactable138(struct Task *);
void sub_804D08C(Sprite *, s16 i);
void sub_804D114(void);
void sub_804D360(Sprite *, u16 i, s16 a);
void sub_804D658(Sprite *, s16 i); // like sub_804D08C, but for MazeC
void sub_804D7F0(Player *p, u8 param1, s16 worldX, s16 worldY);

void CreateEntity_MazeEnter(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_MazeEnter, sizeof(MazeLauncher), 0x2100, 0, TaskDestructor_MazeLauncher);
    MazeLauncher *maze = TASK_DATA(t);
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
NONMATCH("asm/non_matching/game/interactables/maze__CreateEntity_MazeRedirect.inc",
         void CreateEntity_MazeRedirect(MapEntity *me, u16 regionX, u16 regionY, u8 id))
{
    struct Task *t = TaskCreate(Task_Interactable137Main, sizeof(MazeLauncher), 0x2100, 0, TaskDestructor_Interactable137);
    MazeLauncher *maze = TASK_DATA(t);
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
    struct Task *t = TaskCreate(Task_Interactable138Main, sizeof(MazeLauncher), 0x2100, 0, TaskDestructor_Interactable138);
    MazeLauncher *maze = TASK_DATA(t);
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
    MazeLauncher *maze = TASK_DATA(gCurTask);
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
