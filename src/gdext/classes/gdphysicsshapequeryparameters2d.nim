{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(PhysicsShapeQueryParameters2D, RefCounted)

proc setShape*(self: PhysicsShapeQueryParameters2D; shape: gdref Resource): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsShapeQueryParameters2D, "set_shape", 968641751)
  methodbind.ptrcall(self, [getPtr shape], void)

proc getShape*(self: PhysicsShapeQueryParameters2D): gdref Resource =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsShapeQueryParameters2D, "get_shape", 121922552)
  methodbind.ptrcall(self, [], gdref Resource)

proc setShapeRid*(self: PhysicsShapeQueryParameters2D; shape: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsShapeQueryParameters2D, "set_shape_rid", 2722037293)
  methodbind.ptrcall(self, [getPtr shape], void)

proc getShapeRid*(self: PhysicsShapeQueryParameters2D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsShapeQueryParameters2D, "get_shape_rid", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc setTransform*(self: PhysicsShapeQueryParameters2D; transform: Transform2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsShapeQueryParameters2D, "set_transform", 2761652528)
  methodbind.ptrcall(self, [getPtr transform], void)

proc getTransform*(self: PhysicsShapeQueryParameters2D): Transform2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsShapeQueryParameters2D, "get_transform", 3814499831)
  methodbind.ptrcall(self, [], Transform2D)

proc setMotion*(self: PhysicsShapeQueryParameters2D; motion: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsShapeQueryParameters2D, "set_motion", 743155724)
  methodbind.ptrcall(self, [getPtr motion], void)

proc getMotion*(self: PhysicsShapeQueryParameters2D): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsShapeQueryParameters2D, "get_motion", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

proc setMargin*(self: PhysicsShapeQueryParameters2D; margin: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsShapeQueryParameters2D, "set_margin", 373806689)
  methodbind.ptrcall(self, [getPtr margin], void)

proc getMargin*(self: PhysicsShapeQueryParameters2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsShapeQueryParameters2D, "get_margin", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setCollisionMask*(self: PhysicsShapeQueryParameters2D; collisionMask: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsShapeQueryParameters2D, "set_collision_mask", 1286410249)
  methodbind.ptrcall(self, [getPtr collisionMask], void)

proc getCollisionMask*(self: PhysicsShapeQueryParameters2D): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsShapeQueryParameters2D, "get_collision_mask", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setExclude*(self: PhysicsShapeQueryParameters2D; exclude: TypedArray[RID]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsShapeQueryParameters2D, "set_exclude", 381264803)
  methodbind.ptrcall(self, [getPtr exclude], void)

proc getExclude*(self: PhysicsShapeQueryParameters2D): TypedArray[RID] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsShapeQueryParameters2D, "get_exclude", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[RID])

proc setCollideWithBodies*(self: PhysicsShapeQueryParameters2D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsShapeQueryParameters2D, "set_collide_with_bodies", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isCollideWithBodiesEnabled*(self: PhysicsShapeQueryParameters2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsShapeQueryParameters2D, "is_collide_with_bodies_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setCollideWithAreas*(self: PhysicsShapeQueryParameters2D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsShapeQueryParameters2D, "set_collide_with_areas", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isCollideWithAreasEnabled*(self: PhysicsShapeQueryParameters2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsShapeQueryParameters2D, "is_collide_with_areas_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

template collisionMask*(self: PhysicsShapeQueryParameters2D): untyped = self.getCollisionMask()
template `collisionMask=`*(self: PhysicsShapeQueryParameters2D; value) = self.setCollisionMask(value)

template exclude*(self: PhysicsShapeQueryParameters2D): untyped = self.getExclude()
template `exclude=`*(self: PhysicsShapeQueryParameters2D; value) = self.setExclude(value)

template margin*(self: PhysicsShapeQueryParameters2D): untyped = self.getMargin()
template `margin=`*(self: PhysicsShapeQueryParameters2D; value) = self.setMargin(value)

template motion*(self: PhysicsShapeQueryParameters2D): untyped = self.getMotion()
template `motion=`*(self: PhysicsShapeQueryParameters2D; value) = self.setMotion(value)

template shape*(self: PhysicsShapeQueryParameters2D): untyped = self.getShape()
template `shape=`*(self: PhysicsShapeQueryParameters2D; value) = self.setShape(value)

template shapeRid*(self: PhysicsShapeQueryParameters2D): untyped = self.getShapeRid()
template `shapeRid=`*(self: PhysicsShapeQueryParameters2D; value) = self.setShapeRid(value)

template transform*(self: PhysicsShapeQueryParameters2D): untyped = self.getTransform()
template `transform=`*(self: PhysicsShapeQueryParameters2D; value) = self.setTransform(value)

template collideWithBodies*(self: PhysicsShapeQueryParameters2D): untyped = self.isCollideWithBodiesEnabled()
template `collideWithBodies=`*(self: PhysicsShapeQueryParameters2D; value) = self.setCollideWithBodies(value)

template collideWithAreas*(self: PhysicsShapeQueryParameters2D): untyped = self.isCollideWithAreasEnabled()
template `collideWithAreas=`*(self: PhysicsShapeQueryParameters2D; value) = self.setCollideWithAreas(value)
