{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

expandOnClassImported(ShapeCast2D, Node2D)

proc setEnabled*(self: ShapeCast2D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ShapeCast2D, "set_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isEnabled*(self: ShapeCast2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ShapeCast2D, "is_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setShape*(self: ShapeCast2D; shape: gdref Shape2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ShapeCast2D, "set_shape", 771364740)
  methodbind.ptrcall(self, [getPtr shape], void)

proc getShape*(self: ShapeCast2D): gdref Shape2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ShapeCast2D, "get_shape", 522005891)
  methodbind.ptrcall(self, [], gdref Shape2D)

proc setTargetPosition*(self: ShapeCast2D; localPoint: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ShapeCast2D, "set_target_position", 743155724)
  methodbind.ptrcall(self, [getPtr localPoint], void)

proc getTargetPosition*(self: ShapeCast2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ShapeCast2D, "get_target_position", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setMargin*(self: ShapeCast2D; margin: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ShapeCast2D, "set_margin", 373806689)
  methodbind.ptrcall(self, [getPtr margin], void)

proc getMargin*(self: ShapeCast2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ShapeCast2D, "get_margin", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setMaxResults*(self: ShapeCast2D; maxRetvals: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ShapeCast2D, "set_max_results", 1286410249)
  methodbind.ptrcall(self, [getPtr maxRetvals], void)

proc getMaxResults*(self: ShapeCast2D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ShapeCast2D, "get_max_results", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc isColliding*(self: ShapeCast2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ShapeCast2D, "is_colliding", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getCollisionCount*(self: ShapeCast2D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ShapeCast2D, "get_collision_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc forceShapecastUpdate*(self: ShapeCast2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ShapeCast2D, "force_shapecast_update", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getCollider*(self: ShapeCast2D; index: int32): Object =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ShapeCast2D, "get_collider", 3332903315)
  methodbind.ptrcall(self, [getPtr index], Object)

proc getColliderRid*(self: ShapeCast2D; index: int32): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ShapeCast2D, "get_collider_rid", 495598643)
  methodbind.ptrcall(self, [getPtr index], RID)

proc getColliderShape*(self: ShapeCast2D; index: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ShapeCast2D, "get_collider_shape", 923996154)
  methodbind.ptrcall(self, [getPtr index], int32)

proc getCollisionPoint*(self: ShapeCast2D; index: int32): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ShapeCast2D, "get_collision_point", 2299179447)
  methodbind.ptrcall(self, [getPtr index], Vector2)

proc getCollisionNormal*(self: ShapeCast2D; index: int32): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ShapeCast2D, "get_collision_normal", 2299179447)
  methodbind.ptrcall(self, [getPtr index], Vector2)

proc getClosestCollisionSafeFraction*(self: ShapeCast2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ShapeCast2D, "get_closest_collision_safe_fraction", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc getClosestCollisionUnsafeFraction*(self: ShapeCast2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ShapeCast2D, "get_closest_collision_unsafe_fraction", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc addExceptionRid*(self: ShapeCast2D; rid: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ShapeCast2D, "add_exception_rid", 2722037293)
  methodbind.ptrcall(self, [getPtr rid], void)

proc addException*(self: ShapeCast2D; node: CollisionObject2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ShapeCast2D, "add_exception", 3090941106)
  methodbind.ptrcall(self, [getPtr node], void)

proc removeExceptionRid*(self: ShapeCast2D; rid: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ShapeCast2D, "remove_exception_rid", 2722037293)
  methodbind.ptrcall(self, [getPtr rid], void)

proc removeException*(self: ShapeCast2D; node: CollisionObject2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ShapeCast2D, "remove_exception", 3090941106)
  methodbind.ptrcall(self, [getPtr node], void)

proc clearExceptions*(self: ShapeCast2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ShapeCast2D, "clear_exceptions", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setCollisionMask*(self: ShapeCast2D; mask: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ShapeCast2D, "set_collision_mask", 1286410249)
  methodbind.ptrcall(self, [getPtr mask], void)

proc getCollisionMask*(self: ShapeCast2D): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ShapeCast2D, "get_collision_mask", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setCollisionMaskValue*(self: ShapeCast2D; layerNumber: int32; value: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ShapeCast2D, "set_collision_mask_value", 300928843)
  methodbind.ptrcall(self, [getPtr layerNumber, getPtr value], void)

proc getCollisionMaskValue*(self: ShapeCast2D; layerNumber: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ShapeCast2D, "get_collision_mask_value", 1116898809)
  methodbind.ptrcall(self, [getPtr layerNumber], bool)

proc setExcludeParentBody*(self: ShapeCast2D; mask: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ShapeCast2D, "set_exclude_parent_body", 2586408642)
  methodbind.ptrcall(self, [getPtr mask], void)

proc getExcludeParentBody*(self: ShapeCast2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ShapeCast2D, "get_exclude_parent_body", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setCollideWithAreas*(self: ShapeCast2D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ShapeCast2D, "set_collide_with_areas", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isCollideWithAreasEnabled*(self: ShapeCast2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ShapeCast2D, "is_collide_with_areas_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setCollideWithBodies*(self: ShapeCast2D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ShapeCast2D, "set_collide_with_bodies", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isCollideWithBodiesEnabled*(self: ShapeCast2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ShapeCast2D, "is_collide_with_bodies_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getCollisionResult*(self: ShapeCast2D): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className ShapeCast2D, "get_collision_result", 3995934104)
  methodbind.ptrcall(self, [], Array)

template enabled*(self: ShapeCast2D): untyped = self.isEnabled()
template `enabled=`*(self: ShapeCast2D; value) = self.setEnabled(value)

template shape*(self: ShapeCast2D): untyped = self.getShape()
template `shape=`*(self: ShapeCast2D; value) = self.setShape(value)

template excludeParent*(self: ShapeCast2D): untyped = self.getExcludeParentBody()
template `excludeParent=`*(self: ShapeCast2D; value) = self.setExcludeParentBody(value)

template targetPosition*(self: ShapeCast2D): untyped = self.getTargetPosition()
template `targetPosition=`*(self: ShapeCast2D; value) = self.setTargetPosition(value)

template margin*(self: ShapeCast2D): untyped = self.getMargin()
template `margin=`*(self: ShapeCast2D; value) = self.setMargin(value)

template maxResults*(self: ShapeCast2D): untyped = self.getMaxResults()
template `maxResults=`*(self: ShapeCast2D; value) = self.setMaxResults(value)

template collisionMask*(self: ShapeCast2D): untyped = self.getCollisionMask()
template `collisionMask=`*(self: ShapeCast2D; value) = self.setCollisionMask(value)

template collisionResult*(self: ShapeCast2D): untyped = self.getCollisionResult()

template collideWithAreas*(self: ShapeCast2D): untyped = self.isCollideWithAreasEnabled()
template `collideWithAreas=`*(self: ShapeCast2D; value) = self.setCollideWithAreas(value)

template collideWithBodies*(self: ShapeCast2D): untyped = self.isCollideWithBodiesEnabled()
template `collideWithBodies=`*(self: ShapeCast2D; value) = self.setCollideWithBodies(value)
