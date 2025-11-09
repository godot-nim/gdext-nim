{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

expandOnClassImported(RayCast3D, Node3D)

proc setEnabled*(self: RayCast3D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast3D, "set_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isEnabled*(self: RayCast3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast3D, "is_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setTargetPosition*(self: RayCast3D; localPoint: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast3D, "set_target_position", 3460891852)
  methodbind.ptrcall(self, [getPtr localPoint], void)

proc getTargetPosition*(self: RayCast3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast3D, "get_target_position", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc isColliding*(self: RayCast3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast3D, "is_colliding", 36873697)
  methodbind.ptrcall(self, [], bool)

proc forceRaycastUpdate*(self: RayCast3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast3D, "force_raycast_update", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getCollider*(self: RayCast3D): Object =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast3D, "get_collider", 1981248198)
  methodbind.ptrcall(self, [], Object)

proc getColliderRid*(self: RayCast3D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast3D, "get_collider_rid", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc getColliderShape*(self: RayCast3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast3D, "get_collider_shape", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getCollisionPoint*(self: RayCast3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast3D, "get_collision_point", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc getCollisionNormal*(self: RayCast3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast3D, "get_collision_normal", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc getCollisionFaceIndex*(self: RayCast3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast3D, "get_collision_face_index", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc addExceptionRid*(self: RayCast3D; rid: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast3D, "add_exception_rid", 2722037293)
  methodbind.ptrcall(self, [getPtr rid], void)

proc addException*(self: RayCast3D; node: CollisionObject3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast3D, "add_exception", 1976431078)
  methodbind.ptrcall(self, [getPtr node], void)

proc removeExceptionRid*(self: RayCast3D; rid: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast3D, "remove_exception_rid", 2722037293)
  methodbind.ptrcall(self, [getPtr rid], void)

proc removeException*(self: RayCast3D; node: CollisionObject3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast3D, "remove_exception", 1976431078)
  methodbind.ptrcall(self, [getPtr node], void)

proc clearExceptions*(self: RayCast3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast3D, "clear_exceptions", 3218959716)
  methodbind.ptrcall(self, [], void)

proc setCollisionMask*(self: RayCast3D; mask: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast3D, "set_collision_mask", 1286410249)
  methodbind.ptrcall(self, [getPtr mask], void)

proc getCollisionMask*(self: RayCast3D): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast3D, "get_collision_mask", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setCollisionMaskValue*(self: RayCast3D; layerNumber: int32; value: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast3D, "set_collision_mask_value", 300928843)
  methodbind.ptrcall(self, [getPtr layerNumber, getPtr value], void)

proc getCollisionMaskValue*(self: RayCast3D; layerNumber: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast3D, "get_collision_mask_value", 1116898809)
  methodbind.ptrcall(self, [getPtr layerNumber], bool)

proc setExcludeParentBody*(self: RayCast3D; mask: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast3D, "set_exclude_parent_body", 2586408642)
  methodbind.ptrcall(self, [getPtr mask], void)

proc getExcludeParentBody*(self: RayCast3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast3D, "get_exclude_parent_body", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setCollideWithAreas*(self: RayCast3D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast3D, "set_collide_with_areas", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isCollideWithAreasEnabled*(self: RayCast3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast3D, "is_collide_with_areas_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setCollideWithBodies*(self: RayCast3D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast3D, "set_collide_with_bodies", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isCollideWithBodiesEnabled*(self: RayCast3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast3D, "is_collide_with_bodies_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setHitFromInside*(self: RayCast3D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast3D, "set_hit_from_inside", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isHitFromInsideEnabled*(self: RayCast3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast3D, "is_hit_from_inside_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setHitBackFaces*(self: RayCast3D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast3D, "set_hit_back_faces", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isHitBackFacesEnabled*(self: RayCast3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast3D, "is_hit_back_faces_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDebugShapeCustomColor*(self: RayCast3D; debugShapeCustomColor: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast3D, "set_debug_shape_custom_color", 2920490490)
  methodbind.ptrcall(self, [getPtr debugShapeCustomColor], void)

proc getDebugShapeCustomColor*(self: RayCast3D): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast3D, "get_debug_shape_custom_color", 3444240500)
  methodbind.ptrcall(self, [], Color)

proc setDebugShapeThickness*(self: RayCast3D; debugShapeThickness: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast3D, "set_debug_shape_thickness", 1286410249)
  methodbind.ptrcall(self, [getPtr debugShapeThickness], void)

proc getDebugShapeThickness*(self: RayCast3D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RayCast3D, "get_debug_shape_thickness", 3905245786)
  methodbind.ptrcall(self, [], int32)

template enabled*(self: RayCast3D): untyped = self.isEnabled()
template `enabled=`*(self: RayCast3D; value) = self.setEnabled(value)

template excludeParent*(self: RayCast3D): untyped = self.getExcludeParentBody()
template `excludeParent=`*(self: RayCast3D; value) = self.setExcludeParentBody(value)

template targetPosition*(self: RayCast3D): untyped = self.getTargetPosition()
template `targetPosition=`*(self: RayCast3D; value) = self.setTargetPosition(value)

template collisionMask*(self: RayCast3D): untyped = self.getCollisionMask()
template `collisionMask=`*(self: RayCast3D; value) = self.setCollisionMask(value)

template hitFromInside*(self: RayCast3D): untyped = self.isHitFromInsideEnabled()
template `hitFromInside=`*(self: RayCast3D; value) = self.setHitFromInside(value)

template hitBackFaces*(self: RayCast3D): untyped = self.isHitBackFacesEnabled()
template `hitBackFaces=`*(self: RayCast3D; value) = self.setHitBackFaces(value)

template collideWithAreas*(self: RayCast3D): untyped = self.isCollideWithAreasEnabled()
template `collideWithAreas=`*(self: RayCast3D; value) = self.setCollideWithAreas(value)

template collideWithBodies*(self: RayCast3D): untyped = self.isCollideWithBodiesEnabled()
template `collideWithBodies=`*(self: RayCast3D; value) = self.setCollideWithBodies(value)

template debugShapeCustomColor*(self: RayCast3D): untyped = self.getDebugShapeCustomColor()
template `debugShapeCustomColor=`*(self: RayCast3D; value) = self.setDebugShapeCustomColor(value)

template debugShapeThickness*(self: RayCast3D): untyped = self.getDebugShapeThickness()
template `debugShapeThickness=`*(self: RayCast3D; value) = self.setDebugShapeThickness(value)
