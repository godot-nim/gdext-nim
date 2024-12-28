{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

proc setPolygon*(self: CollisionPolygon2D; polygon: PackedVector2Array): void =
  expandMethodBind(className CollisionPolygon2D, "set_polygon", 1509147220)
  methodbind.ptrcall(self, [getPtr polygon])

proc getPolygon*(self: CollisionPolygon2D): PackedVector2Array =
  expandMethodBind(className CollisionPolygon2D, "get_polygon", 2961356807)
  var ret: encoded PackedVector2Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedVector2Array)

proc setBuildMode*(self: CollisionPolygon2D; buildMode: CollisionPolygon2D_BuildMode): void =
  expandMethodBind(className CollisionPolygon2D, "set_build_mode", 2780803135)
  methodbind.ptrcall(self, [getPtr buildMode])

proc getBuildMode*(self: CollisionPolygon2D): CollisionPolygon2D_BuildMode =
  expandMethodBind(className CollisionPolygon2D, "get_build_mode", 3044948800)
  var ret: encoded CollisionPolygon2D_BuildMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(CollisionPolygon2D_BuildMode)

proc setDisabled*(self: CollisionPolygon2D; disabled: bool): void =
  expandMethodBind(className CollisionPolygon2D, "set_disabled", 2586408642)
  methodbind.ptrcall(self, [getPtr disabled])

proc isDisabled*(self: CollisionPolygon2D): bool =
  expandMethodBind(className CollisionPolygon2D, "is_disabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setOneWayCollision*(self: CollisionPolygon2D; enabled: bool): void =
  expandMethodBind(className CollisionPolygon2D, "set_one_way_collision", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isOneWayCollisionEnabled*(self: CollisionPolygon2D): bool =
  expandMethodBind(className CollisionPolygon2D, "is_one_way_collision_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setOneWayCollisionMargin*(self: CollisionPolygon2D; margin: Float): void =
  expandMethodBind(className CollisionPolygon2D, "set_one_way_collision_margin", 373806689)
  methodbind.ptrcall(self, [getPtr margin])

proc getOneWayCollisionMargin*(self: CollisionPolygon2D): Float =
  expandMethodBind(className CollisionPolygon2D, "get_one_way_collision_margin", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

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

const CollisionPolygon2D_vmap =
  Node2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CollisionPolygon2D]): Table[string, string] = CollisionPolygon2D_vmap