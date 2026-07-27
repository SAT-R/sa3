#include "global.h"
#include "core.h"
#include "trig.h"
#include "malloc_vram.h"
#include "lib/m4a/m4a.h"
#include "game/stage.h" // gStageData
#include "game/shared/stage/camera.h"
#include "game/shared/stage/player_callbacks.h"
#include "constants/animations.h"
#include "constants/move_states.h"
#include "constants/songs.h"
#include "constants/zones.h"

typedef struct {
    /* 0x00 */ Sprite s;
    /* 0x28 */ u16 unk28;
    /* 0x2A */ u8 unk2A;
} GemerlMore_2C;

typedef struct {
    /* 0x00 */ u16 unk0;
    /* 0x04 */ s32 unk4[3][2];
    /* 0: sprEggman
       1: sprEggMobile
       2: sprGemerl */
    /* 0x1C */ Sprite3 sprites[3];
    /* 0xC4 */ VoidFn func;
} GemerlMore_C8;

typedef struct {
    /* 0x00 */ s32 qWorldX;
    /* 0x04 */ s32 qWorldY;
    /* 0x08 */ s16 unk8;
    /* 0x0A */ s16 unkA;
    /* 0x0C */ s16 unkC;
    /* 0x0E */ u8 unkE;
    /* 0x0F */ bool8 vramUsesHeap;
    /* 0x10 */ Sprite s;
} GemerlMore_38;

typedef struct {
    /* 0x00 */ AnimId anim;
    /* 0x02 */ u8 pattern;
    /* 0x04 */ u32 numTiles;
    /* 0x08 */ u32 vramOffset;
} Strc_80D5A6C;

void sub_8078E34(s32 *param0, VoidFn fn);
void sub_8067EA0(u8 *param0, s16 param1);
void sub_806A69C(u8 *param0, s16 param1);
void sub_806CDB8(u8 *param0, s16 param1);
void sub_806DAD4(u8 *param0, s16 param1);
void sub_8071594(u8 *param0, s16 param1);
void sub_80732CC(u8 *param0, s16 param1);
void sub_8074BA0(u8 *param0, s16 param1);
void sub_80769C4(u8 *param0, s16 param1);
void sub_807F4F0(u8 *param0, s16 param1);
void sub_8085588(u8 *param0, s16 param1);
void Task_2C_807A514(void);
void Task_38_807989C(void);
void Task_C8_807990C(void);
void Task_C8_8079AB4(void);
void Task_C8_8079B8C(void);
void Task_C8_8079C60(void);
void Task_C8_8079D40(void);
void Task_C8_8079DFC(void);
void Task_C8_8079EDC(void);
void TaskDestructor_38_807A4E4(struct Task *t);
void TaskDestructor_C8_807A500(struct Task *t);

typedef struct {
    u8 filler0[2];
    u8 unk2;
    u8 unk3;
    u8 filler4[0x10];
    Sprite2 *spr14;
    u8 filler18[0x18];
} Something;

extern void sub_8027658();
extern void sub_8027620(s16 screenX, s16 screenY);

extern const Strc_80D5A6C gUnknown_080D5A6C[10];
extern const u16 gUnknown_080D5AE8[7];
extern const s16 gUnknown_080D5AF6[4];

void sub_8078DB0(s16 anim, s8 pattern, s16 param2, bool8 param3)
{
    GemerlMore_2C *strc2C = TASK_DATA(TaskCreate(Task_2C_807A514, sizeof(GemerlMore_2C), 0xF000U, 0U, NULL));
    Sprite *s = &strc2C->s;

    strc2C->unk28 = param2;
    strc2C->unk2A = param3;

    s->tiles = 0;
    s->oamFlags = 0;
    s->anim = anim;
    s->variant = pattern;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = SPRITE_ANIM_SPEED(10. / 16.);
    s->palId = 0;
    s->x = 0;
    s->y = 0;
    s->frameFlags = 0x80000;
}

void sub_8078E34(s32 *param0, VoidFn fn)
{
    s32 var_r0;
    u8 *vram;
    u8 *temp_r5;
    u8 *var_r1;
    u8 var_r2;
    u8 var_r3;
    GemerlMore_C8 *strcC8 = TASK_DATA(TaskCreate(Task_C8_807990C, 0xC8U, 0x2100U, 0U, TaskDestructor_C8_807A500));
    Sprite *s, *s2, *s3;
    strcC8->unk0 = 0;
    strcC8->func = fn;

    for (var_r3 = 0; var_r3 < 3; var_r3++) {
        for (var_r2 = 0; var_r2 < 2; var_r2++) {
            if (var_r3 != 2) {
                strcC8->unk4[var_r3][var_r2] = param0[var_r2 + 0];
            } else {
                strcC8->unk4[var_r3][var_r2] = param0[var_r2 + 2];
            }
        }
    }

    vram = VramMalloc(88);

    s = (Sprite *)&strcC8->sprites[0];
    s->tiles = vram;
    s->oamFlags = 0x4C0;
    s->anim = ANIM_EGGMAN_SIDE;
    s->variant = 4;
    s->qAnimDelay = 0;
    s->prevVariant = 0xFF;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->x = param0[0];
    s->y = param0[1];
    s->frameFlags = 0x2000;
    vram += 16 * TILE_SIZE_4BPP;

    s2 = (Sprite *)&strcC8->sprites[1];
    s2->tiles = vram;
    s2->oamFlags = 0x500;
    s2->anim = ANIM_NEO_EGGMOBILE;
    s2->variant = 0;
    s2->qAnimDelay = 0;
    s2->prevVariant = -1;
    s2->animSpeed = 0x10;
    s2->palId = 9;
    s2->x = param0[0];
    s2->y = param0[1];
    s2->frameFlags = 0x2000;
    vram += 36 * TILE_SIZE_4BPP;

    s = (Sprite *)&strcC8->sprites[2];
    s->tiles = vram;
    s->oamFlags = 0x480;
    s->anim = ANIM_GEMERL_IDLE;
    s->variant = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->x = param0[0];
    s->y = param0[1];
    s->frameFlags = 0x2000;
}

// TODO: This *might* be an inline function?
//       It is unused, but there's similar structure below it.
//       But usually an implementation of an inlined function appears later in OG code
NONMATCH("asm/non_matching/game/bosses/eggesc__GemerlUnusedRecursiveFunc.inc", void GemerlUnusedRecursiveFunc()) { }
END_NONMATCH

// Very similar to sub_8079468
NONMATCH("asm/non_matching/game/bosses/eggesc__sub_8079194.inc", void sub_8079194(u8 *arg0, u8 arg1, u8 arg2, u8 *arg3)) { }
END_NONMATCH

// Very similar to sub_8079194
NONMATCH("asm/non_matching/game/bosses/eggesc__sub_8079468.inc", void sub_8079468(u8 *arg0, u8 arg1, u8 arg2, u8 *arg3)) { }
END_NONMATCH

struct Task *sub_8079758(u8 stateIndex, s16 x, s16 y, s16 arg3, u16 angle, u8 arg5, s16 arg6, u8 *vram)
{
    Task *spC;
    Task *temp_r0_2;
    s16 temp_r4;
    s32 temp_r1_2;
    s32 var_r4;
    u8 *vramTarget;
    void *temp_r0_4;
    struct Task *t = TaskCreate(Task_38_807989C, sizeof(GemerlMore_38), 0x2100U, 0U, TaskDestructor_38_807A4E4);
    GemerlMore_38 *strc38 = TASK_DATA(t);
    Sprite *s = &strc38->s;
    strc38->unkE = arg5;
    strc38->unk8 = ((COS(angle % SIN_PERIOD) * arg3) >> 14);
    strc38->unkA = ((SIN(angle % SIN_PERIOD) * arg3) >> 14);
    strc38->unkC = arg6;

    if (vram != NULL) {
        strc38->vramUsesHeap = FALSE;
        vramTarget = (vram + gUnknown_080D5A6C[stateIndex].vramOffset);
    } else {
        strc38->vramUsesHeap = TRUE;
        vramTarget = VramMalloc(gUnknown_080D5A6C[stateIndex].numTiles);
    }
    s->tiles = vramTarget;
    s->oamFlags = 0x200;
    s->anim = gUnknown_080D5A6C[stateIndex].anim;
    s->variant = gUnknown_080D5A6C[stateIndex].pattern;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->x = 0;
    s->y = 0;
    s->frameFlags = 0x1000;

    strc38->qWorldX = Q(x);
    strc38->qWorldY = Q(y);

    return t;
}

void Task_38_807989C(void)
{
    s32 temp_r1;
    GemerlMore_38 *strc38 = TASK_DATA(gCurTask);
    Sprite *s = &strc38->s;

    if (strc38->unkE == 0) {
        TaskDestroy(gCurTask);
        return;
    }

    strc38->unkE--;
    strc38->unkA += strc38->unkC;
    strc38->qWorldX += strc38->unk8;
    strc38->qWorldY += strc38->unkA;

    s->x = I(strc38->qWorldX) - gCamera.x;
    s->y = I(strc38->qWorldY) - gCamera.y;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

void Task_C8_807990C(void)
{
    Sprite *s;
    u8 i;

    GemerlMore_C8 *strcC8 = TASK_DATA(gCurTask);

    for (i = 0; i < ARRAY_COUNT(strcC8->sprites); i++) {
        s = (Sprite *)&strcC8->sprites[i];
        s->x = strcC8->unk4[i][0] - gCamera.x;
        s->y = strcC8->unk4[i][1] - gCamera.y;
    }

    if (++strcC8->unk0 > 150) {
        strcC8->unk0 = 0;

        switch (gStageData.zone) {
            case ZONE_2: {
                s = (Sprite *)&strcC8->sprites[2];
                s->anim = ANIM_GEMERL_HOVER_AWAY;
                s->variant = 0;
                s->prevVariant = 0xFF;
                gCurTask->main = Task_C8_8079C60;
            } break;

            case ZONE_4: {
                s = (Sprite *)&strcC8->sprites[2];
                s->anim = ANIM_GEMERL_HANGING;
                s->variant = 0;
                s->prevVariant = 0xFF;
                s->frameFlags |= 0x400;

                gCurTask->main = Task_C8_8079B8C;
            } break;

            case ZONE_6: {
                s = (Sprite *)&strcC8->sprites[0];
                s->oamFlags = 0x2C0;
                s->frameFlags = 0;

                s = (Sprite *)&strcC8->sprites[1];
                s->oamFlags = 0x300;
                s->frameFlags = 0;

                s = (Sprite *)&strcC8->sprites[2];
                s->anim = ANIM_GEMERL_HOVER_AWAY;
                s->variant = 0;
                s->prevVariant = -1;
                s->oamFlags = 0x280;
                s->frameFlags = 0;

                gCurTask->main = Task_C8_8079D40;
            } break;

            case ZONE_5: {
                s = (Sprite *)&strcC8->sprites[0];
                s->oamFlags = 0x2C0;
                s->frameFlags = 0;

                s = (Sprite *)&strcC8->sprites[1];
                s->oamFlags = 0x300;
                s->frameFlags = 0;

                s = (Sprite *)&strcC8->sprites[2];
                s->anim = ANIM_GEMERL_HOVER_AWAY;
                s->variant = 0;
                s->prevVariant = -1;
                s->oamFlags = 0x280;
                s->frameFlags = 0;

                gCurTask->main = Task_C8_8079DFC;
            } break;

            case ZONE_1:
            case ZONE_3:
            case ZONE_7:
            case ZONE_FINAL:
            case ZONE_UNUSED:
            default: {
                gCurTask->main = Task_C8_8079AB4;
            } break;
        }
    }

    for (i = 0; i < ARRAY_COUNT(strcC8->sprites); i++) {
        s = (Sprite *)&strcC8->sprites[i];
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void Task_C8_8079AB4(void)
{
    Sprite *s;
    s32 *temp_r1;
    s32 *temp_r3;
    s32 temp_r2;
    u16 temp_r0;
    GemerlMore_C8 *strcC8 = TASK_DATA(gCurTask);
    u8 var_r5;

    for (var_r5 = 0; var_r5 < 3; var_r5++) {
        if (var_r5 != 2) {
            strcC8->unk4[var_r5][1] -= 1;
        }

        s = (Sprite *)&strcC8->sprites[var_r5];
        s->x = strcC8->unk4[var_r5][0] - gCamera.x;
        s->y = strcC8->unk4[var_r5][1] - gCamera.y;
    }

    if (++strcC8->unk0 > 0x32U) {
        s = (Sprite *)&strcC8->sprites[0];
        s->variant = 8;
        s->prevVariant = -1;
        s->frameFlags |= 0x400;
        s = (Sprite *)&strcC8->sprites[1];
        s->frameFlags |= 0x400;
        s = (Sprite *)&strcC8->sprites[2];
        s->anim = ANIM_GEMERL_HOVER_AWAY;
        s->variant = 0;
        s->prevVariant = -1;
        s->frameFlags |= 0x400;
        strcC8->unk0 = 0;
        gCurTask->main = Task_C8_8079EDC;
    }

    for (var_r5 = 0; var_r5 < 3; var_r5++) {
        s = (Sprite *)&strcC8->sprites[var_r5];
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void Task_C8_8079B8C(void)
{
    Sprite *s;
    s32 *temp_r2;
    s32 temp_r1;
    u16 temp_r0;
    GemerlMore_C8 *strcC8 = TASK_DATA(gCurTask);
    u8 i;
    for (i = 0; i < 3; i++) {
        strcC8->unk4[i][1]--;
        s = (Sprite *)&strcC8->sprites[i];
        s->x = strcC8->unk4[i][0] - gCamera.x;
        s->y = strcC8->unk4[i][1] - gCamera.y;
    }

    if (++strcC8->unk0 > 140) {
        s = (Sprite *)&strcC8->sprites[0];
        s->variant = 8;
        s->prevVariant = 0xFF;
        s->frameFlags |= 0x400;
        s = (Sprite *)&strcC8->sprites[1];
        s->frameFlags |= 0x400;
        s = (Sprite *)&strcC8->sprites[2];
        s->frameFlags &= ~0x400;
        strcC8->unk0 = 0;
        gCurTask->main = Task_C8_8079EDC;
    }

    for (i = 0; i < 3; i++) {
        s = (Sprite *)&strcC8->sprites[i];
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void Task_C8_8079C60(void)
{
    Sprite *s;
    s32 *temp_r2;
    s32 temp_r1;
    u16 temp_r0;
    GemerlMore_C8 *strcC8 = TASK_DATA(gCurTask);
    u8 i;
    for (i = 0; i < 3; i++) {
        strcC8->unk4[i][1]--;
        s = (Sprite *)&strcC8->sprites[i];
        s->x = strcC8->unk4[i][0] - gCamera.x;
        s->y = strcC8->unk4[i][1] - gCamera.y;
    }

    if (++strcC8->unk0 > 100) {
        s = (Sprite *)&strcC8->sprites[0];
        s->variant = 8;
        s->prevVariant = 0xFF;
        s->frameFlags |= 0x400;
        s = (Sprite *)&strcC8->sprites[1];
        s->frameFlags |= 0x400;
        s = (Sprite *)&strcC8->sprites[2];
        s->anim = ANIM_GEMERL_HOVER_AWAY;
        s->variant = 0;
        s->prevVariant = -1;
        s->frameFlags |= 0x400;
        strcC8->unk0 = 0;
        gCurTask->main = Task_C8_8079EDC;
    }

    for (i = 0; i < 3; i++) {
        s = (Sprite *)&strcC8->sprites[i];
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void Task_C8_8079D40(void)
{
    Sprite *s;
    u8 i;
    GemerlMore_C8 *strcC8 = TASK_DATA(gCurTask);

    for (i = 0; i < ARRAY_COUNT(strcC8->sprites); i++) {
        strcC8->unk4[i][1] -= 1;
        s = (Sprite *)&strcC8->sprites[i];
        s->x = strcC8->unk4[i][0] - gCamera.x;
        s->y = strcC8->unk4[i][1] - gCamera.y;
    }

    if (++strcC8->unk0 > 0x0190) {
        if (strcC8->func != NULL) {
            strcC8->func();
        }

        TaskDestroy(gCurTask);
        return;
    }

    if (strcC8->unk0 == 160) {
        m4aSongNumStart(VOICE__EGGMAN__YOURE_GOING_TO_PAY_FOR_THIS);
    }

    for (i = 0; i < ARRAY_COUNT(strcC8->sprites); i++) {
        s = (Sprite *)&strcC8->sprites[i];
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void Task_C8_8079DFC(void)
{
    Sprite *s;
    s32 *temp_r2;
    s32 temp_r1;
    u16 temp_r0;
    GemerlMore_C8 *strcC8 = TASK_DATA(gCurTask);
    u8 i;
    for (i = 0; i < 3; i++) {
        strcC8->unk4[i][1]--;
        s = (Sprite *)&strcC8->sprites[i];
        s->x = strcC8->unk4[i][0] - gCamera.x;
        s->y = strcC8->unk4[i][1] - gCamera.y;
    }

    if (++strcC8->unk0 > 0xB4U) {
        s = (Sprite *)&strcC8->sprites[0];
        s->variant = 8;
        s->prevVariant = 0xFF;
        s->frameFlags |= 0x400;
        s = (Sprite *)&strcC8->sprites[1];
        s->frameFlags |= 0x400;
        s = (Sprite *)&strcC8->sprites[2];
        s->anim = ANIM_GEMERL_HOVER_AWAY;
        s->variant = 0;
        s->prevVariant = -1;
        s->frameFlags |= 0x400;
        strcC8->unk0 = 0;
        gCurTask->main = Task_C8_8079EDC;
    }

    for (i = 0; i < 3; i++) {
        s = (Sprite *)&strcC8->sprites[i];
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

void Task_C8_8079EDC(void)
{
    s32 *sp0;
    Sprite *s;
    s16 temp_r3;
    s32 *temp_r0;
    s32 temp_r1;
    s32 temp_r2;
    u8 i;
    bool32 var_r8 = 1;
    GemerlMore_C8 *strcC8 = TASK_DATA(gCurTask);

    if (strcC8->unk0 == 0) {
        m4aSongNumStart(VOICE__EGGMAN__YOURE_GOING_TO_PAY_FOR_THIS);
        strcC8->unk0 = 1;
    }
    for (i = 0; i < 3; i++) {
        strcC8->unk4[i][0]++;
        s = (Sprite *)&strcC8->sprites[i];
        s->x = strcC8->unk4[i][0] - gCamera.x;
        s->y = strcC8->unk4[i][1] - gCamera.y;
        if (gStageData.zone == 1) {
            if (s->x < 0x140) {
                var_r8 = 0;
            }
        } else if ((s->x + gCamera.x) < gUnknown_080D5AE8[gStageData.zone]) {
            var_r8 = 0;
        }
    }

    if (var_r8 != 0) {
        if (strcC8->func != NULL) {
            strcC8->func();
        }
        TaskDestroy(gCurTask);
        return;
    }
    for (i = 0; i < 3; i++) {
        s = (Sprite *)&strcC8->sprites[i];
        UpdateSpriteAnimation(s);
        DisplaySprite(s);
    }
}

u8 sub_8079FFC(void)
{

    if (gStageData.gameMode == GAME_MODE_5) {
        if (gStageData.unkB7 == 0) {
            Player *p = &gPlayers[gStageData.playerIndex];
            gStageData.unkB6 = gStageData.unkB7;
            gStageData.unkB7 = 1;
            sub_8027620(gCamera.x, gCamera.y);
            if (p->moveState & 0x800000) {
                sub_8016F28(p);
                Player_8005380(p);
            }
        }
        gStageData.unkB6 = 0;
        return 1U;
    }
    return 0U;
}

u8 sub_807A074(void)
{
    u8 var_r5 = 0;

    if ((u32)(u8)(gStageData.unk4 - 6) <= 2U) {
        return 0U;
    }
    if (gStageData.playerIndex == 0) {
        switch (gStageData.unkB6) {
            case 0: {
                sub_8027658();
                gStageData.unkB6 = 2;
            } break;

            case 1: {
                var_r5 = 1;
                gStageData.unkB6 = gStageData.playerIndex;
                gStageData.unkB7 = gStageData.playerIndex;
            } break;

            default: {
                gStageData.unkB6 = (gStageData.unkB6 + 1) & 7;
            } break;
        }
    } else if (gStageData.unkB6 != 0) {
        var_r5 = 1;
        gStageData.unkB6 = 0;
        gStageData.unkB7 = 0;
        sub_8027658();
    }
    return var_r5;
}

void sub_807A0E8(u8 *param0, s16 param1)
{
    switch (gStageData.zone) {
        case 0:
            if (!(0x80 & param0[2])) {
                sub_806A69C(param0, param1);
                break;
            }

            sub_8067EA0(param0, param1);
            break;
        case 1:
            if (!(0x80 & param0[2])) {
                sub_806CDB8(param0, param1);
                return;
            }
            sub_8067EA0(param0, param1);
            break;
        case 2:
            sub_806DAD4(param0, param1);
            return;
        case 3:
            if (!(0x80 & param0[2])) {
                sub_8071594(param0, param1);
            } else {
                sub_8067EA0(param0, param1);
            }
            break;
        case 4:
            sub_80732CC(param0, param1);
            return;
        case 5:
            if (!(0x80 & param0[2])) {
                sub_8074BA0(param0, param1);
            } else {
                sub_8067EA0(param0, param1);
            }
            break;
        case 6:
            sub_80769C4(param0, param1);
            break;
        case 7:
            if (0x80 & param0[2]) {
                sub_8067EA0(param0, param1);
            } else {
                sub_807F4F0(param0, param1);
            }
            break;
        case 8:
            sub_8085588(param0, param1);
            break;

        default:
            break;
    }
}

// TODO: Rename for consistency with collision modules?
bool32 IsCollidingWithCheese(Sprite *s)
{
    bool32 isColliding = 0;
    Cheese *cheese = TASK_DATA(gStageData.taskCheese);
    Sprite *sprCheese = (Sprite *)&cheese->s;

    if ((s->hitboxes[0].index != -1) && (sprCheese->hitboxes[1].index != -1)) {
        if (HB_COLLISION(s->x, s->y, s->hitboxes[0].b, sprCheese->x, sprCheese->y, sprCheese->hitboxes[1].b)) {
            isColliding = 1;
        }
    }

    return isColliding;
}

bool32 sub_807A2AC(void)
{
    s16 temp_r1;
    s16 temp_r1_2;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 temp_r3;
    s32 temp_r3_2;
    s16 sp0[4]; // = { 8, 8, 224, 144 };
    memcpy(sp0, &gUnknown_080D5AF6, sizeof(sp0));

    if (gStageData.gameMode == GAME_MODE_SINGLE_PLAYER) {
        Player *player = &gPlayers[PLAYER_1];
        Player *partner = &gPlayers[PLAYER_2];

        if (!(player->moveState & MOVESTATE_TAG_ACTION_CHARGED) && !(MOVESTATE_1000000 & partner->moveState)
            && ((MOVESTATE_DEAD & partner->moveState) || ((gCamera.x + sp0[0] > I(partner->qWorldX)))
                || ((gCamera.x + sp0[0] + (sp0[2] - sp0[0])) < I(partner->qWorldX)) || ((gCamera.y + sp0[1] > I(partner->qWorldY)))
                || ((gCamera.y + sp0[1] + (sp0[3] - sp0[1])) < I(partner->qWorldY)))) {
            partner->moveState &= ~MOVESTATE_DEAD;
            SetPlayerCallback(partner, Player_8005380);
            partner->qWorldX = player->qWorldX;
            partner->qWorldY = player->qWorldY;
            partner->layer = player->layer;
            return 1;
        }
    }
    return 0;
}

void EnablePlayerMovement(void)
{
    u8 i;

    gCamera.maxX += 480;
    for (i = 0; i < NUM_SINGLE_PLAYER_CHARS; i++) {
        Player *p = GET_SP_PLAYER_V1(i);
        p->moveState &= ~MOVESTATE_IGNORE_INPUT;
    }
}

// (97.25%) https://decomp.me/scratch/QuRgf
NONMATCH("asm/non_matching/game/bosses/eggesc__sub_807A3D8.inc",
         void *sub_807A3D8(Something **arr, u8 arrCount, AnimId anim, u8 pattern, u8 *arg4))
{
    u8 i;
    Sprite *s;
    Something *var_r1;
    void *var_r3 = NULL;

    if (*arg4 == 0) {
        return NULL;
    }

    for (i = 0; i < arrCount; i++) {
        var_r1 = arr[i];

        if (var_r3 != NULL) {
            break;
        }

        s = (Sprite *)var_r1->spr14;
        if ((s->anim != anim) || (s->variant != pattern) || (--*arg4 != 0)) {
            if (var_r1->unk2 != 0) {
                var_r3 = sub_807A3D8((void *)(var_r1 + 1), var_r1->unk2, anim, pattern, arg4);
                if (var_r3 != NULL) {
                    return var_r3;
                }
            }
        } else {
            var_r3 = var_r1;
        }
    }

    return var_r3;
}
END_NONMATCH

void PlayVoiceEggmanHit(void)
{
    if (PseudoRandom32() & 1) {
        m4aSongNumStart(VOICE__EGGMAN__OW);
    } else {
        m4aSongNumStart(VOICE__EGGMAN__YOU_LITTLE);
    }
}

void sub_807A4A8(void)
{
    gStageData.unkB6 = 0;
    gStageData.unkB7 = 0;
}

void SetFixedRandomIfTimeAttackMode(void)
{
    if (gStageData.gameMode == 5) {
        u32 zone = gStageData.zone;
        // NOTE: (zone * 1001) does not match, results in a mul instead!
        u32 fixedRng = (zone * 1000) + zone;
        gPseudoRandom = fixedRng;
    }
}

void TaskDestructor_38_807A4E4(Task *t)
{
    GemerlMore_38 *strc = TASK_DATA(t);

    if (strc->vramUsesHeap) {
        VramFree(strc->s.tiles);
    }
}

void TaskDestructor_C8_807A500(Task *t)
{
    GemerlMore_C8 *strc = TASK_DATA(t);
    VramFree(strc->sprites[0].tiles);
}

void Task_2C_807A514(void)
{
    GemerlMore_2C *strc2C = TASK_DATA(gCurTask);
    s32 var_r2;
    u16 temp_r0;

    if (--strc2C->unk28 == 0) {
        TaskDestroy(gCurTask);
        return;
    }
    if (strc2C->unk2A != 0) {
        UpdateSpriteAnimation_BG(&strc2C->s);
        gFlags |= 1;
    } else {
        UpdateSpriteAnimation(&strc2C->s);
        gFlags |= 2;
    }
}
