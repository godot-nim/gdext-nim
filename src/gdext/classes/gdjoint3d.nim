{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

proc setNodeA*(self: Joint3D; node: NodePath): void =
  expandMethodBind(className Joint3D, "set_node_a", 1348162250)
  var `?param` = [getPtr node]
  methodbind.ptrcall(self, addr `?param`[0])

proc getNodeA*(self: Joint3D): NodePath =
  expandMethodBind(className Joint3D, "get_node_a", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(NodePath)

proc setNodeB*(self: Joint3D; node: NodePath): void =
  expandMethodBind(className Joint3D, "set_node_b", 1348162250)
  var `?param` = [getPtr node]
  methodbind.ptrcall(self, addr `?param`[0])

proc getNodeB*(self: Joint3D): NodePath =
  expandMethodBind(className Joint3D, "get_node_b", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(NodePath)

proc setSolverPriority*(self: Joint3D; priority: int32): void =
  expandMethodBind(className Joint3D, "set_solver_priority", 1286410249)
  var `?param` = [getPtr priority]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSolverPriority*(self: Joint3D): int32 =
  expandMethodBind(className Joint3D, "get_solver_priority", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setExcludeNodesFromCollision*(self: Joint3D; enable: bool): void =
  expandMethodBind(className Joint3D, "set_exclude_nodes_from_collision", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc getExcludeNodesFromCollision*(self: Joint3D): bool =
  expandMethodBind(className Joint3D, "get_exclude_nodes_from_collision", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getRid*(self: Joint3D): Rid =
  expandMethodBind(className Joint3D, "get_rid", 2944877500)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

template nodeA*(self: Joint3D): untyped = self.getNodeA()
template `nodeA=`*(self: Joint3D; value) = self.setNodeA(value)

template nodeB*(self: Joint3D): untyped = self.getNodeB()
template `nodeB=`*(self: Joint3D; value) = self.setNodeB(value)

template solverPriority*(self: Joint3D): untyped = self.getSolverPriority()
template `solverPriority=`*(self: Joint3D; value) = self.setSolverPriority(value)

template excludeNodesFromCollision*(self: Joint3D): untyped = self.getExcludeNodesFromCollision()
template `excludeNodesFromCollision=`*(self: Joint3D; value) = self.setExcludeNodesFromCollision(value)

const Joint3D_vmap =
  Node3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Joint3D]): Table[string, string] = Joint3D_vmap