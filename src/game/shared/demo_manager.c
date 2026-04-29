#include "global.h"
#include "core.h"
#include "game/game.h"
#include "game/player.h"
#include "game/save.h" // NUM_LANGUAGES
#include "game/screen_fade.h"
#include "game/stage.h"
#include "module_unclear.h"
#include "constants/zones.h"

#define TXT_POS_DEMO_PLAY_X DISPLAY_CENTER_X
#define TXT_POS_DEMO_PLAY_Y (DISPLAY_CENTER_Y + 16)

#define TXT_POS_PRESS_START_X DISPLAY_CENTER_X
#define TXT_POS_PRESS_START_Y (DISPLAY_CENTER_Y + 40)

typedef struct DemoPlay {
    /* 0x00 */ s16 unk0;
    /* 0x02 */ s16 unk2;
    /* 0x04 */ Sprite *sprPressStart;
    /* 0x2C */ Sprite *sprDemoPlay;
    /* 0x54 */ ScreenFade fade;
} DemoPlay;

typedef struct TileInfo_Demo {
    AnimId anim;
    u8 variant;
    u8 numTiles;
} TileInfo_Demo;

const TileInfo_Demo sTileInfoPressStart[NUM_LANGUAGES] = {
    [JAPANESE] = { 1007, 0, 46 }, //
    [ENGLISH] = { 1009, 0, 30 }, //
    [GERMAN] = { 1010, 0, 34 }, //
    [FRENCH] = { 1011, 0, 46 }, //
    [SPANISH] = { 1012, 0, 30 }, //
    [ITALIAN] = { 1013, 0, 30 }, //
};

void DemoPlay_Init(void)
{
    gStageData.playerIndex = PLAYER_1;
    gStageData.gameMode = GAME_MODE_DEMO;
    gStageData.zone = ZONE_1;
    gStageData.act = ACT_1;
    gStageData.currentLevel = LEVEL_INDEX(ZONE_1, ACT_1);
    sub_800214C();

    gPlayers[PLAYER_1].charFlags.partnerIndex = PLAYER_2;
    gPlayers[PLAYER_1].charFlags.character = SONIC;
    gPlayers[PLAYER_1].charFlags.someIndex = 4;
    gPlayers[PLAYER_2].charFlags.partnerIndex = PLAYER_1;
    gPlayers[PLAYER_2].charFlags.character = TAILS;
    gPlayers[PLAYER_2].charFlags.someIndex = 2;
    gPlayers[PLAYER_3].charFlags.someIndex = 0;
    gPlayers[PLAYER_4].charFlags.someIndex = 0;

    WarpToMap(gStageData.currentLevel, 0);
}

#if 0
void sub_8052E30(void) {
    Sprite *s;
    u16 temp_r4;
    void *temp_r4_2;

    temp_r4 = TaskCreate(Task_DemoPlaySplashText, 0x64U, 0x1000U, 0U, TaskDestructor_DemoPlaySplashText)->data;
    temp_r4->unk3000000 = 0x708;
    temp_r4->unk3000062 = 0;
    temp_r4->unk3000060 = 0;
    (temp_r4 + 0x03000000)->unk2 = 0;
    s = temp_r4 + 0x03000004;
    temp_r4->unk3000004 = OBJ_VRAM0 + 0x3800;
    s->anim = *((gStageData.language * 4) + &sTileInfoPressStart);
    s->x = TXT_POS_PRESS_START_X;
    s->y = TXT_POS_PRESS_START_Y;
    s->oamFlags = 0;
    s->qAnimDelay = 0;
    s->prevAnim = 0xFFFF;
    s->variant = ((gStageData.language * 4) + &sTileInfoPressStart)->unk2;
    s->prevVariant = 0xFF;
    s->animSpeed = 0x10;
    s->palId = 0xF;
    s->frameFlags = 0;
    s->hitboxes[0].index = -1;
    UpdateSpriteAnimation(s);
    s = temp_r4 + 0x0300002C;
    temp_r4->unk300002C = VramMalloc(0x18U);
    s->anim = 0x594;
    s->x = TXT_POS_DEMO_PLAY_X;
    s->y = TXT_POS_DEMO_PLAY_Y;
    s->oamFlags = 0;
    s->qAnimDelay = 0;
    s->prevAnim = -1U;
    s->variant = 0;
    s->prevVariant = -1U;
    s->animSpeed = 0x10;
    s->palId = 0;
    s->frameFlags = 0;
    s->hitboxes[0].index = -1;
    UpdateSpriteAnimation(s);
    temp_r4_2 = temp_r4 + 0x03000054;
    temp_r4->unk3000054 = 0;
    temp_r4_2->unk2 = 1;
    temp_r4_2->unk4 = 0;
    temp_r4_2->unk6 = 0x80;
    temp_r4_2->unk8 = 0xBF;
    temp_r4_2->unkA = 0;
}
#endif