{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode3d; export gdnode3d

proc setProgress*(self: PathFollow3D; progress: Float): void =
  expandMethodBind(className PathFollow3D, "set_progress", 373806689)
  var `?param` = [getPtr progress]
  methodbind.ptrcall(self, addr `?param`[0])

proc getProgress*(self: PathFollow3D): Float =
  expandMethodBind(className PathFollow3D, "get_progress", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setHOffset*(self: PathFollow3D; hOffset: Float): void =
  expandMethodBind(className PathFollow3D, "set_h_offset", 373806689)
  var `?param` = [getPtr hOffset]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHOffset*(self: PathFollow3D): Float =
  expandMethodBind(className PathFollow3D, "get_h_offset", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setVOffset*(self: PathFollow3D; vOffset: Float): void =
  expandMethodBind(className PathFollow3D, "set_v_offset", 373806689)
  var `?param` = [getPtr vOffset]
  methodbind.ptrcall(self, addr `?param`[0])

proc getVOffset*(self: PathFollow3D): Float =
  expandMethodBind(className PathFollow3D, "get_v_offset", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setProgressRatio*(self: PathFollow3D; ratio: Float): void =
  expandMethodBind(className PathFollow3D, "set_progress_ratio", 373806689)
  var `?param` = [getPtr ratio]
  methodbind.ptrcall(self, addr `?param`[0])

proc getProgressRatio*(self: PathFollow3D): Float =
  expandMethodBind(className PathFollow3D, "get_progress_ratio", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setRotationMode*(self: PathFollow3D; rotationMode: PathFollow3D_RotationMode): void =
  expandMethodBind(className PathFollow3D, "set_rotation_mode", 1640311967)
  var `?param` = [getPtr rotationMode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRotationMode*(self: PathFollow3D): PathFollow3D_RotationMode =
  expandMethodBind(className PathFollow3D, "get_rotation_mode", 3814010545)
  var ret: encoded PathFollow3D_RotationMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PathFollow3D_RotationMode)

proc setCubicInterpolation*(self: PathFollow3D; enabled: bool): void =
  expandMethodBind(className PathFollow3D, "set_cubic_interpolation", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCubicInterpolation*(self: PathFollow3D): bool =
  expandMethodBind(className PathFollow3D, "get_cubic_interpolation", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setUseModelFront*(self: PathFollow3D; enabled: bool): void =
  expandMethodBind(className PathFollow3D, "set_use_model_front", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isUsingModelFront*(self: PathFollow3D): bool =
  expandMethodBind(className PathFollow3D, "is_using_model_front", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setLoop*(self: PathFollow3D; loop: bool): void =
  expandMethodBind(className PathFollow3D, "set_loop", 2586408642)
  var `?param` = [getPtr loop]
  methodbind.ptrcall(self, addr `?param`[0])

proc hasLoop*(self: PathFollow3D): bool =
  expandMethodBind(className PathFollow3D, "has_loop", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setTiltEnabled*(self: PathFollow3D; enabled: bool): void =
  expandMethodBind(className PathFollow3D, "set_tilt_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isTiltEnabled*(self: PathFollow3D): bool =
  expandMethodBind(className PathFollow3D, "is_tilt_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc correctPosture*(_: typedesc[PathFollow3D]; transform: Transform3D; rotationMode: PathFollow3D_RotationMode): Transform3D =
  expandMethodBind(className PathFollow3D, "correct_posture", 2686588690)
  var `?param` = [getPtr transform, getPtr rotationMode]
  var ret: encoded Transform3D
  methodbind.ptrcall(addr `?param`[0], addr ret)
  (addr ret).decode_result(Transform3D)

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

const PathFollow3D_vmap =
  Node3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[PathFollow3D]): Table[string, string] = PathFollow3D_vmap