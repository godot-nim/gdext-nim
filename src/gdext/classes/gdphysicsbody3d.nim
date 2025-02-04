{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcollisionobject3d; export gdcollisionobject3d

proc moveAndCollide*(self: PhysicsBody3D; motion: Vector3; testOnly: bool = false; safeMargin: Float = 0.001; recoveryAsCollision: bool = false; maxCollisions: int32 = 1): gdref KinematicCollision3D =
  expandMethodBind(className PhysicsBody3D, "move_and_collide", 3208792678)
  var ret: encoded gdref KinematicCollision3D
  methodbind.ptrcall(self, [getPtr motion, getPtr testOnly, getPtr safeMargin, getPtr recoveryAsCollision, getPtr maxCollisions], addr ret)
  (addr ret).decode_result(gdref KinematicCollision3D)

proc testMove*(self: PhysicsBody3D; `from`: Transform3D; motion: Vector3; collision: gdref KinematicCollision3D = default gdref KinematicCollision3D; safeMargin: Float = 0.001; recoveryAsCollision: bool = false; maxCollisions: int32 = 1): bool =
  expandMethodBind(className PhysicsBody3D, "test_move", 2481691619)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr `from`, getPtr motion, getPtr collision, getPtr safeMargin, getPtr recoveryAsCollision, getPtr maxCollisions], addr ret)
  (addr ret).decode_result(bool)

proc getGravity*(self: PhysicsBody3D): Vector3 =
  expandMethodBind(className PhysicsBody3D, "get_gravity", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector3)

proc setAxisLock*(self: PhysicsBody3D; axis: PhysicsServer3D_BodyAxis; lock: bool): void =
  expandMethodBind(className PhysicsBody3D, "set_axis_lock", 1787895195)
  methodbind.ptrcall(self, [getPtr axis, getPtr lock])

proc getAxisLock*(self: PhysicsBody3D; axis: PhysicsServer3D_BodyAxis): bool =
  expandMethodBind(className PhysicsBody3D, "get_axis_lock", 2264617709)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr axis], addr ret)
  (addr ret).decode_result(bool)

proc getCollisionExceptions*(self: PhysicsBody3D): TypedArray[PhysicsBody3D] =
  expandMethodBind(className PhysicsBody3D, "get_collision_exceptions", 2915620761)
  var ret: encoded TypedArray[PhysicsBody3D]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TypedArray[PhysicsBody3D])

proc addCollisionExceptionWith*(self: PhysicsBody3D; body: Node): void =
  expandMethodBind(className PhysicsBody3D, "add_collision_exception_with", 1078189570)
  methodbind.ptrcall(self, [getPtr body])

proc removeCollisionExceptionWith*(self: PhysicsBody3D; body: Node): void =
  expandMethodBind(className PhysicsBody3D, "remove_collision_exception_with", 1078189570)
  methodbind.ptrcall(self, [getPtr body])

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

const PhysicsBody3D_vmap =
  CollisionObject3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PhysicsBody3D]): Table[string, string] = PhysicsBody3D_vmap