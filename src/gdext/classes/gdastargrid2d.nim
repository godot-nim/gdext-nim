{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

method estimateCost*(self: AStarGrid2D; fromId: Vector2i; toId: Vector2i): Float {.base.} = (discard)
proc estimateCost(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[AStarGrid2D](p_instance).estimateCost(p_args[0].decode(Vector2i), p_args[1].decode(Vector2i)).encode(r_ret)
template estimateCost_bind*(_: typedesc[AStarGrid2D]): ClassCallVirtual = estimateCost

method computeCost*(self: AStarGrid2D; fromId: Vector2i; toId: Vector2i): Float {.base.} = (discard)
proc computeCost(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[AStarGrid2D](p_instance).computeCost(p_args[0].decode(Vector2i), p_args[1].decode(Vector2i)).encode(r_ret)
template computeCost_bind*(_: typedesc[AStarGrid2D]): ClassCallVirtual = computeCost

proc setRegion*(self: AStarGrid2D; region: Rect2i): void =
  expandMethodBind(className AStarGrid2D, "set_region", 1763793166)
  methodbind.ptrcall(self, [getPtr region])

proc getRegion*(self: AStarGrid2D): Rect2i =
  expandMethodBind(className AStarGrid2D, "get_region", 410525958)
  var ret: encoded Rect2i
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Rect2i)

proc setSize*(self: AStarGrid2D; size: Vector2i): void =
  expandMethodBind(className AStarGrid2D, "set_size", 1130785943)
  methodbind.ptrcall(self, [getPtr size])

proc getSize*(self: AStarGrid2D): Vector2i =
  expandMethodBind(className AStarGrid2D, "get_size", 3690982128)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2i)

proc setOffset*(self: AStarGrid2D; offset: Vector2): void =
  expandMethodBind(className AStarGrid2D, "set_offset", 743155724)
  methodbind.ptrcall(self, [getPtr offset])

proc getOffset*(self: AStarGrid2D): Vector2 =
  expandMethodBind(className AStarGrid2D, "get_offset", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc setCellSize*(self: AStarGrid2D; cellSize: Vector2): void =
  expandMethodBind(className AStarGrid2D, "set_cell_size", 743155724)
  methodbind.ptrcall(self, [getPtr cellSize])

proc getCellSize*(self: AStarGrid2D): Vector2 =
  expandMethodBind(className AStarGrid2D, "get_cell_size", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc setCellShape*(self: AStarGrid2D; cellShape: AStarGrid2D_CellShape): void =
  expandMethodBind(className AStarGrid2D, "set_cell_shape", 4130591146)
  methodbind.ptrcall(self, [getPtr cellShape])

proc getCellShape*(self: AStarGrid2D): AStarGrid2D_CellShape =
  expandMethodBind(className AStarGrid2D, "get_cell_shape", 3293463634)
  var ret: encoded AStarGrid2D_CellShape
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(AStarGrid2D_CellShape)

proc isInBounds*(self: AStarGrid2D; x: int32; y: int32): bool =
  expandMethodBind(className AStarGrid2D, "is_in_bounds", 2522259332)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr x, getPtr y], addr ret)
  (addr ret).decode_result(bool)

proc isInBoundsv*(self: AStarGrid2D; id: Vector2i): bool =
  expandMethodBind(className AStarGrid2D, "is_in_boundsv", 3900751641)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr id], addr ret)
  (addr ret).decode_result(bool)

proc isDirty*(self: AStarGrid2D): bool =
  expandMethodBind(className AStarGrid2D, "is_dirty", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc update*(self: AStarGrid2D): void =
  expandMethodBind(className AStarGrid2D, "update", 3218959716)
  methodbind.ptrcall(self, [])

proc setJumpingEnabled*(self: AStarGrid2D; enabled: bool): void =
  expandMethodBind(className AStarGrid2D, "set_jumping_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isJumpingEnabled*(self: AStarGrid2D): bool =
  expandMethodBind(className AStarGrid2D, "is_jumping_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setDiagonalMode*(self: AStarGrid2D; mode: AStarGrid2D_DiagonalMode): void =
  expandMethodBind(className AStarGrid2D, "set_diagonal_mode", 1017829798)
  methodbind.ptrcall(self, [getPtr mode])

proc getDiagonalMode*(self: AStarGrid2D): AStarGrid2D_DiagonalMode =
  expandMethodBind(className AStarGrid2D, "get_diagonal_mode", 3129282674)
  var ret: encoded AStarGrid2D_DiagonalMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(AStarGrid2D_DiagonalMode)

proc setDefaultComputeHeuristic*(self: AStarGrid2D; heuristic: AStarGrid2D_Heuristic): void =
  expandMethodBind(className AStarGrid2D, "set_default_compute_heuristic", 1044375519)
  methodbind.ptrcall(self, [getPtr heuristic])

proc getDefaultComputeHeuristic*(self: AStarGrid2D): AStarGrid2D_Heuristic =
  expandMethodBind(className AStarGrid2D, "get_default_compute_heuristic", 2074731422)
  var ret: encoded AStarGrid2D_Heuristic
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(AStarGrid2D_Heuristic)

proc setDefaultEstimateHeuristic*(self: AStarGrid2D; heuristic: AStarGrid2D_Heuristic): void =
  expandMethodBind(className AStarGrid2D, "set_default_estimate_heuristic", 1044375519)
  methodbind.ptrcall(self, [getPtr heuristic])

proc getDefaultEstimateHeuristic*(self: AStarGrid2D): AStarGrid2D_Heuristic =
  expandMethodBind(className AStarGrid2D, "get_default_estimate_heuristic", 2074731422)
  var ret: encoded AStarGrid2D_Heuristic
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(AStarGrid2D_Heuristic)

proc setPointSolid*(self: AStarGrid2D; id: Vector2i; solid: bool = true): void =
  expandMethodBind(className AStarGrid2D, "set_point_solid", 1765703753)
  methodbind.ptrcall(self, [getPtr id, getPtr solid])

proc isPointSolid*(self: AStarGrid2D; id: Vector2i): bool =
  expandMethodBind(className AStarGrid2D, "is_point_solid", 3900751641)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr id], addr ret)
  (addr ret).decode_result(bool)

proc setPointWeightScale*(self: AStarGrid2D; id: Vector2i; weightScale: Float): void =
  expandMethodBind(className AStarGrid2D, "set_point_weight_scale", 2262553149)
  methodbind.ptrcall(self, [getPtr id, getPtr weightScale])

proc getPointWeightScale*(self: AStarGrid2D; id: Vector2i): Float =
  expandMethodBind(className AStarGrid2D, "get_point_weight_scale", 719993801)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr id], addr ret)
  (addr ret).decode_result(Float)

proc fillSolidRegion*(self: AStarGrid2D; region: Rect2i; solid: bool = true): void =
  expandMethodBind(className AStarGrid2D, "fill_solid_region", 2261970063)
  methodbind.ptrcall(self, [getPtr region, getPtr solid])

proc fillWeightScaleRegion*(self: AStarGrid2D; region: Rect2i; weightScale: Float): void =
  expandMethodBind(className AStarGrid2D, "fill_weight_scale_region", 2793244083)
  methodbind.ptrcall(self, [getPtr region, getPtr weightScale])

proc clear*(self: AStarGrid2D): void =
  expandMethodBind(className AStarGrid2D, "clear", 3218959716)
  methodbind.ptrcall(self, [])

proc getPointPosition*(self: AStarGrid2D; id: Vector2i): Vector2 =
  expandMethodBind(className AStarGrid2D, "get_point_position", 108438297)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr id], addr ret)
  (addr ret).decode_result(Vector2)

proc getPointPath*(self: AStarGrid2D; fromId: Vector2i; toId: Vector2i; allowPartialPath: bool = false): PackedVector2Array =
  expandMethodBind(className AStarGrid2D, "get_point_path", 1641925693)
  var ret: encoded PackedVector2Array
  methodbind.ptrcall(self, [getPtr fromId, getPtr toId, getPtr allowPartialPath], addr ret)
  (addr ret).decode_result(PackedVector2Array)

proc getIdPath*(self: AStarGrid2D; fromId: Vector2i; toId: Vector2i; allowPartialPath: bool = false): TypedArray[Vector2i] =
  expandMethodBind(className AStarGrid2D, "get_id_path", 1918132273)
  var ret: encoded TypedArray[Vector2i]
  methodbind.ptrcall(self, [getPtr fromId, getPtr toId, getPtr allowPartialPath], addr ret)
  (addr ret).decode_result(TypedArray[Vector2i])

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

const AStarGrid2D_vmap =
  RefCounted.vmap.concat toTable {
    "estimatecost" : "_estimate_cost",
    "computecost" : "_compute_cost",
    }
template vmap*(_: typedesc[AStarGrid2D]): Table[string, string] = AStarGrid2D_vmap