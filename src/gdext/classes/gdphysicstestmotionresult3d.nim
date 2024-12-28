{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc getTravel*(self: PhysicsTestMotionResult3D): Vector3 =
  expandMethodBind(className PhysicsTestMotionResult3D, "get_travel", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector3)

proc getRemainder*(self: PhysicsTestMotionResult3D): Vector3 =
  expandMethodBind(className PhysicsTestMotionResult3D, "get_remainder", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector3)

proc getCollisionSafeFraction*(self: PhysicsTestMotionResult3D): Float =
  expandMethodBind(className PhysicsTestMotionResult3D, "get_collision_safe_fraction", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc getCollisionUnsafeFraction*(self: PhysicsTestMotionResult3D): Float =
  expandMethodBind(className PhysicsTestMotionResult3D, "get_collision_unsafe_fraction", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc getCollisionCount*(self: PhysicsTestMotionResult3D): int32 =
  expandMethodBind(className PhysicsTestMotionResult3D, "get_collision_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getCollisionPoint*(self: PhysicsTestMotionResult3D; collisionIndex: int32 = 0): Vector3 =
  expandMethodBind(className PhysicsTestMotionResult3D, "get_collision_point", 1914908202)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [getPtr collisionIndex], addr ret)
  (addr ret).decode_result(Vector3)

proc getCollisionNormal*(self: PhysicsTestMotionResult3D; collisionIndex: int32 = 0): Vector3 =
  expandMethodBind(className PhysicsTestMotionResult3D, "get_collision_normal", 1914908202)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [getPtr collisionIndex], addr ret)
  (addr ret).decode_result(Vector3)

proc getColliderVelocity*(self: PhysicsTestMotionResult3D; collisionIndex: int32 = 0): Vector3 =
  expandMethodBind(className PhysicsTestMotionResult3D, "get_collider_velocity", 1914908202)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [getPtr collisionIndex], addr ret)
  (addr ret).decode_result(Vector3)

proc getColliderId*(self: PhysicsTestMotionResult3D; collisionIndex: int32 = 0): uint64 =
  expandMethodBind(className PhysicsTestMotionResult3D, "get_collider_id", 1591665591)
  var ret: encoded uint64
  methodbind.ptrcall(self, [getPtr collisionIndex], addr ret)
  (addr ret).decode_result(uint64)

proc getColliderRid*(self: PhysicsTestMotionResult3D; collisionIndex: int32 = 0): RID =
  expandMethodBind(className PhysicsTestMotionResult3D, "get_collider_rid", 1231817359)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr collisionIndex], addr ret)
  (addr ret).decode_result(RID)

proc getCollider*(self: PhysicsTestMotionResult3D; collisionIndex: int32 = 0): Object =
  expandMethodBind(className PhysicsTestMotionResult3D, "get_collider", 2639523548)
  var ret: encoded Object
  methodbind.ptrcall(self, [getPtr collisionIndex], addr ret)
  (addr ret).decode_result(Object)

proc getColliderShape*(self: PhysicsTestMotionResult3D; collisionIndex: int32 = 0): int32 =
  expandMethodBind(className PhysicsTestMotionResult3D, "get_collider_shape", 1591665591)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr collisionIndex], addr ret)
  (addr ret).decode_result(int32)

proc getCollisionLocalShape*(self: PhysicsTestMotionResult3D; collisionIndex: int32 = 0): int32 =
  expandMethodBind(className PhysicsTestMotionResult3D, "get_collision_local_shape", 1591665591)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr collisionIndex], addr ret)
  (addr ret).decode_result(int32)

proc getCollisionDepth*(self: PhysicsTestMotionResult3D; collisionIndex: int32 = 0): Float =
  expandMethodBind(className PhysicsTestMotionResult3D, "get_collision_depth", 218038398)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr collisionIndex], addr ret)
  (addr ret).decode_result(Float)

const PhysicsTestMotionResult3D_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PhysicsTestMotionResult3D]): Table[string, string] = PhysicsTestMotionResult3D_vmap