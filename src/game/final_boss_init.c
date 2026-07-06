#include "task.h"

void sub_80581F0(void);
void CreateHyperEggRobo(void *unk);

// Seems to be a watcher task used for debugging?
// The function creates the real CreateHyperEggRobo and return a Task that does nothing.
struct Task *CreateHyperEggRoboTask(void *unk)
{
    CreateHyperEggRobo(unk);

    return TaskCreate(sub_80581F0, 0, 0xF000, 0, NULL);
}

void sub_80581EC(void) { }
void sub_80581F0(void) { }