#include "global.h"
#include "core.h"

const u16 Palette_unknown_393[] = INCBIN_U16("graphics/tilemaps/unknown_393/palette.gbapal");
const u8 Tiles_unknown_393[] = INCBIN_U8("graphics/tilemaps/unknown_393/tiles.4bpp");
const u16 Tilemap_unknown_393[] = INCBIN_U16("graphics/tilemaps/unknown_393/tilemap.tilemap2");

const Tilemap unknown_393 = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_unknown_393,
    .tilesSize = sizeof(Tiles_unknown_393) - (0 * 0x00),
    .palette = Palette_unknown_393,
    .palOffset = 0,
    .palLength = sizeof(Palette_unknown_393) / sizeof(u16),
    .map = Tilemap_unknown_393,
};
