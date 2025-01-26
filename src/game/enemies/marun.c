#include "global.h"
#include "sprite.h"
#include "task.h"
#include "trig.h"
#include "malloc_vram.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/enemy_unknown.h"
#include "module_unclear.h"
#include "game/player.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"

typedef struct {
    /* 0x00 */ MapEntity *me;
    /* 0x04 */ u8 unk4;
    /* 0x05 */ u8 unk5;
    /* 0x06 */ u8 id;
    /* 0x07 */ u8 spriteX;
    /* 0x08 */ bool8 unk8;
    /* 0x09 */ u8 unk9;
    /* 0x0A */ s8 direction;
    /* 0x0C */ u16 region[2];
    /* 0x10 */ u16 rotation;
    /* 0x12 */ u16 unk12;
    /* 0x14 */ s32 speed;
    /* 0x18 */ s32 unk18;
    /* 0x1C */ Vec2_32 qUnk1C;
    /* 0x24 */ Vec2_32 qPos;
    /* 0x2C */ SpriteTransform transform;
    /* 0x38 */ Sprite s;
    /* 0x60 */ Hitbox reserved;
} Marun; /* size: 0x68 */

extern const TileInfo2 gUnknown_080D210C[];

void InitSprite(Marun *enemy);
bool32 sub_8063C98(Marun *enemy);
bool32 sub_8063EDC(Marun *enemy, EnemyUnknownStruc0 *unk);
void Task_8063858(void);
bool32 sub_8063D38(Marun* enemy);
s32 sub_8063E5C(Marun *enemy);
void sub_8063BB8(Marun* enemy);
void Task_806394C(void);
void Task_8063ADC(void);
void TaskDestructor_Marun(struct Task *t);
void Task_MarunInit(void);

void CreateEntity_Marun(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_MarunInit, sizeof(Marun), 0x2100, 0, TaskDestructor_Marun);

    Marun *enemy = TASK_DATA(t);
    s32 qX, qY;

    enemy->unk4 = 0;
    enemy->id = id;
    enemy->me = me;
    enemy->spriteX = me->x;
    enemy->unk8 = FALSE;
    enemy->region[0] = regionX;
    enemy->region[1] = regionY;

    qX = Q(me->x * TILE_WIDTH);
    enemy->qPos.x = qX;
    qY = Q(me->y * TILE_WIDTH);
    enemy->qPos.y = qY;

    enemy->qUnk1C.x = qX;
    enemy->qUnk1C.y = qY;

    enemy->rotation = 0;
    enemy->unk9 = 0;
    enemy->speed = 0x80 << 2;
    enemy->unk18 = 0;
    enemy->unk12 = 0;
    enemy->unk5 = 0;

    if (me->d.uData[4] & 0x8) {
        enemy->direction = -1;
    } else {
        enemy->direction = +1;
    }

    CpuFill16(0, &enemy->reserved.b.left, sizeof(enemy->reserved.b));

    InitSprite(enemy);

    SET_MAP_ENTITY_INITIALIZED(me);
}

void InitSprite(Marun *enemy) {
    void *tiles = VramMalloc(0x11);
    Sprite *s = &enemy->s;
    SpriteTransform *transform = &enemy->transform;

    s->tiles = tiles;
    s->anim = gUnknown_080D210C[0].anim;
    s->variant = gUnknown_080D210C[0].variant;
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

    enemy->transform.rotation = 0;
    transform->x = s->x;
    transform->y = s->y;
    transform->scaleX = 0x100;
    transform->scaleY = 0x100;

    TransformSprite(s, transform);
    UpdateSpriteAnimation(s);
}

void Task_MarunInit(void) {
    Marun *enemy = TASK_DATA(gCurTask);

    sub_805CD70(&enemy->qPos, &enemy->qUnk1C, enemy->region, &enemy->unk9);

    if ((gStageData.unk4 != 1) && (gStageData.unk4 != 2) && (gStageData.unk4 != 4)) {
        bool32 result = sub_8063C98(enemy);

        if ((result == 1) && ((enemy->unk4 == 0) && (enemy->unk5 == 0))) {
            Sprite *sprite;
            sprite = &enemy->s;

            sprite->anim = gUnknown_080D210C[1].anim;
            sprite->variant = gUnknown_080D210C[1].variant;
            sprite->prevVariant = 0xFF;

            CpuFill16(0, &enemy->reserved.b, sizeof(Rect8));
            CpuFill16(0, &enemy->s.hitboxes[0].b, sizeof(Rect8));

            UpdateSpriteAnimation(sprite);

            enemy->unk8 = result;
            gCurTask->main = Task_8063858;
            return;
        }
    }

    if (sub_8063D38(enemy) == TRUE) {
        TaskDestroy(gCurTask);
        return;
    }

    sub_8063E5C(enemy);
}

void Task_8063858(void) {
    Marun* enemy = TASK_DATA(gCurTask);

    sub_805CD70(&enemy->qPos, &enemy->qUnk1C, enemy->region, &enemy->unk9);

    if (gStageData.unk4 != 1 && gStageData.unk4 != 2 && gStageData.unk4 != 4 && sub_8063E5C(enemy) == 0) {
        Sprite* sprite = &enemy->s;
        sprite->anim = gUnknown_080D210C[2].anim;
        sprite->variant = gUnknown_080D210C[2].variant;
        sprite->prevVariant = 0xFF;
        sprite->frameFlags |= 0x6A;

        enemy->qPos.x += 0xFFFFF000;

        CpuFill16(0, &enemy->reserved.b, sizeof(Rect8));
        CpuFill16(0, &enemy->s.hitboxes[0].b, sizeof(Rect8));

        UpdateSpriteAnimation(sprite);

        gCurTask->main = Task_806394C;
    } else if (sub_8063D38(enemy) == TRUE) {
        TaskDestroy(gCurTask);
    }
}

void Task_806394C(void) {
    Marun* enemy = TASK_DATA(gCurTask);
    s8 res = 0;
    s32 x, y;
    s32 r1;
    s32 r0;

    sub_8063BB8(enemy);

    x = (enemy->qPos.x >> 8);
    y = (enemy->qPos.y >> 8);

    x += (enemy->region[0] << 8);
    y += (enemy->region[1] << 8);

    if (enemy->direction > 0) {
        res = sub_8052394(x, y - 8, 1, -8, 0, sub_805203C);

        if (res < 0) {
            enemy->qPos.x -= (res << 8);
            enemy->qPos.x += 0x800;

            enemy->unk4 = 1;
            enemy->speed = 0;
        }

    } else {
        res = sub_8052394(x + 8, y - 8, 1, 8, 0, sub_805203C);

        if (res < 0) {
            enemy->qPos.x += (res << 8);
            enemy->qPos.x -= 0x800;

            enemy->unk4 = 1;
            enemy->speed = 0;
        }
    }

    if ((gStageData.unk4 != 1 && gStageData.unk4 != 2 && gStageData.unk4 != 4) &&
        (r0 = ++enemy->unk12, r0 <<= 16, r0 > (r1 = 0x1680000) || res < 0)) {
        Sprite* s = &enemy->s;

        s->anim = gUnknown_080D210C[3].anim;
        s->variant = gUnknown_080D210C[3].variant;
        s->prevVariant = 0xFF;

        CpuFill16(0, &enemy->reserved.b, sizeof(Rect8));
        CpuFill16(0, &enemy->s.hitboxes[0].b, sizeof(Rect8));

        s->frameFlags = 0x1000;

        if (enemy->direction < 0) {
            s->frameFlags |= 0x400;
        }

        if (enemy->direction > 0) {
            enemy->qPos.x += 0x1300;
        } else {
            enemy->qPos.x += 0xD00;
        }

        UpdateSpriteAnimation(s);

        enemy->rotation = 0;
        enemy->unk12 = 0;
        enemy->speed = 0x200;
        enemy->unk18 = 0;
        enemy->unk8 = FALSE;
        enemy->unk5 = 1;

        gCurTask->main = Task_8063ADC;

    } else {
        if (sub_8063D38(enemy) == TRUE) {
            TaskDestroy(gCurTask);
        } else {
            sub_8063E5C(enemy);
        }
    }
}

void Task_8063ADC(void)
{
    Marun *enemy = TASK_DATA(gCurTask);

    if (enemy->unk4 == 0) {
        sub_805CD70(&enemy->qPos, &enemy->qUnk1C, enemy->region, &enemy->unk9);
    }

    if (sub_8063E5C(enemy) == 0) {
        Sprite *s = &enemy->s;

        s->anim = gUnknown_080D210C[0].anim;
        s->variant = gUnknown_080D210C[0].variant;
        s->prevVariant = 0xFF;

        CpuFill16(0, &enemy->reserved.b, sizeof(Rect8));
        CpuFill16(0, &enemy->s.hitboxes[0].b, sizeof(Rect8));

        UpdateSpriteAnimation(s);

        enemy->rotation = 0;
        enemy->unk12 = 0;
        enemy->speed = 0x200;
        enemy->unk18 = 0;

        gCurTask->main = Task_MarunInit;
    } else if (sub_8063D38(enemy) == TRUE) {
        TaskDestroy(gCurTask);
    }
}

void sub_8063BB8(Marun* enemy) {
    s32 screenX;
    s32 screenY;
    s8 res;

    if (enemy->direction < 0) {
        enemy->qPos.x += 0x100 + enemy->speed;
        enemy->rotation += 0x10;
    } else {
        enemy->qPos.x -= 0x100 + enemy->speed;
        enemy->rotation -= 0x10;
    }

    screenX = (enemy->qPos.x >> 8);
    screenY = (enemy->qPos.y >> 8);

    screenX += (enemy->region[0] << 8);
    screenY += (enemy->region[1] << 8);

    if ((res = sub_8052394(screenY, screenX, 1, 8, NULL, sub_805217C) <= 0 ? 0 : 1)) {
        enemy->qPos.y += res << 8;

        screenX = (enemy->qPos.x >> 8);
        screenY = (enemy->qPos.y >> 8);

        screenX += (enemy->region[0] << 8);
        screenY += (enemy->region[1] << 8);

        if (sub_8052394(screenY, screenX, 1, 8, NULL, sub_805217C) > 0) {
            enemy->qPos.y += enemy->unk18;
            enemy->unk18 += 0x20;
        }
    } else {
        enemy->unk18 = 0;
        sub_805CD70(&enemy->qPos, &enemy->qUnk1C, enemy->region, &enemy->unk9);
    }

    if (enemy->speed > 0) {
        enemy->speed -= 4;
    } else {
        enemy->speed = 0;
    }
}

bool32 sub_8063C98(Marun *enemy) {
    Sprite *s = &enemy->s;
    s32 worldX;
    s32 worldY;
    u8 i;

    worldX = I(enemy->qPos.x);
    worldY = I(enemy->qPos.y);
    worldX = (TO_WORLD_POS_RAW(worldX, enemy->region[0]));
    worldY = (TO_WORLD_POS_RAW(worldY, enemy->region[1]));

    for (i = 0; ; i++) {
        Player *p;
        s32 dx, y;

        if (i > 1) break;
        p = sub_805CD20(i);
        if (!p) break;

        if (s->frameFlags & SPRITE_FLAG_MASK_X_FLIP) {
            dx = I(p->qWorldX) - worldX - 1;
            if ((u32)dx > 0x4E) goto x_flip_cleanup;

            y = I(p->qWorldY);
            if (y < worldY + 0x50 && y > worldY - 0x10) {
                return TRUE;
            }

            x_flip_cleanup:
            if (s->frameFlags & SPRITE_FLAG_MASK_X_FLIP) {
                continue;
            }
        }

        dx = worldX - I(p->qWorldX) - 1;
        if ((u32)dx > 0x4E) continue;

        if (I(p->qWorldY) >= worldY + 0x50) continue;
        if (I(p->qWorldY) <= worldY - 0x10) continue;

        return TRUE;
    }

    return FALSE;
}

bool32 sub_8063D38(Marun* enemy) {
    EnemyUnknownStruc0 unk;
    bool32 result;

    if (enemy->unk8 != TRUE) {
        enemy->s.hitboxes[0].b.left -= 0x10;
        enemy->s.hitboxes[0].b.top -= 0x10;
        enemy->s.hitboxes[0].b.right -= 0x10;
        enemy->s.hitboxes[0].b.bottom -= 0x10;

        enemy->reserved.b.left -= 0x10;
        enemy->reserved.b.top -= 0x10;
        enemy->reserved.b.right -= 0x10;
        enemy->reserved.b.bottom -= 0x10;
    }

    if (enemy->unk8 == TRUE) {
        enemy->s.hitboxes[0].b.left = 0xFC;
        enemy->s.hitboxes[0].b.top = 0xFC;
        enemy->s.hitboxes[0].b.right = 4;
        enemy->s.hitboxes[0].b.bottom = 4;
    }

    unk.unk4 = sub_8063EDC(enemy, &unk);
    unk.spr = &enemy->s;
    unk.posX = enemy->qUnk1C.x;
    unk.posY = enemy->qUnk1C.y;
    unk.regionX = enemy->region[0];
    unk.regionY = enemy->region[1];
    unk.me = enemy->me;
    *(u8*)((char*)&unk + 8) = enemy->spriteX;

    result = sub_805C280(&unk);

    if (enemy->unk8 != TRUE) {
        enemy->s.hitboxes[0].b.left += 0x10;
        enemy->s.hitboxes[0].b.top += 0x10;
        enemy->s.hitboxes[0].b.right += 0x10;
        enemy->s.hitboxes[0].b.bottom += 0x10;

        enemy->reserved.b.left += 0x10;
        enemy->reserved.b.top += 0x10;
        enemy->reserved.b.right += 0x10;
        enemy->reserved.b.bottom += 0x10;
    }

    if (enemy->unk8 == TRUE) {
        enemy->s.hitboxes[0].b.left = 0;
        enemy->s.hitboxes[0].b.top = 0;
        enemy->s.hitboxes[0].b.right = 0;
        enemy->s.hitboxes[0].b.bottom = 0;
    }

    return result;
}

s32 sub_8063E5C(Marun *enemy) {
    s32 result;
    Sprite *s = &enemy->s;
    SpriteTransform *transform = &enemy->transform;
    s32 screenX, screenY;

    screenX = I(enemy->qPos.x) + (enemy->region[0] * CAM_REGION_WIDTH);
    s->x = screenX - gCamera.x;

    screenY = I(enemy->qPos.y) + (enemy->region[1] * CAM_REGION_WIDTH);
    s->y = screenY - gCamera.y;

    if (s->anim == gUnknown_080D210C[2].anim &&
        s->variant == gUnknown_080D210C[2].variant) {
        s->y -= 0xB;
    } else {
        s->y += 6;
    }

    transform->rotation = enemy->rotation;
    transform->x = s->x;
    transform->y = s->y;

    TransformSprite(s, transform);
    result = UpdateSpriteAnimation(s);
    DisplaySprite(s);

    return result;
}

bool32 sub_8063EDC(Marun *enemy, EnemyUnknownStruc0 *unk)
{
    Sprite *s;

    unk->me = NULL;
    unk->spriteX = 0;
    unk->unk4 = 0;

    s = &enemy->s;
    unk->spr = s;
    unk->posX = enemy->qPos.x;
    unk->posY = enemy->qPos.y;
    unk->regionX = enemy->region[0];
    unk->regionY = enemy->region[1];

    return sub_805C63C(unk);
}

void TaskDestructor_Marun(struct Task *t) {
    Marun *enemy = TASK_DATA(t);
    VramFree(enemy->s.tiles);
}
