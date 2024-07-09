#include "global.h"
#include "malloc_vram.h"
#include "module_unclear.h"
#include "sprite.h"
#include "game/camera.h"
#include "game/save.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/songs.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ s16 worldX;
    /* 0x36 */ s16 worldY;
    /* 0x38 */ u8 unk38;
} SpecialKey; /* size: 0x3C */

void Task_SpecialKey(void);
void Task_804E934(void);
void sub_804E8AC(void);
void TaskDestructor_SpecialKey(struct Task *);

void sub_804E988(Sprite *s);

void CreateEntity_SpecialKey(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    s16 i;

    u8 bit = me->d.uData[4];
    for (i = 0; i < 8; i++) {
        if (bit == (1 << i)) {
            break;
        }
    }

    bit = i;

    if ((gStageData.gameMode == GAME_MODE_SINGLE_PLAYER)
        && (gStageData.flagSpKey == 0)) {
        if (gSaveGame.chaoCount[gStageData.zone] == CHAO_COLLECTED_ALL) {
            if ((bit & 1) == (gStageData.unk86 & 1)) {
                struct Task *t = TaskCreate(Task_SpecialKey, sizeof(SpecialKey), 0x2100,
                                            0, TaskDestructor_SpecialKey);
                SpecialKey *key = TASK_DATA(t);
                Sprite *s;

                key->base.regionX = regionX;
                key->base.regionY = regionY;
                key->base.me = me;
                key->base.spriteX = me->x;
                key->base.id = id;

                key->worldX = TO_WORLD_POS(me->x, regionX);
                key->worldY = TO_WORLD_POS(me->y, regionY);
                key->unk38 = bit;

                s = &key->s;
                s->x = key->worldX - gCamera.x;
                s->y = key->worldY - gCamera.y;
                sub_804E988(s);
            }
        }
    }

    SET_MAP_ENTITY_INITIALIZED(me);
}

void Task_SpecialKey(void)
{
    SpecialKey *key = TASK_DATA(gCurTask);
    StageDataTask98 *task98 = TASK_DATA(gStageData.task98);
    Sprite *s;
    Player *p;
    s16 worldX, worldY;

    worldX = key->worldX;
    worldY = key->worldY;
    s = &key->s;

    p = &gPlayers[gStageData.charId];

    if (task98->unk16 & 0x4) {
        sub_8004DD8(Q(worldX), Q(worldY));
    }

    if (sub_8020700(s, worldX, worldY, 0, p, 0)) {
        s->anim = ANIM_RING_COLLECT_EFFECT;
        s->variant = 0;
        gCurTask->main = Task_804E934;
        gStageData.flagSpKey = 1;
        sub_8003DF0(SE_SPECIAL_KEY);
    } else {
        Player *p2 = task98->unk50;
        if (((p2->charFlags.someIndex == 1) || (p2->charFlags.someIndex == 4))
            && ((task98->unk16 & 0x6) == 0x6) && (sub_805C510(s) == TRUE)) {
            TaskDestroy(gCurTask);
            gStageData.flagSpKey = 1;
            sub_8003DF0(SE_SPECIAL_KEY);
            return;
        } else {
            sub_804E8AC();
        }
    }
}

void sub_804E8AC(void)
{
    SpecialKey *key = TASK_DATA(gCurTask);
    Sprite *s = &key->s;
    MapEntity *me = key->base.me;
    s16 worldX, worldY;

    worldX = key->worldX;
    worldY = key->worldY;

    if (!IsPointInScreenRect(worldX, worldY)) {
        me->x = key->base.spriteX;
        TaskDestroy(gCurTask);
        return;
    } else {
        s->x = worldX - gCamera.x;
        s->y = worldY - gCamera.y;

        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void TaskDestructor_SpecialKey(struct Task *t)
{
    SpecialKey *key = TASK_DATA(t);
    VramFree(key->s.tiles);
}

void Task_804E934(void)
{
    SpecialKey *key = TASK_DATA(gCurTask);
    Sprite *s = &key->s;
    s16 worldX, worldY;

    worldX = key->worldX;
    worldY = key->worldY;

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    if (UpdateSpriteAnimation(s) == ACMD_RESULT__ENDED) {
        TaskDestroy(gCurTask);
        return;
    } else {
        DisplaySprite(s);
    }
}

void sub_804E988(Sprite *s)
{
    s->tiles = ALLOC_TILES(ANIM_SPECIAL_KEY);
    s->anim = ANIM_SPECIAL_KEY;
    s->variant = 0;
    s->oamFlags = SPRITE_OAM_ORDER(24);
    s->animCursor = 0;
    s->timeUntilNextFrame = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
    UpdateSpriteAnimation(s);
}