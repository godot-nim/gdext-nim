{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(PhysicsTestMotionParameters3D, RefCounted)

proc getFrom*(self: PhysicsTestMotionParameters3D): Transform3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionParameters3D, "get_from", 3229777777)
  methodbind.ptrcall(self, [], Transform3D)

proc setFrom*(self: PhysicsTestMotionParameters3D; `from`: Transform3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionParameters3D, "set_from", 2952846383)
  methodbind.ptrcall(self, [getPtr `from`], void)

proc getMotion*(self: PhysicsTestMotionParameters3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionParameters3D, "get_motion", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setMotion*(self: PhysicsTestMotionParameters3D; motion: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionParameters3D, "set_motion", 3460891852)
  methodbind.ptrcall(self, [getPtr motion], void)

proc getMargin*(self: PhysicsTestMotionParameters3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionParameters3D, "get_margin", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setMargin*(self: PhysicsTestMotionParameters3D; margin: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionParameters3D, "set_margin", 373806689)
  methodbind.ptrcall(self, [getPtr margin], void)

proc getMaxCollisions*(self: PhysicsTestMotionParameters3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionParameters3D, "get_max_collisions", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setMaxCollisions*(self: PhysicsTestMotionParameters3D; maxCollisions: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionParameters3D, "set_max_collisions", 1286410249)
  methodbind.ptrcall(self, [getPtr maxCollisions], void)

proc isCollideSeparationRayEnabled*(self: PhysicsTestMotionParameters3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionParameters3D, "is_collide_separation_ray_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setCollideSeparationRayEnabled*(self: PhysicsTestMotionParameters3D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionParameters3D, "set_collide_separation_ray_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getExcludeBodies*(self: PhysicsTestMotionParameters3D): TypedArray[RID] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionParameters3D, "get_exclude_bodies", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[RID])

proc setExcludeBodies*(self: PhysicsTestMotionParameters3D; excludeList: TypedArray[RID]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionParameters3D, "set_exclude_bodies", 381264803)
  methodbind.ptrcall(self, [getPtr excludeList], void)

proc getExcludeObjects*(self: PhysicsTestMotionParameters3D): TypedArray[Int] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionParameters3D, "get_exclude_objects", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[Int])

proc setExcludeObjects*(self: PhysicsTestMotionParameters3D; excludeList: TypedArray[Int]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionParameters3D, "set_exclude_objects", 381264803)
  methodbind.ptrcall(self, [getPtr excludeList], void)

proc isRecoveryAsCollisionEnabled*(self: PhysicsTestMotionParameters3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionParameters3D, "is_recovery_as_collision_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setRecoveryAsCollisionEnabled*(self: PhysicsTestMotionParameters3D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsTestMotionParameters3D, "set_recovery_as_collision_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

template `from`*(self: PhysicsTestMotionParameters3D): untyped = self.getFrom()
template `from=`*(self: PhysicsTestMotionParameters3D; value) = self.setFrom(value)

template motion*(self: PhysicsTestMotionParameters3D): untyped = self.getMotion()
template `motion=`*(self: PhysicsTestMotionParameters3D; value) = self.setMotion(value)

template margin*(self: PhysicsTestMotionParameters3D): untyped = self.getMargin()
template `margin=`*(self: PhysicsTestMotionParameters3D; value) = self.setMargin(value)

template maxCollisions*(self: PhysicsTestMotionParameters3D): untyped = self.getMaxCollisions()
template `maxCollisions=`*(self: PhysicsTestMotionParameters3D; value) = self.setMaxCollisions(value)

template collideSeparationRay*(self: PhysicsTestMotionParameters3D): untyped = self.isCollideSeparationRayEnabled()
template `collideSeparationRay=`*(self: PhysicsTestMotionParameters3D; value) = self.setCollideSeparationRayEnabled(value)

template excludeBodies*(self: PhysicsTestMotionParameters3D): untyped = self.getExcludeBodies()
template `excludeBodies=`*(self: PhysicsTestMotionParameters3D; value) = self.setExcludeBodies(value)

template excludeObjects*(self: PhysicsTestMotionParameters3D): untyped = self.getExcludeObjects()
template `excludeObjects=`*(self: PhysicsTestMotionParameters3D; value) = self.setExcludeObjects(value)

template recoveryAsCollision*(self: PhysicsTestMotionParameters3D): untyped = self.isRecoveryAsCollisionEnabled()
template `recoveryAsCollision=`*(self: PhysicsTestMotionParameters3D; value) = self.setRecoveryAsCollisionEnabled(value)
