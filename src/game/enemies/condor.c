#include "global.h"
#include "task.h"
#include "malloc_vram.h"
#include "module_unclear.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/enemy_unknown.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"

typedef struct {
    /* 0x00 */ MapEntity *me;
    /* 0x04 */ u8 id;
    /* 0x05 */ u8 spriteX;
    /* 0x06 */ u8 unk6;
    /* 0x07 */ s8 direction;
    /* 0x08 */ Vec2_u16 region;
    /* 0x0C */ Vec2_32 qUnkC;
    /* 0x14 */ Vec2_32 qPos;
    /* 0x1C */ s32 unk1C;
    /* 0x20 */ s32 unk20;
    /* 0x24 */ Sprite s;
    /* 0x4C */ u8 filler4C[0x4];
    /* 0x50 */ u16 unk50[2]; // TODO: type
} Condor; /* size: 0x68 */

typedef struct {
    /* 0x00 */ Vec2_u16 region;
    /* 0x04 */ Vec2_32 qPos;
    /* 0x0C */ Sprite s;
    /* 0x34 */ Hitbox reserved;
} CondorProjectile; /* size: 0x3C */

void Task_CondorProjectileInit(void);
void sub_805944C(CondorProjectile *proj);
void sub_8059540(CondorProjectile *proj);
void UpdateProjectilePos(CondorProjectile *proj);
AnimCmdResult sub_80597B4(CondorProjectile *proj);
void TaskDestructor_CondorProjectile(struct Task *t);

extern TileInfo2 gUnknown_080D1F0C[4]; // Condor
extern TileInfo2 gUnknown_080D1F1C[4]; // proj

void CreateCondorProjectile(s32 qPosX, s32 qPosY, u16 regionX, u16 regionY)
{
    struct Task *t = TaskCreate(Task_CondorProjectileInit, sizeof(CondorProjectile), 0x4040, 0, TaskDestructor_CondorProjectile);
    CondorProjectile *proj = TASK_DATA(t);

    proj->qPos.x = qPosX;
    proj->qPos.y = qPosY;
    proj->region.x = regionX;
    proj->region.y = regionY;

    CpuFill16(0, &proj->reserved.b, sizeof(proj->reserved.b));

    sub_805944C(proj);
}

void sub_8059778(void)
{
    CondorProjectile *proj = TASK_DATA(gCurTask);
    AnimCmdResult acmdRes = sub_80597B4(proj);

    sub_8059540(proj);

    if (acmdRes == ACMD_RESULT__ENDED) {
        TaskDestroy(gCurTask);
        return;
    }
}

void UpdateProjectilePos(CondorProjectile *proj) { proj->qPos.y += Q(2); }

AnimCmdResult sub_80597B4(CondorProjectile *proj)
{
    AnimCmdResult acmdRes;

    Sprite *s = &proj->s;
    s->x = TO_WORLD_POS_RAW(I(proj->qPos.x), proj->region.x) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(proj->qPos.y), proj->region.y) - gCamera.y;

    acmdRes = UpdateSpriteAnimation(s);
    DisplaySprite(s);

    return acmdRes;
}

void TaskDestructor_CondorProjectile(struct Task *t)
{
    CondorProjectile *proj = TASK_DATA(t);
    VramFree(proj->s.tiles);
}