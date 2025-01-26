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
    /* 0x14 */ s32 unk14;
    /* 0x18 */ s32 unk18;
    /* 0x1C */ Vec2_32 qUnk1C;
    /* 0x24 */ Vec2_32 qPos;
    /* 0x2C */ SpriteTransform transform;
    /* 0x38 */ Sprite s;
    /* 0x60 */ Hitbox reserved;
} Marun; /* size: 0x68 */

extern const TileInfo2 gUnknown_080D210C[];

void TaskDestructor_Marun(struct Task *t);
bool32 sub_8063C98(Marun *enemy);
bool32 sub_8063EDC(Marun *enemy, EnemyUnknownStruc0 *param1);
void sub_8063858(void);
bool32 sub_8063D38(Marun* enemy);
s32 sub_8063E5C(Marun *enemy);
void sub_8063BB8(Marun* enemy);
void sub_806394C(void);
void sub_8063ADC(void);

// static void Task_Marun0() {}
void Task_MarunInit(void);

// static void InitSprite(Marun *enemy) {}
void sub_80636B4(Marun *enemy);

// https://decomp.me/scratch/x6Qwh
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
    enemy->unk14 = 0x80 << 2;
    enemy->unk18 = 0;
    enemy->unk12 = 0;
    enemy->unk5 = 0;

    if (me->d.uData[4] & 0x8) {
        enemy->direction = -1;
    } else {
        enemy->direction = +1;
    }

    CpuFill16(0, &enemy->reserved.b.left, sizeof(enemy->reserved.b));

    sub_80636B4(enemy);

    SET_MAP_ENTITY_INITIALIZED(me);
}

// https://decomp.me/scratch/WTG0g
void sub_80636B4(Marun *enemy) {
    void *tiles = VramMalloc(0x11);
    Sprite *s = &enemy->s;
    SpriteTransform *transform = &enemy->transform;

    // Initialize sprite
    s->tiles = tiles;
    s->anim = gUnknown_080D210C[0].anim;
    s->variant = gUnknown_080D210C[0].variant;
    s->prevVariant = -1;

    // Set sprite position relative to camera
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;

    // Set sprite properties
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);

    // Handle sprite flipping based on direction
    if (enemy->direction < 0) {
        s->frameFlags |= SPRITE_FLAG_MASK_X_FLIP;
    }

    // Initialize hitbox
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;

    // Initialize transform
    enemy->transform.rotation = 0;
    transform->x = s->x;
    transform->y = s->y;
    transform->scaleX = 0x100;
    transform->scaleY = 0x100;

    // Apply transform and update animation
    TransformSprite(s, transform);
    UpdateSpriteAnimation(s);
}

// https://decomp.me/scratch/ednnh
void Task_MarunInit(void) { // sub_8063758
    Marun *enemy = TASK_DATA(gCurTask);

    sub_805CD70(&enemy->qPos, &enemy->qUnk1C, enemy->region, &enemy->unk9);

    if ((gStageData.unk4 != 1) && (gStageData.unk4 != 2) && (gStageData.unk4 != 4)) {
        bool32 result = sub_8063C98(enemy);

        if ((result == 1) && ((enemy->unk4 == 0) && (enemy->unk5 == 0))) {
            // u8 temp = 0;
            Sprite *sprite;
            sprite = &enemy->s;

            sprite->anim = gUnknown_080D210C[1].anim;
            sprite->variant = gUnknown_080D210C[1].variant;
            sprite->prevVariant = 0xFF;

            // Clear two sections of memory using CpuSet
            CpuFill16(0, &enemy->reserved.b, sizeof(Rect8));
            CpuFill16(0, &enemy->s.hitboxes[0].b, sizeof(Rect8));

            UpdateSpriteAnimation(sprite);

            enemy->unk8 = result;
            gCurTask->main = sub_8063858;
            return;
        }
    }

    if (sub_8063D38(enemy) == TRUE) {
        TaskDestroy(gCurTask);
        return;
    }

    sub_8063E5C(enemy);
}

// https://decomp.me/scratch/nASKV
void sub_8063858(void) {
    Marun* enemy = TASK_DATA(gCurTask);

    sub_805CD70(&enemy->qPos, &enemy->qUnk1C, enemy->region, &enemy->unk9);

    if (gStageData.unk4 != 1 && gStageData.unk4 != 2 && gStageData.unk4 != 4 && sub_8063E5C(enemy) == 0) {
        // Update sprite properties
        Sprite* sprite = &enemy->s;
        sprite->anim = gUnknown_080D210C[2].anim;
        sprite->variant = gUnknown_080D210C[2].variant;
        sprite->prevVariant = 0xFF;
        sprite->frameFlags |= 0x6A;

        // Update position
        enemy->qPos.x += 0xFFFFF000;

        // Clear some memory regions using CpuSet
        CpuFill16(0, &enemy->reserved.b, sizeof(Rect8));
        CpuFill16(0, &enemy->s.hitboxes[0].b, sizeof(Rect8));

        UpdateSpriteAnimation(sprite);

        // Update task callback
        gCurTask->main = sub_806394C;
    } else if (sub_8063D38(enemy) == TRUE) {
        TaskDestroy(gCurTask);
    }
}

// https://decomp.me/scratch/m3tax
void sub_806394C(void) {
    Marun* enemy = TASK_DATA(gCurTask);
    s8 collisionResult = 0;
    s32 x, y;
    s32 r1;
    s32 r0;

    sub_8063BB8(enemy);

    x = (enemy->qPos.x >> 8);
    y = (enemy->qPos.y >> 8);

    x += (enemy->region[0] << 8);
    y += (enemy->region[1] << 8);

    if (enemy->direction > 0) {
        collisionResult = sub_8052394(x, y - 8, 1, -8, 0, sub_805203C);

        if (collisionResult < 0) {
            enemy->qPos.x -= (collisionResult << 8);
            enemy->qPos.x += 0x800;

            enemy->unk4 = 1;
            enemy->unk14 = 0;
        }

    } else {
        collisionResult = sub_8052394(x + 8, y - 8, 1, 8, 0, sub_805203C);

        if (collisionResult < 0) {
            enemy->qPos.x += (collisionResult << 8);
            enemy->qPos.x -= 0x800;

            enemy->unk4 = 1;
            enemy->unk14 = 0;
        }
    }

    if ((gStageData.unk4 != 1 && gStageData.unk4 != 2 && gStageData.unk4 != 4) &&
        (r0 = ++enemy->unk12, r0 <<= 16, r0 > (r1 = 0x1680000) || collisionResult < 0)) {
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
        enemy->unk14 = 0x200;
        enemy->unk18 = 0;
        enemy->unk8 = FALSE;
        enemy->unk5 = 1;

        gCurTask->main = sub_8063ADC;

    } else {
        if (sub_8063D38(enemy) == 1) {
            TaskDestroy(gCurTask);
        } else {
            sub_8063E5C(enemy);
        }
    }
}

// https://decomp.me/scratch/f7cNh
void sub_8063ADC(void)
{
    Marun *enemy = TASK_DATA(gCurTask);

    if (enemy->unk4 == 0) {
        sub_805CD70(&enemy->qPos, &enemy->qUnk1C, enemy->region, &enemy->unk9);
    }

    if (sub_8063E5C(enemy) == 0) {
        Sprite *s = &enemy->s;

        // Set up animation from predefined data
        s->anim = gUnknown_080D210C[0].anim;
        s->variant = gUnknown_080D210C[0].variant;
        s->prevVariant = 0xFF; // Reset previous variant

        // Clear hitbox and reserved memory regions
        CpuFill16(0, &enemy->reserved.b, sizeof(Rect8));
        CpuFill16(0, &enemy->s.hitboxes[0].b, sizeof(Rect8));

        UpdateSpriteAnimation(s); // Refresh sprite state

        // Reset movement/counter properties
        enemy->rotation = 0;
        enemy->unk12 = 0;
        enemy->unk14 = 0x200; // Initial speed value
        enemy->unk18 = 0;

        // Transition to main behavior task
        gCurTask->main = Task_MarunInit;
    } else {
        if (sub_8063D38(enemy) == 1) {
            TaskDestroy(gCurTask); // Cleanup if condition met
        }
    }
}

// https://decomp.me/scratch/FXBMR
void sub_8063BB8(Marun* enemy) {
    s32 screenX;
    s32 screenY;
    s8 collisionResult;

    if (enemy->direction < 0) {
        enemy->qPos.x += 0x100 + enemy->unk14;
        enemy->rotation += 0x10;
    } else {
        enemy->qPos.x -= 0x100 + enemy->unk14;
        enemy->rotation -= 0x10;
    }

    screenX = (enemy->qPos.x >> 8);
    screenY = (enemy->qPos.y >> 8);

    screenX += (enemy->region[0] << 8);
    screenY += (enemy->region[1] << 8);

    if ((collisionResult = sub_8052394(screenY, screenX, 1, 8, NULL, sub_805217C) <= 0 ? 0 : 1)) {
        enemy->qPos.y += collisionResult << 8;

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

    if (enemy->unk14 > 0) {
        enemy->unk14 -= 4;
    } else {
        enemy->unk14 = 0;
    }
}

// https://decomp.me/scratch/cMlw3
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

        if (i > 1) break; // Loop runs for i=0 and i=1
        p = sub_805CD20(i);
        if (!p) break;

        // X-FLIP case (original check)
        if (s->frameFlags & SPRITE_FLAG_MASK_X_FLIP) {
            /* --- X-FLIP CASE --- */
            dx = I(p->qWorldX) - worldX - 1;
            if ((u32)dx > 0x4E) goto x_flip_cleanup; // Unsigned comparison

            y = I(p->qWorldY);
            if (y < worldY + 0x50 && y > worldY - 0x10) {
                return TRUE; // Player in valid area
            }

            x_flip_cleanup:
            // Assembly lines 50-5A: Re-check original X-FLIP state
            if (s->frameFlags & SPRITE_FLAG_MASK_X_FLIP) {
                continue; // Skip non-X-flip checks
            }
        }

        /* --- NON X-FLIP CASE --- */
        dx = worldX - I(p->qWorldX) - 1;
        if ((u32)dx > 0x4E) continue; // Unsigned comparison

        if (I(p->qWorldY) >= worldY + 0x50) continue;
        if (I(p->qWorldY) <= worldY - 0x10) continue;

        return TRUE; // Player in valid area
    }

    return FALSE;
}

// https://decomp.me/scratch/LwjhM
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

// https://decomp.me/scratch/2VR0x
s32 sub_8063E5C(Marun *enemy) {
    s32 result;
    Sprite *s = &enemy->s;
    SpriteTransform *transform = &enemy->transform;
    s32 screenX, screenY;

    // Calculate screen coordinates relative to camera
    screenX = I(enemy->qPos.x) + (enemy->region[0] * CAM_REGION_WIDTH);
    s->x = screenX - gCamera.x;

    screenY = I(enemy->qPos.y) + (enemy->region[1] * CAM_REGION_WIDTH);
    s->y = screenY - gCamera.y;

    // Special y-position adjustment based on sprite state
    if (s->anim == gUnknown_080D210C[2].anim &&
        s->variant == gUnknown_080D210C[2].variant) {
        s->y -= 0xB;  // Subtract 11 pixels
    } else {
        s->y += 6;    // Add 6 pixels
    }

    // Update transform data
    transform->rotation = enemy->rotation;
    transform->x = s->x;
    transform->y = s->y;

    // Apply transformations and update sprite
    TransformSprite(s, transform);
    result = UpdateSpriteAnimation(s);
    DisplaySprite(s);

    return result;
}

// https://decomp.me/scratch/GCw5n
bool32 sub_8063EDC(Marun *enemy, EnemyUnknownStruc0 *param1)
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

// https://decomp.me/scratch/laLdi
void TaskDestructor_Marun(struct Task *t) { // sub_8063F08
    Marun *enemy = TASK_DATA(t);
    VramFree(enemy->s.tiles);
}
