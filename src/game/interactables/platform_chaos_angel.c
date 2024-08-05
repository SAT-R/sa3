#include "global.h"
#include "task.h"
#include "module_unclear.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/stage.h"

#include "constants/move_states.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ s16 worldX;
    /* 0x36 */ s16 worldY;
    /* 0x38 */ s32 qWorldX;
    /* 0x3C */ s32 qWorldY;
    /* 0x40 */ u16 unk40;
    /* 0x42 */ u8 unk42;
    /* 0x43 */ u8 unk43;
} PlatformCA; /* size: 0x44 */

void Task_PlatformChaosAngel(void);
void sub_804DB08(void);
void TaskDestructor_PlatformChaosAngel(struct Task *);
void sub_804DBF4(Sprite *s);

void CreateEntity_PlatformChaosAngel(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_PlatformChaosAngel, sizeof(PlatformCA), 0x2100, 0, TaskDestructor_PlatformChaosAngel);
    PlatformCA *platform = TASK_DATA(t);
    Sprite *s;

    platform->base.regionX = regionX;
    platform->base.regionY = regionY;
    platform->base.me = me;
    platform->base.spriteX = me->x;
    platform->base.id = id;

    platform->worldX = TO_WORLD_POS(me->x, regionX);
    platform->worldY = TO_WORLD_POS(me->y, regionY);

    platform->qWorldX = Q(platform->worldX);
    platform->qWorldY = Q(platform->worldY);

    platform->unk40 = 0;
    platform->unk42 = 0;
    platform->unk43 = 1;

    s = &platform->s;
    s->x = platform->worldX - gCamera.x;
    s->y = platform->worldY - gCamera.y;

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_804DBF4(s);
}

// (72.15%) https://decomp.me/scratch/xovXz
NONMATCH("asm/non_matching/game/interactables/platform_ca__Task_PlatformChaosAngel.inc", void Task_PlatformChaosAngel(void))
{
    PlatformCA *platform = TASK_DATA(gCurTask);
    Sprite *s = &platform->s;
    u32 r9 = 0;
    s32 qWorldX, qWorldY;
    s32 qWorldX32, qWorldY32;
    s32 qLeft, qTop;
    s16 i;

    if ((gStageData.unk4 == 4) || (platform->unk42 & 0x10)) {
        MapEntity *me = platform->base.me;
        u8 unk42 = (platform->unk42 & 0x7);

        platform->unk42 = ((platform->unk42 + 1) & 0xF) | 0x10;

        if ((platform->unk42 & 0xF) == 0) {
            platform->unk43 += 6;
        }

        if (platform->unk43 > 32) {
            platform->unk43 = 32;
        }

        platform->unk40 += platform->unk43 / 4;

        qWorldX = Q(platform->worldX);
        qWorldY = Q(platform->worldY);

        qTop = Q(me->d.sData[1] * TILE_WIDTH);
        qLeft = Q(me->d.sData[0] * TILE_WIDTH);

        qWorldX = platform->qWorldX;
        qWorldY = platform->qWorldY;

        qLeft = (qLeft * gStageData.unk5E[platform->worldX]) >> 10;
        qLeft += qWorldX;
        platform->qWorldX = qLeft;

        qTop = (qTop * gStageData.unk5E[platform->worldX]) >> 10;
        qTop += qWorldY;
        platform->qWorldY = qTop;

        qWorldX -= qLeft;
        qWorldY -= qTop;
    }

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p;

        if (i == 0) {
            p = &gPlayers[gStageData.charId];
        } else {
            p = &gPlayers[p->charFlags.partnerIndex];
        }

        if (!sub_802C0D4(p)) {
            s32 res;

            if ((p->moveState & MOVESTATE_20) && (p->spr6C == s)) {

                res = sub_80110E8(3, p, NULL, NULL);
                if (res > 0) {
                    s16 v = r9;
                    p->qWorldY += Q(4) + v;
                    asm("");
                } else {
                    p->qWorldY += Q(res);
                }
            }

            res = sub_8020950(s, I(platform->qWorldX), I(platform->qWorldY), p, NULL);

            if (res & 0x10000) {
                s16 res16 = Q(res);
                p->qWorldY += res16;
                p->qSpeedAirY = 0;
                platform->unk42 |= 0x10;
            }
        }
    }

    sub_804DB08();
}
END_NONMATCH

#if 0
void sub_804DB08(void)
{
    PlatformCA *platform = TASK_DATA(gCurTask);
    MapEntity *me = platform->base.me;
    Sprite *s;
    s32 qWorldX, qWorldY;
    s16 i;

    qWorldX = platform->qWorldX;
    qWorldY = platform->qWorldY;
    s = &platform->s;

    if(!IsPointInScreenRect(I(qWorldX), I(qWorldY))) {
        for(i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {

        }
    } else {

    }
}
#endif
