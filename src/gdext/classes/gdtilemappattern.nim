{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc setCell*(self: TileMapPattern; coords: Vector2i; sourceId: int32 = -1; atlasCoords: Vector2i = vector2i(-1, -1); alternativeTile: int32 = -1): void =
  expandMethodBind(className TileMapPattern, "set_cell", 2224802556)
  var `?param` = [getPtr coords, getPtr sourceId, getPtr atlasCoords, getPtr alternativeTile]
  methodbind.ptrcall(self, addr `?param`[0])

proc hasCell*(self: TileMapPattern; coords: Vector2i): bool =
  expandMethodBind(className TileMapPattern, "has_cell", 3900751641)
  var `?param` = [getPtr coords]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc removeCell*(self: TileMapPattern; coords: Vector2i; updateSize: bool): void =
  expandMethodBind(className TileMapPattern, "remove_cell", 4153096796)
  var `?param` = [getPtr coords, getPtr updateSize]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCellSourceId*(self: TileMapPattern; coords: Vector2i): int32 =
  expandMethodBind(className TileMapPattern, "get_cell_source_id", 2485466453)
  var `?param` = [getPtr coords]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc getCellAtlasCoords*(self: TileMapPattern; coords: Vector2i): Vector2i =
  expandMethodBind(className TileMapPattern, "get_cell_atlas_coords", 3050897911)
  var `?param` = [getPtr coords]
  var ret: encoded Vector2i
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2i)

proc getCellAlternativeTile*(self: TileMapPattern; coords: Vector2i): int32 =
  expandMethodBind(className TileMapPattern, "get_cell_alternative_tile", 2485466453)
  var `?param` = [getPtr coords]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc getUsedCells*(self: TileMapPattern): TypedArray[Vector2i] =
  expandMethodBind(className TileMapPattern, "get_used_cells", 3995934104)
  var ret: encoded TypedArray[Vector2i]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[Vector2i])

proc getSize*(self: TileMapPattern): Vector2i =
  expandMethodBind(className TileMapPattern, "get_size", 3690982128)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2i)

proc setSize*(self: TileMapPattern; size: Vector2i): void =
  expandMethodBind(className TileMapPattern, "set_size", 1130785943)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc isEmpty*(self: TileMapPattern): bool =
  expandMethodBind(className TileMapPattern, "is_empty", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

const TileMapPattern_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[TileMapPattern]): Table[string, string] = TileMapPattern_vmap