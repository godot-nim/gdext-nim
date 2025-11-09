{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(TileSetSource, Resource)

proc getTilesCount*(self: TileSetSource): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetSource, "get_tiles_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getTileId*(self: TileSetSource; index: int32): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetSource, "get_tile_id", 880721226)
  methodbind.ptrcall(self, [getPtr index], Vector2i)

proc hasTile*(self: TileSetSource; atlasCoords: Vector2i): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetSource, "has_tile", 3900751641)
  methodbind.ptrcall(self, [getPtr atlasCoords], bool)

proc getAlternativeTilesCount*(self: TileSetSource; atlasCoords: Vector2i): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetSource, "get_alternative_tiles_count", 2485466453)
  methodbind.ptrcall(self, [getPtr atlasCoords], int32)

proc getAlternativeTileId*(self: TileSetSource; atlasCoords: Vector2i; index: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetSource, "get_alternative_tile_id", 89881719)
  methodbind.ptrcall(self, [getPtr atlasCoords, getPtr index], int32)

proc hasAlternativeTile*(self: TileSetSource; atlasCoords: Vector2i; alternativeTile: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetSource, "has_alternative_tile", 1073731340)
  methodbind.ptrcall(self, [getPtr atlasCoords, getPtr alternativeTile], bool)
