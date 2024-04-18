// TODO: Auto-generate this file
#define MAX_TILES(_animName) ((_animName##_WIDTH / 8) * (_animName##_HEIGHT / 8))
#define ALLOC_TILES(_animName)                                                          \
    VramMalloc(((_animName##_WIDTH / 8) * (_animName##_HEIGHT / 8)))

#define ANIM_FACTORY_RING_WIDTH  48
#define ANIM_FACTORY_RING_HEIGHT 48

#define ANIM_SPINNER_WIDTH  48
#define ANIM_SPINNER_HEIGHT 32

#define ANIM_CHAOMAP_EMERALD_WIDTH  24
#define ANIM_CHAOMAP_EMERALD_HEIGHT 16

#define ANIM_TOY_BALLOON_WIDTH  32
#define ANIM_TOY_BALLOON_HEIGHT 48

#define ANIM_TOY_BALLOON_POPPED_WIDTH  32
#define ANIM_TOY_BALLOON_POPPED_HEIGHT 48

#define ANIM_WAGGLE_COIL_WIDTH  48
#define ANIM_WAGGLE_COIL_HEIGHT 56
