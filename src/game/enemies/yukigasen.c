#include "global.h"
#include "core.h"
#include "game/camera.h"
#include "game/enemy_unknown.h"
#include "game/stage.h"
#include "malloc_vram.h"
#include "module_unclear.h"

typedef struct Yukigasen {
    /* 0x00 */ u8 filler0[0x6];
    /* 0x08 */ u8 unk6;
    /* 0x08 */ u8 unk7;
    /* 0x08 */ s8 unk8;
    /* 0x0A */ u16 region[2];
    /* 0x0E */ u8 fillerE[0xA];
    /* 0x18 */ Vec2_32 qPos;
    /* 0x20 */ Sprite s;
    /* 0x48 */ u8 filler48[0x8];
} Yukigasen; /* 0x50 */

typedef struct YukigasYukigasenSnowballen {
    /* 0x00 */ s8 unk0;
    /* 0x01 */ s8 unk1;
    /* 0x02 */ s8 unk2;
    /* 0x03 */ s8 unk3;
    /* 0x04 */ u16 unk4;
    /* 0x06 */ u16 unk6;
    /* 0x08 */ s8 unk8;
    /* 0x0A */ s16 unkA;
    /* 0x0C */ s16 unkC;
    /* 0x0E */ u8 fillerE[0x2];
    /* 0x10 */ Vec2_32 qWorldPos;
    /* 0x18 */ Sprite s;
    /* 0x40 */ u8 filler40[0x28];
} YukigasenSnowball; /* 0x48 */

extern const TileInfo2 gUnknown_080D2024[4];
extern const TileInfo2 gUnknown_080D2034[4];

void sub_806098C(Yukigasen *enemy, u8 param1);
void Task_YukigasenMain(void);
void Task_8060AC8(void);
void sub_Snowball_8060B60(YukigasenSnowball *snowball);
bool32 sub_8060C68(YukigasenSnowball *snowball);
void sub_8060D0C(YukigasenSnowball *snowball);
bool32 sub_8061054(Yukigasen *enemy);
void Task_Snowball_8061170(void);
void sub_80611A0(YukigasenSnowball *snowball);
void CreateYukigasenSnowball(s32 arg0, s32 arg1, u16 arg2, u16 arg3, s32 arg4);
AnimCmdResult sub_8061010(Yukigasen *enemy);

void sub_806098C(Yukigasen *enemy, u8 param1)
{
    u8 *tiles = VramMalloc(0x10U);
    Sprite *s = &enemy->s;

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
    UpdateSpriteAnimation(s);
}

void Task_YukigasenMain(void)
{
    AnimCmdResult temp_r2;
    s8 dir;
    Yukigasen *enemy;
    void *temp_r4;
    Sprite *s;

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
    Sprite *s;

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

        if (enemy->unk7 >= enemy->unk6) {
            Sprite *s = &enemy->s;
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
    Sprite *s;

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
    UpdateSpriteAnimation(s);
}

void Task_SnowballMain()
{
    Sprite *s;
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
    Sprite *s;
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
        if ((res == 0) && (sub_8020700(s, worldX, worldY, 1, p, (s16)res) != 0)) {
            if (p->framesInvincible == 0) {
                sub_8020CE0(s, worldX, worldY, 1U, p);
            }
            return TRUE;
        }
    }

    return FALSE;
}

// (97.76%) https://decomp.me/scratch/4L8KH
NONMATCH("asm/non_matching/game/enemies/yukigasen__sub_8060D0C.inc", void sub_8060D0C(YukigasenSnowball *snowball))
{
    s16 temp_r1;
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
