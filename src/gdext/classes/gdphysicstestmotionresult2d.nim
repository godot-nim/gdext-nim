{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(PhysicsTestMotionResult2D, RefCounted)

proc getTravel*(self: PhysicsTestMotionResult2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionResult2D, "get_travel", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc getRemainder*(self: PhysicsTestMotionResult2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionResult2D, "get_remainder", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc getCollisionPoint*(self: PhysicsTestMotionResult2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionResult2D, "get_collision_point", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc getCollisionNormal*(self: PhysicsTestMotionResult2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionResult2D, "get_collision_normal", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc getColliderVelocity*(self: PhysicsTestMotionResult2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionResult2D, "get_collider_velocity", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc getColliderId*(self: PhysicsTestMotionResult2D): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionResult2D, "get_collider_id", 3905245786)
  methodbind.ptrcall(self, [], uint64)

proc getColliderRid*(self: PhysicsTestMotionResult2D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionResult2D, "get_collider_rid", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc getCollider*(self: PhysicsTestMotionResult2D): Object =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionResult2D, "get_collider", 1981248198)
  methodbind.ptrcall(self, [], Object)

proc getColliderShape*(self: PhysicsTestMotionResult2D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionResult2D, "get_collider_shape", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getCollisionLocalShape*(self: PhysicsTestMotionResult2D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionResult2D, "get_collision_local_shape", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getCollisionDepth*(self: PhysicsTestMotionResult2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionResult2D, "get_collision_depth", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getCollisionSafeFraction*(self: PhysicsTestMotionResult2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionResult2D, "get_collision_safe_fraction", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getCollisionUnsafeFraction*(self: PhysicsTestMotionResult2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionResult2D, "get_collision_unsafe_fraction", 1740695150)
  methodbind.ptrcall(self, [], Float)
