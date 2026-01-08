#include "global.h"
#include "core.h"

const u16 Palette_unknown_374[] = INCBIN_U16("graphics/tilemaps/unknown_374/palette.gbapal");
const u8 Tiles_unknown_374[] = INCBIN_U8("graphics/tilemaps/unknown_374/tiles.4bpp");
const u16 Tilemap_unknown_374[] = INCBIN_U16("graphics/tilemaps/unknown_374/tilemap.tilemap2");

const Tilemap unknown_374 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unknown_374,
    .tilesSize = sizeof(Tiles_unknown_374) - (0 * 0x00),
    .palette = Palette_unknown_374,
    .palOffset = 0,
    .palLength = sizeof(Palette_unknown_374) / sizeof(u16),
    .map = Tilemap_unknown_374,
};
