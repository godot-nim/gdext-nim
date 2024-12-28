{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

method useTileDataRuntimeUpdate*(self: TileMapLayer; coords: Vector2i): bool {.base.} = (discard)
proc useTileDataRuntimeUpdate(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[TileMapLayer](p_instance).useTileDataRuntimeUpdate(p_args[0].decode(Vector2i)).encode(r_ret)
template useTileDataRuntimeUpdate_bind*(_: typedesc[TileMapLayer]): ClassCallVirtual = useTileDataRuntimeUpdate

method tileDataRuntimeUpdate*(self: TileMapLayer; coords: Vector2i; tileData: TileData): void {.base.} = (discard)
proc tileDataRuntimeUpdate(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[TileMapLayer](p_instance).tileDataRuntimeUpdate(p_args[0].decode(Vector2i), p_args[1].decode(TileData))
template tileDataRuntimeUpdate_bind*(_: typedesc[TileMapLayer]): ClassCallVirtual = tileDataRuntimeUpdate

proc setCell*(self: TileMapLayer; coords: Vector2i; sourceId: int32 = -1; atlasCoords: Vector2i = vector2i(-1, -1); alternativeTile: int32 = 0): void =
  expandMethodBind(className TileMapLayer, "set_cell", 2428518503)
  methodbind.ptrcall(self, [getPtr coords, getPtr sourceId, getPtr atlasCoords, getPtr alternativeTile])

proc eraseCell*(self: TileMapLayer; coords: Vector2i): void =
  expandMethodBind(className TileMapLayer, "erase_cell", 1130785943)
  methodbind.ptrcall(self, [getPtr coords])

proc fixInvalidTiles*(self: TileMapLayer): void =
  expandMethodBind(className TileMapLayer, "fix_invalid_tiles", 3218959716)
  methodbind.ptrcall(self, [])

proc clear*(self: TileMapLayer): void =
  expandMethodBind(className TileMapLayer, "clear", 3218959716)
  methodbind.ptrcall(self, [])

proc getCellSourceId*(self: TileMapLayer; coords: Vector2i): int32 =
  expandMethodBind(className TileMapLayer, "get_cell_source_id", 2485466453)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr coords], addr ret)
  (addr ret).decode_result(int32)

proc getCellAtlasCoords*(self: TileMapLayer; coords: Vector2i): Vector2i =
  expandMethodBind(className TileMapLayer, "get_cell_atlas_coords", 3050897911)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, [getPtr coords], addr ret)
  (addr ret).decode_result(Vector2i)

proc getCellAlternativeTile*(self: TileMapLayer; coords: Vector2i): int32 =
  expandMethodBind(className TileMapLayer, "get_cell_alternative_tile", 2485466453)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr coords], addr ret)
  (addr ret).decode_result(int32)

proc getCellTileData*(self: TileMapLayer; coords: Vector2i): TileData =
  expandMethodBind(className TileMapLayer, "get_cell_tile_data", 205084707)
  var ret: encoded TileData
  methodbind.ptrcall(self, [getPtr coords], addr ret)
  (addr ret).decode_result(TileData)

proc getUsedCells*(self: TileMapLayer): TypedArray[Vector2i] =
  expandMethodBind(className TileMapLayer, "get_used_cells", 3995934104)
  var ret: encoded TypedArray[Vector2i]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TypedArray[Vector2i])

proc getUsedCellsById*(self: TileMapLayer; sourceId: int32 = -1; atlasCoords: Vector2i = vector2i(-1, -1); alternativeTile: int32 = -1): TypedArray[Vector2i] =
  expandMethodBind(className TileMapLayer, "get_used_cells_by_id", 4175304538)
  var ret: encoded TypedArray[Vector2i]
  methodbind.ptrcall(self, [getPtr sourceId, getPtr atlasCoords, getPtr alternativeTile], addr ret)
  (addr ret).decode_result(TypedArray[Vector2i])

proc getUsedRect*(self: TileMapLayer): Rect2i =
  expandMethodBind(className TileMapLayer, "get_used_rect", 410525958)
  var ret: encoded Rect2i
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Rect2i)

proc getPattern*(self: TileMapLayer; coordsArray: TypedArray[Vector2i]): gdref TileMapPattern =
  expandMethodBind(className TileMapLayer, "get_pattern", 3820813253)
  var ret: encoded gdref TileMapPattern
  methodbind.ptrcall(self, [getPtr coordsArray], addr ret)
  (addr ret).decode_result(gdref TileMapPattern)

proc setPattern*(self: TileMapLayer; position: Vector2i; pattern: gdref TileMapPattern): void =
  expandMethodBind(className TileMapLayer, "set_pattern", 1491151770)
  methodbind.ptrcall(self, [getPtr position, getPtr pattern])

proc setCellsTerrainConnect*(self: TileMapLayer; cells: TypedArray[Vector2i]; terrainSet: int32; terrain: int32; ignoreEmptyTerrains: bool = true): void =
  expandMethodBind(className TileMapLayer, "set_cells_terrain_connect", 748968311)
  methodbind.ptrcall(self, [getPtr cells, getPtr terrainSet, getPtr terrain, getPtr ignoreEmptyTerrains])

proc setCellsTerrainPath*(self: TileMapLayer; path: TypedArray[Vector2i]; terrainSet: int32; terrain: int32; ignoreEmptyTerrains: bool = true): void =
  expandMethodBind(className TileMapLayer, "set_cells_terrain_path", 748968311)
  methodbind.ptrcall(self, [getPtr path, getPtr terrainSet, getPtr terrain, getPtr ignoreEmptyTerrains])

proc hasBodyRid*(self: TileMapLayer; body: RID): bool =
  expandMethodBind(className TileMapLayer, "has_body_rid", 4155700596)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr body], addr ret)
  (addr ret).decode_result(bool)

proc getCoordsForBodyRid*(self: TileMapLayer; body: RID): Vector2i =
  expandMethodBind(className TileMapLayer, "get_coords_for_body_rid", 733700038)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, [getPtr body], addr ret)
  (addr ret).decode_result(Vector2i)

proc updateInternals*(self: TileMapLayer): void =
  expandMethodBind(className TileMapLayer, "update_internals", 3218959716)
  methodbind.ptrcall(self, [])

proc notifyRuntimeTileDataUpdate*(self: TileMapLayer): void =
  expandMethodBind(className TileMapLayer, "notify_runtime_tile_data_update", 2275361663)
  methodbind.ptrcall(self, [])

proc mapPattern*(self: TileMapLayer; positionInTilemap: Vector2i; coordsInPattern: Vector2i; pattern: gdref TileMapPattern): Vector2i =
  expandMethodBind(className TileMapLayer, "map_pattern", 1864516957)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, [getPtr positionInTilemap, getPtr coordsInPattern, getPtr pattern], addr ret)
  (addr ret).decode_result(Vector2i)

proc getSurroundingCells*(self: TileMapLayer; coords: Vector2i): TypedArray[Vector2i] =
  expandMethodBind(className TileMapLayer, "get_surrounding_cells", 2673526557)
  var ret: encoded TypedArray[Vector2i]
  methodbind.ptrcall(self, [getPtr coords], addr ret)
  (addr ret).decode_result(TypedArray[Vector2i])

proc getNeighborCell*(self: TileMapLayer; coords: Vector2i; neighbor: TileSet_CellNeighbor): Vector2i =
  expandMethodBind(className TileMapLayer, "get_neighbor_cell", 986575103)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, [getPtr coords, getPtr neighbor], addr ret)
  (addr ret).decode_result(Vector2i)

proc mapToLocal*(self: TileMapLayer; mapPosition: Vector2i): Vector2 =
  expandMethodBind(className TileMapLayer, "map_to_local", 108438297)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr mapPosition], addr ret)
  (addr ret).decode_result(Vector2)

proc localToMap*(self: TileMapLayer; localPosition: Vector2): Vector2i =
  expandMethodBind(className TileMapLayer, "local_to_map", 837806996)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, [getPtr localPosition], addr ret)
  (addr ret).decode_result(Vector2i)

proc setTileMapDataFromArray*(self: TileMapLayer; tileMapLayerData: PackedByteArray): void =
  expandMethodBind(className TileMapLayer, "set_tile_map_data_from_array", 2971499966)
  methodbind.ptrcall(self, [getPtr tileMapLayerData])

proc getTileMapDataAsArray*(self: TileMapLayer): PackedByteArray =
  expandMethodBind(className TileMapLayer, "get_tile_map_data_as_array", 2362200018)
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedByteArray)

proc setEnabled*(self: TileMapLayer; enabled: bool): void =
  expandMethodBind(className TileMapLayer, "set_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isEnabled*(self: TileMapLayer): bool =
  expandMethodBind(className TileMapLayer, "is_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setTileSet*(self: TileMapLayer; tileSet: gdref TileSet): void =
  expandMethodBind(className TileMapLayer, "set_tile_set", 774531446)
  methodbind.ptrcall(self, [getPtr tileSet])

proc getTileSet*(self: TileMapLayer): gdref TileSet =
  expandMethodBind(className TileMapLayer, "get_tile_set", 2678226422)
  var ret: encoded gdref TileSet
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref TileSet)

proc setYSortOrigin*(self: TileMapLayer; ySortOrigin: int32): void =
  expandMethodBind(className TileMapLayer, "set_y_sort_origin", 1286410249)
  methodbind.ptrcall(self, [getPtr ySortOrigin])

proc getYSortOrigin*(self: TileMapLayer): int32 =
  expandMethodBind(className TileMapLayer, "get_y_sort_origin", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setXDrawOrderReversed*(self: TileMapLayer; xDrawOrderReversed: bool): void =
  expandMethodBind(className TileMapLayer, "set_x_draw_order_reversed", 2586408642)
  methodbind.ptrcall(self, [getPtr xDrawOrderReversed])

proc isXDrawOrderReversed*(self: TileMapLayer): bool =
  expandMethodBind(className TileMapLayer, "is_x_draw_order_reversed", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setRenderingQuadrantSize*(self: TileMapLayer; size: int32): void =
  expandMethodBind(className TileMapLayer, "set_rendering_quadrant_size", 1286410249)
  methodbind.ptrcall(self, [getPtr size])

proc getRenderingQuadrantSize*(self: TileMapLayer): int32 =
  expandMethodBind(className TileMapLayer, "get_rendering_quadrant_size", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setCollisionEnabled*(self: TileMapLayer; enabled: bool): void =
  expandMethodBind(className TileMapLayer, "set_collision_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isCollisionEnabled*(self: TileMapLayer): bool =
  expandMethodBind(className TileMapLayer, "is_collision_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setUseKinematicBodies*(self: TileMapLayer; useKinematicBodies: bool): void =
  expandMethodBind(className TileMapLayer, "set_use_kinematic_bodies", 2586408642)
  methodbind.ptrcall(self, [getPtr useKinematicBodies])

proc isUsingKinematicBodies*(self: TileMapLayer): bool =
  expandMethodBind(className TileMapLayer, "is_using_kinematic_bodies", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setCollisionVisibilityMode*(self: TileMapLayer; visibilityMode: TileMapLayer_DebugVisibilityMode): void =
  expandMethodBind(className TileMapLayer, "set_collision_visibility_mode", 3508099847)
  methodbind.ptrcall(self, [getPtr visibilityMode])

proc getCollisionVisibilityMode*(self: TileMapLayer): TileMapLayer_DebugVisibilityMode =
  expandMethodBind(className TileMapLayer, "get_collision_visibility_mode", 338220793)
  var ret: encoded TileMapLayer_DebugVisibilityMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TileMapLayer_DebugVisibilityMode)

proc setNavigationEnabled*(self: TileMapLayer; enabled: bool): void =
  expandMethodBind(className TileMapLayer, "set_navigation_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isNavigationEnabled*(self: TileMapLayer): bool =
  expandMethodBind(className TileMapLayer, "is_navigation_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setNavigationMap*(self: TileMapLayer; map: RID): void =
  expandMethodBind(className TileMapLayer, "set_navigation_map", 2722037293)
  methodbind.ptrcall(self, [getPtr map])

proc getNavigationMap*(self: TileMapLayer): RID =
  expandMethodBind(className TileMapLayer, "get_navigation_map", 2944877500)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc setNavigationVisibilityMode*(self: TileMapLayer; showNavigation: TileMapLayer_DebugVisibilityMode): void =
  expandMethodBind(className TileMapLayer, "set_navigation_visibility_mode", 3508099847)
  methodbind.ptrcall(self, [getPtr showNavigation])

proc getNavigationVisibilityMode*(self: TileMapLayer): TileMapLayer_DebugVisibilityMode =
  expandMethodBind(className TileMapLayer, "get_navigation_visibility_mode", 338220793)
  var ret: encoded TileMapLayer_DebugVisibilityMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TileMapLayer_DebugVisibilityMode)

template tileMapData*(self: TileMapLayer): untyped = self.getTileMapDataAsArray()
template `tileMapData=`*(self: TileMapLayer; value) = self.setTileMapDataFromArray(value)

template enabled*(self: TileMapLayer): untyped = self.isEnabled()
template `enabled=`*(self: TileMapLayer; value) = self.setEnabled(value)

template tileSet*(self: TileMapLayer): untyped = self.getTileSet()
template `tileSet=`*(self: TileMapLayer; value) = self.setTileSet(value)

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

template navigationEnabled*(self: TileMapLayer): untyped = self.isNavigationEnabled()
template `navigationEnabled=`*(self: TileMapLayer; value) = self.setNavigationEnabled(value)

template navigationVisibilityMode*(self: TileMapLayer): untyped = self.getNavigationVisibilityMode()
template `navigationVisibilityMode=`*(self: TileMapLayer; value) = self.setNavigationVisibilityMode(value)

const TileMapLayer_vmap =
  Node2D.vmap.concat toTable {
    "usetiledataruntimeupdate" : "_use_tile_data_runtime_update",
    "tiledataruntimeupdate" : "_tile_data_runtime_update",
    }
template vmap*(_: typedesc[TileMapLayer]): Table[string, string] = TileMapLayer_vmap

proc changed*(self: TileMapLayer): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("changed")
  self.emitSignal(signalname)