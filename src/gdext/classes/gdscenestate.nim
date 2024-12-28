{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc getNodeCount*(self: SceneState): int32 =
  expandMethodBind(className SceneState, "get_node_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getNodeType*(self: SceneState; idx: int32): StringName =
  expandMethodBind(className SceneState, "get_node_type", 659327637)
  var ret: encoded StringName
  methodbind.ptrcall(self, [getPtr idx], addr ret)
  (addr ret).decode_result(StringName)

proc getNodeName*(self: SceneState; idx: int32): StringName =
  expandMethodBind(className SceneState, "get_node_name", 659327637)
  var ret: encoded StringName
  methodbind.ptrcall(self, [getPtr idx], addr ret)
  (addr ret).decode_result(StringName)

proc getNodePath*(self: SceneState; idx: int32; forParent: bool = false): NodePath =
  expandMethodBind(className SceneState, "get_node_path", 2272487792)
  var ret: encoded NodePath
  methodbind.ptrcall(self, [getPtr idx, getPtr forParent], addr ret)
  (addr ret).decode_result(NodePath)

proc getNodeOwnerPath*(self: SceneState; idx: int32): NodePath =
  expandMethodBind(className SceneState, "get_node_owner_path", 408788394)
  var ret: encoded NodePath
  methodbind.ptrcall(self, [getPtr idx], addr ret)
  (addr ret).decode_result(NodePath)

proc isNodeInstancePlaceholder*(self: SceneState; idx: int32): bool =
  expandMethodBind(className SceneState, "is_node_instance_placeholder", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr idx], addr ret)
  (addr ret).decode_result(bool)

proc getNodeInstancePlaceholder*(self: SceneState; idx: int32): String =
  expandMethodBind(className SceneState, "get_node_instance_placeholder", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr idx], addr ret)
  (addr ret).decode_result(String)

proc getNodeInstance*(self: SceneState; idx: int32): gdref PackedScene =
  expandMethodBind(className SceneState, "get_node_instance", 511017218)
  var ret: encoded gdref PackedScene
  methodbind.ptrcall(self, [getPtr idx], addr ret)
  (addr ret).decode_result(gdref PackedScene)

proc getNodeGroups*(self: SceneState; idx: int32): PackedStringArray =
  expandMethodBind(className SceneState, "get_node_groups", 647634434)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [getPtr idx], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc getNodeIndex*(self: SceneState; idx: int32): int32 =
  expandMethodBind(className SceneState, "get_node_index", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr idx], addr ret)
  (addr ret).decode_result(int32)

proc getNodePropertyCount*(self: SceneState; idx: int32): int32 =
  expandMethodBind(className SceneState, "get_node_property_count", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr idx], addr ret)
  (addr ret).decode_result(int32)

proc getNodePropertyName*(self: SceneState; idx: int32; propIdx: int32): StringName =
  expandMethodBind(className SceneState, "get_node_property_name", 351665558)
  var ret: encoded StringName
  methodbind.ptrcall(self, [getPtr idx, getPtr propIdx], addr ret)
  (addr ret).decode_result(StringName)

proc getNodePropertyValue*(self: SceneState; idx: int32; propIdx: int32): Variant =
  expandMethodBind(className SceneState, "get_node_property_value", 678354945)
  var ret: encoded Variant
  methodbind.ptrcall(self, [getPtr idx, getPtr propIdx], addr ret)
  (addr ret).decode_result(Variant)

proc getConnectionCount*(self: SceneState): int32 =
  expandMethodBind(className SceneState, "get_connection_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getConnectionSource*(self: SceneState; idx: int32): NodePath =
  expandMethodBind(className SceneState, "get_connection_source", 408788394)
  var ret: encoded NodePath
  methodbind.ptrcall(self, [getPtr idx], addr ret)
  (addr ret).decode_result(NodePath)

proc getConnectionSignal*(self: SceneState; idx: int32): StringName =
  expandMethodBind(className SceneState, "get_connection_signal", 659327637)
  var ret: encoded StringName
  methodbind.ptrcall(self, [getPtr idx], addr ret)
  (addr ret).decode_result(StringName)

proc getConnectionTarget*(self: SceneState; idx: int32): NodePath =
  expandMethodBind(className SceneState, "get_connection_target", 408788394)
  var ret: encoded NodePath
  methodbind.ptrcall(self, [getPtr idx], addr ret)
  (addr ret).decode_result(NodePath)

proc getConnectionMethod*(self: SceneState; idx: int32): StringName =
  expandMethodBind(className SceneState, "get_connection_method", 659327637)
  var ret: encoded StringName
  methodbind.ptrcall(self, [getPtr idx], addr ret)
  (addr ret).decode_result(StringName)

proc getConnectionFlags*(self: SceneState; idx: int32): int32 =
  expandMethodBind(className SceneState, "get_connection_flags", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr idx], addr ret)
  (addr ret).decode_result(int32)

proc getConnectionBinds*(self: SceneState; idx: int32): Array =
  expandMethodBind(className SceneState, "get_connection_binds", 663333327)
  var ret: encoded Array
  methodbind.ptrcall(self, [getPtr idx], addr ret)
  (addr ret).decode_result(Array)

proc getConnectionUnbinds*(self: SceneState; idx: int32): int32 =
  expandMethodBind(className SceneState, "get_connection_unbinds", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr idx], addr ret)
  (addr ret).decode_result(int32)

const SceneState_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[SceneState]): Table[string, string] = SceneState_vmap