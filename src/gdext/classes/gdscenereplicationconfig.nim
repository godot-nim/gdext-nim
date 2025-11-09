{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(SceneReplicationConfig, Resource)

proc getProperties*(self: SceneReplicationConfig): TypedArray[NodePath] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneReplicationConfig, "get_properties", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[NodePath])

proc addProperty*(self: SceneReplicationConfig; path: NodePath; index: int32 = -1): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneReplicationConfig, "add_property", 4094619021)
  methodbind.ptrcall(self, [getPtr path, getPtr index], void)

proc hasProperty*(self: SceneReplicationConfig; path: NodePath): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneReplicationConfig, "has_property", 861721659)
  methodbind.ptrcall(self, [getPtr path], bool)

proc removeProperty*(self: SceneReplicationConfig; path: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneReplicationConfig, "remove_property", 1348162250)
  methodbind.ptrcall(self, [getPtr path], void)

proc propertyGetIndex*(self: SceneReplicationConfig; path: NodePath): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneReplicationConfig, "property_get_index", 1382022557)
  methodbind.ptrcall(self, [getPtr path], int32)

proc propertyGetSpawn*(self: SceneReplicationConfig; path: NodePath): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneReplicationConfig, "property_get_spawn", 3456846888)
  methodbind.ptrcall(self, [getPtr path], bool)

proc propertySetSpawn*(self: SceneReplicationConfig; path: NodePath; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneReplicationConfig, "property_set_spawn", 3868023870)
  methodbind.ptrcall(self, [getPtr path, getPtr enabled], void)

proc propertyGetReplicationMode*(self: SceneReplicationConfig; path: NodePath): SceneReplicationConfig_ReplicationMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneReplicationConfig, "property_get_replication_mode", 2870606336)
  methodbind.ptrcall(self, [getPtr path], SceneReplicationConfig_ReplicationMode)

proc propertySetReplicationMode*(self: SceneReplicationConfig; path: NodePath; mode: SceneReplicationConfig_ReplicationMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneReplicationConfig, "property_set_replication_mode", 3200083865)
  methodbind.ptrcall(self, [getPtr path, getPtr mode], void)

proc propertyGetSync*(self: SceneReplicationConfig; path: NodePath): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneReplicationConfig, "property_get_sync", 3456846888)
  methodbind.ptrcall(self, [getPtr path], bool)

proc propertySetSync*(self: SceneReplicationConfig; path: NodePath; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneReplicationConfig, "property_set_sync", 3868023870)
  methodbind.ptrcall(self, [getPtr path, getPtr enabled], void)

proc propertyGetWatch*(self: SceneReplicationConfig; path: NodePath): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneReplicationConfig, "property_get_watch", 3456846888)
  methodbind.ptrcall(self, [getPtr path], bool)

proc propertySetWatch*(self: SceneReplicationConfig; path: NodePath; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneReplicationConfig, "property_set_watch", 3868023870)
  methodbind.ptrcall(self, [getPtr path, getPtr enabled], void)
