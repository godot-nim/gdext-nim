{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

method estimateCost*(self: AStar3D; fromId: int64; toId: int64): Float {.base.} = (discard)
proc estimateCost(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[AStar3D](p_instance).estimateCost(p_args[0].decode(int64), p_args[1].decode(int64)).encode(r_ret)
template estimateCost_bind*(_: typedesc[AStar3D]): ClassCallVirtual = estimateCost

method computeCost*(self: AStar3D; fromId: int64; toId: int64): Float {.base.} = (discard)
proc computeCost(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[AStar3D](p_instance).computeCost(p_args[0].decode(int64), p_args[1].decode(int64)).encode(r_ret)
template computeCost_bind*(_: typedesc[AStar3D]): ClassCallVirtual = computeCost

proc getAvailablePointId*(self: AStar3D): int64 =
  expandMethodBind(className AStar3D, "get_available_point_id", 3905245786)
  var ret: encoded int64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int64)

proc addPoint*(self: AStar3D; id: int64; position: Vector3; weightScale: Float = 1.0): void =
  expandMethodBind(className AStar3D, "add_point", 1038703438)
  var `?param` = [getPtr id, getPtr position, getPtr weightScale]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPointPosition*(self: AStar3D; id: int64): Vector3 =
  expandMethodBind(className AStar3D, "get_point_position", 711720468)
  var `?param` = [getPtr id]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc setPointPosition*(self: AStar3D; id: int64; position: Vector3): void =
  expandMethodBind(className AStar3D, "set_point_position", 1530502735)
  var `?param` = [getPtr id, getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPointWeightScale*(self: AStar3D; id: int64): Float =
  expandMethodBind(className AStar3D, "get_point_weight_scale", 2339986948)
  var `?param` = [getPtr id]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc setPointWeightScale*(self: AStar3D; id: int64; weightScale: Float): void =
  expandMethodBind(className AStar3D, "set_point_weight_scale", 1602489585)
  var `?param` = [getPtr id, getPtr weightScale]
  methodbind.ptrcall(self, addr `?param`[0])

proc removePoint*(self: AStar3D; id: int64): void =
  expandMethodBind(className AStar3D, "remove_point", 1286410249)
  var `?param` = [getPtr id]
  methodbind.ptrcall(self, addr `?param`[0])

proc hasPoint*(self: AStar3D; id: int64): bool =
  expandMethodBind(className AStar3D, "has_point", 1116898809)
  var `?param` = [getPtr id]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getPointConnections*(self: AStar3D; id: int64): PackedInt64Array =
  expandMethodBind(className AStar3D, "get_point_connections", 2865087369)
  var `?param` = [getPtr id]
  var ret: encoded PackedInt64Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedInt64Array)

proc getPointIds*(self: AStar3D): PackedInt64Array =
  expandMethodBind(className AStar3D, "get_point_ids", 3851388692)
  var ret: encoded PackedInt64Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedInt64Array)

proc setPointDisabled*(self: AStar3D; id: int64; disabled: bool = true): void =
  expandMethodBind(className AStar3D, "set_point_disabled", 972357352)
  var `?param` = [getPtr id, getPtr disabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isPointDisabled*(self: AStar3D; id: int64): bool =
  expandMethodBind(className AStar3D, "is_point_disabled", 1116898809)
  var `?param` = [getPtr id]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc connectPoints*(self: AStar3D; id: int64; toId: int64; bidirectional: bool = true): void =
  expandMethodBind(className AStar3D, "connect_points", 3710494224)
  var `?param` = [getPtr id, getPtr toId, getPtr bidirectional]
  methodbind.ptrcall(self, addr `?param`[0])

proc disconnectPoints*(self: AStar3D; id: int64; toId: int64; bidirectional: bool = true): void =
  expandMethodBind(className AStar3D, "disconnect_points", 3710494224)
  var `?param` = [getPtr id, getPtr toId, getPtr bidirectional]
  methodbind.ptrcall(self, addr `?param`[0])

proc arePointsConnected*(self: AStar3D; id: int64; toId: int64; bidirectional: bool = true): bool =
  expandMethodBind(className AStar3D, "are_points_connected", 2288175859)
  var `?param` = [getPtr id, getPtr toId, getPtr bidirectional]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getPointCount*(self: AStar3D): int64 =
  expandMethodBind(className AStar3D, "get_point_count", 3905245786)
  var ret: encoded int64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int64)

proc getPointCapacity*(self: AStar3D): int64 =
  expandMethodBind(className AStar3D, "get_point_capacity", 3905245786)
  var ret: encoded int64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int64)

proc reserveSpace*(self: AStar3D; numNodes: int64): void =
  expandMethodBind(className AStar3D, "reserve_space", 1286410249)
  var `?param` = [getPtr numNodes]
  methodbind.ptrcall(self, addr `?param`[0])

proc clear*(self: AStar3D): void =
  expandMethodBind(className AStar3D, "clear", 3218959716)
  methodbind.ptrcall(self, nil)

proc getClosestPoint*(self: AStar3D; toPosition: Vector3; includeDisabled: bool = false): int64 =
  expandMethodBind(className AStar3D, "get_closest_point", 3241074317)
  var `?param` = [getPtr toPosition, getPtr includeDisabled]
  var ret: encoded int64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int64)

proc getClosestPositionInSegment*(self: AStar3D; toPosition: Vector3): Vector3 =
  expandMethodBind(className AStar3D, "get_closest_position_in_segment", 192990374)
  var `?param` = [getPtr toPosition]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc getPointPath*(self: AStar3D; fromId: int64; toId: int64; allowPartialPath: bool = false): PackedVector3Array =
  expandMethodBind(className AStar3D, "get_point_path", 1562654675)
  var `?param` = [getPtr fromId, getPtr toId, getPtr allowPartialPath]
  var ret: encoded PackedVector3Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedVector3Array)

proc getIdPath*(self: AStar3D; fromId: int64; toId: int64; allowPartialPath: bool = false): PackedInt64Array =
  expandMethodBind(className AStar3D, "get_id_path", 3136199648)
  var `?param` = [getPtr fromId, getPtr toId, getPtr allowPartialPath]
  var ret: encoded PackedInt64Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedInt64Array)

const AStar3D_vmap =
  RefCounted.vmap.concat toTable {
    "estimatecost" : "_estimate_cost",
    "computecost" : "_compute_cost",
    }
template vmap*(_: typedesc[AStar3D]): Table[string, string] = AStar3D_vmap