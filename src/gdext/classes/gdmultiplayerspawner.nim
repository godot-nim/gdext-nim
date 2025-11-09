{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode; export gdnode

expandOnClassImported(MultiplayerSpawner, Node)

proc addSpawnableScene*(self: MultiplayerSpawner; path: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerSpawner, "add_spawnable_scene", 83702148)
  methodbind.ptrcall(self, [getPtr path], void)

proc getSpawnableSceneCount*(self: MultiplayerSpawner): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerSpawner, "get_spawnable_scene_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getSpawnableScene*(self: MultiplayerSpawner; index: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerSpawner, "get_spawnable_scene", 844755477)
  methodbind.ptrcall(self, [getPtr index], String)

proc clearSpawnableScenes*(self: MultiplayerSpawner): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerSpawner, "clear_spawnable_scenes", 3218959716)
  methodbind.ptrcall(self, [], void)

proc spawn*(self: MultiplayerSpawner; data: Variant = default(Variant)): Node =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerSpawner, "spawn", 1991184589)
  methodbind.ptrcall(self, [getPtr data], Node)

proc getSpawnPath*(self: MultiplayerSpawner): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerSpawner, "get_spawn_path", 4075236667)
  methodbind.ptrcall(self, [], NodePath)

proc setSpawnPath*(self: MultiplayerSpawner; path: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerSpawner, "set_spawn_path", 1348162250)
  methodbind.ptrcall(self, [getPtr path], void)

proc getSpawnLimit*(self: MultiplayerSpawner): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerSpawner, "get_spawn_limit", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setSpawnLimit*(self: MultiplayerSpawner; limit: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerSpawner, "set_spawn_limit", 1286410249)
  methodbind.ptrcall(self, [getPtr limit], void)

proc getSpawnFunction*(self: MultiplayerSpawner): Callable =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerSpawner, "get_spawn_function", 1307783378)
  methodbind.ptrcall(self, [], Callable)

proc setSpawnFunction*(self: MultiplayerSpawner; spawnFunction: Callable): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerSpawner, "set_spawn_function", 1611583062)
  methodbind.ptrcall(self, [getPtr spawnFunction], void)

template spawnPath*(self: MultiplayerSpawner): untyped = self.getSpawnPath()
template `spawnPath=`*(self: MultiplayerSpawner; value) = self.setSpawnPath(value)

template spawnLimit*(self: MultiplayerSpawner): untyped = self.getSpawnLimit()
template `spawnLimit=`*(self: MultiplayerSpawner; value) = self.setSpawnLimit(value)

template spawnFunction*(self: MultiplayerSpawner): untyped = self.getSpawnFunction()
template `spawnFunction=`*(self: MultiplayerSpawner; value) = self.setSpawnFunction(value)
