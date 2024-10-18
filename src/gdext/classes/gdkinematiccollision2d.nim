{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc getPosition*(self: KinematicCollision2D): Vector2 =
  expandMethodBind(className KinematicCollision2D, "get_position", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc getNormal*(self: KinematicCollision2D): Vector2 =
  expandMethodBind(className KinematicCollision2D, "get_normal", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc getTravel*(self: KinematicCollision2D): Vector2 =
  expandMethodBind(className KinematicCollision2D, "get_travel", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc getRemainder*(self: KinematicCollision2D): Vector2 =
  expandMethodBind(className KinematicCollision2D, "get_remainder", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc getAngle*(self: KinematicCollision2D; upDirection: Vector2 = vector2(0, -1)): Float =
  expandMethodBind(className KinematicCollision2D, "get_angle", 2841063350)
  var `?param` = [getPtr upDirection]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc getDepth*(self: KinematicCollision2D): Float =
  expandMethodBind(className KinematicCollision2D, "get_depth", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc getLocalShape*(self: KinematicCollision2D): Object =
  expandMethodBind(className KinematicCollision2D, "get_local_shape", 1981248198)
  var ret: encoded Object
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Object)

proc getCollider*(self: KinematicCollision2D): Object =
  expandMethodBind(className KinematicCollision2D, "get_collider", 1981248198)
  var ret: encoded Object
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Object)

proc getColliderId*(self: KinematicCollision2D): uint64 =
  expandMethodBind(className KinematicCollision2D, "get_collider_id", 3905245786)
  var ret: encoded uint64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint64)

proc getColliderRid*(self: KinematicCollision2D): Rid =
  expandMethodBind(className KinematicCollision2D, "get_collider_rid", 2944877500)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc getColliderShape*(self: KinematicCollision2D): Object =
  expandMethodBind(className KinematicCollision2D, "get_collider_shape", 1981248198)
  var ret: encoded Object
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Object)

proc getColliderShapeIndex*(self: KinematicCollision2D): int32 =
  expandMethodBind(className KinematicCollision2D, "get_collider_shape_index", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getColliderVelocity*(self: KinematicCollision2D): Vector2 =
  expandMethodBind(className KinematicCollision2D, "get_collider_velocity", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

const KinematicCollision2D_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[KinematicCollision2D]): Table[string, string] = KinematicCollision2D_vmap