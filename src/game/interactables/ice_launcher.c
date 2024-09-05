#include "global.h"
#include "module_unclear.h"
#include "task.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/stage.h"
#include "game/player_callbacks.h"

#include "constants/move_states.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ u8 filler34[0x10];
    /* 0x44 */ Sprite s2;
    /* 0x6C */ void *tiles;
    /* 0x70 */ s16 worldX;
    /* 0x72 */ s16 worldY;
    /* 0x74 */ s8 unk74;
    /* 0x75 */ s8 unk75;
} IceLauncher; /* size: 0x78 */

void Task_IceLauncher(void);
void TaskDestruction_IceLauncher(struct Task *);
void sub_803F188(IceLauncher *);
void sub_803F1D4(void);

void CreateEntity_IceLauncher(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_IceLauncher, sizeof(IceLauncher), 0x2100, 0, TaskDestruction_IceLauncher);
    IceLauncher *launcher = TASK_DATA(t);
    Sprite *s;

    launcher->base.regionX = regionX;
    launcher->base.regionY = regionY;
    launcher->base.me = me;
    launcher->base.spriteX = me->x;
    launcher->base.id = id;
    launcher->tiles = NULL;
    launcher->worldX = TO_WORLD_POS(me->x, regionX);
    launcher->worldY = TO_WORLD_POS(me->y, regionY);
    launcher->unk74 = -1;
    launcher->unk75 = -1;

    s = &launcher->s;
    s->x = launcher->worldX - gCamera.x;
    s->y = launcher->worldY - gCamera.y;

    s = &launcher->s2;
    s->x = launcher->worldX - gCamera.x;
    s->y = launcher->worldY - gCamera.y;

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_803F188(launcher);
}

void Task_IceLauncher(void)
{
    IceLauncher *launcher = TASK_DATA(gCurTask);
    Sprite *s = &launcher->s;
    Player *p;
    s16 worldX, worldY;
    s16 i;

    worldX = launcher->worldX;
    worldY = launcher->worldY;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        // TODO: Maybe we should wrap this in a macro, if the ?-operator works everywhere else?
        p = (i == 0) ? &gPlayers[gStageData.charId] : &gPlayers[p->charFlags.partnerIndex];

        if (((p->callback != Player_800AB48) && (p->callback != Player_800E67C)) && (p->callback != Player_800E6CC)) {
            if (!sub_802C080(p) && sub_8020700(s, worldX, worldY, 2, p, 0)) {
                p->qUnk70 = Q(worldX);
                p->qUnk74 = Q(worldY);
                SetPlayerCallback(p, (void *)Player_800AAC0);
                sub_8016F28(p);

                if (launcher->unk74 == -1) {
                    launcher->unk74 = 62;
                } else if (launcher->unk75 == -1) {
                    launcher->unk75 = 62;
                }
            } else {
                if ((p->charFlags.someIndex == 1) || (p->charFlags.someIndex == 2) || (p->charFlags.someIndex == 4)) {
                    if (!sub_802C0D4(p)) {
                        u32 res = sub_8020950(s, worldX, worldY, p, NULL);
                        if (res) {
                            if (res & 0x10000) {
                                p->qWorldY += Q_8_8(res);
                            } else if (res & 0x20000) {
                                p->qWorldY += Q_8_8(res);

                                if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
                                    p->qWorldY -= Q(1);
                                } else {
                                    p->qWorldY += Q(1);
                                }
                                p->qSpeedAirY = 0;
                            }

                            if (res & 0xC0000) {
                                p->qWorldX += Q((s16)res >> 8);
                                p->qSpeedAirX = Q(0);
                                p->qSpeedGround = Q(0);
                            }
                        }
                    }
                }
            }
        }
    }

    sub_803F1D4();
}

#if 01
#endif
