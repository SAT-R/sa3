#include "global.h"
#include "core.h"
#include "flags.h"
#include "module_unclear.h"
#include "malloc_vram.h"
#include "game/camera.h"
#include "game/entity.h"
#include "game/player.h"
#include "game/player_callbacks.h"
#include "game/stage.h"
#include "game/screen_fade.h"

#include "constants/animations.h"
#include "constants/anim_sizes.h"
#include "constants/move_states.h"
#include "constants/songs.h"
#include "constants/zones.h"

typedef struct {
    u32 unk0;
    u8 unk4;
    u8 filler5[0xF];
    Sprite s;
} CapsuleEC;

typedef struct {
    /* 0x000 */ SpriteBase base;
    /* 0x00C */ u8 unkC;
    /* 0x00D */ u8 unkD;
    /* 0x00E */ u8 unkE;
    /* 0x00F */ u8 unkF;
    /* 0x010 */ u8 unk10;
    /* 0x011 */ u8 unk11;
    /* 0x012 */ u8 unk12;
    /* 0x013 */ u8 unk13;
    /* 0x014 */ u8 filler14[0x2];
    /* 0x016 */ u16 timer;
    /* 0x018 */ u16 unk18;
    /* 0x01C */ s32 unk1C;
    /* 0x020 */ s32 unk20;
    /* 0x024 */ s32 unk24;
    /* 0x028 */ s32 unk28;
    /* 0x02C */ u16 unk2C;
    /* 0x02E */ u16 unk2E;
    /* 0x030 */ s16 unk30;
    /* 0x032 */ s16 unk32;
    /* 0x034 */ s16 unk34;
    /* 0x036 */ s16 unk36;
    /* 0x038 */ s32 qUnk38;
    /* 0x03C */ s32 qUnk3C;
    /* 0x040 */ s32 qUnk40;
    /* 0x044 */ s32 qUnk44;
    /* 0x048 */ u8 filler48[0x60];
    /* 0x0A8 */ void *unkA8;
    /* 0x0AC */ void *unkAC;
    /* 0x0B0 */ Sprite s;
    /* 0x0D8 */ u8 fillerD8[0x14];
    /* 0x0EC */ CapsuleEC unkEC[5];
    /* 0x218 */ Sprite sprTimer[21];
    /* 0x560 */ Sprite s2;
    /* 0x588 */ Sprite s3;
    /* 0x5B0 */ Sprite spr5B0[3];
    /* 0x628 */ Sprite spr628[5]; // Switches?
    /* 0x6F0 */ ScreenFade fade;
    /* 0x6FC */ s32 random;
} Capsule; /* 0x700 */

void Task_BonusCapsuleMain(void);
void sub_803B23C(Sprite *s);
void sub_803B6E8(Capsule *cap, s16 worldX, s16 worldY);
void sub_803BE9C(Sprite *s);
void sub_803BEE0(Sprite *s);
void TaskDestructor_BonusCapsule(struct Task *);
void sub_8039D60(Sprite *s, u8, void *tiles);
void sub_803BF20(Sprite *s, u8, u32);

extern TileInfo sTileInfoTimerDigits[21];

// const u8 gUnknown_080CF864[7] = {5, 8, 12, 15, 18, 22, 25};
extern const u8 gUnknown_080CF864[7];

// const u8 gUnknown_080CF86B[5] = {0, 4, 2, 1, 3};
extern const u8 gUnknown_080CF86B[5];

// (100.00%) https://decomp.me/scratch/aJb0e
void CreateEntity_BonusCapsule(MapEntity *me, u16 regionX, u16 regionY, u8 id)
{
    struct Task *t = TaskCreate(Task_BonusCapsuleMain, sizeof(Capsule), 0x2100, 0, TaskDestructor_BonusCapsule);
    Capsule *cap = TASK_DATA(t);
    Sprite *s = &cap->s;
    ScreenFade *fade = &cap->fade;
    Player *p1, *p2;
    s32 worldY32;
    u8 i;
#ifndef NON_MATCHING
    register s32 r3 asm("r3");
#else
    s32 r3;
#endif

    gStageData.unk8C = 0;

    cap->random = gPseudoRandom;

    r3 = gStageData.unk1;
    r3 += gStageData.zone;
    r3 += gStageData.lives;
    r3 += gPlayers[gStageData.playerIndex].charFlags.character;
    r3 += gPlayers[gPlayers[gStageData.playerIndex].charFlags.partnerIndex].charFlags.character;

    gPseudoRandom = r3;

    cap->base.regionX = regionX;
    cap->base.regionY = regionY;
    cap->base.me = me;

    cap->base.spriteX = me->x;
    cap->base.id = id;
    cap->unkC = 0;
    cap->unk1C = 0;
    cap->unk20 = 0;
    cap->unk24 = 0;
    cap->unk28 = 0;
    cap->unkE = 0;
    cap->unkF = 1;
    cap->unk18 = 216;
    cap->unk10 = 0;
    cap->unk12 = 0;

    cap->unk11 = gUnknown_080CF864[gStageData.zone];
    cap->unk13 = 8;
    cap->timer = ZONE_TIME_TO_INT(0, 30);
    cap->unkD = 60;
    cap->unk2C = 0;
    cap->unk2E = 60;

    cap->spr628[0].tiles = NULL;
    cap->unk30 = -Q(1);
    cap->unk32 = -Q(6);
    cap->unk34 = +Q(1);
    cap->unk36 = -Q(6);

    fade->window = 0;
    fade->flags = SCREEN_FADE_FLAG_2;
    fade->brightness = Q(0);
    fade->speed = Q(0.5);
    fade->bldCnt = (BLDCNT_TGT1_ALL | BLDCNT_EFFECT_DARKEN);
    fade->bldAlpha = 0;

    s->x = TO_WORLD_POS(me->x, regionX);
    worldY32 = TO_WORLD_POS(me->y, regionY);
    s->y = worldY32;

    cap->qUnk38 = Q(s->x);
    cap->qUnk3C = Q(s->y);
    cap->qUnk40 = Q(s->x);
    cap->qUnk44 = Q(s->y);

    SET_MAP_ENTITY_INITIALIZED(me);

    ScreenFadeUpdateValues(fade);

    sub_803BE9C(s);
    sub_803BEE0(&cap->s2);
    sub_803B23C(&cap->s3);
    sub_803B6E8(cap, s->x, s->y);

    for (i = 0; i < (s32)ARRAY_COUNT(cap->sprTimer); i++) {
        sub_8039D60(&cap->sprTimer[i], i, cap->sprTimer[0].tiles);
    }

    for (i = 0; i < (s32)ARRAY_COUNT(cap->unkEC); i++) {
        u16 r2;

        s = &cap->unkEC[i].s;
        cap->unkEC[i].unk0 = 0;
        cap->unkEC[i].unk4 = 0;

        r2 = 0;
        if (i > 2) {
            r2 = 0x400;
        }
        sub_803BF20(s, i, r2);
    }

    // Maybe 160 is DISPLAY_HEIGHT?
    gCamera.unk14 = 160;
    gCamera.shiftY = 288;
}

void TaskDestructor_BonusCapsule(struct Task *t)
{
    Capsule *cap = TASK_DATA(t);
    void *tiles;
    u8 i;

    gPseudoRandom = cap->random;
    tiles = cap->s.tiles;

    if (tiles != NULL) {
        VramFree(tiles);
    } else {
        sub_80C60B0(&cap->unkA8, 1);
        sub_80C60B0(&cap->unkAC, 1);
    }

    for (i = 0; i < (s32)ARRAY_COUNT(cap->unkEC); i++) {
        VramFree(cap->unkEC[i].s.tiles);
    }

    VramFree(cap->sprTimer->tiles);
    VramFree(cap->spr5B0[0].tiles);
    VramFree(cap->s3.tiles);

    if (cap->spr628[0].tiles != NULL) {
        VramFree(cap->spr628[0].tiles);
        VramFree(cap->spr628[1].tiles);
        VramFree(cap->spr628[2].tiles);
        VramFree(cap->spr628[3].tiles);
        VramFree(cap->spr628[4].tiles);
    }
}

void sub_8039D60(Sprite *s, u8 i, void *inTiles)
{
    void *tiles;

    if (i == 0) {
        Capsule *cap;
        tiles = VramMalloc(sTileInfoTimerDigits[0].numTiles * ARRAY_COUNT(cap->sprTimer));
    } else {
        tiles = inTiles + i * (MAX_TILES(ANIM_BONUS_UI_TIMER_DIGITS) * TILE_SIZE_4BPP);
    }

    s->tiles = tiles;
    s->anim = sTileInfoTimerDigits[i].anim;
    s->variant = sTileInfoTimerDigits[i].variant;
    s->oamFlags = SPRITE_OAM_ORDER(6);
    s->animCursor = 0;
    s->qAnimDelay = Q(0);
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = SPRITE_FLAG(PRIORITY, 0);
}

#if 01
#endif
