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
  var `?param` = [getPtr region]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRegion*(self: AStarGrid2D): Rect2i =
  expandMethodBind(className AStarGrid2D, "get_region", 410525958)
  var ret: encoded Rect2i
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rect2i)

proc setSize*(self: AStarGrid2D; size: Vector2i): void =
  expandMethodBind(className AStarGrid2D, "set_size", 1130785943)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSize*(self: AStarGrid2D): Vector2i =
  expandMethodBind(className AStarGrid2D, "get_size", 3690982128)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2i)

proc setOffset*(self: AStarGrid2D; offset: Vector2): void =
  expandMethodBind(className AStarGrid2D, "set_offset", 743155724)
  var `?param` = [getPtr offset]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOffset*(self: AStarGrid2D): Vector2 =
  expandMethodBind(className AStarGrid2D, "get_offset", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setCellSize*(self: AStarGrid2D; cellSize: Vector2): void =
  expandMethodBind(className AStarGrid2D, "set_cell_size", 743155724)
  var `?param` = [getPtr cellSize]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCellSize*(self: AStarGrid2D): Vector2 =
  expandMethodBind(className AStarGrid2D, "get_cell_size", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setCellShape*(self: AStarGrid2D; cellShape: AStarGrid2D_CellShape): void =
  expandMethodBind(className AStarGrid2D, "set_cell_shape", 4130591146)
  var `?param` = [getPtr cellShape]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCellShape*(self: AStarGrid2D): AStarGrid2D_CellShape =
  expandMethodBind(className AStarGrid2D, "get_cell_shape", 3293463634)
  var ret: encoded AStarGrid2D_CellShape
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(AStarGrid2D_CellShape)

proc isInBounds*(self: AStarGrid2D; x: int32; y: int32): bool =
  expandMethodBind(className AStarGrid2D, "is_in_bounds", 2522259332)
  var `?param` = [getPtr x, getPtr y]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc isInBoundsv*(self: AStarGrid2D; id: Vector2i): bool =
  expandMethodBind(className AStarGrid2D, "is_in_boundsv", 3900751641)
  var `?param` = [getPtr id]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc isDirty*(self: AStarGrid2D): bool =
  expandMethodBind(className AStarGrid2D, "is_dirty", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc update*(self: AStarGrid2D): void =
  expandMethodBind(className AStarGrid2D, "update", 3218959716)
  methodbind.ptrcall(self, nil)

proc setJumpingEnabled*(self: AStarGrid2D; enabled: bool): void =
  expandMethodBind(className AStarGrid2D, "set_jumping_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isJumpingEnabled*(self: AStarGrid2D): bool =
  expandMethodBind(className AStarGrid2D, "is_jumping_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setDiagonalMode*(self: AStarGrid2D; mode: AStarGrid2D_DiagonalMode): void =
  expandMethodBind(className AStarGrid2D, "set_diagonal_mode", 1017829798)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDiagonalMode*(self: AStarGrid2D): AStarGrid2D_DiagonalMode =
  expandMethodBind(className AStarGrid2D, "get_diagonal_mode", 3129282674)
  var ret: encoded AStarGrid2D_DiagonalMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(AStarGrid2D_DiagonalMode)

proc setDefaultComputeHeuristic*(self: AStarGrid2D; heuristic: AStarGrid2D_Heuristic): void =
  expandMethodBind(className AStarGrid2D, "set_default_compute_heuristic", 1044375519)
  var `?param` = [getPtr heuristic]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDefaultComputeHeuristic*(self: AStarGrid2D): AStarGrid2D_Heuristic =
  expandMethodBind(className AStarGrid2D, "get_default_compute_heuristic", 2074731422)
  var ret: encoded AStarGrid2D_Heuristic
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(AStarGrid2D_Heuristic)

proc setDefaultEstimateHeuristic*(self: AStarGrid2D; heuristic: AStarGrid2D_Heuristic): void =
  expandMethodBind(className AStarGrid2D, "set_default_estimate_heuristic", 1044375519)
  var `?param` = [getPtr heuristic]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDefaultEstimateHeuristic*(self: AStarGrid2D): AStarGrid2D_Heuristic =
  expandMethodBind(className AStarGrid2D, "get_default_estimate_heuristic", 2074731422)
  var ret: encoded AStarGrid2D_Heuristic
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(AStarGrid2D_Heuristic)

proc setPointSolid*(self: AStarGrid2D; id: Vector2i; solid: bool = true): void =
  expandMethodBind(className AStarGrid2D, "set_point_solid", 1765703753)
  var `?param` = [getPtr id, getPtr solid]
  methodbind.ptrcall(self, addr `?param`[0])

proc isPointSolid*(self: AStarGrid2D; id: Vector2i): bool =
  expandMethodBind(className AStarGrid2D, "is_point_solid", 3900751641)
  var `?param` = [getPtr id]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setPointWeightScale*(self: AStarGrid2D; id: Vector2i; weightScale: Float): void =
  expandMethodBind(className AStarGrid2D, "set_point_weight_scale", 2262553149)
  var `?param` = [getPtr id, getPtr weightScale]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPointWeightScale*(self: AStarGrid2D; id: Vector2i): Float =
  expandMethodBind(className AStarGrid2D, "get_point_weight_scale", 719993801)
  var `?param` = [getPtr id]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc fillSolidRegion*(self: AStarGrid2D; region: Rect2i; solid: bool = true): void =
  expandMethodBind(className AStarGrid2D, "fill_solid_region", 2261970063)
  var `?param` = [getPtr region, getPtr solid]
  methodbind.ptrcall(self, addr `?param`[0])

proc fillWeightScaleRegion*(self: AStarGrid2D; region: Rect2i; weightScale: Float): void =
  expandMethodBind(className AStarGrid2D, "fill_weight_scale_region", 2793244083)
  var `?param` = [getPtr region, getPtr weightScale]
  methodbind.ptrcall(self, addr `?param`[0])

proc clear*(self: AStarGrid2D): void =
  expandMethodBind(className AStarGrid2D, "clear", 3218959716)
  methodbind.ptrcall(self, nil)

proc getPointPosition*(self: AStarGrid2D; id: Vector2i): Vector2 =
  expandMethodBind(className AStarGrid2D, "get_point_position", 108438297)
  var `?param` = [getPtr id]
  var ret: encoded Vector2
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2)

proc getPointPath*(self: AStarGrid2D; fromId: Vector2i; toId: Vector2i; allowPartialPath: bool = false): PackedVector2Array =
  expandMethodBind(className AStarGrid2D, "get_point_path", 1641925693)
  var `?param` = [getPtr fromId, getPtr toId, getPtr allowPartialPath]
  var ret: encoded PackedVector2Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedVector2Array)

proc getIdPath*(self: AStarGrid2D; fromId: Vector2i; toId: Vector2i; allowPartialPath: bool = false): TypedArray[Vector2i] =
  expandMethodBind(className AStarGrid2D, "get_id_path", 1918132273)
  var `?param` = [getPtr fromId, getPtr toId, getPtr allowPartialPath]
  var ret: encoded TypedArray[Vector2i]
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
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