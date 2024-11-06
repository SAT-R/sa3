#include "global.h"
#include "module_unclear.h"
#include "core.h"
#include "sprite.h"
#include "trig.h"
#include "malloc_vram.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/player_callbacks.h"
#include "game/save.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"
#include "constants/songs.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ s16 worldX;
    /* 0x36 */ s16 worldY;
    /* 0x38 */ u8 direction;
    /* 0x39 */ u8 unk39;
    /* 0x3A */ u8 unk3A;
} Spring;

void Task_SpringMain(void);
void sub_802E0D8(void);
void sub_802DFC8(s16 direction, Sprite *s);
void TaskDestructor_Spring(struct Task *t);

void CreateEntity_Spring(u16 direction, MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_SpringMain, sizeof(Spring), 0x2100, 0, TaskDestructor_Spring);
    Spring *spring = TASK_DATA(t);
    Sprite *s = &spring->s;
    s32 absPosX;
    s32 absPosY;
    s32 negativeTwo;
    s16 MATCHING;
    s16 i;

    spring->base.regionX = regionX;
    spring->base.regionY = regionY;

    spring->base.me = me;
    spring->base.spriteX = me->x;
    spring->base.id = id;
    spring->direction = direction;
    spring->unk3A = 0;

    for (i = 0; i < 8; i++) {
        if ((me->d.uData[4] >> i) & 1)
            break;
    }

    spring->unk39 = i;

    spring->worldX = TO_WORLD_POS(me->x, regionX);
    spring->worldY = TO_WORLD_POS(me->y, regionY);

    s->x = spring->worldX - gCamera.x;
    s->y = spring->worldY - gCamera.y;

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_802DFC8(direction, s);
}

void Task_SpringMain(void)
{
    Spring *spring = TASK_DATA(gCurTask);
    Sprite *s = &spring->s;

    Player *p;
    s16 worldX, worldY;
    s16 i;

    worldX = spring->worldX;
    worldY = spring->worldY;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        u8 someIndex;
        u32 sb;
        s16 anim;

        if ((gStageData.gameMode == GAME_MODE_MP_SINGLE_PACK) && (i != 0)) {
            continue;
        }

        p = GET_SP_PLAYER_V1(i);

        if ((p->charFlags.someIndex != 0x1) && (p->charFlags.someIndex != 0x2) && (p->charFlags.someIndex != 0x4)) {
            continue;
        }

        if (sub_802C0D4(p))
            continue;

        sb = 0;

        anim = p->charFlags.anim0;
        if ((anim == 168) || (anim == 184) || (anim == 204) || ((anim == 213) && (p->charFlags.state1 == 1)) || (anim == 230)
            || (anim == 254) || (anim == 255) || (anim == 258) || (anim == 259) || (anim == 260) || (anim == 256)) {

            if (sub_8020700(s, worldX, worldY, 0, p, 1)) {
                sb = 1;
            }
        }

        if ((sb != 0) || (sub_8020700(s, worldX, worldY, 0, p, sb))) {
            bool32 shouldSwapVerticalAcceleration = FALSE; // for down-facing springs and swapped gravity

            if (((spring->unk3A >> i) & 1) == 0) {
                spring->unk3A |= (1 << i);
                sub_8004E98(p, SE_SPRING);
            }

            if ((s->variant & 1) == 0) {
                s->variant++;
            }

            switch (spring->direction) {
                case 0:
                case 2:
                case 3:
                case 4:
                case 6:
                case 8:
                case 9: {
                    shouldSwapVerticalAcceleration = FALSE;
                } break;

                case 1:
                case 5:
                case 7: {
                    shouldSwapVerticalAcceleration = TRUE;
                } break;
            }

            if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
                shouldSwapVerticalAcceleration = (shouldSwapVerticalAcceleration == FALSE) ? TRUE : FALSE;
            }

            if (sb != 0) {
                if (shouldSwapVerticalAcceleration == FALSE) {
                    if (p->qSpeedAirX > 640) {
                        SetPlayerCallback(p, sub_8009C94);
                    } else {
                        SetPlayerCallback(p, Player_800EA74);
                    }
                } else {
                    SetPlayerCallback(p, sub_8009D04);
                }
            } else if (shouldSwapVerticalAcceleration == FALSE) {
                if (p->qSpeedAirX > 640) {
                    SetPlayerCallback(p, Player_8009B4C);
                } else {
                    SetPlayerCallback(p, Player_800EA0C);
                }
            } else {
                SetPlayerCallback(p, sub_8009BF0);
            }

            {
                u8 direction = spring->direction;
                u8 otherVal = spring->unk39;
                p->unkA4 = ((direction & 0xF) << 4) | (otherVal & 0xF);
            }

        } else {
            spring->unk3A &= ~(1 << i);
        }
    }

    sub_802E0D8();
}
#if 0
void
sub_802DFC8(s16 direction, Sprite* param1) { // OK
	s32 mask = 0;
	s32 subAnim;
	s32 value;


	if (direction & 0x8) {
		subAnim = 0x6;

		value = (direction & 1);

		direction = (value * -1);
		direction |= value;
		mask = direction >> 31;
		mask &= 0x400;
	} else if (direction & 0x4) {
		subAnim = 0x4;

		if (direction & 0x2) {
			mask = 0x400;
		}

		if (direction & 0x1) {
			mask |= 0x800;
		}
	} else if (direction & 0x2) {
		subAnim = 0x2;

		if (direction & 0x1) {
			mask = 0x400;
		}
	} else {
		subAnim = 0;

		if (direction & 0x1) {
			mask = 0x800;
		}
	}

	if (gStageData.v3 != 0x7) {
		if ((gStageData.Act >= ACT_1) && (gStageData.Act <= ACT_BONUS_CAPSULE)) {
			if (gStageData.Zone == CYBER_TRACK) {
				param1->tiles = GetVramTileLocation(0x0F);
				param1->anim = SA3_ANIM__SPRING_CT;
			} else if (gStageData.Zone == TOY_KINGDOM) {
				param1->tiles = GetVramTileLocation(0x14);
				param1->anim = SA3_ANIM__SPRING_TK;
			} else {
				param1->tiles = GetVramTileLocation(0x14);
				param1->anim = SA3_ANIM__SPRING;
			}
		} else {
			param1->tiles = GetVramTileLocation(0x14);
			param1->anim = SA3_ANIM__SPRING;
		}
	}
	else {
		// _0802E094
		param1->tiles = GetVramTileLocation(0x14);
		param1->anim = SA3_ANIM__SPRING;
		mask |= 0x200;
	}

	//_802E0A6
	param1->subAnim = subAnim;
	param1->flags2 = 0x600;
	param1->animProgress = 0;
	param1->v16 = 0;
	param1->maxSubAnim = 0xFF;
	param1->v1C = 0x10;
	param1->palIndexVram = 0;
	param1->v20[0].v0 = -1;
	param1->flags = mask | 0x1000;
}

// _0802E15C
void
BETA_InitInteractable_Spring_Up(Interactable* sprite, u16 spriteRegionX, u16 spriteRegionY, u8 param3) {
	BETA_InitInteractable_Spring(0, sprite, spriteRegionX, spriteRegionY, param3);
}

// _0802E188
void
BETA_InitInteractable_Spring_Down(Interactable* sprite, u16 spriteRegionX, u16 spriteRegionY, u8 param3) {
	BETA_InitInteractable_Spring(1, sprite, spriteRegionX, spriteRegionY, param3);
}

// _0802E1B4
void
BETA_InitInteractable_Spring_Left(Interactable* sprite, u16 spriteRegionX, u16 spriteRegionY, u8 param3) {
	BETA_InitInteractable_Spring(3, sprite, spriteRegionX, spriteRegionY, param3);
}

// _0802E1E0
void
BETA_InitInteractable_Spring_Right(Interactable* sprite, u16 spriteRegionX, u16 spriteRegionY, u8 param3) {
	BETA_InitInteractable_Spring(2, sprite, spriteRegionX, spriteRegionY, param3);
}

// _0802E20C
void
BETA_InitInteractable_Spring_UpLeft(Interactable* sprite, u16 spriteRegionX, u16 spriteRegionY, u8 param3) {
	BETA_InitInteractable_Spring(6, sprite, spriteRegionX, spriteRegionY, param3);
}

// _0802E238
void
BETA_InitInteractable_Spring_DownLeft(Interactable* sprite, u16 spriteRegionX, u16 spriteRegionY, u8 param3) {
	BETA_InitInteractable_Spring(7, sprite, spriteRegionX, spriteRegionY, param3);
}

// _0802E264
void
BETA_InitInteractable_Spring_UpRight(Interactable* sprite, u16 spriteRegionX, u16 spriteRegionY, u8 param3) {
	BETA_InitInteractable_Spring(4, sprite, spriteRegionX, spriteRegionY, param3);
}

// _0802E290
void
BETA_InitInteractable_Spring_DownRight(Interactable* sprite, u16 spriteRegionX, u16 spriteRegionY, u8 param3) {
	BETA_InitInteractable_Spring(5, sprite, spriteRegionX, spriteRegionY, param3);
}

// _0802E2BC
void
BETA_InitInteractable_Spring_UpRightCut(Interactable* sprite, u16 spriteRegionX, u16 spriteRegionY, u8 param3) {
	BETA_InitInteractable_Spring(8, sprite, spriteRegionX, spriteRegionY, param3);
}

// _0802E2E8
void
BETA_InitInteractable_Spring_UpLeftCut(Interactable* sprite, u16 spriteRegionX, u16 spriteRegionY, u8 param3) {
	BETA_InitInteractable_Spring(9, sprite, spriteRegionX, spriteRegionY, param3);
}

// _0802E314
void
_sub_802E314(struc_30020F0 *param0) {
	Entity* entity = (Entity*)IWRAM_POINTER(param0->v6);
	sub_80C3304(spring->vC.union0._u32.v0);
}
#endif