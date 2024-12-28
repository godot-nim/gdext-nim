{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc getTilesCount*(self: TileSetSource): int32 =
  expandMethodBind(className TileSetSource, "get_tiles_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getTileId*(self: TileSetSource; index: int32): Vector2i =
  expandMethodBind(className TileSetSource, "get_tile_id", 880721226)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(Vector2i)

proc hasTile*(self: TileSetSource; atlasCoords: Vector2i): bool =
  expandMethodBind(className TileSetSource, "has_tile", 3900751641)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr atlasCoords], addr ret)
  (addr ret).decode_result(bool)

proc getAlternativeTilesCount*(self: TileSetSource; atlasCoords: Vector2i): int32 =
  expandMethodBind(className TileSetSource, "get_alternative_tiles_count", 2485466453)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr atlasCoords], addr ret)
  (addr ret).decode_result(int32)

proc getAlternativeTileId*(self: TileSetSource; atlasCoords: Vector2i; index: int32): int32 =
  expandMethodBind(className TileSetSource, "get_alternative_tile_id", 89881719)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr atlasCoords, getPtr index], addr ret)
  (addr ret).decode_result(int32)

proc hasAlternativeTile*(self: TileSetSource; atlasCoords: Vector2i; alternativeTile: int32): bool =
  expandMethodBind(className TileSetSource, "has_alternative_tile", 1073731340)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr atlasCoords, getPtr alternativeTile], addr ret)
  (addr ret).decode_result(bool)

const TileSetSource_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[TileSetSource]): Table[string, string] = TileSetSource_vmap