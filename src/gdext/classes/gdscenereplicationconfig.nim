{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc getProperties*(self: SceneReplicationConfig): TypedArray[NodePath] =
  expandMethodBind(className SceneReplicationConfig, "get_properties", 3995934104)
  var ret: encoded TypedArray[NodePath]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TypedArray[NodePath])

proc addProperty*(self: SceneReplicationConfig; path: NodePath; index: int32 = -1): void =
  expandMethodBind(className SceneReplicationConfig, "add_property", 4094619021)
  methodbind.ptrcall(self, [getPtr path, getPtr index])

proc hasProperty*(self: SceneReplicationConfig; path: NodePath): bool =
  expandMethodBind(className SceneReplicationConfig, "has_property", 861721659)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr path], addr ret)
  (addr ret).decode_result(bool)

proc removeProperty*(self: SceneReplicationConfig; path: NodePath): void =
  expandMethodBind(className SceneReplicationConfig, "remove_property", 1348162250)
  methodbind.ptrcall(self, [getPtr path])

proc propertyGetIndex*(self: SceneReplicationConfig; path: NodePath): int32 =
  expandMethodBind(className SceneReplicationConfig, "property_get_index", 1382022557)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr path], addr ret)
  (addr ret).decode_result(int32)

proc propertyGetSpawn*(self: SceneReplicationConfig; path: NodePath): bool =
  expandMethodBind(className SceneReplicationConfig, "property_get_spawn", 3456846888)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr path], addr ret)
  (addr ret).decode_result(bool)

proc propertySetSpawn*(self: SceneReplicationConfig; path: NodePath; enabled: bool): void =
  expandMethodBind(className SceneReplicationConfig, "property_set_spawn", 3868023870)
  methodbind.ptrcall(self, [getPtr path, getPtr enabled])

proc propertyGetReplicationMode*(self: SceneReplicationConfig; path: NodePath): SceneReplicationConfig_ReplicationMode =
  expandMethodBind(className SceneReplicationConfig, "property_get_replication_mode", 2870606336)
  var ret: encoded SceneReplicationConfig_ReplicationMode
  methodbind.ptrcall(self, [getPtr path], addr ret)
  (addr ret).decode_result(SceneReplicationConfig_ReplicationMode)

proc propertySetReplicationMode*(self: SceneReplicationConfig; path: NodePath; mode: SceneReplicationConfig_ReplicationMode): void =
  expandMethodBind(className SceneReplicationConfig, "property_set_replication_mode", 3200083865)
  methodbind.ptrcall(self, [getPtr path, getPtr mode])

proc propertyGetSync*(self: SceneReplicationConfig; path: NodePath): bool =
  expandMethodBind(className SceneReplicationConfig, "property_get_sync", 3456846888)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr path], addr ret)
  (addr ret).decode_result(bool)

proc propertySetSync*(self: SceneReplicationConfig; path: NodePath; enabled: bool): void =
  expandMethodBind(className SceneReplicationConfig, "property_set_sync", 3868023870)
  methodbind.ptrcall(self, [getPtr path, getPtr enabled])

proc propertyGetWatch*(self: SceneReplicationConfig; path: NodePath): bool =
  expandMethodBind(className SceneReplicationConfig, "property_get_watch", 3456846888)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr path], addr ret)
  (addr ret).decode_result(bool)

proc propertySetWatch*(self: SceneReplicationConfig; path: NodePath; enabled: bool): void =
  expandMethodBind(className SceneReplicationConfig, "property_set_watch", 3868023870)
  methodbind.ptrcall(self, [getPtr path, getPtr enabled])

const SceneReplicationConfig_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[SceneReplicationConfig]): Table[string, string] = SceneReplicationConfig_vmap