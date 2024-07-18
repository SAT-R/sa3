// TODO: Auto-generate this file
#define MAX_TILES(_animName)                   ((_animName##_WIDTH / 8) * (_animName##_HEIGHT / 8))
#define MAX_TILES_VARIANT(_animName, _variant) ((_animName##_VAR##_variant##_WIDTH / 8) * (_animName##_VAR##_variant##_HEIGHT / 8))
#define ALLOC_TILES(_animName)                 VramMalloc(((_animName##_WIDTH / 8) * (_animName##_HEIGHT / 8)))
#define ALLOC_TILES_VARIANT(_animName, _variant)                                                                                           \
    VramMalloc(((_animName##_VAR##_variant##_WIDTH / 8) * (_animName##_VAR##_variant##_HEIGHT / 8)))

#define ANIM_CHAOMAP_EMERALD_WIDTH  24
#define ANIM_CHAOMAP_EMERALD_HEIGHT 16

#define ANIM_FACTORY_RING_WIDTH  48
#define ANIM_FACTORY_RING_HEIGHT 48

#define ANIM_CHAO_SITTING_WIDTH  32
#define ANIM_CHAO_SITTING_HEIGHT 32

#define ANIM_MUD_FX_WIDTH  48
#define ANIM_MUD_FX_HEIGHT 24

#define ANIM_MUD_FX_CHAOS_ANGEL_WIDTH  48
#define ANIM_MUD_FX_CHAOS_ANGEL_HEIGHT 24

#define ANIM_CHECKPOINT_WIDTH  24
#define ANIM_CHECKPOINT_HEIGHT 48

#define ANIM_CHECKPOINT_VAR0_WIDTH  16
#define ANIM_CHECKPOINT_VAR0_HEIGHT 48

#define ANIM_CHECKPOINT_VAR1_WIDTH  24
#define ANIM_CHECKPOINT_VAR1_HEIGHT 48

#define ANIM_TOY_BALLOON_WIDTH  32
#define ANIM_TOY_BALLOON_HEIGHT 48

#define ANIM_TOY_BALLOON_POPPED_WIDTH  32
#define ANIM_TOY_BALLOON_POPPED_HEIGHT 48

#define ANIM_WAGGLE_COIL_WIDTH  48
#define ANIM_WAGGLE_COIL_HEIGHT 56

#define ANIM_SPECIAL_KEY_WIDTH  32
#define ANIM_SPECIAL_KEY_HEIGHT 32

#define ANIM_PLATFORM_RAISING_WHEEL_WIDTH  32
#define ANIM_PLATFORM_RAISING_WHEEL_HEIGHT 24

#define ANIM_PLATFORM_RAISING_WHEEL_PLATFORM_WIDTH  24
#define ANIM_PLATFORM_RAISING_WHEEL_PLATFORM_HEIGHT 24

#define ANIM_FLAT_SPRING_WIDTH  32
#define ANIM_FLAT_SPRING_HEIGHT 32

#define ANIM_SPECIAL_SPRING_WIDTH  32
#define ANIM_SPECIAL_SPRING_HEIGHT 48

#define ANIM_ACT_RING_WIDTH  32
#define ANIM_ACT_RING_HEIGHT 32

#define ANIM_ACT_RING_VAR0_WIDTH  32
#define ANIM_ACT_RING_VAR0_HEIGHT 32

#define ANIM_ACT_RING_VAR1_WIDTH  32
#define ANIM_ACT_RING_VAR1_HEIGHT 32

#define ANIM_ACT_RING_VAR2_WIDTH  32
#define ANIM_ACT_RING_VAR2_HEIGHT 32

// "Crown" signalling completion
#define ANIM_ACT_RING_VAR3_WIDTH  24
#define ANIM_ACT_RING_VAR3_HEIGHT 16

// Enemies

#define ANIM_SPINNER_WIDTH  48
#define ANIM_SPINNER_HEIGHT 32

#define ANIM_GAOGAO_WIDTH  32
#define ANIM_GAOGAO_HEIGHT 32