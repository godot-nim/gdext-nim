{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualinstance3d; export gdvisualinstance3d

proc setAnimationPath*(self: RootMotionView; path: NodePath): void =
  expandMethodBind(className RootMotionView, "set_animation_path", 1348162250)
  methodbind.ptrcall(self, [getPtr path])

proc getAnimationPath*(self: RootMotionView): NodePath =
  expandMethodBind(className RootMotionView, "get_animation_path", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(NodePath)

proc setColor*(self: RootMotionView; color: Color): void =
  expandMethodBind(className RootMotionView, "set_color", 2920490490)
  methodbind.ptrcall(self, [getPtr color])

proc getColor*(self: RootMotionView): Color =
  expandMethodBind(className RootMotionView, "get_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Color)

proc setCellSize*(self: RootMotionView; size: Float): void =
  expandMethodBind(className RootMotionView, "set_cell_size", 373806689)
  methodbind.ptrcall(self, [getPtr size])

proc getCellSize*(self: RootMotionView): Float =
  expandMethodBind(className RootMotionView, "get_cell_size", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setRadius*(self: RootMotionView; size: Float): void =
  expandMethodBind(className RootMotionView, "set_radius", 373806689)
  methodbind.ptrcall(self, [getPtr size])

proc getRadius*(self: RootMotionView): Float =
  expandMethodBind(className RootMotionView, "get_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setZeroY*(self: RootMotionView; enable: bool): void =
  expandMethodBind(className RootMotionView, "set_zero_y", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc getZeroY*(self: RootMotionView): bool =
  expandMethodBind(className RootMotionView, "get_zero_y", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

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

const RootMotionView_vmap =
  VisualInstance3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RootMotionView]): Table[string, string] = RootMotionView_vmap