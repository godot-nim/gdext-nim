{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtilesetsource; export gdtilesetsource

expandOnClassImported(TileSetAtlasSource, TileSetSource)

const TransformFlipH* = 4096
const TransformFlipV* = 8192
const TransformTranspose* = 16384

proc setTexture*(self: TileSetAtlasSource; texture: gdref Texture2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetAtlasSource, "set_texture", 4051416890)
  methodbind.ptrcall(self, [getPtr texture], void)

proc getTexture*(self: TileSetAtlasSource): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetAtlasSource, "get_texture", 3635182373)
  methodbind.ptrcall(self, [], gdref Texture2D)

proc setMargins*(self: TileSetAtlasSource; margins: Vector2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetAtlasSource, "set_margins", 1130785943)
  methodbind.ptrcall(self, [getPtr margins], void)

proc getMargins*(self: TileSetAtlasSource): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetAtlasSource, "get_margins", 3690982128)
  methodbind.ptrcall(self, [], Vector2i)

proc setSeparation*(self: TileSetAtlasSource; separation: Vector2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetAtlasSource, "set_separation", 1130785943)
  methodbind.ptrcall(self, [getPtr separation], void)

proc getSeparation*(self: TileSetAtlasSource): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetAtlasSource, "get_separation", 3690982128)
  methodbind.ptrcall(self, [], Vector2i)

proc setTextureRegionSize*(self: TileSetAtlasSource; textureRegionSize: Vector2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetAtlasSource, "set_texture_region_size", 1130785943)
  methodbind.ptrcall(self, [getPtr textureRegionSize], void)

proc getTextureRegionSize*(self: TileSetAtlasSource): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetAtlasSource, "get_texture_region_size", 3690982128)
  methodbind.ptrcall(self, [], Vector2i)

proc setUseTexturePadding*(self: TileSetAtlasSource; useTexturePadding: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetAtlasSource, "set_use_texture_padding", 2586408642)
  methodbind.ptrcall(self, [getPtr useTexturePadding], void)

proc getUseTexturePadding*(self: TileSetAtlasSource): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetAtlasSource, "get_use_texture_padding", 36873697)
  methodbind.ptrcall(self, [], bool)

proc createTile*(self: TileSetAtlasSource; atlasCoords: Vector2i; size: Vector2i = vector2i(1, 1)): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetAtlasSource, "create_tile", 190528769)
  methodbind.ptrcall(self, [getPtr atlasCoords, getPtr size], void)

proc removeTile*(self: TileSetAtlasSource; atlasCoords: Vector2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetAtlasSource, "remove_tile", 1130785943)
  methodbind.ptrcall(self, [getPtr atlasCoords], void)

proc moveTileInAtlas*(self: TileSetAtlasSource; atlasCoords: Vector2i; newAtlasCoords: Vector2i = vector2i(-1, -1); newSize: Vector2i = vector2i(-1, -1)): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetAtlasSource, "move_tile_in_atlas", 3870111920)
  methodbind.ptrcall(self, [getPtr atlasCoords, getPtr newAtlasCoords, getPtr newSize], void)

proc getTileSizeInAtlas*(self: TileSetAtlasSource; atlasCoords: Vector2i): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetAtlasSource, "get_tile_size_in_atlas", 3050897911)
  methodbind.ptrcall(self, [getPtr atlasCoords], Vector2i)

proc hasRoomForTile*(self: TileSetAtlasSource; atlasCoords: Vector2i; size: Vector2i; animationColumns: int32; animationSeparation: Vector2i; framesCount: int32; ignoredTile: Vector2i = vector2i(-1, -1)): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetAtlasSource, "has_room_for_tile", 3018597268)
  methodbind.ptrcall(self, [getPtr atlasCoords, getPtr size, getPtr animationColumns, getPtr animationSeparation, getPtr framesCount, getPtr ignoredTile], bool)

proc getTilesToBeRemovedOnChange*(self: TileSetAtlasSource; texture: gdref Texture2D; margins: Vector2i; separation: Vector2i; textureRegionSize: Vector2i): PackedVector2Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetAtlasSource, "get_tiles_to_be_removed_on_change", 1240378054)
  methodbind.ptrcall(self, [getPtr texture, getPtr margins, getPtr separation, getPtr textureRegionSize], PackedVector2Array)

proc getTileAtCoords*(self: TileSetAtlasSource; atlasCoords: Vector2i): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetAtlasSource, "get_tile_at_coords", 3050897911)
  methodbind.ptrcall(self, [getPtr atlasCoords], Vector2i)

proc hasTilesOutsideTexture*(self: TileSetAtlasSource): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetAtlasSource, "has_tiles_outside_texture", 36873697)
  methodbind.ptrcall(self, [], bool)

proc clearTilesOutsideTexture*(self: TileSetAtlasSource): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetAtlasSource, "clear_tiles_outside_texture", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setTileAnimationColumns*(self: TileSetAtlasSource; atlasCoords: Vector2i; frameColumns: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetAtlasSource, "set_tile_animation_columns", 3200960707)
  methodbind.ptrcall(self, [getPtr atlasCoords, getPtr frameColumns], void)

proc getTileAnimationColumns*(self: TileSetAtlasSource; atlasCoords: Vector2i): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetAtlasSource, "get_tile_animation_columns", 2485466453)
  methodbind.ptrcall(self, [getPtr atlasCoords], int32)

proc setTileAnimationSeparation*(self: TileSetAtlasSource; atlasCoords: Vector2i; separation: Vector2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetAtlasSource, "set_tile_animation_separation", 1941061099)
  methodbind.ptrcall(self, [getPtr atlasCoords, getPtr separation], void)

proc getTileAnimationSeparation*(self: TileSetAtlasSource; atlasCoords: Vector2i): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetAtlasSource, "get_tile_animation_separation", 3050897911)
  methodbind.ptrcall(self, [getPtr atlasCoords], Vector2i)

proc setTileAnimationSpeed*(self: TileSetAtlasSource; atlasCoords: Vector2i; speed: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetAtlasSource, "set_tile_animation_speed", 2262553149)
  methodbind.ptrcall(self, [getPtr atlasCoords, getPtr speed], void)

proc getTileAnimationSpeed*(self: TileSetAtlasSource; atlasCoords: Vector2i): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetAtlasSource, "get_tile_animation_speed", 719993801)
  methodbind.ptrcall(self, [getPtr atlasCoords], Float)

proc setTileAnimationMode*(self: TileSetAtlasSource; atlasCoords: Vector2i; mode: TileSetAtlasSource_TileAnimationMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetAtlasSource, "set_tile_animation_mode", 3192753483)
  methodbind.ptrcall(self, [getPtr atlasCoords, getPtr mode], void)

proc getTileAnimationMode*(self: TileSetAtlasSource; atlasCoords: Vector2i): TileSetAtlasSource_TileAnimationMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetAtlasSource, "get_tile_animation_mode", 4025349959)
  methodbind.ptrcall(self, [getPtr atlasCoords], TileSetAtlasSource_TileAnimationMode)

proc setTileAnimationFramesCount*(self: TileSetAtlasSource; atlasCoords: Vector2i; framesCount: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetAtlasSource, "set_tile_animation_frames_count", 3200960707)
  methodbind.ptrcall(self, [getPtr atlasCoords, getPtr framesCount], void)

proc getTileAnimationFramesCount*(self: TileSetAtlasSource; atlasCoords: Vector2i): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetAtlasSource, "get_tile_animation_frames_count", 2485466453)
  methodbind.ptrcall(self, [getPtr atlasCoords], int32)

proc setTileAnimationFrameDuration*(self: TileSetAtlasSource; atlasCoords: Vector2i; frameIndex: int32; duration: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetAtlasSource, "set_tile_animation_frame_duration", 2843487787)
  methodbind.ptrcall(self, [getPtr atlasCoords, getPtr frameIndex, getPtr duration], void)

proc getTileAnimationFrameDuration*(self: TileSetAtlasSource; atlasCoords: Vector2i; frameIndex: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetAtlasSource, "get_tile_animation_frame_duration", 1802448425)
  methodbind.ptrcall(self, [getPtr atlasCoords, getPtr frameIndex], Float)

proc getTileAnimationTotalDuration*(self: TileSetAtlasSource; atlasCoords: Vector2i): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetAtlasSource, "get_tile_animation_total_duration", 719993801)
  methodbind.ptrcall(self, [getPtr atlasCoords], Float)

proc createAlternativeTile*(self: TileSetAtlasSource; atlasCoords: Vector2i; alternativeIdOverride: int32 = -1): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetAtlasSource, "create_alternative_tile", 2226298068)
  methodbind.ptrcall(self, [getPtr atlasCoords, getPtr alternativeIdOverride], int32)

proc removeAlternativeTile*(self: TileSetAtlasSource; atlasCoords: Vector2i; alternativeTile: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetAtlasSource, "remove_alternative_tile", 3200960707)
  methodbind.ptrcall(self, [getPtr atlasCoords, getPtr alternativeTile], void)

proc setAlternativeTileId*(self: TileSetAtlasSource; atlasCoords: Vector2i; alternativeTile: int32; newId: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetAtlasSource, "set_alternative_tile_id", 1499785778)
  methodbind.ptrcall(self, [getPtr atlasCoords, getPtr alternativeTile, getPtr newId], void)

proc getNextAlternativeTileId*(self: TileSetAtlasSource; atlasCoords: Vector2i): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetAtlasSource, "get_next_alternative_tile_id", 2485466453)
  methodbind.ptrcall(self, [getPtr atlasCoords], int32)

proc getTileData*(self: TileSetAtlasSource; atlasCoords: Vector2i; alternativeTile: int32): TileData =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetAtlasSource, "get_tile_data", 3534028207)
  methodbind.ptrcall(self, [getPtr atlasCoords, getPtr alternativeTile], TileData)

proc getAtlasGridSize*(self: TileSetAtlasSource): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetAtlasSource, "get_atlas_grid_size", 3690982128)
  methodbind.ptrcall(self, [], Vector2i)

proc getTileTextureRegion*(self: TileSetAtlasSource; atlasCoords: Vector2i; frame: int32 = 0): Rect2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetAtlasSource, "get_tile_texture_region", 241857547)
  methodbind.ptrcall(self, [getPtr atlasCoords, getPtr frame], Rect2i)

proc getRuntimeTexture*(self: TileSetAtlasSource): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetAtlasSource, "get_runtime_texture", 3635182373)
  methodbind.ptrcall(self, [], gdref Texture2D)

proc getRuntimeTileTextureRegion*(self: TileSetAtlasSource; atlasCoords: Vector2i; frame: int32): Rect2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetAtlasSource, "get_runtime_tile_texture_region", 104874263)
  methodbind.ptrcall(self, [getPtr atlasCoords, getPtr frame], Rect2i)

template texture*(self: TileSetAtlasSource): untyped = self.getTexture()
template `texture=`*(self: TileSetAtlasSource; value) = self.setTexture(value)

template margins*(self: TileSetAtlasSource): untyped = self.getMargins()
template `margins=`*(self: TileSetAtlasSource; value) = self.setMargins(value)

template separation*(self: TileSetAtlasSource): untyped = self.getSeparation()
template `separation=`*(self: TileSetAtlasSource; value) = self.setSeparation(value)

template textureRegionSize*(self: TileSetAtlasSource): untyped = self.getTextureRegionSize()
template `textureRegionSize=`*(self: TileSetAtlasSource; value) = self.setTextureRegionSize(value)

template useTexturePadding*(self: TileSetAtlasSource): untyped = self.getUseTexturePadding()
template `useTexturePadding=`*(self: TileSetAtlasSource; value) = self.setUseTexturePadding(value)
