#include "global.h"
#include "core.h"

#define BGID_BACKGROUND_HI 0
#define BGID_STAGE_HI      1
#define BGID_STAGE_LO      2
#define BGID_BACKGROUND_LO 3
Background ALIGNED(16) gStageBackgroundsRam[NUM_BACKGROUNDS] = { 0 };
