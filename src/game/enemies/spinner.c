#include "global.h"
#include "malloc_vram.h"
#include "sprite.h"
#include "task.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/enemy_unknown.h"

#include "constants/anim_sizes.h"
#include "constants/animations.h"

typedef struct {
    // TODO: This resembles struct SpriteBase,
    //       but it is not the same (id / spriteX).
    //       SpriteBase gets used by IA 060 with the SA1/SA2 layout,
    //       so it might be specifically for enemies?
    /* 0x00 */ MapEntity *me;
    /* 0x04 */ u8 id;
    /* 0x05 */ u8 spriteX;
    /* 0x06 */ u16 regionX;
    /* 0x08 */ u16 regionY;

    /* 0x0C */ s32 unkX;
    /* 0x10 */ s32 unkY;
    /* 0x14 */ s32 posX;
    /* 0x18 */ s32 posY;
    /* 0x1C */ Sprite s;
    /* 0x44 */ Hitbox reserved;
} Spinner; /* size: 0x4C */

void Task_SpinnerMain(void);
bool32 sub_8058DF4(Spinner *);
s32 sub_8058DB0(Spinner *);
bool32 sub_8058E30(Spinner *, EnemyUnknownStruc0 *);
void TaskDestructor_Spinner(struct Task *);

void sub_8058C74(Spinner *spinner)
{
    Sprite *s;
    void *tiles;
    s32 screenX, screenY;

    tiles = ALLOC_TILES(ANIM_SPINNER);
    s = &spinner->s;
    s->tiles = tiles;
    s->anim = ANIM_SPINNER;
    s->variant = 0;
    s->prevVariant = -1;

    screenX = I(spinner->posX) + (spinner->regionX * CAM_REGION_WIDTH);
    s->x = screenX - gCamera.x;

    screenY = I(spinner->posY) + (spinner->regionY * CAM_REGION_WIDTH);
    s->y = screenY - gCamera.y;

    s->oamFlags = SPRITE_OAM_ORDER(18);
    s->animCursor = 0;
    s->timeUntilNextFrame = 0;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;

    UpdateSpriteAnimation(s);
}

void CreateEntity_Spinner(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_SpinnerMain, sizeof(Spinner), 0x2100, 0,
                                TaskDestructor_Spinner);
    Spinner *spinner = TASK_DATA(t);
    u16 zero;

    spinner->id = id;
    spinner->me = me;
    spinner->spriteX = me->x;
    spinner->regionX = regionX;
    spinner->regionY = regionY;

    spinner->posX = (me->x * TILE_WIDTH) * CAM_REGION_WIDTH;
    spinner->posY = (me->y * TILE_WIDTH) * CAM_REGION_WIDTH;

    spinner->unkX = spinner->posX;
    spinner->unkY = spinner->posY;

    CpuFill16(0, &spinner->reserved.b, 4);

    sub_8058C74(spinner);

    SET_MAP_ENTITY_INITIALIZED(me);
}

void Task_SpinnerMain(void)
{
    Spinner *spinner = TASK_DATA(gCurTask);

    if (sub_8058DF4(spinner) == TRUE) {
        TaskDestroy(gCurTask);
    } else {
        sub_8058DB0(spinner);
    }
}

s32 sub_8058DB0(Spinner *spinner)
{
    s32 result;
    Sprite *s = &spinner->s;
    s32 screenX, screenY;

    screenX = I(spinner->posX) + (spinner->regionX * CAM_REGION_WIDTH);
    s->x = screenX - gCamera.x;

    screenY = I(spinner->posY) + (spinner->regionY * CAM_REGION_WIDTH);
    s->y = screenY - gCamera.y;

    result = UpdateSpriteAnimation(s);

    DisplaySprite(s);

    return result;
}

bool32 sub_8058DF4(Spinner *spinner)
{
    Sprite *s;
    EnemyUnknownStruc0 unk;

    unk.unk4 = sub_8058E30(spinner, &unk);
    unk.spr = &spinner->s;
    unk.posX = spinner->unkX;
    unk.posY = spinner->unkY;
    unk.regionX = spinner->regionX;
    unk.regionY = spinner->regionY;
    unk.me = spinner->me;
    unk.spriteX = spinner->spriteX;

    return sub_805C280(&unk);
}

bool32 sub_8058E30(Spinner *spinner, EnemyUnknownStruc0 *unk)
{
    Sprite *s;

    unk->me = NULL;
    unk->spriteX = 0;
    unk->unk4 = 0;

    unk->spr = &spinner->s;
    unk->posX = spinner->posX;
    unk->posY = spinner->posY;
    unk->regionX = spinner->regionX;
    unk->regionY = spinner->regionY;

    return sub_805C63C(unk);
}

void TaskDestructor_Spinner(struct Task *t)
{
    Spinner *spinner = TASK_DATA(t);
    VramFree(spinner->s.tiles);
}