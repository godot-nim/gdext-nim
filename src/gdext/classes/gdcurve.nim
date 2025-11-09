{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(Curve, Resource)

proc getPointCount*(self: Curve): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve, "get_point_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setPointCount*(self: Curve; count: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve, "set_point_count", 1286410249)
  methodbind.ptrcall(self, [getPtr count], void)

proc addPoint*(self: Curve; position: Vector2; leftTangent: Float = 0; rightTangent: Float = 0; leftMode: Curve_TangentMode = tangentFree; rightMode: Curve_TangentMode = tangentFree): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve, "add_point", 434072736)
  methodbind.ptrcall(self, [getPtr position, getPtr leftTangent, getPtr rightTangent, getPtr leftMode, getPtr rightMode], int32)

proc removePoint*(self: Curve; index: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve, "remove_point", 1286410249)
  methodbind.ptrcall(self, [getPtr index], void)

proc clearPoints*(self: Curve): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve, "clear_points", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getPointPosition*(self: Curve; index: int32): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve, "get_point_position", 2299179447)
  methodbind.ptrcall(self, [getPtr index], Vector2)

proc setPointValue*(self: Curve; index: int32; y: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve, "set_point_value", 1602489585)
  methodbind.ptrcall(self, [getPtr index, getPtr y], void)

proc setPointOffset*(self: Curve; index: int32; offset: Float): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve, "set_point_offset", 3780573764)
  methodbind.ptrcall(self, [getPtr index, getPtr offset], int32)

proc sample*(self: Curve; offset: Float): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve, "sample", 3919130443)
  methodbind.ptrcall(self, [getPtr offset], Float)

proc sampleBaked*(self: Curve; offset: Float): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve, "sample_baked", 3919130443)
  methodbind.ptrcall(self, [getPtr offset], Float)

proc getPointLeftTangent*(self: Curve; index: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve, "get_point_left_tangent", 2339986948)
  methodbind.ptrcall(self, [getPtr index], Float)

proc getPointRightTangent*(self: Curve; index: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve, "get_point_right_tangent", 2339986948)
  methodbind.ptrcall(self, [getPtr index], Float)

proc getPointLeftMode*(self: Curve; index: int32): Curve_TangentMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve, "get_point_left_mode", 426950354)
  methodbind.ptrcall(self, [getPtr index], Curve_TangentMode)

proc getPointRightMode*(self: Curve; index: int32): Curve_TangentMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve, "get_point_right_mode", 426950354)
  methodbind.ptrcall(self, [getPtr index], Curve_TangentMode)

proc setPointLeftTangent*(self: Curve; index: int32; tangent: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve, "set_point_left_tangent", 1602489585)
  methodbind.ptrcall(self, [getPtr index, getPtr tangent], void)

proc setPointRightTangent*(self: Curve; index: int32; tangent: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve, "set_point_right_tangent", 1602489585)
  methodbind.ptrcall(self, [getPtr index, getPtr tangent], void)

proc setPointLeftMode*(self: Curve; index: int32; mode: Curve_TangentMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve, "set_point_left_mode", 1217242874)
  methodbind.ptrcall(self, [getPtr index, getPtr mode], void)

proc setPointRightMode*(self: Curve; index: int32; mode: Curve_TangentMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve, "set_point_right_mode", 1217242874)
  methodbind.ptrcall(self, [getPtr index, getPtr mode], void)

proc getMinValue*(self: Curve): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve, "get_min_value", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setMinValue*(self: Curve; min: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve, "set_min_value", 373806689)
  methodbind.ptrcall(self, [getPtr min], void)

proc getMaxValue*(self: Curve): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve, "get_max_value", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setMaxValue*(self: Curve; max: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve, "set_max_value", 373806689)
  methodbind.ptrcall(self, [getPtr max], void)

proc getValueRange*(self: Curve): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve, "get_value_range", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getMinDomain*(self: Curve): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve, "get_min_domain", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setMinDomain*(self: Curve; min: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve, "set_min_domain", 373806689)
  methodbind.ptrcall(self, [getPtr min], void)

proc getMaxDomain*(self: Curve): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve, "get_max_domain", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setMaxDomain*(self: Curve; max: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve, "set_max_domain", 373806689)
  methodbind.ptrcall(self, [getPtr max], void)

proc getDomainRange*(self: Curve): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve, "get_domain_range", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc cleanDupes*(self: Curve): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve, "clean_dupes", 3218959716)
  methodbind.ptrcall(self, [], void)

proc bake*(self: Curve): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve, "bake", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getBakeResolution*(self: Curve): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve, "get_bake_resolution", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setBakeResolution*(self: Curve; resolution: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Curve, "set_bake_resolution", 1286410249)
  methodbind.ptrcall(self, [getPtr resolution], void)

template minDomain*(self: Curve): untyped = self.getMinDomain()
template `minDomain=`*(self: Curve; value) = self.setMinDomain(value)

template maxDomain*(self: Curve): untyped = self.getMaxDomain()
template `maxDomain=`*(self: Curve; value) = self.setMaxDomain(value)

template minValue*(self: Curve): untyped = self.getMinValue()
template `minValue=`*(self: Curve; value) = self.setMinValue(value)

template maxValue*(self: Curve): untyped = self.getMaxValue()
template `maxValue=`*(self: Curve; value) = self.setMaxValue(value)

template bakeResolution*(self: Curve): untyped = self.getBakeResolution()
template `bakeResolution=`*(self: Curve; value) = self.setBakeResolution(value)

template pointCount*(self: Curve): untyped = self.getPointCount()
template `pointCount=`*(self: Curve; value) = self.setPointCount(value)
