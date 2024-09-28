#include "global.h"
#include "module_unclear.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/player_callbacks.h"
#include "game/stage.h"

#include "constants/move_states.h"
#include "constants/songs.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ u8 filler34[0x8];
    /* 0x3C */ s32 qWorldX;
    /* 0x40 */ s32 qWorldY;
    /* 0x44 */ s32 unk44;
    /* 0x48 */ s16 unk48;
    /* 0x4A */ s16 unk4A;
} PlatformPropelled; /* size: 0x4C */

void Task_PlatformPropelled(void);
void TaskDestructor_PlatformPropelled(struct Task *t);
void sub_8042930(Sprite *);
void sub_80429D0(void);
void sub_8042AF0(Sprite *);

void CreateEntity_PlatformPropelled(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_PlatformPropelled, sizeof(PlatformPropelled), 0x2100, 0, TaskDestructor_PlatformPropelled);
    PlatformPropelled *platform = TASK_DATA(t);
    Sprite *s;

    platform->base.regionX = regionX;
    platform->base.regionY = regionY;
    platform->base.me = me;
    platform->base.spriteX = me->x;
    platform->base.id = id;

    platform->qWorldX = Q(TO_WORLD_POS(me->x, regionX));
    platform->qWorldY = Q(TO_WORLD_POS(me->y, regionY));
    platform->unk44 = 0;
    platform->unk48 = 0;
    platform->unk4A = 0;

    s = &platform->s;
    s->x = I(platform->qWorldX);
    s->y = I(platform->qWorldY);

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_8042AF0(s);
}

void Task_PlatformPropelled(void)
{
    PlatformPropelled *platform = TASK_DATA(gCurTask);
    Sprite *s = &platform->s;
    s32 qWorldX, qWorldY;
    u32 res;
    s16 i;

    qWorldX = platform->qWorldX;
    qWorldY = platform->qWorldY;

    sub_8042930(s);

    qWorldX -= platform->qWorldX;
    qWorldY -= platform->qWorldY;

    if (platform->unk4A != 0) {
        platform->unk4A--;
    }

    if (platform->unk4A > 30) {
        platform->unk48 = 40;
    } else {
        if (platform->unk48 != 0) {
            platform->unk48--;
        }
    }

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p = (i == 0) ? &gPlayers[gStageData.charId] : &gPlayers[p->charFlags.partnerIndex];

        if (((p->charFlags.someIndex == 1) || (p->charFlags.someIndex == 2) || (p->charFlags.someIndex == 4)) && !sub_802C0D4(p)) {
            if ((p->moveState & MOVESTATE_20) && (p->spr6C == s)) {
                p->qWorldX -= qWorldX;
                p->qWorldY += Q(4) - qWorldY;
            }

            if (platform->unk4A == 0) {
                if ((p->moveState & MOVESTATE_IN_AIR) && (p->qSpeedAirY > 0)) {
                    res = sub_8020874(s, I(platform->qWorldX), I(platform->qWorldY), 1, p, 0, 1);

                    if (res & 0x10000) {
                        sub_8003DF0(SE_PROPELLER_BUTTON);

                        p->qWorldY += Q_8_8(res);
                        platform->unk4A = 60;

                        p->qSpeedAirY = -Q(3.046875);
                        sub_8016F28(p);

                        SetPlayerCallback(p, Player_800DB30);
                    }
                }

                if ((p->charFlags.anim0 == 168) || (p->charFlags.anim0 == 184) || (p->charFlags.anim0 == 204)
                    || ((p->charFlags.anim0 == 213) && p->charFlags.state1 == 1) || (p->charFlags.anim0 == 230)
                    || (p->charFlags.anim0 == 254) || (p->charFlags.anim0 == 255)) {
                    if (sub_8020874(s, I(platform->qWorldX), I(platform->qWorldY), 1, p, 1, 1)) {
                        sub_8003DF0(SE_PROPELLER_BUTTON);
                        platform->unk4A = 60;
                    }
                }
            }

            res = sub_8020950(s, I(platform->qWorldX), I(platform->qWorldY), p, 0);

            if (res & 0x10000) {
                p->qWorldY += Q_8_8(res);
            } else if (res & 0x20000) {
                p->qWorldY += Q_8_8(res) + Q(1);
                p->qSpeedAirY = 0;

                if (sub_8012368(p) < 0) {
                    if (!sub_802C080(p)) {
                        sub_8008E38(p);
                    }
                } else {
                    if ((p->charFlags.anim0 == 238) || (p->charFlags.anim0 == 239) || (p->charFlags.anim0 == 244)
                        || (p->charFlags.anim0 == 245)) {
                        sub_8012FE0(p);
                        p->charFlags.anim0 = 24;
                        Player_800DAF4(p);
                    }
                }
            }

            if (res & 0xC0000) {
                p->qWorldX += Q((s16)res >> 8);
                p->qSpeedAirX = 0;
                p->qSpeedGround = 0;
            }
        }
    }

    sub_80429D0();
}
