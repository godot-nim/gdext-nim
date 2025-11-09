{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(PhysicsTestMotionResult3D, RefCounted)

proc getTravel*(self: PhysicsTestMotionResult3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionResult3D, "get_travel", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc getRemainder*(self: PhysicsTestMotionResult3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionResult3D, "get_remainder", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc getCollisionSafeFraction*(self: PhysicsTestMotionResult3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionResult3D, "get_collision_safe_fraction", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getCollisionUnsafeFraction*(self: PhysicsTestMotionResult3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionResult3D, "get_collision_unsafe_fraction", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getCollisionCount*(self: PhysicsTestMotionResult3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionResult3D, "get_collision_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getCollisionPoint*(self: PhysicsTestMotionResult3D; collisionIndex: int32 = 0): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionResult3D, "get_collision_point", 1914908202)
  methodbind.ptrcall(self, [getPtr collisionIndex], Vector3)

proc getCollisionNormal*(self: PhysicsTestMotionResult3D; collisionIndex: int32 = 0): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionResult3D, "get_collision_normal", 1914908202)
  methodbind.ptrcall(self, [getPtr collisionIndex], Vector3)

proc getColliderVelocity*(self: PhysicsTestMotionResult3D; collisionIndex: int32 = 0): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionResult3D, "get_collider_velocity", 1914908202)
  methodbind.ptrcall(self, [getPtr collisionIndex], Vector3)

proc getColliderId*(self: PhysicsTestMotionResult3D; collisionIndex: int32 = 0): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionResult3D, "get_collider_id", 1591665591)
  methodbind.ptrcall(self, [getPtr collisionIndex], uint64)

proc getColliderRid*(self: PhysicsTestMotionResult3D; collisionIndex: int32 = 0): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionResult3D, "get_collider_rid", 1231817359)
  methodbind.ptrcall(self, [getPtr collisionIndex], RID)

proc getCollider*(self: PhysicsTestMotionResult3D; collisionIndex: int32 = 0): Object =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionResult3D, "get_collider", 2639523548)
  methodbind.ptrcall(self, [getPtr collisionIndex], Object)

proc getColliderShape*(self: PhysicsTestMotionResult3D; collisionIndex: int32 = 0): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionResult3D, "get_collider_shape", 1591665591)
  methodbind.ptrcall(self, [getPtr collisionIndex], int32)

proc getCollisionLocalShape*(self: PhysicsTestMotionResult3D; collisionIndex: int32 = 0): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionResult3D, "get_collision_local_shape", 1591665591)
  methodbind.ptrcall(self, [getPtr collisionIndex], int32)

proc getCollisionDepth*(self: PhysicsTestMotionResult3D; collisionIndex: int32 = 0): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionResult3D, "get_collision_depth", 218038398)
  methodbind.ptrcall(self, [getPtr collisionIndex], Float)
