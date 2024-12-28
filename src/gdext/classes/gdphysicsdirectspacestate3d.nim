{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc intersectPoint*(self: PhysicsDirectSpaceState3D; parameters: gdref PhysicsPointQueryParameters3D; maxRetvals: int32 = 32): TypedArray[Dictionary] =
  expandMethodBind(className PhysicsDirectSpaceState3D, "intersect_point", 975173756)
  var ret: encoded TypedArray[Dictionary]
  methodbind.ptrcall(self, [getPtr parameters, getPtr maxRetvals], addr ret)
  (addr ret).decode_result(TypedArray[Dictionary])

proc intersectRay*(self: PhysicsDirectSpaceState3D; parameters: gdref PhysicsRayQueryParameters3D): Dictionary =
  expandMethodBind(className PhysicsDirectSpaceState3D, "intersect_ray", 3957970750)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, [getPtr parameters], addr ret)
  (addr ret).decode_result(Dictionary)

proc intersectShape*(self: PhysicsDirectSpaceState3D; parameters: gdref PhysicsShapeQueryParameters3D; maxRetvals: int32 = 32): TypedArray[Dictionary] =
  expandMethodBind(className PhysicsDirectSpaceState3D, "intersect_shape", 3762137681)
  var ret: encoded TypedArray[Dictionary]
  methodbind.ptrcall(self, [getPtr parameters, getPtr maxRetvals], addr ret)
  (addr ret).decode_result(TypedArray[Dictionary])

proc castMotion*(self: PhysicsDirectSpaceState3D; parameters: gdref PhysicsShapeQueryParameters3D): PackedFloat32Array =
  expandMethodBind(className PhysicsDirectSpaceState3D, "cast_motion", 1778757334)
  var ret: encoded PackedFloat32Array
  methodbind.ptrcall(self, [getPtr parameters], addr ret)
  (addr ret).decode_result(PackedFloat32Array)

proc collideShape*(self: PhysicsDirectSpaceState3D; parameters: gdref PhysicsShapeQueryParameters3D; maxRetvals: int32 = 32): TypedArray[Vector3] =
  expandMethodBind(className PhysicsDirectSpaceState3D, "collide_shape", 3762137681)
  var ret: encoded TypedArray[Vector3]
  methodbind.ptrcall(self, [getPtr parameters, getPtr maxRetvals], addr ret)
  (addr ret).decode_result(TypedArray[Vector3])

proc getRestInfo*(self: PhysicsDirectSpaceState3D; parameters: gdref PhysicsShapeQueryParameters3D): Dictionary =
  expandMethodBind(className PhysicsDirectSpaceState3D, "get_rest_info", 1376751592)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, [getPtr parameters], addr ret)
  (addr ret).decode_result(Dictionary)

const PhysicsDirectSpaceState3D_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PhysicsDirectSpaceState3D]): Table[string, string] = PhysicsDirectSpaceState3D_vmap