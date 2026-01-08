#include "global.h"
#include "core.h"

const u16 Palette_unknown_326[] = INCBIN_U16("graphics/tilemaps/unknown_326/palette.gbapal");
const u8 Tiles_unknown_326[] = INCBIN_U8("graphics/tilemaps/unknown_326/tiles.4bpp");
const u16 Tilemap_unknown_326[] = INCBIN_U16("graphics/tilemaps/unknown_326/tilemap.tilemap2");

const Tilemap unknown_326 = {
    .xTiles = 32,
    .yTiles = 32,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unknown_326,
    .tilesSize = sizeof(Tiles_unknown_326) - (0 * 0x00),
    .palette = Palette_unknown_326,
    .palOffset = 0,
    .palLength = sizeof(Palette_unknown_326) / sizeof(u16),
    .map = Tilemap_unknown_326,
};
