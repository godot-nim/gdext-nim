{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdshader; export gdshader

proc setMode*(self: VisualShader; mode: Shader_Mode): void =
  expandMethodBind(className VisualShader, "set_mode", 3978014962)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc addNode*(self: VisualShader; `type`: VisualShader_Type; node: gdref VisualShaderNode; position: Vector2; id: int32): void =
  expandMethodBind(className VisualShader, "add_node", 1560769431)
  var `?param` = [getPtr `type`, getPtr node, getPtr position, getPtr id]
  methodbind.ptrcall(self, addr `?param`[0])

proc getNode*(self: VisualShader; `type`: VisualShader_Type; id: int32): gdref VisualShaderNode =
  expandMethodBind(className VisualShader, "get_node", 3784670312)
  var `?param` = [getPtr `type`, getPtr id]
  var ret: encoded gdref VisualShaderNode
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref VisualShaderNode)

proc setNodePosition*(self: VisualShader; `type`: VisualShader_Type; id: int32; position: Vector2): void =
  expandMethodBind(className VisualShader, "set_node_position", 2726660721)
  var `?param` = [getPtr `type`, getPtr id, getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc getNodePosition*(self: VisualShader; `type`: VisualShader_Type; id: int32): Vector2 =
  expandMethodBind(className VisualShader, "get_node_position", 2175036082)
  var `?param` = [getPtr `type`, getPtr id]
  var ret: encoded Vector2
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2)

proc getNodeList*(self: VisualShader; `type`: VisualShader_Type): PackedInt32Array =
  expandMethodBind(className VisualShader, "get_node_list", 2370592410)
  var `?param` = [getPtr `type`]
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc getValidNodeId*(self: VisualShader; `type`: VisualShader_Type): int32 =
  expandMethodBind(className VisualShader, "get_valid_node_id", 629467342)
  var `?param` = [getPtr `type`]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc removeNode*(self: VisualShader; `type`: VisualShader_Type; id: int32): void =
  expandMethodBind(className VisualShader, "remove_node", 844050912)
  var `?param` = [getPtr `type`, getPtr id]
  methodbind.ptrcall(self, addr `?param`[0])

proc replaceNode*(self: VisualShader; `type`: VisualShader_Type; id: int32; newClass: StringName): void =
  expandMethodBind(className VisualShader, "replace_node", 3144735253)
  var `?param` = [getPtr `type`, getPtr id, getPtr newClass]
  methodbind.ptrcall(self, addr `?param`[0])

proc isNodeConnection*(self: VisualShader; `type`: VisualShader_Type; fromNode: int32; fromPort: int32; toNode: int32; toPort: int32): bool =
  expandMethodBind(className VisualShader, "is_node_connection", 3922381898)
  var `?param` = [getPtr `type`, getPtr fromNode, getPtr fromPort, getPtr toNode, getPtr toPort]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc canConnectNodes*(self: VisualShader; `type`: VisualShader_Type; fromNode: int32; fromPort: int32; toNode: int32; toPort: int32): bool =
  expandMethodBind(className VisualShader, "can_connect_nodes", 3922381898)
  var `?param` = [getPtr `type`, getPtr fromNode, getPtr fromPort, getPtr toNode, getPtr toPort]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc connectNodes*(self: VisualShader; `type`: VisualShader_Type; fromNode: int32; fromPort: int32; toNode: int32; toPort: int32): Error =
  expandMethodBind(className VisualShader, "connect_nodes", 3081049573)
  var `?param` = [getPtr `type`, getPtr fromNode, getPtr fromPort, getPtr toNode, getPtr toPort]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc disconnectNodes*(self: VisualShader; `type`: VisualShader_Type; fromNode: int32; fromPort: int32; toNode: int32; toPort: int32): void =
  expandMethodBind(className VisualShader, "disconnect_nodes", 2268060358)
  var `?param` = [getPtr `type`, getPtr fromNode, getPtr fromPort, getPtr toNode, getPtr toPort]
  methodbind.ptrcall(self, addr `?param`[0])

proc connectNodesForced*(self: VisualShader; `type`: VisualShader_Type; fromNode: int32; fromPort: int32; toNode: int32; toPort: int32): void =
  expandMethodBind(className VisualShader, "connect_nodes_forced", 2268060358)
  var `?param` = [getPtr `type`, getPtr fromNode, getPtr fromPort, getPtr toNode, getPtr toPort]
  methodbind.ptrcall(self, addr `?param`[0])

proc getNodeConnections*(self: VisualShader; `type`: VisualShader_Type): TypedArray[Dictionary] =
  expandMethodBind(className VisualShader, "get_node_connections", 1441964831)
  var `?param` = [getPtr `type`]
  var ret: encoded TypedArray[Dictionary]
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TypedArray[Dictionary])

proc setGraphOffset*(self: VisualShader; offset: Vector2): void =
  expandMethodBind(className VisualShader, "set_graph_offset", 743155724)
  var `?param` = [getPtr offset]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGraphOffset*(self: VisualShader): Vector2 =
  expandMethodBind(className VisualShader, "get_graph_offset", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc attachNodeToFrame*(self: VisualShader; `type`: VisualShader_Type; id: int32; frame: int32): void =
  expandMethodBind(className VisualShader, "attach_node_to_frame", 2479945279)
  var `?param` = [getPtr `type`, getPtr id, getPtr frame]
  methodbind.ptrcall(self, addr `?param`[0])

proc detachNodeFromFrame*(self: VisualShader; `type`: VisualShader_Type; id: int32): void =
  expandMethodBind(className VisualShader, "detach_node_from_frame", 844050912)
  var `?param` = [getPtr `type`, getPtr id]
  methodbind.ptrcall(self, addr `?param`[0])

proc addVarying*(self: VisualShader; name: String; mode: VisualShader_VaryingMode; `type`: VisualShader_VaryingType): void =
  expandMethodBind(className VisualShader, "add_varying", 2084110726)
  var `?param` = [getPtr name, getPtr mode, getPtr `type`]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeVarying*(self: VisualShader; name: String): void =
  expandMethodBind(className VisualShader, "remove_varying", 83702148)
  var `?param` = [getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc hasVarying*(self: VisualShader; name: String): bool =
  expandMethodBind(className VisualShader, "has_varying", 3927539163)
  var `?param` = [getPtr name]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

template graphOffset*(self: VisualShader): untyped = self.getGraphOffset()
template `graphOffset=`*(self: VisualShader; value) = self.setGraphOffset(value)

const VisualShader_vmap =
  Shader.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShader]): Table[string, string] = VisualShader_vmap