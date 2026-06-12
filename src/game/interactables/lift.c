#include "global.h"
#include "malloc_vram.h"
#include "sprite.h"
#include "game/game_over.h"
#include "game/shared/entities_manager.h"
#include "game/shared/stage/camera.h"
#include "game/shared/stage/entity.h"
#include "game/shared/stage/player.h"
#include "game/shared/stage/player_callbacks.h"
#include "game/stage.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"
#include "constants/songs.h"

#define LIFT_SPRITE_PLATFORM   0
#define LIFT_SPRITE_CHAIN_LINK 1
#define LIFT_SPRITE_HANDLE     2

#define LIFT_VERTICAL_SPEED       Q(2)
#define LIFT_MINIMUM_CHAIN_LENGTH Q(8)
#define LIFT_MAXIMUM_CHAIN_LENGTH Q(120) // Also the resting length when idle

typedef struct {
    /* 0x00 */ SpriteBase base;
    /* 0x0C */ Sprite s[3];
    /* 0x84 */ s32 worldX;
    /* 0x88 */ s32 worldY;
    /* 0x8C */ s16 qChainLength;
    /* 0x8E */ bool8 playerHoldsHandle[NUM_SINGLE_PLAYER_CHARS];
} Lift; /* 0x90 */

void Task_LiftIdle(void);
void TaskDestructor_Lift(struct Task *t);
void Task_LiftLiftPlayerUp(void);
void Task_LiftBringHandleBackDown(void);
void Task_LiftDrawSpritesOrDestroy(void);
void Task_LiftInitSprites(Sprite *spritePlatform, Sprite *spriteChainLink, Sprite *spriteHandle);

void CreateEntity_Lift(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_LiftIdle, sizeof(Lift), 0x2100, 0, TaskDestructor_Lift);
    Lift *lift = TASK_DATA(t);

    lift->base.regionX = regionX;
    lift->base.regionY = regionY;
    lift->base.me = me;
    lift->base.meX = me->x;
    lift->base.id = id;

    lift->qChainLength = LIFT_MAXIMUM_CHAIN_LENGTH;
    lift->playerHoldsHandle[0] = FALSE;
    lift->playerHoldsHandle[1] = FALSE;

    lift->worldX = TO_WORLD_POS(lift->base.meX, lift->base.regionX);
    lift->worldY = TO_WORLD_POS(me->y, lift->base.regionY) - 32;

    SET_MAP_ENTITY_INITIALIZED(me);

    Task_LiftInitSprites(&lift->s[LIFT_SPRITE_PLATFORM], &lift->s[LIFT_SPRITE_CHAIN_LINK], &lift->s[LIFT_SPRITE_HANDLE]);
}

void Task_LiftIdle(void)
{
    Sprite *spritePlatform;
    Sprite *spriteHandle;
    Player *p;
    u8 i;

    bool32 handleHeld = 0;
    Lift *lift = TASK_DATA(gCurTask);
    spritePlatform = &lift->s[LIFT_SPRITE_PLATFORM];
    spriteHandle = &lift->s[LIFT_SPRITE_HANDLE];

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        lift->playerHoldsHandle[i] = FALSE;
        p = GET_SP_PLAYER_V1(i);

        if (!sub_802C0D4(p)) {
            u32 res = sub_8020950(spritePlatform, lift->worldX, lift->worldY, p, 0);

            if (res & 0x10000) {
                p->qWorldY += Q_8_8(res);
            }

            if (sub_8020700(spriteHandle, lift->worldX, lift->worldY + I(LIFT_MAXIMUM_CHAIN_LENGTH), 0, p, 0) == TRUE) {
                sub_8016F28(p);

                p->charFlags.unk2C_04 = 0;

                SetPlayerCallback(p, Player_800A168);

                lift->playerHoldsHandle[i] = TRUE;
                handleHeld = TRUE;
            }
        }
    }

    if (handleHeld) {
        sub_8003DF0(SE_LIFT);
        gCurTask->main = Task_LiftLiftPlayerUp;
    }

    Task_LiftDrawSpritesOrDestroy();
}

void Task_LiftLiftPlayerUp(void)
{
    Lift *lift = TASK_DATA(gCurTask);
    Sprite *spritePlatform = &lift->s[LIFT_SPRITE_PLATFORM];
    Sprite *spriteHandle = &lift->s[LIFT_SPRITE_HANDLE];
    s32 worldX, worldY;
    u8 i;

    lift->qChainLength -= LIFT_VERTICAL_SPEED;

    if (lift->qChainLength < LIFT_MINIMUM_CHAIN_LENGTH) {
        lift->qChainLength = LIFT_MINIMUM_CHAIN_LENGTH;
        sub_8003E28(SE_LIFT);
    }

    worldX = lift->worldX;
    worldY = lift->worldY + I(lift->qChainLength);

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p = GET_SP_PLAYER_V1(i);

        if ((p->charFlags.someIndex != 1) && (p->charFlags.someIndex != 2) && (p->charFlags.someIndex != 4)) {
            lift->playerHoldsHandle[i] = FALSE;
        } else {
            if (!sub_802C0D4(p)) {
                u32 res = sub_8020950(spritePlatform, lift->worldX, lift->worldY, p, 0);

                if (res & 0x10000) {
                    p->qWorldY += Q_8_8(res);
                }
            }

            if (p->moveState & (MOVESTATE_1000000 | MOVESTATE_DEAD)) {
                p->moveState &= ~MOVESTATE_10000000;
                lift->playerHoldsHandle[i] = FALSE;
            }

            if (p->callback == Player_800D944) {
                p->moveState &= ~MOVESTATE_10000000;
                lift->playerHoldsHandle[i] = FALSE;
            }

            if (lift->playerHoldsHandle[i] != FALSE) {
                p->charFlags.anim0 = 122;

                p->qSpeedAirX = Q(0);
                p->qSpeedAirY = Q(0);

                if (p->moveState & MOVESTATE_FACING_LEFT) {
                    p->qWorldX = Q(worldX) + Q(4);
                } else {
                    p->qWorldX = Q(worldX) - Q(4);
                }

                p->qWorldY = Q(worldY) + Q(40);

                if (p->keyInput2 & gStageData.buttonConfig.jump) {
                    p->moveState &= ~MOVESTATE_10000000;

                    SetPlayerCallback(p, Player_800A094);

                    p->qSpeedAirY = -Q(5);
                    p->qSpeedAirX = +Q(0);
                    lift->playerHoldsHandle[i] = FALSE;
                }
            } else if ((!sub_802C0D4(p)) && (p->qSpeedAirY > 0)) {
                if (sub_8020700(spriteHandle, lift->worldX, lift->worldY + I(lift->qChainLength), 0, p, 0) == TRUE) {
                    sub_8016F28(p);

                    p->charFlags.unk2C_04 = 0;

                    SetPlayerCallback(p, Player_800A168);

                    lift->playerHoldsHandle[i] = TRUE;
                }
            }
        }
    }

    if ((lift->playerHoldsHandle[0] == FALSE) && (lift->playerHoldsHandle[1] == FALSE)) {
        sub_8003E28(SE_LIFT);
        gCurTask->main = Task_LiftBringHandleBackDown;
    }

    Task_LiftDrawSpritesOrDestroy();
}

void Task_LiftBringHandleBackDown(void)
{
    Lift *lift = TASK_DATA(gCurTask);
    Sprite *spritePlatform = &lift->s[LIFT_SPRITE_PLATFORM];
    Player *p;
    u8 i;

    lift->qChainLength += LIFT_VERTICAL_SPEED;

    if (lift->qChainLength >= LIFT_MAXIMUM_CHAIN_LENGTH) {
        lift->qChainLength = LIFT_MAXIMUM_CHAIN_LENGTH;
        gCurTask->main = Task_LiftIdle;
    }

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        p = GET_SP_PLAYER_V1(i);

        if (!sub_802C0D4(p)) {
            u32 res = sub_8020950(spritePlatform, lift->worldX, lift->worldY, p, 0);

            if (res & 0x10000) {
                p->qWorldY += Q_8_8(res);
            }
        }
    }

    Task_LiftDrawSpritesOrDestroy();
}

void Task_LiftInitSprites(Sprite *spritePlatform, Sprite *spriteChainLink, Sprite *spriteHandle)
{
    void *tiles = VramMalloc(MAX_TILES_VARIANT(ANIM_LIFT, 0) + MAX_TILES_VARIANT(ANIM_LIFT, 1) + MAX_TILES_VARIANT(ANIM_LIFT, 2));

    spritePlatform->tiles = tiles;
    spritePlatform->oamFlags = SPRITE_OAM_ORDER(24);
    spritePlatform->anim = ANIM_LIFT;
    spritePlatform->variant = 2;
    spritePlatform->qAnimDelay = Q(0);
    spritePlatform->prevVariant = -1;
    spritePlatform->animSpeed = SPRITE_ANIM_SPEED(1.0);
    spritePlatform->palId = 0;
    spritePlatform->x = 0;
    spritePlatform->y = 0;
    spritePlatform->frameFlags = SPRITE_FLAG(PRIORITY, 1);

    tiles += MAX_TILES_VARIANT(ANIM_LIFT, 2) * TILE_SIZE_4BPP;
    spriteChainLink->tiles = tiles;
    spriteChainLink->oamFlags = SPRITE_OAM_ORDER(25);
    spriteChainLink->anim = ANIM_LIFT;
    spriteChainLink->variant = 1;
    spriteChainLink->qAnimDelay = Q(0);
    spriteChainLink->prevVariant = -1;
    spriteChainLink->animSpeed = SPRITE_ANIM_SPEED(1.0);
    spriteChainLink->palId = 0;
    spriteChainLink->x = 0;
    spriteChainLink->y = 0;
    spriteChainLink->frameFlags = SPRITE_FLAG(PRIORITY, 1);

    tiles += MAX_TILES_VARIANT(ANIM_LIFT, 1) * TILE_SIZE_4BPP;
    spriteHandle->tiles = tiles;
    spriteHandle->oamFlags = SPRITE_OAM_ORDER(24);
    spriteHandle->anim = ANIM_LIFT;
    spriteHandle->variant = 0;
    spriteHandle->qAnimDelay = Q(0);
    spriteHandle->prevVariant = -1;
    spriteHandle->animSpeed = SPRITE_ANIM_SPEED(1.0);
    spriteHandle->palId = 0;
    spriteHandle->x = 0;
    spriteHandle->y = 0;
    spriteHandle->frameFlags = SPRITE_FLAG(PRIORITY, 1);

    UpdateSpriteAnimation(spritePlatform);
    UpdateSpriteAnimation(spriteChainLink);
    UpdateSpriteAnimation(spriteHandle);
}

void Task_LiftDrawSpritesOrDestroy(void)
{
    Lift *lift = TASK_DATA(gCurTask);
    Sprite *s = &lift->s[LIFT_SPRITE_PLATFORM];
    MapEntity *me = lift->base.me;

    s16 screenX, screenYPlatform;
    s16 worldX, worldY;
    s16 handleY, linkY;

    worldX = screenX = lift->worldX;
    worldY = screenYPlatform = lift->worldY;
    handleY = (worldY - gCamera.y) + I(lift->qChainLength);

    s->x = worldX - gCamera.x;
    s->y = worldY - gCamera.y;

    if (((lift->playerHoldsHandle[0] == FALSE) && (lift->playerHoldsHandle[1] == FALSE))
        && !sub_802C140(worldX, worldY + 0x20, s->x, s->y)) {
        SET_MAP_ENTITY_NOT_INITIALIZED(me, lift->base.meX);
        TaskDestroy(gCurTask);
        return;
    }

    screenX = s->x;
    screenYPlatform = s->y;
    SPRITE_FLAG_SET(s, X_FLIP);
    DisplaySprite(s);
    SPRITE_FLAG_CLEAR(s, X_FLIP);
    DisplaySprite(s);

    s = &lift->s[LIFT_SPRITE_HANDLE];
    s->x = screenX;
    s->y = handleY;
    linkY = handleY;
    SPRITE_FLAG_SET(s, X_FLIP);
    DisplaySprite(s);
    SPRITE_FLAG_CLEAR(s, X_FLIP);
    DisplaySprite(s);

    s = &lift->s[LIFT_SPRITE_CHAIN_LINK];

    for (; linkY > screenYPlatform; linkY -= 16) {
        s->x = screenX;
        s->y = linkY;
        DisplaySprite(s);
    }
}

void TaskDestructor_Lift(struct Task *t)
{
    Lift *lift = TASK_DATA(t);
    VramFree(lift->s->tiles);
}
