{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(AStar2D, RefCounted)

method filterNeighbor*(self: AStar2D; fromId: int64; neighborId: int64): bool {.base.} = (discard)
proc registerVirtual_filterNeighbor*[T: AStar2D](Self: typedesc[T]) =
  Self.vmethods[newStringName"_filter_neighbor"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[AStar2D](p_instance).filterNeighbor(p_args[0].decode(int64), p_args[1].decode(int64)).encode(r_ret)

method estimateCost*(self: AStar2D; fromId: int64; endId: int64): Float {.base.} = (discard)
proc registerVirtual_estimateCost*[T: AStar2D](Self: typedesc[T]) =
  Self.vmethods[newStringName"_estimate_cost"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[AStar2D](p_instance).estimateCost(p_args[0].decode(int64), p_args[1].decode(int64)).encode(r_ret)

method computeCost*(self: AStar2D; fromId: int64; toId: int64): Float {.base.} = (discard)
proc registerVirtual_computeCost*[T: AStar2D](Self: typedesc[T]) =
  Self.vmethods[newStringName"_compute_cost"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[AStar2D](p_instance).computeCost(p_args[0].decode(int64), p_args[1].decode(int64)).encode(r_ret)

proc getAvailablePointId*(self: AStar2D): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStar2D, "get_available_point_id", 3905245786)
  methodbind.ptrcall(self, [], int64)

proc addPoint*(self: AStar2D; id: int64; position: Vector2; weightScale: Float = 1.0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStar2D, "add_point", 4074201818)
  methodbind.ptrcall(self, [getPtr id, getPtr position, getPtr weightScale], void)

proc getPointPosition*(self: AStar2D; id: int64): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStar2D, "get_point_position", 2299179447)
  methodbind.ptrcall(self, [getPtr id], Vector2)

proc setPointPosition*(self: AStar2D; id: int64; position: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStar2D, "set_point_position", 163021252)
  methodbind.ptrcall(self, [getPtr id, getPtr position], void)

proc getPointWeightScale*(self: AStar2D; id: int64): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStar2D, "get_point_weight_scale", 2339986948)
  methodbind.ptrcall(self, [getPtr id], Float)

proc setPointWeightScale*(self: AStar2D; id: int64; weightScale: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStar2D, "set_point_weight_scale", 1602489585)
  methodbind.ptrcall(self, [getPtr id, getPtr weightScale], void)

proc removePoint*(self: AStar2D; id: int64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStar2D, "remove_point", 1286410249)
  methodbind.ptrcall(self, [getPtr id], void)

proc hasPoint*(self: AStar2D; id: int64): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStar2D, "has_point", 1116898809)
  methodbind.ptrcall(self, [getPtr id], bool)

proc getPointConnections*(self: AStar2D; id: int64): PackedInt64Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStar2D, "get_point_connections", 2865087369)
  methodbind.ptrcall(self, [getPtr id], PackedInt64Array)

proc getPointIds*(self: AStar2D): PackedInt64Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStar2D, "get_point_ids", 3851388692)
  methodbind.ptrcall(self, [], PackedInt64Array)

proc setNeighborFilterEnabled*(self: AStar2D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStar2D, "set_neighbor_filter_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isNeighborFilterEnabled*(self: AStar2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStar2D, "is_neighbor_filter_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setPointDisabled*(self: AStar2D; id: int64; disabled: bool = true): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStar2D, "set_point_disabled", 972357352)
  methodbind.ptrcall(self, [getPtr id, getPtr disabled], void)

proc isPointDisabled*(self: AStar2D; id: int64): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStar2D, "is_point_disabled", 1116898809)
  methodbind.ptrcall(self, [getPtr id], bool)

proc connectPoints*(self: AStar2D; id: int64; toId: int64; bidirectional: bool = true): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStar2D, "connect_points", 3710494224)
  methodbind.ptrcall(self, [getPtr id, getPtr toId, getPtr bidirectional], void)

proc disconnectPoints*(self: AStar2D; id: int64; toId: int64; bidirectional: bool = true): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStar2D, "disconnect_points", 3710494224)
  methodbind.ptrcall(self, [getPtr id, getPtr toId, getPtr bidirectional], void)

proc arePointsConnected*(self: AStar2D; id: int64; toId: int64; bidirectional: bool = true): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStar2D, "are_points_connected", 2288175859)
  methodbind.ptrcall(self, [getPtr id, getPtr toId, getPtr bidirectional], bool)

proc getPointCount*(self: AStar2D): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStar2D, "get_point_count", 3905245786)
  methodbind.ptrcall(self, [], int64)

proc getPointCapacity*(self: AStar2D): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStar2D, "get_point_capacity", 3905245786)
  methodbind.ptrcall(self, [], int64)

proc reserveSpace*(self: AStar2D; numNodes: int64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStar2D, "reserve_space", 1286410249)
  methodbind.ptrcall(self, [getPtr numNodes], void)

proc clear*(self: AStar2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStar2D, "clear", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getClosestPoint*(self: AStar2D; toPosition: Vector2; includeDisabled: bool = false): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStar2D, "get_closest_point", 2300324924)
  methodbind.ptrcall(self, [getPtr toPosition, getPtr includeDisabled], int64)

proc getClosestPositionInSegment*(self: AStar2D; toPosition: Vector2): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStar2D, "get_closest_position_in_segment", 2656412154)
  methodbind.ptrcall(self, [getPtr toPosition], Vector2)

proc getPointPath*(self: AStar2D; fromId: int64; toId: int64; allowPartialPath: bool = false): PackedVector2Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStar2D, "get_point_path", 3427490392)
  methodbind.ptrcall(self, [getPtr fromId, getPtr toId, getPtr allowPartialPath], PackedVector2Array)

proc getIdPath*(self: AStar2D; fromId: int64; toId: int64; allowPartialPath: bool = false): PackedInt64Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStar2D, "get_id_path", 3136199648)
  methodbind.ptrcall(self, [getPtr fromId, getPtr toId, getPtr allowPartialPath], PackedInt64Array)

template neighborFilterEnabled*(self: AStar2D): untyped = self.isNeighborFilterEnabled()
template `neighborFilterEnabled=`*(self: AStar2D; value) = self.setNeighborFilterEnabled(value)
