{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

proc setEnabled*(self: RayCast2D; enabled: bool): void =
  expandMethodBind(className RayCast2D, "set_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isEnabled*(self: RayCast2D): bool =
  expandMethodBind(className RayCast2D, "is_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setTargetPosition*(self: RayCast2D; localPoint: Vector2): void =
  expandMethodBind(className RayCast2D, "set_target_position", 743155724)
  var `?param` = [getPtr localPoint]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTargetPosition*(self: RayCast2D): Vector2 =
  expandMethodBind(className RayCast2D, "get_target_position", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc isColliding*(self: RayCast2D): bool =
  expandMethodBind(className RayCast2D, "is_colliding", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc forceRaycastUpdate*(self: RayCast2D): void =
  expandMethodBind(className RayCast2D, "force_raycast_update", 3218959716)
  methodbind.ptrcall(self, nil)

proc getCollider*(self: RayCast2D): Object =
  expandMethodBind(className RayCast2D, "get_collider", 1981248198)
  var ret: encoded Object
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Object)

proc getColliderRid*(self: RayCast2D): Rid =
  expandMethodBind(className RayCast2D, "get_collider_rid", 2944877500)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc getColliderShape*(self: RayCast2D): int32 =
  expandMethodBind(className RayCast2D, "get_collider_shape", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getCollisionPoint*(self: RayCast2D): Vector2 =
  expandMethodBind(className RayCast2D, "get_collision_point", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc getCollisionNormal*(self: RayCast2D): Vector2 =
  expandMethodBind(className RayCast2D, "get_collision_normal", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc addExceptionRid*(self: RayCast2D; rid: Rid): void =
  expandMethodBind(className RayCast2D, "add_exception_rid", 2722037293)
  var `?param` = [getPtr rid]
  methodbind.ptrcall(self, addr `?param`[0])

proc addException*(self: RayCast2D; node: CollisionObject2D): void =
  expandMethodBind(className RayCast2D, "add_exception", 3090941106)
  var `?param` = [getPtr node]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeExceptionRid*(self: RayCast2D; rid: Rid): void =
  expandMethodBind(className RayCast2D, "remove_exception_rid", 2722037293)
  var `?param` = [getPtr rid]
  methodbind.ptrcall(self, addr `?param`[0])

proc removeException*(self: RayCast2D; node: CollisionObject2D): void =
  expandMethodBind(className RayCast2D, "remove_exception", 3090941106)
  var `?param` = [getPtr node]
  methodbind.ptrcall(self, addr `?param`[0])

proc clearExceptions*(self: RayCast2D): void =
  expandMethodBind(className RayCast2D, "clear_exceptions", 3218959716)
  methodbind.ptrcall(self, nil)

proc setCollisionMask*(self: RayCast2D; mask: uint32): void =
  expandMethodBind(className RayCast2D, "set_collision_mask", 1286410249)
  var `?param` = [getPtr mask]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCollisionMask*(self: RayCast2D): uint32 =
  expandMethodBind(className RayCast2D, "get_collision_mask", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setCollisionMaskValue*(self: RayCast2D; layerNumber: int32; value: bool): void =
  expandMethodBind(className RayCast2D, "set_collision_mask_value", 300928843)
  var `?param` = [getPtr layerNumber, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCollisionMaskValue*(self: RayCast2D; layerNumber: int32): bool =
  expandMethodBind(className RayCast2D, "get_collision_mask_value", 1116898809)
  var `?param` = [getPtr layerNumber]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setExcludeParentBody*(self: RayCast2D; mask: bool): void =
  expandMethodBind(className RayCast2D, "set_exclude_parent_body", 2586408642)
  var `?param` = [getPtr mask]
  methodbind.ptrcall(self, addr `?param`[0])

proc getExcludeParentBody*(self: RayCast2D): bool =
  expandMethodBind(className RayCast2D, "get_exclude_parent_body", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setCollideWithAreas*(self: RayCast2D; enable: bool): void =
  expandMethodBind(className RayCast2D, "set_collide_with_areas", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isCollideWithAreasEnabled*(self: RayCast2D): bool =
  expandMethodBind(className RayCast2D, "is_collide_with_areas_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setCollideWithBodies*(self: RayCast2D; enable: bool): void =
  expandMethodBind(className RayCast2D, "set_collide_with_bodies", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isCollideWithBodiesEnabled*(self: RayCast2D): bool =
  expandMethodBind(className RayCast2D, "is_collide_with_bodies_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setHitFromInside*(self: RayCast2D; enable: bool): void =
  expandMethodBind(className RayCast2D, "set_hit_from_inside", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isHitFromInsideEnabled*(self: RayCast2D): bool =
  expandMethodBind(className RayCast2D, "is_hit_from_inside_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

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

const RayCast2D_vmap =
  Node2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RayCast2D]): Table[string, string] = RayCast2D_vmap