{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdtilesetsource; export gdtilesetsource

expandOnClassImported(TileSetScenesCollectionSource, TileSetSource)

proc getSceneTilesCount*(self: TileSetScenesCollectionSource): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetScenesCollectionSource, "get_scene_tiles_count", 2455072627)
  methodbind.ptrcall(self, [], int32)

proc getSceneTileId*(self: TileSetScenesCollectionSource; index: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetScenesCollectionSource, "get_scene_tile_id", 3744713108)
  methodbind.ptrcall(self, [getPtr index], int32)

proc hasSceneTileId*(self: TileSetScenesCollectionSource; id: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetScenesCollectionSource, "has_scene_tile_id", 3067735520)
  methodbind.ptrcall(self, [getPtr id], bool)

proc createSceneTile*(self: TileSetScenesCollectionSource; packedScene: gdref PackedScene; idOverride: int32 = -1): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetScenesCollectionSource, "create_scene_tile", 1117465415)
  methodbind.ptrcall(self, [getPtr packedScene, getPtr idOverride], int32)

proc setSceneTileId*(self: TileSetScenesCollectionSource; id: int32; newId: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetScenesCollectionSource, "set_scene_tile_id", 3937882851)
  methodbind.ptrcall(self, [getPtr id, getPtr newId], void)

proc setSceneTileScene*(self: TileSetScenesCollectionSource; id: int32; packedScene: gdref PackedScene): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetScenesCollectionSource, "set_scene_tile_scene", 3435852839)
  methodbind.ptrcall(self, [getPtr id, getPtr packedScene], void)

proc getSceneTileScene*(self: TileSetScenesCollectionSource; id: int32): gdref PackedScene =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetScenesCollectionSource, "get_scene_tile_scene", 511017218)
  methodbind.ptrcall(self, [getPtr id], gdref PackedScene)

proc setSceneTileDisplayPlaceholder*(self: TileSetScenesCollectionSource; id: int32; displayPlaceholder: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetScenesCollectionSource, "set_scene_tile_display_placeholder", 300928843)
  methodbind.ptrcall(self, [getPtr id, getPtr displayPlaceholder], void)

proc getSceneTileDisplayPlaceholder*(self: TileSetScenesCollectionSource; id: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetScenesCollectionSource, "get_scene_tile_display_placeholder", 1116898809)
  methodbind.ptrcall(self, [getPtr id], bool)

proc removeSceneTile*(self: TileSetScenesCollectionSource; id: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetScenesCollectionSource, "remove_scene_tile", 1286410249)
  methodbind.ptrcall(self, [getPtr id], void)

proc getNextSceneTileId*(self: TileSetScenesCollectionSource): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TileSetScenesCollectionSource, "get_next_scene_tile_id", 3905245786)
  methodbind.ptrcall(self, [], int32)
