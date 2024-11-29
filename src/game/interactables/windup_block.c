#include "global.h"
#include "module_unclear.h"
#include "core.h"
#include "sprite.h"
#include "trig.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
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
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ Sprite s2;
    /* 0x5C */ s16 worldX;
    /* 0x5E */ s16 worldY;

    /* 0x60 */ s16 unk60;
    /* 0x62 */ s16 unk62;
    /* 0x64 */ s16 unk64;
    /* 0x66 */ s16 unk66;
    /* 0x68 */ s16 unk68;
    /* 0x6A */ s16 unk6A;
    /* 0x6C */ u8 unk6C_05 : 6;
    /* 0x6C */ u8 unk6C_67 : 2;
    /* 0x6D */ u8 unk6D;
    /* 0x6E */ u8 unk6E;
    /* 0x6F */ u8 unk6F;
} WindupBlock;

void Task_WindupBlock(void);
void TaskDestructor_WindupBlock(struct Task *t);
void sub_804783C(WindupBlock *block);

extern const AnimId gPlayerCharacterIdleAnims[NUM_CHARACTERS];

void CreateEntity_WindupBlock(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_WindupBlock, sizeof(WindupBlock), 0x2100, 0, TaskDestructor_WindupBlock);
    WindupBlock *block = TASK_DATA(t);
    s32 worldX, worldY;
    Sprite *s;

    block->base.regionX = regionX;
    block->base.regionY = regionY;
    block->base.me = me;
    block->base.spriteX = me->x;
    block->base.id = id;

    worldX = TO_WORLD_POS(me->x, regionX);
    block->worldX = worldX;
    block->unk64 = worldX;
    block->unk68 = worldX;

    worldY = TO_WORLD_POS(me->y, regionY);
    block->worldY = worldY;
    block->unk66 = worldY;
    block->unk6A = worldY;
    block->unk6C_05 = 0;
    block->unk6E = 0;
    block->unk6F = me->d.uData[4] & 0x3;
    block->unk6D = 0;

    if (block->unk6F & 0x1) {
        block->unk6A -= 0x60;
        block->unk66 -= 0x10;
    } else if (!(block->unk6F & 0x2)) {
        block->unk68 += 0x60;
        block->unk64 += 0x10;
    } else {
        block->unk68 -= 0x60;
        block->unk64 -= 0x10;
    }

    block->unk60 = block->unk68;
    block->unk62 = block->unk6A;

    s = &block->s;
    s->x = block->worldX - gCamera.x;
    s->y = block->worldY - gCamera.y;

    s = &block->s2;
    s->x = block->unk68 - gCamera.x;
    s->y = block->unk6A - gCamera.y;

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_804783C(block);
}

#if 0
void Task_WindupBlock(void)
{
    WindupBlock *block = TASK_DATA(gCurTask);
    Sprite *s2 = &block->s2;
    Player *p;
    s16 i;
    s32 r8;

    for(i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        p = GET_SP_PLAYER_V0(i);

        if(sub_802C0D4(p)) {
            continue;
        }

        r8 = sub_8020950(s2, block->unk68, block->unk6A, p, 0);

        if(block->unk6F & 0x1) {
            // _080471DC

            if(block->unk6D != 0x2) {
                // _080471E6

                if((p->moveState & MOVESTATE_COLLIDING_ENT) && (p->sprColliding == s2)) {
                    s32 r2 = 0;

                    if(GAME_MODE_IS_SINGLE_PLAYER(gStageData.gameMode)) {

                    } else {
                        // _08047218
                        u16 r0 = p->charFlags.anim2 - gPlayerCharacterIdleAnims[p->charFlags.character];

                        if(r0 == 2 ||r0 == 5) {
                            r2 = 1;
                        }
                    }
                }
                // _080472AA

                // _08047302
            } else if(sub_8020700(s, block->unk68, block->unk6A, 0, p, 0)) {
                // _0804731E
                p->qSpeedAirY = -((block->unk6E + 8) * Q(0.4375));
                p->qWorldY -= Q(8);

                sub_8016F28(p);

                p->qCamOffsetY = 0;
                p->moveState &= ~MOVESTATE_40;
                p->moveState |= MOVESTATE_IN_AIR;

                SetPlayerCallback(p, Player_800DB30);
                continue;
            }
        } else if(r8 & 0x10000) {
            // _08047364
            p->qWorldY += Q_8_8(r8);
            p->qSpeedAirY = Q(0);
        } else if(r8 & 0x20000) {
            p->qWorldY += Q_8_8(r8) + Q(1);
            p->qSpeedAirY = Q(0);
        }

        // _0804739E
        if(r8 & 0xC0000) {
            if(block->unk6D != 2) {
                if(!(block->unk6F & 0x2)) {
                    if(r8 & 0x40000) {
                        // _080473DA
                        if(block->unk68 > block->unk64) {
                            // _080473EC
                            p->qWorldX += Q_8_8(r8 >> 8);
                        } else {
                            // _08047508
                            p->qWorldX += Q_8_8(r8)
                        }
                        // _0804751C
                        p->qSpeedAirX = 0;
                        p->qSpeedGround = 0;
                    }
                } else {
                    // _08047460
                }
                // _08047508
            } else {
                // _080475E4
            }
        } else {
            continue;
        }
    }
    // _08047666
}
#endif
