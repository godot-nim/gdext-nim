{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(AStarGrid2D, RefCounted)

method estimateCost*(self: AStarGrid2D; fromId: Vector2i; endId: Vector2i): Float {.base.} = (discard)
proc registerVirtual_estimateCost*[T: AStarGrid2D](Self: typedesc[T]) =
  Self.vmethods[newStringName"_estimate_cost"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[AStarGrid2D](p_instance).estimateCost(p_args[0].decode(Vector2i), p_args[1].decode(Vector2i)).encode(r_ret)

method computeCost*(self: AStarGrid2D; fromId: Vector2i; toId: Vector2i): Float {.base.} = (discard)
proc registerVirtual_computeCost*[T: AStarGrid2D](Self: typedesc[T]) =
  Self.vmethods[newStringName"_compute_cost"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[AStarGrid2D](p_instance).computeCost(p_args[0].decode(Vector2i), p_args[1].decode(Vector2i)).encode(r_ret)

proc setRegion*(self: AStarGrid2D; region: Rect2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStarGrid2D, "set_region", 1763793166)
  methodbind.ptrcall(self, [getPtr region], void)

proc getRegion*(self: AStarGrid2D): Rect2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStarGrid2D, "get_region", 410525958)
  methodbind.ptrcall(self, [], Rect2i)

proc setSize*(self: AStarGrid2D; size: Vector2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStarGrid2D, "set_size", 1130785943)
  methodbind.ptrcall(self, [getPtr size], void)

proc getSize*(self: AStarGrid2D): Vector2i =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStarGrid2D, "get_size", 3690982128)
  methodbind.ptrcall(self, [], Vector2i)

proc setOffset*(self: AStarGrid2D; offset: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStarGrid2D, "set_offset", 743155724)
  methodbind.ptrcall(self, [getPtr offset], void)

proc getOffset*(self: AStarGrid2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStarGrid2D, "get_offset", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setCellSize*(self: AStarGrid2D; cellSize: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStarGrid2D, "set_cell_size", 743155724)
  methodbind.ptrcall(self, [getPtr cellSize], void)

proc getCellSize*(self: AStarGrid2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStarGrid2D, "get_cell_size", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setCellShape*(self: AStarGrid2D; cellShape: AStarGrid2D_CellShape): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStarGrid2D, "set_cell_shape", 4130591146)
  methodbind.ptrcall(self, [getPtr cellShape], void)

proc getCellShape*(self: AStarGrid2D): AStarGrid2D_CellShape =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStarGrid2D, "get_cell_shape", 3293463634)
  methodbind.ptrcall(self, [], AStarGrid2D_CellShape)

proc isInBounds*(self: AStarGrid2D; x: int32; y: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStarGrid2D, "is_in_bounds", 2522259332)
  methodbind.ptrcall(self, [getPtr x, getPtr y], bool)

proc isInBoundsv*(self: AStarGrid2D; id: Vector2i): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStarGrid2D, "is_in_boundsv", 3900751641)
  methodbind.ptrcall(self, [getPtr id], bool)

proc isDirty*(self: AStarGrid2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStarGrid2D, "is_dirty", 36873697)
  methodbind.ptrcall(self, [], bool)

proc update*(self: AStarGrid2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStarGrid2D, "update", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setJumpingEnabled*(self: AStarGrid2D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStarGrid2D, "set_jumping_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isJumpingEnabled*(self: AStarGrid2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStarGrid2D, "is_jumping_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDiagonalMode*(self: AStarGrid2D; mode: AStarGrid2D_DiagonalMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStarGrid2D, "set_diagonal_mode", 1017829798)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getDiagonalMode*(self: AStarGrid2D): AStarGrid2D_DiagonalMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStarGrid2D, "get_diagonal_mode", 3129282674)
  methodbind.ptrcall(self, [], AStarGrid2D_DiagonalMode)

proc setDefaultComputeHeuristic*(self: AStarGrid2D; heuristic: AStarGrid2D_Heuristic): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStarGrid2D, "set_default_compute_heuristic", 1044375519)
  methodbind.ptrcall(self, [getPtr heuristic], void)

proc getDefaultComputeHeuristic*(self: AStarGrid2D): AStarGrid2D_Heuristic =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStarGrid2D, "get_default_compute_heuristic", 2074731422)
  methodbind.ptrcall(self, [], AStarGrid2D_Heuristic)

proc setDefaultEstimateHeuristic*(self: AStarGrid2D; heuristic: AStarGrid2D_Heuristic): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStarGrid2D, "set_default_estimate_heuristic", 1044375519)
  methodbind.ptrcall(self, [getPtr heuristic], void)

proc getDefaultEstimateHeuristic*(self: AStarGrid2D): AStarGrid2D_Heuristic =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStarGrid2D, "get_default_estimate_heuristic", 2074731422)
  methodbind.ptrcall(self, [], AStarGrid2D_Heuristic)

proc setPointSolid*(self: AStarGrid2D; id: Vector2i; solid: bool = true): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStarGrid2D, "set_point_solid", 1765703753)
  methodbind.ptrcall(self, [getPtr id, getPtr solid], void)

proc isPointSolid*(self: AStarGrid2D; id: Vector2i): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStarGrid2D, "is_point_solid", 3900751641)
  methodbind.ptrcall(self, [getPtr id], bool)

proc setPointWeightScale*(self: AStarGrid2D; id: Vector2i; weightScale: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStarGrid2D, "set_point_weight_scale", 2262553149)
  methodbind.ptrcall(self, [getPtr id, getPtr weightScale], void)

proc getPointWeightScale*(self: AStarGrid2D; id: Vector2i): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStarGrid2D, "get_point_weight_scale", 719993801)
  methodbind.ptrcall(self, [getPtr id], Float)

proc fillSolidRegion*(self: AStarGrid2D; region: Rect2i; solid: bool = true): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStarGrid2D, "fill_solid_region", 2261970063)
  methodbind.ptrcall(self, [getPtr region, getPtr solid], void)

proc fillWeightScaleRegion*(self: AStarGrid2D; region: Rect2i; weightScale: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStarGrid2D, "fill_weight_scale_region", 2793244083)
  methodbind.ptrcall(self, [getPtr region, getPtr weightScale], void)

proc clear*(self: AStarGrid2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStarGrid2D, "clear", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getPointPosition*(self: AStarGrid2D; id: Vector2i): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStarGrid2D, "get_point_position", 108438297)
  methodbind.ptrcall(self, [getPtr id], Vector2)

proc getPointDataInRegion*(self: AStarGrid2D; region: Rect2i): TypedArray[Dictionary] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStarGrid2D, "get_point_data_in_region", 3893818462)
  methodbind.ptrcall(self, [getPtr region], TypedArray[Dictionary])

proc getPointPath*(self: AStarGrid2D; fromId: Vector2i; toId: Vector2i; allowPartialPath: bool = false): PackedVector2Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStarGrid2D, "get_point_path", 1641925693)
  methodbind.ptrcall(self, [getPtr fromId, getPtr toId, getPtr allowPartialPath], PackedVector2Array)

proc getIdPath*(self: AStarGrid2D; fromId: Vector2i; toId: Vector2i; allowPartialPath: bool = false): TypedArray[Vector2i] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AStarGrid2D, "get_id_path", 1918132273)
  methodbind.ptrcall(self, [getPtr fromId, getPtr toId, getPtr allowPartialPath], TypedArray[Vector2i])

template region*(self: AStarGrid2D): untyped = self.getRegion()
template `region=`*(self: AStarGrid2D; value) = self.setRegion(value)

template size*(self: AStarGrid2D): untyped = self.getSize()
template `size=`*(self: AStarGrid2D; value) = self.setSize(value)

template offset*(self: AStarGrid2D): untyped = self.getOffset()
template `offset=`*(self: AStarGrid2D; value) = self.setOffset(value)

template cellSize*(self: AStarGrid2D): untyped = self.getCellSize()
template `cellSize=`*(self: AStarGrid2D; value) = self.setCellSize(value)

template cellShape*(self: AStarGrid2D): untyped = self.getCellShape()
template `cellShape=`*(self: AStarGrid2D; value) = self.setCellShape(value)

template jumpingEnabled*(self: AStarGrid2D): untyped = self.isJumpingEnabled()
template `jumpingEnabled=`*(self: AStarGrid2D; value) = self.setJumpingEnabled(value)

template defaultComputeHeuristic*(self: AStarGrid2D): untyped = self.getDefaultComputeHeuristic()
template `defaultComputeHeuristic=`*(self: AStarGrid2D; value) = self.setDefaultComputeHeuristic(value)

template defaultEstimateHeuristic*(self: AStarGrid2D): untyped = self.getDefaultEstimateHeuristic()
template `defaultEstimateHeuristic=`*(self: AStarGrid2D; value) = self.setDefaultEstimateHeuristic(value)

template diagonalMode*(self: AStarGrid2D): untyped = self.getDiagonalMode()
template `diagonalMode=`*(self: AStarGrid2D; value) = self.setDiagonalMode(value)
