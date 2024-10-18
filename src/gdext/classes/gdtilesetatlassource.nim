{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtilesetsource; export gdtilesetsource

proc setTexture*(self: TileSetAtlasSource; texture: gdref Texture2D): void =
  expandMethodBind(className TileSetAtlasSource, "set_texture", 4051416890)
  var `?param` = [getPtr texture]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTexture*(self: TileSetAtlasSource): gdref Texture2D =
  expandMethodBind(className TileSetAtlasSource, "get_texture", 3635182373)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc setMargins*(self: TileSetAtlasSource; margins: Vector2i): void =
  expandMethodBind(className TileSetAtlasSource, "set_margins", 1130785943)
  var `?param` = [getPtr margins]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMargins*(self: TileSetAtlasSource): Vector2i =
  expandMethodBind(className TileSetAtlasSource, "get_margins", 3690982128)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2i)

proc setSeparation*(self: TileSetAtlasSource; separation: Vector2i): void =
  expandMethodBind(className TileSetAtlasSource, "set_separation", 1130785943)
  var `?param` = [getPtr separation]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSeparation*(self: TileSetAtlasSource): Vector2i =
  expandMethodBind(className TileSetAtlasSource, "get_separation", 3690982128)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2i)

proc setTextureRegionSize*(self: TileSetAtlasSource; textureRegionSize: Vector2i): void =
  expandMethodBind(className TileSetAtlasSource, "set_texture_region_size", 1130785943)
  var `?param` = [getPtr textureRegionSize]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTextureRegionSize*(self: TileSetAtlasSource): Vector2i =
  expandMethodBind(className TileSetAtlasSource, "get_texture_region_size", 3690982128)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2i)

proc setUseTexturePadding*(self: TileSetAtlasSource; useTexturePadding: bool): void =
  expandMethodBind(className TileSetAtlasSource, "set_use_texture_padding", 2586408642)
  var `?param` = [getPtr useTexturePadding]
  methodbind.ptrcall(self, addr `?param`[0])

proc getUseTexturePadding*(self: TileSetAtlasSource): bool =
  expandMethodBind(className TileSetAtlasSource, "get_use_texture_padding", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc createTile*(self: TileSetAtlasSource; atlasCoords: Vector2i; size: Vector2i = vector2i(1, 1)): void =
  expandMethodBind(className TileSetAtlasSource, "create_tile", 190528769)
  var `?param` = [getPtr atlasCoords, getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeTile*(self: TileSetAtlasSource; atlasCoords: Vector2i): void =
  expandMethodBind(className TileSetAtlasSource, "remove_tile", 1130785943)
  var `?param` = [getPtr atlasCoords]
  methodbind.ptrcall(self, addr `?param`[0])

proc moveTileInAtlas*(self: TileSetAtlasSource; atlasCoords: Vector2i; newAtlasCoords: Vector2i = vector2i(-1, -1); newSize: Vector2i = vector2i(-1, -1)): void =
  expandMethodBind(className TileSetAtlasSource, "move_tile_in_atlas", 3870111920)
  var `?param` = [getPtr atlasCoords, getPtr newAtlasCoords, getPtr newSize]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTileSizeInAtlas*(self: TileSetAtlasSource; atlasCoords: Vector2i): Vector2i =
  expandMethodBind(className TileSetAtlasSource, "get_tile_size_in_atlas", 3050897911)
  var `?param` = [getPtr atlasCoords]
  var ret: encoded Vector2i
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2i)

proc hasRoomForTile*(self: TileSetAtlasSource; atlasCoords: Vector2i; size: Vector2i; animationColumns: int32; animationSeparation: Vector2i; framesCount: int32; ignoredTile: Vector2i = vector2i(-1, -1)): bool =
  expandMethodBind(className TileSetAtlasSource, "has_room_for_tile", 3018597268)
  var `?param` = [getPtr atlasCoords, getPtr size, getPtr animationColumns, getPtr animationSeparation, getPtr framesCount, getPtr ignoredTile]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getTilesToBeRemovedOnChange*(self: TileSetAtlasSource; texture: gdref Texture2D; margins: Vector2i; separation: Vector2i; textureRegionSize: Vector2i): PackedVector2Array =
  expandMethodBind(className TileSetAtlasSource, "get_tiles_to_be_removed_on_change", 1240378054)
  var `?param` = [getPtr texture, getPtr margins, getPtr separation, getPtr textureRegionSize]
  var ret: encoded PackedVector2Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedVector2Array)

proc getTileAtCoords*(self: TileSetAtlasSource; atlasCoords: Vector2i): Vector2i =
  expandMethodBind(className TileSetAtlasSource, "get_tile_at_coords", 3050897911)
  var `?param` = [getPtr atlasCoords]
  var ret: encoded Vector2i
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2i)

proc hasTilesOutsideTexture*(self: TileSetAtlasSource): bool =
  expandMethodBind(className TileSetAtlasSource, "has_tiles_outside_texture", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc clearTilesOutsideTexture*(self: TileSetAtlasSource): void =
  expandMethodBind(className TileSetAtlasSource, "clear_tiles_outside_texture", 3218959716)
  methodbind.ptrcall(self, nil)

proc setTileAnimationColumns*(self: TileSetAtlasSource; atlasCoords: Vector2i; frameColumns: int32): void =
  expandMethodBind(className TileSetAtlasSource, "set_tile_animation_columns", 3200960707)
  var `?param` = [getPtr atlasCoords, getPtr frameColumns]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTileAnimationColumns*(self: TileSetAtlasSource; atlasCoords: Vector2i): int32 =
  expandMethodBind(className TileSetAtlasSource, "get_tile_animation_columns", 2485466453)
  var `?param` = [getPtr atlasCoords]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc setTileAnimationSeparation*(self: TileSetAtlasSource; atlasCoords: Vector2i; separation: Vector2i): void =
  expandMethodBind(className TileSetAtlasSource, "set_tile_animation_separation", 1941061099)
  var `?param` = [getPtr atlasCoords, getPtr separation]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTileAnimationSeparation*(self: TileSetAtlasSource; atlasCoords: Vector2i): Vector2i =
  expandMethodBind(className TileSetAtlasSource, "get_tile_animation_separation", 3050897911)
  var `?param` = [getPtr atlasCoords]
  var ret: encoded Vector2i
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2i)

proc setTileAnimationSpeed*(self: TileSetAtlasSource; atlasCoords: Vector2i; speed: Float): void =
  expandMethodBind(className TileSetAtlasSource, "set_tile_animation_speed", 2262553149)
  var `?param` = [getPtr atlasCoords, getPtr speed]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTileAnimationSpeed*(self: TileSetAtlasSource; atlasCoords: Vector2i): Float =
  expandMethodBind(className TileSetAtlasSource, "get_tile_animation_speed", 719993801)
  var `?param` = [getPtr atlasCoords]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc setTileAnimationMode*(self: TileSetAtlasSource; atlasCoords: Vector2i; mode: TileSetAtlasSource_TileAnimationMode): void =
  expandMethodBind(className TileSetAtlasSource, "set_tile_animation_mode", 3192753483)
  var `?param` = [getPtr atlasCoords, getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTileAnimationMode*(self: TileSetAtlasSource; atlasCoords: Vector2i): TileSetAtlasSource_TileAnimationMode =
  expandMethodBind(className TileSetAtlasSource, "get_tile_animation_mode", 4025349959)
  var `?param` = [getPtr atlasCoords]
  var ret: encoded TileSetAtlasSource_TileAnimationMode
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TileSetAtlasSource_TileAnimationMode)

proc setTileAnimationFramesCount*(self: TileSetAtlasSource; atlasCoords: Vector2i; framesCount: int32): void =
  expandMethodBind(className TileSetAtlasSource, "set_tile_animation_frames_count", 3200960707)
  var `?param` = [getPtr atlasCoords, getPtr framesCount]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTileAnimationFramesCount*(self: TileSetAtlasSource; atlasCoords: Vector2i): int32 =
  expandMethodBind(className TileSetAtlasSource, "get_tile_animation_frames_count", 2485466453)
  var `?param` = [getPtr atlasCoords]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc setTileAnimationFrameDuration*(self: TileSetAtlasSource; atlasCoords: Vector2i; frameIndex: int32; duration: Float): void =
  expandMethodBind(className TileSetAtlasSource, "set_tile_animation_frame_duration", 2843487787)
  var `?param` = [getPtr atlasCoords, getPtr frameIndex, getPtr duration]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTileAnimationFrameDuration*(self: TileSetAtlasSource; atlasCoords: Vector2i; frameIndex: int32): Float =
  expandMethodBind(className TileSetAtlasSource, "get_tile_animation_frame_duration", 1802448425)
  var `?param` = [getPtr atlasCoords, getPtr frameIndex]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc getTileAnimationTotalDuration*(self: TileSetAtlasSource; atlasCoords: Vector2i): Float =
  expandMethodBind(className TileSetAtlasSource, "get_tile_animation_total_duration", 719993801)
  var `?param` = [getPtr atlasCoords]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc createAlternativeTile*(self: TileSetAtlasSource; atlasCoords: Vector2i; alternativeIdOverride: int32 = -1): int32 =
  expandMethodBind(className TileSetAtlasSource, "create_alternative_tile", 2226298068)
  var `?param` = [getPtr atlasCoords, getPtr alternativeIdOverride]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc removeAlternativeTile*(self: TileSetAtlasSource; atlasCoords: Vector2i; alternativeTile: int32): void =
  expandMethodBind(className TileSetAtlasSource, "remove_alternative_tile", 3200960707)
  var `?param` = [getPtr atlasCoords, getPtr alternativeTile]
  methodbind.ptrcall(self, addr `?param`[0])

proc setAlternativeTileId*(self: TileSetAtlasSource; atlasCoords: Vector2i; alternativeTile: int32; newId: int32): void =
  expandMethodBind(className TileSetAtlasSource, "set_alternative_tile_id", 1499785778)
  var `?param` = [getPtr atlasCoords, getPtr alternativeTile, getPtr newId]
  methodbind.ptrcall(self, addr `?param`[0])

proc getNextAlternativeTileId*(self: TileSetAtlasSource; atlasCoords: Vector2i): int32 =
  expandMethodBind(className TileSetAtlasSource, "get_next_alternative_tile_id", 2485466453)
  var `?param` = [getPtr atlasCoords]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc getTileData*(self: TileSetAtlasSource; atlasCoords: Vector2i; alternativeTile: int32): TileData =
  expandMethodBind(className TileSetAtlasSource, "get_tile_data", 3534028207)
  var `?param` = [getPtr atlasCoords, getPtr alternativeTile]
  var ret: encoded TileData
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TileData)

proc getAtlasGridSize*(self: TileSetAtlasSource): Vector2i =
  expandMethodBind(className TileSetAtlasSource, "get_atlas_grid_size", 3690982128)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2i)

proc getTileTextureRegion*(self: TileSetAtlasSource; atlasCoords: Vector2i; frame: int32 = 0): Rect2i =
  expandMethodBind(className TileSetAtlasSource, "get_tile_texture_region", 241857547)
  var `?param` = [getPtr atlasCoords, getPtr frame]
  var ret: encoded Rect2i
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rect2i)

proc getRuntimeTexture*(self: TileSetAtlasSource): gdref Texture2D =
  expandMethodBind(className TileSetAtlasSource, "get_runtime_texture", 3635182373)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc getRuntimeTileTextureRegion*(self: TileSetAtlasSource; atlasCoords: Vector2i; frame: int32): Rect2i =
  expandMethodBind(className TileSetAtlasSource, "get_runtime_tile_texture_region", 104874263)
  var `?param` = [getPtr atlasCoords, getPtr frame]
  var ret: encoded Rect2i
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rect2i)

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

const TileSetAtlasSource_vmap =
  TileSetSource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[TileSetAtlasSource]): Table[string, string] = TileSetAtlasSource_vmap