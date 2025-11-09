{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(Curve3D, Resource)

proc getPointCount*(self: Curve3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve3D, "get_point_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setPointCount*(self: Curve3D; count: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve3D, "set_point_count", 1286410249)
  methodbind.ptrcall(self, [getPtr count], void)

proc addPoint*(self: Curve3D; position: Vector3; `in`: Vector3 = vector3(0, 0, 0); `out`: Vector3 = vector3(0, 0, 0); index: int32 = -1): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve3D, "add_point", 2931053748)
  methodbind.ptrcall(self, [getPtr position, getPtr `in`, getPtr `out`, getPtr index], void)

proc setPointPosition*(self: Curve3D; idx: int32; position: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve3D, "set_point_position", 1530502735)
  methodbind.ptrcall(self, [getPtr idx, getPtr position], void)

proc getPointPosition*(self: Curve3D; idx: int32): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve3D, "get_point_position", 711720468)
  methodbind.ptrcall(self, [getPtr idx], Vector3)

proc setPointTilt*(self: Curve3D; idx: int32; tilt: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve3D, "set_point_tilt", 1602489585)
  methodbind.ptrcall(self, [getPtr idx, getPtr tilt], void)

proc getPointTilt*(self: Curve3D; idx: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve3D, "get_point_tilt", 2339986948)
  methodbind.ptrcall(self, [getPtr idx], Float)

proc setPointIn*(self: Curve3D; idx: int32; position: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve3D, "set_point_in", 1530502735)
  methodbind.ptrcall(self, [getPtr idx, getPtr position], void)

proc getPointIn*(self: Curve3D; idx: int32): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve3D, "get_point_in", 711720468)
  methodbind.ptrcall(self, [getPtr idx], Vector3)

proc setPointOut*(self: Curve3D; idx: int32; position: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve3D, "set_point_out", 1530502735)
  methodbind.ptrcall(self, [getPtr idx, getPtr position], void)

proc getPointOut*(self: Curve3D; idx: int32): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve3D, "get_point_out", 711720468)
  methodbind.ptrcall(self, [getPtr idx], Vector3)

proc removePoint*(self: Curve3D; idx: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve3D, "remove_point", 1286410249)
  methodbind.ptrcall(self, [getPtr idx], void)

proc clearPoints*(self: Curve3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve3D, "clear_points", 3218959716)
  methodbind.ptrcall(self, [], void)

proc sample*(self: Curve3D; idx: int32; t: Float): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve3D, "sample", 3285246857)
  methodbind.ptrcall(self, [getPtr idx, getPtr t], Vector3)

proc samplef*(self: Curve3D; fofs: Float): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve3D, "samplef", 2553580215)
  methodbind.ptrcall(self, [getPtr fofs], Vector3)

proc setClosed*(self: Curve3D; closed: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve3D, "set_closed", 2586408642)
  methodbind.ptrcall(self, [getPtr closed], void)

proc isClosed*(self: Curve3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve3D, "is_closed", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setBakeInterval*(self: Curve3D; distance: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve3D, "set_bake_interval", 373806689)
  methodbind.ptrcall(self, [getPtr distance], void)

proc getBakeInterval*(self: Curve3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve3D, "get_bake_interval", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setUpVectorEnabled*(self: Curve3D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve3D, "set_up_vector_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isUpVectorEnabled*(self: Curve3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve3D, "is_up_vector_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getBakedLength*(self: Curve3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve3D, "get_baked_length", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc sampleBaked*(self: Curve3D; offset: Float = 0.0; cubic: bool = false): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve3D, "sample_baked", 1350085894)
  methodbind.ptrcall(self, [getPtr offset, getPtr cubic], Vector3)

proc sampleBakedWithRotation*(self: Curve3D; offset: Float = 0.0; cubic: bool = false; applyTilt: bool = false): Transform3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve3D, "sample_baked_with_rotation", 1939359131)
  methodbind.ptrcall(self, [getPtr offset, getPtr cubic, getPtr applyTilt], Transform3D)

proc sampleBakedUpVector*(self: Curve3D; offset: Float; applyTilt: bool = false): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve3D, "sample_baked_up_vector", 1362627031)
  methodbind.ptrcall(self, [getPtr offset, getPtr applyTilt], Vector3)

proc getBakedPoints*(self: Curve3D): PackedVector3Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve3D, "get_baked_points", 497664490)
  methodbind.ptrcall(self, [], PackedVector3Array)

proc getBakedTilts*(self: Curve3D): PackedFloat32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve3D, "get_baked_tilts", 675695659)
  methodbind.ptrcall(self, [], PackedFloat32Array)

proc getBakedUpVectors*(self: Curve3D): PackedVector3Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve3D, "get_baked_up_vectors", 497664490)
  methodbind.ptrcall(self, [], PackedVector3Array)

proc getClosestPoint*(self: Curve3D; toPoint: Vector3): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve3D, "get_closest_point", 192990374)
  methodbind.ptrcall(self, [getPtr toPoint], Vector3)

proc getClosestOffset*(self: Curve3D; toPoint: Vector3): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve3D, "get_closest_offset", 1109078154)
  methodbind.ptrcall(self, [getPtr toPoint], Float)

proc tessellate*(self: Curve3D; maxStages: int32 = 5; toleranceDegrees: Float = 4): PackedVector3Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve3D, "tessellate", 1519759391)
  methodbind.ptrcall(self, [getPtr maxStages, getPtr toleranceDegrees], PackedVector3Array)

proc tessellateEvenLength*(self: Curve3D; maxStages: int32 = 5; toleranceLength: Float = 0.2): PackedVector3Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve3D, "tessellate_even_length", 133237049)
  methodbind.ptrcall(self, [getPtr maxStages, getPtr toleranceLength], PackedVector3Array)

template closed*(self: Curve3D): untyped = self.isClosed()
template `closed=`*(self: Curve3D; value) = self.setClosed(value)

template bakeInterval*(self: Curve3D): untyped = self.getBakeInterval()
template `bakeInterval=`*(self: Curve3D; value) = self.setBakeInterval(value)

template pointCount*(self: Curve3D): untyped = self.getPointCount()
template `pointCount=`*(self: Curve3D; value) = self.setPointCount(value)

template upVectorEnabled*(self: Curve3D): untyped = self.isUpVectorEnabled()
template `upVectorEnabled=`*(self: Curve3D; value) = self.setUpVectorEnabled(value)
