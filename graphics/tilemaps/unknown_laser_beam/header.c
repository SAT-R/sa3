#include "global.h"
#include "core.h"

const u16 Palette_unknown_laser_beam[] = INCBIN_U16("graphics/tilemaps/unknown_laser_beam/palette.gbapal");
const u8 Tiles_unknown_laser_beam[] = INCBIN_U8("graphics/tilemaps/unknown_laser_beam/tiles.4bpp");
const u16 Tilemap_unknown_laser_beam[] = INCBIN_U16("graphics/tilemaps/unknown_laser_beam/tilemap.tilemap2");

const Tilemap unknown_laser_beam = {
    .xTiles = 64,
    .yTiles = 32,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unknown_laser_beam,
    .tilesSize = sizeof(Tiles_unknown_laser_beam) - (0 * 0x00),
    .palette = Palette_unknown_laser_beam,
    .palOffset = 0,
    .palLength = sizeof(Palette_unknown_laser_beam) / sizeof(u16),
    .map = Tilemap_unknown_laser_beam,
};
