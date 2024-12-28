{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc getTravel*(self: PhysicsTestMotionResult2D): Vector2 =
  expandMethodBind(className PhysicsTestMotionResult2D, "get_travel", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc getRemainder*(self: PhysicsTestMotionResult2D): Vector2 =
  expandMethodBind(className PhysicsTestMotionResult2D, "get_remainder", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc getCollisionPoint*(self: PhysicsTestMotionResult2D): Vector2 =
  expandMethodBind(className PhysicsTestMotionResult2D, "get_collision_point", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc getCollisionNormal*(self: PhysicsTestMotionResult2D): Vector2 =
  expandMethodBind(className PhysicsTestMotionResult2D, "get_collision_normal", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc getColliderVelocity*(self: PhysicsTestMotionResult2D): Vector2 =
  expandMethodBind(className PhysicsTestMotionResult2D, "get_collider_velocity", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc getColliderId*(self: PhysicsTestMotionResult2D): uint64 =
  expandMethodBind(className PhysicsTestMotionResult2D, "get_collider_id", 3905245786)
  var ret: encoded uint64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint64)

proc getColliderRid*(self: PhysicsTestMotionResult2D): RID =
  expandMethodBind(className PhysicsTestMotionResult2D, "get_collider_rid", 2944877500)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc getCollider*(self: PhysicsTestMotionResult2D): Object =
  expandMethodBind(className PhysicsTestMotionResult2D, "get_collider", 1981248198)
  var ret: encoded Object
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Object)

proc getColliderShape*(self: PhysicsTestMotionResult2D): int32 =
  expandMethodBind(className PhysicsTestMotionResult2D, "get_collider_shape", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getCollisionLocalShape*(self: PhysicsTestMotionResult2D): int32 =
  expandMethodBind(className PhysicsTestMotionResult2D, "get_collision_local_shape", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getCollisionDepth*(self: PhysicsTestMotionResult2D): Float =
  expandMethodBind(className PhysicsTestMotionResult2D, "get_collision_depth", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc getCollisionSafeFraction*(self: PhysicsTestMotionResult2D): Float =
  expandMethodBind(className PhysicsTestMotionResult2D, "get_collision_safe_fraction", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc getCollisionUnsafeFraction*(self: PhysicsTestMotionResult2D): Float =
  expandMethodBind(className PhysicsTestMotionResult2D, "get_collision_unsafe_fraction", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

const PhysicsTestMotionResult2D_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PhysicsTestMotionResult2D]): Table[string, string] = PhysicsTestMotionResult2D_vmap