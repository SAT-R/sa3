#include "global.h"
#include "core.h"

const u16 Palette_unknown_431[] = INCBIN_U16("graphics/tilemaps/unknown_431/palette.gbapal");
const u8 Tiles_unknown_431[] = INCBIN_U8("graphics/tilemaps/unknown_431/tiles.4bpp");
const u16 Tilemap_unknown_431[] = INCBIN_U16("graphics/tilemaps/unknown_431/tilemap.tilemap2");

const Tilemap unknown_431 = {
    .xTiles = 16,
    .yTiles = 16,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unknown_431,
    .tilesSize = sizeof(Tiles_unknown_431) - (0 * 0x00),
    .palette = Palette_unknown_431,
    .palOffset = 0,
    .palLength = sizeof(Palette_unknown_431) / sizeof(u16),
    .map = Tilemap_unknown_431,
};
