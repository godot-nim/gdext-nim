{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdprimitivemesh; export gdprimitivemesh

expandOnClassImported(SphereMesh, PrimitiveMesh)

proc setRadius*(self: SphereMesh; radius: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SphereMesh, "set_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius], void)

proc getRadius*(self: SphereMesh): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SphereMesh, "get_radius", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setHeight*(self: SphereMesh; height: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SphereMesh, "set_height", 373806689)
  methodbind.ptrcall(self, [getPtr height], void)

proc getHeight*(self: SphereMesh): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SphereMesh, "get_height", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setRadialSegments*(self: SphereMesh; radialSegments: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SphereMesh, "set_radial_segments", 1286410249)
  methodbind.ptrcall(self, [getPtr radialSegments], void)

proc getRadialSegments*(self: SphereMesh): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SphereMesh, "get_radial_segments", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setRings*(self: SphereMesh; rings: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SphereMesh, "set_rings", 1286410249)
  methodbind.ptrcall(self, [getPtr rings], void)

proc getRings*(self: SphereMesh): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SphereMesh, "get_rings", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setIsHemisphere*(self: SphereMesh; isHemisphere: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SphereMesh, "set_is_hemisphere", 2586408642)
  methodbind.ptrcall(self, [getPtr isHemisphere], void)

proc getIsHemisphere*(self: SphereMesh): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className SphereMesh, "get_is_hemisphere", 36873697)
  methodbind.ptrcall(self, [], bool)

template radius*(self: SphereMesh): untyped = self.getRadius()
template `radius=`*(self: SphereMesh; value) = self.setRadius(value)

template height*(self: SphereMesh): untyped = self.getHeight()
template `height=`*(self: SphereMesh; value) = self.setHeight(value)

template radialSegments*(self: SphereMesh): untyped = self.getRadialSegments()
template `radialSegments=`*(self: SphereMesh; value) = self.setRadialSegments(value)

template rings*(self: SphereMesh): untyped = self.getRings()
template `rings=`*(self: SphereMesh; value) = self.setRings(value)

template isHemisphere*(self: SphereMesh): untyped = self.getIsHemisphere()
template `isHemisphere=`*(self: SphereMesh; value) = self.setIsHemisphere(value)
