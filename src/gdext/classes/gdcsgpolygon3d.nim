{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcsgprimitive3d; export gdcsgprimitive3d

expandOnClassImported(CSGPolygon3D, CSGPrimitive3D)

proc setPolygon*(self: CSGPolygon3D; polygon: PackedVector2Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGPolygon3D, "set_polygon", 1509147220)
  methodbind.ptrcall(self, [getPtr polygon], void)

proc getPolygon*(self: CSGPolygon3D): PackedVector2Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGPolygon3D, "get_polygon", 2961356807)
  methodbind.ptrcall(self, [], PackedVector2Array)

proc setMode*(self: CSGPolygon3D; mode: CSGPolygon3D_Mode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGPolygon3D, "set_mode", 3158377035)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getMode*(self: CSGPolygon3D): CSGPolygon3D_Mode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGPolygon3D, "get_mode", 1201612222)
  methodbind.ptrcall(self, [], CSGPolygon3D_Mode)

proc setDepth*(self: CSGPolygon3D; depth: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGPolygon3D, "set_depth", 373806689)
  methodbind.ptrcall(self, [getPtr depth], void)

proc getDepth*(self: CSGPolygon3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGPolygon3D, "get_depth", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setSpinDegrees*(self: CSGPolygon3D; degrees: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGPolygon3D, "set_spin_degrees", 373806689)
  methodbind.ptrcall(self, [getPtr degrees], void)

proc getSpinDegrees*(self: CSGPolygon3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGPolygon3D, "get_spin_degrees", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setSpinSides*(self: CSGPolygon3D; spinSides: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGPolygon3D, "set_spin_sides", 1286410249)
  methodbind.ptrcall(self, [getPtr spinSides], void)

proc getSpinSides*(self: CSGPolygon3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGPolygon3D, "get_spin_sides", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setPathNode*(self: CSGPolygon3D; path: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGPolygon3D, "set_path_node", 1348162250)
  methodbind.ptrcall(self, [getPtr path], void)

proc getPathNode*(self: CSGPolygon3D): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGPolygon3D, "get_path_node", 4075236667)
  methodbind.ptrcall(self, [], NodePath)

proc setPathIntervalType*(self: CSGPolygon3D; intervalType: CSGPolygon3D_PathIntervalType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGPolygon3D, "set_path_interval_type", 3744240707)
  methodbind.ptrcall(self, [getPtr intervalType], void)

proc getPathIntervalType*(self: CSGPolygon3D): CSGPolygon3D_PathIntervalType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGPolygon3D, "get_path_interval_type", 3434618397)
  methodbind.ptrcall(self, [], CSGPolygon3D_PathIntervalType)

proc setPathInterval*(self: CSGPolygon3D; interval: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGPolygon3D, "set_path_interval", 373806689)
  methodbind.ptrcall(self, [getPtr interval], void)

proc getPathInterval*(self: CSGPolygon3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGPolygon3D, "get_path_interval", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setPathSimplifyAngle*(self: CSGPolygon3D; degrees: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGPolygon3D, "set_path_simplify_angle", 373806689)
  methodbind.ptrcall(self, [getPtr degrees], void)

proc getPathSimplifyAngle*(self: CSGPolygon3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGPolygon3D, "get_path_simplify_angle", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setPathRotation*(self: CSGPolygon3D; pathRotation: CSGPolygon3D_PathRotation): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGPolygon3D, "set_path_rotation", 1412947288)
  methodbind.ptrcall(self, [getPtr pathRotation], void)

proc getPathRotation*(self: CSGPolygon3D): CSGPolygon3D_PathRotation =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGPolygon3D, "get_path_rotation", 647219346)
  methodbind.ptrcall(self, [], CSGPolygon3D_PathRotation)

proc setPathRotationAccurate*(self: CSGPolygon3D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGPolygon3D, "set_path_rotation_accurate", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc getPathRotationAccurate*(self: CSGPolygon3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGPolygon3D, "get_path_rotation_accurate", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setPathLocal*(self: CSGPolygon3D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGPolygon3D, "set_path_local", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isPathLocal*(self: CSGPolygon3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGPolygon3D, "is_path_local", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setPathContinuousU*(self: CSGPolygon3D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGPolygon3D, "set_path_continuous_u", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isPathContinuousU*(self: CSGPolygon3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGPolygon3D, "is_path_continuous_u", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setPathUDistance*(self: CSGPolygon3D; distance: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGPolygon3D, "set_path_u_distance", 373806689)
  methodbind.ptrcall(self, [getPtr distance], void)

proc getPathUDistance*(self: CSGPolygon3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGPolygon3D, "get_path_u_distance", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setPathJoined*(self: CSGPolygon3D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGPolygon3D, "set_path_joined", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isPathJoined*(self: CSGPolygon3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGPolygon3D, "is_path_joined", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setMaterial*(self: CSGPolygon3D; material: gdref Material): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGPolygon3D, "set_material", 2757459619)
  methodbind.ptrcall(self, [getPtr material], void)

proc getMaterial*(self: CSGPolygon3D): gdref Material =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGPolygon3D, "get_material", 5934680)
  methodbind.ptrcall(self, [], gdref Material)

proc setSmoothFaces*(self: CSGPolygon3D; smoothFaces: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGPolygon3D, "set_smooth_faces", 2586408642)
  methodbind.ptrcall(self, [getPtr smoothFaces], void)

proc getSmoothFaces*(self: CSGPolygon3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGPolygon3D, "get_smooth_faces", 36873697)
  methodbind.ptrcall(self, [], bool)

template polygon*(self: CSGPolygon3D): untyped = self.getPolygon()
template `polygon=`*(self: CSGPolygon3D; value) = self.setPolygon(value)

template mode*(self: CSGPolygon3D): untyped = self.getMode()
template `mode=`*(self: CSGPolygon3D; value) = self.setMode(value)

template depth*(self: CSGPolygon3D): untyped = self.getDepth()
template `depth=`*(self: CSGPolygon3D; value) = self.setDepth(value)

template spinDegrees*(self: CSGPolygon3D): untyped = self.getSpinDegrees()
template `spinDegrees=`*(self: CSGPolygon3D; value) = self.setSpinDegrees(value)

template spinSides*(self: CSGPolygon3D): untyped = self.getSpinSides()
template `spinSides=`*(self: CSGPolygon3D; value) = self.setSpinSides(value)

template pathNode*(self: CSGPolygon3D): untyped = self.getPathNode()
template `pathNode=`*(self: CSGPolygon3D; value) = self.setPathNode(value)

template pathIntervalType*(self: CSGPolygon3D): untyped = self.getPathIntervalType()
template `pathIntervalType=`*(self: CSGPolygon3D; value) = self.setPathIntervalType(value)

template pathInterval*(self: CSGPolygon3D): untyped = self.getPathInterval()
template `pathInterval=`*(self: CSGPolygon3D; value) = self.setPathInterval(value)

template pathSimplifyAngle*(self: CSGPolygon3D): untyped = self.getPathSimplifyAngle()
template `pathSimplifyAngle=`*(self: CSGPolygon3D; value) = self.setPathSimplifyAngle(value)

template pathRotation*(self: CSGPolygon3D): untyped = self.getPathRotation()
template `pathRotation=`*(self: CSGPolygon3D; value) = self.setPathRotation(value)

template pathRotationAccurate*(self: CSGPolygon3D): untyped = self.getPathRotationAccurate()
template `pathRotationAccurate=`*(self: CSGPolygon3D; value) = self.setPathRotationAccurate(value)

template pathLocal*(self: CSGPolygon3D): untyped = self.isPathLocal()
template `pathLocal=`*(self: CSGPolygon3D; value) = self.setPathLocal(value)

template pathContinuousU*(self: CSGPolygon3D): untyped = self.isPathContinuousU()
template `pathContinuousU=`*(self: CSGPolygon3D; value) = self.setPathContinuousU(value)

template pathUDistance*(self: CSGPolygon3D): untyped = self.getPathUDistance()
template `pathUDistance=`*(self: CSGPolygon3D; value) = self.setPathUDistance(value)

template pathJoined*(self: CSGPolygon3D): untyped = self.isPathJoined()
template `pathJoined=`*(self: CSGPolygon3D; value) = self.setPathJoined(value)

template smoothFaces*(self: CSGPolygon3D): untyped = self.getSmoothFaces()
template `smoothFaces=`*(self: CSGPolygon3D; value) = self.setSmoothFaces(value)

template material*(self: CSGPolygon3D): untyped = self.getMaterial()
template `material=`*(self: CSGPolygon3D; value) = self.setMaterial(value)
