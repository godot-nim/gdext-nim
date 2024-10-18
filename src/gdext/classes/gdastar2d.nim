{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

method estimateCost*(self: AStar2D; fromId: int64; toId: int64): Float {.base.} = (discard)
proc estimateCost(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[AStar2D](p_instance).estimateCost(p_args[0].decode(int64), p_args[1].decode(int64)).encode(r_ret)
template estimateCost_bind*(_: typedesc[AStar2D]): ClassCallVirtual = estimateCost

method computeCost*(self: AStar2D; fromId: int64; toId: int64): Float {.base.} = (discard)
proc computeCost(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[AStar2D](p_instance).computeCost(p_args[0].decode(int64), p_args[1].decode(int64)).encode(r_ret)
template computeCost_bind*(_: typedesc[AStar2D]): ClassCallVirtual = computeCost

proc getAvailablePointId*(self: AStar2D): int64 =
  expandMethodBind(className AStar2D, "get_available_point_id", 3905245786)
  var ret: encoded int64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int64)

proc addPoint*(self: AStar2D; id: int64; position: Vector2; weightScale: Float = 1.0): void =
  expandMethodBind(className AStar2D, "add_point", 4074201818)
  var `?param` = [getPtr id, getPtr position, getPtr weightScale]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPointPosition*(self: AStar2D; id: int64): Vector2 =
  expandMethodBind(className AStar2D, "get_point_position", 2299179447)
  var `?param` = [getPtr id]
  var ret: encoded Vector2
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2)

proc setPointPosition*(self: AStar2D; id: int64; position: Vector2): void =
  expandMethodBind(className AStar2D, "set_point_position", 163021252)
  var `?param` = [getPtr id, getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPointWeightScale*(self: AStar2D; id: int64): Float =
  expandMethodBind(className AStar2D, "get_point_weight_scale", 2339986948)
  var `?param` = [getPtr id]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc setPointWeightScale*(self: AStar2D; id: int64; weightScale: Float): void =
  expandMethodBind(className AStar2D, "set_point_weight_scale", 1602489585)
  var `?param` = [getPtr id, getPtr weightScale]
  methodbind.ptrcall(self, addr `?param`[0])

proc removePoint*(self: AStar2D; id: int64): void =
  expandMethodBind(className AStar2D, "remove_point", 1286410249)
  var `?param` = [getPtr id]
  methodbind.ptrcall(self, addr `?param`[0])

proc hasPoint*(self: AStar2D; id: int64): bool =
  expandMethodBind(className AStar2D, "has_point", 1116898809)
  var `?param` = [getPtr id]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getPointConnections*(self: AStar2D; id: int64): PackedInt64Array =
  expandMethodBind(className AStar2D, "get_point_connections", 2865087369)
  var `?param` = [getPtr id]
  var ret: encoded PackedInt64Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedInt64Array)

proc getPointIds*(self: AStar2D): PackedInt64Array =
  expandMethodBind(className AStar2D, "get_point_ids", 3851388692)
  var ret: encoded PackedInt64Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedInt64Array)

proc setPointDisabled*(self: AStar2D; id: int64; disabled: bool = true): void =
  expandMethodBind(className AStar2D, "set_point_disabled", 972357352)
  var `?param` = [getPtr id, getPtr disabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isPointDisabled*(self: AStar2D; id: int64): bool =
  expandMethodBind(className AStar2D, "is_point_disabled", 1116898809)
  var `?param` = [getPtr id]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc connectPoints*(self: AStar2D; id: int64; toId: int64; bidirectional: bool = true): void =
  expandMethodBind(className AStar2D, "connect_points", 3710494224)
  var `?param` = [getPtr id, getPtr toId, getPtr bidirectional]
  methodbind.ptrcall(self, addr `?param`[0])

proc disconnectPoints*(self: AStar2D; id: int64; toId: int64; bidirectional: bool = true): void =
  expandMethodBind(className AStar2D, "disconnect_points", 3710494224)
  var `?param` = [getPtr id, getPtr toId, getPtr bidirectional]
  methodbind.ptrcall(self, addr `?param`[0])

proc arePointsConnected*(self: AStar2D; id: int64; toId: int64; bidirectional: bool = true): bool =
  expandMethodBind(className AStar2D, "are_points_connected", 2288175859)
  var `?param` = [getPtr id, getPtr toId, getPtr bidirectional]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getPointCount*(self: AStar2D): int64 =
  expandMethodBind(className AStar2D, "get_point_count", 3905245786)
  var ret: encoded int64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int64)

proc getPointCapacity*(self: AStar2D): int64 =
  expandMethodBind(className AStar2D, "get_point_capacity", 3905245786)
  var ret: encoded int64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int64)

proc reserveSpace*(self: AStar2D; numNodes: int64): void =
  expandMethodBind(className AStar2D, "reserve_space", 1286410249)
  var `?param` = [getPtr numNodes]
  methodbind.ptrcall(self, addr `?param`[0])

proc clear*(self: AStar2D): void =
  expandMethodBind(className AStar2D, "clear", 3218959716)
  methodbind.ptrcall(self, nil)

proc getClosestPoint*(self: AStar2D; toPosition: Vector2; includeDisabled: bool = false): int64 =
  expandMethodBind(className AStar2D, "get_closest_point", 2300324924)
  var `?param` = [getPtr toPosition, getPtr includeDisabled]
  var ret: encoded int64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int64)

proc getClosestPositionInSegment*(self: AStar2D; toPosition: Vector2): Vector2 =
  expandMethodBind(className AStar2D, "get_closest_position_in_segment", 2656412154)
  var `?param` = [getPtr toPosition]
  var ret: encoded Vector2
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2)

proc getPointPath*(self: AStar2D; fromId: int64; toId: int64; allowPartialPath: bool = false): PackedVector2Array =
  expandMethodBind(className AStar2D, "get_point_path", 3427490392)
  var `?param` = [getPtr fromId, getPtr toId, getPtr allowPartialPath]
  var ret: encoded PackedVector2Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedVector2Array)

proc getIdPath*(self: AStar2D; fromId: int64; toId: int64; allowPartialPath: bool = false): PackedInt64Array =
  expandMethodBind(className AStar2D, "get_id_path", 3136199648)
  var `?param` = [getPtr fromId, getPtr toId, getPtr allowPartialPath]
  var ret: encoded PackedInt64Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedInt64Array)

const AStar2D_vmap =
  RefCounted.vmap.concat toTable {
    "estimatecost" : "_estimate_cost",
    "computecost" : "_compute_cost",
    }
template vmap*(_: typedesc[AStar2D]): Table[string, string] = AStar2D_vmap