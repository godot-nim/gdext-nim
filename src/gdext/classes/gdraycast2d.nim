{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

expandOnClassImported(RayCast2D, Node2D)

proc setEnabled*(self: RayCast2D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast2D, "set_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isEnabled*(self: RayCast2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast2D, "is_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setTargetPosition*(self: RayCast2D; localPoint: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast2D, "set_target_position", 743155724)
  methodbind.ptrcall(self, [getPtr localPoint], void)

proc getTargetPosition*(self: RayCast2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast2D, "get_target_position", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc isColliding*(self: RayCast2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast2D, "is_colliding", 36873697)
  methodbind.ptrcall(self, [], bool)

proc forceRaycastUpdate*(self: RayCast2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast2D, "force_raycast_update", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getCollider*(self: RayCast2D): Object =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast2D, "get_collider", 1981248198)
  methodbind.ptrcall(self, [], Object)

proc getColliderRid*(self: RayCast2D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast2D, "get_collider_rid", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc getColliderShape*(self: RayCast2D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast2D, "get_collider_shape", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getCollisionPoint*(self: RayCast2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast2D, "get_collision_point", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc getCollisionNormal*(self: RayCast2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast2D, "get_collision_normal", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc addExceptionRid*(self: RayCast2D; rid: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast2D, "add_exception_rid", 2722037293)
  methodbind.ptrcall(self, [getPtr rid], void)

proc addException*(self: RayCast2D; node: CollisionObject2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast2D, "add_exception", 3090941106)
  methodbind.ptrcall(self, [getPtr node], void)

proc removeExceptionRid*(self: RayCast2D; rid: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast2D, "remove_exception_rid", 2722037293)
  methodbind.ptrcall(self, [getPtr rid], void)

proc removeException*(self: RayCast2D; node: CollisionObject2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast2D, "remove_exception", 3090941106)
  methodbind.ptrcall(self, [getPtr node], void)

proc clearExceptions*(self: RayCast2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast2D, "clear_exceptions", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setCollisionMask*(self: RayCast2D; mask: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast2D, "set_collision_mask", 1286410249)
  methodbind.ptrcall(self, [getPtr mask], void)

proc getCollisionMask*(self: RayCast2D): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast2D, "get_collision_mask", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setCollisionMaskValue*(self: RayCast2D; layerNumber: int32; value: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast2D, "set_collision_mask_value", 300928843)
  methodbind.ptrcall(self, [getPtr layerNumber, getPtr value], void)

proc getCollisionMaskValue*(self: RayCast2D; layerNumber: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast2D, "get_collision_mask_value", 1116898809)
  methodbind.ptrcall(self, [getPtr layerNumber], bool)

proc setExcludeParentBody*(self: RayCast2D; mask: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast2D, "set_exclude_parent_body", 2586408642)
  methodbind.ptrcall(self, [getPtr mask], void)

proc getExcludeParentBody*(self: RayCast2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast2D, "get_exclude_parent_body", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setCollideWithAreas*(self: RayCast2D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast2D, "set_collide_with_areas", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isCollideWithAreasEnabled*(self: RayCast2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast2D, "is_collide_with_areas_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setCollideWithBodies*(self: RayCast2D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast2D, "set_collide_with_bodies", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isCollideWithBodiesEnabled*(self: RayCast2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast2D, "is_collide_with_bodies_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setHitFromInside*(self: RayCast2D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast2D, "set_hit_from_inside", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isHitFromInsideEnabled*(self: RayCast2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast2D, "is_hit_from_inside_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

template enabled*(self: RayCast2D): untyped = self.isEnabled()
template `enabled=`*(self: RayCast2D; value) = self.setEnabled(value)

template excludeParent*(self: RayCast2D): untyped = self.getExcludeParentBody()
template `excludeParent=`*(self: RayCast2D; value) = self.setExcludeParentBody(value)

template targetPosition*(self: RayCast2D): untyped = self.getTargetPosition()
template `targetPosition=`*(self: RayCast2D; value) = self.setTargetPosition(value)

template collisionMask*(self: RayCast2D): untyped = self.getCollisionMask()
template `collisionMask=`*(self: RayCast2D; value) = self.setCollisionMask(value)

template hitFromInside*(self: RayCast2D): untyped = self.isHitFromInsideEnabled()
template `hitFromInside=`*(self: RayCast2D; value) = self.setHitFromInside(value)

template collideWithAreas*(self: RayCast2D): untyped = self.isCollideWithAreasEnabled()
template `collideWithAreas=`*(self: RayCast2D; value) = self.setCollideWithAreas(value)

template collideWithBodies*(self: RayCast2D): untyped = self.isCollideWithBodiesEnabled()
template `collideWithBodies=`*(self: RayCast2D; value) = self.setCollideWithBodies(value)
