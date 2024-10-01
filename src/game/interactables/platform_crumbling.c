#include "global.h"
#include "trig.h"
#include "module_unclear.h"
#include "game/interactables/platform_shared.h"
#include "malloc_vram.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ s32 qWorldX;
    /* 0x38 */ s32 qWorldY;
    /* 0x3C */ u16 unk3C;
    /* 0x3E */ u16 unk3E;
    /* 0x40 */ u8 unk40;
    /* 0x41 */ u8 unk41; // fallìngSpeedMult?
    /* 0x42 */ u8 unk42;
    /* 0x43 */ u8 unk43;
} PlatformCrumbling;

void CreateEntity_PlatformCrumbling(u16 kind, MapEntity *me, u16 regionX, u16 regionY, u8 id);
void Task_PlatformCrumbling(void);
void TaskDestructor_PlatformCrumbling(struct Task *);
void sub_8038F28(Sprite *s);
void sub_803901C(void);

void CreateEntity_PlatformCrumbling(u16 kind, MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_PlatformCrumbling, sizeof(PlatformCrumbling), 0x2100, 0, TaskDestructor_PlatformCrumbling);
    PlatformCrumbling *platform = TASK_DATA(t);
    Sprite *s = &platform->s;
    s16 i;

    platform->base.regionX = regionX;
    platform->base.regionY = regionY;
    platform->base.me = me;
    platform->base.spriteX = me->x;
    platform->base.id = id;

    // NOTE: This is not initialized as Q()!
    platform->qWorldX = TO_WORLD_POS(me->x, regionX);
    platform->qWorldY = TO_WORLD_POS(me->y, regionY);

    platform->unk3C = sub_804DC38(kind, platform->qWorldX, platform->qWorldY, me);
    platform->unk3E = 0;
    platform->unk40 = kind;

    for (i = 0; i < 6; i++) {
        if (GetBit(me->d.uData[4], i))
            break;
    }

    platform->unk41 = i + 1;
    platform->unk42 = 0;
    platform->unk43 = 0;

    // NOTE: platform->qWorldX/Y are not Q() values right now, but get set to that later!
    s->x = platform->qWorldX;
    s->y = platform->qWorldY;

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_8038F28(s);
}

void Task_PlatformCrumbling(void)
{
    bool32 sp04 = FALSE;
    PlatformCrumbling *platform = TASK_DATA(gCurTask);
    Sprite *s = &platform->s;
    MapEntity *me = platform->base.me;
    s32 qWorldX, qWorldY;
    s32 qLeft, qTop;
    s32 qRelMiddleX, qRelMiddleY;
    s32 qMiddleX, qMiddleY;
    s32 qRight, qBottom;
    s32 qPlatformX, qPlatformY;
    s16 i;

    qWorldX = Q(TO_WORLD_POS(platform->base.spriteX, platform->base.regionX));
    qWorldY = Q(TO_WORLD_POS(me->y, platform->base.regionY));

    if (platform->unk41 != 0) {
        u32 theta = (gStageData.timer * platform->unk41);
        platform->unk3E = CLAMP_SIN_PERIOD(theta + platform->unk3C);
    } else {
        u32 theta = gStageData.timer;
        theta += (platform->unk3C / 4);
        platform->unk3E = (theta % 256u) * 4;
    }

    qTop = qWorldY + Q(me->d.sData[1] * TILE_WIDTH);
    qRelMiddleY = Q(me->d.uData[3] * (TILE_WIDTH / 2));
    qLeft = qWorldX + Q(me->d.sData[0] * TILE_WIDTH);
    qRelMiddleX = Q(me->d.uData[2] * (TILE_WIDTH / 2));
    qMiddleX = qLeft + qRelMiddleX;
    qMiddleY = qTop + qRelMiddleY;

    // TODO: This might be bugged on the first call, due to qWorldX/Y
    //       not being set to fixed-point / Q() values?
    qPlatformX = platform->qWorldX;
    qPlatformY = platform->qWorldY;

    platform->qWorldX = qMiddleX + ((qRelMiddleX * SIN(platform->unk3E)) >> 14);
    platform->qWorldY = qMiddleY + ((qRelMiddleY * SIN(platform->unk3E)) >> 14);

    qPlatformX -= platform->qWorldX;
    qPlatformY -= platform->qWorldY;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p = (i == 0) ? &gPlayers[gStageData.charId] : &gPlayers[p->charFlags.partnerIndex];

        if (!sub_802C0D4(p)) {
            if ((p->moveState & MOVESTATE_20) && (p->spr6C == s)) {
                p->qWorldX -= qPlatformX;
                p->qWorldY += Q(4) - qPlatformY;
                sp04 = TRUE;
            }

            if (!platform->unk43) {
                u32 res = sub_8020950(s, I(platform->qWorldX), I(platform->qWorldY), p, 0);
                if (res & 0x10000) {
                    p->qWorldY += Q_8_8(res);
                }
            } else if ((p->moveState & MOVESTATE_20) && (p->spr6C == s)) {
                sub_80213B0(s, p);
            }
        }
    }

    if (sp04 || platform->unk43 != 0) {
        if (platform->unk42 < 64) {
            platform->unk42++;
        }
        if (platform->unk42 > 48) {
            platform->unk43 = TRUE;
        }
    } else {
        if (platform->unk42 > 0) {
            platform->unk42--;
        }
    }

    sub_803901C();
}

void sub_8038F28(Sprite *s)
{
    switch (gStageData.zone) {
        case ZONE_1: {
            s->tiles = ALLOC_TILES(ANIM_PLATFORM_CRUMBLING_1);
            s->anim = ANIM_PLATFORM_CRUMBLING_1;
            s->variant = 0;
        } break;
        case ZONE_2: {
            s->tiles = ALLOC_TILES(ANIM_PLATFORM_CRUMBLING_2);
            s->anim = ANIM_PLATFORM_CRUMBLING_2;
            s->variant = 0;
        } break;
        case ZONE_3: {
            s->tiles = ALLOC_TILES(ANIM_PLATFORM_CRUMBLING_3);
            s->anim = ANIM_PLATFORM_CRUMBLING_3;
            s->variant = 0;
        } break;
        case ZONE_4: {
            s->tiles = ALLOC_TILES(ANIM_PLATFORM_CRUMBLING_4);
            s->anim = ANIM_PLATFORM_CRUMBLING_4;
            s->variant = 0;
        } break;
        case ZONE_5: {
#ifdef BUG_FIX
            s->tiles = ALLOC_TILES(ANIM_PLATFORM_CRUMBLING_5);
#else
            s->tiles = VramMalloc(ANIM_PLATFORM_CRUMBLING_5);
#endif
            s->anim = ANIM_PLATFORM_CRUMBLING_5;
            s->variant = 0;
        } break;
        case ZONE_6: {
            s->tiles = ALLOC_TILES(ANIM_PLATFORM_CRUMBLING_6);
            s->anim = ANIM_PLATFORM_CRUMBLING_6;
            s->variant = 0;
        } break;
        case ZONE_7: {
            s->tiles = ALLOC_TILES(ANIM_PLATFORM_CRUMBLING_7);
            s->anim = ANIM_PLATFORM_CRUMBLING_7;
            s->variant = 0;
        } break;

        default: {
            return;
        }
    }

    s->oamFlags = SPRITE_OAM_ORDER(24);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
    UpdateSpriteAnimation(s);
}

void sub_803901C(void)
{
    PlatformCrumbling *platform = TASK_DATA(gCurTask);
    Sprite *s = &platform->s;
    MapEntity *me = platform->base.me;

    s16 worldX, worldY;
    s16 i;
    s16 variant;

    worldX = TO_WORLD_POS(platform->base.spriteX, platform->base.regionX);
    worldY = TO_WORLD_POS(me->y, platform->base.regionY);
    s->x = I(platform->qWorldX) - gCamera.x;
    s->y = I(platform->qWorldY) - gCamera.y;

    if (!sub_802C140(worldX, worldY, s->x, s->y)) {
        for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            Player *p = (i != 0) ? &gPlayers[p->charFlags.partnerIndex] : &gPlayers[gStageData.charId];

            sub_80213B0(s, p);
        }

        SET_MAP_ENTITY_NOT_INITIALIZED(me, platform->base.spriteX);
        TaskDestroy(gCurTask);
        return;
    }

    variant = platform->unk42 >> 2;

    if (variant < 4) {
        variant = 0;
    } else {
        variant -= 4;
    }

    if (variant < 12) {
        s->variant = variant;
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void CreateEntity_PlatformCrumblingA(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    CreateEntity_PlatformCrumbling(0, me, regionX, regionY, id);
}

void CreateEntity_PlatformCrumblingB(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    CreateEntity_PlatformCrumbling(3, me, regionX, regionY, id);
}

void TaskDestructor_PlatformCrumbling(struct Task *t)
{
    PlatformCrumbling *platform = TASK_DATA(t);
    VramFree(platform->s.tiles);
}