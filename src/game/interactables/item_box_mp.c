#include "global.h"
#include "module_unclear.h"
#include "core.h"
#include "sprite.h"
#include "trig.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/player_callbacks.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"
#include "constants/songs.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite sprBox;
    /* 0x34 */ Sprite sprItem;
    /* 0x5C */ SpriteTransform transform;
    /* 0x68 */ Player *player;
    /* 0x6C */ s16 worldX;
    /* 0x6E */ s16 worldY;
    /* 0x70 */ s16 qUnk70;
    /* 0x72 */ u8 unk72;
    /* 0x73 */ u8 unk73;
    /* 0x74 */ u8 unk74; // TODO: Is that a 4:4 bitfield?
} ItemBoxMP; /* 0x78 */

typedef struct {
    /* 0x00 */ Sprite s;
    /* 0x28 */ s16 worldX;
    /* 0x2A */ s16 worldY;
} CloudEffect; /* 0x2C */

void Task_ItemBoxMP(void);
void TaskDestructor_ItemBoxMP(struct Task *t);
void sub_804EC14(ItemBoxMP *itembox);
void sub_804ED44(ItemBoxMP *itembox);
void sub_804EE08(u8);
void CreateCloudEffect(s16, s16);
void Task_CloudEffect(void);
void TaskDestructor_CloudEffect(struct Task *t);
void Task_ItemBoxMP_804F004(void);
void Task_ItemBoxMP_804F05C(void);
void Task_ItemBoxMP_804F098(void);

void CreateEntity_MultiplayerItemBox(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_ItemBoxMP, sizeof(ItemBoxMP), 0x2100, 0, TaskDestructor_ItemBoxMP);
    ItemBoxMP *itembox = TASK_DATA(t);
    Sprite *s;

    itembox->base.regionX = regionX;
    itembox->base.regionY = regionY;
    itembox->base.me = me;
    itembox->base.meX = me->x;
    itembox->base.id = id;

    itembox->worldX = TO_WORLD_POS(me->x, regionX);
    itembox->worldY = TO_WORLD_POS(me->y, regionY);
    itembox->qUnk70 = 0;
    itembox->unk72 = me->d.uData[4];
    itembox->unk73 = 0;
    itembox->unk74 = 0;

    s = &itembox->sprBox;
    s->x = itembox->worldX - gCamera.x;
    s->y = itembox->worldY - gCamera.y;

    s = &itembox->sprItem;
    s->x = itembox->worldX - gCamera.x;
    s->y = itembox->worldY - gCamera.y;

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_804ED44(itembox);
}

void Task_ItemBoxMP(void)
{
    ItemBoxMP *itembox = TASK_DATA(gCurTask);
    Sprite *s;
    Player *p;
    s16 worldX, worldY;

    worldX = itembox->worldX;
    worldY = itembox->worldY;

    if (!IsWorldPtActive(worldX, worldY)) {
        MapEntity *me = itembox->base.me;
        SET_MAP_ENTITY_NOT_INITIALIZED(me, itembox->base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    if (gUnknown_03001060.unk54 != itembox->unk72) {
        return;
    }

    if (gUnknown_03001060.unk52 > 480) {
        return;
    }

    if (gStageData.unk8F == 1) {
        itembox->player = NULL;
        sub_804EC14(itembox);

        // NOTE/TODO: The 416 in the condition below might be (< DISPLAY_HEIGHT + 256)
    } else if ((gUnknown_03001060.unk52 > 32) && (gUnknown_03001060.unk52 < 416)) {
        p = &gPlayers[gStageData.playerIndex];
        s = &itembox->sprBox;
        if (sub_8020700(s, worldX, worldY, 0, p, 1)) {
            itembox->player = p;
            sub_804EC14(itembox);
        } else {
            u32 res = sub_8020950(s, worldX, worldY, p, 0);

            if (res) {
                if (res & 0x10000) {
                    p->qWorldY += Q_8_8(res);
                    p->qSpeedAirY = 0;
                } else if (res & 0xC0000) {
                    p->qWorldX += Q_8_8((s16)res >> 8);
                    p->qSpeedAirX = 0;
                    p->qSpeedGround = 0;
                }
            }
        }

    } else {
        Sprite *s;
        p = &gPlayers[gStageData.playerIndex];
        s = &itembox->sprBox;
        ResolvePlayerSpriteCollision(s, p);
    }

    sub_804EE08(1);
}

void sub_804EC14(ItemBoxMP *itembox)
{
    Player *itemboxPlayer = itembox->player, *p;
    Sprite *s;

    if ((itemboxPlayer != NULL) && (itemboxPlayer->moveState & MOVESTATE_IN_AIR)) {
        itemboxPlayer->qSpeedAirY = -Q(3);

        // TODO: This might be a macro?
        // Because "p->moveState |= MOVESTATE_IN_AIR;" is already set.
        itemboxPlayer->charFlags.anim0 = 108;
        itemboxPlayer->charFlags.anim1 = -1;
        itemboxPlayer->moveState |= MOVESTATE_IN_AIR;
        SetPlayerCallback(itemboxPlayer, Player_800DAF4);
    }

    s = &itembox->sprBox;
    p = &gPlayers[gStageData.playerIndex];
    ResolvePlayerSpriteCollision(s, p);

    itembox->unk73 = 0;
    itembox->unk74 = (gUnknown_03001060.unk55 + 1) << 4;

    m4aSongNumStart(SE_ITEMBOX);

    CreateCloudEffect(itembox->worldX, itembox->worldY);

    if (itemboxPlayer != NULL) {
        switch (itembox->unk74 & 0xF0) {
            case 0x10: {
                sub_80276F4(0x10, gStageData.playerIndex);

                gPlayers[gStageData.playerIndex].unk66 = 900;
                gPlayers[gStageData.playerIndex].unk69 = 0x10;
            } break;

            case 0x20: {
                if (gStageData.unk8E == gStageData.playerIndex) {
                    itembox->unk74 |= (0xF & ~(1 << gStageData.playerIndex));
                } else {
                    itembox->unk74 |= (0xF & (1 << gStageData.unk8E));
                }

                sub_80276F4(itembox->unk74, gStageData.playerIndex);
                sub_80296F8(itembox->unk74);
            } break;
        }
    }

    gCurTask->main = Task_ItemBoxMP_804F004;
}

void sub_804ED44(ItemBoxMP *itembox)
{
    Sprite *s = &itembox->sprBox;

    s->tiles = ALLOC_TILES(ANIM_ITEM_BOX);
    s->anim = ANIM_ITEM_BOX;
    s->variant = 0;
    s->oamFlags = SPRITE_OAM_ORDER(24);
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1) | SPRITE_FLAG(MOSAIC, 1);
    UpdateSpriteAnimation(s);

    s = &itembox->sprItem;
    s->tiles = ALLOC_TILES(ANIM_ITEM_BOX_TYPE);
    s->anim = ANIM_ITEM_BOX_TYPE;
    s->variant = 15 + (gUnknown_03001060.unk55 & 0x1);
    s->oamFlags = SPRITE_OAM_ORDER(24);
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1) | SPRITE_FLAG(MOSAIC, 1);
    UpdateSpriteAnimation(s);

    itembox->transform.rotation = 0;
    itembox->transform.scaleX = Q(1);
    itembox->transform.scaleY = Q(1);
    itembox->transform.x = 0;
    itembox->transform.y = 0;
}

void sub_804EE08(u8 param0)
{
    u16 unk52 = gUnknown_03001060.unk52;
    ItemBoxMP *itembox = TASK_DATA(gCurTask);
    Sprite *s;
    u16 screenX, screenY;
    u16 r2;

    screenX = itembox->worldX - gCamera.x;
    screenY = itembox->worldY - gCamera.y + I(itembox->qUnk70);

    if (param0 == 0) {
        r2 = 0x100;
    } else {
        if (unk52 < 32) {
            r2 = unk52 * 8;

            // NOTE/TODO: The 416 in the condition below might be (< DISPLAY_HEIGHT + 256)
        } else if (unk52 < 416) {
            r2 = 0x100;
        } else {
            r2 = (480 - unk52) << 2;
        }
    }

    if (r2 != 0) {
        if ((r2 & 0xFE00) == 0) {
            itembox->transform.scaleY = r2;
            itembox->transform.x = screenX;
            itembox->transform.y = screenY;

            s = &itembox->sprItem;

            s->frameFlags = gNextFreeAffineIndex | SPRITE_FLAG(PRIORITY, 1) | SPRITE_FLAG(ROT_SCALE_ENABLE, 1);
            TransformSprite(s, &itembox->transform);
            s->variant = 15 + gUnknown_03001060.unk55;
            UpdateSpriteAnimation(s);
            DisplaySprite(s);
            gNextFreeAffineIndex++;

            if (param0 != 0) {
                s = &itembox->sprBox;

                s->frameFlags = gNextFreeAffineIndex | SPRITE_FLAG(PRIORITY, 1) | SPRITE_FLAG(ROT_SCALE_ENABLE, 1);
                TransformSprite(s, &itembox->transform);
                UpdateSpriteAnimation(s);
                DisplaySprite(s);
                gNextFreeAffineIndex++;
            }
        }
    }
}

void CreateCloudEffect(s16 worldX, s16 worldY)
{
    struct Task *t = TaskCreate(Task_CloudEffect, sizeof(CloudEffect), 0x4040, 0, TaskDestructor_CloudEffect);
    CloudEffect *cloud = TASK_DATA(t);
    Sprite *s = &cloud->s;

    cloud->worldX = worldX;
    cloud->worldY = worldY;

    s->tiles = ALLOC_TILES(ANIM_ITEM_BOX_CLOUD_EFFECT);
    s->anim = ANIM_ITEM_BOX_CLOUD_EFFECT;
    s->variant = 0;
    s->prevVariant = -1;
    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;
    s->oamFlags = SPRITE_OAM_ORDER(12);
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
}

void TaskDestructor_ItemBoxMP(struct Task *t)
{
    ItemBoxMP *itembox = TASK_DATA(t);
    VramFree(itembox->sprBox.tiles);
    VramFree(itembox->sprItem.tiles);
}

void TaskDestructor_CloudEffect(struct Task *t)
{
    CloudEffect *itembox = TASK_DATA(t);
    VramFree(itembox->s.tiles);
}

void Task_ItemBoxMP_804F004(void)
{
    ItemBoxMP *itembox = TASK_DATA(gCurTask);

    if (itembox->unk73++ >= 60) {
        itembox->unk73 = 0;
        gCurTask->main = Task_ItemBoxMP_804F05C;
    } else {
        itembox->qUnk70 -= Q(1);
    }

    sub_804EE08(0);
}

void Task_ItemBoxMP_804F05C(void)
{
    ItemBoxMP *itembox = TASK_DATA(gCurTask);

    if (itembox->unk73++ >= 30) {
        gCurTask->main = Task_ItemBoxMP_804F098;
    } else {
        sub_804EE08(0);
    }
}

void Task_ItemBoxMP_804F098(void)
{
    ItemBoxMP *itembox = TASK_DATA(gCurTask);

    if (gUnknown_03001060.unk52 >= 480) {
        itembox->qUnk70 = 0;
        itembox->unk73 = 0;
        itembox->unk74 = 0;
        gCurTask->main = Task_ItemBoxMP;
    }
}

void Task_CloudEffect(void)
{
    CloudEffect *cloud = TASK_DATA(gCurTask);
    Sprite *s = &cloud->s;

    s->x = cloud->worldX - gCamera.x;
    s->y = cloud->worldY - gCamera.y;

    if (UpdateSpriteAnimation(s) != ACMD_RESULT__ENDED) {
        DisplaySprite(s);
    } else {
        TaskDestroy(gCurTask);
    }
}