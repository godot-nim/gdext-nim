{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc setPosition*(self: PhysicsPointQueryParameters3D; position: Vector3): void =
  expandMethodBind(className PhysicsPointQueryParameters3D, "set_position", 3460891852)
  var `?param` = [getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPosition*(self: PhysicsPointQueryParameters3D): Vector3 =
  expandMethodBind(className PhysicsPointQueryParameters3D, "get_position", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setCollisionMask*(self: PhysicsPointQueryParameters3D; collisionMask: uint32): void =
  expandMethodBind(className PhysicsPointQueryParameters3D, "set_collision_mask", 1286410249)
  var `?param` = [getPtr collisionMask]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCollisionMask*(self: PhysicsPointQueryParameters3D): uint32 =
  expandMethodBind(className PhysicsPointQueryParameters3D, "get_collision_mask", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setExclude*(self: PhysicsPointQueryParameters3D; exclude: TypedArray[Rid]): void =
  expandMethodBind(className PhysicsPointQueryParameters3D, "set_exclude", 381264803)
  var `?param` = [getPtr exclude]
  methodbind.ptrcall(self, addr `?param`[0])

proc getExclude*(self: PhysicsPointQueryParameters3D): TypedArray[Rid] =
  expandMethodBind(className PhysicsPointQueryParameters3D, "get_exclude", 3995934104)
  var ret: encoded TypedArray[Rid]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[Rid])

proc setCollideWithBodies*(self: PhysicsPointQueryParameters3D; enable: bool): void =
  expandMethodBind(className PhysicsPointQueryParameters3D, "set_collide_with_bodies", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isCollideWithBodiesEnabled*(self: PhysicsPointQueryParameters3D): bool =
  expandMethodBind(className PhysicsPointQueryParameters3D, "is_collide_with_bodies_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setCollideWithAreas*(self: PhysicsPointQueryParameters3D; enable: bool): void =
  expandMethodBind(className PhysicsPointQueryParameters3D, "set_collide_with_areas", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isCollideWithAreasEnabled*(self: PhysicsPointQueryParameters3D): bool =
  expandMethodBind(className PhysicsPointQueryParameters3D, "is_collide_with_areas_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template position*(self: PhysicsPointQueryParameters3D): untyped = self.getPosition()
template `position=`*(self: PhysicsPointQueryParameters3D; value) = self.setPosition(value)

template collisionMask*(self: PhysicsPointQueryParameters3D): untyped = self.getCollisionMask()
template `collisionMask=`*(self: PhysicsPointQueryParameters3D; value) = self.setCollisionMask(value)

template exclude*(self: PhysicsPointQueryParameters3D): untyped = self.getExclude()
template `exclude=`*(self: PhysicsPointQueryParameters3D; value) = self.setExclude(value)

template collideWithBodies*(self: PhysicsPointQueryParameters3D): untyped = self.isCollideWithBodiesEnabled()
template `collideWithBodies=`*(self: PhysicsPointQueryParameters3D; value) = self.setCollideWithBodies(value)

template collideWithAreas*(self: PhysicsPointQueryParameters3D): untyped = self.isCollideWithAreasEnabled()
template `collideWithAreas=`*(self: PhysicsPointQueryParameters3D; value) = self.setCollideWithAreas(value)

const PhysicsPointQueryParameters3D_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PhysicsPointQueryParameters3D]): Table[string, string] = PhysicsPointQueryParameters3D_vmap