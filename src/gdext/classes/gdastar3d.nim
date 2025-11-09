{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(AStar3D, RefCounted)

method filterNeighbor*(self: AStar3D; fromId: int64; neighborId: int64): bool {.base.} = (discard)
proc registerVirtual_filterNeighbor*[T: AStar3D](Self: typedesc[T]) =
  Self.vmethods[newStringName"_filter_neighbor"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[AStar3D](p_instance).filterNeighbor(p_args[0].decode(int64), p_args[1].decode(int64)).encode(r_ret)

method estimateCost*(self: AStar3D; fromId: int64; endId: int64): Float {.base.} = (discard)
proc registerVirtual_estimateCost*[T: AStar3D](Self: typedesc[T]) =
  Self.vmethods[newStringName"_estimate_cost"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[AStar3D](p_instance).estimateCost(p_args[0].decode(int64), p_args[1].decode(int64)).encode(r_ret)

method computeCost*(self: AStar3D; fromId: int64; toId: int64): Float {.base.} = (discard)
proc registerVirtual_computeCost*[T: AStar3D](Self: typedesc[T]) =
  Self.vmethods[newStringName"_compute_cost"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[AStar3D](p_instance).computeCost(p_args[0].decode(int64), p_args[1].decode(int64)).encode(r_ret)

proc getAvailablePointId*(self: AStar3D): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStar3D, "get_available_point_id", 3905245786)
  methodbind.ptrcall(self, [], int64)

proc addPoint*(self: AStar3D; id: int64; position: Vector3; weightScale: Float = 1.0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStar3D, "add_point", 1038703438)
  methodbind.ptrcall(self, [getPtr id, getPtr position, getPtr weightScale], void)

proc getPointPosition*(self: AStar3D; id: int64): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStar3D, "get_point_position", 711720468)
  methodbind.ptrcall(self, [getPtr id], Vector3)

proc setPointPosition*(self: AStar3D; id: int64; position: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStar3D, "set_point_position", 1530502735)
  methodbind.ptrcall(self, [getPtr id, getPtr position], void)

proc getPointWeightScale*(self: AStar3D; id: int64): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStar3D, "get_point_weight_scale", 2339986948)
  methodbind.ptrcall(self, [getPtr id], Float)

proc setPointWeightScale*(self: AStar3D; id: int64; weightScale: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStar3D, "set_point_weight_scale", 1602489585)
  methodbind.ptrcall(self, [getPtr id, getPtr weightScale], void)

proc removePoint*(self: AStar3D; id: int64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStar3D, "remove_point", 1286410249)
  methodbind.ptrcall(self, [getPtr id], void)

proc hasPoint*(self: AStar3D; id: int64): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStar3D, "has_point", 1116898809)
  methodbind.ptrcall(self, [getPtr id], bool)

proc getPointConnections*(self: AStar3D; id: int64): PackedInt64Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStar3D, "get_point_connections", 2865087369)
  methodbind.ptrcall(self, [getPtr id], PackedInt64Array)

proc getPointIds*(self: AStar3D): PackedInt64Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStar3D, "get_point_ids", 3851388692)
  methodbind.ptrcall(self, [], PackedInt64Array)

proc setPointDisabled*(self: AStar3D; id: int64; disabled: bool = true): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStar3D, "set_point_disabled", 972357352)
  methodbind.ptrcall(self, [getPtr id, getPtr disabled], void)

proc isPointDisabled*(self: AStar3D; id: int64): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStar3D, "is_point_disabled", 1116898809)
  methodbind.ptrcall(self, [getPtr id], bool)

proc setNeighborFilterEnabled*(self: AStar3D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStar3D, "set_neighbor_filter_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isNeighborFilterEnabled*(self: AStar3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStar3D, "is_neighbor_filter_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc connectPoints*(self: AStar3D; id: int64; toId: int64; bidirectional: bool = true): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStar3D, "connect_points", 3710494224)
  methodbind.ptrcall(self, [getPtr id, getPtr toId, getPtr bidirectional], void)

proc disconnectPoints*(self: AStar3D; id: int64; toId: int64; bidirectional: bool = true): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStar3D, "disconnect_points", 3710494224)
  methodbind.ptrcall(self, [getPtr id, getPtr toId, getPtr bidirectional], void)

proc arePointsConnected*(self: AStar3D; id: int64; toId: int64; bidirectional: bool = true): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStar3D, "are_points_connected", 2288175859)
  methodbind.ptrcall(self, [getPtr id, getPtr toId, getPtr bidirectional], bool)

proc getPointCount*(self: AStar3D): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStar3D, "get_point_count", 3905245786)
  methodbind.ptrcall(self, [], int64)

proc getPointCapacity*(self: AStar3D): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStar3D, "get_point_capacity", 3905245786)
  methodbind.ptrcall(self, [], int64)

proc reserveSpace*(self: AStar3D; numNodes: int64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStar3D, "reserve_space", 1286410249)
  methodbind.ptrcall(self, [getPtr numNodes], void)

proc clear*(self: AStar3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStar3D, "clear", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getClosestPoint*(self: AStar3D; toPosition: Vector3; includeDisabled: bool = false): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStar3D, "get_closest_point", 3241074317)
  methodbind.ptrcall(self, [getPtr toPosition, getPtr includeDisabled], int64)

proc getClosestPositionInSegment*(self: AStar3D; toPosition: Vector3): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStar3D, "get_closest_position_in_segment", 192990374)
  methodbind.ptrcall(self, [getPtr toPosition], Vector3)

proc getPointPath*(self: AStar3D; fromId: int64; toId: int64; allowPartialPath: bool = false): PackedVector3Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStar3D, "get_point_path", 1562654675)
  methodbind.ptrcall(self, [getPtr fromId, getPtr toId, getPtr allowPartialPath], PackedVector3Array)

proc getIdPath*(self: AStar3D; fromId: int64; toId: int64; allowPartialPath: bool = false): PackedInt64Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStar3D, "get_id_path", 3136199648)
  methodbind.ptrcall(self, [getPtr fromId, getPtr toId, getPtr allowPartialPath], PackedInt64Array)

template neighborFilterEnabled*(self: AStar3D): untyped = self.isNeighborFilterEnabled()
template `neighborFilterEnabled=`*(self: AStar3D; value) = self.setNeighborFilterEnabled(value)
