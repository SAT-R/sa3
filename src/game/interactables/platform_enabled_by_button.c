#include "global.h"
#include "core.h"
#include "trig.h"
#include "sprite.h"
#include "malloc_vram.h"
#include "module_unclear.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/player_callbacks.h"
#include "game/stage.h"
#include "game/interactables/platform_shared.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"
#include "constants/songs.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ s32 qWorldX;
    /* 0x38 */ s32 qWorldY;
    /* 0x3C */ u16 unk3C;
    /* 0x3E */ u16 unk3E;
    /* 0x40 */ u8 unk40;
    /* 0x41 */ u8 unk41;
    /* 0x42 */ u8 unk42;
    /* 0x43 */ u8 unk43;
} ButtonPlatform;

void Task_ButtonPlatformInit(void);
void sub_8038910(u32 UNUSED kindIndex, Sprite *s);
void sub_8038988(void);
void TaskDestructor_ButtonPlatform(struct Task *t);

extern const u16 sTileInfoBtnPlatforms[NUM_COURSE_ZONES][3];

void CreateButtonPlatform(u16 kind, MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_ButtonPlatformInit, sizeof(ButtonPlatform), 0x2100, 0, TaskDestructor_ButtonPlatform);
    ButtonPlatform *platform = TASK_DATA(t);
    Sprite *s = &platform->s;
    s32 worldX, worldY;
    s16 i;

    platform->base.regionX = regionX;
    platform->base.regionY = regionY;
    platform->base.me = me;
    platform->base.spriteX = me->x;
    platform->base.id = id;

#ifndef BUG_FIX
    // NOTE/BUG?: qWorldX/Y set to integer value, but Task_ButtonPlatformInit
    //            and other procs apply I(...) to them.
    platform->qWorldX = worldX = TO_WORLD_POS(me->x, regionX);
    platform->qWorldY = worldY = TO_WORLD_POS(me->y, regionY);
    platform->unk3C = sub_804DC38(kind, worldX, worldY, me);
#else
    worldX = TO_WORLD_POS(me->x, regionX);
    worldY = TO_WORLD_POS(me->y, regionY);
    platform->qWorldX = Q(worldX);
    platform->qWorldY = Q(worldY);
    platform->unk3C = sub_804DC38(kind, worldX, worldY, me);
#endif

    platform->unk3E = 0;
    platform->unk40 = 0;
    platform->unk41 = kind;

    for (i = 0; i < 8; i++) {
        if (GetBit(me->d.uData[4], i)) {
            break;
        }
    }

    platform->unk42 = i;

    if (GetBit(gStageData.unk2C, platform->unk42)) {
        platform->unk43 = 1;
    } else {
        platform->unk43 = 0;
    }

#ifndef BUG_FIX
    // NOTE: Once again the game sets the Sprite pos to a world- instead of a screen pos on init.
    s->x = platform->qWorldX;
    s->y = platform->qWorldY;
#else
    s->x = worldX;
    s->y = worldY;
#endif

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_8038910(platform->unk42, s);
}

void Task_ButtonPlatformInit(void)
{
    ButtonPlatform *platform = TASK_DATA(gCurTask);
    s16 sl = 0;
    Sprite *s = &platform->s;
    MapEntity *me = platform->base.me;
    s16 i;
    s32 qWorldX, qWorldY;
    s32 dx, dy;
    s32 qPathTop, qPathBottom;
    s32 qPathLeft, qPathRight;
    s32 qPathHalfWidth, qPathHalfHeight;
    s32 qPathMiddleX, qPathMiddleY;

    if (platform->unk43 == 1) {
        qWorldX = Q(TO_WORLD_POS(platform->base.spriteX, platform->base.regionX));
        qWorldY = Q(TO_WORLD_POS(me->y, platform->base.regionY));

        platform->unk3E = ((gStageData.timer + (platform->unk3C >> 2)) & 0xFF) << 2;

        qPathTop = qWorldY + Q(me->d.sData[1] * TILE_WIDTH);
        qPathHalfHeight = Q(me->d.uData[3] * (TILE_WIDTH / 2));
        qPathLeft = qWorldX + Q(me->d.sData[0] * TILE_WIDTH);
        qPathHalfWidth = Q(me->d.uData[2] * (TILE_WIDTH / 2));
        qPathMiddleX = qPathLeft + qPathHalfWidth;
        qPathMiddleY = qPathTop + qPathHalfHeight;

        {
            dx = platform->qWorldX;
            dy = platform->qWorldY;

            platform->qWorldX = qPathMiddleX + ((SIN(platform->unk3E) * qPathHalfWidth) >> 14);
            platform->qWorldY = qPathMiddleY + ((SIN(platform->unk3E) * qPathHalfHeight) >> 14);

            dx = dx - platform->qWorldX;
            dy = dy - platform->qWorldY;
        }

        for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            Player *p = GET_SP_PLAYER_V0(i);
            u32 res;

            if (!sub_802C0D4(p)) {
                if ((p->moveState & MOVESTATE_COLLIDING_ENT) && (p->sprColliding == s)) {
                    p->qWorldX -= dx;
                    p->qWorldY -= dy - Q(4);

                    sl = +1;
                } else if (sl == 0) {
                    sl = -1;
                }

                // NOTE/BUG?: I(...) on integer values
                res = sub_8020950(s, I(platform->qWorldX), I(platform->qWorldY), p, 0);

                if (res & 0x10000) {
                    p->qWorldY += Q_8_8(res);
                }
            }
        }

        if (sl != 0) {
            if ((sl == +1) && (platform->unk40 < 16)) {
                platform->unk40++;
            } else if ((sl == -1) && (platform->unk40 > 0)) {
                platform->unk40--;
            }
        }

        platform->qWorldY += (SIN(platform->unk40 * 16) >> 5);
    }

    sub_8038988();
}

void sub_8038910(u32 UNUSED kindIndex, Sprite *s)
{
    u32 infoIndex;

    u16 tileInfo[NUM_COURSE_ZONES][3];
    memcpy(tileInfo, sTileInfoBtnPlatforms, sizeof(tileInfo));

    if (gStageData.act == ACT_BONUS_ENEMIES) {
        infoIndex = 0;
    } else {
        infoIndex = gStageData.zone;
    }

    s->tiles = VramMalloc(TI2_NUM_TILES(tileInfo[infoIndex]));
    s->anim = TI2_ANIM(tileInfo[infoIndex]);
    s->variant = TI2_VARIANT(tileInfo[infoIndex]);
    s->oamFlags = SPRITE_OAM_ORDER(24);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
    UpdateSpriteAnimation(s);
}