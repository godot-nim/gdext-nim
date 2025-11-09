{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdprimitivemesh; export gdprimitivemesh

expandOnClassImported(TorusMesh, PrimitiveMesh)

proc setInnerRadius*(self: TorusMesh; radius: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TorusMesh, "set_inner_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius], void)

proc getInnerRadius*(self: TorusMesh): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TorusMesh, "get_inner_radius", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setOuterRadius*(self: TorusMesh; radius: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TorusMesh, "set_outer_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius], void)

proc getOuterRadius*(self: TorusMesh): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TorusMesh, "get_outer_radius", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setRings*(self: TorusMesh; rings: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TorusMesh, "set_rings", 1286410249)
  methodbind.ptrcall(self, [getPtr rings], void)

proc getRings*(self: TorusMesh): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TorusMesh, "get_rings", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setRingSegments*(self: TorusMesh; rings: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TorusMesh, "set_ring_segments", 1286410249)
  methodbind.ptrcall(self, [getPtr rings], void)

proc getRingSegments*(self: TorusMesh): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className TorusMesh, "get_ring_segments", 3905245786)
  methodbind.ptrcall(self, [], int32)

template innerRadius*(self: TorusMesh): untyped = self.getInnerRadius()
template `innerRadius=`*(self: TorusMesh; value) = self.setInnerRadius(value)

template outerRadius*(self: TorusMesh): untyped = self.getOuterRadius()
template `outerRadius=`*(self: TorusMesh; value) = self.setOuterRadius(value)

template rings*(self: TorusMesh): untyped = self.getRings()
template `rings=`*(self: TorusMesh; value) = self.setRings(value)

template ringSegments*(self: TorusMesh): untyped = self.getRingSegments()
template `ringSegments=`*(self: TorusMesh; value) = self.setRingSegments(value)
