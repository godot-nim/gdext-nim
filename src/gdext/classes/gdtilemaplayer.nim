{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

expandOnClassImported(TileMapLayer, Node2D)

method useTileDataRuntimeUpdate*(self: TileMapLayer; coords: Vector2i): bool {.base.} = (discard)
proc registerVirtual_useTileDataRuntimeUpdate*[T: TileMapLayer](Self: typedesc[T]) =
  Self.vmethods[newStringName"_use_tile_data_runtime_update"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TileMapLayer](p_instance).useTileDataRuntimeUpdate(p_args[0].decode(Vector2i)).encode(r_ret)

method tileDataRuntimeUpdate*(self: TileMapLayer; coords: Vector2i; tileData: TileData): void {.base.} = (discard)
proc registerVirtual_tileDataRuntimeUpdate*[T: TileMapLayer](Self: typedesc[T]) =
  Self.vmethods[newStringName"_tile_data_runtime_update"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TileMapLayer](p_instance).tileDataRuntimeUpdate(p_args[0].decode(Vector2i), p_args[1].decode(TileData))

method updateCells*(self: TileMapLayer; coords: TypedArray[Vector2i]; forcedCleanup: bool): void {.base.} = (discard)
proc registerVirtual_updateCells*[T: TileMapLayer](Self: typedesc[T]) =
  Self.vmethods[newStringName"_update_cells"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[TileMapLayer](p_instance).updateCells(p_args[0].decode(TypedArray[Vector2i]), p_args[1].decode(bool))

proc setCell*(self: TileMapLayer; coords: Vector2i; sourceId: int32 = -1; atlasCoords: Vector2i = vector2i(-1, -1); alternativeTile: int32 = 0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "set_cell", 2428518503)
  methodbind.ptrcall(self, [getPtr coords, getPtr sourceId, getPtr atlasCoords, getPtr alternativeTile], void)

proc eraseCell*(self: TileMapLayer; coords: Vector2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "erase_cell", 1130785943)
  methodbind.ptrcall(self, [getPtr coords], void)

proc fixInvalidTiles*(self: TileMapLayer): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "fix_invalid_tiles", 3218959716)
  methodbind.ptrcall(self, [], void)

proc clear*(self: TileMapLayer): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "clear", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getCellSourceId*(self: TileMapLayer; coords: Vector2i): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "get_cell_source_id", 2485466453)
  methodbind.ptrcall(self, [getPtr coords], int32)

proc getCellAtlasCoords*(self: TileMapLayer; coords: Vector2i): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "get_cell_atlas_coords", 3050897911)
  methodbind.ptrcall(self, [getPtr coords], Vector2i)

proc getCellAlternativeTile*(self: TileMapLayer; coords: Vector2i): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "get_cell_alternative_tile", 2485466453)
  methodbind.ptrcall(self, [getPtr coords], int32)

proc getCellTileData*(self: TileMapLayer; coords: Vector2i): TileData =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "get_cell_tile_data", 205084707)
  methodbind.ptrcall(self, [getPtr coords], TileData)

proc isCellFlippedH*(self: TileMapLayer; coords: Vector2i): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "is_cell_flipped_h", 3900751641)
  methodbind.ptrcall(self, [getPtr coords], bool)

proc isCellFlippedV*(self: TileMapLayer; coords: Vector2i): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "is_cell_flipped_v", 3900751641)
  methodbind.ptrcall(self, [getPtr coords], bool)

proc isCellTransposed*(self: TileMapLayer; coords: Vector2i): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "is_cell_transposed", 3900751641)
  methodbind.ptrcall(self, [getPtr coords], bool)

proc getUsedCells*(self: TileMapLayer): TypedArray[Vector2i] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "get_used_cells", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[Vector2i])

proc getUsedCellsById*(self: TileMapLayer; sourceId: int32 = -1; atlasCoords: Vector2i = vector2i(-1, -1); alternativeTile: int32 = -1): TypedArray[Vector2i] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "get_used_cells_by_id", 4175304538)
  methodbind.ptrcall(self, [getPtr sourceId, getPtr atlasCoords, getPtr alternativeTile], TypedArray[Vector2i])

proc getUsedRect*(self: TileMapLayer): Rect2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "get_used_rect", 410525958)
  methodbind.ptrcall(self, [], Rect2i)

proc getPattern*(self: TileMapLayer; coordsArray: TypedArray[Vector2i]): gdref TileMapPattern =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "get_pattern", 3820813253)
  methodbind.ptrcall(self, [getPtr coordsArray], gdref TileMapPattern)

proc setPattern*(self: TileMapLayer; position: Vector2i; pattern: gdref TileMapPattern): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "set_pattern", 1491151770)
  methodbind.ptrcall(self, [getPtr position, getPtr pattern], void)

proc setCellsTerrainConnect*(self: TileMapLayer; cells: TypedArray[Vector2i]; terrainSet: int32; terrain: int32; ignoreEmptyTerrains: bool = true): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "set_cells_terrain_connect", 748968311)
  methodbind.ptrcall(self, [getPtr cells, getPtr terrainSet, getPtr terrain, getPtr ignoreEmptyTerrains], void)

proc setCellsTerrainPath*(self: TileMapLayer; path: TypedArray[Vector2i]; terrainSet: int32; terrain: int32; ignoreEmptyTerrains: bool = true): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "set_cells_terrain_path", 748968311)
  methodbind.ptrcall(self, [getPtr path, getPtr terrainSet, getPtr terrain, getPtr ignoreEmptyTerrains], void)

proc hasBodyRid*(self: TileMapLayer; body: RID): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "has_body_rid", 4155700596)
  methodbind.ptrcall(self, [getPtr body], bool)

proc getCoordsForBodyRid*(self: TileMapLayer; body: RID): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "get_coords_for_body_rid", 733700038)
  methodbind.ptrcall(self, [getPtr body], Vector2i)

proc updateInternals*(self: TileMapLayer): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "update_internals", 3218959716)
  methodbind.ptrcall(self, [], void)

proc notifyRuntimeTileDataUpdate*(self: TileMapLayer): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "notify_runtime_tile_data_update", 3218959716)
  methodbind.ptrcall(self, [], void)

proc mapPattern*(self: TileMapLayer; positionInTilemap: Vector2i; coordsInPattern: Vector2i; pattern: gdref TileMapPattern): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "map_pattern", 1864516957)
  methodbind.ptrcall(self, [getPtr positionInTilemap, getPtr coordsInPattern, getPtr pattern], Vector2i)

proc getSurroundingCells*(self: TileMapLayer; coords: Vector2i): TypedArray[Vector2i] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "get_surrounding_cells", 2673526557)
  methodbind.ptrcall(self, [getPtr coords], TypedArray[Vector2i])

proc getNeighborCell*(self: TileMapLayer; coords: Vector2i; neighbor: TileSet_CellNeighbor): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "get_neighbor_cell", 986575103)
  methodbind.ptrcall(self, [getPtr coords, getPtr neighbor], Vector2i)

proc mapToLocal*(self: TileMapLayer; mapPosition: Vector2i): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "map_to_local", 108438297)
  methodbind.ptrcall(self, [getPtr mapPosition], Vector2)

proc localToMap*(self: TileMapLayer; localPosition: Vector2): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "local_to_map", 837806996)
  methodbind.ptrcall(self, [getPtr localPosition], Vector2i)

proc setTileMapDataFromArray*(self: TileMapLayer; tileMapLayerData: PackedByteArray): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "set_tile_map_data_from_array", 2971499966)
  methodbind.ptrcall(self, [getPtr tileMapLayerData], void)

proc getTileMapDataAsArray*(self: TileMapLayer): PackedByteArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "get_tile_map_data_as_array", 2362200018)
  methodbind.ptrcall(self, [], PackedByteArray)

proc setEnabled*(self: TileMapLayer; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "set_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isEnabled*(self: TileMapLayer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "is_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setTileSet*(self: TileMapLayer; tileSet: gdref TileSet): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "set_tile_set", 774531446)
  methodbind.ptrcall(self, [getPtr tileSet], void)

proc getTileSet*(self: TileMapLayer): gdref TileSet =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "get_tile_set", 2678226422)
  methodbind.ptrcall(self, [], gdref TileSet)

proc setYSortOrigin*(self: TileMapLayer; ySortOrigin: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "set_y_sort_origin", 1286410249)
  methodbind.ptrcall(self, [getPtr ySortOrigin], void)

proc getYSortOrigin*(self: TileMapLayer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "get_y_sort_origin", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setXDrawOrderReversed*(self: TileMapLayer; xDrawOrderReversed: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "set_x_draw_order_reversed", 2586408642)
  methodbind.ptrcall(self, [getPtr xDrawOrderReversed], void)

proc isXDrawOrderReversed*(self: TileMapLayer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "is_x_draw_order_reversed", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setRenderingQuadrantSize*(self: TileMapLayer; size: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "set_rendering_quadrant_size", 1286410249)
  methodbind.ptrcall(self, [getPtr size], void)

proc getRenderingQuadrantSize*(self: TileMapLayer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "get_rendering_quadrant_size", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setCollisionEnabled*(self: TileMapLayer; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "set_collision_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isCollisionEnabled*(self: TileMapLayer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "is_collision_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setUseKinematicBodies*(self: TileMapLayer; useKinematicBodies: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "set_use_kinematic_bodies", 2586408642)
  methodbind.ptrcall(self, [getPtr useKinematicBodies], void)

proc isUsingKinematicBodies*(self: TileMapLayer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "is_using_kinematic_bodies", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setCollisionVisibilityMode*(self: TileMapLayer; visibilityMode: TileMapLayer_DebugVisibilityMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "set_collision_visibility_mode", 3508099847)
  methodbind.ptrcall(self, [getPtr visibilityMode], void)

proc getCollisionVisibilityMode*(self: TileMapLayer): TileMapLayer_DebugVisibilityMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "get_collision_visibility_mode", 338220793)
  methodbind.ptrcall(self, [], TileMapLayer_DebugVisibilityMode)

proc setPhysicsQuadrantSize*(self: TileMapLayer; size: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "set_physics_quadrant_size", 1286410249)
  methodbind.ptrcall(self, [getPtr size], void)

proc getPhysicsQuadrantSize*(self: TileMapLayer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "get_physics_quadrant_size", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setOcclusionEnabled*(self: TileMapLayer; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "set_occlusion_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isOcclusionEnabled*(self: TileMapLayer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "is_occlusion_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setNavigationEnabled*(self: TileMapLayer; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "set_navigation_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isNavigationEnabled*(self: TileMapLayer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "is_navigation_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setNavigationMap*(self: TileMapLayer; map: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "set_navigation_map", 2722037293)
  methodbind.ptrcall(self, [getPtr map], void)

proc getNavigationMap*(self: TileMapLayer): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "get_navigation_map", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc setNavigationVisibilityMode*(self: TileMapLayer; showNavigation: TileMapLayer_DebugVisibilityMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "set_navigation_visibility_mode", 3508099847)
  methodbind.ptrcall(self, [getPtr showNavigation], void)

proc getNavigationVisibilityMode*(self: TileMapLayer): TileMapLayer_DebugVisibilityMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapLayer, "get_navigation_visibility_mode", 338220793)
  methodbind.ptrcall(self, [], TileMapLayer_DebugVisibilityMode)

template tileMapData*(self: TileMapLayer): untyped = self.getTileMapDataAsArray()
template `tileMapData=`*(self: TileMapLayer; value) = self.setTileMapDataFromArray(value)

template enabled*(self: TileMapLayer): untyped = self.isEnabled()
template `enabled=`*(self: TileMapLayer; value) = self.setEnabled(value)

template tileSet*(self: TileMapLayer): untyped = self.getTileSet()
template `tileSet=`*(self: TileMapLayer; value) = self.setTileSet(value)

template occlusionEnabled*(self: TileMapLayer): untyped = self.isOcclusionEnabled()
template `occlusionEnabled=`*(self: TileMapLayer; value) = self.setOcclusionEnabled(value)

template ySortOrigin*(self: TileMapLayer): untyped = self.getYSortOrigin()
template `ySortOrigin=`*(self: TileMapLayer; value) = self.setYSortOrigin(value)

template xDrawOrderReversed*(self: TileMapLayer): untyped = self.isXDrawOrderReversed()
template `xDrawOrderReversed=`*(self: TileMapLayer; value) = self.setXDrawOrderReversed(value)

template renderingQuadrantSize*(self: TileMapLayer): untyped = self.getRenderingQuadrantSize()
template `renderingQuadrantSize=`*(self: TileMapLayer; value) = self.setRenderingQuadrantSize(value)

template collisionEnabled*(self: TileMapLayer): untyped = self.isCollisionEnabled()
template `collisionEnabled=`*(self: TileMapLayer; value) = self.setCollisionEnabled(value)

template useKinematicBodies*(self: TileMapLayer): untyped = self.isUsingKinematicBodies()
template `useKinematicBodies=`*(self: TileMapLayer; value) = self.setUseKinematicBodies(value)

template collisionVisibilityMode*(self: TileMapLayer): untyped = self.getCollisionVisibilityMode()
template `collisionVisibilityMode=`*(self: TileMapLayer; value) = self.setCollisionVisibilityMode(value)

template physicsQuadrantSize*(self: TileMapLayer): untyped = self.getPhysicsQuadrantSize()
template `physicsQuadrantSize=`*(self: TileMapLayer; value) = self.setPhysicsQuadrantSize(value)

template navigationEnabled*(self: TileMapLayer): untyped = self.isNavigationEnabled()
template `navigationEnabled=`*(self: TileMapLayer; value) = self.setNavigationEnabled(value)

template navigationVisibilityMode*(self: TileMapLayer): untyped = self.getNavigationVisibilityMode()
template `navigationVisibilityMode=`*(self: TileMapLayer; value) = self.setNavigationVisibilityMode(value)
