{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

proc setShape*(self: CollisionShape2D; shape: gdref Shape2D): void =
  expandMethodBind(className CollisionShape2D, "set_shape", 771364740)
  methodbind.ptrcall(self, [getPtr shape])

proc getShape*(self: CollisionShape2D): gdref Shape2D =
  expandMethodBind(className CollisionShape2D, "get_shape", 522005891)
  var ret: encoded gdref Shape2D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Shape2D)

proc setDisabled*(self: CollisionShape2D; disabled: bool): void =
  expandMethodBind(className CollisionShape2D, "set_disabled", 2586408642)
  methodbind.ptrcall(self, [getPtr disabled])

proc isDisabled*(self: CollisionShape2D): bool =
  expandMethodBind(className CollisionShape2D, "is_disabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setOneWayCollision*(self: CollisionShape2D; enabled: bool): void =
  expandMethodBind(className CollisionShape2D, "set_one_way_collision", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isOneWayCollisionEnabled*(self: CollisionShape2D): bool =
  expandMethodBind(className CollisionShape2D, "is_one_way_collision_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setOneWayCollisionMargin*(self: CollisionShape2D; margin: Float): void =
  expandMethodBind(className CollisionShape2D, "set_one_way_collision_margin", 373806689)
  methodbind.ptrcall(self, [getPtr margin])

proc getOneWayCollisionMargin*(self: CollisionShape2D): Float =
  expandMethodBind(className CollisionShape2D, "get_one_way_collision_margin", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setDebugColor*(self: CollisionShape2D; color: Color): void =
  expandMethodBind(className CollisionShape2D, "set_debug_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color])

proc getDebugColor*(self: CollisionShape2D): Color =
  expandMethodBind(className CollisionShape2D, "get_debug_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Color)

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

const CollisionShape2D_vmap =
  Node2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CollisionShape2D]): Table[string, string] = CollisionShape2D_vmap