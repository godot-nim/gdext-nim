{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

expandOnClassImported(TileMap, Node2D)

method useTileDataRuntimeUpdate*(self: TileMap; layer: int32; coords: Vector2i): bool {.base.} = (discard)
proc registerVirtual_useTileDataRuntimeUpdate*[T: TileMap](Self: typedesc[T]) =
  Self.vmethods[newStringName"_use_tile_data_runtime_update"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TileMap](p_instance).useTileDataRuntimeUpdate(p_args[0].decode(int32), p_args[1].decode(Vector2i)).encode(r_ret)

method tileDataRuntimeUpdate*(self: TileMap; layer: int32; coords: Vector2i; tileData: TileData): void {.base.} = (discard)
proc registerVirtual_tileDataRuntimeUpdate*[T: TileMap](Self: typedesc[T]) =
  Self.vmethods[newStringName"_tile_data_runtime_update"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TileMap](p_instance).tileDataRuntimeUpdate(p_args[0].decode(int32), p_args[1].decode(Vector2i), p_args[2].decode(TileData))

proc setNavigationMap*(self: TileMap; layer: int32; map: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "set_navigation_map", 4040184819)
  methodbind.ptrcall(self, [getPtr layer, getPtr map], void)

proc getNavigationMap*(self: TileMap; layer: int32): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "get_navigation_map", 495598643)
  methodbind.ptrcall(self, [getPtr layer], RID)

proc forceUpdate*(self: TileMap; layer: int32 = -1): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "force_update", 1025054187)
  methodbind.ptrcall(self, [getPtr layer], void)

proc setTileset*(self: TileMap; tileset: gdref TileSet): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "set_tileset", 774531446)
  methodbind.ptrcall(self, [getPtr tileset], void)

proc getTileset*(self: TileMap): gdref TileSet =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "get_tileset", 2678226422)
  methodbind.ptrcall(self, [], gdref TileSet)

proc setRenderingQuadrantSize*(self: TileMap; size: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "set_rendering_quadrant_size", 1286410249)
  methodbind.ptrcall(self, [getPtr size], void)

proc getRenderingQuadrantSize*(self: TileMap): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "get_rendering_quadrant_size", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getLayersCount*(self: TileMap): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "get_layers_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc addLayer*(self: TileMap; toPosition: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "add_layer", 1286410249)
  methodbind.ptrcall(self, [getPtr toPosition], void)

proc moveLayer*(self: TileMap; layer: int32; toPosition: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "move_layer", 3937882851)
  methodbind.ptrcall(self, [getPtr layer, getPtr toPosition], void)

proc removeLayer*(self: TileMap; layer: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "remove_layer", 1286410249)
  methodbind.ptrcall(self, [getPtr layer], void)

proc setLayerName*(self: TileMap; layer: int32; name: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "set_layer_name", 501894301)
  methodbind.ptrcall(self, [getPtr layer, getPtr name], void)

proc getLayerName*(self: TileMap; layer: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "get_layer_name", 844755477)
  methodbind.ptrcall(self, [getPtr layer], String)

proc setLayerEnabled*(self: TileMap; layer: int32; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "set_layer_enabled", 300928843)
  methodbind.ptrcall(self, [getPtr layer, getPtr enabled], void)

proc isLayerEnabled*(self: TileMap; layer: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "is_layer_enabled", 1116898809)
  methodbind.ptrcall(self, [getPtr layer], bool)

proc setLayerModulate*(self: TileMap; layer: int32; modulate: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "set_layer_modulate", 2878471219)
  methodbind.ptrcall(self, [getPtr layer, getPtr modulate], void)

proc getLayerModulate*(self: TileMap; layer: int32): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "get_layer_modulate", 3457211756)
  methodbind.ptrcall(self, [getPtr layer], Color)

proc setLayerYSortEnabled*(self: TileMap; layer: int32; ySortEnabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "set_layer_y_sort_enabled", 300928843)
  methodbind.ptrcall(self, [getPtr layer, getPtr ySortEnabled], void)

proc isLayerYSortEnabled*(self: TileMap; layer: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "is_layer_y_sort_enabled", 1116898809)
  methodbind.ptrcall(self, [getPtr layer], bool)

proc setLayerYSortOrigin*(self: TileMap; layer: int32; ySortOrigin: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "set_layer_y_sort_origin", 3937882851)
  methodbind.ptrcall(self, [getPtr layer, getPtr ySortOrigin], void)

proc getLayerYSortOrigin*(self: TileMap; layer: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "get_layer_y_sort_origin", 923996154)
  methodbind.ptrcall(self, [getPtr layer], int32)

proc setLayerZIndex*(self: TileMap; layer: int32; zIndex: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "set_layer_z_index", 3937882851)
  methodbind.ptrcall(self, [getPtr layer, getPtr zIndex], void)

proc getLayerZIndex*(self: TileMap; layer: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "get_layer_z_index", 923996154)
  methodbind.ptrcall(self, [getPtr layer], int32)

proc setLayerNavigationEnabled*(self: TileMap; layer: int32; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "set_layer_navigation_enabled", 300928843)
  methodbind.ptrcall(self, [getPtr layer, getPtr enabled], void)

proc isLayerNavigationEnabled*(self: TileMap; layer: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "is_layer_navigation_enabled", 1116898809)
  methodbind.ptrcall(self, [getPtr layer], bool)

proc setLayerNavigationMap*(self: TileMap; layer: int32; map: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "set_layer_navigation_map", 4040184819)
  methodbind.ptrcall(self, [getPtr layer, getPtr map], void)

proc getLayerNavigationMap*(self: TileMap; layer: int32): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "get_layer_navigation_map", 495598643)
  methodbind.ptrcall(self, [getPtr layer], RID)

proc setCollisionAnimatable*(self: TileMap; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "set_collision_animatable", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isCollisionAnimatable*(self: TileMap): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "is_collision_animatable", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setCollisionVisibilityMode*(self: TileMap; collisionVisibilityMode: TileMap_VisibilityMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "set_collision_visibility_mode", 3193440636)
  methodbind.ptrcall(self, [getPtr collisionVisibilityMode], void)

proc getCollisionVisibilityMode*(self: TileMap): TileMap_VisibilityMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "get_collision_visibility_mode", 1697018252)
  methodbind.ptrcall(self, [], TileMap_VisibilityMode)

proc setNavigationVisibilityMode*(self: TileMap; navigationVisibilityMode: TileMap_VisibilityMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "set_navigation_visibility_mode", 3193440636)
  methodbind.ptrcall(self, [getPtr navigationVisibilityMode], void)

proc getNavigationVisibilityMode*(self: TileMap): TileMap_VisibilityMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "get_navigation_visibility_mode", 1697018252)
  methodbind.ptrcall(self, [], TileMap_VisibilityMode)

proc setCell*(self: TileMap; layer: int32; coords: Vector2i; sourceId: int32 = -1; atlasCoords: Vector2i = vector2i(-1, -1); alternativeTile: int32 = 0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "set_cell", 966713560)
  methodbind.ptrcall(self, [getPtr layer, getPtr coords, getPtr sourceId, getPtr atlasCoords, getPtr alternativeTile], void)

proc eraseCell*(self: TileMap; layer: int32; coords: Vector2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "erase_cell", 2311374912)
  methodbind.ptrcall(self, [getPtr layer, getPtr coords], void)

proc getCellSourceId*(self: TileMap; layer: int32; coords: Vector2i; useProxies: bool = false): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "get_cell_source_id", 551761942)
  methodbind.ptrcall(self, [getPtr layer, getPtr coords, getPtr useProxies], int32)

proc getCellAtlasCoords*(self: TileMap; layer: int32; coords: Vector2i; useProxies: bool = false): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "get_cell_atlas_coords", 1869815066)
  methodbind.ptrcall(self, [getPtr layer, getPtr coords, getPtr useProxies], Vector2i)

proc getCellAlternativeTile*(self: TileMap; layer: int32; coords: Vector2i; useProxies: bool = false): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "get_cell_alternative_tile", 551761942)
  methodbind.ptrcall(self, [getPtr layer, getPtr coords, getPtr useProxies], int32)

proc getCellTileData*(self: TileMap; layer: int32; coords: Vector2i; useProxies: bool = false): TileData =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "get_cell_tile_data", 2849631287)
  methodbind.ptrcall(self, [getPtr layer, getPtr coords, getPtr useProxies], TileData)

proc isCellFlippedH*(self: TileMap; layer: int32; coords: Vector2i; useProxies: bool = false): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "is_cell_flipped_h", 2908343862)
  methodbind.ptrcall(self, [getPtr layer, getPtr coords, getPtr useProxies], bool)

proc isCellFlippedV*(self: TileMap; layer: int32; coords: Vector2i; useProxies: bool = false): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "is_cell_flipped_v", 2908343862)
  methodbind.ptrcall(self, [getPtr layer, getPtr coords, getPtr useProxies], bool)

proc isCellTransposed*(self: TileMap; layer: int32; coords: Vector2i; useProxies: bool = false): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "is_cell_transposed", 2908343862)
  methodbind.ptrcall(self, [getPtr layer, getPtr coords, getPtr useProxies], bool)

proc getCoordsForBodyRid*(self: TileMap; body: RID): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "get_coords_for_body_rid", 291584212)
  methodbind.ptrcall(self, [getPtr body], Vector2i)

proc getLayerForBodyRid*(self: TileMap; body: RID): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "get_layer_for_body_rid", 3917799429)
  methodbind.ptrcall(self, [getPtr body], int32)

proc getPattern*(self: TileMap; layer: int32; coordsArray: TypedArray[Vector2i]): gdref TileMapPattern =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "get_pattern", 2833570986)
  methodbind.ptrcall(self, [getPtr layer, getPtr coordsArray], gdref TileMapPattern)

proc mapPattern*(self: TileMap; positionInTilemap: Vector2i; coordsInPattern: Vector2i; pattern: gdref TileMapPattern): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "map_pattern", 1864516957)
  methodbind.ptrcall(self, [getPtr positionInTilemap, getPtr coordsInPattern, getPtr pattern], Vector2i)

proc setPattern*(self: TileMap; layer: int32; position: Vector2i; pattern: gdref TileMapPattern): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "set_pattern", 1195853946)
  methodbind.ptrcall(self, [getPtr layer, getPtr position, getPtr pattern], void)

proc setCellsTerrainConnect*(self: TileMap; layer: int32; cells: TypedArray[Vector2i]; terrainSet: int32; terrain: int32; ignoreEmptyTerrains: bool = true): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "set_cells_terrain_connect", 3578627656)
  methodbind.ptrcall(self, [getPtr layer, getPtr cells, getPtr terrainSet, getPtr terrain, getPtr ignoreEmptyTerrains], void)

proc setCellsTerrainPath*(self: TileMap; layer: int32; path: TypedArray[Vector2i]; terrainSet: int32; terrain: int32; ignoreEmptyTerrains: bool = true): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "set_cells_terrain_path", 3578627656)
  methodbind.ptrcall(self, [getPtr layer, getPtr path, getPtr terrainSet, getPtr terrain, getPtr ignoreEmptyTerrains], void)

proc fixInvalidTiles*(self: TileMap): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "fix_invalid_tiles", 3218959716)
  methodbind.ptrcall(self, [], void)

proc clearLayer*(self: TileMap; layer: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "clear_layer", 1286410249)
  methodbind.ptrcall(self, [getPtr layer], void)

proc clear*(self: TileMap): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "clear", 3218959716)
  methodbind.ptrcall(self, [], void)

proc updateInternals*(self: TileMap): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "update_internals", 3218959716)
  methodbind.ptrcall(self, [], void)

proc notifyRuntimeTileDataUpdate*(self: TileMap; layer: int32 = -1): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "notify_runtime_tile_data_update", 1025054187)
  methodbind.ptrcall(self, [getPtr layer], void)

proc getSurroundingCells*(self: TileMap; coords: Vector2i): TypedArray[Vector2i] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "get_surrounding_cells", 2673526557)
  methodbind.ptrcall(self, [getPtr coords], TypedArray[Vector2i])

proc getUsedCells*(self: TileMap; layer: int32): TypedArray[Vector2i] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "get_used_cells", 663333327)
  methodbind.ptrcall(self, [getPtr layer], TypedArray[Vector2i])

proc getUsedCellsById*(self: TileMap; layer: int32; sourceId: int32 = -1; atlasCoords: Vector2i = vector2i(-1, -1); alternativeTile: int32 = -1): TypedArray[Vector2i] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "get_used_cells_by_id", 2931012785)
  methodbind.ptrcall(self, [getPtr layer, getPtr sourceId, getPtr atlasCoords, getPtr alternativeTile], TypedArray[Vector2i])

proc getUsedRect*(self: TileMap): Rect2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "get_used_rect", 410525958)
  methodbind.ptrcall(self, [], Rect2i)

proc mapToLocal*(self: TileMap; mapPosition: Vector2i): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "map_to_local", 108438297)
  methodbind.ptrcall(self, [getPtr mapPosition], Vector2)

proc localToMap*(self: TileMap; localPosition: Vector2): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "local_to_map", 837806996)
  methodbind.ptrcall(self, [getPtr localPosition], Vector2i)

proc getNeighborCell*(self: TileMap; coords: Vector2i; neighbor: TileSet_CellNeighbor): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMap, "get_neighbor_cell", 986575103)
  methodbind.ptrcall(self, [getPtr coords, getPtr neighbor], Vector2i)

template tileSet*(self: TileMap): untyped = self.getTileset()
template `tileSet=`*(self: TileMap; value) = self.setTileset(value)

template renderingQuadrantSize*(self: TileMap): untyped = self.getRenderingQuadrantSize()
template `renderingQuadrantSize=`*(self: TileMap; value) = self.setRenderingQuadrantSize(value)

template collisionAnimatable*(self: TileMap): untyped = self.isCollisionAnimatable()
template `collisionAnimatable=`*(self: TileMap; value) = self.setCollisionAnimatable(value)

template collisionVisibilityMode*(self: TileMap): untyped = self.getCollisionVisibilityMode()
template `collisionVisibilityMode=`*(self: TileMap; value) = self.setCollisionVisibilityMode(value)

template navigationVisibilityMode*(self: TileMap): untyped = self.getNavigationVisibilityMode()
template `navigationVisibilityMode=`*(self: TileMap; value) = self.setNavigationVisibilityMode(value)
