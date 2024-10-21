#include <string.h> // memcpy
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
    /* 0x010 */ s8 unk10;
    /* 0x011 */ s8 unk11;
    /* 0x012 */ u8 unk12;
    /* 0x013 */ u8 unk13;
    /* 0x014 */ u8 unk14;
    /* 0x015 */ u8 unk15;
    /* 0x016 */ s16 timer;
    /* 0x018 */ s16 unk18;
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
void Task_8039DC0(void);
void sub_803A3B4(s16);
void Task_803A5D4(void);
void Task_803A6DC(void);
void Task_803A8A8(void);
void Task_803A978(void);
u8 sub_803B070(Capsule *cap);
void sub_803B1A4(Capsule *cap);
void sub_803B23C(Sprite *s);
void sub_803B288(void);
void sub_803B498(void);
void sub_803B6E8(Capsule *cap, s16 worldX, s16 worldY);
void sub_803B804(void);
void sub_803B910(void);
void sub_803BB60(void);
void sub_803BC0C(void);
void sub_803BE48(void);
void sub_803BE9C(Sprite *s);
void sub_803BEE0(Sprite *s);
void sub_803BF78(u32 param0);
void sub_803BFC4(Capsule *cap);
void sub_803C010(u32 param0);
void TaskDestructor_BonusCapsule(struct Task *);
void sub_8039D60(Sprite *s, u8, void *tiles);
void sub_803BF20(Sprite *s, u8, u32);

extern TileInfo sTileInfoTimerDigits[21];

// const u8 gUnknown_080CF864[7] = {5, 8, 12, 15, 18, 22, 25};
extern const u8 gUnknown_080CF864[7];

// const u8 gUnknown_080CF86B[5] = {
//     [CHARACTER_SONIC] = 0,
//     [CHARACTER_CREAM] = 4,
//     [CHARACTER_TAILS] = 2,
//     [CHARACTER_KNUCKLES] = 1,
//     [CHARACTER_AMY] = 3
// };
extern const u8 gUnknown_080CF86B[5];
extern const u16 gUnknown_080CF870[6][2][2];
extern const TileInfo gUnknown_080CF770[7];

extern const u8 gUnknown_08E2DEF4[];
extern const u8 gUnknown_08E2E134[];
extern const u8 gUnknown_08E2E280[];
extern const u8 gUnknown_08E2E550[];

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

void Task_8039DC0(void)
{
    void *sp14 = &gUnknown_08E2E280;
    void *sp10 = &gUnknown_08E2E550;
    void *sp0C = &gUnknown_08E2DEF4;
    void *sp08 = &gUnknown_08E2E134;
    void *fixedTiles = (OBJ_VRAM0 + 0x2800);
    Capsule *cap;
    Sprite *s;
    Player *p1, *p2;
    u8 arr[5];
    s32 kind;

    memcpy(arr, gUnknown_080CF86B, sizeof(arr));
    cap = TASK_DATA(gCurTask);

    kind = cap->unkC;
    switch (kind) {
        case 0: {
            ; // Do nothing
        } break;

        case 2: {
            s = &cap->s;
            VramFree(s->tiles);
            s->tiles = NULL;
            cap->unkA8 = sub_80C4C60(&sp08, 1);
            sub_80C4E24(&cap->unkA8, 1, (void *)&sp0C);
            sub_80C610C(&cap->unkA8, 1);
        } break;

        case 3: {
            cap->unkAC = sub_80C4C60(&sp10, 1);
            sub_80C4E24(&cap->unkAC, 1, (void *)&sp14);
            sub_80C610C(&cap->unkAC, 1);
        } break;

        case 1: {
            Sprite *s;
            p1 = &gPlayers[gStageData.playerIndex];
            p2 = &gPlayers[p1->charFlags.partnerIndex];

            s = &cap->spr628[0];
            cap->spr628[0].tiles = fixedTiles;
            fixedTiles += MAX_TILES(ANIM_LIFE_ICONS) * TILE_SIZE_4BPP;
            s->anim = ANIM_LIFE_ICONS;
            s->variant = arr[p1->charFlags.character];
            s->oamFlags = SPRITE_OAM_ORDER(0);
            s->animCursor = 0;
            s->qAnimDelay = Q(0);
            s->prevVariant = -1;
            s->animSpeed = SPRITE_ANIM_SPEED(1.0);
            s->palId = 0;
            s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
            s->frameFlags = SPRITE_FLAG(PRIORITY, 0);
            s->x = (DISPLAY_WIDTH / 2) - 25;
            s->y = (DISPLAY_HEIGHT / 2) - 2;
            UpdateSpriteAnimation(s);

            s = &cap->spr628[1];
            s->tiles = fixedTiles;
            fixedTiles += MAX_TILES(ANIM_LIFE_ICONS) * TILE_SIZE_4BPP;
            s->anim = ANIM_LIFE_ICONS;
            s->variant = arr[p2->charFlags.character];
            s->oamFlags = SPRITE_OAM_ORDER(1);
            s->animCursor = 0;
            s->qAnimDelay = Q(0);
            s->prevVariant = -1;
            s->animSpeed = SPRITE_ANIM_SPEED(1.0);
            s->palId = 0;
            s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
            s->frameFlags = SPRITE_FLAG(PRIORITY, 0);
            s->x = (DISPLAY_WIDTH / 2) - 15;
            s->y = (DISPLAY_HEIGHT / 2) - 2;
            UpdateSpriteAnimation(s);

            s = &cap->spr628[2];
            s->tiles = fixedTiles;
            fixedTiles += MAX_TILES_VARIANT(ANIM_BONUS_UI_X, 1) * TILE_SIZE_4BPP;
            s->anim = ANIM_BONUS_UI_X;
            s->variant = 1;
            s->oamFlags = SPRITE_OAM_ORDER(2);
            s->animCursor = 0;
            s->qAnimDelay = Q(0);
            s->prevVariant = -1;
            s->animSpeed = SPRITE_ANIM_SPEED(1.0);
            s->palId = 0;
            s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
            s->frameFlags = SPRITE_FLAG(PRIORITY, 0);
            s->x = (DISPLAY_WIDTH / 2) - 12;
            s->y = (DISPLAY_HEIGHT / 2) + 5;
            UpdateSpriteAnimation(s);

            s = &cap->spr628[3];
            s->tiles = fixedTiles;
            fixedTiles += MAX_TILES_VARIANT(ANIM_BONUS_UI_X, 0) * TILE_SIZE_4BPP;
            s->anim = ANIM_BONUS_UI_X;
            s->variant = 0;
            s->oamFlags = SPRITE_OAM_ORDER(1);
            s->animCursor = 0;
            s->qAnimDelay = Q(0);
            s->prevVariant = -1;
            s->animSpeed = SPRITE_ANIM_SPEED(1.0);
            s->palId = 0;
            s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
            s->frameFlags = SPRITE_FLAG(PRIORITY, 0);
            s->x = (DISPLAY_WIDTH / 2) + 18;
            s->y = (DISPLAY_HEIGHT / 2) + 6;
            UpdateSpriteAnimation(s);

            s = &cap->spr628[4];
            s->tiles = fixedTiles;
            s->anim = ANIM_BONUS_UI_TIMER_DIGITS;
            s->variant = 0;
            s->oamFlags = SPRITE_OAM_ORDER(1);
            s->animCursor = 0;
            s->qAnimDelay = Q(0);
            s->prevVariant = -1;
            s->animSpeed = SPRITE_ANIM_SPEED(1.0);
            s->palId = 0;
            s->hitboxes[0].index = HITBOX_STATE_INACTIVE;
            s->frameFlags = SPRITE_FLAG(PRIORITY, 0);
            s->x = (DISPLAY_WIDTH / 2) + 30;
            s->y = (DISPLAY_HEIGHT / 2) + 5;
            UpdateSpriteAnimation(s);

        } break;

        default: {
            s32 r4;
            if (cap->timer >= 900) {
                r4 = 5;
            } else if (cap->timer >= 300) {
                r4 = 2;
            } else {
                r4 = 1;
            }

            sub_8003DC4(r4);
            cap->unk14 = r4;

#ifdef BUG_FIX
            // BUG: p1 and p2 get used but were not initialized originally!
            p1 = &gPlayers[gStageData.playerIndex];
            p2 = &gPlayers[p1->charFlags.partnerIndex];

            if ((p1->moveState & MOVESTATE_20) && (p1->qWorldY < Q(129))) {
                p1->moveState &= ~MOVESTATE_20;
            }

            // BUG: p2's movestate was checked/set, but
            //      the original condition checked p1's y-position
            if ((p2->moveState & MOVESTATE_20) && (p2->qWorldY < Q(129))) {
                p2->moveState &= ~MOVESTATE_20;
            }
#else
            if ((p1->moveState & MOVESTATE_20) && (p1->qWorldY < Q(129))) {
                p1->moveState &= ~MOVESTATE_20;
            }

            if ((p2->moveState & MOVESTATE_20) && (p1->qWorldY < Q(129))) {
                p2->moveState &= ~MOVESTATE_20;
            }
#endif

            gCurTask->main = sub_803BE48;

            sub_8003DF0(SE_CAPSULE_DESTROY);
        } break;
    }

    cap->unkC++;

    sub_803B804();
    sub_803B910();
    sub_803BB60();
    sub_803BC0C();
    sub_803B498();
}

void sub_803A0D8(void)
{
    Capsule *cap = TASK_DATA(gCurTask);
    u8 i;

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p = GET_SP_PLAYER_V1(i);

        p->moveState |= MOVESTATE_IGNORE_INPUT;
    }

    if (cap->unk18 != 0) {
        cap->unk18--;
        ScreenFadeUpdateValues(&cap->fade);
    } else if (UpdateScreenFade(&cap->fade) == SCREEN_FADE_COMPLETE) {
        cap->unk18 = 216;
        gCurTask->main = Task_BonusCapsuleMain;
    }

    sub_803C010(0);
    sub_803B1A4(cap);
    sub_803B498();
    sub_803B288();
}

void Task_BonusCapsuleMain(void)
{
    Capsule *cap;
    Sprite *s;
    Player *p;
    u16 arr[6][2][2];
    s16 sb;
    s8 i;

    memcpy(arr, gUnknown_080CF870, sizeof(arr));

    cap = TASK_DATA(gCurTask);

    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        p = GET_SP_PLAYER_V1(i);

        p->moveState |= MOVESTATE_IGNORE_INPUT;
    }

    gDispCnt |= DISPCNT_BG0_ON;

    gStageData.unk4 = 1;

    if (--cap->unk18 == 0) {
        gDispCnt &= ~DISPCNT_BG0_ON;
        gFlags &= ~FLAGS_4;

        cap->unk18 = ZONE_TIME_TO_INT(0, 3);
        gCurTask->main = Task_803A5D4;
    } else {
        s32 r1 = 216 - cap->unk18;

        if (r1 <= 48) {
            u16 v = 216 - cap->unk18;
            sb = v;
        } else if (cap->unk18 > 48) {
            s8 r4;
            u16 r2;
            u16 r5;
            u16 r6;

            if (r1 < 59) {
                r4 = (r1 & 0x2) ? -2 : +2;
            } else {
                r4 = 0;
            }

            sb = 48;
            r5 = cap->unk11;

            if (r5 > 99) {
                r5 = 99;
            }

            r2 = (r5 / 10);
            r6 = r5 - (r2 * 10);

            if (r2 != 0) {
                s = &cap->sprTimer[r2];

                s->x = arr[gStageData.unk0][0][0];
                s->y = arr[gStageData.unk0][0][1] + r4;
                s->frameFlags = 0;
                UpdateSpriteAnimation(s);
                DisplaySprite(s);

                s = &cap->sprTimer[r6];
                s->x = arr[gStageData.unk0][1][0];
                s->y = arr[gStageData.unk0][1][1] + r4;
                s->frameFlags = 0;
                UpdateSpriteAnimation(s);
                DisplaySprite(s);
            } else {
                s = &cap->sprTimer[r6];
                s->x = arr[gStageData.unk0][0][0] + 6;
                s->y = arr[gStageData.unk0][0][1] + r4;
                s->frameFlags = 0;
                UpdateSpriteAnimation(s);
                DisplaySprite(s);
            }
        } else {
            sb = cap->unk18;
        }

        sub_803A3B4(sb);
    }

    sub_803C010(0);
    sub_803B1A4(cap);
    sub_803B498();
    sub_803B288();
}

void sub_803A3B4(s16 param0)
{
    s32 ip;
    s16 r5;
    s16 r8;
    s16 sb;
    s16 sl;
    s16 *offsets;
    s16 i;

    if (param0 < 16) {
        ip = 0;
        if (param0 < 2) {
            param0 = 2;
        }

        r5 = (param0 * 3) / 2u;
    } else if (param0 < 32) {
        ip = 1;

        r5 = 24;

        if (param0 < 17) {
            param0 = 17;
        }

        r8 = ((param0 - 16) * 9) / 4u;
    } else if (param0 < 49) {
        ip = 2;

        r5 = 24;

        r8 = 36;
        sb = (param0 - 32) * 2;

        sl = ((param0 - 32) * 15) / 4u;
    }

    gFlags |= FLAGS_4;

    gUnknown_03003C5C = (void *)&REG_BG0VOFS;
    gUnknown_03003F30 = 2;

    offsets = (u16 *)gBgOffsetsHBlank;

    for (i = 0; i < DISPLAY_HEIGHT; i++) {
        *offsets++ = -i;
    }

    offsets = (u16 *)gBgOffsetsHBlank;
    offsets = (u16 *)((void *)offsets + (40 - r5) * 2);

    for (i = 0; i < 4; i++) {
        *offsets++ = r5 - 24;
    }

    for (i = (40 - r5); i < (r5 + 36); i++) {
        *offsets++ = (i % 4u) - (i - 16);
    }

    offsets = (u16 *)gBgOffsetsHBlank;
    offsets = (u16 *)((void *)offsets + (r5 * 2 + 72));

    for (i = 0; i < 4; i++) {
        *offsets++ = 23 - r5;
    }

    if (ip != 0) {
        offsets = (u16 *)gBgOffsetsHBlank;
        offsets = (u16 *)((void *)offsets + (108 - r8) * 2);

        for (i = 0; i < 4; i++) {
            *offsets++ = r8 - 35;
        }

        for (i = (108 - r8); i < (r8 + 104); i++) {
            *offsets++ = (i % 4u) - (i - 72);
        }

        offsets = (u16 *)gBgOffsetsHBlank;
        offsets = (u16 *)((void *)offsets + (r8 * 2 + 208));

        for (i = 0; i < 4; i++) {
            *offsets++ = 35 - r8;
        }

        if (ip != 1) {
            offsets = (u16 *)gBgOffsetsHBlank;
            offsets = (u16 *)((void *)offsets + (58 - sb) * 2);

            for (i = (58 - sb); i < 58; i++) {
                *offsets++ = sb - 32;
            }

            offsets = (u16 *)gBgOffsetsHBlank;
            offsets = (u16 *)((void *)offsets + (138 - sl) * 2);

            for (i = (138 - sl); i < 138; i++) {
                *offsets++ = sl - 60;
            }
        }
    }
}

void Task_803A5D4(void)
{
    Capsule *cap = TASK_DATA(gCurTask);
    Sprite *s = &cap->s3;
    u8 i;

    if (--cap->unk18 == 0) {
        for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
            Player *p = GET_SP_PLAYER_V1(i);
            p->moveState &= ~MOVESTATE_IGNORE_INPUT;
        }

        s->anim = gUnknown_080CF770[0].anim;
        s->variant = gUnknown_080CF770[0].variant;
        s->prevVariant = -1;

        cap->unkD = 128;

        gCurTask->main = Task_803A6DC;
        cap->unkE = sub_803B070(cap);
        Task_803A6DC();

        gStageData.unk4 = 3;
        gStageData.unk85 = 1;

        return;
    } else if (cap->unk18 == 120) {
        // _0803A684+0x4
        cap->unkD = 60;

        s->anim = gUnknown_080CF770[5].anim;
        s->variant = gUnknown_080CF770[5].variant;
        s->prevVariant = -1;
    } else if (cap->unk18 == 60) {
        // _0803A69C+0x4
        cap->unkD = 60;

        s->anim = gUnknown_080CF770[4].anim;
        s->variant = gUnknown_080CF770[4].variant;
        s->prevVariant = -1;
    }

    sub_803BF78(1);
    sub_803C010(0);
    sub_803B1A4(cap);
    sub_803B498();
    sub_803B288();
}

void Task_803A6DC(void)
{
    Capsule *cap = TASK_DATA(gCurTask);
    Sprite *s = &cap->s3;
    Player *p;
    ScreenFade *fade = &cap->fade;
    u8 i;
    u8 prevUnkD;

    cap->unk10 = gStageData.unk8C;

    if ((cap->unk10 >= cap->unk11) || (--cap->timer == 0)) {
        cap->unkD = 128;

        fade->flags = SCREEN_FADE_FLAG_LIGHTEN;
        fade->brightness = Q(0);
        fade->bldCnt = (BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN);

        if (cap->timer == 0) {
            for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
                p = GET_SP_PLAYER_V1(i);
                p->moveState |= MOVESTATE_IGNORE_INPUT;
            }

            cap->unk18 = 30;

            if (gStageData.playerIndex != 0) {
                s->anim = gUnknown_080CF770[2].anim;
                s->variant = gUnknown_080CF770[2].variant;
                s->prevVariant = -1;
            }

            sub_803C010(1);
            sub_803B1A4(cap);
            sub_803B498();
            sub_803B288();

            gCurTask->main = Task_803A8A8;
        } else {
            sub_803C010(1);
            sub_803B1A4(cap);
            sub_803B498();
            sub_803BFC4(cap);

            for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
                p = GET_SP_PLAYER_V1(i);
                p->moveState |= MOVESTATE_IGNORE_INPUT;
            }

            s->anim = gUnknown_080CF770[1].anim;
            s->variant = gUnknown_080CF770[1].variant;
            s->prevVariant = -1;
            s->y = 60;

            cap->unk18 = 100;
            cap->unkC = 0;

            gCurTask->main = Task_8039DC0;
        }

        gStageData.unk4 = 6;
    } else {
        u8 res = sub_803B070(cap);
        if (res != 0xFF) {
            cap->unkE = res;
        }

        prevUnkD = cap->unkD;

        sub_803BF78(0);

        if ((prevUnkD != 0) && (cap->unkD == 0)) {
            gStageData.unk85 = 0;
        }

        sub_803C010(1);
        sub_803B1A4(cap);
        sub_803B498();
        sub_803B288();

        gStageData.unk8C = cap->unk10;
    }
}

void Task_803A8A8(void)
{
    Capsule *cap = TASK_DATA(gCurTask);
    Sprite *s;

    if ((gStageData.playerIndex == 0) && (cap->unkD >= 96)) {
        s = &cap->s3;

        cap->unk10 = gStageData.unk8C;

        if (cap->unk10 >= cap->unk11) {
            sub_803C010(1);
            sub_803B1A4(cap);
            sub_803B498();
            sub_803BFC4(cap);

            s->anim = gUnknown_080CF770[1].anim;
            s->variant = gUnknown_080CF770[1].variant;
            s->prevVariant = -1;
            s->y = 60;

            cap->unk18 = 100;

            gCurTask->main = Task_8039DC0;

            return;
        } else {
            if (cap->unkD == 96) {
                s->anim = gUnknown_080CF770[2].anim;
                s->variant = gUnknown_080CF770[2].variant;
                s->prevVariant = -1;
            }

            gStageData.unk8C = cap->unk10;
        }
    }
    if (--cap->unkD == 0) {
        // _0803A940
        cap->unkD = 128;
        gCurTask->main = Task_803A978;
    }

    sub_803C010(0);
    sub_803B1A4(cap);
    sub_803B498();
    sub_803B288();
}

#if 0
void Task_803A978(void)
{
    Capsule *cap = TASK_DATA(gCurTask);

    if(cap->unkD == 1) {
        cap->unkD = 2;

        if(cap->unk18 == 0) {
            if(UpdateScreenFade(&cap->fade) != SCREEN_FADE_RUNNING) {
                TasksDestroyAll();

                gUnknown_03003F94 = gUnknown_03003D20;
                gUnknown_03006840 = 0;
                gVramGraphicsCopyCursor = gVramGraphicsCopyQueueIndex;


            }
        } else {
            --cap->unk18;
        }
    }

    sub_803BF78(1);
    sub_803C010(0);
    sub_803B1A4(cap);
    sub_803B498();
    sub_803B288();
}
#endif
