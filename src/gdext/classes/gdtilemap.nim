{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

method useTileDataRuntimeUpdate*(self: TileMap; layer: int32; coords: Vector2i): bool {.base.} = (discard)
proc useTileDataRuntimeUpdate(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[TileMap](p_instance).useTileDataRuntimeUpdate(p_args[0].decode(int32), p_args[1].decode(Vector2i)).encode(r_ret)
template useTileDataRuntimeUpdate_bind*(_: typedesc[TileMap]): ClassCallVirtual = useTileDataRuntimeUpdate

method tileDataRuntimeUpdate*(self: TileMap; layer: int32; coords: Vector2i; tileData: TileData): void {.base.} = (discard)
proc tileDataRuntimeUpdate(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[TileMap](p_instance).tileDataRuntimeUpdate(p_args[0].decode(int32), p_args[1].decode(Vector2i), p_args[2].decode(TileData))
template tileDataRuntimeUpdate_bind*(_: typedesc[TileMap]): ClassCallVirtual = tileDataRuntimeUpdate

proc setNavigationMap*(self: TileMap; layer: int32; map: RID): void =
  expandMethodBind(className TileMap, "set_navigation_map", 4040184819)
  methodbind.ptrcall(self, [getPtr layer, getPtr map])

proc getNavigationMap*(self: TileMap; layer: int32): RID =
  expandMethodBind(className TileMap, "get_navigation_map", 495598643)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr layer], addr ret)
  (addr ret).decode_result(RID)

proc forceUpdate*(self: TileMap; layer: int32 = -1): void =
  expandMethodBind(className TileMap, "force_update", 1025054187)
  methodbind.ptrcall(self, [getPtr layer])

proc setTileset*(self: TileMap; tileset: gdref TileSet): void =
  expandMethodBind(className TileMap, "set_tileset", 774531446)
  methodbind.ptrcall(self, [getPtr tileset])

proc getTileset*(self: TileMap): gdref TileSet =
  expandMethodBind(className TileMap, "get_tileset", 2678226422)
  var ret: encoded gdref TileSet
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref TileSet)

proc setRenderingQuadrantSize*(self: TileMap; size: int32): void =
  expandMethodBind(className TileMap, "set_rendering_quadrant_size", 1286410249)
  methodbind.ptrcall(self, [getPtr size])

proc getRenderingQuadrantSize*(self: TileMap): int32 =
  expandMethodBind(className TileMap, "get_rendering_quadrant_size", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getLayersCount*(self: TileMap): int32 =
  expandMethodBind(className TileMap, "get_layers_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc addLayer*(self: TileMap; toPosition: int32): void =
  expandMethodBind(className TileMap, "add_layer", 1286410249)
  methodbind.ptrcall(self, [getPtr toPosition])

proc moveLayer*(self: TileMap; layer: int32; toPosition: int32): void =
  expandMethodBind(className TileMap, "move_layer", 3937882851)
  methodbind.ptrcall(self, [getPtr layer, getPtr toPosition])

proc removeLayer*(self: TileMap; layer: int32): void =
  expandMethodBind(className TileMap, "remove_layer", 1286410249)
  methodbind.ptrcall(self, [getPtr layer])

proc setLayerName*(self: TileMap; layer: int32; name: String): void =
  expandMethodBind(className TileMap, "set_layer_name", 501894301)
  methodbind.ptrcall(self, [getPtr layer, getPtr name])

proc getLayerName*(self: TileMap; layer: int32): String =
  expandMethodBind(className TileMap, "get_layer_name", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr layer], addr ret)
  (addr ret).decode_result(String)

proc setLayerEnabled*(self: TileMap; layer: int32; enabled: bool): void =
  expandMethodBind(className TileMap, "set_layer_enabled", 300928843)
  methodbind.ptrcall(self, [getPtr layer, getPtr enabled])

proc isLayerEnabled*(self: TileMap; layer: int32): bool =
  expandMethodBind(className TileMap, "is_layer_enabled", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr layer], addr ret)
  (addr ret).decode_result(bool)

proc setLayerModulate*(self: TileMap; layer: int32; modulate: Color): void =
  expandMethodBind(className TileMap, "set_layer_modulate", 2878471219)
  methodbind.ptrcall(self, [getPtr layer, getPtr modulate])

proc getLayerModulate*(self: TileMap; layer: int32): Color =
  expandMethodBind(className TileMap, "get_layer_modulate", 3457211756)
  var ret: encoded Color
  methodbind.ptrcall(self, [getPtr layer], addr ret)
  (addr ret).decode_result(Color)

proc setLayerYSortEnabled*(self: TileMap; layer: int32; ySortEnabled: bool): void =
  expandMethodBind(className TileMap, "set_layer_y_sort_enabled", 300928843)
  methodbind.ptrcall(self, [getPtr layer, getPtr ySortEnabled])

proc isLayerYSortEnabled*(self: TileMap; layer: int32): bool =
  expandMethodBind(className TileMap, "is_layer_y_sort_enabled", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr layer], addr ret)
  (addr ret).decode_result(bool)

proc setLayerYSortOrigin*(self: TileMap; layer: int32; ySortOrigin: int32): void =
  expandMethodBind(className TileMap, "set_layer_y_sort_origin", 3937882851)
  methodbind.ptrcall(self, [getPtr layer, getPtr ySortOrigin])

proc getLayerYSortOrigin*(self: TileMap; layer: int32): int32 =
  expandMethodBind(className TileMap, "get_layer_y_sort_origin", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr layer], addr ret)
  (addr ret).decode_result(int32)

proc setLayerZIndex*(self: TileMap; layer: int32; zIndex: int32): void =
  expandMethodBind(className TileMap, "set_layer_z_index", 3937882851)
  methodbind.ptrcall(self, [getPtr layer, getPtr zIndex])

proc getLayerZIndex*(self: TileMap; layer: int32): int32 =
  expandMethodBind(className TileMap, "get_layer_z_index", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr layer], addr ret)
  (addr ret).decode_result(int32)

proc setLayerNavigationEnabled*(self: TileMap; layer: int32; enabled: bool): void =
  expandMethodBind(className TileMap, "set_layer_navigation_enabled", 300928843)
  methodbind.ptrcall(self, [getPtr layer, getPtr enabled])

proc isLayerNavigationEnabled*(self: TileMap; layer: int32): bool =
  expandMethodBind(className TileMap, "is_layer_navigation_enabled", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr layer], addr ret)
  (addr ret).decode_result(bool)

proc setLayerNavigationMap*(self: TileMap; layer: int32; map: RID): void =
  expandMethodBind(className TileMap, "set_layer_navigation_map", 4040184819)
  methodbind.ptrcall(self, [getPtr layer, getPtr map])

proc getLayerNavigationMap*(self: TileMap; layer: int32): RID =
  expandMethodBind(className TileMap, "get_layer_navigation_map", 495598643)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr layer], addr ret)
  (addr ret).decode_result(RID)

proc setCollisionAnimatable*(self: TileMap; enabled: bool): void =
  expandMethodBind(className TileMap, "set_collision_animatable", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isCollisionAnimatable*(self: TileMap): bool =
  expandMethodBind(className TileMap, "is_collision_animatable", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setCollisionVisibilityMode*(self: TileMap; collisionVisibilityMode: TileMap_VisibilityMode): void =
  expandMethodBind(className TileMap, "set_collision_visibility_mode", 3193440636)
  methodbind.ptrcall(self, [getPtr collisionVisibilityMode])

proc getCollisionVisibilityMode*(self: TileMap): TileMap_VisibilityMode =
  expandMethodBind(className TileMap, "get_collision_visibility_mode", 1697018252)
  var ret: encoded TileMap_VisibilityMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TileMap_VisibilityMode)

proc setNavigationVisibilityMode*(self: TileMap; navigationVisibilityMode: TileMap_VisibilityMode): void =
  expandMethodBind(className TileMap, "set_navigation_visibility_mode", 3193440636)
  methodbind.ptrcall(self, [getPtr navigationVisibilityMode])

proc getNavigationVisibilityMode*(self: TileMap): TileMap_VisibilityMode =
  expandMethodBind(className TileMap, "get_navigation_visibility_mode", 1697018252)
  var ret: encoded TileMap_VisibilityMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TileMap_VisibilityMode)

proc setCell*(self: TileMap; layer: int32; coords: Vector2i; sourceId: int32 = -1; atlasCoords: Vector2i = vector2i(-1, -1); alternativeTile: int32 = 0): void =
  expandMethodBind(className TileMap, "set_cell", 966713560)
  methodbind.ptrcall(self, [getPtr layer, getPtr coords, getPtr sourceId, getPtr atlasCoords, getPtr alternativeTile])

proc eraseCell*(self: TileMap; layer: int32; coords: Vector2i): void =
  expandMethodBind(className TileMap, "erase_cell", 2311374912)
  methodbind.ptrcall(self, [getPtr layer, getPtr coords])

proc getCellSourceId*(self: TileMap; layer: int32; coords: Vector2i; useProxies: bool = false): int32 =
  expandMethodBind(className TileMap, "get_cell_source_id", 551761942)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr layer, getPtr coords, getPtr useProxies], addr ret)
  (addr ret).decode_result(int32)

proc getCellAtlasCoords*(self: TileMap; layer: int32; coords: Vector2i; useProxies: bool = false): Vector2i =
  expandMethodBind(className TileMap, "get_cell_atlas_coords", 1869815066)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, [getPtr layer, getPtr coords, getPtr useProxies], addr ret)
  (addr ret).decode_result(Vector2i)

proc getCellAlternativeTile*(self: TileMap; layer: int32; coords: Vector2i; useProxies: bool = false): int32 =
  expandMethodBind(className TileMap, "get_cell_alternative_tile", 551761942)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr layer, getPtr coords, getPtr useProxies], addr ret)
  (addr ret).decode_result(int32)

proc getCellTileData*(self: TileMap; layer: int32; coords: Vector2i; useProxies: bool = false): TileData =
  expandMethodBind(className TileMap, "get_cell_tile_data", 2849631287)
  var ret: encoded TileData
  methodbind.ptrcall(self, [getPtr layer, getPtr coords, getPtr useProxies], addr ret)
  (addr ret).decode_result(TileData)

proc getCoordsForBodyRid*(self: TileMap; body: RID): Vector2i =
  expandMethodBind(className TileMap, "get_coords_for_body_rid", 291584212)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, [getPtr body], addr ret)
  (addr ret).decode_result(Vector2i)

proc getLayerForBodyRid*(self: TileMap; body: RID): int32 =
  expandMethodBind(className TileMap, "get_layer_for_body_rid", 3917799429)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr body], addr ret)
  (addr ret).decode_result(int32)

proc getPattern*(self: TileMap; layer: int32; coordsArray: TypedArray[Vector2i]): gdref TileMapPattern =
  expandMethodBind(className TileMap, "get_pattern", 2833570986)
  var ret: encoded gdref TileMapPattern
  methodbind.ptrcall(self, [getPtr layer, getPtr coordsArray], addr ret)
  (addr ret).decode_result(gdref TileMapPattern)

proc mapPattern*(self: TileMap; positionInTilemap: Vector2i; coordsInPattern: Vector2i; pattern: gdref TileMapPattern): Vector2i =
  expandMethodBind(className TileMap, "map_pattern", 1864516957)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, [getPtr positionInTilemap, getPtr coordsInPattern, getPtr pattern], addr ret)
  (addr ret).decode_result(Vector2i)

proc setPattern*(self: TileMap; layer: int32; position: Vector2i; pattern: gdref TileMapPattern): void =
  expandMethodBind(className TileMap, "set_pattern", 1195853946)
  methodbind.ptrcall(self, [getPtr layer, getPtr position, getPtr pattern])

proc setCellsTerrainConnect*(self: TileMap; layer: int32; cells: TypedArray[Vector2i]; terrainSet: int32; terrain: int32; ignoreEmptyTerrains: bool = true): void =
  expandMethodBind(className TileMap, "set_cells_terrain_connect", 3578627656)
  methodbind.ptrcall(self, [getPtr layer, getPtr cells, getPtr terrainSet, getPtr terrain, getPtr ignoreEmptyTerrains])

proc setCellsTerrainPath*(self: TileMap; layer: int32; path: TypedArray[Vector2i]; terrainSet: int32; terrain: int32; ignoreEmptyTerrains: bool = true): void =
  expandMethodBind(className TileMap, "set_cells_terrain_path", 3578627656)
  methodbind.ptrcall(self, [getPtr layer, getPtr path, getPtr terrainSet, getPtr terrain, getPtr ignoreEmptyTerrains])

proc fixInvalidTiles*(self: TileMap): void =
  expandMethodBind(className TileMap, "fix_invalid_tiles", 3218959716)
  methodbind.ptrcall(self, [])

proc clearLayer*(self: TileMap; layer: int32): void =
  expandMethodBind(className TileMap, "clear_layer", 1286410249)
  methodbind.ptrcall(self, [getPtr layer])

proc clear*(self: TileMap): void =
  expandMethodBind(className TileMap, "clear", 3218959716)
  methodbind.ptrcall(self, [])

proc updateInternals*(self: TileMap): void =
  expandMethodBind(className TileMap, "update_internals", 3218959716)
  methodbind.ptrcall(self, [])

proc notifyRuntimeTileDataUpdate*(self: TileMap; layer: int32 = -1): void =
  expandMethodBind(className TileMap, "notify_runtime_tile_data_update", 1025054187)
  methodbind.ptrcall(self, [getPtr layer])

proc getSurroundingCells*(self: TileMap; coords: Vector2i): TypedArray[Vector2i] =
  expandMethodBind(className TileMap, "get_surrounding_cells", 2673526557)
  var ret: encoded TypedArray[Vector2i]
  methodbind.ptrcall(self, [getPtr coords], addr ret)
  (addr ret).decode_result(TypedArray[Vector2i])

proc getUsedCells*(self: TileMap; layer: int32): TypedArray[Vector2i] =
  expandMethodBind(className TileMap, "get_used_cells", 663333327)
  var ret: encoded TypedArray[Vector2i]
  methodbind.ptrcall(self, [getPtr layer], addr ret)
  (addr ret).decode_result(TypedArray[Vector2i])

proc getUsedCellsById*(self: TileMap; layer: int32; sourceId: int32 = -1; atlasCoords: Vector2i = vector2i(-1, -1); alternativeTile: int32 = -1): TypedArray[Vector2i] =
  expandMethodBind(className TileMap, "get_used_cells_by_id", 2931012785)
  var ret: encoded TypedArray[Vector2i]
  methodbind.ptrcall(self, [getPtr layer, getPtr sourceId, getPtr atlasCoords, getPtr alternativeTile], addr ret)
  (addr ret).decode_result(TypedArray[Vector2i])

proc getUsedRect*(self: TileMap): Rect2i =
  expandMethodBind(className TileMap, "get_used_rect", 410525958)
  var ret: encoded Rect2i
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Rect2i)

proc mapToLocal*(self: TileMap; mapPosition: Vector2i): Vector2 =
  expandMethodBind(className TileMap, "map_to_local", 108438297)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr mapPosition], addr ret)
  (addr ret).decode_result(Vector2)

proc localToMap*(self: TileMap; localPosition: Vector2): Vector2i =
  expandMethodBind(className TileMap, "local_to_map", 837806996)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, [getPtr localPosition], addr ret)
  (addr ret).decode_result(Vector2i)

proc getNeighborCell*(self: TileMap; coords: Vector2i; neighbor: TileSet_CellNeighbor): Vector2i =
  expandMethodBind(className TileMap, "get_neighbor_cell", 986575103)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, [getPtr coords, getPtr neighbor], addr ret)
  (addr ret).decode_result(Vector2i)

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

const TileMap_vmap =
  Node2D.vmap.concat toTable {
    "usetiledataruntimeupdate" : "_use_tile_data_runtime_update",
    "tiledataruntimeupdate" : "_tile_data_runtime_update",
    }
template vmap*(_: typedesc[TileMap]): Table[string, string] = TileMap_vmap

proc changed*(self: TileMap): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("changed")
  self.emitSignal(signalname)