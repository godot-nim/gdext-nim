{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(KinematicCollision3D, RefCounted)

proc getTravel*(self: KinematicCollision3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className KinematicCollision3D, "get_travel", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc getRemainder*(self: KinematicCollision3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className KinematicCollision3D, "get_remainder", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc getDepth*(self: KinematicCollision3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className KinematicCollision3D, "get_depth", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getCollisionCount*(self: KinematicCollision3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className KinematicCollision3D, "get_collision_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getPosition*(self: KinematicCollision3D; collisionIndex: int32 = 0): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className KinematicCollision3D, "get_position", 1914908202)
  methodbind.ptrcall(self, [getPtr collisionIndex], Vector3)

proc getNormal*(self: KinematicCollision3D; collisionIndex: int32 = 0): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className KinematicCollision3D, "get_normal", 1914908202)
  methodbind.ptrcall(self, [getPtr collisionIndex], Vector3)

proc getAngle*(self: KinematicCollision3D; collisionIndex: int32 = 0; upDirection: Vector3 = vector3(0, 1, 0)): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className KinematicCollision3D, "get_angle", 1242741860)
  methodbind.ptrcall(self, [getPtr collisionIndex, getPtr upDirection], Float)

proc getLocalShape*(self: KinematicCollision3D; collisionIndex: int32 = 0): Object =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className KinematicCollision3D, "get_local_shape", 2639523548)
  methodbind.ptrcall(self, [getPtr collisionIndex], Object)

proc getCollider*(self: KinematicCollision3D; collisionIndex: int32 = 0): Object =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className KinematicCollision3D, "get_collider", 2639523548)
  methodbind.ptrcall(self, [getPtr collisionIndex], Object)

proc getColliderId*(self: KinematicCollision3D; collisionIndex: int32 = 0): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className KinematicCollision3D, "get_collider_id", 1591665591)
  methodbind.ptrcall(self, [getPtr collisionIndex], uint64)

proc getColliderRid*(self: KinematicCollision3D; collisionIndex: int32 = 0): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className KinematicCollision3D, "get_collider_rid", 1231817359)
  methodbind.ptrcall(self, [getPtr collisionIndex], RID)

proc getColliderShape*(self: KinematicCollision3D; collisionIndex: int32 = 0): Object =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className KinematicCollision3D, "get_collider_shape", 2639523548)
  methodbind.ptrcall(self, [getPtr collisionIndex], Object)

proc getColliderShapeIndex*(self: KinematicCollision3D; collisionIndex: int32 = 0): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className KinematicCollision3D, "get_collider_shape_index", 1591665591)
  methodbind.ptrcall(self, [getPtr collisionIndex], int32)

proc getColliderVelocity*(self: KinematicCollision3D; collisionIndex: int32 = 0): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className KinematicCollision3D, "get_collider_velocity", 1914908202)
  methodbind.ptrcall(self, [getPtr collisionIndex], Vector3)
