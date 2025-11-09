{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcollisionobject2d; export gdcollisionobject2d

expandOnClassImported(PhysicsBody2D, CollisionObject2D)

proc moveAndCollide*(self: PhysicsBody2D; motion: Vector2; testOnly: bool = false; safeMargin: Float = 0.08; recoveryAsCollision: bool = false): gdref KinematicCollision2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsBody2D, "move_and_collide", 3681923724)
  methodbind.ptrcall(self, [getPtr motion, getPtr testOnly, getPtr safeMargin, getPtr recoveryAsCollision], gdref KinematicCollision2D)

proc testMove*(self: PhysicsBody2D; `from`: Transform2D; motion: Vector2; collision: gdref KinematicCollision2D = default gdref KinematicCollision2D; safeMargin: Float = 0.08; recoveryAsCollision: bool = false): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsBody2D, "test_move", 3324464701)
  methodbind.ptrcall(self, [getPtr `from`, getPtr motion, getPtr collision, getPtr safeMargin, getPtr recoveryAsCollision], bool)

proc getGravity*(self: PhysicsBody2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsBody2D, "get_gravity", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc getCollisionExceptions*(self: PhysicsBody2D): TypedArray[PhysicsBody2D] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsBody2D, "get_collision_exceptions", 2915620761)
  methodbind.ptrcall(self, [], TypedArray[PhysicsBody2D])

proc addCollisionExceptionWith*(self: PhysicsBody2D; body: Node): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsBody2D, "add_collision_exception_with", 1078189570)
  methodbind.ptrcall(self, [getPtr body], void)

proc removeCollisionExceptionWith*(self: PhysicsBody2D; body: Node): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsBody2D, "remove_collision_exception_with", 1078189570)
  methodbind.ptrcall(self, [getPtr body], void)
