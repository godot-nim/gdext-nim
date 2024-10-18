{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcollisionobject2d; export gdcollisionobject2d

proc moveAndCollide*(self: PhysicsBody2D; motion: Vector2; testOnly: bool = false; safeMargin: Float = 0.08; recoveryAsCollision: bool = false): gdref KinematicCollision2D =
  expandMethodBind(className PhysicsBody2D, "move_and_collide", 3681923724)
  var `?param` = [getPtr motion, getPtr testOnly, getPtr safeMargin, getPtr recoveryAsCollision]
  var ret: encoded gdref KinematicCollision2D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref KinematicCollision2D)

proc testMove*(self: PhysicsBody2D; `from`: Transform2D; motion: Vector2; collision: gdref KinematicCollision2D = default gdref KinematicCollision2D; safeMargin: Float = 0.08; recoveryAsCollision: bool = false): bool =
  expandMethodBind(className PhysicsBody2D, "test_move", 3324464701)
  var `?param` = [getPtr `from`, getPtr motion, getPtr collision, getPtr safeMargin, getPtr recoveryAsCollision]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getGravity*(self: PhysicsBody2D): Vector2 =
  expandMethodBind(className PhysicsBody2D, "get_gravity", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc getCollisionExceptions*(self: PhysicsBody2D): TypedArray[PhysicsBody2D] =
  expandMethodBind(className PhysicsBody2D, "get_collision_exceptions", 2915620761)
  var ret: encoded TypedArray[PhysicsBody2D]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[PhysicsBody2D])

proc addCollisionExceptionWith*(self: PhysicsBody2D; body: Node): void =
  expandMethodBind(className PhysicsBody2D, "add_collision_exception_with", 1078189570)
  var `?param` = [getPtr body]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeCollisionExceptionWith*(self: PhysicsBody2D; body: Node): void =
  expandMethodBind(className PhysicsBody2D, "remove_collision_exception_with", 1078189570)
  var `?param` = [getPtr body]
  methodbind.ptrcall(self, addr `?param`[0])

const PhysicsBody2D_vmap =
  CollisionObject2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PhysicsBody2D]): Table[string, string] = PhysicsBody2D_vmap