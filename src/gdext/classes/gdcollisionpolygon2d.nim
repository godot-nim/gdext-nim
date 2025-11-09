{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

expandOnClassImported(CollisionPolygon2D, Node2D)

proc setPolygon*(self: CollisionPolygon2D; polygon: PackedVector2Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionPolygon2D, "set_polygon", 1509147220)
  methodbind.ptrcall(self, [getPtr polygon], void)

proc getPolygon*(self: CollisionPolygon2D): PackedVector2Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionPolygon2D, "get_polygon", 2961356807)
  methodbind.ptrcall(self, [], PackedVector2Array)

proc setBuildMode*(self: CollisionPolygon2D; buildMode: CollisionPolygon2D_BuildMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionPolygon2D, "set_build_mode", 2780803135)
  methodbind.ptrcall(self, [getPtr buildMode], void)

proc getBuildMode*(self: CollisionPolygon2D): CollisionPolygon2D_BuildMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionPolygon2D, "get_build_mode", 3044948800)
  methodbind.ptrcall(self, [], CollisionPolygon2D_BuildMode)

proc setDisabled*(self: CollisionPolygon2D; disabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionPolygon2D, "set_disabled", 2586408642)
  methodbind.ptrcall(self, [getPtr disabled], void)

proc isDisabled*(self: CollisionPolygon2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionPolygon2D, "is_disabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setOneWayCollision*(self: CollisionPolygon2D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionPolygon2D, "set_one_way_collision", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isOneWayCollisionEnabled*(self: CollisionPolygon2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionPolygon2D, "is_one_way_collision_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setOneWayCollisionMargin*(self: CollisionPolygon2D; margin: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionPolygon2D, "set_one_way_collision_margin", 373806689)
  methodbind.ptrcall(self, [getPtr margin], void)

proc getOneWayCollisionMargin*(self: CollisionPolygon2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionPolygon2D, "get_one_way_collision_margin", 1740695150)
  methodbind.ptrcall(self, [], Float)

template buildMode*(self: CollisionPolygon2D): untyped = self.getBuildMode()
template `buildMode=`*(self: CollisionPolygon2D; value) = self.setBuildMode(value)

template polygon*(self: CollisionPolygon2D): untyped = self.getPolygon()
template `polygon=`*(self: CollisionPolygon2D; value) = self.setPolygon(value)

template disabled*(self: CollisionPolygon2D): untyped = self.isDisabled()
template `disabled=`*(self: CollisionPolygon2D; value) = self.setDisabled(value)

template oneWayCollision*(self: CollisionPolygon2D): untyped = self.isOneWayCollisionEnabled()
template `oneWayCollision=`*(self: CollisionPolygon2D; value) = self.setOneWayCollision(value)

template oneWayCollisionMargin*(self: CollisionPolygon2D): untyped = self.getOneWayCollisionMargin()
template `oneWayCollisionMargin=`*(self: CollisionPolygon2D; value) = self.setOneWayCollisionMargin(value)
