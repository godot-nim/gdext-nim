{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc getFrom*(self: PhysicsTestMotionParameters3D): Transform3D =
  expandMethodBind(className PhysicsTestMotionParameters3D, "get_from", 3229777777)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Transform3D)

proc setFrom*(self: PhysicsTestMotionParameters3D; `from`: Transform3D): void =
  expandMethodBind(className PhysicsTestMotionParameters3D, "set_from", 2952846383)
  var `?param` = [getPtr `from`]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMotion*(self: PhysicsTestMotionParameters3D): Vector3 =
  expandMethodBind(className PhysicsTestMotionParameters3D, "get_motion", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setMotion*(self: PhysicsTestMotionParameters3D; motion: Vector3): void =
  expandMethodBind(className PhysicsTestMotionParameters3D, "set_motion", 3460891852)
  var `?param` = [getPtr motion]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMargin*(self: PhysicsTestMotionParameters3D): Float =
  expandMethodBind(className PhysicsTestMotionParameters3D, "get_margin", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setMargin*(self: PhysicsTestMotionParameters3D; margin: Float): void =
  expandMethodBind(className PhysicsTestMotionParameters3D, "set_margin", 373806689)
  var `?param` = [getPtr margin]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMaxCollisions*(self: PhysicsTestMotionParameters3D): int32 =
  expandMethodBind(className PhysicsTestMotionParameters3D, "get_max_collisions", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setMaxCollisions*(self: PhysicsTestMotionParameters3D; maxCollisions: int32): void =
  expandMethodBind(className PhysicsTestMotionParameters3D, "set_max_collisions", 1286410249)
  var `?param` = [getPtr maxCollisions]
  methodbind.ptrcall(self, addr `?param`[0])

proc isCollideSeparationRayEnabled*(self: PhysicsTestMotionParameters3D): bool =
  expandMethodBind(className PhysicsTestMotionParameters3D, "is_collide_separation_ray_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setCollideSeparationRayEnabled*(self: PhysicsTestMotionParameters3D; enabled: bool): void =
  expandMethodBind(className PhysicsTestMotionParameters3D, "set_collide_separation_ray_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc getExcludeBodies*(self: PhysicsTestMotionParameters3D): TypedArray[Rid] =
  expandMethodBind(className PhysicsTestMotionParameters3D, "get_exclude_bodies", 3995934104)
  var ret: encoded TypedArray[Rid]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[Rid])

proc setExcludeBodies*(self: PhysicsTestMotionParameters3D; excludeList: TypedArray[Rid]): void =
  expandMethodBind(className PhysicsTestMotionParameters3D, "set_exclude_bodies", 381264803)
  var `?param` = [getPtr excludeList]
  methodbind.ptrcall(self, addr `?param`[0])

proc getExcludeObjects*(self: PhysicsTestMotionParameters3D): TypedArray[Int] =
  expandMethodBind(className PhysicsTestMotionParameters3D, "get_exclude_objects", 3995934104)
  var ret: encoded TypedArray[Int]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[Int])

proc setExcludeObjects*(self: PhysicsTestMotionParameters3D; excludeList: TypedArray[Int]): void =
  expandMethodBind(className PhysicsTestMotionParameters3D, "set_exclude_objects", 381264803)
  var `?param` = [getPtr excludeList]
  methodbind.ptrcall(self, addr `?param`[0])

proc isRecoveryAsCollisionEnabled*(self: PhysicsTestMotionParameters3D): bool =
  expandMethodBind(className PhysicsTestMotionParameters3D, "is_recovery_as_collision_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setRecoveryAsCollisionEnabled*(self: PhysicsTestMotionParameters3D; enabled: bool): void =
  expandMethodBind(className PhysicsTestMotionParameters3D, "set_recovery_as_collision_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

template `from`*(self: PhysicsTestMotionParameters3D): untyped = self.getFrom()
template ``from`=`*(self: PhysicsTestMotionParameters3D; value) = self.setFrom(value)

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

const PhysicsTestMotionParameters3D_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PhysicsTestMotionParameters3D]): Table[string, string] = PhysicsTestMotionParameters3D_vmap