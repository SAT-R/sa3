#include "global.h"
#include "core.h"

const u16 Palette_extra_boss_big_laser[] = INCBIN_U16("graphics/tilemaps/extra_boss_big_laser/palette.gbapal");
const u8 Tiles_extra_boss_big_laser[] = INCBIN_U8("graphics/tilemaps/extra_boss_big_laser/tiles.4bpp");
const u16 Tilemap_extra_boss_big_laser[] = INCBIN_U16("graphics/tilemaps/extra_boss_big_laser/tilemap.tilemap2");

const Tilemap extra_boss_big_laser = {
    .xTiles = 64,
    .yTiles = 32,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_extra_boss_big_laser,
    .tilesSize = sizeof(Tiles_extra_boss_big_laser) - (0 * 0x00),
    .palette = Palette_extra_boss_big_laser,
    .palOffset = 0,
    .palLength = sizeof(Palette_extra_boss_big_laser) / sizeof(u16),
    .map = Tilemap_extra_boss_big_laser,
};
