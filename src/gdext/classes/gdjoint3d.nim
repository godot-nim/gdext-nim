{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

expandOnClassImported(Joint3D, Node3D)

proc setNodeA*(self: Joint3D; node: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Joint3D, "set_node_a", 1348162250)
  methodbind.ptrcall(self, [getPtr node], void)

proc getNodeA*(self: Joint3D): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Joint3D, "get_node_a", 4075236667)
  methodbind.ptrcall(self, [], NodePath)

proc setNodeB*(self: Joint3D; node: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Joint3D, "set_node_b", 1348162250)
  methodbind.ptrcall(self, [getPtr node], void)

proc getNodeB*(self: Joint3D): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Joint3D, "get_node_b", 4075236667)
  methodbind.ptrcall(self, [], NodePath)

proc setSolverPriority*(self: Joint3D; priority: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Joint3D, "set_solver_priority", 1286410249)
  methodbind.ptrcall(self, [getPtr priority], void)

proc getSolverPriority*(self: Joint3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Joint3D, "get_solver_priority", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setExcludeNodesFromCollision*(self: Joint3D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Joint3D, "set_exclude_nodes_from_collision", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc getExcludeNodesFromCollision*(self: Joint3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Joint3D, "get_exclude_nodes_from_collision", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getRid*(self: Joint3D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Joint3D, "get_rid", 2944877500)
  methodbind.ptrcall(self, [], RID)

template nodeA*(self: Joint3D): untyped = self.getNodeA()
template `nodeA=`*(self: Joint3D; value) = self.setNodeA(value)

template nodeB*(self: Joint3D): untyped = self.getNodeB()
template `nodeB=`*(self: Joint3D; value) = self.setNodeB(value)

template solverPriority*(self: Joint3D): untyped = self.getSolverPriority()
template `solverPriority=`*(self: Joint3D; value) = self.setSolverPriority(value)

template excludeNodesFromCollision*(self: Joint3D): untyped = self.getExcludeNodesFromCollision()
template `excludeNodesFromCollision=`*(self: Joint3D; value) = self.setExcludeNodesFromCollision(value)
