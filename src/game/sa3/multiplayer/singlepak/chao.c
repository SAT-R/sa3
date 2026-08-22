#include "global.h"
#include "core.h"
#include "lib/m4a/m4a.h"
#include "game/shared/stage/player.h"
#include "game/sa3/multiplayer/singlepak/chao.h"
#include "game/stage.h"
#include "constants/animations.h"
#include "constants/move_states.h"
#include "constants/songs.h"

void Task_40_8029474();
void sub_80295C0(Sprite *s);
void sub_8029600();

static inline void CreateNewMPChao_inline(Player *p, s16 worldX, s16 worldY)
{
    MPChao *chao;

    if (gStageData.taskCheese == NULL) {
        m4aSongNumStart(VOICE__CHAO__COLLECTED);
        gStageData.taskCheese = TaskCreate(Task_40_8029474, sizeof(MPChao), 0x3010U, 0U, NULL);
        chao = TASK_DATA(gStageData.taskCheese);
        chao->qWorldX = Q(worldX);
        chao->qWorldY = Q(worldY);
        chao->player = p;
        sub_80295C0(&chao->s);
    }
}

void sub_80293E8(Player *p)
{
    MPChao *chao;
    s32 worldX;
    s32 worldY;

    if (gStageData.levelTimer != 0) {
        if (gStageData.taskCheese == NULL) {
            CreateNewMPChao_inline(p, I(p->qWorldX), I(p->qWorldY));
        } else {
            MPChao *chao = TASK_DATA(gStageData.taskCheese);
            chao->player = p;
        }
    }
}

void Task_40_8029474(void)
{
    Player *p;
    s32 qTargetX;
    u32 var_r0;
    MPChao *chao = TASK_DATA(gCurTask);

    p = chao->player;
    qTargetX = p->qWorldX & 0xFFFFFF00;
    chao->qUnk8 = qTargetX;
    if (p->moveState & MOVESTATE_FACING_LEFT) {
        qTargetX = qTargetX + Q(24);
    } else {
        qTargetX = qTargetX - Q(24);
    }
    chao->qUnk8 = qTargetX;

    chao->qUnkC = (s32)((p->qWorldY & 0xFFFFFF00) - Q(24));
    if (chao->qWorldX > qTargetX) {
        chao->qWorldX -= Q(8);
        if (chao->qWorldX < qTargetX) {
            chao->qWorldX = qTargetX;
        }
        chao->s.frameFlags &= ~0x400;
    } else if (chao->qWorldX >= qTargetX) {
        if (p->moveState & 1) {
            chao->s.frameFlags &= ~0x400;
        } else {
            chao->s.frameFlags |= 0x400;
        }
    } else {
        chao->qWorldX += Q(8);
        if (chao->qWorldX > qTargetX) {
            chao->qWorldX = qTargetX;
        }
        chao->s.frameFlags |= 0x400;
    }
    if (chao->qWorldY > chao->qUnkC) {
        chao->qWorldY -= Q(8);
        if (chao->qWorldY < chao->qUnkC) {
            chao->qWorldY = chao->qUnkC;
        }
    } else if (chao->qWorldY < chao->qUnkC) {
        chao->qWorldY += Q(8);
        if (chao->qWorldY > chao->qUnkC) {
            chao->qWorldY = chao->qUnkC;
        }
    }
    sub_8029600();
}

void CreateNewMPChao(Player *p, s16 worldX, s16 worldY)
{
    MPChao *chao;

    if (gStageData.taskCheese == NULL) {
        m4aSongNumStart(VOICE__CHAO__COLLECTED);
        gStageData.taskCheese = TaskCreate(Task_40_8029474, sizeof(MPChao), 0x3010U, 0U, NULL);
        chao = TASK_DATA(gStageData.taskCheese);
        chao->qWorldX = Q(worldX);
        chao->qWorldY = Q(worldY);
        chao->player = p;
        sub_80295C0(&chao->s);
    }
}

void sub_80295C0(Sprite *s)
{
    s->tiles = (OBJ_VRAM0 + 0x2580);
    s->anim = ANIM_CHEESE_IDLE;
    s->variant = 0;
    s->oamFlags = 0x280;
    s->animCursor = 0;
    s->qAnimDelay = 0;
    s->prevVariant = -1;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0x1000;
    s->hitboxes[0].index = -1;
    UpdateSpriteAnimation(s);
}

void sub_8029600(void)
{
    MPChao *chao = TASK_DATA(gCurTask);
    Sprite *s = &chao->s;
    s->x = I(chao->qWorldX) - gCamera.x;
    s->y = I(chao->qWorldY) - gCamera.y;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}
