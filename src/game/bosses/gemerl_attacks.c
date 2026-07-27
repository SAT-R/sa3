#include "global.h"
#include "core.h"
#include "lib/m4a/m4a.h"
#include "game/stage.h"
#include "game/sa3/bosses/gemerl.h"
#include "game/shared/stage/player.h"
#include "constants/songs.h"

void Task_10C_807A784(void);

void sub_807A6D4(GemerlAttacks *strc10C, u8 *vram);

void sub_807A574(Gemerl *gemerl, u8 param1, u8 param2, u8 param3)
{
    Player *p;
    GemerlAttacks *strc10C = TASK_DATA(TaskCreate(Task_10C_807A784, sizeof(GemerlAttacks), 0x2100U, 0U, NULL));
    SpriteTransform *tf = &strc10C->tf60;
    u32 spriteFlags;
    s32 someX;

    strc10C->callback = gUnknown_080D5B00[param1].callbackA;
    strc10C->stateIndex = param1;
    strc10C->unk25 = param3;
    strc10C->unk26 = param2;
    someX = gemerl->qSomeX;
    strc10C->unk4 = (gemerl->spr3C.frameFlags & 0x400) ? someX - Q(4) : someX + Q(4);
    strc10C->unk8 = (gemerl->qSomeY - Q(8));
    strc10C->unk14 = (((4 - gemerl->unk20) * 32) + 32);
    strc10C->unk16 = 0;
    strc10C->unk18 = 0;
    strc10C->unk1A = 0;
    strc10C->unk1C = &gemerl->unk24[param2];
    strc10C->unk20 = &gemerl->unk31;
    p = GET_SP_PLAYER_V1(PLAYER_1);
    strc10C->players[0] = GET_SP_PLAYER_V1(PLAYER_1);
    strc10C->players[1] = GET_SP_PLAYER_V1(PLAYER_2);
    spriteFlags = gemerl->spr3C.frameFlags;
    strc10C->unk27 = GetBit(spriteFlags, SPRITE_FLAG_SHIFT_X_FLIP);
    strc10C->unk28 = gemerl->unk20;
    strc10C->gemerl = gemerl;
    tf->rotation = 0;
    tf->qScaleX = Q(1);
    tf->qScaleY = Q(1);
    tf->x = 0;
    tf->y = 0;

    sub_807A6D4(strc10C, gemerl->vram4);
    if (strc10C->stateIndex != 8) {
        m4aSongNumStart(SE_527);
    }
}
