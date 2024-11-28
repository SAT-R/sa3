#include "global.h"
#include "core.h"
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
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Player *players[NUM_SINGLE_PLAYER_CHARS];
    /* 0x14 */ Sprite s;
    /* 0x3C */ u8 unk3C;
    /* 0x3D */ u8 unk3D;
    /* 0x3E */ s16 worldX;
    /* 0x40 */ s16 worldY;
} AccordionSpring; /* 0x44 */

void Task_AccordionSpringMain(void);
void Task_803F6D8(void);
void Task_803F8A0(void);
bool32 sub_803F938(Player *);
void sub_803F9F0(Sprite *);
bool32 sub_803FA5C(void);
void TaskDestructor_AccordionSpring(struct Task *);

void CreateEntity_AccordionSpring(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_AccordionSpringMain, sizeof(AccordionSpring), 0x2100, 0, TaskDestructor_AccordionSpring);
    AccordionSpring *spring = TASK_DATA(t);
    Sprite *s = &spring->s;
    s16 i;

    spring->base.regionX = regionX;
    spring->base.regionY = regionY;
    spring->base.me = me;
    spring->base.spriteX = me->x;
    spring->base.id = id;
    spring->unk3C = 0;
    spring->unk3D = 0;

    spring->players[0] = &gPlayers[gStageData.playerIndex];
    spring->players[1] = &gPlayers[spring->players[0]->charFlags.partnerIndex];

    spring->worldX = TO_WORLD_POS(me->x, regionX);
    spring->worldY = TO_WORLD_POS(me->y, regionY);

    s->x = spring->worldX;
    s->y = spring->worldY;

    SET_MAP_ENTITY_INITIALIZED(me);

    sub_803F9F0(s);
}

void Task_AccordionSpringMain(void)
{
    AccordionSpring *spring = TASK_DATA(gCurTask);
    Sprite *s = &spring->s;
    Player *p;
    u8 i;
    u8 r6 = 0;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        p = spring->players[i];

        if (sub_802C0D4(p)) {
            ClearBit(r6, i);
        } else if (sub_803F938(p)) {
            SetBit(r6, i);
        }
    }

    if (r6) {
        spring->unk3C = 0;
        spring->unk3D = r6;
#ifndef NON_MATCHING
        spring->unk3C = 0;
#endif
        s->variant = 1;
        s->prevVariant = -1;

        gCurTask->main = Task_803F6D8;
    }

    sub_803FA5C();
}

void Task_803F6D8(void)
{
    AccordionSpring *spring = TASK_DATA(gCurTask);
    Sprite *s = &spring->s;
    Player *p;
    u8 i;
    u8 sl = 0;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        p = spring->players[i];

        if (sub_802C0D4(p)) {
            ClearBit(spring->unk3D, i);
        } else if (GetBit(spring->unk3D, i)) {
            if (p->keyInput2 & gStageData.buttonConfig.jump) {
                SetBit(sl, i);
            } else {
                p->qWorldY += Q(8);

                if (!sub_803F938(p)) {
                    p->qWorldY -= Q(8);
                    ResolvePlayerSpriteCollision(s, p);
                }
            }
        } else if (sub_803F938(p)) {
            SetBit(spring->unk3D, i);
        }
    }

    if ((++spring->unk3C == 24) || sl) {
        for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            p = spring->players[i];

            if ((p->charFlags.someIndex == 1) || (p->charFlags.someIndex == 2) || (p->charFlags.someIndex == 4)) {
                if (!sub_802C0D4(p)) {
                    if (sub_803F938(p)) {
                        if (GetBit(spring->unk3D, i)) {
                            if (sl) {
                                p->qSpeedAirY = -Q(4) - spring->unk3C * 112;
                                Player_8009E8C(p);
                            } else {
                                p->qSpeedAirY = -Q(4);
                                Player_8009E8C(p);
                            }
                        } else {
                            p->qSpeedAirY = 0;
                        }
                    } else {
                        if (i != 0) {
                            spring->unk3D &= 0x2;
                        } else {
                            spring->unk3D &= 0x1;
                        }
                    }

                    Player_PlaySong(p, SE_ACCORDION_SPRING);
                }
            }
        }

        spring->unk3C = 0;
        s->variant = 2;
        s->prevVariant = -1;
        gCurTask->main = Task_803F8A0;
    }

    sub_803FA5C();
}

void Task_803F8A0(void)
{
    AccordionSpring *spring = TASK_DATA(gCurTask);
    Sprite *s = &spring->s;
    Player *p;
    u8 i;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        p = spring->players[i];

        if ((p->charFlags.someIndex == 1) || (p->charFlags.someIndex == 2) || (p->charFlags.someIndex == 4)) {
            if (!sub_802C0D4(p) && sub_803F938(p)) {
                p->qSpeedAirY = -Q(4);
                Player_8009E8C(p);
            }
        }
    }

    if (++spring->unk3C == 20) {
        s->variant = 0;
        s->prevVariant = -1;
        gCurTask->main = Task_AccordionSpringMain;
    }

    sub_803FA5C();
}

bool32 sub_803F938(Player *p)
{
    AccordionSpring *spring = TASK_DATA(gCurTask);
    Sprite *s = &spring->s;
    s16 worldX, worldY;
    u32 res;

    worldY = spring->worldY;
    worldX = spring->worldX;

    res = sub_8020950(s, worldX, worldY, p, 0);

    if (res & 0x10000) {
        p->qWorldY += Q_8_8(res);
        p->qSpeedAirY = Q(0);

        return TRUE;
    } else if (res & 0xC0000) {
        p->qWorldX += Q((s16)res >> 8);
        p->qSpeedAirX = 0;
        p->qSpeedGround = 0;

        if ((res & 0x40000) && (p->keyInput & DPAD_LEFT)) {
            p->qWorldX -= Q(1);
            p->moveState |= MOVESTATE_40;
        } else if ((res & 0x80000) && (p->keyInput & DPAD_RIGHT)) {
            p->qWorldX += Q(1);
            p->moveState |= MOVESTATE_40;
        }
    }

    return FALSE;
}

void sub_803F9F0(Sprite *s)
{
    if ((gStageData.zone == ZONE_6) && (gStageData.act != ACT_BONUS_ENEMIES)) {
        // s->tiles = ALLOC_TILES(ANIM_ACCORDION_SPRING_6);
        s->tiles = VramMalloc(0x16);
        s->anim = ANIM_ACCORDION_SPRING_6;
        s->variant = 0;
    } else {
        // s->tiles = ALLOC_TILES(ANIM_ACCORDION_SPRING_2);
        s->tiles = VramMalloc(0x2A);
        s->anim = ANIM_ACCORDION_SPRING_2;
        s->variant = 0;
    }

    s->oamFlags = SPRITE_OAM_ORDER(24);
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 1);

    UpdateSpriteAnimation(s);
}

bool32 sub_803FA5C(void)
{
    AccordionSpring *spring = TASK_DATA(gCurTask);
    MapEntity *me = spring->base.me;
    Sprite *s = &spring->s;
    s16 worldX, worldY;

    worldX = spring->worldX;
    worldY = spring->worldY;

    if (!IsWorldPtActive(worldX, worldY)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, spring->base.spriteX);
        TaskDestroy(gCurTask);
        return FALSE;
    } else {
        s->x = worldX - gCamera.x;
        s->y = worldY - gCamera.y;
        UpdateSpriteAnimation(s);

        if ((s->x >= -16) && (s->x < DISPLAY_WIDTH + 16) && (s->y >= 0) && (s->y < DISPLAY_HEIGHT + 20)) {
            DisplaySprite(s);
        }

        return TRUE;
    }
}

void TaskDestructor_AccordionSpring(struct Task *t)
{
    AccordionSpring *spring = TASK_DATA(t);
    VramFree(spring->s.tiles);
}
