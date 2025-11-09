{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(KinematicCollision2D, RefCounted)

proc getPosition*(self: KinematicCollision2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className KinematicCollision2D, "get_position", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc getNormal*(self: KinematicCollision2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className KinematicCollision2D, "get_normal", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc getTravel*(self: KinematicCollision2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className KinematicCollision2D, "get_travel", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc getRemainder*(self: KinematicCollision2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className KinematicCollision2D, "get_remainder", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc getAngle*(self: KinematicCollision2D; upDirection: Vector2 = vector2(0, -1)): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className KinematicCollision2D, "get_angle", 2841063350)
  methodbind.ptrcall(self, [getPtr upDirection], Float)

proc getDepth*(self: KinematicCollision2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className KinematicCollision2D, "get_depth", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getLocalShape*(self: KinematicCollision2D): Object =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className KinematicCollision2D, "get_local_shape", 1981248198)
  methodbind.ptrcall(self, [], Object)

proc getCollider*(self: KinematicCollision2D): Object =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className KinematicCollision2D, "get_collider", 1981248198)
  methodbind.ptrcall(self, [], Object)

proc getColliderId*(self: KinematicCollision2D): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className KinematicCollision2D, "get_collider_id", 3905245786)
  methodbind.ptrcall(self, [], uint64)

proc getColliderRid*(self: KinematicCollision2D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className KinematicCollision2D, "get_collider_rid", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc getColliderShape*(self: KinematicCollision2D): Object =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className KinematicCollision2D, "get_collider_shape", 1981248198)
  methodbind.ptrcall(self, [], Object)

proc getColliderShapeIndex*(self: KinematicCollision2D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className KinematicCollision2D, "get_collider_shape_index", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getColliderVelocity*(self: KinematicCollision2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className KinematicCollision2D, "get_collider_velocity", 3341600327)
  methodbind.ptrcall(self, [], Vector2)
