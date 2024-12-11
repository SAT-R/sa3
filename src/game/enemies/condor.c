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
    u8 filler8[0x2];
    /* 0x0A */ u16 region[2];
    u8 fillerE[0x8 + 2];
    /* 0x18 */ s32 unk18;
    /* 0x1C */ s32 unk1C;
    /* 0x20 */ Vec2_32 qUnk20;
    /* 0x28 */ Vec2_32 qPos;
    /* 0x30 */ s32 qLeft;
    /* 0x34 */ s32 qRight;
    /* 0x38 */ Sprite s;
    /* 0x60 */ Hitbox reserved;
} Condor; /* size: 0x68 */

typedef struct {
    /* 0x00 */ u16 region[2];
    /* 0x04 */ Vec2_32 qPos;
    /* 0x0C */ Sprite s;
    /* 0x34 */ Hitbox reserved;
} CondorProjectile; /* size: 0x3C */

void Task_CondorProjectileInit(void);
void TaskDestructor_Condor(struct Task *t);
static void InitSpriteProjectile(CondorProjectile *proj);
bool32 sub_8059540(CondorProjectile *proj);
bool32 sub_8059684(Condor *enemy, EnemyUnknownStruc0 *param1);
void CreateCondorProjectile(s32 qPosX, s32 qPosY, u16 regionX, u16 regionY);
void Task_8059778(void);
void UpdateProjectilePos(CondorProjectile *proj);
AnimCmdResult sub_80597B4(CondorProjectile *proj);
void TaskDestructor_CondorProjectile(struct Task *t);

extern const TileInfo2 gUnknown_080D1E54[6]; // Condor
// extern const TileInfo2 gUnknown_080D1E84[2] = {{ANIM_CONDOR_PROJ, 0, 16}, {ANIM_CONDOR_PROJ_EXPLOSION, 0, 16}}; // proj
extern const TileInfo2 gUnknown_080D1E84[2]; // proj

#if 01
#endif

static void InitSpriteProjectile(CondorProjectile *enemy)
{
    void *tiles = ALLOC_TILES(ANIM_CONDOR_PROJ_EXPLOSION);
    Sprite *s = &enemy->s;
    s->tiles = tiles;

    s->anim = gUnknown_080D1E84[0].anim;
    s->variant = gUnknown_080D1E84[0].variant;
    s->prevVariant = -1;
    s->x = I(enemy->qPos.x) - gCamera.x;
    s->y = I(enemy->qPos.y) - gCamera.y;
    s->oamFlags = SPRITE_OAM_ORDER(19);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;

    UpdateSpriteAnimation(s);
}

void Task_CondorProjectileInit(void)
{
    CondorProjectile *proj = TASK_DATA(gCurTask);
    bool32 r5 = FALSE;
    s32 worldX, worldY;
    s32 res;

    UpdateProjectilePos(proj);

    sub_80597B4(proj);

    if (sub_8059540(proj) == TRUE) {
        r5 = TRUE;
    }

    worldX = I(proj->qPos.x);
    worldY = I(proj->qPos.y);

    worldX = TO_WORLD_POS_RAW(worldX, proj->region[0]);
    worldY = TO_WORLD_POS_RAW(worldY, proj->region[1]);

    res = sub_8052394(worldY, worldX, 1, +8, 0, sub_805217C);

    if (res < 0) {
        r5 = TRUE;
    }

    if (r5 == TRUE) {
        Sprite *s = &proj->s;

        s->anim = gUnknown_080D1E84[1].anim;
        s->variant = gUnknown_080D1E84[1].variant;
        s->frameFlags = SPRITE_FLAG(PRIORITY, 0);

        gCurTask->main = Task_8059778;
    }
}

bool32 sub_8059540(CondorProjectile *proj)
{
    Sprite *s;
    s32 worldX, worldY;
    u8 i;

    Player *p = NULL;

    worldX = I(proj->qPos.x);
    worldY = I(proj->qPos.y);

    worldX = TO_WORLD_POS_RAW(worldX, proj->region[0]);
    worldY = TO_WORLD_POS_RAW(worldY, proj->region[1]);

    s = &proj->s;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        p = GET_SP_PLAYER_V0(i);

        if ((!sub_802C080(p)) && (p->charFlags.someIndex == 1 || p->charFlags.someIndex == 2 || p->charFlags.someIndex == 4)
            && sub_8020700(s, worldX, worldY, 1, p, 0)) {
            if (p->framesInvincible == 0) {
                sub_8020CE0(s, worldX, worldY, 1, p);
            }

            return TRUE;
        }
    }

    return FALSE;
}

void sub_80595FC(Condor *enemy)
{
    Sprite *s = &enemy->s;

    if (s->frameFlags & SPRITE_FLAG(X_FLIP, 1)) {
        if (enemy->qPos.x <= enemy->qRight) {
            enemy->qPos.x += Q(1);

            if (enemy->qPos.x > enemy->qRight) {
                enemy->qPos.x = enemy->qRight;
            }
        }
    } else {
        if (enemy->qPos.x >= enemy->qLeft) {
            enemy->qPos.x -= Q(1);

            if (enemy->qPos.x < enemy->qLeft) {
                enemy->qPos.x = enemy->qLeft;
            }
        }
    }
}

AnimCmdResult sub_8059640(Condor *enemy)
{
    AnimCmdResult acmdRes;

    Sprite *s = &enemy->s;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;

    acmdRes = UpdateSpriteAnimation(s);
    DisplaySprite(s);

    return acmdRes;
}

bool32 sub_8059684(Condor *enemy, EnemyUnknownStruc0 *param1)
{
    Sprite *s;

    param1->me = NULL;
    param1->spriteX = 0;
    param1->unk4 = 0;

    s = &enemy->s;
    param1->spr = s;
    param1->posX = enemy->qPos.x;
    param1->posY = enemy->qPos.y;
    param1->regionX = enemy->region[0];
    param1->regionY = enemy->region[1];

    return sub_805C63C(param1);
}

bool32 sub_80596B0(Condor *enemy)
{
    EnemyUnknownStruc0 unk;

    unk.unk4 = sub_8059684(enemy, &unk);
    unk.spr = &enemy->s;
    unk.posX = enemy->qUnk20.x;
    unk.posY = enemy->qUnk20.y;
    unk.regionX = enemy->region[0];
    unk.regionY = enemy->region[1];
    unk.me = enemy->me;
    unk.spriteX = enemy->spriteX;

    return sub_805C280(&unk);
}

void TaskDestructor_Condor(struct Task *t)
{
    Condor *enemy = TASK_DATA(t);
    VramFree(enemy->s.tiles);
}

void CreateCondorProjectile(s32 qPosX, s32 qPosY, u16 regionX, u16 regionY)
{
    struct Task *t = TaskCreate(Task_CondorProjectileInit, sizeof(CondorProjectile), 0x4040, 0, TaskDestructor_CondorProjectile);
    CondorProjectile *proj = TASK_DATA(t);

    proj->qPos.x = qPosX;
    proj->qPos.y = qPosY;
    proj->region[0] = regionX;
    proj->region[1] = regionY;

    CpuFill16(0, &proj->reserved.b, sizeof(proj->reserved.b));

    InitSpriteProjectile(proj);
}

void Task_8059778(void)
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
    s->x = TO_WORLD_POS_RAW(I(proj->qPos.x), proj->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(proj->qPos.y), proj->region[1]) - gCamera.y;

    acmdRes = UpdateSpriteAnimation(s);
    DisplaySprite(s);

    return acmdRes;
}

void TaskDestructor_CondorProjectile(struct Task *t)
{
    CondorProjectile *proj = TASK_DATA(t);
    VramFree(proj->s.tiles);
}