{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

proc setDepth*(self: CollisionPolygon3D; depth: Float): void =
  expandMethodBind(className CollisionPolygon3D, "set_depth", 373806689)
  methodbind.ptrcall(self, [getPtr depth])

proc getDepth*(self: CollisionPolygon3D): Float =
  expandMethodBind(className CollisionPolygon3D, "get_depth", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setPolygon*(self: CollisionPolygon3D; polygon: PackedVector2Array): void =
  expandMethodBind(className CollisionPolygon3D, "set_polygon", 1509147220)
  methodbind.ptrcall(self, [getPtr polygon])

proc getPolygon*(self: CollisionPolygon3D): PackedVector2Array =
  expandMethodBind(className CollisionPolygon3D, "get_polygon", 2961356807)
  var ret: encoded PackedVector2Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedVector2Array)

proc setDisabled*(self: CollisionPolygon3D; disabled: bool): void =
  expandMethodBind(className CollisionPolygon3D, "set_disabled", 2586408642)
  methodbind.ptrcall(self, [getPtr disabled])

proc isDisabled*(self: CollisionPolygon3D): bool =
  expandMethodBind(className CollisionPolygon3D, "is_disabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setMargin*(self: CollisionPolygon3D; margin: Float): void =
  expandMethodBind(className CollisionPolygon3D, "set_margin", 373806689)
  methodbind.ptrcall(self, [getPtr margin])

proc getMargin*(self: CollisionPolygon3D): Float =
  expandMethodBind(className CollisionPolygon3D, "get_margin", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

template depth*(self: CollisionPolygon3D): untyped = self.getDepth()
template `depth=`*(self: CollisionPolygon3D; value) = self.setDepth(value)

template disabled*(self: CollisionPolygon3D): untyped = self.isDisabled()
template `disabled=`*(self: CollisionPolygon3D; value) = self.setDisabled(value)

template polygon*(self: CollisionPolygon3D): untyped = self.getPolygon()
template `polygon=`*(self: CollisionPolygon3D; value) = self.setPolygon(value)

template margin*(self: CollisionPolygon3D): untyped = self.getMargin()
template `margin=`*(self: CollisionPolygon3D; value) = self.setMargin(value)

const CollisionPolygon3D_vmap =
  Node3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CollisionPolygon3D]): Table[string, string] = CollisionPolygon3D_vmap