{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

proc setEnabled*(self: RayCast3D; enabled: bool): void =
  expandMethodBind(className RayCast3D, "set_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isEnabled*(self: RayCast3D): bool =
  expandMethodBind(className RayCast3D, "is_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setTargetPosition*(self: RayCast3D; localPoint: Vector3): void =
  expandMethodBind(className RayCast3D, "set_target_position", 3460891852)
  methodbind.ptrcall(self, [getPtr localPoint])

proc getTargetPosition*(self: RayCast3D): Vector3 =
  expandMethodBind(className RayCast3D, "get_target_position", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector3)

proc isColliding*(self: RayCast3D): bool =
  expandMethodBind(className RayCast3D, "is_colliding", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc forceRaycastUpdate*(self: RayCast3D): void =
  expandMethodBind(className RayCast3D, "force_raycast_update", 3218959716)
  methodbind.ptrcall(self, [])

proc getCollider*(self: RayCast3D): Object =
  expandMethodBind(className RayCast3D, "get_collider", 1981248198)
  var ret: encoded Object
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Object)

proc getColliderRid*(self: RayCast3D): RID =
  expandMethodBind(className RayCast3D, "get_collider_rid", 2944877500)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc getColliderShape*(self: RayCast3D): int32 =
  expandMethodBind(className RayCast3D, "get_collider_shape", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getCollisionPoint*(self: RayCast3D): Vector3 =
  expandMethodBind(className RayCast3D, "get_collision_point", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector3)

proc getCollisionNormal*(self: RayCast3D): Vector3 =
  expandMethodBind(className RayCast3D, "get_collision_normal", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector3)

proc getCollisionFaceIndex*(self: RayCast3D): int32 =
  expandMethodBind(className RayCast3D, "get_collision_face_index", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc addExceptionRid*(self: RayCast3D; rid: RID): void =
  expandMethodBind(className RayCast3D, "add_exception_rid", 2722037293)
  methodbind.ptrcall(self, [getPtr rid])

proc addException*(self: RayCast3D; node: CollisionObject3D): void =
  expandMethodBind(className RayCast3D, "add_exception", 1976431078)
  methodbind.ptrcall(self, [getPtr node])

proc removeExceptionRid*(self: RayCast3D; rid: RID): void =
  expandMethodBind(className RayCast3D, "remove_exception_rid", 2722037293)
  methodbind.ptrcall(self, [getPtr rid])

proc removeException*(self: RayCast3D; node: CollisionObject3D): void =
  expandMethodBind(className RayCast3D, "remove_exception", 1976431078)
  methodbind.ptrcall(self, [getPtr node])

proc clearExceptions*(self: RayCast3D): void =
  expandMethodBind(className RayCast3D, "clear_exceptions", 3218959716)
  methodbind.ptrcall(self, [])

proc setCollisionMask*(self: RayCast3D; mask: uint32): void =
  expandMethodBind(className RayCast3D, "set_collision_mask", 1286410249)
  methodbind.ptrcall(self, [getPtr mask])

proc getCollisionMask*(self: RayCast3D): uint32 =
  expandMethodBind(className RayCast3D, "get_collision_mask", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint32)

proc setCollisionMaskValue*(self: RayCast3D; layerNumber: int32; value: bool): void =
  expandMethodBind(className RayCast3D, "set_collision_mask_value", 300928843)
  methodbind.ptrcall(self, [getPtr layerNumber, getPtr value])

proc getCollisionMaskValue*(self: RayCast3D; layerNumber: int32): bool =
  expandMethodBind(className RayCast3D, "get_collision_mask_value", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr layerNumber], addr ret)
  (addr ret).decode_result(bool)

proc setExcludeParentBody*(self: RayCast3D; mask: bool): void =
  expandMethodBind(className RayCast3D, "set_exclude_parent_body", 2586408642)
  methodbind.ptrcall(self, [getPtr mask])

proc getExcludeParentBody*(self: RayCast3D): bool =
  expandMethodBind(className RayCast3D, "get_exclude_parent_body", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setCollideWithAreas*(self: RayCast3D; enable: bool): void =
  expandMethodBind(className RayCast3D, "set_collide_with_areas", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isCollideWithAreasEnabled*(self: RayCast3D): bool =
  expandMethodBind(className RayCast3D, "is_collide_with_areas_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setCollideWithBodies*(self: RayCast3D; enable: bool): void =
  expandMethodBind(className RayCast3D, "set_collide_with_bodies", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isCollideWithBodiesEnabled*(self: RayCast3D): bool =
  expandMethodBind(className RayCast3D, "is_collide_with_bodies_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setHitFromInside*(self: RayCast3D; enable: bool): void =
  expandMethodBind(className RayCast3D, "set_hit_from_inside", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isHitFromInsideEnabled*(self: RayCast3D): bool =
  expandMethodBind(className RayCast3D, "is_hit_from_inside_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setHitBackFaces*(self: RayCast3D; enable: bool): void =
  expandMethodBind(className RayCast3D, "set_hit_back_faces", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isHitBackFacesEnabled*(self: RayCast3D): bool =
  expandMethodBind(className RayCast3D, "is_hit_back_faces_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setDebugShapeCustomColor*(self: RayCast3D; debugShapeCustomColor: Color): void =
  expandMethodBind(className RayCast3D, "set_debug_shape_custom_color", 2920490490)
  methodbind.ptrcall(self, [getPtr debugShapeCustomColor])

proc getDebugShapeCustomColor*(self: RayCast3D): Color =
  expandMethodBind(className RayCast3D, "get_debug_shape_custom_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Color)

proc setDebugShapeThickness*(self: RayCast3D; debugShapeThickness: int32): void =
  expandMethodBind(className RayCast3D, "set_debug_shape_thickness", 1286410249)
  methodbind.ptrcall(self, [getPtr debugShapeThickness])

proc getDebugShapeThickness*(self: RayCast3D): int32 =
  expandMethodBind(className RayCast3D, "get_debug_shape_thickness", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

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

const RayCast3D_vmap =
  Node3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RayCast3D]): Table[string, string] = RayCast3D_vmap