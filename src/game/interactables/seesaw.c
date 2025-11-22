#include "global.h"
#include "core.h"
#include "game/camera.h"
#include "game/entity.h"

typedef struct Seesaw {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ SpriteTransform tf;
    /* 0x40 */ Sprite s2;
    /* 0x74 */ s16 unk68;
    /* 0x74 */ s16 unk6A;
    /* 0x6C */ s32 unk6C;
    /* 0x70 */ s32 unk70;
    /* 0x74 */ s16 unk74;
    /* 0x76 */ s16 unk76;
    /* 0x76 */ u8 unk78;
    /* 0x76 */ u8 unk79;
    /* 0x76 */ u8 unk7A;
    /* 0x76 */ u8 unk7B;
} Seesaw;

void CreateEntity_Seesaw(MapEntity *me, u16 regionX, u16 regionY, u8 id);
void sub_8037224(void);
void sub_803724C(void);
void sub_8037130(struct Task *t);
void sub_8036F0C(Sprite *s, Sprite *s2);

void CreateEntity_Seesaw(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    Seesaw *entity;
    Sprite *s2;
    Sprite *s;
#ifndef NON_MATCHING
    register SpriteTransform *tf asm("r5");
#else
    SpriteTransform *tf;
#endif
    struct Task *t;
    u32 temp_r0;
    u8 temp_r1_2;

    temp_r1_2 = (u8)me->d.sData[4];
    temp_r0 = (u32)((0 - temp_r1_2) | temp_r1_2) >> 0x1F;
    if (temp_r0 != 0) {
        t = TaskCreate(sub_8037224, 0x7CU, 0x2100U, 0U, sub_8037130);
    } else {
        t = TaskCreate(sub_803724C, 0x7CU, 0x2100U, 0U, sub_8037130);
    }
    entity = TASK_DATA(t);
    s = &entity->s;
    s2 = &entity->s2;
    tf = &entity->tf;
    entity->base.regionX = regionX;
    entity->base.regionY = regionY;
    entity->base.me = me;
    entity->base.meX = me->x;
    entity->base.id = id;
    entity->unk78 = 0;
    entity->unk79 = 0;

    if (temp_r0 != 0) {
        entity->unk68 = 0x54;
    } else {
        entity->unk68 = 0x3AC;
    }
    entity->unk74 = 0;
    entity->unk76 = 0;
    s->x = TO_WORLD_POS_RAW(me->x * TILE_WIDTH, regionX);
    s->y = TO_WORLD_POS_RAW(me->y * TILE_WIDTH, regionY);

    if (temp_r0 != 0) {
        entity->unk6C = Q(s->x + 24);
    } else {
        entity->unk6C = Q(s->x - 24);
    }

    entity->unk70 = Q(s->y + 5);
    s2->x = s->x;
    s2->y = s->y;
    tf->scaleX = Q(1);
    tf->scaleY = Q(1);
    tf->rotation = 0;
    SET_MAP_ENTITY_INITIALIZED(me);
    sub_8036F0C(s, s2);
}
