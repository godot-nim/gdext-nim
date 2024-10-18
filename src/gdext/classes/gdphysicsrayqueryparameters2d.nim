{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc create*(_: PhysicsRayQueryParameters2D; `from`: Vector2; to: Vector2; collisionMask: uint32 = 4294967295'u32; exclude: TypedArray[Rid] = TypedArray[Rid](gdarray())): gdref PhysicsRayQueryParameters2D =
  expandMethodBind(className PhysicsRayQueryParameters2D, "create", 3196569324)
  var `?param` = [getPtr `from`, getPtr to, getPtr collisionMask, getPtr exclude]
  var ret: encoded gdref PhysicsRayQueryParameters2D
  methodbind.ptrcall(addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref PhysicsRayQueryParameters2D)

proc setFrom*(self: PhysicsRayQueryParameters2D; `from`: Vector2): void =
  expandMethodBind(className PhysicsRayQueryParameters2D, "set_from", 743155724)
  var `?param` = [getPtr `from`]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFrom*(self: PhysicsRayQueryParameters2D): Vector2 =
  expandMethodBind(className PhysicsRayQueryParameters2D, "get_from", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setTo*(self: PhysicsRayQueryParameters2D; to: Vector2): void =
  expandMethodBind(className PhysicsRayQueryParameters2D, "set_to", 743155724)
  var `?param` = [getPtr to]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTo*(self: PhysicsRayQueryParameters2D): Vector2 =
  expandMethodBind(className PhysicsRayQueryParameters2D, "get_to", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setCollisionMask*(self: PhysicsRayQueryParameters2D; collisionMask: uint32): void =
  expandMethodBind(className PhysicsRayQueryParameters2D, "set_collision_mask", 1286410249)
  var `?param` = [getPtr collisionMask]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCollisionMask*(self: PhysicsRayQueryParameters2D): uint32 =
  expandMethodBind(className PhysicsRayQueryParameters2D, "get_collision_mask", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setExclude*(self: PhysicsRayQueryParameters2D; exclude: TypedArray[Rid]): void =
  expandMethodBind(className PhysicsRayQueryParameters2D, "set_exclude", 381264803)
  var `?param` = [getPtr exclude]
  methodbind.ptrcall(self, addr `?param`[0])

proc getExclude*(self: PhysicsRayQueryParameters2D): TypedArray[Rid] =
  expandMethodBind(className PhysicsRayQueryParameters2D, "get_exclude", 3995934104)
  var ret: encoded TypedArray[Rid]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[Rid])

proc setCollideWithBodies*(self: PhysicsRayQueryParameters2D; enable: bool): void =
  expandMethodBind(className PhysicsRayQueryParameters2D, "set_collide_with_bodies", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isCollideWithBodiesEnabled*(self: PhysicsRayQueryParameters2D): bool =
  expandMethodBind(className PhysicsRayQueryParameters2D, "is_collide_with_bodies_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setCollideWithAreas*(self: PhysicsRayQueryParameters2D; enable: bool): void =
  expandMethodBind(className PhysicsRayQueryParameters2D, "set_collide_with_areas", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isCollideWithAreasEnabled*(self: PhysicsRayQueryParameters2D): bool =
  expandMethodBind(className PhysicsRayQueryParameters2D, "is_collide_with_areas_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setHitFromInside*(self: PhysicsRayQueryParameters2D; enable: bool): void =
  expandMethodBind(className PhysicsRayQueryParameters2D, "set_hit_from_inside", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isHitFromInsideEnabled*(self: PhysicsRayQueryParameters2D): bool =
  expandMethodBind(className PhysicsRayQueryParameters2D, "is_hit_from_inside_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template `from`*(self: PhysicsRayQueryParameters2D): untyped = self.getFrom()
template ``from`=`*(self: PhysicsRayQueryParameters2D; value) = self.setFrom(value)

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

const PhysicsRayQueryParameters2D_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PhysicsRayQueryParameters2D]): Table[string, string] = PhysicsRayQueryParameters2D_vmap