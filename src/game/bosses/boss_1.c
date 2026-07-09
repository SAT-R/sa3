#include "global.h"
#include "core.h"
#include "trig.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "multi_sio_stuff.h"
#include "game/game.h"
#include "game/bosses.h"
#include "game/stage.h"
#include "game/shared/stage/player.h"
#include "game/shared/stage/player_callbacks.h"
#include "game/shared/stage/screen_shake.h"
#include "constants/animations.h"
#include "constants/move_states.h"

#define GEMERL_TURN_MIN_X 1696
#define GEMERL_TURN_MAX_X 1760

typedef struct {
    /* 0x000 */ s32 unk0;
    /* 0x004 */ s32 unk4;
    /* 0x008 */ u8 *unk8;
    /* 0x00C */ u8 lives;
    /* 0x00D */ s8 unkD;
    /* 0x00E */ u8 unkE;
    /* 0x00F */ u8 unkF;
    /* 0x010 */ u8 unk10;
    /* 0x011 */ u8 unk11;
    /* 0x012 */ u8 unk12;
    /* 0x013 */ u8 unk13;
    /* 0x014 */ s16 unk14[5][2];
    /* 0x028 */ u8 *vram28;
    /* 0x02C */ u16 unk2C;
    /* 0x02E */ s16 unk2E;
    /* 0x030 */ u16 unk30;
    /* 0x032 */ u16 unk32;
    /* 0x034 */ s32 unk34;
    /* 0x034 */ s32 unk38;
    /* 0x03C */ s32 unk3C;
    /* 0x040 */ s32 unk40;
    /* 0x044 */ s32 unk44;
    /* 0x048 */ u8 *vram48;
    /* 0x04C */ u8 *vram4C;
    /* 0x050 */ Player *player;
    /* 0x054 */ Player *partner;
    /* 0x058 */ s32 unk58;
    /* 0x05C */ s32 unk5C;
    /* 0x060 */ s32 unk60;
    /* 0x064 */ s32 unk64;
    /* 0x068 */ Vec2_32 unk68[7];
    /* 0x0A0 */ u8 fillerA0[0x8];
    /* 0x0A8 */ Vec2_32 unkA8[7];
    /* 0x0E0 */ u8 fillerE0[0x8];
    /* 0x0E8 */ s32 unkE8;
    /* 0x0EC */ s32 unkEC;
    /* 0x0F0 */ Sprite5 sprCockpit;
    /* 0x138 */ Sprite sprGroundPlate;
    /* 0x160 */ Sprite sprHammerHead;
    /* 0x188 */ Sprite sprJoint;
    /* 0x1B0 */ SpriteTransform tf;
} EggHammerTankIII; /* 0x1BC */

void InitSpriteCockpit(EggHammerTankIII *boss);
static void InitSpriteGroundPlate(EggHammerTankIII *boss);
void UpdateGroundPlate(EggHammerTankIII *boss);
static void InitSpriteHammerHead(EggHammerTankIII *boss);
void sub_8069360(EggHammerTankIII *boss);
void sub_8069814(EggHammerTankIII *boss);
void sub_8069818(EggHammerTankIII *boss);
void sub_806A5DC(EggHammerTankIII *boss);
void sub_806A818(EggHammerTankIII *boss);
void sub_806A894(EggHammerTankIII *boss);
void sub_806A728(void);
void Task_806A760(void);
void sub_806A7A4(void);
void TaskDestructor_Boss_806A7E4(struct Task *t);
void sub_8069578(EggHammerTankIII *boss);
void sub_806A854(EggHammerTankIII *boss);
void sub_806A898(EggHammerTankIII *boss);
u8 sub_8068E5C(Player *);
void sub_8004D68(s32, s32);
bool32 sub_807A1DC(Sprite *);

extern void sub_80044CC(Player *);
extern void SetFixedRandomIfTimeAttackMode(void);
extern void sub_807A37C(void);
extern void sub_8078E34(s32 *, VoidFn);

extern u16 gUnknown_080D575C[9][2];

void Task_8068D00(); /* extern */
void sub_80299D4(s32); /* extern */
void sub_8068C38(); /* extern */
void sub_8078DB0(s32, s32, s32, s32); /* extern */
void sub_8079758(u8, s32, s32, s32, u32, s32, s32, void *); /* extern */
void sub_807A2AC(); /* extern */
void sub_807A468(); /* extern */
void sub_807A4A8(); /* extern */
void sub_80BE46C(void *); /* extern */
void Task_806A760(); /* static */

void sub_8069578(EggHammerTankIII *boss);
void sub_8069814(EggHammerTankIII *boss);
void sub_8069DEC(EggHammerTankIII *arg0);

// Init Boss 1
Task *CreateEggHammerTankIII(u8 *param0, s32 worldX, s32 worldY)
{
    Task *t;
    s32 temp_r3;
    s8 temp_r1_2;
    s8 temp_r1_3;
    s8 var_r0;
    u16 temp_r1;
    u8 var_r5;
    EggHammerTankIII *boss;

    t = TaskCreate(sub_806A728, sizeof(EggHammerTankIII), 0x2100U, 0U, TaskDestructor_Boss_806A7E4);
    gStageData.taskBoss = t;
    boss = TASK_DATA(t);
    boss->unk0 = Q(worldX);
    boss->unk4 = Q(worldY);

    if (gStageData.difficulty == 0) {
        boss->lives = 8;
    } else {
        boss->lives = 6;
    }

    boss->unk8 = param0;
    boss->unkD = 0;
    boss->unk32 = 0;
    boss->unkF = 0;
    boss->unk2C = 0;
    boss->unk2E = 0;
    boss->unk10 = 0;
    boss->unk11 = 0;
    boss->unk12 = 0;
    boss->player = &gPlayers[PLAYER_1];
    boss->partner = &gPlayers[PLAYER_2];
    boss->vram48 = NULL;
    boss->vram4C = NULL;
    boss->vram28 = VramMalloc(0x9EU);

    InitSpriteCockpit(boss);
    InitSpriteGroundPlate(boss);
    InitSpriteHammerHead(boss);

    for (var_r5 = 0; var_r5 < ARRAY_COUNT(boss->unk14); var_r5++) {
        Hitbox *hb = &boss->sprCockpit.hitboxes[var_r5];
        boss->unk14[var_r5][0] = hb->b.left - ((hb->b.left - hb->b.right) >> 1);
        boss->unk14[var_r5][1] = hb->b.top - ((hb->b.top - hb->b.bottom) >> 1);
    }

    SetFixedRandomIfTimeAttackMode();

    return t;
}

void sub_8068C38(void)
{
    u8 temp_r5;
    EggHammerTankIII *boss = TASK_DATA(gCurTask);
    Sprite *s = (Sprite *)&boss->sprCockpit;

    boss->unk32++;
    sub_8069814(boss);
    UpdateGroundPlate(boss);
    sub_806A894(boss);
    temp_r5 = sub_8068E5C(boss->player);
    temp_r5 += sub_8068E5C(boss->partner);

    if (boss->unkD != 0) {
        if (--boss->unkD == 0) {
            s->anim = ANIM_BOSS_1_COCKPIT;
            s->variant = 0;
        }
    }

    if (temp_r5 != 0) {
        sub_806A5DC(boss);
    }

    if (boss->lives == 0) {
        if (CURRENT_GAME_MODE == 5) {
            if (gStageData.playerIndex != 0) {
                gCurTask->main = sub_806A7A4;
            } else {
                sub_8027674(1, 0);
                sub_806A818(boss);
                gCurTask->main = Task_806A760;
            }
        } else {
            sub_806A818(boss);
            gCurTask->main = Task_806A760;
        }
    }

    sub_8069578(boss);
    sub_806A854(boss);
    sub_806A898(boss);
}

void Task_8068D00(void)
{
    s32 sp00[4];
    EggHammerTankIII *boss = TASK_DATA(gCurTask);
    Player *p = boss->player;

    switch (boss->unk32) {
        case 0: {
            if (boss->vram48) {
                VramFree(boss->vram48);
                boss->vram48 = NULL;
            }

            if (boss->vram4C) {
                VramFree(boss->vram4C);
                boss->vram4C = NULL;
            }

            sp00[0] = I(boss->unk58);
            sp00[1] = I(boss->unk5C);
            sp00[2] = (boss->unk11 * 8) + 0x6A0;
            sp00[3] = I(boss->unkEC) - 12;
            sub_8078E34(sp00, sub_807A37C);
            boss->unk32 = 1;
        } break;

        case 1: {
            if (!(p->moveState & MOVESTATE_IGNORE_INPUT)) {
                *boss->unk8 = 0;
                boss->unk32 = 100;
            }
        } break;
    }
}

bool32 sub_8068D90(Player *p)
{
    bool32 result = FALSE;
    u32 coll;
    EggHammerTankIII *boss = TASK_DATA(gCurTask);
    Sprite *s = &boss->sprGroundPlate;

    if (sub_802C0D4(p) == 0) {
        coll = sub_8020950(s, I(boss->unkE8), I(boss->unkEC), p, 0U);
        if (0x10000 & coll) {
            p->qWorldY += Q_8_8(coll);
            result = TRUE;
        }
        if (0xC0000 & coll) {
            if (0x80000 & coll) {
                if (DPAD_RIGHT & p->keyInput) {
                    p->qWorldX += Q(1);
                    p->moveState |= MOVESTATE_40;
                }
            } else {
                if (DPAD_LEFT & p->keyInput) {
                    p->qWorldX -= Q(1);
                    p->moveState |= MOVESTATE_40;
                }
            }

            p->qWorldX += Q((s32)(coll << 0x10) >> 0x18);
            p->qSpeedGround = 0;
            p->qSpeedAirX = 0;
        }
    }

    if (p->moveState & MOVESTATE_COLLIDING_ENT) {
        result = TRUE;
    }

    return result;
}

// (95.90%) https://decomp.me/scratch/FXGIn
NONMATCH("asm/non_matching/game/bosses/boss_1__sub_8068E5C.inc", u8 sub_8068E5C(Player *inPlayer))

{
    u8 sp8;
    s32 result = 0;
    s32 sp10 = 0;
    s8 sp0[4] = { -inPlayer->spriteOffsetX, -9, //
                  +inPlayer->spriteOffsetX, +9 };
    Player *temp_r1;
    PlayerSpriteInfo *temp_r3_6;
    PlayerSpriteInfo *temp_r4_3;
    s16 temp_r1_10;
    s16 temp_r2_3;
    s16 temp_r3_7;
    s32 temp_r0_4;
    s32 temp_r1_7;
    s32 temp_r2_2;
    s32 temp_r3_4;
    s32 temp_r4_5;
    s32 temp_r5_5;
    s32 var_r4;
    s32 var_r7;
    s8 temp_r1_8;
    s8 temp_r3_8;
    s8 temp_r4;
    s8 temp_r4_4;
    s8 temp_r5_4;
    s8 temp_r5_6;
    s8 temp_r7;
    s16 temp_r1_4;
    s32 temp_r0;
    s16 var_r5;
    u8 temp_r0_5;
    s32 screenX;
    s32 screenY;
    u8 chara;

    s32 sinVal;
    s32 cosVal;
    s16 *sp20;
    s16 *sp24;
    EggHammerTankIII *boss = TASK_DATA(gCurTask);
    Sprite *sprCockpit = (Sprite *)&boss->sprCockpit;
    if (sub_802C080(inPlayer) != 0) {
        return 0U;
    }
    sub_8004D68(boss->unk58, boss->unk5C);
    chara = gPlayers[gStageData.playerIndex].charFlags.character;
    if (((chara == CREAM) || (gPlayers[gPlayers[gStageData.playerIndex].charFlags.partnerIndex].charFlags.character == CREAM))
        && (sub_807A1DC((Sprite *)sprCockpit) == 1)) {
        result = 1;
    }

    sprCockpit->hitboxes[0].b.bottom = 20;

    if (HB_COLLISION((I(inPlayer->qWorldX) - gCamera.x), (I(inPlayer->qWorldY) - gCamera.y), (*(Rect8 *)&sp0), sprCockpit->x, sprCockpit->y,
                     sprCockpit->hitboxes[0].b)) {
        s32 unkX, unkY;
        unkX = I(inPlayer->qWorldX);
        unkX -= I(boss->unk58);
        unkY = I(inPlayer->qWorldY);
        unkY -= I(boss->unk5C);
        temp_r1_4 = sa2__sub_8004418(unkY, unkX);
        temp_r0 = Q(boss->unk34);
        var_r7 = 0;
        var_r5 = temp_r0 >> 0x10;
        temp_r3_4 = temp_r0 >> 0x10;
        temp_r2_2 = temp_r3_4 - 0x100;
        if (temp_r2_2 < 0) {
            if (temp_r3_4 <= temp_r1_4) {
                var_r5 = 0x3FF & temp_r2_2;
                if (var_r5 < temp_r1_4) {
                    var_r7 = 1;
                }
            } else {
                var_r7 = 1;
            }
        } else {
            if ((temp_r2_2 < temp_r1_4) && (temp_r3_4 > temp_r1_4)) {
                var_r7 = 1;
            }
        }
        temp_r1_7 = (var_r5 + 0x100);
        if (temp_r1_7 > 0x3FF) {
            if (var_r5 >= temp_r1_4) {
                if ((temp_r1_7 & 0x3FF) > temp_r1_4) {
                    var_r7 = 1;
                }
            } else {
                var_r7 = 1;
            }
        } else if ((temp_r1_7 > temp_r1_4) && (var_r5 < (temp_r1_4))) {
            var_r7 = 1;
        }

        if (var_r7 != 0) {
            if (!(inPlayer->moveState & MOVESTATE_DEAD)) {
                if (HITBOX_IS_ACTIVE(inPlayer->spriteInfoBody->s.hitboxes[1])) {
                    if (boss->unkD == 0) {
                        sub_80044CC(inPlayer);
                    }
                    result = 1;
                } else {
                    Player_8014550(inPlayer);
                    sp10 = 0;
                }
            }
        } else {
            Player_8014550(inPlayer);
            sp10 = 1;
        }
    }

    if ((sp10 == 0) && (result == 0) && !(inPlayer->moveState & MOVESTATE_DEAD)) {
        if (HITBOX_IS_ACTIVE(inPlayer->spriteInfoBody->s.hitboxes[1])) {
            if (HB_COLLISION(I(inPlayer->qWorldX), I(inPlayer->qWorldY), inPlayer->spriteInfoBody->s.hitboxes[1].b, I(boss->unk58),
                             I(boss->unk5C), sprCockpit->hitboxes[0].b)) {
                if (boss->unkD == 0) {
                    sub_80044CC(inPlayer);
                }
                result = 1;
            }
        }
    }

    sprCockpit->hitboxes[0].b.bottom = 0;
    temp_r0_4 = (((u32)(boss->unk34 << 8) >> 0x10) + 0x100) & 0x3FF;
    sinVal = SIN(temp_r0_4);
    cosVal = COS(temp_r0_4);

    for (sp8 = 1; sp8 < 5; sp8++) {
        s32 r2 = (cosVal * boss->unk14[sp8][0]);
        s32 ip = (sinVal * boss->unk14[sp8][0]);
        r2 -= (sinVal * boss->unk14[sp8][1]);
        ip += (cosVal * boss->unk14[sp8][1]);
        r2 >>= 14;
        ip >>= 14;

        if (HB_COLLISION((I(inPlayer->qWorldX) - gCamera.x), (I(inPlayer->qWorldY) - gCamera.y), (*(Rect8 *)&sp0),
                         sprCockpit->x + r2 - boss->unk14[sp8][0], sprCockpit->y + ip - boss->unk14[sp8][1], sprCockpit->hitboxes[sp8].b)) {
            Player_8014550(inPlayer);
        }
    }

    return (u8)result;
}
END_NONMATCH

static void InitSpriteGroundPlate(EggHammerTankIII *boss)
{
    Sprite *s = &boss->sprGroundPlate;

    boss->unkE8 = boss->unk0;
    boss->unkEC = boss->unk4 + Q(8);

    s->tiles = ALLOC_TILES(ANIM_BOSS_1_GROUND_PLATE);
    s->anim = ANIM_BOSS_1_GROUND_PLATE;
    s->variant = 0;
    s->oamFlags = SPRITE_OAM_ORDER(20);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x1000;
    s->x = I(boss->unkE8) - gCamera.x;
    s->y = I(boss->unkEC) - gCamera.y;
    UpdateSpriteAnimation(s);
    boss->vram4C = s->tiles;
}

// TODO: Fake-match
void UpdateGroundPlate(EggHammerTankIII *boss)
{
    Sprite *s = &boss->sprGroundPlate;
    Player *player = boss->player;
    Player *partner;
    s32 worldX;
    u8 res;
    u8 gemerlTurnIndex;

    boss->unkF = sub_8068D90(player);
    if (((s32)boss->unk3C <= 0x4000) && (boss->unkF != 0) && (boss->unk12 != 0)) {
        Player_8014550(player);
    }
    worldX = I(player->qWorldX);
    if (worldX < GEMERL_TURN_MIN_X) {
        gemerlTurnIndex = 0;
    } else if (worldX >= GEMERL_TURN_MAX_X) {
        gemerlTurnIndex = ARRAY_COUNT(gUnknown_080D575C) - 1;
    } else {
#ifndef NON_MATCHING
        register s32 dx asm("r0") = worldX - GEMERL_TURN_MIN_X;
        if (dx < 0) {
            dx += 7;
        }
        gemerlTurnIndex = (u8)(dx >> 3);
#else
        s32 dx = (worldX - GEMERL_TURN_MIN_X) / 8;
        gemerlTurnIndex = (u8)dx;
#endif
    }

    s->anim = gUnknown_080D575C[gemerlTurnIndex][0];
    s->variant = gUnknown_080D575C[gemerlTurnIndex][1];
    boss->unk11 = gemerlTurnIndex;
    partner = boss->partner;
    res = sub_8068D90(partner);

    if ((boss->unk3C <= 0x4000) && (res != 0) && (boss->unk12 != 0)) {
        Player_8014550(partner);
    }
}

// NOTE: This is drawn via background graphics on GBA
static void InitSpriteHammerHead(EggHammerTankIII *boss)
{
    Sprite *s = &boss->sprHammerHead;
    s->tiles = (u8 *)(BG_VRAM + 0x4040);
    s->anim = ANIM_BOSS_1_HAMMER_HEAD;
    s->variant = 0;
    s->prevVariant = -1;
    s->oamFlags = SPRITE_OAM_ORDER(10);
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->animSpeed = SPRITE_ANIM_SPEED(1.0);
    s->palId = 0;
    s->frameFlags = 0x10000;
    s->hitboxes[0].index = -1;
    s->x = 64;
    s->y = 104;
    UpdateSpriteAnimation_BG(s);
    boss->unk30 = 0;
}

void InitSpriteCockpit(EggHammerTankIII *boss)
{
    Sprite *s = (Sprite *)&boss->sprCockpit;
    SpriteTransform *tf = &boss->tf;
    u8 *vram;

    boss->unk58 = boss->unk0;
    boss->unk5C = boss->unk4;
    vram = VramMalloc(0x44U);
    boss->vram48 = vram;

    s->tiles = vram;
    s->anim = ANIM_BOSS_1_COCKPIT;
    s->variant = 0;
    s->oamFlags = 0x4C0;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x1000;
    s->frameFlags |= 0x7F;
    s->x = I(boss->unk58) - gCamera.x;
    s->y = I(boss->unk5C) - gCamera.y;
    tf->rotation = 0;
    tf->x = s->x;
    tf->y = s->y;
    tf->qScaleX = Q(1);
    tf->qScaleY = Q(1);
    UpdateSpriteAnimation(s);

    vram += 64 * TILE_SIZE_4BPP;

    s = &boss->sprJoint;
    s->tiles = vram;
    s->anim = ANIM_BOSS_1_JOINT;
    s->variant = 0;
    s->oamFlags = 0x540;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->frameFlags = 0x1000;
    s->x = I(boss->unk58) - gCamera.x;
    s->y = I(boss->unk5C) - gCamera.y;
    UpdateSpriteAnimation(s);

    boss->unk34 = 0x30000;
    boss->unk38 = 0;
    boss->unk3C = 0x3800;
    boss->unk40 = 0;
}

void sub_8069578(EggHammerTankIII *boss)
{
    s32 sp0;
    Sprite *s;
    SpriteTransform *tf;
    s16 *var_r3;
    s32 temp_r0_6;
    s32 temp_r2_3, temp_r2_4;
    s32 cosVal, sinVal;
    s32 var_r4;
    s32 xVal;
    s32 yVal;
    u8 i;

    s = (Sprite *)&boss->sprCockpit;
    tf = &boss->tf;
    tf->rotation = (((u32)(boss->unk34 << 8) >> 0x10) + 0x100) & 0x3FF;
    tf->x = s->x;
    tf->y = s->y;
    TransformSprite(s, tf);
    UpdateSpriteAnimation(s);
    DisplaySprite(s);

    s = &boss->sprJoint;
    switch (boss->unk10) {
        case 0:
            sp0 = (boss->unk34 - 0x30000);
            sp0 = sp0 / 8;
            var_r4 = (boss->unk34 + 0x30000) / 2;
            temp_r0_6 = (boss->unk3C) / 8;
            xVal = boss->unk0;
            yVal = boss->unk4;
            for (i = 0; i < 7; i++) {
                var_r4 = (var_r4 + sp0) & 0x3FFFF;
                temp_r2_3 = var_r4 >> 8;
                cosVal = Q_MUL_2_14(COS(temp_r2_3), temp_r0_6);
                sinVal = Q_MUL_2_14(SIN(temp_r2_3), temp_r0_6);
                xVal += cosVal;
                yVal += sinVal;
                s->x = (xVal >> 8) - gCamera.x;
                s->y = (yVal >> 8) - gCamera.y;
                DisplaySprite(s);
            }
            break;
        case 10:
            sp0 = (boss->unk34 - 0x30000);
            sp0 = sp0 / 8;
            var_r4 = (boss->unk34 + 0x30000) / 2;
            temp_r0_6 = boss->unk3C / 8;
            xVal = boss->unk0;
            yVal = boss->unk4;
            for (i = 0; i < 7; i++) {
                var_r4 = ((var_r4 + sp0) & 0x3FFFF);
                temp_r2_4 = var_r4 >> 8;
                cosVal = Q_MUL_2_14(COS(temp_r2_4), temp_r0_6);
                sinVal = Q_MUL_2_14(SIN(temp_r2_4), temp_r0_6);
                xVal += cosVal;
                yVal += sinVal;
                boss->unk68[i].x = xVal;
                boss->unk68[i].y = yVal;
                boss->unkA8[i].x = ((i >> 1) << 8) + 0x100;
                if (i & 0x1) {
                    boss->unkA8[i].x = -boss->unkA8[i].x;
                }
                boss->unkA8[i].y = -Q(4);
            }

            boss->unk10 = 100;
            // through
        case 100: {
            for (i = 0; i < 7; i++) {
                boss->unk68[i].x += boss->unkA8[i].x;
                boss->unkA8[i].y += 0x20;
                boss->unk68[i].y += boss->unkA8[i].y;
                s->x = I(boss->unk68[i].x) - gCamera.x;
                s->y = I(boss->unk68[i].y) - gCamera.y;
                DisplaySprite(s);
            }
        } break;
    }
}

// (98.51%) https://decomp.me/scratch/T8vHr
NONMATCH("asm/non_matching/game/bosses/boss_1__sub_8069814.inc", void sub_8069814(EggHammerTankIII *boss))
{
    s32 sp4;
    Player *temp_r5;
    s16 temp_r0;
    s16 temp_r1;
    s16 temp_r2_3;
    s16 var_r1;
    s32 temp_r0_14;
    s32 temp_r0_15;
    s32 temp_r1_3;
    s32 temp_r1_4;
    s32 temp_r1_6;
    s32 temp_r2_4;
    s32 var_r0_6;
#ifndef NON_MATCHING
    register s32 var_r2 asm("r2");
#else
    s32 var_r2;
#endif
    u32 temp_r1_2;
    u8 temp_r0_18;
    u8 temp_r0_2;
    u8 temp_r0_4;
    Sprite *s = (Sprite *)&boss->sprCockpit;

    temp_r5 = boss->player;
    switch (boss->unk2C) {
        case 0x0:
            gDispCnt |= DISPCNT_BG2_ON;
            DmaFill32(3, 0, BG_CHAR_ADDR_FROM_BGCNT(2), 2 * TILE_SIZE_4BPP);
            boss->unk2C = 10;
            if (*boss->unk8 != 3) {
                sub_807A2AC();
                break;
            } else {
                TaskDestroy(gCurTask);
                return;
            }
            break;
        case 10:
            if (*boss->unk8 != 3) {
                if (sub_8079FFC() != 0) {
                    boss->unk2C = 0xB;
                } else {
                    boss->unk2C = 0x13;
                }
            } else {
                TaskDestroy(gCurTask);
                return;
            }
            break;
        case 11:
            if (*boss->unk8 == 3) {
                TaskDestroy(gCurTask);
                return;
            } else if (*boss->unk8 == 2) {
                if (sub_807A074()) {
                    boss->unk2C = 0x13;
                }
            }
            break;
        case 19:
            if (*boss->unk8 == 2) {
                var_r2 = 1;
                for (var_r1 = 0; var_r1 < 2; var_r1++) {
                    Player *p = &gPlayers[var_r1];
                    if (I(p->qWorldX) < 1553 || (I(p->qWorldX) > 1935)) {
                        var_r2 = 0;
                    }
                }

                if (var_r2 != 0) {
                    boss->unk2E = 0x3C;
                    boss->unk2C = 0x14;
                    sub_80299D4(0x32);
                }
            }
            break;
        case 20:
            if (--boss->unk2E == 0) {
                sub_807A4A8();
                s->anim = ANIM_BOSS_1_COCKPIT;
                s->variant = 1;
                boss->unk2E = 0x3C;
                boss->unk2C = 30;
            }
            break;
        case 30:
            if (--boss->unk2E == 0) {
                s->anim = ANIM_BOSS_1_COCKPIT;
                s->variant = 0;
                boss->unk2E = 0x3C;
                boss->unk2C = 0x28;
            }
            break;
        case 40:
            if (--boss->unk2E == 0) {
                boss->unk2C = 50;
            }
            break;
        case 50:
            boss->unk3C += 0x200;
            if (boss->unk3C >= 0x6000) {
                boss->unk3C = 0x6000;
                boss->unk2E = 0x3C;
                boss->unk2C = 0x3C;
            }
            break;
        case 60:
            if (--boss->unk2E == 0) {
                boss->unk2C = 0x5A;
            }
            break;
        case 90:
            gCurTask->main = sub_8068C38;
            boss->unkE = 0;
            boss->unk30 = 0;
            boss->unk2E = 1;
            boss->unk2C = 100;
            break;
        case 100:
            if (--boss->unk2E == 0) {
                boss->unk12 = 0;
                if (boss->unkF != 0) {
                    boss->unk12 = 1;
                    boss->unk30 = 0;
                    boss->unk44 = 0x400;
                    boss->unk2C = 0x1F4;
                } else {
                    boss->unk30 = 0;
                    boss->unk2C = 0x6E;
                }
            }
            break;

        case 110:
            boss->unk38 = SIN((u16)boss->unk30) / 0x40;
            var_r0_6 = ((boss->unkE == 0) ? boss->unk34 + boss->unk38 : boss->unk34 - boss->unk38);
            boss->unk34 = var_r0_6 & 0x3FFFF;
            boss->unk30 += 4;
            if (boss->unk30 > 0x01FF) {
                boss->unk30 = 0;
                boss->unk38 = 0;
                boss->unk44 = 0;
                boss->unk2C = 0x78;
            }
            if (boss->unk30 == 0x100) {
                var_r2 = 0;
                if (boss->unkE == 0) {
                    if (boss->unk0 > (s32)temp_r5->qWorldX) {
                        var_r2 = 1;
                    }
                } else if (boss->unk0 < (s32)temp_r5->qWorldX) {
                    var_r2 = 1;
                }

                if (var_r2 != 0) {
#ifndef NON_MATCHING
                    register s32 var_r3 asm("r3");
#else
                    s32 var_r3;
#endif
                    var_r3 = ABS(boss->unk0 - temp_r5->qWorldX);
                    if (var_r3 <= 0x6000) {
                        boss->unk40 = 0x6000;
                    } else {
                        boss->unk40 = var_r3;
                        asm("");
                    }
                } else {
                    boss->unk40 = 0x8000;
                }
            }
            break;
        case 120:
            if (boss->unk3C != boss->unk40) {
                boss->unk44 += 0x40;
                boss->unk3C += boss->unk44;
                if (boss->unk3C >= boss->unk40) {
                    boss->unk3C = boss->unk40;
                }
            }
            if (boss->unkE == 0) {
                boss->unk38 -= 0x80;
                if (boss->unk38 <= -0x1000) {
                    boss->unk38 = -0x1000;
                }
            } else {
                boss->unk38 += 0x80;
                if (boss->unk38 >= 0x1000) {
                    boss->unk38 = 0x1000;
                }
            }
            boss->unk34 = (boss->unk34 + boss->unk38) & 0x3FFFF;
            break;
        case 200:
            boss->unk2E = 0x78;
            CreateScreenShake(0x800U, 0x20U, 0U, -1U, 0x91U);
            m4aSongNumStart(0x225U);
            boss->unk2C = 0xD2;
            break;
        case 210:
            if (--boss->unk2E == 0) {
                boss->unk38 = 0;
                boss->unk44 = 0;
                boss->unk2C = 0x12C;
            }
            break;
        case 300:
            if (boss->unkE == 0) {
                boss->unk38 += 8;
                if (boss->unk38 >= 0x400) {
                    boss->unk38 = 0x400;
                }
                boss->unk34 = (boss->unk34 + boss->unk38) & 0x3FFFF;
                if (boss->unk34 >= 0x30000) {
                    boss->unk34 = 0x30000;
                    boss->unk2C = 0x140;
                }
            } else {
                boss->unk38 -= 8;
                if (boss->unk38 <= -0x400) {
                    boss->unk38 = -0x400;
                }
                boss->unk34 = (boss->unk34 + boss->unk38) & 0x3FFFF;
                if (boss->unk34 <= 0x30000) {
                    boss->unk34 = 0x30000;
                    boss->unk2C = 0x140;
                }
            }
            break;
        case 320:
            boss->unk3C -= Q(2);
            if (boss->unk3C <= 0x6000) {
                boss->unk3C = 0x6000;
                boss->unk2C = 0x136;
            }
            break;
        case 310:
            boss->unkE ^= 1;
            boss->unk30 = 0;
            boss->unk2E = 0x3C;
            boss->unk2C = 100;
            break;
        case 500:
            boss->unk44 -= 0x20;
            boss->unk3C += boss->unk44;
            if (boss->unk3C <= 0x3800) {
                boss->unk3C = 0x3800;
                boss->unk2E = 0x78;
                CreateScreenShake(0x800U, 0x20U, 0U, -1U, 0x91U);
                m4aSongNumStart(0x225U);
                boss->unk2C = 0x1FE;
            }
            break;
        case 510:
            if (--boss->unk2E == 0) {
                boss->unk2C = 0x208;
            }
            break;
        case 520:
            boss->unk3C += Q(2);
            if (boss->unk3C >= 0x6000) {
                boss->unk3C = 0x6000;
                boss->unk12 = 0;
                boss->unk30 = 0;
                boss->unk2E = 0x3C;
                boss->unk2C = 100;
                break;
            }
            break;
    }

    {
        s32 xVal;
        s32 yVal;
        temp_r1_2 = (u32)(boss->unk34 << 8) >> 0x10;
        xVal = ((boss->unk3C * COS(temp_r1_2)) / 0x4000);
        yVal = ((boss->unk3C * SIN(temp_r1_2)) / 0x4000);
        boss->unk58 = boss->unk0 + xVal;
        boss->unk5C = boss->unk4 + yVal;
        s->x = I(boss->unk58) - gCamera.x;
        s->y = I(boss->unk5C) - gCamera.y;
    }
    if ((u16)boss->unk2C == 120) {
        s32 sinVal;
        s32 cosVal;
        s32 a, b, c;
        s32 d, e, f;
        temp_r1_4 = (temp_r1_2 + 0x100) & 0x3FF;
        cosVal = COS(temp_r1_4);
        sinVal = SIN(temp_r1_4);
        d = boss->unkE;
        var_r2 = 4;
        if (d == 0) {
            var_r2 = 2;
        }
        b = sinVal;
        b = (b * boss->unk14[var_r2][0]) + (e = boss->unk14[var_r2][1]) * cosVal;
        b >>= 6;

        if ((s32)((b + boss->unk5C) - (e << 8)) >= 0xAA00) {
            boss->unk2C = 0xC8;
        }
    }
}
END_NONMATCH