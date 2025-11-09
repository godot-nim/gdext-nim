{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

expandOnClassImported(PathFollow2D, Node2D)

proc setProgress*(self: PathFollow2D; progress: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PathFollow2D, "set_progress", 373806689)
  methodbind.ptrcall(self, [getPtr progress], void)

proc getProgress*(self: PathFollow2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PathFollow2D, "get_progress", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setHOffset*(self: PathFollow2D; hOffset: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PathFollow2D, "set_h_offset", 373806689)
  methodbind.ptrcall(self, [getPtr hOffset], void)

proc getHOffset*(self: PathFollow2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PathFollow2D, "get_h_offset", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setVOffset*(self: PathFollow2D; vOffset: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PathFollow2D, "set_v_offset", 373806689)
  methodbind.ptrcall(self, [getPtr vOffset], void)

proc getVOffset*(self: PathFollow2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PathFollow2D, "get_v_offset", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setProgressRatio*(self: PathFollow2D; ratio: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PathFollow2D, "set_progress_ratio", 373806689)
  methodbind.ptrcall(self, [getPtr ratio], void)

proc getProgressRatio*(self: PathFollow2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PathFollow2D, "get_progress_ratio", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setRotates*(self: PathFollow2D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PathFollow2D, "set_rotates", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isRotating*(self: PathFollow2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PathFollow2D, "is_rotating", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setCubicInterpolation*(self: PathFollow2D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PathFollow2D, "set_cubic_interpolation", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getCubicInterpolation*(self: PathFollow2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PathFollow2D, "get_cubic_interpolation", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setLoop*(self: PathFollow2D; loop: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PathFollow2D, "set_loop", 2586408642)
  methodbind.ptrcall(self, [getPtr loop], void)

proc hasLoop*(self: PathFollow2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PathFollow2D, "has_loop", 36873697)
  methodbind.ptrcall(self, [], bool)

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
