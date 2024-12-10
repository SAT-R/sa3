#include "core.h"

extern void GameInit(void);

void AgbMain(void)
{
    EngineInit();
    GameInit();
    EngineMainLoop();
}
