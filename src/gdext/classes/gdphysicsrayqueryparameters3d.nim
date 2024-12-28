{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc create*(_: typedesc[PhysicsRayQueryParameters3D]; `from`: Vector3; to: Vector3; collisionMask: uint32 = 4294967295'u32; exclude: TypedArray[RID] = TypedArray[RID](gdarray())): gdref PhysicsRayQueryParameters3D =
  expandMethodBind(className PhysicsRayQueryParameters3D, "create", 3110599579)
  var ret: encoded gdref PhysicsRayQueryParameters3D
  methodbind.ptrcall([getPtr `from`, getPtr to, getPtr collisionMask, getPtr exclude], addr ret)
  (addr ret).decode_result(gdref PhysicsRayQueryParameters3D)

proc setFrom*(self: PhysicsRayQueryParameters3D; `from`: Vector3): void =
  expandMethodBind(className PhysicsRayQueryParameters3D, "set_from", 3460891852)
  methodbind.ptrcall(self, [getPtr `from`])

proc getFrom*(self: PhysicsRayQueryParameters3D): Vector3 =
  expandMethodBind(className PhysicsRayQueryParameters3D, "get_from", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector3)

proc setTo*(self: PhysicsRayQueryParameters3D; to: Vector3): void =
  expandMethodBind(className PhysicsRayQueryParameters3D, "set_to", 3460891852)
  methodbind.ptrcall(self, [getPtr to])

proc getTo*(self: PhysicsRayQueryParameters3D): Vector3 =
  expandMethodBind(className PhysicsRayQueryParameters3D, "get_to", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector3)

proc setCollisionMask*(self: PhysicsRayQueryParameters3D; collisionMask: uint32): void =
  expandMethodBind(className PhysicsRayQueryParameters3D, "set_collision_mask", 1286410249)
  methodbind.ptrcall(self, [getPtr collisionMask])

proc getCollisionMask*(self: PhysicsRayQueryParameters3D): uint32 =
  expandMethodBind(className PhysicsRayQueryParameters3D, "get_collision_mask", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint32)

proc setExclude*(self: PhysicsRayQueryParameters3D; exclude: TypedArray[RID]): void =
  expandMethodBind(className PhysicsRayQueryParameters3D, "set_exclude", 381264803)
  methodbind.ptrcall(self, [getPtr exclude])

proc getExclude*(self: PhysicsRayQueryParameters3D): TypedArray[RID] =
  expandMethodBind(className PhysicsRayQueryParameters3D, "get_exclude", 3995934104)
  var ret: encoded TypedArray[RID]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(TypedArray[RID])

proc setCollideWithBodies*(self: PhysicsRayQueryParameters3D; enable: bool): void =
  expandMethodBind(className PhysicsRayQueryParameters3D, "set_collide_with_bodies", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isCollideWithBodiesEnabled*(self: PhysicsRayQueryParameters3D): bool =
  expandMethodBind(className PhysicsRayQueryParameters3D, "is_collide_with_bodies_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setCollideWithAreas*(self: PhysicsRayQueryParameters3D; enable: bool): void =
  expandMethodBind(className PhysicsRayQueryParameters3D, "set_collide_with_areas", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isCollideWithAreasEnabled*(self: PhysicsRayQueryParameters3D): bool =
  expandMethodBind(className PhysicsRayQueryParameters3D, "is_collide_with_areas_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setHitFromInside*(self: PhysicsRayQueryParameters3D; enable: bool): void =
  expandMethodBind(className PhysicsRayQueryParameters3D, "set_hit_from_inside", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isHitFromInsideEnabled*(self: PhysicsRayQueryParameters3D): bool =
  expandMethodBind(className PhysicsRayQueryParameters3D, "is_hit_from_inside_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setHitBackFaces*(self: PhysicsRayQueryParameters3D; enable: bool): void =
  expandMethodBind(className PhysicsRayQueryParameters3D, "set_hit_back_faces", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isHitBackFacesEnabled*(self: PhysicsRayQueryParameters3D): bool =
  expandMethodBind(className PhysicsRayQueryParameters3D, "is_hit_back_faces_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

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

const PhysicsRayQueryParameters3D_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PhysicsRayQueryParameters3D]): Table[string, string] = PhysicsRayQueryParameters3D_vmap