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
    /* 0x07 */ s8 unk7;
    /* 0x08 */ u8 unk8;
    /* 0x09 */ s8 direction;
    /* 0x0A */ u16 region[2];
    /* 0x0E */ u16 unkE;
    /* 0x10 */ u16 unk10;
    /* 0x14 */ Vec2_32 qUnk14;
    /* 0x1C */ Vec2_32 qPos;
    /* 0x24 */ s32 unk1C;
    /* 0x20 */ s32 unk20;
    /* 0x24 */ Sprite s;
    /* 0x4C */ u8 filler4C[0x4];
    /* 0x50 */ u16 unk50[2]; // TODO: type
} Aotento; /* size: 0x54 */

void Task_Aotento(void);
void sub_8058630(Aotento *);
void Task_805878C(void);
void sub_805B738(Aotento *);
void sub_8058B50(Aotento *);
void Task_805892C(void);
bool32 sub_8058A00(Aotento *);
bool32 sub_8058BE0(Aotento *);
AnimCmdResult sub_8058C1C(Aotento *);
bool32 sub_805B7C0(Aotento *);
void TaskDestructor_Aotento(struct Task *t);


extern TileInfo2 gUnknown_080D1E30[4];

void CreateEntity_Aotento(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_Aotento, sizeof(Aotento), 0x2100, 0, TaskDestructor_Aotento);
    Aotento *enemy = TASK_DATA(t);
    s32 qX, qY;

    enemy->unkE = 0;
    enemy->unk10 = 0;
    enemy->unk6 = 0;

    enemy->me = me;
    enemy->spriteX = me->x;
    enemy->id = id;
    enemy->region[0] = regionX;
    enemy->region[1] = regionY;

    qX = Q(me->x * TILE_WIDTH);
    enemy->qPos.x = qX;
    qY = Q(me->y * TILE_WIDTH);
    enemy->qPos.y = qY;

    enemy->qUnk14.x = qX;
    enemy->qUnk14.y = qY;
    enemy->unkE = 90;
    enemy->unk1C = qX + Q(me->d.sData[0] * TILE_WIDTH);
    enemy->unk20 = enemy->unk1C + Q(me->d.uData[2] * TILE_WIDTH);
    enemy->unk8 = 0;

    if (me->d.uData[4] & 0x8) {
        enemy->direction = -1;
    } else {
        enemy->direction = +1;
    }

    CpuFill16(0, &enemy->unk50, sizeof(enemy->unk50));

    sub_8058630(enemy);

    SET_MAP_ENTITY_INITIALIZED(me);
}

void sub_8058630(Aotento *enemy)
{
    void *tiles = ALLOC_TILES(ANIM_AOTENTO);
    Sprite *s = &enemy->s;
    s->tiles = tiles;

    s->anim = gUnknown_080D1E30[0].anim;
    s->variant = gUnknown_080D1E30[0].variant;
    s->prevVariant = -1;
    s->x = TO_WORLD_POS_RAW(I(enemy->qPos.x), enemy->region[0]) - gCamera.x;
    s->y = TO_WORLD_POS_RAW(I(enemy->qPos.y), enemy->region[1]) - gCamera.y;
    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;

    if (enemy->direction < 0) {
        s->frameFlags |= SPRITE_FLAG_MASK_X_FLIP;
    }


    UpdateSpriteAnimation(s);
}

void Task_Aotento(void)
{
    Aotento *enemy = TASK_DATA(gCurTask);

    sub_805CD70(&enemy->qPos, &enemy->qUnk14, enemy->region, &enemy->unk8);

    if ((gStageData.unk4 != 1) && (gStageData.unk4 != 2) && (gStageData.unk4 != 4)) {
        sub_8058B50(enemy);
    }

    if ((sub_8058BE0(enemy) == TRUE)) {
        TaskDestroy(gCurTask);
        return;
    }
    
    sub_8058C1C(enemy);

    if ((enemy->qPos.x <= enemy->unk1C) || (enemy->qPos.x >= enemy->unk20)) {
        Sprite *s = &enemy->s;

        s->anim = gUnknown_080D1E30[1].anim;
        s->variant = gUnknown_080D1E30[1].variant;

        gCurTask->main = Task_805892C;
    } else if((sub_8058A00(enemy) == TRUE) && (enemy->unk6 == 0)){
        Sprite *s = &enemy->s;
        
        s->anim = gUnknown_080D1E30[2].anim;
        s->variant = gUnknown_080D1E30[2].variant;
        
        enemy->unkE = 90;

        gCurTask->main = Task_805878C;        
    }
}
