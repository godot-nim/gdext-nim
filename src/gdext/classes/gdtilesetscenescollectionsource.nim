{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtilesetsource; export gdtilesetsource

proc getSceneTilesCount*(self: TileSetScenesCollectionSource): int32 =
  expandMethodBind(className TileSetScenesCollectionSource, "get_scene_tiles_count", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getSceneTileId*(self: TileSetScenesCollectionSource; index: int32): int32 =
  expandMethodBind(className TileSetScenesCollectionSource, "get_scene_tile_id", 3744713108)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(int32)

proc hasSceneTileId*(self: TileSetScenesCollectionSource; id: int32): bool =
  expandMethodBind(className TileSetScenesCollectionSource, "has_scene_tile_id", 3067735520)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr id], addr ret)
  (addr ret).decode_result(bool)

proc createSceneTile*(self: TileSetScenesCollectionSource; packedScene: gdref PackedScene; idOverride: int32 = -1): int32 =
  expandMethodBind(className TileSetScenesCollectionSource, "create_scene_tile", 1117465415)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr packedScene, getPtr idOverride], addr ret)
  (addr ret).decode_result(int32)

proc setSceneTileId*(self: TileSetScenesCollectionSource; id: int32; newId: int32): void =
  expandMethodBind(className TileSetScenesCollectionSource, "set_scene_tile_id", 3937882851)
  methodbind.ptrcall(self, [getPtr id, getPtr newId])

proc setSceneTileScene*(self: TileSetScenesCollectionSource; id: int32; packedScene: gdref PackedScene): void =
  expandMethodBind(className TileSetScenesCollectionSource, "set_scene_tile_scene", 3435852839)
  methodbind.ptrcall(self, [getPtr id, getPtr packedScene])

proc getSceneTileScene*(self: TileSetScenesCollectionSource; id: int32): gdref PackedScene =
  expandMethodBind(className TileSetScenesCollectionSource, "get_scene_tile_scene", 511017218)
  var ret: encoded gdref PackedScene
  methodbind.ptrcall(self, [getPtr id], addr ret)
  (addr ret).decode_result(gdref PackedScene)

proc setSceneTileDisplayPlaceholder*(self: TileSetScenesCollectionSource; id: int32; displayPlaceholder: bool): void =
  expandMethodBind(className TileSetScenesCollectionSource, "set_scene_tile_display_placeholder", 300928843)
  methodbind.ptrcall(self, [getPtr id, getPtr displayPlaceholder])

proc getSceneTileDisplayPlaceholder*(self: TileSetScenesCollectionSource; id: int32): bool =
  expandMethodBind(className TileSetScenesCollectionSource, "get_scene_tile_display_placeholder", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr id], addr ret)
  (addr ret).decode_result(bool)

proc removeSceneTile*(self: TileSetScenesCollectionSource; id: int32): void =
  expandMethodBind(className TileSetScenesCollectionSource, "remove_scene_tile", 1286410249)
  methodbind.ptrcall(self, [getPtr id])

proc getNextSceneTileId*(self: TileSetScenesCollectionSource): int32 =
  expandMethodBind(className TileSetScenesCollectionSource, "get_next_scene_tile_id", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

const TileSetScenesCollectionSource_vmap =
  TileSetSource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[TileSetScenesCollectionSource]): Table[string, string] = TileSetScenesCollectionSource_vmap