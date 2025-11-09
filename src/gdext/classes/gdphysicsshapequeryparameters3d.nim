{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(PhysicsShapeQueryParameters3D, RefCounted)

proc setShape*(self: PhysicsShapeQueryParameters3D; shape: gdref Resource): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsShapeQueryParameters3D, "set_shape", 968641751)
  methodbind.ptrcall(self, [getPtr shape], void)

proc getShape*(self: PhysicsShapeQueryParameters3D): gdref Resource =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsShapeQueryParameters3D, "get_shape", 121922552)
  methodbind.ptrcall(self, [], gdref Resource)

proc setShapeRid*(self: PhysicsShapeQueryParameters3D; shape: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsShapeQueryParameters3D, "set_shape_rid", 2722037293)
  methodbind.ptrcall(self, [getPtr shape], void)

proc getShapeRid*(self: PhysicsShapeQueryParameters3D): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsShapeQueryParameters3D, "get_shape_rid", 2944877500)
  methodbind.ptrcall(self, [], RID)

proc setTransform*(self: PhysicsShapeQueryParameters3D; transform: Transform3D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsShapeQueryParameters3D, "set_transform", 2952846383)
  methodbind.ptrcall(self, [getPtr transform], void)

proc getTransform*(self: PhysicsShapeQueryParameters3D): Transform3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsShapeQueryParameters3D, "get_transform", 3229777777)
  methodbind.ptrcall(self, [], Transform3D)

proc setMotion*(self: PhysicsShapeQueryParameters3D; motion: Vector3): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsShapeQueryParameters3D, "set_motion", 3460891852)
  methodbind.ptrcall(self, [getPtr motion], void)

proc getMotion*(self: PhysicsShapeQueryParameters3D): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsShapeQueryParameters3D, "get_motion", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc setMargin*(self: PhysicsShapeQueryParameters3D; margin: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsShapeQueryParameters3D, "set_margin", 373806689)
  methodbind.ptrcall(self, [getPtr margin], void)

proc getMargin*(self: PhysicsShapeQueryParameters3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsShapeQueryParameters3D, "get_margin", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setCollisionMask*(self: PhysicsShapeQueryParameters3D; collisionMask: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsShapeQueryParameters3D, "set_collision_mask", 1286410249)
  methodbind.ptrcall(self, [getPtr collisionMask], void)

proc getCollisionMask*(self: PhysicsShapeQueryParameters3D): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsShapeQueryParameters3D, "get_collision_mask", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setExclude*(self: PhysicsShapeQueryParameters3D; exclude: TypedArray[RID]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsShapeQueryParameters3D, "set_exclude", 381264803)
  methodbind.ptrcall(self, [getPtr exclude], void)

proc getExclude*(self: PhysicsShapeQueryParameters3D): TypedArray[RID] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsShapeQueryParameters3D, "get_exclude", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[RID])

proc setCollideWithBodies*(self: PhysicsShapeQueryParameters3D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsShapeQueryParameters3D, "set_collide_with_bodies", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isCollideWithBodiesEnabled*(self: PhysicsShapeQueryParameters3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsShapeQueryParameters3D, "is_collide_with_bodies_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setCollideWithAreas*(self: PhysicsShapeQueryParameters3D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsShapeQueryParameters3D, "set_collide_with_areas", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isCollideWithAreasEnabled*(self: PhysicsShapeQueryParameters3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PhysicsShapeQueryParameters3D, "is_collide_with_areas_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

template collisionMask*(self: PhysicsShapeQueryParameters3D): untyped = self.getCollisionMask()
template `collisionMask=`*(self: PhysicsShapeQueryParameters3D; value) = self.setCollisionMask(value)

template exclude*(self: PhysicsShapeQueryParameters3D): untyped = self.getExclude()
template `exclude=`*(self: PhysicsShapeQueryParameters3D; value) = self.setExclude(value)

template margin*(self: PhysicsShapeQueryParameters3D): untyped = self.getMargin()
template `margin=`*(self: PhysicsShapeQueryParameters3D; value) = self.setMargin(value)

template motion*(self: PhysicsShapeQueryParameters3D): untyped = self.getMotion()
template `motion=`*(self: PhysicsShapeQueryParameters3D; value) = self.setMotion(value)

template shape*(self: PhysicsShapeQueryParameters3D): untyped = self.getShape()
template `shape=`*(self: PhysicsShapeQueryParameters3D; value) = self.setShape(value)

template shapeRid*(self: PhysicsShapeQueryParameters3D): untyped = self.getShapeRid()
template `shapeRid=`*(self: PhysicsShapeQueryParameters3D; value) = self.setShapeRid(value)

template transform*(self: PhysicsShapeQueryParameters3D): untyped = self.getTransform()
template `transform=`*(self: PhysicsShapeQueryParameters3D; value) = self.setTransform(value)

template collideWithBodies*(self: PhysicsShapeQueryParameters3D): untyped = self.isCollideWithBodiesEnabled()
template `collideWithBodies=`*(self: PhysicsShapeQueryParameters3D; value) = self.setCollideWithBodies(value)

template collideWithAreas*(self: PhysicsShapeQueryParameters3D): untyped = self.isCollideWithAreasEnabled()
template `collideWithAreas=`*(self: PhysicsShapeQueryParameters3D; value) = self.setCollideWithAreas(value)
