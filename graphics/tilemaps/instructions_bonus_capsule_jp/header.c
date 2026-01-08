#include "global.h"
#include "core.h"

const u16 Palette_instructions_bonus_capsule_jp[] = INCBIN_U16("graphics/tilemaps/instructions_bonus_capsule_jp/palette.gbapal");
const u8 Tiles_instructions_bonus_capsule_jp[] = INCBIN_U8("graphics/tilemaps/instructions_bonus_capsule_jp/tiles.4bpp");
const u16 Tilemap_instructions_bonus_capsule_jp[] = INCBIN_U16("graphics/tilemaps/instructions_bonus_capsule_jp/tilemap.tilemap2");

const Tilemap instructions_bonus_capsule_jp = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_instructions_bonus_capsule_jp,
    .tilesSize = sizeof(Tiles_instructions_bonus_capsule_jp) - (0 * 0x00),
    .palette = Palette_instructions_bonus_capsule_jp,
    .palOffset = 0,
    .palLength = sizeof(Palette_instructions_bonus_capsule_jp) / sizeof(u16),
    .map = Tilemap_instructions_bonus_capsule_jp,
};
