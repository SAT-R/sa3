// TODO: Auto-generate this file
#define MAX_TILES(_animName) ((_animName##_WIDTH / 8) * (_animName##_HEIGHT / 8))
#define ALLOC_TILES(_animName)                                                          \
    VramMalloc(((_animName##_WIDTH / 8) * (_animName##_HEIGHT / 8)))

#define ANIM_SPINNER_WIDTH  48
#define ANIM_SPINNER_HEIGHT 32
