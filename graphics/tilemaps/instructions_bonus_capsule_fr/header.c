#include "global.h"
#include "core.h"

const u16 Palette_instructions_bonus_capsule_fr[] = INCBIN_U16("graphics/tilemaps/instructions_bonus_capsule_fr/palette.gbapal");
const u8 Tiles_instructions_bonus_capsule_fr[] = INCBIN_U8("graphics/tilemaps/instructions_bonus_capsule_fr/tiles.4bpp");
const u16 Tilemap_instructions_bonus_capsule_fr[] = INCBIN_U16("graphics/tilemaps/instructions_bonus_capsule_fr/tilemap.tilemap2");

const Tilemap instructions_bonus_capsule_fr = {
    .xTiles = 30,
    .yTiles = 20,
    .animTileSize = 0x00,
    .animFrameCount = 0,
    .animDelay = 0,
    .tiles = Tiles_instructions_bonus_capsule_fr,
    .tilesSize = sizeof(Tiles_instructions_bonus_capsule_fr) - (0 * 0x00),
    .palette = Palette_instructions_bonus_capsule_fr,
    .palOffset = 0,
    .palLength = sizeof(Palette_instructions_bonus_capsule_fr) / sizeof(u16),
    .map = Tilemap_instructions_bonus_capsule_fr,
};
