{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdanimationrootnode; export gdanimationrootnode

proc addNode*(self: AnimationNodeBlendTree; name: StringName; node: gdref AnimationNode; position: Vector2 = vector2(0, 0)): void =
  expandMethodBind(className AnimationNodeBlendTree, "add_node", 1980270704)
  methodbind.ptrcall(self, [getPtr name, getPtr node, getPtr position])

proc getNode*(self: AnimationNodeBlendTree; name: StringName): gdref AnimationNode =
  expandMethodBind(className AnimationNodeBlendTree, "get_node", 625644256)
  var ret: encoded gdref AnimationNode
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(gdref AnimationNode)

proc removeNode*(self: AnimationNodeBlendTree; name: StringName): void =
  expandMethodBind(className AnimationNodeBlendTree, "remove_node", 3304788590)
  methodbind.ptrcall(self, [getPtr name])

proc renameNode*(self: AnimationNodeBlendTree; name: StringName; newName: StringName): void =
  expandMethodBind(className AnimationNodeBlendTree, "rename_node", 3740211285)
  methodbind.ptrcall(self, [getPtr name, getPtr newName])

proc hasNode*(self: AnimationNodeBlendTree; name: StringName): bool =
  expandMethodBind(className AnimationNodeBlendTree, "has_node", 2619796661)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(bool)

proc connectNode*(self: AnimationNodeBlendTree; inputNode: StringName; inputIndex: int32; outputNode: StringName): void =
  expandMethodBind(className AnimationNodeBlendTree, "connect_node", 2168001410)
  methodbind.ptrcall(self, [getPtr inputNode, getPtr inputIndex, getPtr outputNode])

proc disconnectNode*(self: AnimationNodeBlendTree; inputNode: StringName; inputIndex: int32): void =
  expandMethodBind(className AnimationNodeBlendTree, "disconnect_node", 2415702435)
  methodbind.ptrcall(self, [getPtr inputNode, getPtr inputIndex])

proc setNodePosition*(self: AnimationNodeBlendTree; name: StringName; position: Vector2): void =
  expandMethodBind(className AnimationNodeBlendTree, "set_node_position", 1999414630)
  methodbind.ptrcall(self, [getPtr name, getPtr position])

proc getNodePosition*(self: AnimationNodeBlendTree; name: StringName): Vector2 =
  expandMethodBind(className AnimationNodeBlendTree, "get_node_position", 3100822709)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(Vector2)

proc setGraphOffset*(self: AnimationNodeBlendTree; offset: Vector2): void =
  expandMethodBind(className AnimationNodeBlendTree, "set_graph_offset", 743155724)
  methodbind.ptrcall(self, [getPtr offset])

proc getGraphOffset*(self: AnimationNodeBlendTree): Vector2 =
  expandMethodBind(className AnimationNodeBlendTree, "get_graph_offset", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

template graphOffset*(self: AnimationNodeBlendTree): untyped = self.getGraphOffset()
template `graphOffset=`*(self: AnimationNodeBlendTree; value) = self.setGraphOffset(value)

const AnimationNodeBlendTree_vmap =
  AnimationRootNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AnimationNodeBlendTree]): Table[string, string] = AnimationNodeBlendTree_vmap

proc nodeChanged*(self: AnimationNodeBlendTree; nodeName: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("node_changed")
  let args = [nodeName]
  self.emitSignal(signalname, args)