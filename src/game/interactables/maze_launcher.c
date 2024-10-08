#include "global.h"
#include "game/camera.h"
#include "game/entity.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    u8 filler34[8];
    /* 0x3C */ u8 unk3C;
    /* 0x3D */ u8 unk3D;
    /* 0x3E */ u16 unk3E;
    /* 0x40 */ s16 unk40;
    /* 0x42 */ s16 unk42;
} MazeLauncher; /* 0x44 */

void Task_MazeLauncher(void);
void TaskDestructor_MazeLauncher(struct Task *);
void Task_Interactable137Main(void);
void TaskDestructor_Interactable137(struct Task *);
void Task_Interactable138Main(void);
void TaskDestructor_Interactable138(struct Task *);
void sub_804D08C(Sprite *, s16 i);
void sub_804D360(Sprite *, u16 i, s16 a);
void sub_804D658(Sprite *, s16 i); // like sub_804D08C, but for MazeC

void CreateEntity_MazeLauncherA(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_MazeLauncher, sizeof(MazeLauncher), 0x2100, 0, TaskDestructor_MazeLauncher);
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

    maze->unk40 = TO_WORLD_POS(me->x, regionX);
    maze->unk42 = TO_WORLD_POS(me->y, regionY);

    s = &maze->s;
    s->x = maze->unk40 - gCamera.x;
    s->y = maze->unk42 - gCamera.y;

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_804D08C(s, i);
}

// (99.64%) https://decomp.me/scratch/ADZew
// NOTE: Reg-alloc mismatch r9/sl
NONMATCH("asm/non_matching/game/interactables/maze_launcher__CreateEntity_MazeLauncherB.inc",
         void CreateEntity_MazeLauncherB(MapEntity *me, u16 regionX, u16 regionY, u8 id))
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
    maze->unk40 = TO_WORLD_POS(me->x, regionX);
    maze->unk42 = TO_WORLD_POS(me->y, regionY);
    s = &maze->s;
    s->x = maze->unk40 - gCamera.x;
    s->y = maze->unk42 - gCamera.y;

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_804D360(s, maze->unk3C, maze->unk3D);
}
END_NONMATCH

void CreateEntity_MazeLauncherC(MapEntity *me, u16 regionX, u16 regionY, u8 id)
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

    maze->unk40 = TO_WORLD_POS(me->x, regionX);
    maze->unk42 = TO_WORLD_POS(me->y, regionY);

    s = &maze->s;
    s->x = maze->unk40 - gCamera.x;
    s->y = maze->unk42 - gCamera.y;

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_804D658(s, i);
}
