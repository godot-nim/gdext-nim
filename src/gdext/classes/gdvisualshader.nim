{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdshader; export gdshader

expandOnClassImported(VisualShader, Shader)

const NodeIdInvalid* = -1
const NodeIdOutput* = 0

proc setMode*(self: VisualShader; mode: Shader_Mode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShader, "set_mode", 3978014962)
  methodbind.ptrcall(self, [getPtr mode], void)

proc addNode*(self: VisualShader; `type`: VisualShader_Type; node: gdref VisualShaderNode; position: Vector2; id: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShader, "add_node", 1560769431)
  methodbind.ptrcall(self, [getPtr `type`, getPtr node, getPtr position, getPtr id], void)

proc getNode*(self: VisualShader; `type`: VisualShader_Type; id: int32): gdref VisualShaderNode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShader, "get_node", 3784670312)
  methodbind.ptrcall(self, [getPtr `type`, getPtr id], gdref VisualShaderNode)

proc setNodePosition*(self: VisualShader; `type`: VisualShader_Type; id: int32; position: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShader, "set_node_position", 2726660721)
  methodbind.ptrcall(self, [getPtr `type`, getPtr id, getPtr position], void)

proc getNodePosition*(self: VisualShader; `type`: VisualShader_Type; id: int32): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShader, "get_node_position", 2175036082)
  methodbind.ptrcall(self, [getPtr `type`, getPtr id], Vector2)

proc getNodeList*(self: VisualShader; `type`: VisualShader_Type): PackedInt32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShader, "get_node_list", 2370592410)
  methodbind.ptrcall(self, [getPtr `type`], PackedInt32Array)

proc getValidNodeId*(self: VisualShader; `type`: VisualShader_Type): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShader, "get_valid_node_id", 629467342)
  methodbind.ptrcall(self, [getPtr `type`], int32)

proc removeNode*(self: VisualShader; `type`: VisualShader_Type; id: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShader, "remove_node", 844050912)
  methodbind.ptrcall(self, [getPtr `type`, getPtr id], void)

proc replaceNode*(self: VisualShader; `type`: VisualShader_Type; id: int32; newClass: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShader, "replace_node", 3144735253)
  methodbind.ptrcall(self, [getPtr `type`, getPtr id, getPtr newClass], void)

proc isNodeConnection*(self: VisualShader; `type`: VisualShader_Type; fromNode: int32; fromPort: int32; toNode: int32; toPort: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShader, "is_node_connection", 3922381898)
  methodbind.ptrcall(self, [getPtr `type`, getPtr fromNode, getPtr fromPort, getPtr toNode, getPtr toPort], bool)

proc canConnectNodes*(self: VisualShader; `type`: VisualShader_Type; fromNode: int32; fromPort: int32; toNode: int32; toPort: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShader, "can_connect_nodes", 3922381898)
  methodbind.ptrcall(self, [getPtr `type`, getPtr fromNode, getPtr fromPort, getPtr toNode, getPtr toPort], bool)

proc connectNodes*(self: VisualShader; `type`: VisualShader_Type; fromNode: int32; fromPort: int32; toNode: int32; toPort: int32): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShader, "connect_nodes", 3081049573)
  methodbind.ptrcall(self, [getPtr `type`, getPtr fromNode, getPtr fromPort, getPtr toNode, getPtr toPort], Error)

proc disconnectNodes*(self: VisualShader; `type`: VisualShader_Type; fromNode: int32; fromPort: int32; toNode: int32; toPort: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShader, "disconnect_nodes", 2268060358)
  methodbind.ptrcall(self, [getPtr `type`, getPtr fromNode, getPtr fromPort, getPtr toNode, getPtr toPort], void)

proc connectNodesForced*(self: VisualShader; `type`: VisualShader_Type; fromNode: int32; fromPort: int32; toNode: int32; toPort: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShader, "connect_nodes_forced", 2268060358)
  methodbind.ptrcall(self, [getPtr `type`, getPtr fromNode, getPtr fromPort, getPtr toNode, getPtr toPort], void)

proc getNodeConnections*(self: VisualShader; `type`: VisualShader_Type): TypedArray[Dictionary] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShader, "get_node_connections", 1441964831)
  methodbind.ptrcall(self, [getPtr `type`], TypedArray[Dictionary])

proc attachNodeToFrame*(self: VisualShader; `type`: VisualShader_Type; id: int32; frame: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShader, "attach_node_to_frame", 2479945279)
  methodbind.ptrcall(self, [getPtr `type`, getPtr id, getPtr frame], void)

proc detachNodeFromFrame*(self: VisualShader; `type`: VisualShader_Type; id: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShader, "detach_node_from_frame", 844050912)
  methodbind.ptrcall(self, [getPtr `type`, getPtr id], void)

proc addVarying*(self: VisualShader; name: String; mode: VisualShader_VaryingMode; `type`: VisualShader_VaryingType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShader, "add_varying", 2084110726)
  methodbind.ptrcall(self, [getPtr name, getPtr mode, getPtr `type`], void)

proc removeVarying*(self: VisualShader; name: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShader, "remove_varying", 83702148)
  methodbind.ptrcall(self, [getPtr name], void)

proc hasVarying*(self: VisualShader; name: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShader, "has_varying", 3927539163)
  methodbind.ptrcall(self, [getPtr name], bool)

proc setGraphOffset*(self: VisualShader; offset: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShader, "set_graph_offset", 743155724)
  methodbind.ptrcall(self, [getPtr offset], void)

proc getGraphOffset*(self: VisualShader): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShader, "get_graph_offset", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

template graphOffset*(self: VisualShader): untyped = self.getGraphOffset()
template `graphOffset=`*(self: VisualShader; value) = self.setGraphOffset(value)
