{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

proc setEnabled*(self: ShapeCast2D; enabled: bool): void =
  expandMethodBind(className ShapeCast2D, "set_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isEnabled*(self: ShapeCast2D): bool =
  expandMethodBind(className ShapeCast2D, "is_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setShape*(self: ShapeCast2D; shape: gdref Shape2D): void =
  expandMethodBind(className ShapeCast2D, "set_shape", 771364740)
  var `?param` = [getPtr shape]
  methodbind.ptrcall(self, addr `?param`[0])

proc getShape*(self: ShapeCast2D): gdref Shape2D =
  expandMethodBind(className ShapeCast2D, "get_shape", 522005891)
  var ret: encoded gdref Shape2D
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Shape2D)

proc setTargetPosition*(self: ShapeCast2D; localPoint: Vector2): void =
  expandMethodBind(className ShapeCast2D, "set_target_position", 743155724)
  var `?param` = [getPtr localPoint]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTargetPosition*(self: ShapeCast2D): Vector2 =
  expandMethodBind(className ShapeCast2D, "get_target_position", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setMargin*(self: ShapeCast2D; margin: Float): void =
  expandMethodBind(className ShapeCast2D, "set_margin", 373806689)
  var `?param` = [getPtr margin]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMargin*(self: ShapeCast2D): Float =
  expandMethodBind(className ShapeCast2D, "get_margin", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setMaxResults*(self: ShapeCast2D; maxRetvals: int32): void =
  expandMethodBind(className ShapeCast2D, "set_max_results", 1286410249)
  var `?param` = [getPtr maxRetvals]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMaxResults*(self: ShapeCast2D): int32 =
  expandMethodBind(className ShapeCast2D, "get_max_results", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc isColliding*(self: ShapeCast2D): bool =
  expandMethodBind(className ShapeCast2D, "is_colliding", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getCollisionCount*(self: ShapeCast2D): int32 =
  expandMethodBind(className ShapeCast2D, "get_collision_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc forceShapecastUpdate*(self: ShapeCast2D): void =
  expandMethodBind(className ShapeCast2D, "force_shapecast_update", 3218959716)
  methodbind.ptrcall(self, nil)

proc getCollider*(self: ShapeCast2D; index: int32): Object =
  expandMethodBind(className ShapeCast2D, "get_collider", 3332903315)
  var `?param` = [getPtr index]
  var ret: encoded Object
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Object)

proc getColliderRid*(self: ShapeCast2D; index: int32): RID =
  expandMethodBind(className ShapeCast2D, "get_collider_rid", 495598643)
  var `?param` = [getPtr index]
  var ret: encoded RID
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(RID)

proc getColliderShape*(self: ShapeCast2D; index: int32): int32 =
  expandMethodBind(className ShapeCast2D, "get_collider_shape", 923996154)
  var `?param` = [getPtr index]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc getCollisionPoint*(self: ShapeCast2D; index: int32): Vector2 =
  expandMethodBind(className ShapeCast2D, "get_collision_point", 2299179447)
  var `?param` = [getPtr index]
  var ret: encoded Vector2
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2)

proc getCollisionNormal*(self: ShapeCast2D; index: int32): Vector2 =
  expandMethodBind(className ShapeCast2D, "get_collision_normal", 2299179447)
  var `?param` = [getPtr index]
  var ret: encoded Vector2
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2)

proc getClosestCollisionSafeFraction*(self: ShapeCast2D): Float =
  expandMethodBind(className ShapeCast2D, "get_closest_collision_safe_fraction", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc getClosestCollisionUnsafeFraction*(self: ShapeCast2D): Float =
  expandMethodBind(className ShapeCast2D, "get_closest_collision_unsafe_fraction", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc addExceptionRid*(self: ShapeCast2D; rid: RID): void =
  expandMethodBind(className ShapeCast2D, "add_exception_rid", 2722037293)
  var `?param` = [getPtr rid]
  methodbind.ptrcall(self, addr `?param`[0])

proc addException*(self: ShapeCast2D; node: CollisionObject2D): void =
  expandMethodBind(className ShapeCast2D, "add_exception", 3090941106)
  var `?param` = [getPtr node]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeExceptionRid*(self: ShapeCast2D; rid: RID): void =
  expandMethodBind(className ShapeCast2D, "remove_exception_rid", 2722037293)
  var `?param` = [getPtr rid]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeException*(self: ShapeCast2D; node: CollisionObject2D): void =
  expandMethodBind(className ShapeCast2D, "remove_exception", 3090941106)
  var `?param` = [getPtr node]
  methodbind.ptrcall(self, addr `?param`[0])

proc clearExceptions*(self: ShapeCast2D): void =
  expandMethodBind(className ShapeCast2D, "clear_exceptions", 3218959716)
  methodbind.ptrcall(self, nil)

proc setCollisionMask*(self: ShapeCast2D; mask: uint32): void =
  expandMethodBind(className ShapeCast2D, "set_collision_mask", 1286410249)
  var `?param` = [getPtr mask]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCollisionMask*(self: ShapeCast2D): uint32 =
  expandMethodBind(className ShapeCast2D, "get_collision_mask", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setCollisionMaskValue*(self: ShapeCast2D; layerNumber: int32; value: bool): void =
  expandMethodBind(className ShapeCast2D, "set_collision_mask_value", 300928843)
  var `?param` = [getPtr layerNumber, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCollisionMaskValue*(self: ShapeCast2D; layerNumber: int32): bool =
  expandMethodBind(className ShapeCast2D, "get_collision_mask_value", 1116898809)
  var `?param` = [getPtr layerNumber]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setExcludeParentBody*(self: ShapeCast2D; mask: bool): void =
  expandMethodBind(className ShapeCast2D, "set_exclude_parent_body", 2586408642)
  var `?param` = [getPtr mask]
  methodbind.ptrcall(self, addr `?param`[0])

proc getExcludeParentBody*(self: ShapeCast2D): bool =
  expandMethodBind(className ShapeCast2D, "get_exclude_parent_body", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setCollideWithAreas*(self: ShapeCast2D; enable: bool): void =
  expandMethodBind(className ShapeCast2D, "set_collide_with_areas", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isCollideWithAreasEnabled*(self: ShapeCast2D): bool =
  expandMethodBind(className ShapeCast2D, "is_collide_with_areas_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setCollideWithBodies*(self: ShapeCast2D; enable: bool): void =
  expandMethodBind(className ShapeCast2D, "set_collide_with_bodies", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isCollideWithBodiesEnabled*(self: ShapeCast2D): bool =
  expandMethodBind(className ShapeCast2D, "is_collide_with_bodies_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

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

const ShapeCast2D_vmap =
  Node2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ShapeCast2D]): Table[string, string] = ShapeCast2D_vmap