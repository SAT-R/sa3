#include "global.h"
#include "trig.h"
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
    /* 0x07 */ s8 unk7;
    /* 0x08 */ s8 direction;
    /* 0x0A */ u16 region[2];
    /* 0x0E */ s16 unkE;
    /* 0x10 */ Vec2_32 qUnk10;
    /* 0x18 */ Vec2_32 qPos;
    /* 0x20 */ s32 qLeft;
    /* 0x24 */ s32 qRight;
    /* 0x28 */ Sprite s;
    /* 0x50 */ Hitbox reserved; // TODO: Check type!
} Ginpe; /* size: 0x58 */

typedef struct {
    /* 0x00 */ u8 unk0;
    /* 0x01 */ s8 unk1;
    /* 0x02 */ s8 unk2;
    /* 0x04 */ u16 region[2];
    /* 0x08 */ u16 unk8;
    /* 0x0A */ u16 unkA;
    /* 0x0C */ s16 unkC;
    /* 0x10 */ Vec2_32 qPos;
    /* 0x18 */ Sprite s;
    /* 0x40 */ Hitbox reserved;
} GinpeProjectile; /* size: 0x48 */

extern const TileInfo2 gUnknown_080D1F2C[4]; // Jousun

void Task_Ginpe(void);
void sub_8060654(void);
void sub_80606CC(Ginpe *enemy);
AnimCmdResult sub_8060704(Ginpe *enemy);
bool32 sub_8060774(Ginpe *enemy);
void sub_8060384(Ginpe *enemy);
void sub_80604F0(GinpeProjectile *proj);
static bool32 CheckPlayerCollision(Ginpe *enemy);
static bool32 UpdateProjectilePos(GinpeProjectile *proj);
static AnimCmdResult DisplayProjectile(GinpeProjectile *proj);
bool32 sub_806027C(GinpeProjectile *proj);
void TaskDestructor_Ginpe(struct Task *t);
void CreateGinpeProjectile(s32 qPosX, s32 qPosY, u16 regionX, u16 regionY, u8 param4);
void Task_GinpeProjectileInit(void);
void TaskDestructor_GinpeProjectile(struct Task *t);

extern const TileInfo2 gUnknown_080D2004[4]; // Ginpe
extern const TileInfo2 gUnknown_080D2014[4]; // proj
extern const u8 gUnknown_080D1FF8[12];

#define isBetween(v, min, onePastMax) (((v) >= (min)) && ((v) < onePastMax))

void CreateEntity_Ginpe(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Ginpe, sizeof(Ginpe), 0x2100, 0, TaskDestructor_Ginpe);

    Ginpe *enemy = TASK_DATA(t);
    s32 qX, qY;

    enemy->me = me;
    enemy->spriteX = me->x;
    enemy->id = id;
    enemy->region[0] = regionX;
    enemy->region[1] = regionY;

    qX = Q(me->x * TILE_WIDTH);
    enemy->qPos.x = qX;
    qY = Q(me->y * TILE_WIDTH);
    enemy->qPos.y = qY;

    enemy->qUnk10.x = qX;
    enemy->qUnk10.y = qY;

    enemy->qLeft = qX + Q(me->d.sData[0] * TILE_WIDTH);
    enemy->qRight = enemy->qLeft + Q(me->d.uData[2] * TILE_WIDTH);

    enemy->unk6 = 0;

    if (me->d.uData[4] & 0x8) {
        enemy->direction = -1;
    } else {
        enemy->direction = +1;
    }

    enemy->unk7 = 0;

    CpuFill16(0, &enemy->reserved.b, sizeof(enemy->reserved.b));

    sub_8060384(enemy);

    SET_MAP_ENTITY_INITIALIZED(me);
}

void sub_8060384(Ginpe *enemy)
{
    void *tiles = ALLOC_TILES(ANIM_GINPE);
    Sprite *s = &enemy->s;
    s->tiles = tiles;

    s->anim = gUnknown_080D2004[0].anim;
    s->variant = gUnknown_080D2004[0].variant;
    s->prevVariant = -1;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);

    if (enemy->direction < 0) {
        s->frameFlags |= SPRITE_FLAG_MASK_X_FLIP;
    }

    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;

    UpdateSpriteAnimation(s);
}

void Task_Ginpe(void)
{
    Ginpe *enemy = TASK_DATA(gCurTask);
    Sprite *s = &enemy->s;
    s->frameFlags |= SPRITE_FLAG(18, 1);

    sub_805CD70(&enemy->qPos, &enemy->qUnk10, enemy->region, &enemy->unk7);

    if ((gStageData.unk4 != 1) && (gStageData.unk4 != 2) && (gStageData.unk4 != 4)) {
        sub_80606CC(enemy);
    }

    if (sub_8060774(enemy) == TRUE) {
        TaskDestroy(gCurTask);
        return;
    }

    sub_8060704(enemy);

    if ((enemy->qPos.x <= enemy->qLeft) || (enemy->qPos.x >= enemy->qRight)) {
        s32 spriteIndex;

        spriteIndex = 1;

        s->anim = gUnknown_080D2004[spriteIndex].anim;
        s->variant = gUnknown_080D2004[spriteIndex].variant;

        gCurTask->main = sub_8060654;
    } else if ((++enemy->unk6 >= 90)) {
        u8 param4;

        if (enemy->s.frameFlags & SPRITE_FLAG(X_FLIP, 1)) {
            param4 = 0;
        } else {
            param4 = 1;
        }

        CreateGinpeProjectile(enemy->qPos.x, enemy->qPos.y - Q(22), enemy->region[0], enemy->region[1], param4);

        enemy->unk6 = 0;
    }
}

void sub_80604F0(GinpeProjectile *proj)
{
    void *tiles = ALLOC_TILES(ANIM_CONDOR_PROJ_EXPLOSION);
    Sprite *s = &proj->s;
    s->tiles = tiles;

    s->anim = gUnknown_080D2014[0].anim;
    s->variant = gUnknown_080D2014[0].variant;
    s->prevVariant = -1;
    s->x = I(proj->qPos.x) - gCamera.x;
    s->y = I(proj->qPos.y) - gCamera.y;
    s->oamFlags = SPRITE_OAM_ORDER(19);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;

    UpdateSpriteAnimation(s);
}

bool32 CheckPlayerCollisionProj(GinpeProjectile *proj)
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

        if (!sub_802C080(p) && sub_8020700(s, worldX, worldY, 1, p, 0)) {
            if (p->framesInvincible == 0) {
                sub_8020CE0(s, worldX, worldY, 1, p);
            }

            return TRUE;
        }
    }

    return FALSE;
}

void sub_80605FC(GinpeProjectile *proj)
{
    s16 r2, r5;

    r2 = Q(proj->unk2) * 2;

    if (proj->unk1 > 0) {
        r5 = QS(proj->unk1 + 4) >> 1;
    } else {
        r5 = QS(proj->unk1 - 4) >> 1;
    }

    proj->unkC += 0x10;
    r2 += proj->unkC;
    proj->unkA += 1;
    r5 += proj->unk1;

    proj->qPos.y += r2;
    proj->qPos.x += r5 >> 1;
}

void sub_8060654(void)
{
    Ginpe *enemy = TASK_DATA(gCurTask);

    AnimCmdResult acmdRes = sub_8060704(enemy);

    if (sub_8060774(enemy) == TRUE) {
        TaskDestroy(gCurTask);
        return;
    }

    if (acmdRes == ACMD_RESULT__ENDED) {
        Sprite *s = &enemy->s;

        if (s->frameFlags & SPRITE_FLAG(X_FLIP, 1)) {
            SPRITE_FLAG_CLEAR(s, X_FLIP);
        } else {
            SPRITE_FLAG_SET(s, X_FLIP);
        }

        s->anim = gUnknown_080D2004[0].anim;
        s->variant = gUnknown_080D2004[0].variant;

        gCurTask->main = Task_Ginpe;
    }
}

void sub_80606CC(Ginpe *enemy)
{
    Sprite *s = &enemy->s;

    if (s->frameFlags & SPRITE_FLAG(X_FLIP, 1)) {
        if (enemy->qPos.x <= enemy->qRight) {
            enemy->qPos.x += Q(0.5);

            if (enemy->qPos.x > enemy->qRight) {
                enemy->qPos.x = enemy->qRight;
            }
        }
    } else {
        if (enemy->qPos.x >= enemy->qLeft) {
            enemy->qPos.x -= Q(0.5);

            if (enemy->qPos.x < enemy->qLeft) {
                enemy->qPos.x = enemy->qLeft;
            }
        }
    }
}

AnimCmdResult sub_8060704(Ginpe *enemy)
{
    AnimCmdResult acmdRes;

    Sprite *s = &enemy->s;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;

    acmdRes = UpdateSpriteAnimation(s);
    DisplaySprite(s);

    return acmdRes;
}

bool32 sub_8060748(Ginpe *enemy, EnemyUnknownStruc0 *param1)
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

bool32 sub_8060774(Ginpe *enemy)
{
    EnemyUnknownStruc0 unk;

    unk.unk4 = sub_8060748(enemy, &unk);
    unk.spr = &enemy->s;
    unk.posX = enemy->qUnk10.x;
    unk.posY = enemy->qUnk10.y;
    unk.regionX = enemy->region[0];
    unk.regionY = enemy->region[1];
    unk.me = enemy->me;
    unk.spriteX = enemy->spriteX;

    return sub_805C280(&unk);
}

void TaskDestructor_Ginpe(struct Task *t)
{
    Ginpe *enemy = TASK_DATA(t);
    VramFree(enemy->s.tiles);
}
