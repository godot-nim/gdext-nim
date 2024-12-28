{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdshader; export gdshader

proc setMode*(self: VisualShader; mode: Shader_Mode): void =
  expandMethodBind(className VisualShader, "set_mode", 3978014962)
  methodbind.ptrcall(self, [getPtr mode])

proc addNode*(self: VisualShader; `type`: VisualShader_Type; node: gdref VisualShaderNode; position: Vector2; id: int32): void =
  expandMethodBind(className VisualShader, "add_node", 1560769431)
  methodbind.ptrcall(self, [getPtr `type`, getPtr node, getPtr position, getPtr id])

proc getNode*(self: VisualShader; `type`: VisualShader_Type; id: int32): gdref VisualShaderNode =
  expandMethodBind(className VisualShader, "get_node", 3784670312)
  var ret: encoded gdref VisualShaderNode
  methodbind.ptrcall(self, [getPtr `type`, getPtr id], addr ret)
  (addr ret).decode_result(gdref VisualShaderNode)

proc setNodePosition*(self: VisualShader; `type`: VisualShader_Type; id: int32; position: Vector2): void =
  expandMethodBind(className VisualShader, "set_node_position", 2726660721)
  methodbind.ptrcall(self, [getPtr `type`, getPtr id, getPtr position])

proc getNodePosition*(self: VisualShader; `type`: VisualShader_Type; id: int32): Vector2 =
  expandMethodBind(className VisualShader, "get_node_position", 2175036082)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr `type`, getPtr id], addr ret)
  (addr ret).decode_result(Vector2)

proc getNodeList*(self: VisualShader; `type`: VisualShader_Type): PackedInt32Array =
  expandMethodBind(className VisualShader, "get_node_list", 2370592410)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, [getPtr `type`], addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc getValidNodeId*(self: VisualShader; `type`: VisualShader_Type): int32 =
  expandMethodBind(className VisualShader, "get_valid_node_id", 629467342)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr `type`], addr ret)
  (addr ret).decode_result(int32)

proc removeNode*(self: VisualShader; `type`: VisualShader_Type; id: int32): void =
  expandMethodBind(className VisualShader, "remove_node", 844050912)
  methodbind.ptrcall(self, [getPtr `type`, getPtr id])

proc replaceNode*(self: VisualShader; `type`: VisualShader_Type; id: int32; newClass: StringName): void =
  expandMethodBind(className VisualShader, "replace_node", 3144735253)
  methodbind.ptrcall(self, [getPtr `type`, getPtr id, getPtr newClass])

proc isNodeConnection*(self: VisualShader; `type`: VisualShader_Type; fromNode: int32; fromPort: int32; toNode: int32; toPort: int32): bool =
  expandMethodBind(className VisualShader, "is_node_connection", 3922381898)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr `type`, getPtr fromNode, getPtr fromPort, getPtr toNode, getPtr toPort], addr ret)
  (addr ret).decode_result(bool)

proc canConnectNodes*(self: VisualShader; `type`: VisualShader_Type; fromNode: int32; fromPort: int32; toNode: int32; toPort: int32): bool =
  expandMethodBind(className VisualShader, "can_connect_nodes", 3922381898)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr `type`, getPtr fromNode, getPtr fromPort, getPtr toNode, getPtr toPort], addr ret)
  (addr ret).decode_result(bool)

proc connectNodes*(self: VisualShader; `type`: VisualShader_Type; fromNode: int32; fromPort: int32; toNode: int32; toPort: int32): Error =
  expandMethodBind(className VisualShader, "connect_nodes", 3081049573)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr `type`, getPtr fromNode, getPtr fromPort, getPtr toNode, getPtr toPort], addr ret)
  (addr ret).decode_result(Error)

proc disconnectNodes*(self: VisualShader; `type`: VisualShader_Type; fromNode: int32; fromPort: int32; toNode: int32; toPort: int32): void =
  expandMethodBind(className VisualShader, "disconnect_nodes", 2268060358)
  methodbind.ptrcall(self, [getPtr `type`, getPtr fromNode, getPtr fromPort, getPtr toNode, getPtr toPort])

proc connectNodesForced*(self: VisualShader; `type`: VisualShader_Type; fromNode: int32; fromPort: int32; toNode: int32; toPort: int32): void =
  expandMethodBind(className VisualShader, "connect_nodes_forced", 2268060358)
  methodbind.ptrcall(self, [getPtr `type`, getPtr fromNode, getPtr fromPort, getPtr toNode, getPtr toPort])

proc getNodeConnections*(self: VisualShader; `type`: VisualShader_Type): TypedArray[Dictionary] =
  expandMethodBind(className VisualShader, "get_node_connections", 1441964831)
  var ret: encoded TypedArray[Dictionary]
  methodbind.ptrcall(self, [getPtr `type`], addr ret)
  (addr ret).decode_result(TypedArray[Dictionary])

proc setGraphOffset*(self: VisualShader; offset: Vector2): void =
  expandMethodBind(className VisualShader, "set_graph_offset", 743155724)
  methodbind.ptrcall(self, [getPtr offset])

proc getGraphOffset*(self: VisualShader): Vector2 =
  expandMethodBind(className VisualShader, "get_graph_offset", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc attachNodeToFrame*(self: VisualShader; `type`: VisualShader_Type; id: int32; frame: int32): void =
  expandMethodBind(className VisualShader, "attach_node_to_frame", 2479945279)
  methodbind.ptrcall(self, [getPtr `type`, getPtr id, getPtr frame])

proc detachNodeFromFrame*(self: VisualShader; `type`: VisualShader_Type; id: int32): void =
  expandMethodBind(className VisualShader, "detach_node_from_frame", 844050912)
  methodbind.ptrcall(self, [getPtr `type`, getPtr id])

proc addVarying*(self: VisualShader; name: String; mode: VisualShader_VaryingMode; `type`: VisualShader_VaryingType): void =
  expandMethodBind(className VisualShader, "add_varying", 2084110726)
  methodbind.ptrcall(self, [getPtr name, getPtr mode, getPtr `type`])

proc removeVarying*(self: VisualShader; name: String): void =
  expandMethodBind(className VisualShader, "remove_varying", 83702148)
  methodbind.ptrcall(self, [getPtr name])

proc hasVarying*(self: VisualShader; name: String): bool =
  expandMethodBind(className VisualShader, "has_varying", 3927539163)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(bool)

template graphOffset*(self: VisualShader): untyped = self.getGraphOffset()
template `graphOffset=`*(self: VisualShader; value) = self.setGraphOffset(value)

const VisualShader_vmap =
  Shader.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShader]): Table[string, string] = VisualShader_vmap