{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdnode; export gdnode

proc setRootPath*(self: MultiplayerSynchronizer; path: NodePath): void =
  expandMethodBind(className MultiplayerSynchronizer, "set_root_path", 1348162250)
  var `?param` = [getPtr path]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRootPath*(self: MultiplayerSynchronizer): NodePath =
  expandMethodBind(className MultiplayerSynchronizer, "get_root_path", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(NodePath)

proc setReplicationInterval*(self: MultiplayerSynchronizer; milliseconds: float64): void =
  expandMethodBind(className MultiplayerSynchronizer, "set_replication_interval", 373806689)
  var `?param` = [getPtr milliseconds]
  methodbind.ptrcall(self, addr `?param`[0])

proc getReplicationInterval*(self: MultiplayerSynchronizer): float64 =
  expandMethodBind(className MultiplayerSynchronizer, "get_replication_interval", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc setDeltaInterval*(self: MultiplayerSynchronizer; milliseconds: float64): void =
  expandMethodBind(className MultiplayerSynchronizer, "set_delta_interval", 373806689)
  var `?param` = [getPtr milliseconds]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDeltaInterval*(self: MultiplayerSynchronizer): float64 =
  expandMethodBind(className MultiplayerSynchronizer, "get_delta_interval", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc setReplicationConfig*(self: MultiplayerSynchronizer; config: gdref SceneReplicationConfig): void =
  expandMethodBind(className MultiplayerSynchronizer, "set_replication_config", 3889206742)
  var `?param` = [getPtr config]
  methodbind.ptrcall(self, addr `?param`[0])

proc getReplicationConfig*(self: MultiplayerSynchronizer): gdref SceneReplicationConfig =
  expandMethodBind(className MultiplayerSynchronizer, "get_replication_config", 3200254614)
  var ret: encoded gdref SceneReplicationConfig
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref SceneReplicationConfig)

proc setVisibilityUpdateMode*(self: MultiplayerSynchronizer; mode: MultiplayerSynchronizer_VisibilityUpdateMode): void =
  expandMethodBind(className MultiplayerSynchronizer, "set_visibility_update_mode", 3494860300)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getVisibilityUpdateMode*(self: MultiplayerSynchronizer): MultiplayerSynchronizer_VisibilityUpdateMode =
  expandMethodBind(className MultiplayerSynchronizer, "get_visibility_update_mode", 3352241418)
  var ret: encoded MultiplayerSynchronizer_VisibilityUpdateMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(MultiplayerSynchronizer_VisibilityUpdateMode)

proc updateVisibility*(self: MultiplayerSynchronizer; forPeer: int32 = 0): void =
  expandMethodBind(className MultiplayerSynchronizer, "update_visibility", 1995695955)
  var `?param` = [getPtr forPeer]
  methodbind.ptrcall(self, addr `?param`[0])

proc setVisibilityPublic*(self: MultiplayerSynchronizer; visible: bool): void =
  expandMethodBind(className MultiplayerSynchronizer, "set_visibility_public", 2586408642)
  var `?param` = [getPtr visible]
  methodbind.ptrcall(self, addr `?param`[0])

proc isVisibilityPublic*(self: MultiplayerSynchronizer): bool =
  expandMethodBind(className MultiplayerSynchronizer, "is_visibility_public", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc addVisibilityFilter*(self: MultiplayerSynchronizer; filter: Callable): void =
  expandMethodBind(className MultiplayerSynchronizer, "add_visibility_filter", 1611583062)
  var `?param` = [getPtr filter]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeVisibilityFilter*(self: MultiplayerSynchronizer; filter: Callable): void =
  expandMethodBind(className MultiplayerSynchronizer, "remove_visibility_filter", 1611583062)
  var `?param` = [getPtr filter]
  methodbind.ptrcall(self, addr `?param`[0])

proc setVisibilityFor*(self: MultiplayerSynchronizer; peer: int32; visible: bool): void =
  expandMethodBind(className MultiplayerSynchronizer, "set_visibility_for", 300928843)
  var `?param` = [getPtr peer, getPtr visible]
  methodbind.ptrcall(self, addr `?param`[0])

proc getVisibilityFor*(self: MultiplayerSynchronizer; peer: int32): bool =
  expandMethodBind(className MultiplayerSynchronizer, "get_visibility_for", 1116898809)
  var `?param` = [getPtr peer]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

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

const MultiplayerSynchronizer_vmap =
  Node.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[MultiplayerSynchronizer]): Table[string, string] = MultiplayerSynchronizer_vmap

proc synchronized*(self: MultiplayerSynchronizer): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("synchronized")
  self.emitSignal(signalname)

proc deltaSynchronized*(self: MultiplayerSynchronizer): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("delta_synchronized")
  self.emitSignal(signalname)

proc visibilityChanged*(self: MultiplayerSynchronizer; forPeer: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("visibility_changed")
  let args = [forPeer]
  self.emitSignal(signalname, args)