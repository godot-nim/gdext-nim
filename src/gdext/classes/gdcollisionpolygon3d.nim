{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

expandOnClassImported(CollisionPolygon3D, Node3D)

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

proc setDebugColor*(self: CollisionPolygon3D; color: Color): void =
  expandMethodBind(className CollisionPolygon3D, "set_debug_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color])

proc getDebugColor*(self: CollisionPolygon3D): Color =
  expandMethodBind(className CollisionPolygon3D, "get_debug_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Color)

proc setEnableDebugFill*(self: CollisionPolygon3D; enable: bool): void =
  expandMethodBind(className CollisionPolygon3D, "set_enable_debug_fill", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc getEnableDebugFill*(self: CollisionPolygon3D): bool =
  expandMethodBind(className CollisionPolygon3D, "get_enable_debug_fill", 36873697)
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

template debugColor*(self: CollisionPolygon3D): untyped = self.getDebugColor()
template `debugColor=`*(self: CollisionPolygon3D; value) = self.setDebugColor(value)

template debugFill*(self: CollisionPolygon3D): untyped = self.getEnableDebugFill()
template `debugFill=`*(self: CollisionPolygon3D; value) = self.setEnableDebugFill(value)
