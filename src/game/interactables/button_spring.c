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

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s;
    /* 0x34 */ u8 direction; // (x38)
    /* 0x35 */ u8 unk35; // (x3A)
    /* 0x36 */ u8 unk36;
    /* 0x36 */ u8 unk37;
    /* 0x36 */ u8 unk38;
} ButtonSpring;

void sub_8033374(void);
void sub_8033778(void);
void sub_80336A0(u8 direction, Sprite *s);
void sub_8033A30(struct Task *t);

extern void sub_8007044(Player *p);
extern u8 gUnknown_080CF468[];
extern s16 gUnknown_080CF470[][2];

void CreateSpringEnabledByButton(u8 direction, MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(sub_8033374, sizeof(ButtonSpring), 0x2100, 0, sub_8033A30);
    ButtonSpring *spring = TASK_DATA(t);
    Sprite *s = &spring->s;
    s16 i;

    spring->base.regionX = regionX;
    spring->base.regionY = regionY;

    spring->base.me = me;
    spring->base.spriteX = me->x;
    spring->base.id = id;
    spring->direction = direction;
    spring->unk38 = 0;

    for (i = 0; i < 8; i++) {
        if (GetBit(me->d.uData[4], i))
            break;
    }

    spring->unk35 = i;
    spring->unk36 = 0;
    spring->unk37 = me->d.sData[0];

    s->x = TO_WORLD_POS(me->x, regionX);
    s->y = TO_WORLD_POS(me->y, regionY);

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_80336A0(direction, s);
}

void sub_8033374(void)
{
    ButtonSpring *spring = TASK_DATA(gCurTask);
    Sprite *s = &spring->s;
    MapEntity *me = spring->base.me;
    u8 dir;
    s32 variant;

    Player *p;
    s16 worldX, worldY;
    s16 i;

    dir = spring->direction;
    variant = 0;
    if (dir > 1) {
        variant = 10;

        if (dir < 4) {
            variant = 5;
        }
    }

    worldX = TO_WORLD_POS(spring->base.spriteX, spring->base.regionX);
    worldY = TO_WORLD_POS(me->y, spring->base.regionY);

    if (GetBit(gStageData.springTimerEnableBits, spring->unk35) && (s->variant == variant && spring->unk36 == 0)) {
        s->variant = variant + 1;
        spring->unk36 = 1;
    } else if (!GetBit(gStageData.springTimerEnableBits, spring->unk35)) {
        if ((s->variant == variant + 2) && (spring->unk36 == 1) && (1)) {
            s->variant = variant + 4;
            spring->unk36 = 0;
        }
    }

    if (spring->unk36 != 0) {
        for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            u8 someIndex;
            s32 sb;
            s16 anim;

            p = GET_SP_PLAYER_V0(i);

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
                bool32 shouldSwapVerticalAcceleration = FALSE;

                if (!GetBit(spring->unk38, i)) {
                    SetBit(spring->unk38, i);
                    Player_PlaySong(p, SE_SPRING);
                }

                if ((s->variant) != (variant + 3)) {
                    s->variant = (variant + 3);
                }

                switch (spring->direction) {
                    case 0: {
                        p->charFlags.anim1 = -1;
                        goto lbl;
                    } break;

                    case 2:
                    case 3:
                    case 4:
                    case 6: {
                        goto lbl;
                    } break;

                    case 1:
                    case 5: {
                        goto lbl2;
                    } break;

                    case 7: {
                        shouldSwapVerticalAcceleration = TRUE;
                    } break;
                }

                if (shouldSwapVerticalAcceleration == FALSE) {
                lbl:
                    if (p->qSpeedAirX > 640) {
                        SetPlayerCallback(p, Player_8007044);
                    } else {
                        SetPlayerCallback(p, Player_8006F98);
                    }
                } else {
                lbl2:
                    SetPlayerCallback(p, Player_8009BF0);
                }

                {
                    s16 dirX = gUnknown_080CF470[spring->direction][0];
                    s16 dirY = gUnknown_080CF470[spring->direction][1];
                    p->charFlags.unk2C_04 = 1;

                    if (dirX != 0) {
                        p->qSpeedAirX = (gUnknown_080CF468[spring->unk37] * dirX) >> 4;
                    }

                    if (dirY != 0) {
                        p->qSpeedAirY = (gUnknown_080CF468[spring->unk37] * dirY) >> 4;
                    }

                    if (p->moveState & MOVESTATE_GRAVITY_SWITCHED) {
                        NEGATE(p->qSpeedAirY);
                    }
                }

                if (sb != 0) {
                    p->qSpeedAirX += p->qSpeedAirX >> 1;
                    p->qSpeedAirY += p->qSpeedAirY >> 1;
                }

            } else {
                ClearBit(spring->unk38, i);
            }
        }
    }

    sub_8033778();
}

void sub_80336A0(u8 direction, Sprite *s)
{
    s32 mask = 0;
    s32 variant;

    switch (direction) {
        case 1:
            mask = SPRITE_FLAG(Y_FLIP, 1);
            // fallthrough!!!
        case 0: {
            s->tiles = ALLOC_TILES_VARIANT(ANIM_BUTTON_SPRING_1, 0);
            s->variant = 0;
        } break;

        case 3:
            mask = SPRITE_FLAG(X_FLIP, 1);
            // fallthrough!!!
        case 2: {
            s->tiles = ALLOC_TILES_VARIANT(ANIM_BUTTON_SPRING_1, 5);
            s->variant = 5;
        } break;

        case 4:
        case 5:
        case 6:
        case 7: {
            s->tiles = ALLOC_TILES_VARIANT(ANIM_BUTTON_SPRING_1, 10);
            s->variant = 10;

            if (direction & 0x1) {
                mask = SPRITE_FLAG(Y_FLIP, 1);
            }

            if (direction & 0x2) {
                mask = SPRITE_FLAG(X_FLIP, 1);
            }
        } break;
    }

    if ((gStageData.zone == ZONE_6) && (gStageData.act != ACT_BONUS_ENEMIES)) {
        s->anim = ANIM_BUTTON_SPRING_6;
    } else {
        s->anim = ANIM_BUTTON_SPRING_1;
    }

    s->oamFlags = SPRITE_OAM_ORDER(24);
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = mask | SPRITE_FLAG(PRIORITY, 1);
    UpdateSpriteAnimation(s);
}

// TODO: Fix gotos and lack of clarity at the bottom
void sub_8033778(void)
{
    ButtonSpring *spring = TASK_DATA(gCurTask);
    Sprite *s;
    MapEntity *me = spring->base.me;
    s16 worldX, worldY;
    s16 i;
    u8 dir;
    s32 variant;

    worldX = TO_WORLD_POS(spring->base.spriteX, spring->base.regionX);
    worldY = TO_WORLD_POS(me->y, spring->base.regionY);

    s = &spring->s;

    if (!IsPointInScreenRect(worldX, worldY)) {
        for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            Player *p = GET_SP_PLAYER_V1(i);

            ResolvePlayerSpriteCollision(s, p);
        }

        SET_MAP_ENTITY_NOT_INITIALIZED(me, spring->base.spriteX);
        TaskDestroy(gCurTask);
        return;
    }

    dir = spring->direction;
    variant = 0;
    if (dir > 1) {
        variant = 10;

        if (dir < 4) {
            variant = 5;
        }
    }

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    if ((s16)UpdateSpriteAnimation(s) == ACMD_RESULT__ENDED) {
        u32 spriteVar = s->variant;
        u8 var = variant;

        if (spriteVar != var + 1) {
            if (spriteVar == var + 3) {
                if (GetBit(gStageData.springTimerEnableBits, spring->unk35)) {
                lbl3:
                    s->variant = variant + 2;
                } else {
                    s->variant = variant;
                    spring->unk36 = 0;
                }
            } else if (spriteVar == var + 4) {
                s->variant = variant;
            }
        } else {
            goto lbl3;
        }
    }

    DisplaySprite(s);
}

void CreateEntity_Interactable046(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    CreateSpringEnabledByButton(0, me, regionX, regionY, id);
}

void CreateEntity_Interactable047(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    CreateSpringEnabledByButton(1, me, regionX, regionY, id);
}

void CreateEntity_Interactable048(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    CreateSpringEnabledByButton(3, me, regionX, regionY, id);
}

void CreateEntity_Interactable049(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    CreateSpringEnabledByButton(2, me, regionX, regionY, id);
}

void CreateEntity_Interactable050(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    CreateSpringEnabledByButton(6, me, regionX, regionY, id);
}

void CreateEntity_Interactable051(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    CreateSpringEnabledByButton(7, me, regionX, regionY, id);
}

void CreateEntity_Interactable052(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    CreateSpringEnabledByButton(4, me, regionX, regionY, id);
}

void CreateEntity_Interactable053(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    CreateSpringEnabledByButton(5, me, regionX, regionY, id);
}

void sub_8033A30(struct Task *t)
{
    ButtonSpring *spring = TASK_DATA(t);
    VramFree(spring->s.tiles);
}