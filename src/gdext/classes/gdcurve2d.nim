{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc getPointCount*(self: Curve2D): int32 =
  expandMethodBind(className Curve2D, "get_point_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setPointCount*(self: Curve2D; count: int32): void =
  expandMethodBind(className Curve2D, "set_point_count", 1286410249)
  methodbind.ptrcall(self, [getPtr count])

proc addPoint*(self: Curve2D; position: Vector2; `in`: Vector2 = vector2(0, 0); `out`: Vector2 = vector2(0, 0); index: int32 = -1): void =
  expandMethodBind(className Curve2D, "add_point", 4175465202)
  methodbind.ptrcall(self, [getPtr position, getPtr `in`, getPtr `out`, getPtr index])

proc setPointPosition*(self: Curve2D; idx: int32; position: Vector2): void =
  expandMethodBind(className Curve2D, "set_point_position", 163021252)
  methodbind.ptrcall(self, [getPtr idx, getPtr position])

proc getPointPosition*(self: Curve2D; idx: int32): Vector2 =
  expandMethodBind(className Curve2D, "get_point_position", 2299179447)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr idx], addr ret)
  (addr ret).decode_result(Vector2)

proc setPointIn*(self: Curve2D; idx: int32; position: Vector2): void =
  expandMethodBind(className Curve2D, "set_point_in", 163021252)
  methodbind.ptrcall(self, [getPtr idx, getPtr position])

proc getPointIn*(self: Curve2D; idx: int32): Vector2 =
  expandMethodBind(className Curve2D, "get_point_in", 2299179447)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr idx], addr ret)
  (addr ret).decode_result(Vector2)

proc setPointOut*(self: Curve2D; idx: int32; position: Vector2): void =
  expandMethodBind(className Curve2D, "set_point_out", 163021252)
  methodbind.ptrcall(self, [getPtr idx, getPtr position])

proc getPointOut*(self: Curve2D; idx: int32): Vector2 =
  expandMethodBind(className Curve2D, "get_point_out", 2299179447)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr idx], addr ret)
  (addr ret).decode_result(Vector2)

proc removePoint*(self: Curve2D; idx: int32): void =
  expandMethodBind(className Curve2D, "remove_point", 1286410249)
  methodbind.ptrcall(self, [getPtr idx])

proc clearPoints*(self: Curve2D): void =
  expandMethodBind(className Curve2D, "clear_points", 3218959716)
  methodbind.ptrcall(self, [])

proc sample*(self: Curve2D; idx: int32; t: Float): Vector2 =
  expandMethodBind(className Curve2D, "sample", 26514310)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr idx, getPtr t], addr ret)
  (addr ret).decode_result(Vector2)

proc samplef*(self: Curve2D; fofs: Float): Vector2 =
  expandMethodBind(className Curve2D, "samplef", 3588506812)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr fofs], addr ret)
  (addr ret).decode_result(Vector2)

proc setBakeInterval*(self: Curve2D; distance: Float): void =
  expandMethodBind(className Curve2D, "set_bake_interval", 373806689)
  methodbind.ptrcall(self, [getPtr distance])

proc getBakeInterval*(self: Curve2D): Float =
  expandMethodBind(className Curve2D, "get_bake_interval", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc getBakedLength*(self: Curve2D): Float =
  expandMethodBind(className Curve2D, "get_baked_length", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc sampleBaked*(self: Curve2D; offset: Float = 0.0; cubic: bool = false): Vector2 =
  expandMethodBind(className Curve2D, "sample_baked", 3464257706)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr offset, getPtr cubic], addr ret)
  (addr ret).decode_result(Vector2)

proc sampleBakedWithRotation*(self: Curve2D; offset: Float = 0.0; cubic: bool = false): Transform2D =
  expandMethodBind(className Curve2D, "sample_baked_with_rotation", 3296056341)
  var ret: encoded Transform2D
  methodbind.ptrcall(self, [getPtr offset, getPtr cubic], addr ret)
  (addr ret).decode_result(Transform2D)

proc getBakedPoints*(self: Curve2D): PackedVector2Array =
  expandMethodBind(className Curve2D, "get_baked_points", 2961356807)
  var ret: encoded PackedVector2Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedVector2Array)

proc getClosestPoint*(self: Curve2D; toPoint: Vector2): Vector2 =
  expandMethodBind(className Curve2D, "get_closest_point", 2656412154)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr toPoint], addr ret)
  (addr ret).decode_result(Vector2)

proc getClosestOffset*(self: Curve2D; toPoint: Vector2): Float =
  expandMethodBind(className Curve2D, "get_closest_offset", 2276447920)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr toPoint], addr ret)
  (addr ret).decode_result(Float)

proc tessellate*(self: Curve2D; maxStages: int32 = 5; toleranceDegrees: Float = 4): PackedVector2Array =
  expandMethodBind(className Curve2D, "tessellate", 958145977)
  var ret: encoded PackedVector2Array
  methodbind.ptrcall(self, [getPtr maxStages, getPtr toleranceDegrees], addr ret)
  (addr ret).decode_result(PackedVector2Array)

proc tessellateEvenLength*(self: Curve2D; maxStages: int32 = 5; toleranceLength: Float = 20.0): PackedVector2Array =
  expandMethodBind(className Curve2D, "tessellate_even_length", 2319761637)
  var ret: encoded PackedVector2Array
  methodbind.ptrcall(self, [getPtr maxStages, getPtr toleranceLength], addr ret)
  (addr ret).decode_result(PackedVector2Array)

template bakeInterval*(self: Curve2D): untyped = self.getBakeInterval()
template `bakeInterval=`*(self: Curve2D; value) = self.setBakeInterval(value)

template pointCount*(self: Curve2D): untyped = self.getPointCount()
template `pointCount=`*(self: Curve2D; value) = self.setPointCount(value)

const Curve2D_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Curve2D]): Table[string, string] = Curve2D_vmap