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

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"
#include "constants/songs.h"
#include "constants/zones.h"

typedef struct {
    s32 qUnk0;
    s32 qUnk4;
    s32 qUnk8;
    s32 qUnkC;
} IceSpikeParams;

typedef struct {
    /* 0x00 */ SpriteBase3 base;
    /* 0x1C */ Player *players[NUM_SINGLE_PLAYER_CHARS];
    /* 0x24 */ Sprite s;
    /* 0x4C */ Hitbox reserved;
    /* 0x54 */ u32 unk54[14];
    /* 0x8C */ u32 unk8C[14];
    /* 0xC4 */ u16 unkC4[14];
    /* 0xC4 */ u16 unkE0[14];
    /* 0xFC */ Sprite s2[3];
} IceSpike; /* 0x174 */

// const u16 gUnknown_080D0144[3] = {64, 32, 32};
extern const u16 gUnknown_080D0144[3];
extern const IceSpikeParams gUnknown_080D014C[28];
extern u8 gUnknown_080D030C[0x1C];

void Task_IceSpikeInit(void);
void Task_8044160(void);
void Task_8044350(void);
void sub_80443B0(IceSpike *spike);
void sub_8044450(IceSpike *spike);
void sub_8044544(IceSpike *spike);
void sub_804464C(IceSpike *spike);
void sub_80446E0(IceSpike *spike);
void TaskDestructor_IceSpike(struct Task *t);

void CreateEntity_IceSpike(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    u16 arr[3];
    struct Task *t;
    IceSpike *spike;
    Sprite *s;
    void *tiles;
    u8 i;

    memcpy(arr, gUnknown_080D0144, sizeof(arr));

    t = TaskCreate(Task_IceSpikeInit, sizeof(IceSpike), 0x2100, 0, TaskDestructor_IceSpike);
    spike = TASK_DATA(t);

    spike->base.regionX = regionX;
    spike->base.regionY = regionY;
    spike->base.me = me;
    spike->base.spriteX = me->x;
    spike->base.id = id;

    spike->base.qWorldX = Q(TO_WORLD_POS(me->x, regionX));
    spike->base.qWorldY = Q(TO_WORLD_POS(me->y, regionY));
    spike->base.unk12 = 0;

    spike->players[PLAYER_1] = &gPlayers[gStageData.playerIndex];
    spike->players[PLAYER_2] = &gPlayers[spike->players[PLAYER_1]->charFlags.partnerIndex];

    spike->base.unk16 = 0;
    spike->base.unk17 = 1;
    spike->base.unk10 = 80;
    spike->base.unk18 = 7;
    spike->base.unk19 = 2;

    tiles = ALLOC_TILES(ANIM_ICE_SPIKE);

    s = &spike->s;
    s->tiles = tiles;
    s->oamFlags = SPRITE_OAM_ORDER(24);
    s->anim = ANIM_ICE_SPIKE;
    s->variant = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->x = 0;
    s->y = 0;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);
    UpdateSpriteAnimation(s);

    for (i = 0; i < (s32)ARRAY_COUNT(spike->s2); i++) {
        s = &spike->s2[i];
        s->tiles = tiles;
        s->oamFlags = SPRITE_OAM_ORDER(24);
        s->anim = ANIM_ICE_SPIKE;
        s->variant = 1 + i;
        s->qAnimDelay = 0;
        s->prevVariant = -1;
        s->animSpeed = SPRITE_ANIM_SPEED(1.0);
        s->palId = 0;
        s->x = 0;
        s->y = 0;
        s->frameFlags = SPRITE_FLAG(PRIORITY, 1);

        tiles += arr[i];
    }

    SET_MAP_ENTITY_INITIALIZED(me);
}

void Task_IceSpikeInit(void)
{
    IceSpike *spike = TASK_DATA(gCurTask);
    MapEntity *me = spike->base.me;
    Sprite *s = &spike->s;
    s16 worldX, worldY;
    u16 sp04[NUM_SINGLE_PLAYER_CHARS];
    u8 sp10;
    u8 i;

    worldX = I(spike->base.qWorldX);
    worldY = I(spike->base.qWorldY);

    sp10 = 0;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p = spike->players[i];

        if ((p->charFlags.someIndex == 1) || (p->charFlags.someIndex == 2) || (p->charFlags.someIndex == 4)) {
            if (!sub_802C0D4(p)) {
                u32 res = sub_8020950(s, worldX, worldY, p, 0);

                if (res & 0x10000) {
                    p->qWorldY += Q_8_8(res + 1);
                    sp10 |= (1 << i);
                } else if (!sub_802C080(p)) {
                    sub_8020CE0(s, worldX, worldY, 1, p);
                }
            }
        }
    }

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p = spike->players[i];
        u16 r1;

        sp04[i] = sa2__sub_8004418(I(p->qWorldY - spike->base.qWorldY), I(p->qWorldX - spike->base.qWorldX));

        r1 = 0;
        if ((u16)(sp04[i] - 0x81) < 0xFF) {
            r1 = 1;
        }

        sp04[i] = r1;

        if (r1) {
            s32 lenX, lenY, c2;
            Player *p2 = spike->players[i];

            { // Is this a macro? GetVectorLength or something?
                lenX = (ABS(I(p2->qWorldX - spike->base.qWorldX)));
                lenX = SQUARE(lenX);
                lenY = (ABS(I(p2->qWorldY - spike->base.qWorldY)));
                lenY = SQUARE(lenY);
                lenX += lenY;
            }

            if (lenX > 0x2710) {
                sp04[i] = 0;
            }
        }
    }

    if (((spike->base.unk16 != 0) && (sp10 == 0)) || (sp04[PLAYER_1] != 0) || (sp04[PLAYER_2] != 0)) {
        gCurTask->main = Task_8044160;
    }

    if (!sub_802C140(worldX, worldY, worldX - gCamera.x, worldY - gCamera.y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, spike->base.spriteX);

        TaskDestroy(gCurTask);
        return;
    } else {
        spike->base.unk16 = sp10;
        sub_80446E0(spike);
    }
}

void Task_8044160(void)
{
    IceSpike *spike = TASK_DATA(gCurTask);
    MapEntity *me = spike->base.me;
    Sprite *s = &spike->s;
    Player *p;
    s16 worldX, worldY;
    s32 res;
    u8 i;

    worldX = I(spike->base.qWorldX);
    worldY = I(spike->base.qWorldY);

    spike->base.unk12 += 0x20;
    spike->base.qWorldY += spike->base.unk12;

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        p = spike->players[i];

        if (!sub_802C080(p)) {
            s32 res;
            if ((p->moveState & MOVESTATE_COLLIDING_ENT) && (p->sprColliding == s)) {
                p->qWorldY += spike->base.unk12;
            }

            res = sub_8020950(s, worldX, worldY, p, 0);

            if (res & 0x10000) {
                p->qWorldY += Q_8_8(res + 1);
            } else {
                sub_8020CE0(s, worldX, worldY, 1, p);
            }
        }
    }

    res = sub_80517FC(worldY + 6, worldX, spike->base.unk17, +8, NULL, sub_805217C);

    if (res < 0) {
        spike->base.qWorldY += Q_8_8(res);
        gCurTask->main = Task_8044350;

        sub_80443B0(spike);
        Task_8044350();

        for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            p = spike->players[i];

            if (!sub_802C0D4(p)) {
                if ((p->moveState & MOVESTATE_COLLIDING_ENT) && (p->sprColliding == s)) {
                    ResolvePlayerSpriteCollision(s, p);

                    Player_800E67C(p);

                    p->qSpeedAirY -= Q(3);
                }
            }
        }
    } else {
        if (!sub_802C140(worldX, worldY, s->x, s->y)) {
            SET_MAP_ENTITY_NOT_INITIALIZED(me, spike->base.spriteX);
            TaskDestroy(gCurTask);
            return;
        }

        sub_80446E0(spike);
    }
}

void Task_8044350(void)
{
    IceSpike *spike = TASK_DATA(gCurTask);
    MapEntity *me = spike->base.me;
    u8 i;

    spike->base.unk10 -= spike->base.unk19;

    if (spike->base.unk10 == 0) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, spike->base.spriteX);
        TaskDestroy(gCurTask);
        return;
    }

    for (i = 0; i < spike->base.unk19; i++) {
        sub_8044544(spike);
    }

    if ((spike->base.unk10 >= 30) || ((spike->base.unk10 & 0x2) == 0)) {
        sub_804464C(spike);
    }
}

void sub_80443B0(IceSpike *spike)
{
    IceSpikeParams arr[28];
    s32 qWorldX, qWorldY;
    u32 *ptr32;
    u16 *ptr16;
    u8 i;

    qWorldX = spike->base.qWorldX;
    qWorldY = spike->base.qWorldY;

    ptr32 = &spike->unk54[0];
    ptr16 = &spike->unkC4[0];

    memcpy(arr, gUnknown_080D014C, sizeof(arr));

    {
        s16 time = gStageData.timer * 16;

        for (i = 0; i < spike->base.unk18; i++, time += 0x40) {
            *ptr32++ = qWorldX + arr[i].qUnk0;
            *ptr16++ = arr[i].qUnk8 >> 1;
            *ptr32++ = qWorldY + arr[i].qUnk4;
            *ptr16++ = arr[i].qUnkC + (time & 0xFF);
        }
    }

    spike->base.unk19 = 2;

    sub_8003DF0(SE_ICE_SPIKE);
}

void sub_8044450(IceSpike *spike)
{
    IceSpikeParams arr[28];
    u32 *ptr32_a;
    u32 *ptr32_b;
    u16 *ptr16_a;
    u16 *ptr16_b;
    u8 i;

    ptr32_a = &spike->unk54[0];
    ptr16_a = &spike->unkC4[0];
    ptr32_b = &spike->unk8C[0];
    ptr16_b = &spike->unkE0[0];

    memcpy(arr, gUnknown_080D014C, sizeof(arr));

    {
        s16 time = gStageData.timer * 16;

        for (i = 0; i < 7; i++, time += 0x40) {
            *ptr16_a++ = (arr[i].qUnk8 >> 1) + (time & 0xFF);
            *ptr16_a++ = arr[i].qUnkC + (time & 0xFF);
        }

        for (; i < spike->base.unk18; i++, time += 0x40) {
            *ptr32_b++ = *ptr32_a++;
            *ptr16_b++ = (arr[i].qUnk8 >> 1) + (time & 0xFF);

            *ptr32_b++ = *ptr32_a++;
            *ptr16_b++ = arr[i].qUnkC + (time & 0xFF);
        }
    }

    spike->base.unk19 = 1;
}

void sub_8044544(IceSpike *spike)
{
    u32 *ptr32 = &spike->unk54[0];
    s16 *ptr16 = &spike->unkC4[0];
    s32 r3;
    s16 r7;
    s32 v;
    u8 i;

    if (spike->base.unk10 >= 16) {
        r7 = spike->base.unk10 - 16;

        if ((r7 == 0) && (spike->base.unk18 != 14)) {
            spike->base.unk18 = 14;
            spike->base.unk10 = 80;
            sub_8044450(spike);
        }

        r7 = 64 - (COS_24_8(r7 * 4) >> 2);
        r7 = 64 - (COS_24_8(r7 * 4) >> 2);
        r7 = 64 - (COS_24_8(r7 * 4) >> 2);
        r7 = 96 - ((COS(r7 * 4) * 3) >> 9);

        if (r7 < 10)
            r7 = 10;

        for (i = 0; i < spike->base.unk18; i++) {
            ptr16[1] += 0x10;

            *ptr32++ += ((*ptr16++) * r7) >> 5;
            *ptr32++ += ((*ptr16++) * r7) >> 5;
        }
    } else {
        for (i = 0; i < spike->base.unk18; i++) {
            ptr16[1] += 0x10;

            *ptr32++ += *ptr16++;
            *ptr32++ += *ptr16++;
        }
    }
}

void sub_804464C(IceSpike *spike)
{
    s32 *ptr32 = &spike->unk54[0];
    Sprite *s;
    u8 arr[28];
    u32 r8;
    u8 i;

    memcpy(arr, gUnknown_080D030C, sizeof(arr));

    r8 = 0;

    if (spike->base.unk18 == 14) {
        r8 = 1;
    }

    for (i = 0; i < (s32)ARRAY_COUNT(spike->s2); i++) {
        s = &spike->s2[i];
        UpdateSpriteAnimation(s);
    }

    for (i = 0; i < spike->base.unk18; i++) {
        Sprite *s = &spike->s2[arr[i] + r8];

        s->x = I(*ptr32++) - gCamera.x;
        s->y = I(*ptr32++) - gCamera.y;
        DisplaySprite(s);
    }
}

void sub_80446E0(IceSpike *spike)
{
    Sprite *s = &spike->s;
    s->x = I(spike->base.qWorldX) - gCamera.x;
    s->y = I(spike->base.qWorldY) - gCamera.y;

    if (spike->base.unk16 != 0) {
        UpdateSpriteAnimation(s);
    }

    DisplaySprite(s);
}

void TaskDestructor_IceSpike(struct Task *t)
{
    IceSpike *spike = TASK_DATA(t);
    VramFree(spike->s.tiles);
}