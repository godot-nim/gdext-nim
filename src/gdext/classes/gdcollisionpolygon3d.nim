{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

expandOnClassImported(CollisionPolygon3D, Node3D)

proc setDepth*(self: CollisionPolygon3D; depth: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionPolygon3D, "set_depth", 373806689)
  methodbind.ptrcall(self, [getPtr depth], void)

proc getDepth*(self: CollisionPolygon3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionPolygon3D, "get_depth", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setPolygon*(self: CollisionPolygon3D; polygon: PackedVector2Array): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionPolygon3D, "set_polygon", 1509147220)
  methodbind.ptrcall(self, [getPtr polygon], void)

proc getPolygon*(self: CollisionPolygon3D): PackedVector2Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionPolygon3D, "get_polygon", 2961356807)
  methodbind.ptrcall(self, [], PackedVector2Array)

proc setDisabled*(self: CollisionPolygon3D; disabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionPolygon3D, "set_disabled", 2586408642)
  methodbind.ptrcall(self, [getPtr disabled], void)

proc isDisabled*(self: CollisionPolygon3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionPolygon3D, "is_disabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDebugColor*(self: CollisionPolygon3D; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionPolygon3D, "set_debug_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color], void)

proc getDebugColor*(self: CollisionPolygon3D): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionPolygon3D, "get_debug_color", 3444240500)
  methodbind.ptrcall(self, [], Color)

proc setEnableDebugFill*(self: CollisionPolygon3D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionPolygon3D, "set_enable_debug_fill", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc getEnableDebugFill*(self: CollisionPolygon3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionPolygon3D, "get_enable_debug_fill", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setMargin*(self: CollisionPolygon3D; margin: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionPolygon3D, "set_margin", 373806689)
  methodbind.ptrcall(self, [getPtr margin], void)

proc getMargin*(self: CollisionPolygon3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CollisionPolygon3D, "get_margin", 1740695150)
  methodbind.ptrcall(self, [], Float)

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
