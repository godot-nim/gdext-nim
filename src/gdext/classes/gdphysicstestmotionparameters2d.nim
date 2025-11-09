{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(PhysicsTestMotionParameters2D, RefCounted)

proc getFrom*(self: PhysicsTestMotionParameters2D): Transform2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionParameters2D, "get_from", 3814499831)
  methodbind.ptrcall(self, [], Transform2D)

proc setFrom*(self: PhysicsTestMotionParameters2D; `from`: Transform2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionParameters2D, "set_from", 2761652528)
  methodbind.ptrcall(self, [getPtr `from`], void)

proc getMotion*(self: PhysicsTestMotionParameters2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionParameters2D, "get_motion", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setMotion*(self: PhysicsTestMotionParameters2D; motion: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionParameters2D, "set_motion", 743155724)
  methodbind.ptrcall(self, [getPtr motion], void)

proc getMargin*(self: PhysicsTestMotionParameters2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionParameters2D, "get_margin", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setMargin*(self: PhysicsTestMotionParameters2D; margin: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionParameters2D, "set_margin", 373806689)
  methodbind.ptrcall(self, [getPtr margin], void)

proc isCollideSeparationRayEnabled*(self: PhysicsTestMotionParameters2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionParameters2D, "is_collide_separation_ray_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setCollideSeparationRayEnabled*(self: PhysicsTestMotionParameters2D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionParameters2D, "set_collide_separation_ray_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getExcludeBodies*(self: PhysicsTestMotionParameters2D): TypedArray[RID] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionParameters2D, "get_exclude_bodies", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[RID])

proc setExcludeBodies*(self: PhysicsTestMotionParameters2D; excludeList: TypedArray[RID]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionParameters2D, "set_exclude_bodies", 381264803)
  methodbind.ptrcall(self, [getPtr excludeList], void)

proc getExcludeObjects*(self: PhysicsTestMotionParameters2D): TypedArray[Int] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionParameters2D, "get_exclude_objects", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[Int])

proc setExcludeObjects*(self: PhysicsTestMotionParameters2D; excludeList: TypedArray[Int]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionParameters2D, "set_exclude_objects", 381264803)
  methodbind.ptrcall(self, [getPtr excludeList], void)

proc isRecoveryAsCollisionEnabled*(self: PhysicsTestMotionParameters2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionParameters2D, "is_recovery_as_collision_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setRecoveryAsCollisionEnabled*(self: PhysicsTestMotionParameters2D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionParameters2D, "set_recovery_as_collision_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

template `from`*(self: PhysicsTestMotionParameters2D): untyped = self.getFrom()
template `from=`*(self: PhysicsTestMotionParameters2D; value) = self.setFrom(value)

template motion*(self: PhysicsTestMotionParameters2D): untyped = self.getMotion()
template `motion=`*(self: PhysicsTestMotionParameters2D; value) = self.setMotion(value)

template margin*(self: PhysicsTestMotionParameters2D): untyped = self.getMargin()
template `margin=`*(self: PhysicsTestMotionParameters2D; value) = self.setMargin(value)

template collideSeparationRay*(self: PhysicsTestMotionParameters2D): untyped = self.isCollideSeparationRayEnabled()
template `collideSeparationRay=`*(self: PhysicsTestMotionParameters2D; value) = self.setCollideSeparationRayEnabled(value)

template excludeBodies*(self: PhysicsTestMotionParameters2D): untyped = self.getExcludeBodies()
template `excludeBodies=`*(self: PhysicsTestMotionParameters2D; value) = self.setExcludeBodies(value)

template excludeObjects*(self: PhysicsTestMotionParameters2D): untyped = self.getExcludeObjects()
template `excludeObjects=`*(self: PhysicsTestMotionParameters2D; value) = self.setExcludeObjects(value)

template recoveryAsCollision*(self: PhysicsTestMotionParameters2D): untyped = self.isRecoveryAsCollisionEnabled()
template `recoveryAsCollision=`*(self: PhysicsTestMotionParameters2D; value) = self.setRecoveryAsCollisionEnabled(value)
