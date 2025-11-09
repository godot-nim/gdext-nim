{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

expandOnClassImported(PathFollow3D, Node3D)

proc setProgress*(self: PathFollow3D; progress: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PathFollow3D, "set_progress", 373806689)
  methodbind.ptrcall(self, [getPtr progress], void)

proc getProgress*(self: PathFollow3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PathFollow3D, "get_progress", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setHOffset*(self: PathFollow3D; hOffset: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PathFollow3D, "set_h_offset", 373806689)
  methodbind.ptrcall(self, [getPtr hOffset], void)

proc getHOffset*(self: PathFollow3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PathFollow3D, "get_h_offset", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setVOffset*(self: PathFollow3D; vOffset: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PathFollow3D, "set_v_offset", 373806689)
  methodbind.ptrcall(self, [getPtr vOffset], void)

proc getVOffset*(self: PathFollow3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PathFollow3D, "get_v_offset", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setProgressRatio*(self: PathFollow3D; ratio: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PathFollow3D, "set_progress_ratio", 373806689)
  methodbind.ptrcall(self, [getPtr ratio], void)

proc getProgressRatio*(self: PathFollow3D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PathFollow3D, "get_progress_ratio", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setRotationMode*(self: PathFollow3D; rotationMode: PathFollow3D_RotationMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PathFollow3D, "set_rotation_mode", 1640311967)
  methodbind.ptrcall(self, [getPtr rotationMode], void)

proc getRotationMode*(self: PathFollow3D): PathFollow3D_RotationMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PathFollow3D, "get_rotation_mode", 3814010545)
  methodbind.ptrcall(self, [], PathFollow3D_RotationMode)

proc setCubicInterpolation*(self: PathFollow3D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PathFollow3D, "set_cubic_interpolation", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getCubicInterpolation*(self: PathFollow3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PathFollow3D, "get_cubic_interpolation", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setUseModelFront*(self: PathFollow3D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PathFollow3D, "set_use_model_front", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isUsingModelFront*(self: PathFollow3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PathFollow3D, "is_using_model_front", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setLoop*(self: PathFollow3D; loop: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PathFollow3D, "set_loop", 2586408642)
  methodbind.ptrcall(self, [getPtr loop], void)

proc hasLoop*(self: PathFollow3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PathFollow3D, "has_loop", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setTiltEnabled*(self: PathFollow3D; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PathFollow3D, "set_tilt_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isTiltEnabled*(self: PathFollow3D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PathFollow3D, "is_tilt_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc correctPosture*(_: typedesc[PathFollow3D]; transform: Transform3D; rotationMode: PathFollow3D_RotationMode): Transform3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className PathFollow3D, "correct_posture", 2686588690)
  methodbind.ptrcall([getPtr transform, getPtr rotationMode], Transform3D)

template progress*(self: PathFollow3D): untyped = self.getProgress()
template `progress=`*(self: PathFollow3D; value) = self.setProgress(value)

template progressRatio*(self: PathFollow3D): untyped = self.getProgressRatio()
template `progressRatio=`*(self: PathFollow3D; value) = self.setProgressRatio(value)

template hOffset*(self: PathFollow3D): untyped = self.getHOffset()
template `hOffset=`*(self: PathFollow3D; value) = self.setHOffset(value)

template vOffset*(self: PathFollow3D): untyped = self.getVOffset()
template `vOffset=`*(self: PathFollow3D; value) = self.setVOffset(value)

template rotationMode*(self: PathFollow3D): untyped = self.getRotationMode()
template `rotationMode=`*(self: PathFollow3D; value) = self.setRotationMode(value)

template useModelFront*(self: PathFollow3D): untyped = self.isUsingModelFront()
template `useModelFront=`*(self: PathFollow3D; value) = self.setUseModelFront(value)

template cubicInterp*(self: PathFollow3D): untyped = self.getCubicInterpolation()
template `cubicInterp=`*(self: PathFollow3D; value) = self.setCubicInterpolation(value)

template loop*(self: PathFollow3D): untyped = self.hasLoop()
template `loop=`*(self: PathFollow3D; value) = self.setLoop(value)

template tiltEnabled*(self: PathFollow3D): untyped = self.isTiltEnabled()
template `tiltEnabled=`*(self: PathFollow3D; value) = self.setTiltEnabled(value)
