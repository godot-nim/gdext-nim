{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(Curve2D, Resource)

proc getPointCount*(self: Curve2D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve2D, "get_point_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setPointCount*(self: Curve2D; count: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve2D, "set_point_count", 1286410249)
  methodbind.ptrcall(self, [getPtr count], void)

proc addPoint*(self: Curve2D; position: Vector2; `in`: Vector2 = vector2(0, 0); `out`: Vector2 = vector2(0, 0); index: int32 = -1): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve2D, "add_point", 4175465202)
  methodbind.ptrcall(self, [getPtr position, getPtr `in`, getPtr `out`, getPtr index], void)

proc setPointPosition*(self: Curve2D; idx: int32; position: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve2D, "set_point_position", 163021252)
  methodbind.ptrcall(self, [getPtr idx, getPtr position], void)

proc getPointPosition*(self: Curve2D; idx: int32): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve2D, "get_point_position", 2299179447)
  methodbind.ptrcall(self, [getPtr idx], Vector2)

proc setPointIn*(self: Curve2D; idx: int32; position: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve2D, "set_point_in", 163021252)
  methodbind.ptrcall(self, [getPtr idx, getPtr position], void)

proc getPointIn*(self: Curve2D; idx: int32): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve2D, "get_point_in", 2299179447)
  methodbind.ptrcall(self, [getPtr idx], Vector2)

proc setPointOut*(self: Curve2D; idx: int32; position: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve2D, "set_point_out", 163021252)
  methodbind.ptrcall(self, [getPtr idx, getPtr position], void)

proc getPointOut*(self: Curve2D; idx: int32): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve2D, "get_point_out", 2299179447)
  methodbind.ptrcall(self, [getPtr idx], Vector2)

proc removePoint*(self: Curve2D; idx: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve2D, "remove_point", 1286410249)
  methodbind.ptrcall(self, [getPtr idx], void)

proc clearPoints*(self: Curve2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve2D, "clear_points", 3218959716)
  methodbind.ptrcall(self, [], void)

proc sample*(self: Curve2D; idx: int32; t: Float): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve2D, "sample", 26514310)
  methodbind.ptrcall(self, [getPtr idx, getPtr t], Vector2)

proc samplef*(self: Curve2D; fofs: Float): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve2D, "samplef", 3588506812)
  methodbind.ptrcall(self, [getPtr fofs], Vector2)

proc setBakeInterval*(self: Curve2D; distance: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve2D, "set_bake_interval", 373806689)
  methodbind.ptrcall(self, [getPtr distance], void)

proc getBakeInterval*(self: Curve2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve2D, "get_bake_interval", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getBakedLength*(self: Curve2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve2D, "get_baked_length", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc sampleBaked*(self: Curve2D; offset: Float = 0.0; cubic: bool = false): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve2D, "sample_baked", 3464257706)
  methodbind.ptrcall(self, [getPtr offset, getPtr cubic], Vector2)

proc sampleBakedWithRotation*(self: Curve2D; offset: Float = 0.0; cubic: bool = false): Transform2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve2D, "sample_baked_with_rotation", 3296056341)
  methodbind.ptrcall(self, [getPtr offset, getPtr cubic], Transform2D)

proc getBakedPoints*(self: Curve2D): PackedVector2Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve2D, "get_baked_points", 2961356807)
  methodbind.ptrcall(self, [], PackedVector2Array)

proc getClosestPoint*(self: Curve2D; toPoint: Vector2): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve2D, "get_closest_point", 2656412154)
  methodbind.ptrcall(self, [getPtr toPoint], Vector2)

proc getClosestOffset*(self: Curve2D; toPoint: Vector2): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve2D, "get_closest_offset", 2276447920)
  methodbind.ptrcall(self, [getPtr toPoint], Float)

proc tessellate*(self: Curve2D; maxStages: int32 = 5; toleranceDegrees: Float = 4): PackedVector2Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve2D, "tessellate", 958145977)
  methodbind.ptrcall(self, [getPtr maxStages, getPtr toleranceDegrees], PackedVector2Array)

proc tessellateEvenLength*(self: Curve2D; maxStages: int32 = 5; toleranceLength: Float = 20.0): PackedVector2Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve2D, "tessellate_even_length", 2319761637)
  methodbind.ptrcall(self, [getPtr maxStages, getPtr toleranceLength], PackedVector2Array)

template bakeInterval*(self: Curve2D): untyped = self.getBakeInterval()
template `bakeInterval=`*(self: Curve2D; value) = self.setBakeInterval(value)

template pointCount*(self: Curve2D): untyped = self.getPointCount()
template `pointCount=`*(self: Curve2D; value) = self.setPointCount(value)
