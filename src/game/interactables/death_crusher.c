#include "global.h"
#include "malloc_vram.h"
#include "sprite.h"
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

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ u8 filler[8];
    /* 0x3C */ s32 qWorldX;
    /* 0x40 */ s32 qWorldY;
    /* 0x44 */ u16 unk44;
    /* 0x46 */ u16 unk46;
    /* 0x48 */ u16 unk48;
    /* 0x4A */ s16 unk4A;
    /* 0x4C */ u8 unk4C;
} DeathCrusher;

extern const u16 gUnknown_080CFBC8[];

void Task_DeathCrusher(void);
void sub_8041E74(Sprite *s, u8 i);
void sub_8041ED4(void);
void TaskDestructor_DeathCrusher(struct Task *);

void CreateEntity_DeathCrusher(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    u16 arr[6];
    struct Task *t;
    DeathCrusher *crusher;
    Sprite *s;
    s16 i;
    s32 r1;

    memcpy(arr, gUnknown_080CFBC8, sizeof(arr));

    t = TaskCreate(Task_DeathCrusher, sizeof(DeathCrusher), 0x2100, 0, TaskDestructor_DeathCrusher);
    crusher = TASK_DATA(t);

    crusher->base.regionX = regionX;
    crusher->base.regionY = regionY;
    crusher->base.me = me;
    crusher->base.spriteX = me->x;
    crusher->base.id = id;

    crusher->qWorldX = Q(TO_WORLD_POS(me->x, regionX));
    crusher->qWorldY = Q(TO_WORLD_POS(me->y, regionY));

    crusher->unk46 = 0;
    crusher->unk4A = 0;
    crusher->unk44 = 0;

    crusher->unk4C = (me->d.uData[4] & 0x1);

    for (i = 2; i <= 6; i++) {
        if ((me->d.uData[4] >> i) & 0x1)
            break;
    }

    if ((me->d.uData[4] & 0xFC) != 0) {
        r1 = arr[i - 2];
    } else {
        r1 = 0;
    }

    crusher->unk48 = r1;

    s = &crusher->s;
    s->x = I(crusher->qWorldX);
    s->y = I(crusher->qWorldY);

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_8041E74(s, crusher->unk4C);
}

// (99.68%) https://decomp.me/scratch/YDegv
NONMATCH("asm/non_matching/game/interactables/death_crusher__Task_DeathCrusher.inc", void Task_DeathCrusher(void))
{
    DeathCrusher *crusher = TASK_DATA(gCurTask);
    Sprite *s = &crusher->s;
    MapEntity *me = crusher->base.me;
    s16 i;
    s32 qWorldX, qWorldY, qPathTop;
#ifndef NON_MATCHING
    register s32 qPathHeight asm("r6");
#else
    s32 qPathHeight;
#endif
    s32 r4;
    s32 qBottom;
    s32 timer;
    s32 qCrusherX, qCrusherY;
    u32 modVal;

    qWorldY = Q(TO_WORLD_POS(me->y, crusher->base.regionY));
    timer = gStageData.timer;
    r4 = timer + crusher->unk48;

    modVal = 127;
    qPathTop = qWorldY + Q(me->d.sData[1] * (TILE_SIZE_4BPP / 4));
    qPathHeight = Q(me->d.uData[3] * (TILE_SIZE_4BPP / 4));

    qCrusherX = crusher->qWorldX;
    qCrusherY = crusher->qWorldY;

    r4 &= modVal;

    if (r4 < 64) {
        qBottom = (qPathTop + qPathHeight);

        crusher->qWorldY = qBottom - ((qPathHeight * r4) >> 6);
    } else if (r4 < 80) {
        // _08041C1C+0x4
        crusher->qWorldY = qPathTop;
        crusher->unk44 = 0;
    } else if (r4 < 96) {
        // _08041C34+0x4

        qBottom = qPathTop + ((s16)(r4 & 0x4) << 6);
        crusher->qWorldY = qBottom;
    } else if (r4 < 104) {
        // _08041C46+0x4
        qBottom = qPathTop + (((r4 - 96) * qPathHeight) >> 3);
        crusher->qWorldY = qBottom;
    } else if (r4 < 120) {
        // _08041C56+0x4
        if (r4 == 104) {
            sub_8003DF0(SE_DEATH_CRUSHER);
        }

        qBottom = qPathTop + qPathHeight;
        qBottom += QS(r4 & 3);

        crusher->qWorldY = qBottom;
    } else {
        qBottom = qPathTop + qPathHeight;

        crusher->qWorldY = qBottom;
    }
    // _08041C7C

    qCrusherX -= crusher->qWorldX;
    qCrusherY -= crusher->qWorldY;

    // _08041C90_loop
    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p = GET_SP_PLAYER_V0(i);

        if (!sub_802C080(p) && (crusher->unk4C != 0) && (p->framesInvulnerable == 0) && (p->framesInvincible == 0)
            && (r4 = sub_8020CE0(s, I(crusher->qWorldX), I(crusher->qWorldY), 1, p))) {
            sub_8004E98(p, SE_SPIKES);
        } else if (!sub_802C0D4(p)) {
            if ((p->moveState & MOVESTATE_20) && p->spr6C == s) {
                // _08041D1C+0x12
                p->qWorldX -= qCrusherX;
                p->qWorldY += (Q(4) - qCrusherY);

                if ((crusher->unk4C != 0) && (crusher->unk4A == 0)) {
                    crusher->unk4A++;
                }
            }
            // _08041D5A

            if ((p->charFlags.someIndex == 1) || (p->charFlags.someIndex == 2) || (p->charFlags.someIndex == 4)) {
                // _08041D70

                u32 res = sub_8020950(s, I(crusher->qWorldX), I(crusher->qWorldY), p, 0);

                if (res & 0x10000) {
                    p->qWorldY += Q_8_8(res);
                    p->qSpeedAirY = 0;

                    if (sub_801226C(p) < 0) {
                        if (!sub_802C080(p)) {
                            sub_8008E38(p);
                        }
                    }
                } else if (res & 0x20000) {
                    // _08041DBA+0xA
                    p->qWorldY += Q_8_8(res) + Q(1);
                    p->qSpeedAirY = 0;

                    if (sub_8012368(p) < 0) {
                        if (!sub_802C080(p)) {
                            sub_8008E38(p);
                        }
                    }
                }

                // _08041DF0
                if (res & 0xC0000) {
                    // _08041DF0+0xA
                    p->qWorldX += Q((s16)res >> 8);

                    if ((res & 0x40000) && (p->keyInput & DPAD_LEFT)) {
                        p->qWorldX -= Q(1);
                        p->moveState |= MOVESTATE_40;
                    } else if ((res & 0x80000) && (p->keyInput & DPAD_RIGHT)) {
                        p->qWorldX += Q(1);
                        p->moveState |= MOVESTATE_40;
                    }

                    p->qSpeedAirX = 0;
                    p->qSpeedGround = 0;
                }
            }
        }
    }

    sub_8041ED4();
}
END_NONMATCH
