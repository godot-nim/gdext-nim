{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdanimationrootnode; export gdanimationrootnode

proc addNode*(self: AnimationNodeBlendTree; name: StringName; node: gdref AnimationNode; position: Vector2 = vector2(0, 0)): void =
  expandMethodBind(className AnimationNodeBlendTree, "add_node", 1980270704)
  var `?param` = [getPtr name, getPtr node, getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc getNode*(self: AnimationNodeBlendTree; name: StringName): gdref AnimationNode =
  expandMethodBind(className AnimationNodeBlendTree, "get_node", 625644256)
  var `?param` = [getPtr name]
  var ret: encoded gdref AnimationNode
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref AnimationNode)

proc removeNode*(self: AnimationNodeBlendTree; name: StringName): void =
  expandMethodBind(className AnimationNodeBlendTree, "remove_node", 3304788590)
  var `?param` = [getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc renameNode*(self: AnimationNodeBlendTree; name: StringName; newName: StringName): void =
  expandMethodBind(className AnimationNodeBlendTree, "rename_node", 3740211285)
  var `?param` = [getPtr name, getPtr newName]
  methodbind.ptrcall(self, addr `?param`[0])

proc hasNode*(self: AnimationNodeBlendTree; name: StringName): bool =
  expandMethodBind(className AnimationNodeBlendTree, "has_node", 2619796661)
  var `?param` = [getPtr name]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc connectNode*(self: AnimationNodeBlendTree; inputNode: StringName; inputIndex: int32; outputNode: StringName): void =
  expandMethodBind(className AnimationNodeBlendTree, "connect_node", 2168001410)
  var `?param` = [getPtr inputNode, getPtr inputIndex, getPtr outputNode]
  methodbind.ptrcall(self, addr `?param`[0])

proc disconnectNode*(self: AnimationNodeBlendTree; inputNode: StringName; inputIndex: int32): void =
  expandMethodBind(className AnimationNodeBlendTree, "disconnect_node", 2415702435)
  var `?param` = [getPtr inputNode, getPtr inputIndex]
  methodbind.ptrcall(self, addr `?param`[0])

proc setNodePosition*(self: AnimationNodeBlendTree; name: StringName; position: Vector2): void =
  expandMethodBind(className AnimationNodeBlendTree, "set_node_position", 1999414630)
  var `?param` = [getPtr name, getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc getNodePosition*(self: AnimationNodeBlendTree; name: StringName): Vector2 =
  expandMethodBind(className AnimationNodeBlendTree, "get_node_position", 3100822709)
  var `?param` = [getPtr name]
  var ret: encoded Vector2
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2)

proc setGraphOffset*(self: AnimationNodeBlendTree; offset: Vector2): void =
  expandMethodBind(className AnimationNodeBlendTree, "set_graph_offset", 743155724)
  var `?param` = [getPtr offset]
  methodbind.ptrcall(self, addr `?param`[0])

proc getGraphOffset*(self: AnimationNodeBlendTree): Vector2 =
  expandMethodBind(className AnimationNodeBlendTree, "get_graph_offset", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
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