#include "global.h"
#include "module_unclear.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/stage.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s[2];
    /* 0x5C */ u8 unk5C;
    /* 0x5D */ u8 unk5D;
    /* 0x5E */ s16 unk5E;
    /* 0x60 */ s16 unk60;
    /* 0x62 */ s16 worldX;
    /* 0x64 */ s16 worldY;
    /* 0x68 */ void *tiles;
} ClosingWall; /* 0x6C */

void Task_ClosingWall(void);
void sub_804AC58(ClosingWall *);
void sub_804ACF0(void);
void TaskDestructor_ClosingWall(struct Task *);

void CreateEntity_ClosingWall(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_ClosingWall, sizeof(ClosingWall), 0x2100, 0, TaskDestructor_ClosingWall);
    ClosingWall *wall = TASK_DATA(t);
    Sprite *s;

    wall->base.regionX = regionX;
    wall->base.regionY = regionY;
    wall->base.me = me;
    wall->base.spriteX = me->x;
    wall->base.id = id;

    wall->unk5C = 0;
    wall->unk5D = 0;
    wall->unk5E = me->d.uData[2] * (TILE_WIDTH / 2);
    wall->unk60 = gStageData.timer;
    wall->worldX = TO_WORLD_POS(me->x, regionX);
    wall->worldY = TO_WORLD_POS(me->y, regionY);

    s = &wall->s[0];
    s->x = wall->worldX;
    s->y = wall->worldY;

    s = &wall->s[1];
    s->x = wall->worldX;
    s->y = wall->worldY;

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_804AC58(wall);
}

// (94.46%) https://decomp.me/scratch/BEkaq
#if 0
void Task_ClosingWall(void)
{
    ClosingWall *wall = TASK_DATA(gCurTask);
    s16 sp4, sp8, spC, sp10;
    s16 worldX, worldY;
    s16 i, j;

    if (wall->unk5C != 2) {
        sp4 = wall->worldX - wall->unk5E;
        spC = wall->worldX + wall->unk5E;
        sp8 = wall->worldY - 24;
        sp10 = wall->worldY + 24;
    } else {
        // _0804AA78
        sp4 = 0;
        spC = 0;
        sp8 = 0;
        sp10 = 0;
    }
    // _0804AA88

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p = (i == 0) ? &gPlayers[gStageData.charId] : &gPlayers[p->charFlags.partnerIndex];

        for (j = 0; j < (s32)ARRAY_COUNT(wall->s); j++) {
            // _0804AAD2_inner_loop
            Sprite *s = &wall->s[j];
            s16 r4;
            worldX = (s32)wall->worldX;

            if (j != 0) {
                r4 = wall->worldX + wall->unk5E;
            } else {
                r4 = wall->worldX - wall->unk5E;
            }

            worldY = wall->worldY;
            if (!sub_802C0D4(p)) {
                s32 res = sub_8020950(s, r4, worldY, p, 0);

                if (res & 0x10000) {
                    p->qWorldY += Q_8_8(res);
                } else if (res & 0x20000) {
                    p->qWorldY += Q_8_8(res) + Q(1);
                    p->qSpeedAirY = 0;
                }

                if (res & 0xC0000) {
                    p->qWorldX += Q_8_8((s16)res >> 8);
                    p->qSpeedAirX = 0;
                    p->qSpeedGround = 0;
                }
                // _0804AB76

                if (wall->unk5C == 2) {
                    continue;
                }

                worldX = I(p->qWorldX);
                worldY = I(p->qWorldY);
                if ((worldX <= sp4) || (worldX >= spC) || (worldY <= sp8) || (worldY >= sp10)) {
                    continue;
                }

                if (wall->unk5C == 0) {
                    if ((p->charFlags.someIndex == 2) || (p->charFlags.someIndex == 5)) {
                        continue;
                    }

                    wall->unk5C = 1;
                } else {
                    // _0804ABD2
                    if (wall->unk5E < 38) {
                        if (!sub_802C080(p)) {
                            sub_8008E38(p);
                        }
                    }
                }
            }
        }
    }
    // _0804AC0A

    if (wall->unk5C == 1) {
        s16 time = gStageData.timer - wall->unk60;

        if ((wall->unk5E <= 32) || ((wall->unk5E -= time) <= 32)) {
            wall->unk5C = 2;
        }
    }
    // _0804AC3A
    wall->unk60 = gStageData.timer;

    sub_804ACF0();
}
#endif
