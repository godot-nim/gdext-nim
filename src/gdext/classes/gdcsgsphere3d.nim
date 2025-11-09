{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcsgprimitive3d; export gdcsgprimitive3d

expandOnClassImported(CSGSphere3D, CSGPrimitive3D)

proc setRadius*(self: CSGSphere3D; radius: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGSphere3D, "set_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius], void)

proc getRadius*(self: CSGSphere3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGSphere3D, "get_radius", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setRadialSegments*(self: CSGSphere3D; radialSegments: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGSphere3D, "set_radial_segments", 1286410249)
  methodbind.ptrcall(self, [getPtr radialSegments], void)

proc getRadialSegments*(self: CSGSphere3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGSphere3D, "get_radial_segments", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setRings*(self: CSGSphere3D; rings: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGSphere3D, "set_rings", 1286410249)
  methodbind.ptrcall(self, [getPtr rings], void)

proc getRings*(self: CSGSphere3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGSphere3D, "get_rings", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setSmoothFaces*(self: CSGSphere3D; smoothFaces: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGSphere3D, "set_smooth_faces", 2586408642)
  methodbind.ptrcall(self, [getPtr smoothFaces], void)

proc getSmoothFaces*(self: CSGSphere3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGSphere3D, "get_smooth_faces", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setMaterial*(self: CSGSphere3D; material: gdref Material): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGSphere3D, "set_material", 2757459619)
  methodbind.ptrcall(self, [getPtr material], void)

proc getMaterial*(self: CSGSphere3D): gdref Material =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGSphere3D, "get_material", 5934680)
  methodbind.ptrcall(self, [], gdref Material)

template radius*(self: CSGSphere3D): untyped = self.getRadius()
template `radius=`*(self: CSGSphere3D; value) = self.setRadius(value)

template radialSegments*(self: CSGSphere3D): untyped = self.getRadialSegments()
template `radialSegments=`*(self: CSGSphere3D; value) = self.setRadialSegments(value)

template rings*(self: CSGSphere3D): untyped = self.getRings()
template `rings=`*(self: CSGSphere3D; value) = self.setRings(value)

template smoothFaces*(self: CSGSphere3D): untyped = self.getSmoothFaces()
template `smoothFaces=`*(self: CSGSphere3D; value) = self.setSmoothFaces(value)

template material*(self: CSGSphere3D): untyped = self.getMaterial()
template `material=`*(self: CSGSphere3D; value) = self.setMaterial(value)
