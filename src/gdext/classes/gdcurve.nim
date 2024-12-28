{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc getPointCount*(self: Curve): int32 =
  expandMethodBind(className Curve, "get_point_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setPointCount*(self: Curve; count: int32): void =
  expandMethodBind(className Curve, "set_point_count", 1286410249)
  methodbind.ptrcall(self, [getPtr count])

proc addPoint*(self: Curve; position: Vector2; leftTangent: Float = 0; rightTangent: Float = 0; leftMode: Curve_TangentMode = tangentFree; rightMode: Curve_TangentMode = tangentFree): int32 =
  expandMethodBind(className Curve, "add_point", 434072736)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr position, getPtr leftTangent, getPtr rightTangent, getPtr leftMode, getPtr rightMode], addr ret)
  (addr ret).decode_result(int32)

proc removePoint*(self: Curve; index: int32): void =
  expandMethodBind(className Curve, "remove_point", 1286410249)
  methodbind.ptrcall(self, [getPtr index])

proc clearPoints*(self: Curve): void =
  expandMethodBind(className Curve, "clear_points", 3218959716)
  methodbind.ptrcall(self, [])

proc getPointPosition*(self: Curve; index: int32): Vector2 =
  expandMethodBind(className Curve, "get_point_position", 2299179447)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(Vector2)

proc setPointValue*(self: Curve; index: int32; y: Float): void =
  expandMethodBind(className Curve, "set_point_value", 1602489585)
  methodbind.ptrcall(self, [getPtr index, getPtr y])

proc setPointOffset*(self: Curve; index: int32; offset: Float): int32 =
  expandMethodBind(className Curve, "set_point_offset", 3780573764)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr index, getPtr offset], addr ret)
  (addr ret).decode_result(int32)

proc sample*(self: Curve; offset: Float): Float =
  expandMethodBind(className Curve, "sample", 3919130443)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr offset], addr ret)
  (addr ret).decode_result(Float)

proc sampleBaked*(self: Curve; offset: Float): Float =
  expandMethodBind(className Curve, "sample_baked", 3919130443)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr offset], addr ret)
  (addr ret).decode_result(Float)

proc getPointLeftTangent*(self: Curve; index: int32): Float =
  expandMethodBind(className Curve, "get_point_left_tangent", 2339986948)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(Float)

proc getPointRightTangent*(self: Curve; index: int32): Float =
  expandMethodBind(className Curve, "get_point_right_tangent", 2339986948)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(Float)

proc getPointLeftMode*(self: Curve; index: int32): Curve_TangentMode =
  expandMethodBind(className Curve, "get_point_left_mode", 426950354)
  var ret: encoded Curve_TangentMode
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(Curve_TangentMode)

proc getPointRightMode*(self: Curve; index: int32): Curve_TangentMode =
  expandMethodBind(className Curve, "get_point_right_mode", 426950354)
  var ret: encoded Curve_TangentMode
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(Curve_TangentMode)

proc setPointLeftTangent*(self: Curve; index: int32; tangent: Float): void =
  expandMethodBind(className Curve, "set_point_left_tangent", 1602489585)
  methodbind.ptrcall(self, [getPtr index, getPtr tangent])

proc setPointRightTangent*(self: Curve; index: int32; tangent: Float): void =
  expandMethodBind(className Curve, "set_point_right_tangent", 1602489585)
  methodbind.ptrcall(self, [getPtr index, getPtr tangent])

proc setPointLeftMode*(self: Curve; index: int32; mode: Curve_TangentMode): void =
  expandMethodBind(className Curve, "set_point_left_mode", 1217242874)
  methodbind.ptrcall(self, [getPtr index, getPtr mode])

proc setPointRightMode*(self: Curve; index: int32; mode: Curve_TangentMode): void =
  expandMethodBind(className Curve, "set_point_right_mode", 1217242874)
  methodbind.ptrcall(self, [getPtr index, getPtr mode])

proc getMinValue*(self: Curve): Float =
  expandMethodBind(className Curve, "get_min_value", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setMinValue*(self: Curve; min: Float): void =
  expandMethodBind(className Curve, "set_min_value", 373806689)
  methodbind.ptrcall(self, [getPtr min])

proc getMaxValue*(self: Curve): Float =
  expandMethodBind(className Curve, "get_max_value", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setMaxValue*(self: Curve; max: Float): void =
  expandMethodBind(className Curve, "set_max_value", 373806689)
  methodbind.ptrcall(self, [getPtr max])

proc cleanDupes*(self: Curve): void =
  expandMethodBind(className Curve, "clean_dupes", 3218959716)
  methodbind.ptrcall(self, [])

proc bake*(self: Curve): void =
  expandMethodBind(className Curve, "bake", 3218959716)
  methodbind.ptrcall(self, [])

proc getBakeResolution*(self: Curve): int32 =
  expandMethodBind(className Curve, "get_bake_resolution", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setBakeResolution*(self: Curve; resolution: int32): void =
  expandMethodBind(className Curve, "set_bake_resolution", 1286410249)
  methodbind.ptrcall(self, [getPtr resolution])

template minValue*(self: Curve): untyped = self.getMinValue()
template `minValue=`*(self: Curve; value) = self.setMinValue(value)

template maxValue*(self: Curve): untyped = self.getMaxValue()
template `maxValue=`*(self: Curve; value) = self.setMaxValue(value)

template bakeResolution*(self: Curve): untyped = self.getBakeResolution()
template `bakeResolution=`*(self: Curve; value) = self.setBakeResolution(value)

template pointCount*(self: Curve): untyped = self.getPointCount()
template `pointCount=`*(self: Curve; value) = self.setPointCount(value)

const Curve_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Curve]): Table[string, string] = Curve_vmap

proc rangeChanged*(self: Curve): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("range_changed")
  self.emitSignal(signalname)