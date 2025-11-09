{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualinstance3d; export gdvisualinstance3d

expandOnClassImported(RootMotionView, VisualInstance3D)

proc setAnimationPath*(self: RootMotionView; path: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RootMotionView, "set_animation_path", 1348162250)
  methodbind.ptrcall(self, [getPtr path], void)

proc getAnimationPath*(self: RootMotionView): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RootMotionView, "get_animation_path", 4075236667)
  methodbind.ptrcall(self, [], NodePath)

proc setColor*(self: RootMotionView; color: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RootMotionView, "set_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color], void)

proc getColor*(self: RootMotionView): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RootMotionView, "get_color", 3444240500)
  methodbind.ptrcall(self, [], Color)

proc setCellSize*(self: RootMotionView; size: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RootMotionView, "set_cell_size", 373806689)
  methodbind.ptrcall(self, [getPtr size], void)

proc getCellSize*(self: RootMotionView): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RootMotionView, "get_cell_size", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setRadius*(self: RootMotionView; size: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RootMotionView, "set_radius", 373806689)
  methodbind.ptrcall(self, [getPtr size], void)

proc getRadius*(self: RootMotionView): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RootMotionView, "get_radius", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setZeroY*(self: RootMotionView; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RootMotionView, "set_zero_y", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc getZeroY*(self: RootMotionView): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RootMotionView, "get_zero_y", 36873697)
  methodbind.ptrcall(self, [], bool)

template animationPath*(self: RootMotionView): untyped = self.getAnimationPath()
template `animationPath=`*(self: RootMotionView; value) = self.setAnimationPath(value)

template color*(self: RootMotionView): untyped = self.getColor()
template `color=`*(self: RootMotionView; value) = self.setColor(value)

template cellSize*(self: RootMotionView): untyped = self.getCellSize()
template `cellSize=`*(self: RootMotionView; value) = self.setCellSize(value)

template radius*(self: RootMotionView): untyped = self.getRadius()
template `radius=`*(self: RootMotionView; value) = self.setRadius(value)

template zeroY*(self: RootMotionView): untyped = self.getZeroY()
template `zeroY=`*(self: RootMotionView; value) = self.setZeroY(value)
