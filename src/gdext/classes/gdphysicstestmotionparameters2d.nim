{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc getFrom*(self: PhysicsTestMotionParameters2D): Transform2D =
  expandMethodBind(className PhysicsTestMotionParameters2D, "get_from", 3814499831)
  var ret: encoded Transform2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Transform2D)

proc setFrom*(self: PhysicsTestMotionParameters2D; `from`: Transform2D): void =
  expandMethodBind(className PhysicsTestMotionParameters2D, "set_from", 2761652528)
  var `?param` = [getPtr `from`]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMotion*(self: PhysicsTestMotionParameters2D): Vector2 =
  expandMethodBind(className PhysicsTestMotionParameters2D, "get_motion", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setMotion*(self: PhysicsTestMotionParameters2D; motion: Vector2): void =
  expandMethodBind(className PhysicsTestMotionParameters2D, "set_motion", 743155724)
  var `?param` = [getPtr motion]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMargin*(self: PhysicsTestMotionParameters2D): Float =
  expandMethodBind(className PhysicsTestMotionParameters2D, "get_margin", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setMargin*(self: PhysicsTestMotionParameters2D; margin: Float): void =
  expandMethodBind(className PhysicsTestMotionParameters2D, "set_margin", 373806689)
  var `?param` = [getPtr margin]
  methodbind.ptrcall(self, addr `?param`[0])

proc isCollideSeparationRayEnabled*(self: PhysicsTestMotionParameters2D): bool =
  expandMethodBind(className PhysicsTestMotionParameters2D, "is_collide_separation_ray_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setCollideSeparationRayEnabled*(self: PhysicsTestMotionParameters2D; enabled: bool): void =
  expandMethodBind(className PhysicsTestMotionParameters2D, "set_collide_separation_ray_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc getExcludeBodies*(self: PhysicsTestMotionParameters2D): TypedArray[Rid] =
  expandMethodBind(className PhysicsTestMotionParameters2D, "get_exclude_bodies", 3995934104)
  var ret: encoded TypedArray[Rid]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[Rid])

proc setExcludeBodies*(self: PhysicsTestMotionParameters2D; excludeList: TypedArray[Rid]): void =
  expandMethodBind(className PhysicsTestMotionParameters2D, "set_exclude_bodies", 381264803)
  var `?param` = [getPtr excludeList]
  methodbind.ptrcall(self, addr `?param`[0])

proc getExcludeObjects*(self: PhysicsTestMotionParameters2D): TypedArray[Int] =
  expandMethodBind(className PhysicsTestMotionParameters2D, "get_exclude_objects", 3995934104)
  var ret: encoded TypedArray[Int]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[Int])

proc setExcludeObjects*(self: PhysicsTestMotionParameters2D; excludeList: TypedArray[Int]): void =
  expandMethodBind(className PhysicsTestMotionParameters2D, "set_exclude_objects", 381264803)
  var `?param` = [getPtr excludeList]
  methodbind.ptrcall(self, addr `?param`[0])

proc isRecoveryAsCollisionEnabled*(self: PhysicsTestMotionParameters2D): bool =
  expandMethodBind(className PhysicsTestMotionParameters2D, "is_recovery_as_collision_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setRecoveryAsCollisionEnabled*(self: PhysicsTestMotionParameters2D; enabled: bool): void =
  expandMethodBind(className PhysicsTestMotionParameters2D, "set_recovery_as_collision_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

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

const PhysicsTestMotionParameters2D_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PhysicsTestMotionParameters2D]): Table[string, string] = PhysicsTestMotionParameters2D_vmap