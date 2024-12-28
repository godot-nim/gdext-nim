{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

proc setProgress*(self: PathFollow2D; progress: Float): void =
  expandMethodBind(className PathFollow2D, "set_progress", 373806689)
  methodbind.ptrcall(self, [getPtr progress])

proc getProgress*(self: PathFollow2D): Float =
  expandMethodBind(className PathFollow2D, "get_progress", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setHOffset*(self: PathFollow2D; hOffset: Float): void =
  expandMethodBind(className PathFollow2D, "set_h_offset", 373806689)
  methodbind.ptrcall(self, [getPtr hOffset])

proc getHOffset*(self: PathFollow2D): Float =
  expandMethodBind(className PathFollow2D, "get_h_offset", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setVOffset*(self: PathFollow2D; vOffset: Float): void =
  expandMethodBind(className PathFollow2D, "set_v_offset", 373806689)
  methodbind.ptrcall(self, [getPtr vOffset])

proc getVOffset*(self: PathFollow2D): Float =
  expandMethodBind(className PathFollow2D, "get_v_offset", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setProgressRatio*(self: PathFollow2D; ratio: Float): void =
  expandMethodBind(className PathFollow2D, "set_progress_ratio", 373806689)
  methodbind.ptrcall(self, [getPtr ratio])

proc getProgressRatio*(self: PathFollow2D): Float =
  expandMethodBind(className PathFollow2D, "get_progress_ratio", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setRotates*(self: PathFollow2D; enabled: bool): void =
  expandMethodBind(className PathFollow2D, "set_rotates", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isRotating*(self: PathFollow2D): bool =
  expandMethodBind(className PathFollow2D, "is_rotating", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setCubicInterpolation*(self: PathFollow2D; enabled: bool): void =
  expandMethodBind(className PathFollow2D, "set_cubic_interpolation", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc getCubicInterpolation*(self: PathFollow2D): bool =
  expandMethodBind(className PathFollow2D, "get_cubic_interpolation", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setLoop*(self: PathFollow2D; loop: bool): void =
  expandMethodBind(className PathFollow2D, "set_loop", 2586408642)
  methodbind.ptrcall(self, [getPtr loop])

proc hasLoop*(self: PathFollow2D): bool =
  expandMethodBind(className PathFollow2D, "has_loop", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

template progress*(self: PathFollow2D): untyped = self.getProgress()
template `progress=`*(self: PathFollow2D; value) = self.setProgress(value)

template progressRatio*(self: PathFollow2D): untyped = self.getProgressRatio()
template `progressRatio=`*(self: PathFollow2D; value) = self.setProgressRatio(value)

template hOffset*(self: PathFollow2D): untyped = self.getHOffset()
template `hOffset=`*(self: PathFollow2D; value) = self.setHOffset(value)

template vOffset*(self: PathFollow2D): untyped = self.getVOffset()
template `vOffset=`*(self: PathFollow2D; value) = self.setVOffset(value)

template rotates*(self: PathFollow2D): untyped = self.isRotating()
template `rotates=`*(self: PathFollow2D; value) = self.setRotates(value)

template cubicInterp*(self: PathFollow2D): untyped = self.getCubicInterpolation()
template `cubicInterp=`*(self: PathFollow2D; value) = self.setCubicInterpolation(value)

template loop*(self: PathFollow2D): untyped = self.hasLoop()
template `loop=`*(self: PathFollow2D; value) = self.setLoop(value)

const PathFollow2D_vmap =
  Node2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PathFollow2D]): Table[string, string] = PathFollow2D_vmap