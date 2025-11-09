{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(PhysicsRayQueryParameters2D, RefCounted)

proc create*(_: typedesc[PhysicsRayQueryParameters2D]; `from`: Vector2; to: Vector2; collisionMask: uint32 = 4294967295'u32; exclude: TypedArray[RID] = newTypedArray[RID]()): gdref PhysicsRayQueryParameters2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsRayQueryParameters2D, "create", 3196569324)
  methodbind.ptrcall([getPtr `from`, getPtr to, getPtr collisionMask, getPtr exclude], gdref PhysicsRayQueryParameters2D)

proc setFrom*(self: PhysicsRayQueryParameters2D; `from`: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsRayQueryParameters2D, "set_from", 743155724)
  methodbind.ptrcall(self, [getPtr `from`], void)

proc getFrom*(self: PhysicsRayQueryParameters2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsRayQueryParameters2D, "get_from", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setTo*(self: PhysicsRayQueryParameters2D; to: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsRayQueryParameters2D, "set_to", 743155724)
  methodbind.ptrcall(self, [getPtr to], void)

proc getTo*(self: PhysicsRayQueryParameters2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsRayQueryParameters2D, "get_to", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setCollisionMask*(self: PhysicsRayQueryParameters2D; collisionMask: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsRayQueryParameters2D, "set_collision_mask", 1286410249)
  methodbind.ptrcall(self, [getPtr collisionMask], void)

proc getCollisionMask*(self: PhysicsRayQueryParameters2D): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsRayQueryParameters2D, "get_collision_mask", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setExclude*(self: PhysicsRayQueryParameters2D; exclude: TypedArray[RID]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsRayQueryParameters2D, "set_exclude", 381264803)
  methodbind.ptrcall(self, [getPtr exclude], void)

proc getExclude*(self: PhysicsRayQueryParameters2D): TypedArray[RID] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsRayQueryParameters2D, "get_exclude", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[RID])

proc setCollideWithBodies*(self: PhysicsRayQueryParameters2D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsRayQueryParameters2D, "set_collide_with_bodies", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isCollideWithBodiesEnabled*(self: PhysicsRayQueryParameters2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsRayQueryParameters2D, "is_collide_with_bodies_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setCollideWithAreas*(self: PhysicsRayQueryParameters2D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsRayQueryParameters2D, "set_collide_with_areas", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isCollideWithAreasEnabled*(self: PhysicsRayQueryParameters2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsRayQueryParameters2D, "is_collide_with_areas_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setHitFromInside*(self: PhysicsRayQueryParameters2D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsRayQueryParameters2D, "set_hit_from_inside", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isHitFromInsideEnabled*(self: PhysicsRayQueryParameters2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsRayQueryParameters2D, "is_hit_from_inside_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

template `from`*(self: PhysicsRayQueryParameters2D): untyped = self.getFrom()
template `from=`*(self: PhysicsRayQueryParameters2D; value) = self.setFrom(value)

template to*(self: PhysicsRayQueryParameters2D): untyped = self.getTo()
template `to=`*(self: PhysicsRayQueryParameters2D; value) = self.setTo(value)

template collisionMask*(self: PhysicsRayQueryParameters2D): untyped = self.getCollisionMask()
template `collisionMask=`*(self: PhysicsRayQueryParameters2D; value) = self.setCollisionMask(value)

template exclude*(self: PhysicsRayQueryParameters2D): untyped = self.getExclude()
template `exclude=`*(self: PhysicsRayQueryParameters2D; value) = self.setExclude(value)

template collideWithBodies*(self: PhysicsRayQueryParameters2D): untyped = self.isCollideWithBodiesEnabled()
template `collideWithBodies=`*(self: PhysicsRayQueryParameters2D; value) = self.setCollideWithBodies(value)

template collideWithAreas*(self: PhysicsRayQueryParameters2D): untyped = self.isCollideWithAreasEnabled()
template `collideWithAreas=`*(self: PhysicsRayQueryParameters2D; value) = self.setCollideWithAreas(value)

template hitFromInside*(self: PhysicsRayQueryParameters2D): untyped = self.isHitFromInsideEnabled()
template `hitFromInside=`*(self: PhysicsRayQueryParameters2D; value) = self.setHitFromInside(value)
