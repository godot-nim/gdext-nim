{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc setPosition*(self: PhysicsPointQueryParameters2D; position: Vector2): void =
  expandMethodBind(className PhysicsPointQueryParameters2D, "set_position", 743155724)
  var `?param` = [getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPosition*(self: PhysicsPointQueryParameters2D): Vector2 =
  expandMethodBind(className PhysicsPointQueryParameters2D, "get_position", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc setCanvasInstanceId*(self: PhysicsPointQueryParameters2D; canvasInstanceId: uint64): void =
  expandMethodBind(className PhysicsPointQueryParameters2D, "set_canvas_instance_id", 1286410249)
  var `?param` = [getPtr canvasInstanceId]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCanvasInstanceId*(self: PhysicsPointQueryParameters2D): uint64 =
  expandMethodBind(className PhysicsPointQueryParameters2D, "get_canvas_instance_id", 3905245786)
  var ret: encoded uint64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint64)

proc setCollisionMask*(self: PhysicsPointQueryParameters2D; collisionMask: uint32): void =
  expandMethodBind(className PhysicsPointQueryParameters2D, "set_collision_mask", 1286410249)
  var `?param` = [getPtr collisionMask]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCollisionMask*(self: PhysicsPointQueryParameters2D): uint32 =
  expandMethodBind(className PhysicsPointQueryParameters2D, "get_collision_mask", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setExclude*(self: PhysicsPointQueryParameters2D; exclude: TypedArray[RID]): void =
  expandMethodBind(className PhysicsPointQueryParameters2D, "set_exclude", 381264803)
  var `?param` = [getPtr exclude]
  methodbind.ptrcall(self, addr `?param`[0])

proc getExclude*(self: PhysicsPointQueryParameters2D): TypedArray[RID] =
  expandMethodBind(className PhysicsPointQueryParameters2D, "get_exclude", 3995934104)
  var ret: encoded TypedArray[RID]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[RID])

proc setCollideWithBodies*(self: PhysicsPointQueryParameters2D; enable: bool): void =
  expandMethodBind(className PhysicsPointQueryParameters2D, "set_collide_with_bodies", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isCollideWithBodiesEnabled*(self: PhysicsPointQueryParameters2D): bool =
  expandMethodBind(className PhysicsPointQueryParameters2D, "is_collide_with_bodies_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setCollideWithAreas*(self: PhysicsPointQueryParameters2D; enable: bool): void =
  expandMethodBind(className PhysicsPointQueryParameters2D, "set_collide_with_areas", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isCollideWithAreasEnabled*(self: PhysicsPointQueryParameters2D): bool =
  expandMethodBind(className PhysicsPointQueryParameters2D, "is_collide_with_areas_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template position*(self: PhysicsPointQueryParameters2D): untyped = self.getPosition()
template `position=`*(self: PhysicsPointQueryParameters2D; value) = self.setPosition(value)

template canvasInstanceId*(self: PhysicsPointQueryParameters2D): untyped = self.getCanvasInstanceId()
template `canvasInstanceId=`*(self: PhysicsPointQueryParameters2D; value) = self.setCanvasInstanceId(value)

template collisionMask*(self: PhysicsPointQueryParameters2D): untyped = self.getCollisionMask()
template `collisionMask=`*(self: PhysicsPointQueryParameters2D; value) = self.setCollisionMask(value)

template exclude*(self: PhysicsPointQueryParameters2D): untyped = self.getExclude()
template `exclude=`*(self: PhysicsPointQueryParameters2D; value) = self.setExclude(value)

template collideWithBodies*(self: PhysicsPointQueryParameters2D): untyped = self.isCollideWithBodiesEnabled()
template `collideWithBodies=`*(self: PhysicsPointQueryParameters2D; value) = self.setCollideWithBodies(value)

template collideWithAreas*(self: PhysicsPointQueryParameters2D): untyped = self.isCollideWithAreasEnabled()
template `collideWithAreas=`*(self: PhysicsPointQueryParameters2D; value) = self.setCollideWithAreas(value)

const PhysicsPointQueryParameters2D_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PhysicsPointQueryParameters2D]): Table[string, string] = PhysicsPointQueryParameters2D_vmap