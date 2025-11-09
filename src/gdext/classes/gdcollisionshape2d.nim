{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

expandOnClassImported(CollisionShape2D, Node2D)

proc setShape*(self: CollisionShape2D; shape: gdref Shape2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionShape2D, "set_shape", 771364740)
  methodbind.ptrcall(self, [getPtr shape], void)

proc getShape*(self: CollisionShape2D): gdref Shape2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionShape2D, "get_shape", 522005891)
  methodbind.ptrcall(self, [], gdref Shape2D)

proc setDisabled*(self: CollisionShape2D; disabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionShape2D, "set_disabled", 2586408642)
  methodbind.ptrcall(self, [getPtr disabled], void)

proc isDisabled*(self: CollisionShape2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionShape2D, "is_disabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setOneWayCollision*(self: CollisionShape2D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionShape2D, "set_one_way_collision", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isOneWayCollisionEnabled*(self: CollisionShape2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionShape2D, "is_one_way_collision_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setOneWayCollisionMargin*(self: CollisionShape2D; margin: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionShape2D, "set_one_way_collision_margin", 373806689)
  methodbind.ptrcall(self, [getPtr margin], void)

proc getOneWayCollisionMargin*(self: CollisionShape2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionShape2D, "get_one_way_collision_margin", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setDebugColor*(self: CollisionShape2D; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionShape2D, "set_debug_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color], void)

proc getDebugColor*(self: CollisionShape2D): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionShape2D, "get_debug_color", 3444240500)
  methodbind.ptrcall(self, [], Color)

template shape*(self: CollisionShape2D): untyped = self.getShape()
template `shape=`*(self: CollisionShape2D; value) = self.setShape(value)

template disabled*(self: CollisionShape2D): untyped = self.isDisabled()
template `disabled=`*(self: CollisionShape2D; value) = self.setDisabled(value)

template oneWayCollision*(self: CollisionShape2D): untyped = self.isOneWayCollisionEnabled()
template `oneWayCollision=`*(self: CollisionShape2D; value) = self.setOneWayCollision(value)

template oneWayCollisionMargin*(self: CollisionShape2D): untyped = self.getOneWayCollisionMargin()
template `oneWayCollisionMargin=`*(self: CollisionShape2D; value) = self.setOneWayCollisionMargin(value)

template debugColor*(self: CollisionShape2D): untyped = self.getDebugColor()
template `debugColor=`*(self: CollisionShape2D; value) = self.setDebugColor(value)
