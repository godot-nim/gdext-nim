{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc intersectPoint*(self: PhysicsDirectSpaceState2D; parameters: gdref PhysicsPointQueryParameters2D; maxRetvals: int32 = 32): TypedArray[Dictionary] =
  expandMethodBind(className PhysicsDirectSpaceState2D, "intersect_point", 2118456068)
  var `?param` = [getPtr parameters, getPtr maxRetvals]
  var ret: encoded TypedArray[Dictionary]
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TypedArray[Dictionary])

proc intersectRay*(self: PhysicsDirectSpaceState2D; parameters: gdref PhysicsRayQueryParameters2D): Dictionary =
  expandMethodBind(className PhysicsDirectSpaceState2D, "intersect_ray", 1590275562)
  var `?param` = [getPtr parameters]
  var ret: encoded Dictionary
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Dictionary)

proc intersectShape*(self: PhysicsDirectSpaceState2D; parameters: gdref PhysicsShapeQueryParameters2D; maxRetvals: int32 = 32): TypedArray[Dictionary] =
  expandMethodBind(className PhysicsDirectSpaceState2D, "intersect_shape", 2488867228)
  var `?param` = [getPtr parameters, getPtr maxRetvals]
  var ret: encoded TypedArray[Dictionary]
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TypedArray[Dictionary])

proc castMotion*(self: PhysicsDirectSpaceState2D; parameters: gdref PhysicsShapeQueryParameters2D): PackedFloat32Array =
  expandMethodBind(className PhysicsDirectSpaceState2D, "cast_motion", 711275086)
  var `?param` = [getPtr parameters]
  var ret: encoded PackedFloat32Array
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedFloat32Array)

proc collideShape*(self: PhysicsDirectSpaceState2D; parameters: gdref PhysicsShapeQueryParameters2D; maxRetvals: int32 = 32): TypedArray[Vector2] =
  expandMethodBind(className PhysicsDirectSpaceState2D, "collide_shape", 2488867228)
  var `?param` = [getPtr parameters, getPtr maxRetvals]
  var ret: encoded TypedArray[Vector2]
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(TypedArray[Vector2])

proc getRestInfo*(self: PhysicsDirectSpaceState2D; parameters: gdref PhysicsShapeQueryParameters2D): Dictionary =
  expandMethodBind(className PhysicsDirectSpaceState2D, "get_rest_info", 2803666496)
  var `?param` = [getPtr parameters]
  var ret: encoded Dictionary
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Dictionary)

const PhysicsDirectSpaceState2D_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PhysicsDirectSpaceState2D]): Table[string, string] = PhysicsDirectSpaceState2D_vmap