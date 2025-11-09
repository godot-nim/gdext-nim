{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcsgprimitive3d; export gdcsgprimitive3d

expandOnClassImported(CSGTorus3D, CSGPrimitive3D)

proc setInnerRadius*(self: CSGTorus3D; radius: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGTorus3D, "set_inner_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius], void)

proc getInnerRadius*(self: CSGTorus3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGTorus3D, "get_inner_radius", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setOuterRadius*(self: CSGTorus3D; radius: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGTorus3D, "set_outer_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius], void)

proc getOuterRadius*(self: CSGTorus3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGTorus3D, "get_outer_radius", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setSides*(self: CSGTorus3D; sides: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGTorus3D, "set_sides", 1286410249)
  methodbind.ptrcall(self, [getPtr sides], void)

proc getSides*(self: CSGTorus3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGTorus3D, "get_sides", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setRingSides*(self: CSGTorus3D; sides: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGTorus3D, "set_ring_sides", 1286410249)
  methodbind.ptrcall(self, [getPtr sides], void)

proc getRingSides*(self: CSGTorus3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGTorus3D, "get_ring_sides", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setMaterial*(self: CSGTorus3D; material: gdref Material): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGTorus3D, "set_material", 2757459619)
  methodbind.ptrcall(self, [getPtr material], void)

proc getMaterial*(self: CSGTorus3D): gdref Material =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGTorus3D, "get_material", 5934680)
  methodbind.ptrcall(self, [], gdref Material)

proc setSmoothFaces*(self: CSGTorus3D; smoothFaces: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGTorus3D, "set_smooth_faces", 2586408642)
  methodbind.ptrcall(self, [getPtr smoothFaces], void)

proc getSmoothFaces*(self: CSGTorus3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGTorus3D, "get_smooth_faces", 36873697)
  methodbind.ptrcall(self, [], bool)

template innerRadius*(self: CSGTorus3D): untyped = self.getInnerRadius()
template `innerRadius=`*(self: CSGTorus3D; value) = self.setInnerRadius(value)

template outerRadius*(self: CSGTorus3D): untyped = self.getOuterRadius()
template `outerRadius=`*(self: CSGTorus3D; value) = self.setOuterRadius(value)

template sides*(self: CSGTorus3D): untyped = self.getSides()
template `sides=`*(self: CSGTorus3D; value) = self.setSides(value)

template ringSides*(self: CSGTorus3D): untyped = self.getRingSides()
template `ringSides=`*(self: CSGTorus3D; value) = self.setRingSides(value)

template smoothFaces*(self: CSGTorus3D): untyped = self.getSmoothFaces()
template `smoothFaces=`*(self: CSGTorus3D; value) = self.setSmoothFaces(value)

template material*(self: CSGTorus3D): untyped = self.getMaterial()
template `material=`*(self: CSGTorus3D; value) = self.setMaterial(value)
