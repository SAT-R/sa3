#include "task.h"

void sub_80581F0(void);
void sub_807B6C8(void *unk);

struct Task *CreateBoss_80581C8(void *unk)
{
    sub_807B6C8(unk);

    return TaskCreate(sub_80581F0, 0, 0xF000, 0, NULL);
}

void sub_80581EC(void) { }
void sub_80581F0(void) { }