#include "global.h"
#include "core.h"

const u16 Palette_instructions_bonus_enemies_es[] = INCBIN_U16("graphics/tilemaps/instructions_bonus_enemies_es/palette.gbapal");
const u8 Tiles_instructions_bonus_enemies_es[] = INCBIN_U8("graphics/tilemaps/instructions_bonus_enemies_es/tiles.4bpp");
const u16 Tilemap_instructions_bonus_enemies_es[] = INCBIN_U16("graphics/tilemaps/instructions_bonus_enemies_es/tilemap.tilemap2");

const Tilemap instructions_bonus_enemies_es = {
    .xTiles = 30,
    .yTiles = 8,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_instructions_bonus_enemies_es,
    .tilesSize = sizeof(Tiles_instructions_bonus_enemies_es) - (0 * 0x00),
    .palette = Palette_instructions_bonus_enemies_es,
    .palOffset = 0,
    .palLength = sizeof(Palette_instructions_bonus_enemies_es) / sizeof(u16),
    .map = Tilemap_instructions_bonus_enemies_es,
};
