#include "global.h"
#include "core.h"
#include "trig.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "multi_sio_stuff.h"
#include "game/game.h"
#include "game/bosses.h"
#include "game/save.h"
#include "game/sa3/bosses/more_gemerl.h"
#include "game/stage.h"
#include "game/shared/stage/player.h"
#include "game/shared/stage/player_callbacks.h"
#include "game/shared/stage/screen_shake.h"
#include "constants/animations.h"
#include "constants/move_states.h"
#include "constants/songs.h"

#define GEMERL_TURN_MIN_X 1696
#define GEMERL_TURN_MAX_X 1760

#define UNK2C_STATE_A 0
#define UNK2C_STATE_B 10
#define UNK2C_STATE_C 11
#define UNK2C_STATE_D 19
#define UNK2C_STATE_E 20
#define UNK2C_STATE_F 30
#define UNK2C_STATE_G 40
#define UNK2C_STATE_H 50
#define UNK2C_STATE_I 60
#define UNK2C_STATE_J 90
#define UNK2C_STATE_K 100
#define UNK2C_STATE_L 110
#define UNK2C_STATE_M 111
#define UNK2C_STATE_N 112
#define UNK2C_STATE_O 120
#define UNK2C_STATE_P 200
#define UNK2C_STATE_Q 210
#define UNK2C_STATE_R 300
#define UNK2C_STATE_S 310
#define UNK2C_STATE_T 320
#define UNK2C_STATE_U 500
#define UNK2C_STATE_V 510
#define UNK2C_STATE_W 520
#define UNK2C_STATE_X 1000
#define UNK2C_STATE_Y 1010

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
extern void sub_8079758(u8, s16 x, s16 y, s16, u16 angle, u8, s16, u8 *vram);
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
    u8 var_r5;
    EggHammerTankIII *boss;

    t = TaskCreate(sub_806A728, sizeof(EggHammerTankIII), 0x2100U, 0U, TaskDestructor_Boss_806A7E4);
    gStageData.taskBoss = t;
    boss = TASK_DATA(t);
    boss->unk0 = Q(worldX);
    boss->unk4 = Q(worldY);

    if (gStageData.difficulty == DIFFICULTY_NORMAL) {
        boss->lives = 8;
    } else {
        boss->lives = 6;
    }

    boss->unk8 = param0;
    boss->unkD = 0;
    boss->unk32 = 0;
    boss->unkF = 0;
    boss->unk2C = UNK2C_STATE_A;
    boss->unk2E = 0;
    boss->unk10 = 0;
    boss->unk11 = 0;
    boss->unk12 = 0;
    boss->player = &gPlayers[PLAYER_1];
    boss->partner = &gPlayers[PLAYER_2];
    boss->vram48 = NULL;
    boss->vram4C = NULL;
    boss->vram28 = VramMalloc(158);

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

u8 sub_8068E5C(Player *inPlayer)
{
    u8 sp8;
    u8 result = 0;
    s32 sp10 = 0;
    s8 sp0[4] = { -inPlayer->spriteOffsetX, -9, //
                  +inPlayer->spriteOffsetX, +9 };
    u16 angle;
    s32 temp_r1_7;
    s32 temp_r2_2;
    s32 var_r7;
    s8 temp_r5_4;
    s8 temp_r5_6;
    s8 temp_r7;
    s16 temp_r1_4;
    s16 temp_r0;
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
        var_r5 = I(boss->unk34);
        var_r7 = 0;
        temp_r2_2 = var_r5 - 0x100;
        if (temp_r2_2 < 0) {
            if (var_r5 <= temp_r1_4) {
                var_r5 = 0x3FF & temp_r2_2;
                if (var_r5 < temp_r1_4) {
                    var_r7 = 1;
                }
            } else {
                var_r7 = 1;
            }
        } else {
            if ((temp_r2_2 < temp_r1_4) && (var_r5 > temp_r1_4)) {
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

        if (var_r7) {
            if (!(inPlayer->moveState & MOVESTATE_DEAD)) {
                if (HITBOX_IS_ACTIVE(inPlayer->spriteInfoBody->s.hitboxes[1])) {
                    if (boss->unkD == 0) {
                        sub_80044CC(inPlayer);
                    }
                    result = 1;
                } else {
                    Player_8014550(inPlayer);
                    sp10 = 1;
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
    angle = boss->unk34 >> 8;
    angle = (angle + 0x100) & 0x3FF;
    sinVal = SIN(angle);
    cosVal = COS(angle);

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

void sub_8069814(EggHammerTankIII *boss)
{
    Player *temp_r5;
    s16 var_r1;
    s32 var_r2;
    s32 xVal;
    s32 yVal;
    Sprite *s = (Sprite *)&boss->sprCockpit;

    temp_r5 = boss->player;
    switch (boss->unk2C) {
        case UNK2C_STATE_A:
            gDispCnt |= DISPCNT_BG2_ON;
            DmaFill32(3, 0, BG_CHAR_ADDR_FROM_BGCNT(2), 2 * TILE_SIZE_4BPP);
            boss->unk2C = UNK2C_STATE_B;
            if (*boss->unk8 != 3) {
                sub_807A2AC();
                break;
            } else {
                TaskDestroy(gCurTask);
                return;
            }
            break;

        case UNK2C_STATE_B:
            if (*boss->unk8 != 3) {
                if (sub_8079FFC() != 0) {
                    boss->unk2C = UNK2C_STATE_C;
                } else {
                    boss->unk2C = UNK2C_STATE_D;
                }
            } else {
                TaskDestroy(gCurTask);
                return;
            }
            break;

        case UNK2C_STATE_C:
            if (*boss->unk8 == 3) {
                TaskDestroy(gCurTask);
                return;
            } else if (*boss->unk8 == 2) {
                if (sub_807A074()) {
                    boss->unk2C = UNK2C_STATE_D;
                }
            }
            break;

        case UNK2C_STATE_D:
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
                    boss->unk2C = UNK2C_STATE_E;
                    sub_80299D4(0x32);
                }
            }
            break;

        case UNK2C_STATE_E:
            if (--boss->unk2E == 0) {
                sub_807A4A8();
                s->anim = ANIM_BOSS_1_COCKPIT;
                s->variant = 1;
                boss->unk2E = 0x3C;
                boss->unk2C = UNK2C_STATE_F;
            }
            break;

        case UNK2C_STATE_F:
            if (--boss->unk2E == 0) {
                s->anim = ANIM_BOSS_1_COCKPIT;
                s->variant = 0;
                boss->unk2E = 0x3C;
                boss->unk2C = UNK2C_STATE_G;
            }
            break;

        case UNK2C_STATE_G:
            if (--boss->unk2E == 0) {
                boss->unk2C = UNK2C_STATE_H;
            }
            break;

        case UNK2C_STATE_H:
            boss->unk3C += 0x200;
            if (boss->unk3C >= 0x6000) {
                boss->unk3C = 0x6000;
                boss->unk2E = 0x3C;
                boss->unk2C = UNK2C_STATE_I;
            }
            break;

        case UNK2C_STATE_I:
            if (--boss->unk2E == 0) {
                boss->unk2C = UNK2C_STATE_J;
            }
            break;

        case UNK2C_STATE_J:
            gCurTask->main = sub_8068C38;
            boss->unkE = 0;
            boss->unk30 = 0;
            boss->unk2E = 1;
            boss->unk2C = UNK2C_STATE_K;
            break;

        case UNK2C_STATE_K:
            if (--boss->unk2E == 0) {
                boss->unk12 = 0;
                if (boss->unkF != 0) {
                    boss->unk12 = 1;
                    boss->unk30 = 0;
                    boss->unk44 = 0x400;
                    boss->unk2C = UNK2C_STATE_U;
                } else {
                    boss->unk30 = 0;
                    boss->unk2C = UNK2C_STATE_L;
                }
            }
            break;

        case UNK2C_STATE_L:
            boss->unk38 = SIN((u16)boss->unk30) / 0x40;
            if (boss->unkE == 0) {
                boss->unk34 = (boss->unk34 + boss->unk38) & 0x3FFFF;
            } else {
                boss->unk34 = (boss->unk34 - boss->unk38) & 0x3FFFF;
            }
            boss->unk30 += 4;
            if (boss->unk30 > 0x01FF) {
                boss->unk30 = 0;
                boss->unk38 = 0;
                boss->unk44 = 0;
                boss->unk2C = UNK2C_STATE_O;
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
                    xVal = ABS(boss->unk0 - temp_r5->qWorldX);
                    if (xVal <= 0x6000) {
                        boss->unk40 = 0x6000;
                    } else {
                        boss->unk40 = xVal;
                    }
                } else {
                    boss->unk40 = 0x8000;
                }
            }
            break;

        case UNK2C_STATE_O:
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

        case UNK2C_STATE_P:
            boss->unk2E = 0x78;
            CreateScreenShake(0x800U, 0x20U, 0U, -1U, 0x91U);
            m4aSongNumStart(SE_549);
            boss->unk2C = UNK2C_STATE_Q;
            break;

        case UNK2C_STATE_Q:
            if (--boss->unk2E == 0) {
                boss->unk38 = 0;
                boss->unk44 = 0;
                boss->unk2C = UNK2C_STATE_R;
            }
            break;

        case UNK2C_STATE_R:
            if (boss->unkE == 0) {
                boss->unk38 += 8;
                if (boss->unk38 >= 0x400) {
                    boss->unk38 = 0x400;
                }
                boss->unk34 = (boss->unk34 + boss->unk38) & 0x3FFFF;
                if (boss->unk34 >= 0x30000) {
                    boss->unk34 = 0x30000;
                    boss->unk2C = UNK2C_STATE_T;
                }
            } else {
                boss->unk38 -= 8;
                if (boss->unk38 <= -0x400) {
                    boss->unk38 = -0x400;
                }
                boss->unk34 = (boss->unk34 + boss->unk38) & 0x3FFFF;
                if (boss->unk34 <= 0x30000) {
                    boss->unk34 = 0x30000;
                    boss->unk2C = UNK2C_STATE_T;
                }
            }
            break;
        case UNK2C_STATE_T:
            boss->unk3C -= Q(2);
            if (boss->unk3C <= 0x6000) {
                boss->unk3C = 0x6000;
                boss->unk2C = UNK2C_STATE_S;
            }
            break;
        case UNK2C_STATE_S:
            boss->unkE ^= 1;
            boss->unk30 = 0;
            boss->unk2E = 0x3C;
            boss->unk2C = UNK2C_STATE_K;
            break;

        case UNK2C_STATE_U:
            boss->unk44 -= 0x20;
            boss->unk3C += boss->unk44;
            if (boss->unk3C <= 0x3800) {
                boss->unk3C = 0x3800;
                boss->unk2E = 0x78;
                CreateScreenShake(0x800U, 0x20U, 0U, -1U, 0x91U);
                m4aSongNumStart(SE_549);
                boss->unk2C = UNK2C_STATE_V;
            }
            break;

        case UNK2C_STATE_V:
            if (--boss->unk2E == 0) {
                boss->unk2C = UNK2C_STATE_W;
            }
            break;

        case UNK2C_STATE_W:
            boss->unk3C += 0x200;
            if (boss->unk3C >= Q_2_14(1.5)) {
                boss->unk3C = Q_2_14(1.5);
                boss->unk12 = 0;
                boss->unk30 = 0;
                boss->unk2E = 0x3C;
                boss->unk2C = UNK2C_STATE_K;
                break;
            }
            break;
    }

    {
        u16 temp_r1_2 = boss->unk34 >> 8;
        xVal = Q_MUL_2_14(boss->unk3C, COS(temp_r1_2));
        yVal = Q_MUL_2_14(boss->unk3C, SIN(temp_r1_2));
        boss->unk58 = boss->unk0 + xVal;
        boss->unk5C = boss->unk4 + yVal;
        s->x = I(boss->unk58) - gCamera.x;
        s->y = I(boss->unk5C) - gCamera.y;

        if (boss->unk2C == UNK2C_STATE_O) {
            s32 b;
            s32 var_r2;
            temp_r1_2 = (temp_r1_2 + 0x100) & 0x3FF;

            yVal = SIN(temp_r1_2);
            xVal = COS(temp_r1_2);
            if (boss->unkE == 0) {
                var_r2 = 2;
            } else {
                var_r2 = 4;
            }
            b = ((yVal * boss->unk14[var_r2][0]) + (xVal * boss->unk14[var_r2][1])) >> 6;

            yVal = boss->unk5C + b - (boss->unk14[var_r2][1] << 8);
            if (yVal >= 0xAA00) {
                boss->unk2C = UNK2C_STATE_P;
            }
        }
    }
}

void sub_8069DEC(EggHammerTankIII *boss)
{
    Player *player;
    Player *partner;
    s32 temp_r1_7;
    u32 temp_r3_2;
    u16 angle;
    u16 i;
    u32 sinVal, cosVal;
    Sprite *s;
    s32 temp_r2, temp_r3;

    boss->unk32++;
    switch (boss->unk2C) {
        case UNK2C_STATE_A:
            if (boss->unkD != 0) {
                boss->unkD--;
            } else {
                boss->unk2C = UNK2C_STATE_B;
            }

        default:
            break;

        case UNK2C_STATE_B:
            if (boss->unk58 < boss->unk0) {
                boss->unk60 = +0x100;
            } else {
                boss->unk60 = -0x100;
            }
            boss->unk64 = -0x600;
            CreateScreenShake(0x800U, 0x20U, 0U, -1U, 0x91U);
            boss->unk10 = 10;
            boss->unk2C = UNK2C_STATE_K;
            break;

        case UNK2C_STATE_K:
            temp_r1_7 = boss->unk64;
            boss->unk64 += 0x20;
            if (boss->unk64 >= 0x800) {
                boss->unk64 = 0x800;
            }

            boss->unk58 += boss->unk60;
            boss->unk5C += boss->unk64;

            if (1 & boss->unk32) {
                angle = PseudoRandom32() % SIN_PERIOD;
                temp_r3_2 = PseudoRandom32() % 48U;
                temp_r2 = (temp_r3_2 * COS(angle)) >> 6;
                temp_r3 = (temp_r3_2 * SIN(angle)) >> 6;
                sub_8079758(6, I(boss->unk58 + temp_r2), I(boss->unk5C + temp_r3), 0x400, angle, 0x14, 0x80, boss->vram28);
            }
            if ((0x3F & boss->unk32) == 0) {
                m4aSongNumStart(SE_545);
            }

            if (boss->unk60 != 0) {
                if (boss->unk60 < 0) {
                    if (boss->unk58 <= boss->unk0) {
                        boss->unk60 = 0;
                    }
                } else if (boss->unk58 >= boss->unk0) {
                    boss->unk60 = 0;
                }
            };
            if ((temp_r1_7 < 0) && (boss->unk64 >= 0)) {
                s = (Sprite *)&boss->sprCockpit;
                s->anim = ANIM_BOSS_1_COCKPIT;
                s->variant = 3;
                s->oamFlags = 0x4C0;
                s->frameFlags = 0x2000;
                s->frameFlags |= 0x7F;
                s = &boss->sprJoint;
                s->oamFlags = 0x540;
                s->frameFlags = 0x2000;
                s = &boss->sprGroundPlate;
                s->oamFlags = 0x500;
                s->frameFlags = 0x2000;
                s = &boss->sprHammerHead;
                s->frameFlags = 0x11000;
            }
            if (boss->unk5C >= 0x9E00) {
                boss->unk5C = 0x9E00;
                CreateScreenShake(0x800U, 0x20U, 0U, -1U, 0x91U);
                boss->unk64 = -0x400;
                boss->unk2C = UNK2C_STATE_L;
            }
            break;

        case UNK2C_STATE_L:
            boss->unk64 = boss->unk64 + 0x20;
            boss->unk58 += boss->unk60;
            boss->unk5C += boss->unk64;
            if (boss->unk32 & 1) {
                angle = PseudoRandom32() % SIN_PERIOD;
                temp_r3_2 = PseudoRandom32() % 48U;
                temp_r2 = (u32)(temp_r3_2 * COS(angle)) >> 6;
                temp_r3 = (u32)(temp_r3_2 * SIN(angle)) >> 6;
                sub_8079758(6U, (s16)((boss->unk58 + temp_r2) >> 8), (s16)((boss->unk5C + temp_r3) >> 8), 0x400, angle, 0x14, 0x80,
                            boss->vram28);
            }
            if (!(0x3F & boss->unk32)) {
                m4aSongNumStart(SE_545);
            }
            if (boss->unk60 != 0) {
                if (boss->unk60 < 0) {
                    if (boss->unk58 <= boss->unk0) {
                        boss->unk60 = 0;
                    }
                } else if (boss->unk58 >= boss->unk0) {
                    boss->unk60 = 0;
                }
            };
            if (boss->unk5C >= 0x9E00) {
                boss->unk5C = 0x9E00;
                CreateScreenShake(0x800U, 0x20U, 0U, -1U, 0x91U);
                boss->unk64 = -0x300;
                boss->unk2C = UNK2C_STATE_M;
            }
            break;

        case UNK2C_STATE_M:
            boss->unk64 += 0x20;
            boss->unk58 += boss->unk60;
            boss->unk5C += boss->unk64;
            if (boss->unk32 & 1) {
                angle = PseudoRandom32() % SIN_PERIOD;
                temp_r3_2 = PseudoRandom32() % 48U;
                temp_r2 = (u32)(temp_r3_2 * COS(angle)) >> 6;
                temp_r3 = (u32)(temp_r3_2 * SIN(angle)) >> 6;
                sub_8079758(6U, (s16)((boss->unk58 + temp_r2) >> 8), (s16)((boss->unk5C + temp_r3) >> 8), 0x400, angle, 0x14, 0x80,
                            boss->vram28);
            }
            if (!(0x3F & boss->unk32)) {
                m4aSongNumStart(SE_545);
            }

            if (boss->unk60 != 0) {
                if (boss->unk60 < 0) {
                    if (boss->unk58 <= boss->unk0) {
                        boss->unk60 = 0;
                    }
                } else if (boss->unk58 >= boss->unk0) {
                    boss->unk60 = 0;
                }
            };

            if (boss->unk5C >= 0x9E00) {
                boss->unk5C = 0x9E00;
                CreateScreenShake(0x800U, 0x20U, 0U, -1U, 0x91U);
                boss->unk64 = -0x200;
                boss->unk2C = UNK2C_STATE_N;
            }
            break;

        case UNK2C_STATE_N:
            boss->unk64 = boss->unk64 + 0x20;
            boss->unk58 = boss->unk58 + boss->unk60;
            ;
            boss->unk5C = boss->unk5C + boss->unk64;
            if (boss->unk32 & 1) {
                angle = PseudoRandom32() % SIN_PERIOD;
                temp_r3_2 = PseudoRandom32() % 48U;
                temp_r2 = (u32)(temp_r3_2 * COS(angle)) >> 6;
                temp_r3 = (u32)(temp_r3_2 * SIN(angle)) >> 6;
                sub_8079758(6U, (s16)((boss->unk58 + temp_r2) >> 8), (s16)((boss->unk5C + temp_r3) >> 8), 0x400, angle, 0x14, 0x80,
                            boss->vram28);
            }
            if (!(0x3F & boss->unk32)) {
                m4aSongNumStart(SE_545);
            }

            if (boss->unk60 != 0) {
                if (boss->unk60 < 0) {
                    if (boss->unk58 <= boss->unk0) {
                        boss->unk60 = 0;
                    }
                } else if (boss->unk58 >= boss->unk0) {
                    boss->unk60 = 0;
                }
            }

            if (boss->unk5C >= 0x9E00) {
                boss->unk5C = 0x9E00;
                CreateScreenShake(0x800U, 0x20U, 0U, -1U, 0x91U);
                boss->unk2E = 0xB4;
                boss->unk2C = UNK2C_STATE_O;
                boss->unk13 = 0;
            }
            break;

        case UNK2C_STATE_O:
            if (--boss->unk2E == 0) {
                boss->unk2E = 20;
                boss->unk2C = UNK2C_STATE_P;
            }
            if ((boss->unk2E > 60) && ((0x3F & boss->unk32) == 0)) {
                m4aSongNumStart(SE_545);
            }

            if ((boss->unk32 & 0x3) == 0) {
                angle = (PseudoRandom32() % SIN_PERIOD);
                if (angle < 0x200) {
                    angle += 0x200;
                }
                temp_r3_2 = PseudoRandom32() % 32u;
                temp_r2 = (u32)(temp_r3_2 * COS(angle)) >> 6;
                temp_r3 = (u32)(temp_r3_2 * SIN(angle)) >> 6;
                sub_8079758((u8)(boss->unk13 * 2), I(boss->unk58 + temp_r2), I(boss->unk5C + temp_r3), 0x300, angle, 0x1E, 0x20,
                            boss->vram28);
                if (++boss->unk13 > 2U) {
                    boss->unk13 = 0;
                }
                if ((boss->unk32 & 0x3) == 0) {
                    angle = PseudoRandom32() % SIN_PERIOD;
                    temp_r3_2 = PseudoRandom32() % 80U;
                    temp_r2 = (u32)(COS(angle) * temp_r3_2) >> 6;
                    sinVal = (u32)(SIN(angle) * temp_r3_2);
                    sub_8079758(6U, I(boss->unk58 + temp_r2), (s16)(gCamera.y + (80 + (sinVal >> 0xE))), 0x200, angle, 0x1E, 0,
                                boss->vram28);
                }
            }
            break;

        case UNK2C_STATE_P:
            if (1 & boss->unk2E) {
                gDispCnt &= ~0x400;
            } else {
                gDispCnt |= 0x400;
            }

            if (--boss->unk2E == 0) {
                for (i = 0; i < SIN_PERIOD; i += 4 * TILE_SIZE_4BPP) {
                    sub_8079758(6U, I(boss->unk58), I(boss->unk5C), 0x200, i, 30, 0, boss->vram28);
                }
                m4aSongNumStart(SE_545);
                gDispCnt &= ~DISPCNT_BG2_ON;
                boss->unk2E = 0xA;
                boss->unk2C = UNK2C_STATE_Q;
            }
            break;

        case UNK2C_STATE_Q:
            if (--boss->unk2E == 0) {
                for (i = 0; i < SIN_PERIOD; i += 4 * TILE_SIZE_4BPP) {
                    sub_8079758(6U, I(boss->unk58), I(boss->unk5C), 0x200, i, 30, 0, boss->vram28);
                }
                boss->unk2E = 0xA;
                boss->unk2C = UNK2C_STATE_X;
            }
            break;

        case UNK2C_STATE_X:
            if (--boss->unk2E == 0) {
                boss->unk32 = 0;
                boss->unk2C = UNK2C_STATE_Y;
                gCurTask->main = Task_8068D00;
            }
            break;
    }
    s = (Sprite *)&boss->sprCockpit;
    s->x = I(boss->unk58) - gCamera.x;
    s->y = I(boss->unk5C) - gCamera.y;
    player = boss->player;
    player->moveState |= MOVESTATE_IGNORE_INPUT;
    partner = boss->partner;
    partner->moveState |= MOVESTATE_IGNORE_INPUT;
}

void sub_806A5DC(EggHammerTankIII *boss)
{
    Sprite *s = (Sprite *)&boss->sprCockpit;

    if ((boss->lives != 0) && (boss->unkD == 0)) {
        boss->lives--;
        if (gStageData.difficulty == DIFFICULTY_NORMAL) {
            if (boss->lives == 4) {
                sub_80299D4(0x33);
            }
        } else if (boss->lives == 3) {
            sub_80299D4(0x33);
        }

        s->anim = ANIM_BOSS_1_COCKPIT;
        s->variant = 2;

        boss->unkD = 0x7A;
        sub_8078DB0(ANIM_PALETTE_BOSS_1_HAMMER_HIT, 0, 0x7A, 1); // Body
        sub_8078DB0(ANIM_PALETTE_BOSS_1_MACHINE_HIT, 0, 0x7A, 0); // Joints and Base
        sub_8078DB0(ANIM_PALETTE_BOSS_1_COCKPIT_HIT, 0, 0x7A, 0); // Eggman
        m4aSongNumStart(SE_235);
        sub_807A468();

        if (gStageData.gameMode == 5) {
            if (gStageData.playerIndex == 0) {
                if (boss->lives != 0) {
                    sub_8027674(3U, boss->lives);
                }
            } else {
                sub_8027674(4U, boss->lives);
            }
        }
    }
}

void sub_0806A69C(u8 *arg0)
{
    EggHammerTankIII *boss = TASK_DATA(gStageData.taskBoss);
    u16 temp_r1 = arg0[2] & 0x7F;
    u16 lives = (arg0[3] | (arg0[4] << 8));
#ifdef BUG_FIX
    // Prevent potential uninitted pointer deref.
    Sprite *s = NULL;
#else
    Sprite *s;
#endif

    switch (temp_r1) {
        case 1: {
            boss->lives = 0;
            s = &boss->sprGroundPlate;
            boss->player->moveState |= MOVESTATE_IGNORE_INPUT;
            boss->partner->moveState |= MOVESTATE_IGNORE_INPUT;
            boss->unk32 = 0;
            boss->unk2C = UNK2C_STATE_A;
            boss->unk2E = 0;
            ResolvePlayerSpriteCollision(s, boss->player);
            ResolvePlayerSpriteCollision(s, boss->partner);
            gStageData.taskBoss->main = Task_806A760;
        } break;

        case 3:
        case 4: {
            if (boss->lives != (u8)lives) {
                sub_806A5DC(boss);
            }
        } break;
    }
}

void sub_806A728(void)
{
    EggHammerTankIII *boss = TASK_DATA(gCurTask);

    sub_8069814(boss);
    UpdateGroundPlate(boss);
    sub_8069578(boss);
    sub_806A854(boss);
    sub_806A898(boss);
}

void Task_806A760(void)
{
    EggHammerTankIII *boss = TASK_DATA(gCurTask);
    sub_8069DEC(boss);

    if (DISPCNT_BG2_ON & gDispCnt) {
        sub_8069578(boss);
        sub_806A854(boss);
        sub_806A898(boss);
    }
}

void sub_806A7A4(void)
{
    EggHammerTankIII *boss = TASK_DATA(gCurTask);
    Player *player = boss->player;
    Player *partner;

    player->moveState |= MOVESTATE_IGNORE_INPUT;
    partner = boss->partner;
    partner->moveState |= MOVESTATE_IGNORE_INPUT;
    sub_8069578(boss);
    sub_806A854(boss);
    sub_806A898(boss);
}

void TaskDestructor_Boss_806A7E4(Task *t)
{
    EggHammerTankIII *temp_r1 = TASK_DATA(t);

    VramFree(temp_r1->vram28);

    if (temp_r1->vram48 != NULL) {
        VramFree(temp_r1->vram48);
        temp_r1->vram48 = NULL;
    }

    if (temp_r1->vram4C != NULL) {
        VramFree(temp_r1->vram4C);
        temp_r1->vram4C = NULL;
    }
}

void sub_806A818(EggHammerTankIII *boss)
{
    Sprite *s = &boss->sprGroundPlate;
    boss->player->moveState |= MOVESTATE_IGNORE_INPUT;
    boss->partner->moveState |= MOVESTATE_IGNORE_INPUT;
    boss->unk32 = 0;
    boss->unk2C = UNK2C_STATE_A;
    boss->unk2E = 0;
    ResolvePlayerSpriteCollision(s, boss->player);
    ResolvePlayerSpriteCollision(s, boss->partner);
}

void sub_806A854(EggHammerTankIII *boss)
{
    Sprite *sprGroundPlate = &boss->sprGroundPlate;

    sprGroundPlate->x = I(boss->unkE8) - gCamera.x;
    sprGroundPlate->y = I(boss->unkEC) - gCamera.y;
    UpdateSpriteAnimation(sprGroundPlate);
    DisplaySprite(sprGroundPlate);
}

void sub_806A894(EggHammerTankIII *boss) { }

void sub_806A898(EggHammerTankIII *boss)
{
    Sprite *sprHammerHead = &boss->sprHammerHead;
    Vec2_32 pos;
    u16 angle;
    pos.x = (I(boss->unk58) - gCamera.x);
    pos.y = (I(boss->unk5C) - gCamera.y);
    angle = I(boss->unk34);

    SA2_LABEL(sub_8003EE4)((angle + 0x100) & 0x3FF, 0x100, 0x100, 0x40, 0x40, pos.x, pos.y, gBgAffineRegs);
    sprHammerHead->x = 64;
    sprHammerHead->y = 104;
    sub_80BE46C(sprHammerHead);
}

s32 sub_806A908(void) { return 0; }
