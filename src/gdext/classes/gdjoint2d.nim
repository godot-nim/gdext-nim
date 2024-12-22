{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

proc setNodeA*(self: Joint2D; node: NodePath): void =
  expandMethodBind(className Joint2D, "set_node_a", 1348162250)
  var `?param` = [getPtr node]
  methodbind.ptrcall(self, addr `?param`[0])

proc getNodeA*(self: Joint2D): NodePath =
  expandMethodBind(className Joint2D, "get_node_a", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(NodePath)

proc setNodeB*(self: Joint2D; node: NodePath): void =
  expandMethodBind(className Joint2D, "set_node_b", 1348162250)
  var `?param` = [getPtr node]
  methodbind.ptrcall(self, addr `?param`[0])

proc getNodeB*(self: Joint2D): NodePath =
  expandMethodBind(className Joint2D, "get_node_b", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(NodePath)

proc setBias*(self: Joint2D; bias: Float): void =
  expandMethodBind(className Joint2D, "set_bias", 373806689)
  var `?param` = [getPtr bias]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBias*(self: Joint2D): Float =
  expandMethodBind(className Joint2D, "get_bias", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setExcludeNodesFromCollision*(self: Joint2D; enable: bool): void =
  expandMethodBind(className Joint2D, "set_exclude_nodes_from_collision", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc getExcludeNodesFromCollision*(self: Joint2D): bool =
  expandMethodBind(className Joint2D, "get_exclude_nodes_from_collision", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getRid*(self: Joint2D): RID =
  expandMethodBind(className Joint2D, "get_rid", 2944877500)
  var ret: encoded RID
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RID)

template nodeA*(self: Joint2D): untyped = self.getNodeA()
template `nodeA=`*(self: Joint2D; value) = self.setNodeA(value)

template nodeB*(self: Joint2D): untyped = self.getNodeB()
template `nodeB=`*(self: Joint2D; value) = self.setNodeB(value)

template bias*(self: Joint2D): untyped = self.getBias()
template `bias=`*(self: Joint2D; value) = self.setBias(value)

template disableCollision*(self: Joint2D): untyped = self.getExcludeNodesFromCollision()
template `disableCollision=`*(self: Joint2D; value) = self.setExcludeNodesFromCollision(value)

const Joint2D_vmap =
  Node2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Joint2D]): Table[string, string] = Joint2D_vmap