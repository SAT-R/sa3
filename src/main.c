#include "core.h"

extern void GameInit(void);
extern void GBPlayerCheck(void);

void AgbMain(void)
{
    EngineInit();
    GBPlayerCheck();
    GameInit();
    EngineMainLoop();
}
