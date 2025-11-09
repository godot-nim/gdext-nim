{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcsgprimitive3d; export gdcsgprimitive3d

expandOnClassImported(CSGCylinder3D, CSGPrimitive3D)

proc setRadius*(self: CSGCylinder3D; radius: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGCylinder3D, "set_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius], void)

proc getRadius*(self: CSGCylinder3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGCylinder3D, "get_radius", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setHeight*(self: CSGCylinder3D; height: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGCylinder3D, "set_height", 373806689)
  methodbind.ptrcall(self, [getPtr height], void)

proc getHeight*(self: CSGCylinder3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGCylinder3D, "get_height", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setSides*(self: CSGCylinder3D; sides: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGCylinder3D, "set_sides", 1286410249)
  methodbind.ptrcall(self, [getPtr sides], void)

proc getSides*(self: CSGCylinder3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGCylinder3D, "get_sides", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setCone*(self: CSGCylinder3D; cone: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGCylinder3D, "set_cone", 2586408642)
  methodbind.ptrcall(self, [getPtr cone], void)

proc isCone*(self: CSGCylinder3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGCylinder3D, "is_cone", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setMaterial*(self: CSGCylinder3D; material: gdref Material): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGCylinder3D, "set_material", 2757459619)
  methodbind.ptrcall(self, [getPtr material], void)

proc getMaterial*(self: CSGCylinder3D): gdref Material =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGCylinder3D, "get_material", 5934680)
  methodbind.ptrcall(self, [], gdref Material)

proc setSmoothFaces*(self: CSGCylinder3D; smoothFaces: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGCylinder3D, "set_smooth_faces", 2586408642)
  methodbind.ptrcall(self, [getPtr smoothFaces], void)

proc getSmoothFaces*(self: CSGCylinder3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGCylinder3D, "get_smooth_faces", 36873697)
  methodbind.ptrcall(self, [], bool)

template radius*(self: CSGCylinder3D): untyped = self.getRadius()
template `radius=`*(self: CSGCylinder3D; value) = self.setRadius(value)

template height*(self: CSGCylinder3D): untyped = self.getHeight()
template `height=`*(self: CSGCylinder3D; value) = self.setHeight(value)

template sides*(self: CSGCylinder3D): untyped = self.getSides()
template `sides=`*(self: CSGCylinder3D; value) = self.setSides(value)

template cone*(self: CSGCylinder3D): untyped = self.isCone()
template `cone=`*(self: CSGCylinder3D; value) = self.setCone(value)

template smoothFaces*(self: CSGCylinder3D): untyped = self.getSmoothFaces()
template `smoothFaces=`*(self: CSGCylinder3D; value) = self.setSmoothFaces(value)

template material*(self: CSGCylinder3D): untyped = self.getMaterial()
template `material=`*(self: CSGCylinder3D; value) = self.setMaterial(value)
