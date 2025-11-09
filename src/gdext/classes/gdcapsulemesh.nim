{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdprimitivemesh; export gdprimitivemesh

expandOnClassImported(CapsuleMesh, PrimitiveMesh)

proc setRadius*(self: CapsuleMesh; radius: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CapsuleMesh, "set_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius], void)

proc getRadius*(self: CapsuleMesh): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CapsuleMesh, "get_radius", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setHeight*(self: CapsuleMesh; height: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CapsuleMesh, "set_height", 373806689)
  methodbind.ptrcall(self, [getPtr height], void)

proc getHeight*(self: CapsuleMesh): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CapsuleMesh, "get_height", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setRadialSegments*(self: CapsuleMesh; segments: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CapsuleMesh, "set_radial_segments", 1286410249)
  methodbind.ptrcall(self, [getPtr segments], void)

proc getRadialSegments*(self: CapsuleMesh): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CapsuleMesh, "get_radial_segments", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setRings*(self: CapsuleMesh; rings: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CapsuleMesh, "set_rings", 1286410249)
  methodbind.ptrcall(self, [getPtr rings], void)

proc getRings*(self: CapsuleMesh): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CapsuleMesh, "get_rings", 3905245786)
  methodbind.ptrcall(self, [], int32)

template radius*(self: CapsuleMesh): untyped = self.getRadius()
template `radius=`*(self: CapsuleMesh; value) = self.setRadius(value)

template height*(self: CapsuleMesh): untyped = self.getHeight()
template `height=`*(self: CapsuleMesh; value) = self.setHeight(value)

template radialSegments*(self: CapsuleMesh): untyped = self.getRadialSegments()
template `radialSegments=`*(self: CapsuleMesh; value) = self.setRadialSegments(value)

template rings*(self: CapsuleMesh): untyped = self.getRings()
template `rings=`*(self: CapsuleMesh; value) = self.setRings(value)
