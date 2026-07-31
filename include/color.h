#ifndef GUARD_COLOR_H
#define GUARD_COLOR_H

#define USING_ABGR_1555_COLORS (PLATFORM_GBA || (RENDERER == RENDERER_SOFTWARE))

#if USING_ABGR_1555_COLORS
// ABGR_1555
typedef uint16_t ColorRaw;
typedef union Color {
    struct {
        uint16_t r : 5;
        uint16_t g : 5;
        uint16_t b : 5;
        uint16_t a : 1;
    } split;

    ColorRaw raw;
} Color;

#define R_SHIFT    0
#define G_SHIFT    5
#define B_SHIFT    10
#define A_SHIFT    15
#define COLOR_MASK 0x1F
#define ALPHA_MASK 0x1
#else
// RGBA_8888
typedef uint32_t ColorRaw;
typedef union Color {
    struct {
        uint8_t r;
        uint8_t g;
        uint8_t b;
        uint8_t a;
    } split;

    ColorRaw raw;
} Color;

// TODO: This should be correct on little endian platforms
#define R_SHIFT    24
#define G_SHIFT    16
#define B_SHIFT    8
#define A_SHIFT    0
#define COLOR_MASK 0xFF
#define ALPHA_MASK 0xFF
#endif

#define R_MASK (COLOR_MASK << R_SHIFT)
#define G_MASK (COLOR_MASK << G_SHIFT)
#define B_MASK (COLOR_MASK << B_SHIFT)
#define A_MASK (ALPHA_MASK << A_SHIFT)

#define R_GET(color) ((R_MASK & (color)) >> R_SHIFT)
#define G_GET(color) ((G_MASK & (color)) >> G_SHIFT)
#define B_GET(color) ((B_MASK & (color)) >> B_SHIFT)
#define A_GET(color) ((A_MASK & (color)) >> A_SHIFT)

#define R_CHANNEL          0
#define G_CHANNEL          1
#define B_CHANNEL          2
#define A_CHANNEL          3
#define RGB_CHANNEL_COUNT  3
#define RGBA_CHANNEL_COUNT (RGB_CHANNEL_COUNT + 1)

#endif // GUARD_COLOR_H