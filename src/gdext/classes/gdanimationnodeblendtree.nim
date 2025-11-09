{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdanimationrootnode; export gdanimationrootnode

expandOnClassImported(AnimationNodeBlendTree, AnimationRootNode)

const ConnectionOk* = 0
const ConnectionErrorNoInput* = 1
const ConnectionErrorNoInputIndex* = 2
const ConnectionErrorNoOutput* = 3
const ConnectionErrorSameNode* = 4
const ConnectionErrorConnectionExists* = 5

proc addNode*(self: AnimationNodeBlendTree; name: StringName; node: gdref AnimationNode; position: Vector2 = vector2(0, 0)): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeBlendTree, "add_node", 1980270704)
  methodbind.ptrcall(self, [getPtr name, getPtr node, getPtr position], void)

proc getNode*(self: AnimationNodeBlendTree; name: StringName): gdref AnimationNode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeBlendTree, "get_node", 625644256)
  methodbind.ptrcall(self, [getPtr name], gdref AnimationNode)

proc removeNode*(self: AnimationNodeBlendTree; name: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeBlendTree, "remove_node", 3304788590)
  methodbind.ptrcall(self, [getPtr name], void)

proc renameNode*(self: AnimationNodeBlendTree; name: StringName; newName: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeBlendTree, "rename_node", 3740211285)
  methodbind.ptrcall(self, [getPtr name, getPtr newName], void)

proc hasNode*(self: AnimationNodeBlendTree; name: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeBlendTree, "has_node", 2619796661)
  methodbind.ptrcall(self, [getPtr name], bool)

proc connectNode*(self: AnimationNodeBlendTree; inputNode: StringName; inputIndex: int32; outputNode: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeBlendTree, "connect_node", 2168001410)
  methodbind.ptrcall(self, [getPtr inputNode, getPtr inputIndex, getPtr outputNode], void)

proc disconnectNode*(self: AnimationNodeBlendTree; inputNode: StringName; inputIndex: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeBlendTree, "disconnect_node", 2415702435)
  methodbind.ptrcall(self, [getPtr inputNode, getPtr inputIndex], void)

proc getNodeList*(self: AnimationNodeBlendTree): TypedArray[StringName] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeBlendTree, "get_node_list", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[StringName])

proc setNodePosition*(self: AnimationNodeBlendTree; name: StringName; position: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeBlendTree, "set_node_position", 1999414630)
  methodbind.ptrcall(self, [getPtr name, getPtr position], void)

proc getNodePosition*(self: AnimationNodeBlendTree; name: StringName): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeBlendTree, "get_node_position", 3100822709)
  methodbind.ptrcall(self, [getPtr name], Vector2)

proc setGraphOffset*(self: AnimationNodeBlendTree; offset: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeBlendTree, "set_graph_offset", 743155724)
  methodbind.ptrcall(self, [getPtr offset], void)

proc getGraphOffset*(self: AnimationNodeBlendTree): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationNodeBlendTree, "get_graph_offset", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

template graphOffset*(self: AnimationNodeBlendTree): untyped = self.getGraphOffset()
template `graphOffset=`*(self: AnimationNodeBlendTree; value) = self.setGraphOffset(value)
