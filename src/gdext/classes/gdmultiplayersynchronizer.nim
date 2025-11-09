{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode; export gdnode

expandOnClassImported(MultiplayerSynchronizer, Node)

proc setRootPath*(self: MultiplayerSynchronizer; path: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerSynchronizer, "set_root_path", 1348162250)
  methodbind.ptrcall(self, [getPtr path], void)

proc getRootPath*(self: MultiplayerSynchronizer): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerSynchronizer, "get_root_path", 4075236667)
  methodbind.ptrcall(self, [], NodePath)

proc setReplicationInterval*(self: MultiplayerSynchronizer; milliseconds: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerSynchronizer, "set_replication_interval", 373806689)
  methodbind.ptrcall(self, [getPtr milliseconds], void)

proc getReplicationInterval*(self: MultiplayerSynchronizer): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerSynchronizer, "get_replication_interval", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc setDeltaInterval*(self: MultiplayerSynchronizer; milliseconds: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerSynchronizer, "set_delta_interval", 373806689)
  methodbind.ptrcall(self, [getPtr milliseconds], void)

proc getDeltaInterval*(self: MultiplayerSynchronizer): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerSynchronizer, "get_delta_interval", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc setReplicationConfig*(self: MultiplayerSynchronizer; config: gdref SceneReplicationConfig): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerSynchronizer, "set_replication_config", 3889206742)
  methodbind.ptrcall(self, [getPtr config], void)

proc getReplicationConfig*(self: MultiplayerSynchronizer): gdref SceneReplicationConfig =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerSynchronizer, "get_replication_config", 3200254614)
  methodbind.ptrcall(self, [], gdref SceneReplicationConfig)

proc setVisibilityUpdateMode*(self: MultiplayerSynchronizer; mode: MultiplayerSynchronizer_VisibilityUpdateMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerSynchronizer, "set_visibility_update_mode", 3494860300)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getVisibilityUpdateMode*(self: MultiplayerSynchronizer): MultiplayerSynchronizer_VisibilityUpdateMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerSynchronizer, "get_visibility_update_mode", 3352241418)
  methodbind.ptrcall(self, [], MultiplayerSynchronizer_VisibilityUpdateMode)

proc updateVisibility*(self: MultiplayerSynchronizer; forPeer: int32 = 0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerSynchronizer, "update_visibility", 1995695955)
  methodbind.ptrcall(self, [getPtr forPeer], void)

proc setVisibilityPublic*(self: MultiplayerSynchronizer; visible: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerSynchronizer, "set_visibility_public", 2586408642)
  methodbind.ptrcall(self, [getPtr visible], void)

proc isVisibilityPublic*(self: MultiplayerSynchronizer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerSynchronizer, "is_visibility_public", 36873697)
  methodbind.ptrcall(self, [], bool)

proc addVisibilityFilter*(self: MultiplayerSynchronizer; filter: Callable): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerSynchronizer, "add_visibility_filter", 1611583062)
  methodbind.ptrcall(self, [getPtr filter], void)

proc removeVisibilityFilter*(self: MultiplayerSynchronizer; filter: Callable): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerSynchronizer, "remove_visibility_filter", 1611583062)
  methodbind.ptrcall(self, [getPtr filter], void)

proc setVisibilityFor*(self: MultiplayerSynchronizer; peer: int32; visible: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerSynchronizer, "set_visibility_for", 300928843)
  methodbind.ptrcall(self, [getPtr peer, getPtr visible], void)

proc getVisibilityFor*(self: MultiplayerSynchronizer; peer: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className MultiplayerSynchronizer, "get_visibility_for", 1116898809)
  methodbind.ptrcall(self, [getPtr peer], bool)

template rootPath*(self: MultiplayerSynchronizer): untyped = self.getRootPath()
template `rootPath=`*(self: MultiplayerSynchronizer; value) = self.setRootPath(value)

template replicationInterval*(self: MultiplayerSynchronizer): untyped = self.getReplicationInterval()
template `replicationInterval=`*(self: MultiplayerSynchronizer; value) = self.setReplicationInterval(value)

template deltaInterval*(self: MultiplayerSynchronizer): untyped = self.getDeltaInterval()
template `deltaInterval=`*(self: MultiplayerSynchronizer; value) = self.setDeltaInterval(value)

template replicationConfig*(self: MultiplayerSynchronizer): untyped = self.getReplicationConfig()
template `replicationConfig=`*(self: MultiplayerSynchronizer; value) = self.setReplicationConfig(value)

template visibilityUpdateMode*(self: MultiplayerSynchronizer): untyped = self.getVisibilityUpdateMode()
template `visibilityUpdateMode=`*(self: MultiplayerSynchronizer; value) = self.setVisibilityUpdateMode(value)

template publicVisibility*(self: MultiplayerSynchronizer): untyped = self.isVisibilityPublic()
template `publicVisibility=`*(self: MultiplayerSynchronizer; value) = self.setVisibilityPublic(value)
