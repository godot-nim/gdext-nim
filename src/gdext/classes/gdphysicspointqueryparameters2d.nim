{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(PhysicsPointQueryParameters2D, RefCounted)

proc setPosition*(self: PhysicsPointQueryParameters2D; position: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsPointQueryParameters2D, "set_position", 743155724)
  methodbind.ptrcall(self, [getPtr position], void)

proc getPosition*(self: PhysicsPointQueryParameters2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsPointQueryParameters2D, "get_position", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setCanvasInstanceId*(self: PhysicsPointQueryParameters2D; canvasInstanceId: uint64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsPointQueryParameters2D, "set_canvas_instance_id", 1286410249)
  methodbind.ptrcall(self, [getPtr canvasInstanceId], void)

proc getCanvasInstanceId*(self: PhysicsPointQueryParameters2D): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsPointQueryParameters2D, "get_canvas_instance_id", 3905245786)
  methodbind.ptrcall(self, [], uint64)

proc setCollisionMask*(self: PhysicsPointQueryParameters2D; collisionMask: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsPointQueryParameters2D, "set_collision_mask", 1286410249)
  methodbind.ptrcall(self, [getPtr collisionMask], void)

proc getCollisionMask*(self: PhysicsPointQueryParameters2D): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsPointQueryParameters2D, "get_collision_mask", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setExclude*(self: PhysicsPointQueryParameters2D; exclude: TypedArray[RID]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsPointQueryParameters2D, "set_exclude", 381264803)
  methodbind.ptrcall(self, [getPtr exclude], void)

proc getExclude*(self: PhysicsPointQueryParameters2D): TypedArray[RID] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsPointQueryParameters2D, "get_exclude", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[RID])

proc setCollideWithBodies*(self: PhysicsPointQueryParameters2D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsPointQueryParameters2D, "set_collide_with_bodies", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isCollideWithBodiesEnabled*(self: PhysicsPointQueryParameters2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsPointQueryParameters2D, "is_collide_with_bodies_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setCollideWithAreas*(self: PhysicsPointQueryParameters2D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsPointQueryParameters2D, "set_collide_with_areas", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isCollideWithAreasEnabled*(self: PhysicsPointQueryParameters2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsPointQueryParameters2D, "is_collide_with_areas_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

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
