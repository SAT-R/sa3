// TODO: Auto-generate this file
#define MAX_TILES(_animName)                   ((_animName##_WIDTH / 8) * (_animName##_HEIGHT / 8))
#define MAX_TILES_VARIANT(_animName, _variant) ((_animName##_VAR##_variant##_WIDTH / 8) * (_animName##_VAR##_variant##_HEIGHT / 8))
#define ALLOC_TILES(_animName)                 VramMalloc(((_animName##_WIDTH / 8) * (_animName##_HEIGHT / 8)))
#define ALLOC_TILES_VARIANT(_animName, _variant)                                                                                           \
    VramMalloc(((_animName##_VAR##_variant##_WIDTH / 8) * (_animName##_VAR##_variant##_HEIGHT / 8)))

// 858
#define ANIM_CHAOMAP_EMERALD_WIDTH  24
#define ANIM_CHAOMAP_EMERALD_HEIGHT 16

// 873
#define ANIM_BOUNCY_BAR_WIDTH  32
#define ANIM_BOUNCY_BAR_HEIGHT 24

// 875
#define ANIM_CHECKPOINT_WIDTH       24
#define ANIM_CHECKPOINT_HEIGHT      48
#define ANIM_CHECKPOINT_VAR0_WIDTH  16
#define ANIM_CHECKPOINT_VAR0_HEIGHT 48
#define ANIM_CHECKPOINT_VAR1_WIDTH  24
#define ANIM_CHECKPOINT_VAR1_HEIGHT 48

// 878
#define ANIM_TRAMPOLINE_WIDTH  48
#define ANIM_TRAMPOLINE_HEIGHT 32

// 883
#define ANIM_FLAT_SPRING_WIDTH  32
#define ANIM_FLAT_SPRING_HEIGHT 32

// 884
#define ANIM_PLATFORM_RAISING_WHEEL_WIDTH           32
#define ANIM_PLATFORM_RAISING_WHEEL_HEIGHT          24
#define ANIM_PLATFORM_RAISING_WHEEL_PLATFORM_WIDTH  24
#define ANIM_PLATFORM_RAISING_WHEEL_PLATFORM_HEIGHT 24

// 889
#define ANIM_PLATFORM_2_WIDTH  48
#define ANIM_PLATFORM_2_HEIGHT 24

// 898
#define ANIM_PLATFORM_ON_A_PATH_3_WIDTH  56
#define ANIM_PLATFORM_ON_A_PATH_3_HEIGHT 24

// 891
#define ANIM_BUNGEE_CORD_WIDTH  8
#define ANIM_BUNGEE_CORD_HEIGHT 8

// 892
#define ANIM_SUNSET_BRIDGE_WIDTH  24
#define ANIM_SUNSET_BRIDGE_HEIGHT 32

// 894
#define ANIM_WAGGLE_COIL_WIDTH  48
#define ANIM_WAGGLE_COIL_HEIGHT 56

// 908 - x-mirrored
#define ANIM_PROPELLER_BUTTON_PLATFORM_WIDTH  (64 / 2)
#define ANIM_PROPELLER_BUTTON_PLATFORM_HEIGHT 48

// 910
#define ANIM_WATER_CANNON_WIDTH  32
#define ANIM_WATER_CANNON_HEIGHT 48

// 911
#define ANIM_FACTORY_RING_WIDTH  48
#define ANIM_FACTORY_RING_HEIGHT 48

// 912
#define ANIM_SPECIAL_SPRING_WIDTH  32
#define ANIM_SPECIAL_SPRING_HEIGHT 48

// 913
#define ANIM_BONUS_UFO_WIDTH  24
#define ANIM_BONUS_UFO_HEIGHT 48

// 914
#define ANIM_BONUS_UFO_RAY_WIDTH  24
#define ANIM_BONUS_UFO_RAY_HEIGHT 56

// 917
#define ANIM_TOY_BALLOON_WIDTH  32
#define ANIM_TOY_BALLOON_HEIGHT 48

// 920
#define ANIM_PENDULUM_WIDTH       40
#define ANIM_PENDULUM_HEIGHT      40
#define ANIM_PENDULUM_VAR0_WIDTH  40
#define ANIM_PENDULUM_VAR0_HEIGHT 40
#define ANIM_PENDULUM_VAR1_WIDTH  8
#define ANIM_PENDULUM_VAR1_HEIGHT 8

// 921
// Mirrored on X-axis
#define ANIM_PLATFORM_SPIKED_WIDTH  32
#define ANIM_PLATFORM_SPIKED_HEIGHT 48

// 923
#define ANIM_ICE_LAUNCHER_WIDTH  48
#define ANIM_ICE_LAUNCHER_HEIGHT 64

// 931
#define ANIM_UFO_PLATFORM_WIDTH  48
#define ANIM_UFO_PLATFORM_HEIGHT 24

// 930
#define ANIM_CLOSING_WALL_WIDTH  72
#define ANIM_CLOSING_WALL_HEIGHT 24

// 933
#define ANIM_FALL_PLATFORM_CA_WIDTH  48
#define ANIM_FALL_PLATFORM_CA_HEIGHT 16

// 934
#define ANIM_WATER_CANNON_SPLASH_WIDTH  48
#define ANIM_WATER_CANNON_SPLASH_HEIGHT 40

// 939
#define ANIM_SPRING_PLATFORM_6_WIDTH  24
#define ANIM_SPRING_PLATFORM_6_HEIGHT 64

// 942
#define ANIM_PLATFORM_ON_A_PATH_6_WIDTH  56
#define ANIM_PLATFORM_ON_A_PATH_6_HEIGHT 24

// 945
#define ANIM_MUD_FX_WIDTH              48
#define ANIM_MUD_FX_HEIGHT             24
#define ANIM_MUD_FX_CHAOS_ANGEL_WIDTH  48
#define ANIM_MUD_FX_CHAOS_ANGEL_HEIGHT 24

// 948
#define ANIM_GOAL_RING_WIDTH       24
#define ANIM_GOAL_RING_HEIGHT      24
#define ANIM_GOAL_RING_VAR8_WIDTH  24 // Sparkle effect
#define ANIM_GOAL_RING_VAR8_HEIGHT 16

// 976
#define ANIM_TOY_BALLOON_POPPED_WIDTH  32
#define ANIM_TOY_BALLOON_POPPED_HEIGHT 48

// 983
#define ANIM_ACT_RING_WIDTH       32
#define ANIM_ACT_RING_HEIGHT      32
#define ANIM_ACT_RING_VAR0_WIDTH  32
#define ANIM_ACT_RING_VAR0_HEIGHT 32
#define ANIM_ACT_RING_VAR1_WIDTH  32
#define ANIM_ACT_RING_VAR1_HEIGHT 32
#define ANIM_ACT_RING_VAR2_WIDTH  32
#define ANIM_ACT_RING_VAR2_HEIGHT 32
// "Crown" signalling completion
#define ANIM_ACT_RING_VAR3_WIDTH  24
#define ANIM_ACT_RING_VAR3_HEIGHT 16

// 984
#define ANIM_SPRING_PLATFORM_4_WIDTH  24
#define ANIM_SPRING_PLATFORM_4_HEIGHT 64

// 997
#define ANIM_PLATFORM_BONUS_WIDTH       48
#define ANIM_PLATFORM_BONUS_HEIGHT      48
#define ANIM_PLATFORM_BONUS_VAR0_WIDTH  48
#define ANIM_PLATFORM_BONUS_VAR0_HEIGHT 48
#define ANIM_PLATFORM_BONUS_VAR1_WIDTH  48
#define ANIM_PLATFORM_BONUS_VAR1_HEIGHT 24

// 1004
#define ANIM_CHAO_SITTING_WIDTH  32
#define ANIM_CHAO_SITTING_HEIGHT 32

// Enemies
// 1166
#define ANIM_SPINNER_WIDTH  48
#define ANIM_SPINNER_HEIGHT 32

// 1168
#define ANIM_AKATENTO_WIDTH  32
#define ANIM_AKATENTO_HEIGHT 24

// 1173
#define ANIM_FROG_WIDTH  32
#define ANIM_FROG_HEIGHT 48

// 1174
#define ANIM_MINIMOLE_WIDTH       48
#define ANIM_MINIMOLE_HEIGHT      24
#define ANIM_MINIMOLE_VAR0_WIDTH  48
#define ANIM_MINIMOLE_VAR0_HEIGHT 24
#define ANIM_MINIMOLE_VAR1_WIDTH  32
#define ANIM_MINIMOLE_VAR1_HEIGHT 8

// 1182
#define ANIM_GAOGAO_WIDTH  32
#define ANIM_GAOGAO_HEIGHT 32

// 1344
#define ANIM_ICE_SHIVER_WIDTH  16
#define ANIM_ICE_SHIVER_HEIGHT 16

// 1348
#define ANIM_SPECIAL_KEY_WIDTH  32
#define ANIM_SPECIAL_KEY_HEIGHT 32
