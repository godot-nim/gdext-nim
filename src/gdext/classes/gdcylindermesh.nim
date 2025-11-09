{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdprimitivemesh; export gdprimitivemesh

expandOnClassImported(CylinderMesh, PrimitiveMesh)

proc setTopRadius*(self: CylinderMesh; radius: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CylinderMesh, "set_top_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius], void)

proc getTopRadius*(self: CylinderMesh): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CylinderMesh, "get_top_radius", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setBottomRadius*(self: CylinderMesh; radius: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CylinderMesh, "set_bottom_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius], void)

proc getBottomRadius*(self: CylinderMesh): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CylinderMesh, "get_bottom_radius", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setHeight*(self: CylinderMesh; height: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CylinderMesh, "set_height", 373806689)
  methodbind.ptrcall(self, [getPtr height], void)

proc getHeight*(self: CylinderMesh): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CylinderMesh, "get_height", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setRadialSegments*(self: CylinderMesh; segments: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CylinderMesh, "set_radial_segments", 1286410249)
  methodbind.ptrcall(self, [getPtr segments], void)

proc getRadialSegments*(self: CylinderMesh): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CylinderMesh, "get_radial_segments", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setRings*(self: CylinderMesh; rings: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CylinderMesh, "set_rings", 1286410249)
  methodbind.ptrcall(self, [getPtr rings], void)

proc getRings*(self: CylinderMesh): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CylinderMesh, "get_rings", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setCapTop*(self: CylinderMesh; capTop: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CylinderMesh, "set_cap_top", 2586408642)
  methodbind.ptrcall(self, [getPtr capTop], void)

proc isCapTop*(self: CylinderMesh): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CylinderMesh, "is_cap_top", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setCapBottom*(self: CylinderMesh; capBottom: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CylinderMesh, "set_cap_bottom", 2586408642)
  methodbind.ptrcall(self, [getPtr capBottom], void)

proc isCapBottom*(self: CylinderMesh): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CylinderMesh, "is_cap_bottom", 36873697)
  methodbind.ptrcall(self, [], bool)

template topRadius*(self: CylinderMesh): untyped = self.getTopRadius()
template `topRadius=`*(self: CylinderMesh; value) = self.setTopRadius(value)

template bottomRadius*(self: CylinderMesh): untyped = self.getBottomRadius()
template `bottomRadius=`*(self: CylinderMesh; value) = self.setBottomRadius(value)

template height*(self: CylinderMesh): untyped = self.getHeight()
template `height=`*(self: CylinderMesh; value) = self.setHeight(value)

template radialSegments*(self: CylinderMesh): untyped = self.getRadialSegments()
template `radialSegments=`*(self: CylinderMesh; value) = self.setRadialSegments(value)

template rings*(self: CylinderMesh): untyped = self.getRings()
template `rings=`*(self: CylinderMesh; value) = self.setRings(value)

template capTop*(self: CylinderMesh): untyped = self.isCapTop()
template `capTop=`*(self: CylinderMesh; value) = self.setCapTop(value)

template capBottom*(self: CylinderMesh): untyped = self.isCapBottom()
template `capBottom=`*(self: CylinderMesh; value) = self.setCapBottom(value)
