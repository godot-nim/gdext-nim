{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(SceneState, RefCounted)

proc getPath*(self: SceneState): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneState, "get_path", 201670096)
  methodbind.ptrcall(self, [], String)

proc getBaseSceneState*(self: SceneState): gdref SceneState =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneState, "get_base_scene_state", 3479783971)
  methodbind.ptrcall(self, [], gdref SceneState)

proc getNodeCount*(self: SceneState): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneState, "get_node_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getNodeType*(self: SceneState; idx: int32): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneState, "get_node_type", 659327637)
  methodbind.ptrcall(self, [getPtr idx], StringName)

proc getNodeName*(self: SceneState; idx: int32): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneState, "get_node_name", 659327637)
  methodbind.ptrcall(self, [getPtr idx], StringName)

proc getNodePath*(self: SceneState; idx: int32; forParent: bool = false): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneState, "get_node_path", 2272487792)
  methodbind.ptrcall(self, [getPtr idx, getPtr forParent], NodePath)

proc getNodeOwnerPath*(self: SceneState; idx: int32): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneState, "get_node_owner_path", 408788394)
  methodbind.ptrcall(self, [getPtr idx], NodePath)

proc isNodeInstancePlaceholder*(self: SceneState; idx: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneState, "is_node_instance_placeholder", 1116898809)
  methodbind.ptrcall(self, [getPtr idx], bool)

proc getNodeInstancePlaceholder*(self: SceneState; idx: int32): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneState, "get_node_instance_placeholder", 844755477)
  methodbind.ptrcall(self, [getPtr idx], String)

proc getNodeInstance*(self: SceneState; idx: int32): gdref PackedScene =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneState, "get_node_instance", 511017218)
  methodbind.ptrcall(self, [getPtr idx], gdref PackedScene)

proc getNodeGroups*(self: SceneState; idx: int32): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneState, "get_node_groups", 647634434)
  methodbind.ptrcall(self, [getPtr idx], PackedStringArray)

proc getNodeIndex*(self: SceneState; idx: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneState, "get_node_index", 923996154)
  methodbind.ptrcall(self, [getPtr idx], int32)

proc getNodePropertyCount*(self: SceneState; idx: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneState, "get_node_property_count", 923996154)
  methodbind.ptrcall(self, [getPtr idx], int32)

proc getNodePropertyName*(self: SceneState; idx: int32; propIdx: int32): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneState, "get_node_property_name", 351665558)
  methodbind.ptrcall(self, [getPtr idx, getPtr propIdx], StringName)

proc getNodePropertyValue*(self: SceneState; idx: int32; propIdx: int32): Variant =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneState, "get_node_property_value", 678354945)
  methodbind.ptrcall(self, [getPtr idx, getPtr propIdx], Variant)

proc getConnectionCount*(self: SceneState): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneState, "get_connection_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getConnectionSource*(self: SceneState; idx: int32): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneState, "get_connection_source", 408788394)
  methodbind.ptrcall(self, [getPtr idx], NodePath)

proc getConnectionSignal*(self: SceneState; idx: int32): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneState, "get_connection_signal", 659327637)
  methodbind.ptrcall(self, [getPtr idx], StringName)

proc getConnectionTarget*(self: SceneState; idx: int32): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneState, "get_connection_target", 408788394)
  methodbind.ptrcall(self, [getPtr idx], NodePath)

proc getConnectionMethod*(self: SceneState; idx: int32): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneState, "get_connection_method", 659327637)
  methodbind.ptrcall(self, [getPtr idx], StringName)

proc getConnectionFlags*(self: SceneState; idx: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneState, "get_connection_flags", 923996154)
  methodbind.ptrcall(self, [getPtr idx], int32)

proc getConnectionBinds*(self: SceneState; idx: int32): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneState, "get_connection_binds", 663333327)
  methodbind.ptrcall(self, [getPtr idx], Array)

proc getConnectionUnbinds*(self: SceneState; idx: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SceneState, "get_connection_unbinds", 923996154)
  methodbind.ptrcall(self, [getPtr idx], int32)
