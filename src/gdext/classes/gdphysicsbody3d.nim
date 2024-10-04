{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdcollisionobject3d; export gdcollisionobject3d

proc moveAndCollide*(self: PhysicsBody3D; motion: Vector3; testOnly: bool = false; safeMargin: Float = 0.001; recoveryAsCollision: bool = false; maxCollisions: int32 = 1): gdref KinematicCollision3D =
  expandMethodBind(className PhysicsBody3D, "move_and_collide", 3208792678)
  var `?param` = [getPtr motion, getPtr testOnly, getPtr safeMargin, getPtr recoveryAsCollision, getPtr maxCollisions]
  var ret: encoded gdref KinematicCollision3D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref KinematicCollision3D)

proc testMove*(self: PhysicsBody3D; `from`: Transform3D; motion: Vector3; collision: gdref KinematicCollision3D = default gdref KinematicCollision3D; safeMargin: Float = 0.001; recoveryAsCollision: bool = false; maxCollisions: int32 = 1): bool =
  expandMethodBind(className PhysicsBody3D, "test_move", 2481691619)
  var `?param` = [getPtr `from`, getPtr motion, getPtr collision, getPtr safeMargin, getPtr recoveryAsCollision, getPtr maxCollisions]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getGravity*(self: PhysicsBody3D): Vector3 =
  expandMethodBind(className PhysicsBody3D, "get_gravity", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setAxisLock*(self: PhysicsBody3D; axis: PhysicsServer3D_BodyAxis; lock: bool): void =
  expandMethodBind(className PhysicsBody3D, "set_axis_lock", 1787895195)
  var `?param` = [getPtr axis, getPtr lock]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAxisLock*(self: PhysicsBody3D; axis: PhysicsServer3D_BodyAxis): bool =
  expandMethodBind(className PhysicsBody3D, "get_axis_lock", 2264617709)
  var `?param` = [getPtr axis]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getCollisionExceptions*(self: PhysicsBody3D): TypedArray[PhysicsBody3D] =
  expandMethodBind(className PhysicsBody3D, "get_collision_exceptions", 2915620761)
  var ret: encoded TypedArray[PhysicsBody3D]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[PhysicsBody3D])

proc addCollisionExceptionWith*(self: PhysicsBody3D; body: Node): void =
  expandMethodBind(className PhysicsBody3D, "add_collision_exception_with", 1078189570)
  var `?param` = [getPtr body]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeCollisionExceptionWith*(self: PhysicsBody3D; body: Node): void =
  expandMethodBind(className PhysicsBody3D, "remove_collision_exception_with", 1078189570)
  var `?param` = [getPtr body]
  methodbind.ptrcall(self, addr `?param`[0])

template axisLockLinearX*(self: PhysicsBody3D): untyped = self.getAxisLock(1)
template `axisLockLinearX=`*(self: PhysicsBody3D; value) = self.setAxisLock(1, value)

template axisLockLinearY*(self: PhysicsBody3D): untyped = self.getAxisLock(2)
template `axisLockLinearY=`*(self: PhysicsBody3D; value) = self.setAxisLock(2, value)

template axisLockLinearZ*(self: PhysicsBody3D): untyped = self.getAxisLock(4)
template `axisLockLinearZ=`*(self: PhysicsBody3D; value) = self.setAxisLock(4, value)

template axisLockAngularX*(self: PhysicsBody3D): untyped = self.getAxisLock(8)
template `axisLockAngularX=`*(self: PhysicsBody3D; value) = self.setAxisLock(8, value)

template axisLockAngularY*(self: PhysicsBody3D): untyped = self.getAxisLock(16)
template `axisLockAngularY=`*(self: PhysicsBody3D; value) = self.setAxisLock(16, value)

template axisLockAngularZ*(self: PhysicsBody3D): untyped = self.getAxisLock(32)
template `axisLockAngularZ=`*(self: PhysicsBody3D; value) = self.setAxisLock(32, value)

const PhysicsBody3D_vmap =
  CollisionObject3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PhysicsBody3D]): Table[string, string] = PhysicsBody3D_vmap