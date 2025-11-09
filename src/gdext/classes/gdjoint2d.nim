{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

expandOnClassImported(Joint2D, Node2D)

proc setNodeA*(self: Joint2D; node: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Joint2D, "set_node_a", 1348162250)
  methodbind.ptrcall(self, [getPtr node], void)

proc getNodeA*(self: Joint2D): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Joint2D, "get_node_a", 4075236667)
  methodbind.ptrcall(self, [], NodePath)

proc setNodeB*(self: Joint2D; node: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Joint2D, "set_node_b", 1348162250)
  methodbind.ptrcall(self, [getPtr node], void)

proc getNodeB*(self: Joint2D): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Joint2D, "get_node_b", 4075236667)
  methodbind.ptrcall(self, [], NodePath)

proc setBias*(self: Joint2D; bias: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Joint2D, "set_bias", 373806689)
  methodbind.ptrcall(self, [getPtr bias], void)

proc getBias*(self: Joint2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Joint2D, "get_bias", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setExcludeNodesFromCollision*(self: Joint2D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Joint2D, "set_exclude_nodes_from_collision", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc getExcludeNodesFromCollision*(self: Joint2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Joint2D, "get_exclude_nodes_from_collision", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getRid*(self: Joint2D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Joint2D, "get_rid", 2944877500)
  methodbind.ptrcall(self, [], RID)

template nodeA*(self: Joint2D): untyped = self.getNodeA()
template `nodeA=`*(self: Joint2D; value) = self.setNodeA(value)

template nodeB*(self: Joint2D): untyped = self.getNodeB()
template `nodeB=`*(self: Joint2D; value) = self.setNodeB(value)

template bias*(self: Joint2D): untyped = self.getBias()
template `bias=`*(self: Joint2D; value) = self.setBias(value)

template disableCollision*(self: Joint2D): untyped = self.getExcludeNodesFromCollision()
template `disableCollision=`*(self: Joint2D; value) = self.setExcludeNodesFromCollision(value)
