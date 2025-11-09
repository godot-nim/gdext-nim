{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcollisionobject3d; export gdcollisionobject3d

expandOnClassImported(PhysicsBody3D, CollisionObject3D)

proc moveAndCollide*(self: PhysicsBody3D; motion: Vector3; testOnly: bool = false; safeMargin: Float = 0.001; recoveryAsCollision: bool = false; maxCollisions: int32 = 1): gdref KinematicCollision3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsBody3D, "move_and_collide", 3208792678)
  methodbind.ptrcall(self, [getPtr motion, getPtr testOnly, getPtr safeMargin, getPtr recoveryAsCollision, getPtr maxCollisions], gdref KinematicCollision3D)

proc testMove*(self: PhysicsBody3D; `from`: Transform3D; motion: Vector3; collision: gdref KinematicCollision3D = default gdref KinematicCollision3D; safeMargin: Float = 0.001; recoveryAsCollision: bool = false; maxCollisions: int32 = 1): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsBody3D, "test_move", 2481691619)
  methodbind.ptrcall(self, [getPtr `from`, getPtr motion, getPtr collision, getPtr safeMargin, getPtr recoveryAsCollision, getPtr maxCollisions], bool)

proc getGravity*(self: PhysicsBody3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsBody3D, "get_gravity", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setAxisLock*(self: PhysicsBody3D; axis: PhysicsServer3D_BodyAxis; lock: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsBody3D, "set_axis_lock", 1787895195)
  methodbind.ptrcall(self, [getPtr axis, getPtr lock], void)

proc getAxisLock*(self: PhysicsBody3D; axis: PhysicsServer3D_BodyAxis): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsBody3D, "get_axis_lock", 2264617709)
  methodbind.ptrcall(self, [getPtr axis], bool)

proc getCollisionExceptions*(self: PhysicsBody3D): TypedArray[PhysicsBody3D] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsBody3D, "get_collision_exceptions", 2915620761)
  methodbind.ptrcall(self, [], TypedArray[PhysicsBody3D])

proc addCollisionExceptionWith*(self: PhysicsBody3D; body: Node): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsBody3D, "add_collision_exception_with", 1078189570)
  methodbind.ptrcall(self, [getPtr body], void)

proc removeCollisionExceptionWith*(self: PhysicsBody3D; body: Node): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsBody3D, "remove_collision_exception_with", 1078189570)
  methodbind.ptrcall(self, [getPtr body], void)

template axisLockLinearX*(self: PhysicsBody3D): untyped = self.getAxisLock(PhysicsServer3D_BodyAxis(1))
template `axisLockLinearX=`*(self: PhysicsBody3D; value) = self.setAxisLock(PhysicsServer3D_BodyAxis(1), value)

template axisLockLinearY*(self: PhysicsBody3D): untyped = self.getAxisLock(PhysicsServer3D_BodyAxis(2))
template `axisLockLinearY=`*(self: PhysicsBody3D; value) = self.setAxisLock(PhysicsServer3D_BodyAxis(2), value)

template axisLockLinearZ*(self: PhysicsBody3D): untyped = self.getAxisLock(PhysicsServer3D_BodyAxis(4))
template `axisLockLinearZ=`*(self: PhysicsBody3D; value) = self.setAxisLock(PhysicsServer3D_BodyAxis(4), value)

template axisLockAngularX*(self: PhysicsBody3D): untyped = self.getAxisLock(PhysicsServer3D_BodyAxis(8))
template `axisLockAngularX=`*(self: PhysicsBody3D; value) = self.setAxisLock(PhysicsServer3D_BodyAxis(8), value)

template axisLockAngularY*(self: PhysicsBody3D): untyped = self.getAxisLock(PhysicsServer3D_BodyAxis(16))
template `axisLockAngularY=`*(self: PhysicsBody3D; value) = self.setAxisLock(PhysicsServer3D_BodyAxis(16), value)

template axisLockAngularZ*(self: PhysicsBody3D): untyped = self.getAxisLock(PhysicsServer3D_BodyAxis(32))
template `axisLockAngularZ=`*(self: PhysicsBody3D; value) = self.setAxisLock(PhysicsServer3D_BodyAxis(32), value)
