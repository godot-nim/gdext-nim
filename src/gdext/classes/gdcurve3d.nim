{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc getPointCount*(self: Curve3D): int32 =
  expandMethodBind(className Curve3D, "get_point_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setPointCount*(self: Curve3D; count: int32): void =
  expandMethodBind(className Curve3D, "set_point_count", 1286410249)
  var `?param` = [getPtr count]
  methodbind.ptrcall(self, addr `?param`[0])

proc addPoint*(self: Curve3D; position: Vector3; `in`: Vector3 = vector3(0, 0, 0); `out`: Vector3 = vector3(0, 0, 0); index: int32 = -1): void =
  expandMethodBind(className Curve3D, "add_point", 2931053748)
  var `?param` = [getPtr position, getPtr `in`, getPtr `out`, getPtr index]
  methodbind.ptrcall(self, addr `?param`[0])

proc setPointPosition*(self: Curve3D; idx: int32; position: Vector3): void =
  expandMethodBind(className Curve3D, "set_point_position", 1530502735)
  var `?param` = [getPtr idx, getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPointPosition*(self: Curve3D; idx: int32): Vector3 =
  expandMethodBind(className Curve3D, "get_point_position", 711720468)
  var `?param` = [getPtr idx]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc setPointTilt*(self: Curve3D; idx: int32; tilt: Float): void =
  expandMethodBind(className Curve3D, "set_point_tilt", 1602489585)
  var `?param` = [getPtr idx, getPtr tilt]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPointTilt*(self: Curve3D; idx: int32): Float =
  expandMethodBind(className Curve3D, "get_point_tilt", 2339986948)
  var `?param` = [getPtr idx]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc setPointIn*(self: Curve3D; idx: int32; position: Vector3): void =
  expandMethodBind(className Curve3D, "set_point_in", 1530502735)
  var `?param` = [getPtr idx, getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPointIn*(self: Curve3D; idx: int32): Vector3 =
  expandMethodBind(className Curve3D, "get_point_in", 711720468)
  var `?param` = [getPtr idx]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc setPointOut*(self: Curve3D; idx: int32; position: Vector3): void =
  expandMethodBind(className Curve3D, "set_point_out", 1530502735)
  var `?param` = [getPtr idx, getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPointOut*(self: Curve3D; idx: int32): Vector3 =
  expandMethodBind(className Curve3D, "get_point_out", 711720468)
  var `?param` = [getPtr idx]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc removePoint*(self: Curve3D; idx: int32): void =
  expandMethodBind(className Curve3D, "remove_point", 1286410249)
  var `?param` = [getPtr idx]
  methodbind.ptrcall(self, addr `?param`[0])

proc clearPoints*(self: Curve3D): void =
  expandMethodBind(className Curve3D, "clear_points", 3218959716)
  methodbind.ptrcall(self, nil)

proc sample*(self: Curve3D; idx: int32; t: Float): Vector3 =
  expandMethodBind(className Curve3D, "sample", 3285246857)
  var `?param` = [getPtr idx, getPtr t]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc samplef*(self: Curve3D; fofs: Float): Vector3 =
  expandMethodBind(className Curve3D, "samplef", 2553580215)
  var `?param` = [getPtr fofs]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc setBakeInterval*(self: Curve3D; distance: Float): void =
  expandMethodBind(className Curve3D, "set_bake_interval", 373806689)
  var `?param` = [getPtr distance]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBakeInterval*(self: Curve3D): Float =
  expandMethodBind(className Curve3D, "get_bake_interval", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setUpVectorEnabled*(self: Curve3D; enable: bool): void =
  expandMethodBind(className Curve3D, "set_up_vector_enabled", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isUpVectorEnabled*(self: Curve3D): bool =
  expandMethodBind(className Curve3D, "is_up_vector_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getBakedLength*(self: Curve3D): Float =
  expandMethodBind(className Curve3D, "get_baked_length", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc sampleBaked*(self: Curve3D; offset: Float = 0.0; cubic: bool = false): Vector3 =
  expandMethodBind(className Curve3D, "sample_baked", 1350085894)
  var `?param` = [getPtr offset, getPtr cubic]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc sampleBakedWithRotation*(self: Curve3D; offset: Float = 0.0; cubic: bool = false; applyTilt: bool = false): Transform3D =
  expandMethodBind(className Curve3D, "sample_baked_with_rotation", 1939359131)
  var `?param` = [getPtr offset, getPtr cubic, getPtr applyTilt]
  var ret: encoded Transform3D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Transform3D)

proc sampleBakedUpVector*(self: Curve3D; offset: Float; applyTilt: bool = false): Vector3 =
  expandMethodBind(className Curve3D, "sample_baked_up_vector", 1362627031)
  var `?param` = [getPtr offset, getPtr applyTilt]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc getBakedPoints*(self: Curve3D): PackedVector3Array =
  expandMethodBind(className Curve3D, "get_baked_points", 497664490)
  var ret: encoded PackedVector3Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedVector3Array)

proc getBakedTilts*(self: Curve3D): PackedFloat32Array =
  expandMethodBind(className Curve3D, "get_baked_tilts", 675695659)
  var ret: encoded PackedFloat32Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedFloat32Array)

proc getBakedUpVectors*(self: Curve3D): PackedVector3Array =
  expandMethodBind(className Curve3D, "get_baked_up_vectors", 497664490)
  var ret: encoded PackedVector3Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedVector3Array)

proc getClosestPoint*(self: Curve3D; toPoint: Vector3): Vector3 =
  expandMethodBind(className Curve3D, "get_closest_point", 192990374)
  var `?param` = [getPtr toPoint]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc getClosestOffset*(self: Curve3D; toPoint: Vector3): Float =
  expandMethodBind(className Curve3D, "get_closest_offset", 1109078154)
  var `?param` = [getPtr toPoint]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc tessellate*(self: Curve3D; maxStages: int32 = 5; toleranceDegrees: Float = 4): PackedVector3Array =
  expandMethodBind(className Curve3D, "tessellate", 1519759391)
  var `?param` = [getPtr maxStages, getPtr toleranceDegrees]
  var ret: encoded PackedVector3Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedVector3Array)

proc tessellateEvenLength*(self: Curve3D; maxStages: int32 = 5; toleranceLength: Float = 0.2): PackedVector3Array =
  expandMethodBind(className Curve3D, "tessellate_even_length", 133237049)
  var `?param` = [getPtr maxStages, getPtr toleranceLength]
  var ret: encoded PackedVector3Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedVector3Array)

template bakeInterval*(self: Curve3D): untyped = self.getBakeInterval()
template `bakeInterval=`*(self: Curve3D; value) = self.setBakeInterval(value)

template pointCount*(self: Curve3D): untyped = self.getPointCount()
template `pointCount=`*(self: Curve3D; value) = self.setPointCount(value)

template upVectorEnabled*(self: Curve3D): untyped = self.isUpVectorEnabled()
template `upVectorEnabled=`*(self: Curve3D; value) = self.setUpVectorEnabled(value)

const Curve3D_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Curve3D]): Table[string, string] = Curve3D_vmap