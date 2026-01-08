#include "global.h"
#include "core.h"

const u16 Palette_instructions_bonus_enemies_en[] = INCBIN_U16("graphics/tilemaps/instructions_bonus_enemies_en/palette.gbapal");
const u8 Tiles_instructions_bonus_enemies_en[] = INCBIN_U8("graphics/tilemaps/instructions_bonus_enemies_en/tiles.4bpp");
const u16 Tilemap_instructions_bonus_enemies_en[] = INCBIN_U16("graphics/tilemaps/instructions_bonus_enemies_en/tilemap.tilemap2");

const Tilemap instructions_bonus_enemies_en = {
    .xTiles = 30,
    .yTiles = 8,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_instructions_bonus_enemies_en,
    .tilesSize = sizeof(Tiles_instructions_bonus_enemies_en) - (0 * 0x00),
    .palette = Palette_instructions_bonus_enemies_en,
    .palOffset = 0,
    .palLength = sizeof(Palette_instructions_bonus_enemies_en) / sizeof(u16),
    .map = Tilemap_instructions_bonus_enemies_en,
};
