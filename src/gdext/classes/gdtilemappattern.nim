{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(TileMapPattern, Resource)

proc setCell*(self: TileMapPattern; coords: Vector2i; sourceId: int32 = -1; atlasCoords: Vector2i = vector2i(-1, -1); alternativeTile: int32 = -1): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapPattern, "set_cell", 2224802556)
  methodbind.ptrcall(self, [getPtr coords, getPtr sourceId, getPtr atlasCoords, getPtr alternativeTile], void)

proc hasCell*(self: TileMapPattern; coords: Vector2i): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapPattern, "has_cell", 3900751641)
  methodbind.ptrcall(self, [getPtr coords], bool)

proc removeCell*(self: TileMapPattern; coords: Vector2i; updateSize: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapPattern, "remove_cell", 4153096796)
  methodbind.ptrcall(self, [getPtr coords, getPtr updateSize], void)

proc getCellSourceId*(self: TileMapPattern; coords: Vector2i): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapPattern, "get_cell_source_id", 2485466453)
  methodbind.ptrcall(self, [getPtr coords], int32)

proc getCellAtlasCoords*(self: TileMapPattern; coords: Vector2i): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapPattern, "get_cell_atlas_coords", 3050897911)
  methodbind.ptrcall(self, [getPtr coords], Vector2i)

proc getCellAlternativeTile*(self: TileMapPattern; coords: Vector2i): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapPattern, "get_cell_alternative_tile", 2485466453)
  methodbind.ptrcall(self, [getPtr coords], int32)

proc getUsedCells*(self: TileMapPattern): TypedArray[Vector2i] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapPattern, "get_used_cells", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[Vector2i])

proc getSize*(self: TileMapPattern): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapPattern, "get_size", 3690982128)
  methodbind.ptrcall(self, [], Vector2i)

proc setSize*(self: TileMapPattern; size: Vector2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapPattern, "set_size", 1130785943)
  methodbind.ptrcall(self, [getPtr size], void)

proc isEmpty*(self: TileMapPattern): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileMapPattern, "is_empty", 36873697)
  methodbind.ptrcall(self, [], bool)
