#include "global.h"
#include "core.h"
#include "game/camera.h"
#include "game/enemy_unknown.h"
#include "game/parameters/enemies.h"
#include "game/stage.h"
#include "malloc_vram.h"
#include "module_unclear.h"

typedef struct Yukigasen {
    /* 0x00 */ MapEntity *me;
    /* 0x04 */ u8 id;
    /* 0x05 */ u8 meX;
    /* 0x06 */ u8 cooldown;
    /* 0x07 */ u8 unk7;
    /* 0x08 */ s8 unk8;
    /* 0x0A */ u16 region[2];
    /* 0x0E */ u8 fillerE[0x2];
    /* 0x10 */ Vec2_32 qSpawn;
    /* 0x18 */ Vec2_32 qPos;
    /* 0x20 */ Sprite2 s;
} Yukigasen; /* 0x50 */

typedef struct YukigasYukigasenSnowballen {
    /* 0x00 */ s8 unk0;
    /* 0x01 */ s8 unk1;
    /* 0x02 */ s8 unk2;
    /* 0x03 */ s8 unk3;
    /* 0x04 */ u16 unk4;
    /* 0x06 */ u16 unk6;
    /* 0x08 */ s16 unk8;
    /* 0x0A */ s16 unkA;
    /* 0x0C */ s16 unkC;
    /* 0x0E */ u8 fillerE[0x2];
    /* 0x10 */ Vec2_32 qWorldPos;
    /* 0x18 */ Sprite2 s;
} YukigasenSnowball; /* 0x48 */

extern const TileInfo2 gUnknown_080D2024[4];
extern const TileInfo2 gUnknown_080D2034[4];

void sub_806098C(Yukigasen *enemy, u8 param1);
void Task_YukigasenMain(void);
void Task_8060AC8(void);
void sub_Snowball_8060B60(YukigasenSnowball *snowball);
bool32 sub_8060C68(YukigasenSnowball *snowball);
void sub_8060D0C(YukigasenSnowball *snowball);
void sub_8060FE0(Yukigasen *enemy, s8 cooldown, MapEntity *me, u16 regionX, s32 regionY, s32 arg5);
bool32 sub_8061054(Yukigasen *enemy);
void TaskDestructor_Yukigasen(struct Task *t);
void TaskDestructor_YukigasenSnowball(struct Task *t);
void CreateYukigasenSnowball(s32 qWorldX, s32 qWorldY, u16 regionX, u16 regionY, s8 dir);
void Task_Snowball_8061170(void);
bool32 sub_8061090(Yukigasen *enemy, EnemyUnknownStruc0 *strc0);
AnimCmdResult sub_80611A0(YukigasenSnowball *snowball);

AnimCmdResult sub_8061010(Yukigasen *enemy);

void sub_806098C(Yukigasen *enemy, u8 param1)
{
    u8 *tiles = VramMalloc(0x10U);
    Sprite2 *s = &enemy->s;

    s->tiles = tiles;
    s->anim = gUnknown_080D2024[0].anim;
    s->variant = gUnknown_080D2024[0].variant;
    s->prevVariant = -1;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;
    s->oamFlags = 0x480;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0x1000;

    if (param1 == 2) {
        s->frameFlags |= 0x400;
        s->frameFlags |= 0x1000;
    }

    s->hitboxes[0].index = -1;
    UpdateSpriteAnimation((Sprite *)s);
}

void Task_YukigasenMain(void)
{
    AnimCmdResult temp_r2;
    s8 dir;
    Yukigasen *enemy;
    void *temp_r4;
    Sprite2 *s;

    enemy = TASK_DATA(gCurTask);
    s = &enemy->s;
    s->frameFlags |= 0x40000;
    sub_805CD70(&enemy->qPos, NULL, enemy->region, &enemy->unk8);
    if (sub_8061054(enemy) == 1) {
        TaskDestroy(gCurTask);
        return;
    }
    temp_r2 = sub_8061010(enemy);
    if (((u8)(gStageData.unk4 - 1) > 1U) && (gStageData.unk4 != 4) && (temp_r2 == ACMD_RESULT__ENDED)) {
        if (enemy->s.frameFlags & 0x400) {
            dir = +1;
        } else {
            dir = -1;
        }
        s->anim = (u16)gUnknown_080D2024[1].anim;
        s->variant = (u8)gUnknown_080D2024[1].variant;
        CreateYukigasenSnowball(enemy->qPos.x, enemy->qPos.y - Q(24), enemy->region[0], enemy->region[1], dir);
        gCurTask->main = Task_8060AC8;
    }
}

void Task_8060AC8(void)
{
    AnimCmdResult temp_r2;
    s8 dir;
    Yukigasen *enemy;
    void *temp_r4;
    Sprite2 *s;

    enemy = TASK_DATA(gCurTask);
    s = &enemy->s;
    sub_805CD70(&enemy->qPos, NULL, enemy->region, &enemy->unk8);

    if (sub_8061054(enemy) == 1) {
        TaskDestroy(gCurTask);
        return;
    }

    temp_r2 = sub_8061010(enemy);
    if (((u8)(gStageData.unk4 - 1) > 1U) && (gStageData.unk4 != 4)) {
        if (temp_r2 == ACMD_RESULT__ENDED) {
            enemy->unk7++;
        }

        if (enemy->unk7 >= enemy->cooldown) {
            Sprite2 *s = &enemy->s;
            if (enemy->s.frameFlags & 0x400) {
                dir = +1;
            } else {
                dir = -1;
            }
            s->anim = (u16)gUnknown_080D2024[0].anim;
            s->variant = (u8)gUnknown_080D2024[0].variant;
            enemy->unk7 = 0;
            gCurTask->main = Task_YukigasenMain;
        }
    }
}

void sub_Snowball_8060B60(YukigasenSnowball *snowball)
{
    u8 *tiles = VramMalloc(0x10U);
    Sprite2 *s;

    s = &snowball->s;
    s->tiles = tiles;
    s->anim = gUnknown_080D2034[0].anim;
    s->variant = gUnknown_080D2034[0].variant;
    s->prevVariant = 0xFF;
    s->x = I(snowball->qWorldPos.x) - gCamera.x;
    s->y = I(snowball->qWorldPos.y) - gCamera.y;
    s->oamFlags = 0x4C0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0x1000;
    s->hitboxes[0].index = -1;
    UpdateSpriteAnimation((Sprite *)s);
}

void Task_SnowballMain()
{
    Sprite2 *s;
    s32 var_r5;

    YukigasenSnowball *snowball = TASK_DATA(gCurTask);

    var_r5 = 0;
    sub_80611A0(snowball);
    if (((u32)(u8)(gStageData.unk4 - 1) > 1U) && (gStageData.unk4 != 4)) {
        s32 worldX, worldY;

        sub_8060D0C(snowball);
        if (sub_8060C68(snowball) == 1) {
            var_r5 = 1;
        }

        worldX = I(snowball->qWorldPos.x);
        worldY = I(snowball->qWorldPos.y);
        worldX += (snowball->unk4 << 8);
        worldY += (snowball->unk6 << 8);
        if (sub_8052394(worldY, worldX, 1, 8, NULL, sub_805217C) < 0) {
            var_r5 = 1;
        }
        if (var_r5 == 1) {
            s = &snowball->s;
            s->anim = gUnknown_080D2034[1].anim;
            s->variant = gUnknown_080D2034[1].variant;
            s->frameFlags = 0;
            gCurTask->main = Task_Snowball_8061170;
        }
    }
}

u32 sub_8060C68(YukigasenSnowball *snowball)
{
    Sprite2 *s;
    u32 res;
    u8 i;
    s32 worldX, worldY;
    Player *p = NULL;

    worldX = I(snowball->qWorldPos.x);
    worldY = I(snowball->qWorldPos.y);
    worldX = TO_WORLD_POS_RAW(worldX, snowball->unk4);
    worldY = TO_WORLD_POS_RAW(worldY, snowball->unk6);
    s = &snowball->s;

    for (i = 0; i < 2; i++) {
        p = GET_SP_PLAYER_V0(i);

        res = sub_802C080(p);
        if ((res == 0) && (sub_8020700((Sprite *)s, worldX, worldY, 1, p, (s16)res) != 0)) {
            if (p->framesInvincible == 0) {
                sub_8020CE0((Sprite *)s, worldX, worldY, 1U, p);
            }
            return TRUE;
        }
    }

    return FALSE;
}

// (97.76%) https://decomp.me/scratch/4L8KH
NONMATCH("asm/non_matching/game/enemies/yukigasen__sub_8060D0C.inc", void sub_8060D0C(YukigasenSnowball *snowball))
{
    s16 var_r0;
    s16 dx, dy;
    s32 unk1;
    s16 unk2 = (snowball->unk2 << 9);

    if (snowball->unk1 > 0) {
        var_r0 = (snowball->unk1 + 4) << 7;
    } else {
        var_r0 = (snowball->unk1 - 4) << 7;
    }

    snowball->unkC += 16;
    unk2 += snowball->unkC;
    if ((snowball->unk1 > 0)) {
        if ((dx = snowball->unkA, (dx > 0)) || (dx < 0)) {
            snowball->unkA += snowball->unk1;
        }
    }
    dx = var_r0 + snowball->unkA;
    unk1 = unk2 << 16;
    unk1 >>= 16;
    snowball->qWorldPos.y += unk1;
    snowball->qWorldPos.x += dx >> 1;
}
END_NONMATCH

void CreateEntity_Yukigasen_Right(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    Yukigasen *enemy = TASK_DATA(TaskCreate(Task_YukigasenMain, sizeof(Yukigasen), 0x2100U, 0U, TaskDestructor_Yukigasen));
    sub_8060FE0(enemy, YUKIGASEN_COOLDOWN_FAST, me, regionX, regionY, id);
    CpuFill16(0, &enemy->s.hitboxes[1].b, sizeof(enemy->s.hitboxes[1].b));
    sub_806098C(enemy, 2);
    SET_MAP_ENTITY_INITIALIZED(me);
}

void CreateEntity_Yukigasen_Left(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    Yukigasen *enemy = TASK_DATA(TaskCreate(Task_YukigasenMain, sizeof(Yukigasen), 0x2100U, 0U, TaskDestructor_Yukigasen));
    sub_8060FE0(enemy, YUKIGASEN_COOLDOWN_FAST, me, regionX, regionY, id);
    CpuFill16(0, &enemy->s.hitboxes[1].b, sizeof(enemy->s.hitboxes[1].b));
    sub_806098C(enemy, 3);
    SET_MAP_ENTITY_INITIALIZED(me);
}

void CreateEntity_Yukigasen_Right_HighCooldown(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    Yukigasen *enemy = TASK_DATA(TaskCreate(Task_YukigasenMain, sizeof(Yukigasen), 0x2100U, 0U, TaskDestructor_Yukigasen));
    sub_8060FE0(enemy, YUKIGASEN_COOLDOWN_SLOW, me, regionX, regionY, id);
    CpuFill16(0, &enemy->s.hitboxes[1].b, sizeof(enemy->s.hitboxes[1].b));
    sub_806098C(enemy, 2);
    SET_MAP_ENTITY_INITIALIZED(me);
}

void CreateEntity_Yukigasen_Left_HighCooldown(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    Yukigasen *enemy = TASK_DATA(TaskCreate(Task_YukigasenMain, sizeof(Yukigasen), 0x2100U, 0U, TaskDestructor_Yukigasen));
    sub_8060FE0(enemy, YUKIGASEN_COOLDOWN_SLOW, me, regionX, regionY, id);
    CpuFill16(0, &enemy->s.hitboxes[1].b, sizeof(enemy->s.hitboxes[1].b));
    sub_806098C(enemy, 3);
    SET_MAP_ENTITY_INITIALIZED(me);
}

void sub_8060FE0(Yukigasen *enemy, s8 cooldown, MapEntity *me, u16 regionX, s32 regionY, s32 id)
{
    enemy->id = id;
    enemy->me = me;
    enemy->meX = me->x;
    enemy->region[0] = regionX;
    enemy->region[1] = regionY;
    enemy->qPos.x = Q(me->x * TILE_WIDTH);
    enemy->qPos.y = Q(me->y * TILE_WIDTH);
    enemy->qSpawn.x = enemy->qPos.x;
    enemy->qSpawn.y = enemy->qPos.y;
    enemy->unk8 = 0;
    enemy->cooldown = cooldown;
    enemy->unk7 = 0;
}

AnimCmdResult sub_8061010(Yukigasen *enemy)
{
    Sprite2 *s;
    AnimCmdResult acmdRes;

    s = &enemy->s;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;
    acmdRes = UpdateSpriteAnimation((Sprite *)s);
    DisplaySprite((Sprite *)s);
    return acmdRes;
}

bool32 sub_8061054(Yukigasen *enemy)
{
    EnemyUnknownStruc0 strc0;
    strc0.unk4 = sub_8061090(enemy, &strc0);
    strc0.spr = (Sprite *)&enemy->s;
    strc0.posX = enemy->qSpawn.x;
    strc0.posY = enemy->qSpawn.y;
    strc0.regionX = enemy->region[0];
    strc0.regionY = enemy->region[1];
    strc0.me = enemy->me;
    strc0.spriteX = enemy->meX;
    return sub_805C280(&strc0);
}

bool32 sub_8061090(Yukigasen *enemy, EnemyUnknownStruc0 *strc0)
{
    strc0->me = NULL;
    strc0->spriteX = 0;
    strc0->unk4 = 0;
    strc0->spr = (Sprite *)&enemy->s;
    strc0->posX = enemy->qPos.x;
    strc0->posY = enemy->qPos.y;
    strc0->regionX = enemy->region[0];
    strc0->regionY = enemy->region[1];
    return sub_805C63C(strc0);
}

void TaskDestructor_Yukigasen(Task *t)
{
    Yukigasen *enemy = TASK_DATA(t);
    VramFree(enemy->s.tiles);
}

void CreateYukigasenSnowball(s32 qWorldX, s32 qWorldY, u16 regionX, u16 regionY, s8 dir)
{
    YukigasenSnowball *snowball;

    snowball = TASK_DATA(TaskCreate(Task_SnowballMain, sizeof(YukigasenSnowball), 0x4040U, 0U, TaskDestructor_YukigasenSnowball));
    snowball->qWorldPos.x = qWorldX;
    snowball->qWorldPos.y = qWorldY;
    snowball->unk4 = regionX;
    snowball->unk6 = regionY;
    snowball->unk0 = 0;
    snowball->unk1 = dir;
    snowball->unk2 = 0;
    snowball->unkA = dir * Q(5);
    snowball->unkC = 0;
    snowball->unk8 = 0;
    CpuFill16(0, &snowball->s.hitboxes[1].b, sizeof(snowball->s.hitboxes[1].b));
    sub_Snowball_8060B60(snowball);
}

void Task_Snowball_8061170(void)
{
    YukigasenSnowball *snowball = TASK_DATA(gCurTask);
    AnimCmdResult acmdRes = sub_80611A0(snowball);

    sub_8060C68(snowball);

    if (acmdRes == ACMD_RESULT__ENDED) {
        TaskDestroy(gCurTask);
        return;
    }
}

AnimCmdResult sub_80611A0(YukigasenSnowball *snowball)
{
    Sprite2 *s;
    s32 temp_r4;

    s = &snowball->s;
    s->x = TO_WORLD_POS_RAW(I(snowball->qWorldPos.x), snowball->unk4) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(snowball->qWorldPos.y), snowball->unk6) - gCamera.y;
    temp_r4 = UpdateSpriteAnimation((Sprite *)s);
    DisplaySprite((Sprite *)s);
    return temp_r4;
}

void TaskDestructor_YukigasenSnowball(Task *t)
{
    YukigasenSnowball *snowball = TASK_DATA(t);
    VramFree(snowball->s.tiles);
}
