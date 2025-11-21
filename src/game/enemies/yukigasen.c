#include "global.h"
#include "core.h"
#include "game/camera.h"
#include "game/enemy_unknown.h"
#include "game/stage.h"
#include "malloc_vram.h"

typedef struct Yukigasen {
    /* 0x00 */ u8 filler0[0x8];
    /* 0x08 */ s8 unk8;
    /* 0x0A */ u16 region[2];
    /* 0x0E */ u8 fillerE[0xA];
    /* 0x18 */ Vec2_32 qPos;
    /* 0x20 */ Sprite s;
    /* 0x00 */ u8 filler20[0x28];
} Yukigasen; /* 0x48 */

extern const TileInfo2 gUnknown_080D2024[4];

void sub_8060AC8(void);
bool32 sub_8061054(Yukigasen *enemy);
void sub_80610D0(s32 arg0, s32 arg1, u16 arg2, u16 arg3, s32 arg4);
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
            dir = 1;
        } else {
            dir = -1;
        }
        s->anim = (u16)gUnknown_080D2024[1].anim;
        s->variant = (u8)gUnknown_080D2024[1].variant;
        sub_80610D0(enemy->qPos.x, enemy->qPos.y - Q(24), enemy->region[0], enemy->region[1], dir);
        gCurTask->main = sub_8060AC8;
    }
}
