{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(PhysicsDirectSpaceState2D, Object)

proc intersectPoint*(self: PhysicsDirectSpaceState2D; parameters: gdref PhysicsPointQueryParameters2D; maxRetvals: int32 = 32): TypedArray[Dictionary] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectSpaceState2D, "intersect_point", 2118456068)
  methodbind.ptrcall(self, [getPtr parameters, getPtr maxRetvals], TypedArray[Dictionary])

proc intersectRay*(self: PhysicsDirectSpaceState2D; parameters: gdref PhysicsRayQueryParameters2D): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectSpaceState2D, "intersect_ray", 1590275562)
  methodbind.ptrcall(self, [getPtr parameters], Dictionary)

proc intersectShape*(self: PhysicsDirectSpaceState2D; parameters: gdref PhysicsShapeQueryParameters2D; maxRetvals: int32 = 32): TypedArray[Dictionary] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectSpaceState2D, "intersect_shape", 2488867228)
  methodbind.ptrcall(self, [getPtr parameters, getPtr maxRetvals], TypedArray[Dictionary])

proc castMotion*(self: PhysicsDirectSpaceState2D; parameters: gdref PhysicsShapeQueryParameters2D): PackedFloat32Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectSpaceState2D, "cast_motion", 711275086)
  methodbind.ptrcall(self, [getPtr parameters], PackedFloat32Array)

proc collideShape*(self: PhysicsDirectSpaceState2D; parameters: gdref PhysicsShapeQueryParameters2D; maxRetvals: int32 = 32): TypedArray[Vector2] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectSpaceState2D, "collide_shape", 2488867228)
  methodbind.ptrcall(self, [getPtr parameters, getPtr maxRetvals], TypedArray[Vector2])

proc getRestInfo*(self: PhysicsDirectSpaceState2D; parameters: gdref PhysicsShapeQueryParameters2D): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsDirectSpaceState2D, "get_rest_info", 2803666496)
  methodbind.ptrcall(self, [getPtr parameters], Dictionary)
