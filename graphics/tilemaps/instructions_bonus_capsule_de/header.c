#include "global.h"
#include "core.h"

const u16 Palette_instructions_bonus_capsule_de[] = INCBIN_U16("graphics/tilemaps/instructions_bonus_capsule_de/palette.gbapal");
const u8 Tiles_instructions_bonus_capsule_de[] = INCBIN_U8("graphics/tilemaps/instructions_bonus_capsule_de/tiles.4bpp");
const u16 Tilemap_instructions_bonus_capsule_de[] = INCBIN_U16("graphics/tilemaps/instructions_bonus_capsule_de/tilemap.tilemap2");

const Tilemap instructions_bonus_capsule_de = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_instructions_bonus_capsule_de,
    .tilesSize = sizeof(Tiles_instructions_bonus_capsule_de) - (0 * 0x00),
    .palette = Palette_instructions_bonus_capsule_de,
    .palOffset = 0,
    .palLength = sizeof(Palette_instructions_bonus_capsule_de) / sizeof(u16),
    .map = Tilemap_instructions_bonus_capsule_de,
};
