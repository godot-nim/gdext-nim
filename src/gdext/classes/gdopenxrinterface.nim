{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdxrinterface; export gdxrinterface

proc getDisplayRefreshRate*(self: OpenXRInterface): Float =
  expandMethodBind(className OpenXRInterface, "get_display_refresh_rate", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setDisplayRefreshRate*(self: OpenXRInterface; refreshRate: Float): void =
  expandMethodBind(className OpenXRInterface, "set_display_refresh_rate", 373806689)
  var `?param` = [getPtr refreshRate]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRenderTargetSizeMultiplier*(self: OpenXRInterface): float64 =
  expandMethodBind(className OpenXRInterface, "get_render_target_size_multiplier", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc setRenderTargetSizeMultiplier*(self: OpenXRInterface; multiplier: float64): void =
  expandMethodBind(className OpenXRInterface, "set_render_target_size_multiplier", 373806689)
  var `?param` = [getPtr multiplier]
  methodbind.ptrcall(self, addr `?param`[0])

proc isFoveationSupported*(self: OpenXRInterface): bool =
  expandMethodBind(className OpenXRInterface, "is_foveation_supported", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getFoveationLevel*(self: OpenXRInterface): int32 =
  expandMethodBind(className OpenXRInterface, "get_foveation_level", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setFoveationLevel*(self: OpenXRInterface; foveationLevel: int32): void =
  expandMethodBind(className OpenXRInterface, "set_foveation_level", 1286410249)
  var `?param` = [getPtr foveationLevel]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFoveationDynamic*(self: OpenXRInterface): bool =
  expandMethodBind(className OpenXRInterface, "get_foveation_dynamic", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setFoveationDynamic*(self: OpenXRInterface; foveationDynamic: bool): void =
  expandMethodBind(className OpenXRInterface, "set_foveation_dynamic", 2586408642)
  var `?param` = [getPtr foveationDynamic]
  methodbind.ptrcall(self, addr `?param`[0])

proc isActionSetActive*(self: OpenXRInterface; name: String): bool =
  expandMethodBind(className OpenXRInterface, "is_action_set_active", 3927539163)
  var `?param` = [getPtr name]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setActionSetActive*(self: OpenXRInterface; name: String; active: bool): void =
  expandMethodBind(className OpenXRInterface, "set_action_set_active", 2678287736)
  var `?param` = [getPtr name, getPtr active]
  methodbind.ptrcall(self, addr `?param`[0])

proc getActionSets*(self: OpenXRInterface): Array =
  expandMethodBind(className OpenXRInterface, "get_action_sets", 3995934104)
  var ret: encoded Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Array)

proc getAvailableDisplayRefreshRates*(self: OpenXRInterface): Array =
  expandMethodBind(className OpenXRInterface, "get_available_display_refresh_rates", 3995934104)
  var ret: encoded Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Array)

proc setMotionRange*(self: OpenXRInterface; hand: OpenXRInterface_Hand; motionRange: OpenXRInterface_HandMotionRange): void =
  expandMethodBind(className OpenXRInterface, "set_motion_range", 855158159)
  var `?param` = [getPtr hand, getPtr motionRange]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMotionRange*(self: OpenXRInterface; hand: OpenXRInterface_Hand): OpenXRInterface_HandMotionRange =
  expandMethodBind(className OpenXRInterface, "get_motion_range", 3955838114)
  var `?param` = [getPtr hand]
  var ret: encoded OpenXRInterface_HandMotionRange
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(OpenXRInterface_HandMotionRange)

proc getHandTrackingSource*(self: OpenXRInterface; hand: OpenXRInterface_Hand): OpenXRInterface_HandTrackedSource =
  expandMethodBind(className OpenXRInterface, "get_hand_tracking_source", 4092421202)
  var `?param` = [getPtr hand]
  var ret: encoded OpenXRInterface_HandTrackedSource
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(OpenXRInterface_HandTrackedSource)

proc getHandJointFlags*(self: OpenXRInterface; hand: OpenXRInterface_Hand; joint: OpenXRInterface_HandJoints): set[OpenXRInterface_HandJointFlags] =
  expandMethodBind(className OpenXRInterface, "get_hand_joint_flags", 720567706)
  var `?param` = [getPtr hand, getPtr joint]
  var ret: encoded set[OpenXRInterface_HandJointFlags]
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(set[OpenXRInterface_HandJointFlags])

proc getHandJointRotation*(self: OpenXRInterface; hand: OpenXRInterface_Hand; joint: OpenXRInterface_HandJoints): Quaternion =
  expandMethodBind(className OpenXRInterface, "get_hand_joint_rotation", 1974618321)
  var `?param` = [getPtr hand, getPtr joint]
  var ret: encoded Quaternion
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Quaternion)

proc getHandJointPosition*(self: OpenXRInterface; hand: OpenXRInterface_Hand; joint: OpenXRInterface_HandJoints): Vector3 =
  expandMethodBind(className OpenXRInterface, "get_hand_joint_position", 3529194242)
  var `?param` = [getPtr hand, getPtr joint]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc getHandJointRadius*(self: OpenXRInterface; hand: OpenXRInterface_Hand; joint: OpenXRInterface_HandJoints): Float =
  expandMethodBind(className OpenXRInterface, "get_hand_joint_radius", 901522724)
  var `?param` = [getPtr hand, getPtr joint]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc getHandJointLinearVelocity*(self: OpenXRInterface; hand: OpenXRInterface_Hand; joint: OpenXRInterface_HandJoints): Vector3 =
  expandMethodBind(className OpenXRInterface, "get_hand_joint_linear_velocity", 3529194242)
  var `?param` = [getPtr hand, getPtr joint]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc getHandJointAngularVelocity*(self: OpenXRInterface; hand: OpenXRInterface_Hand; joint: OpenXRInterface_HandJoints): Vector3 =
  expandMethodBind(className OpenXRInterface, "get_hand_joint_angular_velocity", 3529194242)
  var `?param` = [getPtr hand, getPtr joint]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc isHandTrackingSupported*(self: OpenXRInterface): bool =
  expandMethodBind(className OpenXRInterface, "is_hand_tracking_supported", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc isHandInteractionSupported*(self: OpenXRInterface): bool =
  expandMethodBind(className OpenXRInterface, "is_hand_interaction_supported", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc isEyeGazeInteractionSupported*(self: OpenXRInterface): bool =
  expandMethodBind(className OpenXRInterface, "is_eye_gaze_interaction_supported", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getVrsMinRadius*(self: OpenXRInterface): Float =
  expandMethodBind(className OpenXRInterface, "get_vrs_min_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setVrsMinRadius*(self: OpenXRInterface; radius: Float): void =
  expandMethodBind(className OpenXRInterface, "set_vrs_min_radius", 373806689)
  var `?param` = [getPtr radius]
  methodbind.ptrcall(self, addr `?param`[0])

proc getVrsStrength*(self: OpenXRInterface): Float =
  expandMethodBind(className OpenXRInterface, "get_vrs_strength", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setVrsStrength*(self: OpenXRInterface; strength: Float): void =
  expandMethodBind(className OpenXRInterface, "set_vrs_strength", 373806689)
  var `?param` = [getPtr strength]
  methodbind.ptrcall(self, addr `?param`[0])

template displayRefreshRate*(self: OpenXRInterface): untyped = self.getDisplayRefreshRate()
template `displayRefreshRate=`*(self: OpenXRInterface; value) = self.setDisplayRefreshRate(value)

template renderTargetSizeMultiplier*(self: OpenXRInterface): untyped = self.getRenderTargetSizeMultiplier()
template `renderTargetSizeMultiplier=`*(self: OpenXRInterface; value) = self.setRenderTargetSizeMultiplier(value)

template foveationLevel*(self: OpenXRInterface): untyped = self.getFoveationLevel()
template `foveationLevel=`*(self: OpenXRInterface; value) = self.setFoveationLevel(value)

template foveationDynamic*(self: OpenXRInterface): untyped = self.getFoveationDynamic()
template `foveationDynamic=`*(self: OpenXRInterface; value) = self.setFoveationDynamic(value)

template vrsMinRadius*(self: OpenXRInterface): untyped = self.getVrsMinRadius()
template `vrsMinRadius=`*(self: OpenXRInterface; value) = self.setVrsMinRadius(value)

template vrsStrength*(self: OpenXRInterface): untyped = self.getVrsStrength()
template `vrsStrength=`*(self: OpenXRInterface; value) = self.setVrsStrength(value)

const OpenXRInterface_vmap =
  XRInterface.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[OpenXRInterface]): Table[string, string] = OpenXRInterface_vmap

proc sessionBegun*(self: OpenXRInterface): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("session_begun")
  self.emitSignal(signalname)

proc sessionStopping*(self: OpenXRInterface): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("session_stopping")
  self.emitSignal(signalname)

proc sessionFocussed*(self: OpenXRInterface): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("session_focussed")
  self.emitSignal(signalname)

proc sessionVisible*(self: OpenXRInterface): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("session_visible")
  self.emitSignal(signalname)

proc sessionLossPending*(self: OpenXRInterface): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("session_loss_pending")
  self.emitSignal(signalname)

proc instanceExiting*(self: OpenXRInterface): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("instance_exiting")
  self.emitSignal(signalname)

proc poseRecentered*(self: OpenXRInterface): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("pose_recentered")
  self.emitSignal(signalname)

proc refreshRateChanged*(self: OpenXRInterface; refreshRate: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("refresh_rate_changed")
  let args = [refreshRate]
  self.emitSignal(signalname, args)