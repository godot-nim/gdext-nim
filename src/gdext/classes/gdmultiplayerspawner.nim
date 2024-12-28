{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode; export gdnode

proc addSpawnableScene*(self: MultiplayerSpawner; path: String): void =
  expandMethodBind(className MultiplayerSpawner, "add_spawnable_scene", 83702148)
  methodbind.ptrcall(self, [getPtr path])

proc getSpawnableSceneCount*(self: MultiplayerSpawner): int32 =
  expandMethodBind(className MultiplayerSpawner, "get_spawnable_scene_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getSpawnableScene*(self: MultiplayerSpawner; index: int32): String =
  expandMethodBind(className MultiplayerSpawner, "get_spawnable_scene", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(String)

proc clearSpawnableScenes*(self: MultiplayerSpawner): void =
  expandMethodBind(className MultiplayerSpawner, "clear_spawnable_scenes", 3218959716)
  methodbind.ptrcall(self, [])

proc spawn*(self: MultiplayerSpawner; data: Variant = default(Variant)): Node =
  expandMethodBind(className MultiplayerSpawner, "spawn", 1991184589)
  var ret: encoded Node
  methodbind.ptrcall(self, [getPtr data], addr ret)
  (addr ret).decode_result(Node)

proc getSpawnPath*(self: MultiplayerSpawner): NodePath =
  expandMethodBind(className MultiplayerSpawner, "get_spawn_path", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(NodePath)

proc setSpawnPath*(self: MultiplayerSpawner; path: NodePath): void =
  expandMethodBind(className MultiplayerSpawner, "set_spawn_path", 1348162250)
  methodbind.ptrcall(self, [getPtr path])

proc getSpawnLimit*(self: MultiplayerSpawner): uint32 =
  expandMethodBind(className MultiplayerSpawner, "get_spawn_limit", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint32)

proc setSpawnLimit*(self: MultiplayerSpawner; limit: uint32): void =
  expandMethodBind(className MultiplayerSpawner, "set_spawn_limit", 1286410249)
  methodbind.ptrcall(self, [getPtr limit])

proc getSpawnFunction*(self: MultiplayerSpawner): Callable =
  expandMethodBind(className MultiplayerSpawner, "get_spawn_function", 1307783378)
  var ret: encoded Callable
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Callable)

proc setSpawnFunction*(self: MultiplayerSpawner; spawnFunction: Callable): void =
  expandMethodBind(className MultiplayerSpawner, "set_spawn_function", 1611583062)
  methodbind.ptrcall(self, [getPtr spawnFunction])

template spawnPath*(self: MultiplayerSpawner): untyped = self.getSpawnPath()
template `spawnPath=`*(self: MultiplayerSpawner; value) = self.setSpawnPath(value)

template spawnLimit*(self: MultiplayerSpawner): untyped = self.getSpawnLimit()
template `spawnLimit=`*(self: MultiplayerSpawner; value) = self.setSpawnLimit(value)

template spawnFunction*(self: MultiplayerSpawner): untyped = self.getSpawnFunction()
template `spawnFunction=`*(self: MultiplayerSpawner; value) = self.setSpawnFunction(value)

const MultiplayerSpawner_vmap =
  Node.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[MultiplayerSpawner]): Table[string, string] = MultiplayerSpawner_vmap

proc despawned*(self: MultiplayerSpawner; node: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("despawned")
  let args = [node]
  self.emitSignal(signalname, args)

proc spawned*(self: MultiplayerSpawner; node: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("spawned")
  let args = [node]
  self.emitSignal(signalname, args)