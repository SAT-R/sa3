#include "global.h"
#include "core.h"

const u16 Palette_8632A9C[] = INCBIN_U16("graphics/tilemaps/_8632A9C/palette.gbapal");
const u8    Tiles_8632A9C[] = INCBIN_U8("graphics/tilemaps/_8632A9C/tiles.4bpp");
const u16 Tilemap_8632A9C[] = INCBIN_U16("graphics/tilemaps/_8632A9C/tilemap.tilemap2");

const Tilemap _8632A9C = {
    .xTiles = 32,
    .yTiles = 20,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_8632A9C,
    .tilesSize = sizeof(Tiles_8632A9C) - (0 * 0x00),
    .palette = Palette_8632A9C,
    .palOffset = 0,
    .palLength = sizeof(Palette_8632A9C) / sizeof(u16),
    .map = Tilemap_8632A9C,
};
