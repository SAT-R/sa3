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
    /* 0x0C */ u8 unkC;
    /* 0x0D */ u8 unkD;
    /* 0x0E */ u8 kind;
} GrindRail;

void Task_8039230(void);
bool16 sub_8039538(s32 qLeft, s32 qTop, s32 width, s32 height, u8 kind, Player *p);

void CreateGrindRail(u8 railType, MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_8039230, sizeof(GrindRail), 0x2100, 0, NULL);
    GrindRail *rail = TASK_DATA(t);
    s16 i;

    rail->base.regionX = regionX;
    rail->base.regionY = regionY;
    rail->base.me = me;
    rail->base.spriteX = me->x;
    rail->base.id = id;

    rail->unkC = me->d.uData[4] >> 6;

    i = GetFirstSetBitIndex(me->d.uData[4], 6);

    rail->unkD = 1 + i;
    rail->kind = railType;

    SET_MAP_ENTITY_INITIALIZED(me);
}

// (99.62%) https://decomp.me/scratch/OIq3u
NONMATCH("asm/non_matching/game/interactables/grind_rail__Task_8039230.inc", void Task_8039230(void))
{
    GrindRail *rail = TASK_DATA(gCurTask);
    register MapEntity *me = rail->base.me;
    s32 i;
    u8 sp08[4];
    s32 qWorldX, qWorldY;
    s32 qLeft, qTop;
    s32 qRight, qBottom;
    s32 screenX, screenY;

    qWorldX = Q(TO_WORLD_POS(rail->base.spriteX, rail->base.regionX));
    qWorldY = Q(TO_WORLD_POS(me->y, rail->base.regionY));

    qTop = qWorldY + Q(me->d.sData[1] * TILE_WIDTH);
    qBottom = qTop + Q(me->d.uData[3] * TILE_WIDTH);
    qLeft = qWorldX + Q(me->d.sData[0] * TILE_WIDTH);
    qRight = qLeft + Q(me->d.uData[2] * TILE_WIDTH);

    screenX = I(qWorldX) - gCamera.x;
    screenY = I(qWorldY) - gCamera.y;

    if (IS_OUT_OF_CAM_RANGE_TYPED(u32, screenX, screenY)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, rail->base.spriteX);
        TaskDestroy(gCurTask);
        return;
    }

    // _080392D8
    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p;

        if ((gStageData.gameMode == GAME_MODE_MP_SINGLE_PACK) && (i != 0)) {
            continue;
        }

        p = GET_SP_PLAYER_V1(i);

        if (((p->charFlags.someIndex == 1) //
             || (p->charFlags.someIndex == 2) //
             || (p->charFlags.someIndex == 4)) //
            && !(p->moveState & (MOVESTATE_1000000 | MOVESTATE_100)) //
            && (p->callback != Player_800DDD0) //
            && (p->callback != Player_800DCB4) //
            && ((p->qSpeedAirY >= 0) || !(p->moveState & MOVESTATE_IN_AIR)) //
            && ((p->charFlags.anim0 != 238) && (p->charFlags.anim0 != 239)) //
            && ((rail->unkC != 3) || (p->moveState & MOVESTATE_GRAVITY_SWITCHED)) //
            && ((p->qWorldX >= qLeft) && (p->qWorldX <= qRight)) //
            && ((p->qWorldY >= qTop) && (p->qWorldY <= qBottom))) {
            // _080393B4
            bool32 r4 = FALSE;
            s32 width, height;

            if (rail->kind == 0) {
                r4 = TRUE;
            } else {
                // _080393D8

                width = me->d.uData[2] * TILE_WIDTH;
                height = me->d.uData[3] * TILE_WIDTH;

                if (sub_8039538(qLeft, qTop, width, height, rail->kind, p)) {
                    r4 = TRUE;
                }
            }

            if (r4) {
#ifndef NON_MATCHING
                asm("" ::"r"(r4));
#endif
                // _08039400
                p->charFlags.unk2C_01 = 1;

                if (p->charFlags.unk2D_0 != rail->unkD) {
                    // _08039420
                    s32 res;
                    s16 r1;

                    p->unk27 = 0;

                    if ((p->charFlags.anim0 == 231) //
                        || (p->charFlags.anim0 == 232) //
                        || (p->charFlags.anim0 == 234)) {
                        r1 = I(p->qSpeedAirY) + 4;
                    } else {
                        r1 = I(p->qSpeedAirY);
                    }

                    if (!(p->moveState & MOVESTATE_GRAVITY_SWITCHED)) {
                        res = sub_80519EC(I(p->qWorldY) + p->unk25, I(p->qWorldX), 0, +8, &sp08[0], sub_805217C);
                        if (res >= r1) {
                            if (!(p->moveState & MOVESTATE_GRAVITY_SWITCHED)) {
                                p->unk27 = TRUE;
                                continue;
                            }
                        } else {
                            goto skip_other_check;
                        }
                    }
                    // _08039490

                    res = sub_80519EC(I(p->qWorldY) - p->unk25, I(p->qWorldX), 0, -8, &sp08[0], sub_805217C);
                    if (res < r1) {
                        // _080394B8
                    skip_other_check:
                        if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
                            p->qWorldY -= Q(res);
                        } else {
                            p->qWorldY += Q(res);
                        }

                        if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
                            sp08[0] += 0x80;
                        }
                        // _080394F0

                        p->unk26 = sp08[0];

                        p->unkA4 = rail->unkD;

                        SetPlayerCallback(p, Player_80098D8);
                        return;
                    } else {
                        p->unk27 = TRUE;
                    }
                }
            }
        }
    }
}
END_NONMATCH
