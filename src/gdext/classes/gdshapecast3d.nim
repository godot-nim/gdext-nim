{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

proc resourceChanged*(self: ShapeCast3D; resource: gdref Resource): void =
  expandMethodBind(className ShapeCast3D, "resource_changed", 968641751)
  methodbind.ptrcall(self, [getPtr resource])

proc setEnabled*(self: ShapeCast3D; enabled: bool): void =
  expandMethodBind(className ShapeCast3D, "set_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isEnabled*(self: ShapeCast3D): bool =
  expandMethodBind(className ShapeCast3D, "is_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setShape*(self: ShapeCast3D; shape: gdref Shape3D): void =
  expandMethodBind(className ShapeCast3D, "set_shape", 1549710052)
  methodbind.ptrcall(self, [getPtr shape])

proc getShape*(self: ShapeCast3D): gdref Shape3D =
  expandMethodBind(className ShapeCast3D, "get_shape", 3214262478)
  var ret: encoded gdref Shape3D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Shape3D)

proc setTargetPosition*(self: ShapeCast3D; localPoint: Vector3): void =
  expandMethodBind(className ShapeCast3D, "set_target_position", 3460891852)
  methodbind.ptrcall(self, [getPtr localPoint])

proc getTargetPosition*(self: ShapeCast3D): Vector3 =
  expandMethodBind(className ShapeCast3D, "get_target_position", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector3)

proc setMargin*(self: ShapeCast3D; margin: Float): void =
  expandMethodBind(className ShapeCast3D, "set_margin", 373806689)
  methodbind.ptrcall(self, [getPtr margin])

proc getMargin*(self: ShapeCast3D): Float =
  expandMethodBind(className ShapeCast3D, "get_margin", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setMaxResults*(self: ShapeCast3D; maxRetvals: int32): void =
  expandMethodBind(className ShapeCast3D, "set_max_results", 1286410249)
  methodbind.ptrcall(self, [getPtr maxRetvals])

proc getMaxResults*(self: ShapeCast3D): int32 =
  expandMethodBind(className ShapeCast3D, "get_max_results", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc isColliding*(self: ShapeCast3D): bool =
  expandMethodBind(className ShapeCast3D, "is_colliding", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getCollisionCount*(self: ShapeCast3D): int32 =
  expandMethodBind(className ShapeCast3D, "get_collision_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc forceShapecastUpdate*(self: ShapeCast3D): void =
  expandMethodBind(className ShapeCast3D, "force_shapecast_update", 3218959716)
  methodbind.ptrcall(self, [])

proc getCollider*(self: ShapeCast3D; index: int32): Object =
  expandMethodBind(className ShapeCast3D, "get_collider", 3332903315)
  var ret: encoded Object
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(Object)

proc getColliderRid*(self: ShapeCast3D; index: int32): RID =
  expandMethodBind(className ShapeCast3D, "get_collider_rid", 495598643)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(RID)

proc getColliderShape*(self: ShapeCast3D; index: int32): int32 =
  expandMethodBind(className ShapeCast3D, "get_collider_shape", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(int32)

proc getCollisionPoint*(self: ShapeCast3D; index: int32): Vector3 =
  expandMethodBind(className ShapeCast3D, "get_collision_point", 711720468)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(Vector3)

proc getCollisionNormal*(self: ShapeCast3D; index: int32): Vector3 =
  expandMethodBind(className ShapeCast3D, "get_collision_normal", 711720468)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(Vector3)

proc getClosestCollisionSafeFraction*(self: ShapeCast3D): Float =
  expandMethodBind(className ShapeCast3D, "get_closest_collision_safe_fraction", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc getClosestCollisionUnsafeFraction*(self: ShapeCast3D): Float =
  expandMethodBind(className ShapeCast3D, "get_closest_collision_unsafe_fraction", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc addExceptionRid*(self: ShapeCast3D; rid: RID): void =
  expandMethodBind(className ShapeCast3D, "add_exception_rid", 2722037293)
  methodbind.ptrcall(self, [getPtr rid])

proc addException*(self: ShapeCast3D; node: CollisionObject3D): void =
  expandMethodBind(className ShapeCast3D, "add_exception", 1976431078)
  methodbind.ptrcall(self, [getPtr node])

proc removeExceptionRid*(self: ShapeCast3D; rid: RID): void =
  expandMethodBind(className ShapeCast3D, "remove_exception_rid", 2722037293)
  methodbind.ptrcall(self, [getPtr rid])

proc removeException*(self: ShapeCast3D; node: CollisionObject3D): void =
  expandMethodBind(className ShapeCast3D, "remove_exception", 1976431078)
  methodbind.ptrcall(self, [getPtr node])

proc clearExceptions*(self: ShapeCast3D): void =
  expandMethodBind(className ShapeCast3D, "clear_exceptions", 3218959716)
  methodbind.ptrcall(self, [])

proc setCollisionMask*(self: ShapeCast3D; mask: uint32): void =
  expandMethodBind(className ShapeCast3D, "set_collision_mask", 1286410249)
  methodbind.ptrcall(self, [getPtr mask])

proc getCollisionMask*(self: ShapeCast3D): uint32 =
  expandMethodBind(className ShapeCast3D, "get_collision_mask", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint32)

proc setCollisionMaskValue*(self: ShapeCast3D; layerNumber: int32; value: bool): void =
  expandMethodBind(className ShapeCast3D, "set_collision_mask_value", 300928843)
  methodbind.ptrcall(self, [getPtr layerNumber, getPtr value])

proc getCollisionMaskValue*(self: ShapeCast3D; layerNumber: int32): bool =
  expandMethodBind(className ShapeCast3D, "get_collision_mask_value", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr layerNumber], addr ret)
  (addr ret).decode_result(bool)

proc setExcludeParentBody*(self: ShapeCast3D; mask: bool): void =
  expandMethodBind(className ShapeCast3D, "set_exclude_parent_body", 2586408642)
  methodbind.ptrcall(self, [getPtr mask])

proc getExcludeParentBody*(self: ShapeCast3D): bool =
  expandMethodBind(className ShapeCast3D, "get_exclude_parent_body", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setCollideWithAreas*(self: ShapeCast3D; enable: bool): void =
  expandMethodBind(className ShapeCast3D, "set_collide_with_areas", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isCollideWithAreasEnabled*(self: ShapeCast3D): bool =
  expandMethodBind(className ShapeCast3D, "is_collide_with_areas_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setCollideWithBodies*(self: ShapeCast3D; enable: bool): void =
  expandMethodBind(className ShapeCast3D, "set_collide_with_bodies", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isCollideWithBodiesEnabled*(self: ShapeCast3D): bool =
  expandMethodBind(className ShapeCast3D, "is_collide_with_bodies_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setDebugShapeCustomColor*(self: ShapeCast3D; debugShapeCustomColor: Color): void =
  expandMethodBind(className ShapeCast3D, "set_debug_shape_custom_color", 2920490490)
  methodbind.ptrcall(self, [getPtr debugShapeCustomColor])

proc getDebugShapeCustomColor*(self: ShapeCast3D): Color =
  expandMethodBind(className ShapeCast3D, "get_debug_shape_custom_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Color)

template enabled*(self: ShapeCast3D): untyped = self.isEnabled()
template `enabled=`*(self: ShapeCast3D; value) = self.setEnabled(value)

template shape*(self: ShapeCast3D): untyped = self.getShape()
template `shape=`*(self: ShapeCast3D; value) = self.setShape(value)

template excludeParent*(self: ShapeCast3D): untyped = self.getExcludeParentBody()
template `excludeParent=`*(self: ShapeCast3D; value) = self.setExcludeParentBody(value)

template targetPosition*(self: ShapeCast3D): untyped = self.getTargetPosition()
template `targetPosition=`*(self: ShapeCast3D; value) = self.setTargetPosition(value)

template margin*(self: ShapeCast3D): untyped = self.getMargin()
template `margin=`*(self: ShapeCast3D; value) = self.setMargin(value)

template maxResults*(self: ShapeCast3D): untyped = self.getMaxResults()
template `maxResults=`*(self: ShapeCast3D; value) = self.setMaxResults(value)

template collisionMask*(self: ShapeCast3D): untyped = self.getCollisionMask()
template `collisionMask=`*(self: ShapeCast3D; value) = self.setCollisionMask(value)

template collisionResult*(self: ShapeCast3D): untyped = self.getCollisionResult()

template collideWithAreas*(self: ShapeCast3D): untyped = self.isCollideWithAreasEnabled()
template `collideWithAreas=`*(self: ShapeCast3D; value) = self.setCollideWithAreas(value)

template collideWithBodies*(self: ShapeCast3D): untyped = self.isCollideWithBodiesEnabled()
template `collideWithBodies=`*(self: ShapeCast3D; value) = self.setCollideWithBodies(value)

template debugShapeCustomColor*(self: ShapeCast3D): untyped = self.getDebugShapeCustomColor()
template `debugShapeCustomColor=`*(self: ShapeCast3D; value) = self.setDebugShapeCustomColor(value)

const ShapeCast3D_vmap =
  Node3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ShapeCast3D]): Table[string, string] = ShapeCast3D_vmap