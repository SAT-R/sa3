
extern void GameInit(void);
extern void GameStart(void);
extern void GameLoop(void);

void AgbMain(void)
{
    GameInit();
    GameStart();
    GameLoop();
}
