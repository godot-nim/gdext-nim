{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(PhysicsDirectSpaceState3D, Object)

proc intersectPoint*(self: PhysicsDirectSpaceState3D; parameters: gdref PhysicsPointQueryParameters3D; maxRetvals: int32 = 32): TypedArray[Dictionary] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectSpaceState3D, "intersect_point", 975173756)
  methodbind.ptrcall(self, [getPtr parameters, getPtr maxRetvals], TypedArray[Dictionary])

proc intersectRay*(self: PhysicsDirectSpaceState3D; parameters: gdref PhysicsRayQueryParameters3D): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectSpaceState3D, "intersect_ray", 3957970750)
  methodbind.ptrcall(self, [getPtr parameters], Dictionary)

proc intersectShape*(self: PhysicsDirectSpaceState3D; parameters: gdref PhysicsShapeQueryParameters3D; maxRetvals: int32 = 32): TypedArray[Dictionary] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectSpaceState3D, "intersect_shape", 3762137681)
  methodbind.ptrcall(self, [getPtr parameters, getPtr maxRetvals], TypedArray[Dictionary])

proc castMotion*(self: PhysicsDirectSpaceState3D; parameters: gdref PhysicsShapeQueryParameters3D): PackedFloat32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectSpaceState3D, "cast_motion", 1778757334)
  methodbind.ptrcall(self, [getPtr parameters], PackedFloat32Array)

proc collideShape*(self: PhysicsDirectSpaceState3D; parameters: gdref PhysicsShapeQueryParameters3D; maxRetvals: int32 = 32): TypedArray[Vector3] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectSpaceState3D, "collide_shape", 3762137681)
  methodbind.ptrcall(self, [getPtr parameters, getPtr maxRetvals], TypedArray[Vector3])

proc getRestInfo*(self: PhysicsDirectSpaceState3D; parameters: gdref PhysicsShapeQueryParameters3D): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectSpaceState3D, "get_rest_info", 1376751592)
  methodbind.ptrcall(self, [getPtr parameters], Dictionary)
