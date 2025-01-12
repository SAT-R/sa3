#include "global.h"
#include "sprite.h"
#include "task.h"
#include "trig.h"
#include "malloc_vram.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/enemy_unknown.h"
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
    /* 0x08 */ u8 unk8;
    /* 0x09 */ u8 unk9;
    /* 0x0A */ u8 direction;
    /* 0x0B */ u16 region[2];
    /* 0x0F */ u16 rotation;
    /* 0x12 */ u16 unk12;
    /* 0x14 */ s32 unk14;
    /* 0x18 */ s32 unk18;
    /* 0x1C */ Vec2_32 qUnk1C;
    /* 0x24 */ Vec2_32 qPos;
    /* 0x2C */ SpriteTransform transform;
    /* 0x38 */ Sprite s;
    /* 0x60 */ Hitbox reserved;
} Marun; /* size: 0x68 */

// extern const TileInfo2 gUnknown_080D210C[];

// void TaskDestructor_Marun(struct Task *t);
void sub_8063F08(struct Task *t);
// u32 sub_8063C98(void* base);
// bool32 sub_8063EDC(Marun *enemy, EnemyUnknownStruc0 *param1);
// void sub_8063858(void);
// s32 sub_8063E5C(Marun *enemy);

// static void Task_Marun0() {}
// void Task_MarunInit(void);
void sub_8063758(void);

//static void InitSprite(Marun *enemy) {}
void sub_8063FE0(Marun *enemy);

// https://decomp.me/scratch/x6Qwh
void CreateEntity_Marun(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(
        sub_8063758, // Task_MarunInit,
        sizeof(Marun),
        0x2100,
        0,
        sub_8063F08 // TaskDestructor_Marun
    );

    Marun *enemy = TASK_DATA(t);
    s32 qX, qY;

    enemy->unk4 = 0;
    enemy->id = id;
    enemy->me = me;
    enemy->spriteX = me->x;
    enemy->unk8 = 0;
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

    sub_8063FE0(enemy);

    SET_MAP_ENTITY_INITIALIZED(me);
}

// https://decomp.me/scratch/LwjhM
// bool32 sub_8063D38(void* param) {
//     EnemyUnknownStruc0 unk;
//     bool32 result;

//     if (*(u8*)(param + 8) != 1) {
//         // Subtract 0x10 from bytes at various offsets
//         *(u8*)(param + 0x5C) -= 0x10;
//         *(u8*)(param + 0x5D) -= 0x10;
//         *(u8*)(param + 0x5E) -= 0x10;
//         *(u8*)(param + 0x5F) -= 0x10;
//         *(u8*)(param + 0x64) -= 0x10;
//         *(u8*)(param + 0x65) -= 0x10;
//         *(u8*)(param + 0x66) -= 0x10;
//         *(u8*)(param + 0x67) -= 0x10;
//     }

//     if (*(u8*)(param + 8) == 1) {
//         // Set specific values at offsets
//         *(u8*)(param + 0x5C) = 0xFC;
//         *(u8*)(param + 0x5D) = 0xFC;
//         *(u8*)(param + 0x5E) = 4;
//         *(u8*)(param + 0x5F) = 4;
//     }

//     // Setup EnemyUnknownStruc0 fields
//     unk.unk4 = sub_8063EDC(param, &unk);
//     unk.spr = param + 0x38;
//     unk.posX = *(int*)(param + 0x1C);
//     unk.posY = *(int*)(param + 0x20);
//     unk.regionX = *(uint16_t*)(param + 0xC);
//     unk.regionY = *(uint16_t*)(param + 0xE);
//     unk.me = *(void**)(param);
//     *(u8*)((char*)&unk + 8) = *(u8*)(param + 7);

//     result = sub_805C280(&unk);

//     if (*(u8*)(param + 8) != 1) {
//         // Add 0x10 to bytes at various offsets
//         *(u8*)(param + 0x5C) += 0x10;
//         *(u8*)(param + 0x5D) += 0x10;
//         *(u8*)(param + 0x5E) += 0x10;
//         *(u8*)(param + 0x5F) += 0x10;
//         *(u8*)(param + 0x64) += 0x10;
//         *(u8*)(param + 0x65) += 0x10;
//         *(u8*)(param + 0x66) += 0x10;
//         *(u8*)(param + 0x67) += 0x10;
//     }

//     if (*(u8*)(param + 8) == 1) {
//         // Zero out bytes at offsets
//         *(u8*)(param + 0x5C) = 0;
//         *(u8*)(param + 0x5D) = 0;
//         *(u8*)(param + 0x5E) = 0;
//         *(u8*)(param + 0x5F) = 0;
//     }

//     return result;
// }

// // https://decomp.me/scratch/ednnh
// void Task_MarunInit(void) { // sub_8063758
//     Marun *enemy = TASK_DATA(gCurTask);

//     sub_805CD70(&enemy->qPos, &enemy->qUnk1C, enemy->region, &enemy->unk9);

//     if ((gStageData.unk4 != 1) && (gStageData.unk4 != 2) && (gStageData.unk4 != 4)) {
//         u32 result = sub_8063C98(enemy);
        
//         if ((result == 1) && ((enemy->unk4 == 0) && (enemy->unk5 == 0))) {
//             // u8 temp = 0;
//             Sprite *sprite;
//             sprite = &enemy->s;
            
//             sprite->anim = gUnknown_080D210C[1].anim;
//             sprite->variant = gUnknown_080D210C[1].variant;
//             sprite->prevVariant = 0xFF;
            
//             // Clear two sections of memory using CpuSet
//             CpuFill16(0, &enemy->reserved.b, sizeof(Rect8));
//             CpuFill16(0, &enemy->s.hitboxes[0].b, sizeof(Rect8));
            
//             UpdateSpriteAnimation(sprite);
            
//             enemy->unk8 = result;
//             gCurTask->main = sub_8063858;
//             return;
//         }
//     }

//     if (sub_8063D38(enemy) == TRUE) {
//         TaskDestroy(gCurTask);
//         return;
//     }

//     sub_8063E5C(enemy);
// }

// // https://decomp.me/scratch/GCw5n
// bool32 sub_8063EDC(Marun *enemy, EnemyUnknownStruc0 *param1)
// {
//     Sprite *s;

//     param1->me = NULL;
//     param1->spriteX = 0;
//     param1->unk4 = 0;

//     s = &enemy->s;
//     param1->spr = s;
//     param1->posX = enemy->qPos.x;
//     param1->posY = enemy->qPos.y;
//     param1->regionX = enemy->region[0];
//     param1->regionY = enemy->region[1];

//     return sub_805C63C(param1);
// }

// // https://decomp.me/scratch/2VR0x
// s32 sub_8063E5C(Marun *enemy) {
//     s32 result;
//     Sprite *s = &enemy->s;
//     SpriteTransform *transform = &enemy->transform;
//     s32 screenX, screenY;

//     // Calculate screen coordinates relative to camera
//     screenX = I(enemy->qPos.x) + (enemy->region[0] * CAM_REGION_WIDTH);
//     s->x = screenX - gCamera.x;

//     screenY = I(enemy->qPos.y) + (enemy->region[1] * CAM_REGION_WIDTH);
//     s->y = screenY - gCamera.y;

//     // Special y-position adjustment based on sprite state
//     if (s->anim == gUnknown_080D210C[2].anim && 
//         s->variant == gUnknown_080D210C[2].variant) {
//         s->y -= 0xB;  // Subtract 11 pixels
//     } else {
//         s->y += 6;    // Add 6 pixels
//     }

//     // Update transform data
//     transform->rotation = enemy->rotation;
//     transform->x = s->x;
//     transform->y = s->y;

//     // Apply transformations and update sprite
//     TransformSprite(s, transform);
//     result = UpdateSpriteAnimation(s);
//     DisplaySprite(s);

//     return result;
// }

// // https://decomp.me/scratch/laLdi
// void TaskDestructor_Marun(struct Task *t) { // sub_8063F08
//     Marun *enemy = TASK_DATA(t);
//     VramFree(enemy->s.tiles);
// }
