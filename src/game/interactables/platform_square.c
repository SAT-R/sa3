#include "global.h"
#include "task.h"
#include "malloc_vram.h"
#include "module_unclear.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00*/ SpriteBase base;
    /* 0x0C */ s32 qWorldX;
    /* 0x10 */ s32 qWorldY;
    /* 0x14 */ s16 qUnk14;
    ;
    /* 0x14 */ u8 unk16;
    ;
    /* 0x18 */ Player *ps[NUM_SINGLE_PLAYER_CHARS];
    /* 0x20 */ Sprite s;
    /* 0x48 */ u8 filler48[0x8];
} PlatformSquare; /* 0x50 */

void Task_PlatformSquare(void);
void Task_80448D8(void);
void Task_80449A4(void);
// TODO: Maybe return type is bool8?
u8 sub_8044AA0(Player *, u8);
void sub_8044C00(PlatformSquare *);
void TaskDestructor_PlatformSquare(struct Task *);

void CreateEntity_PlatformSquare(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_PlatformSquare, sizeof(PlatformSquare), 0x2100, 0, TaskDestructor_PlatformSquare);
    PlatformSquare *platform = TASK_DATA(t);
    Sprite *s;
    s32 worldX, worldY;
    AnimId anim;

    platform->base.regionX = regionX;
    platform->base.regionY = regionY;
    platform->base.me = me;
    platform->base.unk8 = me->x;
    platform->base.unk9 = id;

    worldX = TO_WORLD_POS(me->x, regionX);
    platform->qWorldX = Q(worldX);
    worldY = TO_WORLD_POS(me->y, regionY);
    platform->qWorldY = Q(worldY);

    platform->ps[0] = &gPlayers[gStageData.playerIndex];
    platform->ps[1] = &gPlayers[platform->ps[0]->charFlags.partnerIndex];
    platform->unk16 = 0;
    platform->qUnk14 = 0;

    SET_MAP_ENTITY_INITIALIZED(me);

    s = &platform->s;
    s->tiles = ALLOC_TILES(ANIM_PLATFORM_BONUS);
    if (gStageData.act == ACT_BONUS_ENEMIES) {
        s->anim = ANIM_PLATFORM_BONUS;
        s->variant = 0;
    } else {
        s->anim = ANIM_PLATFORM_TS;
        s->variant = 0;
    }

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

void Task_PlatformSquare(void)
{
    PlatformSquare *platform = TASK_DATA(gCurTask);
    MapEntity *me = platform->base.me;
    s16 worldX, worldY;
    u8 r5;

    worldX = I(platform->qWorldX);
    worldY = I(platform->qWorldY);

    r5 = sub_8044AA0(platform->ps[0], 0);
    r5 |= sub_8044AA0(platform->ps[1], 1);

    if (r5) {
        gCurTask->main = Task_80448D8;
    }

    if (!sub_802C140(worldX, worldY, worldX - gCamera.x, worldY - gCamera.y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, platform->base.unk8);
        TaskDestroy(gCurTask);
        return;
    } else {
        platform->unk16 = r5;
        sub_8044C00(platform);
    }
}

void Task_80448D8(void)
{
    PlatformSquare *platform = TASK_DATA(gCurTask);
    MapEntity *me = platform->base.me;
    s16 worldX, worldY;
    u8 r7;
    worldX = I(platform->qWorldX);
    // TODO: Was this supposed to be - Q(1.5)?
    worldY = I(platform->qWorldY -= Q(1.5));

    r7 = sub_8044AA0(platform->ps[0], 0);
    r7 |= sub_8044AA0(platform->ps[1], 1);

    if (!sub_8004E20(worldX, worldY - 16, NULL)) {
        platform->qUnk14 = -Q(0.5);
        gCurTask->main = Task_80449A4;
    }

    if (!sub_802C140(worldX, worldY, worldX - gCamera.x, worldY - gCamera.y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, platform->base.unk8);
        TaskDestroy(gCurTask);
        return;
    } else {
        platform->unk16 = r7;
        sub_8044C00(platform);
    }
}

void Task_80449A4(void)
{
    PlatformSquare *platform = TASK_DATA(gCurTask);
    MapEntity *me = platform->base.me;
    s16 worldX, worldY;
    u8 r5;

    worldX = I(platform->qWorldX);
    worldY = I(platform->qWorldY);

    r5 = 0;

    if (!sub_8004E20(worldX, worldY - 16, NULL)) {
        platform->qUnk14 += Q(8. / 256.);
    } else {
        platform->qUnk14 -= Q(8. / 256.);
    }

    platform->qWorldY += platform->qUnk14;

    r5 |= sub_8044AA0(platform->ps[0], 0);
    r5 |= sub_8044AA0(platform->ps[1], 1);

    if (!IsPointInScreenRect(worldX, worldY)) {
        s16 i;
        for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            Player *p = GET_SP_PLAYER_V1(i);
            sub_80213B0(&platform->s, p);
        }

        SET_MAP_ENTITY_NOT_INITIALIZED(me, platform->base.unk8);
        TaskDestroy(gCurTask);
        return;
    } else {
        platform->unk16 = r5;
        sub_8044C00(platform);
    }
}

u8 sub_8044AA0(Player *p, u8 param1)
{
    PlatformSquare *platform = TASK_DATA(gCurTask);
    Sprite *s = &platform->s;
    s16 worldX, worldY;
    u32 res;
    u8 sb;

    worldX = I(platform->qWorldX);
    worldY = I(platform->qWorldY);
    sb = 0;

    if (sub_802C0D4(p)) {
        return 0;
    }

    if ((p->moveState & MOVESTATE_COLLIDING_ENT) && (p->sprColliding == s)) {
        p->qWorldY += platform->qUnk14;
    }

    res = sub_8020950(s, worldX, worldY, p, 1);
    if (res & 0x10000) {
        p->qWorldY = ((p->qWorldY + Q_8_8(res + 1)) & ~0xFF) - 1;
        sb |= (1 << param1);
    } else if (res & 0x20000) {
        p->qWorldY += +Q(1);
        p->qWorldY += Q_8_8(res);
        p->qSpeedAirY = 0;
    } else if (res & 0x40000) {
        p->qWorldX += (s16)(res & 0xFF00);

        if (p->qSpeedAirX < 0) {
            p->qSpeedAirX = 0;
        }
        p->qSpeedGround = 0;

        if (p->keyInput & DPAD_LEFT) {
            p->qWorldX -= Q(1.0);
            p->moveState |= MOVESTATE_40;
        }
    } else if (res & 0x80000) {
        p->qWorldX += (s16)(res & 0xFF00);

        if (p->qSpeedAirX > 0) {
            p->qSpeedAirX = 0;
        }
        p->qSpeedGround = 0;

        if (p->keyInput & DPAD_RIGHT) {
            p->qWorldX += Q(1.0);
            p->moveState |= MOVESTATE_40;
        }
    }

    return sb;
}

void sub_8044C00(PlatformSquare *platform)
{
    Sprite *s = &platform->s;
    s->x = I(platform->qWorldX) - gCamera.x;
    s->y = I(platform->qWorldY) - gCamera.y;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void TaskDestructor_PlatformSquare(struct Task *t)
{
    PlatformSquare *platform = TASK_DATA(t);
    VramFree(platform->s.tiles);
}