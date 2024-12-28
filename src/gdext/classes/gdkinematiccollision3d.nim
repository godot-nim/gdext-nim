{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc getTravel*(self: KinematicCollision3D): Vector3 =
  expandMethodBind(className KinematicCollision3D, "get_travel", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector3)

proc getRemainder*(self: KinematicCollision3D): Vector3 =
  expandMethodBind(className KinematicCollision3D, "get_remainder", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector3)

proc getDepth*(self: KinematicCollision3D): Float =
  expandMethodBind(className KinematicCollision3D, "get_depth", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc getCollisionCount*(self: KinematicCollision3D): int32 =
  expandMethodBind(className KinematicCollision3D, "get_collision_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getPosition*(self: KinematicCollision3D; collisionIndex: int32 = 0): Vector3 =
  expandMethodBind(className KinematicCollision3D, "get_position", 1914908202)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [getPtr collisionIndex], addr ret)
  (addr ret).decode_result(Vector3)

proc getNormal*(self: KinematicCollision3D; collisionIndex: int32 = 0): Vector3 =
  expandMethodBind(className KinematicCollision3D, "get_normal", 1914908202)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [getPtr collisionIndex], addr ret)
  (addr ret).decode_result(Vector3)

proc getAngle*(self: KinematicCollision3D; collisionIndex: int32 = 0; upDirection: Vector3 = vector3(0, 1, 0)): Float =
  expandMethodBind(className KinematicCollision3D, "get_angle", 1242741860)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr collisionIndex, getPtr upDirection], addr ret)
  (addr ret).decode_result(Float)

proc getLocalShape*(self: KinematicCollision3D; collisionIndex: int32 = 0): Object =
  expandMethodBind(className KinematicCollision3D, "get_local_shape", 2639523548)
  var ret: encoded Object
  methodbind.ptrcall(self, [getPtr collisionIndex], addr ret)
  (addr ret).decode_result(Object)

proc getCollider*(self: KinematicCollision3D; collisionIndex: int32 = 0): Object =
  expandMethodBind(className KinematicCollision3D, "get_collider", 2639523548)
  var ret: encoded Object
  methodbind.ptrcall(self, [getPtr collisionIndex], addr ret)
  (addr ret).decode_result(Object)

proc getColliderId*(self: KinematicCollision3D; collisionIndex: int32 = 0): uint64 =
  expandMethodBind(className KinematicCollision3D, "get_collider_id", 1591665591)
  var ret: encoded uint64
  methodbind.ptrcall(self, [getPtr collisionIndex], addr ret)
  (addr ret).decode_result(uint64)

proc getColliderRid*(self: KinematicCollision3D; collisionIndex: int32 = 0): RID =
  expandMethodBind(className KinematicCollision3D, "get_collider_rid", 1231817359)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr collisionIndex], addr ret)
  (addr ret).decode_result(RID)

proc getColliderShape*(self: KinematicCollision3D; collisionIndex: int32 = 0): Object =
  expandMethodBind(className KinematicCollision3D, "get_collider_shape", 2639523548)
  var ret: encoded Object
  methodbind.ptrcall(self, [getPtr collisionIndex], addr ret)
  (addr ret).decode_result(Object)

proc getColliderShapeIndex*(self: KinematicCollision3D; collisionIndex: int32 = 0): int32 =
  expandMethodBind(className KinematicCollision3D, "get_collider_shape_index", 1591665591)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr collisionIndex], addr ret)
  (addr ret).decode_result(int32)

proc getColliderVelocity*(self: KinematicCollision3D; collisionIndex: int32 = 0): Vector3 =
  expandMethodBind(className KinematicCollision3D, "get_collider_velocity", 1914908202)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [getPtr collisionIndex], addr ret)
  (addr ret).decode_result(Vector3)

const KinematicCollision3D_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[KinematicCollision3D]): Table[string, string] = KinematicCollision3D_vmap