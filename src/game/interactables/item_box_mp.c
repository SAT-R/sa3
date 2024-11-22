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
    /* 0x0C */ Sprite s;
    /* 0x34 */ Sprite s2;
    /* 0x5C */ u8 filler5C[0xC];
    /* 0x68 */ Player *player;
    /* 0x6C */ s16 worldX;
    /* 0x6E */ s16 worldY;
    /* 0x70 */ u16 unk70;
    /* 0x72 */ u8 unk72;
    /* 0x73 */ u8 unk73;
    /* 0x74 */ u8 unk74; // TODO: Is that a 4:4 bitfield?
} ItemBoxMP; /* 0x78 */

void Task_ItemBoxMP(void);
void TaskDestructor_ItemBoxMP(struct Task *t);
void sub_804EC14(ItemBoxMP *itembox);
void sub_804ED44(ItemBoxMP *itembox);
void sub_804EE08(u8);
void CreateCloudEffect(s16, s16);
void Task_804F004(void);

void CreateEntity_MultiplayerItemBox(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_ItemBoxMP, sizeof(ItemBoxMP), 0x2100, 0, TaskDestructor_ItemBoxMP);
    ItemBoxMP *itembox = TASK_DATA(t);
    Sprite *s;

    itembox->base.regionX = regionX;
    itembox->base.regionY = regionY;
    itembox->base.me = me;
    itembox->base.spriteX = me->x;
    itembox->base.id = id;

    itembox->worldX = TO_WORLD_POS(me->x, regionX);
    itembox->worldY = TO_WORLD_POS(me->y, regionY);
    itembox->unk70 = 0;
    itembox->unk72 = me->d.uData[4];
    itembox->unk73 = 0;
    itembox->unk74 = 0;

    s = &itembox->s;
    s->x = itembox->worldX - gCamera.x;
    s->y = itembox->worldY - gCamera.y;

    s = &itembox->s2;
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

    if (!IsPointInScreenRect(worldX, worldY)) {
        MapEntity *me = itembox->base.me;
        SET_MAP_ENTITY_NOT_INITIALIZED(me, itembox->base.spriteX);
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

        // NOTE/TODO:  The 416 in the condition below might be (< DISPLAY_HEIGHT + 256)
    } else if ((gUnknown_03001060.unk52 > 32) && (gUnknown_03001060.unk52 < 416)) {
        p = &gPlayers[gStageData.playerIndex];
        s = &itembox->s;
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
        s = &itembox->s;
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

    s = &itembox->s;
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

    gCurTask->main = Task_804F004;
}
