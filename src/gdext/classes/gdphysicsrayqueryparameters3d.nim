{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(PhysicsRayQueryParameters3D, RefCounted)

proc create*(_: typedesc[PhysicsRayQueryParameters3D]; `from`: Vector3; to: Vector3; collisionMask: uint32 = 4294967295'u32; exclude: TypedArray[RID] = newTypedArray[RID]()): gdref PhysicsRayQueryParameters3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsRayQueryParameters3D, "create", 3110599579)
  methodbind.ptrcall([getPtr `from`, getPtr to, getPtr collisionMask, getPtr exclude], gdref PhysicsRayQueryParameters3D)

proc setFrom*(self: PhysicsRayQueryParameters3D; `from`: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsRayQueryParameters3D, "set_from", 3460891852)
  methodbind.ptrcall(self, [getPtr `from`], void)

proc getFrom*(self: PhysicsRayQueryParameters3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsRayQueryParameters3D, "get_from", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setTo*(self: PhysicsRayQueryParameters3D; to: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsRayQueryParameters3D, "set_to", 3460891852)
  methodbind.ptrcall(self, [getPtr to], void)

proc getTo*(self: PhysicsRayQueryParameters3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsRayQueryParameters3D, "get_to", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setCollisionMask*(self: PhysicsRayQueryParameters3D; collisionMask: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsRayQueryParameters3D, "set_collision_mask", 1286410249)
  methodbind.ptrcall(self, [getPtr collisionMask], void)

proc getCollisionMask*(self: PhysicsRayQueryParameters3D): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsRayQueryParameters3D, "get_collision_mask", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setExclude*(self: PhysicsRayQueryParameters3D; exclude: TypedArray[RID]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsRayQueryParameters3D, "set_exclude", 381264803)
  methodbind.ptrcall(self, [getPtr exclude], void)

proc getExclude*(self: PhysicsRayQueryParameters3D): TypedArray[RID] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsRayQueryParameters3D, "get_exclude", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[RID])

proc setCollideWithBodies*(self: PhysicsRayQueryParameters3D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsRayQueryParameters3D, "set_collide_with_bodies", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isCollideWithBodiesEnabled*(self: PhysicsRayQueryParameters3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsRayQueryParameters3D, "is_collide_with_bodies_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setCollideWithAreas*(self: PhysicsRayQueryParameters3D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsRayQueryParameters3D, "set_collide_with_areas", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isCollideWithAreasEnabled*(self: PhysicsRayQueryParameters3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsRayQueryParameters3D, "is_collide_with_areas_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setHitFromInside*(self: PhysicsRayQueryParameters3D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsRayQueryParameters3D, "set_hit_from_inside", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isHitFromInsideEnabled*(self: PhysicsRayQueryParameters3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsRayQueryParameters3D, "is_hit_from_inside_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setHitBackFaces*(self: PhysicsRayQueryParameters3D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsRayQueryParameters3D, "set_hit_back_faces", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isHitBackFacesEnabled*(self: PhysicsRayQueryParameters3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsRayQueryParameters3D, "is_hit_back_faces_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

template `from`*(self: PhysicsRayQueryParameters3D): untyped = self.getFrom()
template `from=`*(self: PhysicsRayQueryParameters3D; value) = self.setFrom(value)

template to*(self: PhysicsRayQueryParameters3D): untyped = self.getTo()
template `to=`*(self: PhysicsRayQueryParameters3D; value) = self.setTo(value)

template collisionMask*(self: PhysicsRayQueryParameters3D): untyped = self.getCollisionMask()
template `collisionMask=`*(self: PhysicsRayQueryParameters3D; value) = self.setCollisionMask(value)

template exclude*(self: PhysicsRayQueryParameters3D): untyped = self.getExclude()
template `exclude=`*(self: PhysicsRayQueryParameters3D; value) = self.setExclude(value)

template collideWithBodies*(self: PhysicsRayQueryParameters3D): untyped = self.isCollideWithBodiesEnabled()
template `collideWithBodies=`*(self: PhysicsRayQueryParameters3D; value) = self.setCollideWithBodies(value)

template collideWithAreas*(self: PhysicsRayQueryParameters3D): untyped = self.isCollideWithAreasEnabled()
template `collideWithAreas=`*(self: PhysicsRayQueryParameters3D; value) = self.setCollideWithAreas(value)

template hitFromInside*(self: PhysicsRayQueryParameters3D): untyped = self.isHitFromInsideEnabled()
template `hitFromInside=`*(self: PhysicsRayQueryParameters3D; value) = self.setHitFromInside(value)

template hitBackFaces*(self: PhysicsRayQueryParameters3D): untyped = self.isHitBackFacesEnabled()
template `hitBackFaces=`*(self: PhysicsRayQueryParameters3D; value) = self.setHitBackFaces(value)
