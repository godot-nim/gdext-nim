{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdxrinterface; export gdxrinterface

proc getDisplayRefreshRate*(self: OpenXrInterface): Float =
  expandMethodBind(className OpenXrInterface, "get_display_refresh_rate", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setDisplayRefreshRate*(self: OpenXrInterface; refreshRate: Float): void =
  expandMethodBind(className OpenXrInterface, "set_display_refresh_rate", 373806689)
  var `?param` = [getPtr refreshRate]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRenderTargetSizeMultiplier*(self: OpenXrInterface): float64 =
  expandMethodBind(className OpenXrInterface, "get_render_target_size_multiplier", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc setRenderTargetSizeMultiplier*(self: OpenXrInterface; multiplier: float64): void =
  expandMethodBind(className OpenXrInterface, "set_render_target_size_multiplier", 373806689)
  var `?param` = [getPtr multiplier]
  methodbind.ptrcall(self, addr `?param`[0])

proc isFoveationSupported*(self: OpenXrInterface): bool =
  expandMethodBind(className OpenXrInterface, "is_foveation_supported", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getFoveationLevel*(self: OpenXrInterface): int32 =
  expandMethodBind(className OpenXrInterface, "get_foveation_level", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setFoveationLevel*(self: OpenXrInterface; foveationLevel: int32): void =
  expandMethodBind(className OpenXrInterface, "set_foveation_level", 1286410249)
  var `?param` = [getPtr foveationLevel]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFoveationDynamic*(self: OpenXrInterface): bool =
  expandMethodBind(className OpenXrInterface, "get_foveation_dynamic", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setFoveationDynamic*(self: OpenXrInterface; foveationDynamic: bool): void =
  expandMethodBind(className OpenXrInterface, "set_foveation_dynamic", 2586408642)
  var `?param` = [getPtr foveationDynamic]
  methodbind.ptrcall(self, addr `?param`[0])

proc isActionSetActive*(self: OpenXrInterface; name: String): bool =
  expandMethodBind(className OpenXrInterface, "is_action_set_active", 3927539163)
  var `?param` = [getPtr name]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc setActionSetActive*(self: OpenXrInterface; name: String; active: bool): void =
  expandMethodBind(className OpenXrInterface, "set_action_set_active", 2678287736)
  var `?param` = [getPtr name, getPtr active]
  methodbind.ptrcall(self, addr `?param`[0])

proc getActionSets*(self: OpenXrInterface): Array =
  expandMethodBind(className OpenXrInterface, "get_action_sets", 3995934104)
  var ret: encoded Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Array)

proc getAvailableDisplayRefreshRates*(self: OpenXrInterface): Array =
  expandMethodBind(className OpenXrInterface, "get_available_display_refresh_rates", 3995934104)
  var ret: encoded Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Array)

proc setMotionRange*(self: OpenXrInterface; hand: OpenXrInterface_Hand; motionRange: OpenXrInterface_HandMotionRange): void =
  expandMethodBind(className OpenXrInterface, "set_motion_range", 855158159)
  var `?param` = [getPtr hand, getPtr motionRange]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMotionRange*(self: OpenXrInterface; hand: OpenXrInterface_Hand): OpenXrInterface_HandMotionRange =
  expandMethodBind(className OpenXrInterface, "get_motion_range", 3955838114)
  var `?param` = [getPtr hand]
  var ret: encoded OpenXrInterface_HandMotionRange
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(OpenXrInterface_HandMotionRange)

proc getHandTrackingSource*(self: OpenXrInterface; hand: OpenXrInterface_Hand): OpenXrInterface_HandTrackedSource =
  expandMethodBind(className OpenXrInterface, "get_hand_tracking_source", 4092421202)
  var `?param` = [getPtr hand]
  var ret: encoded OpenXrInterface_HandTrackedSource
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(OpenXrInterface_HandTrackedSource)

proc getHandJointFlags*(self: OpenXrInterface; hand: OpenXrInterface_Hand; joint: OpenXrInterface_HandJoints): set[OpenXrInterface_HandJointFlags] =
  expandMethodBind(className OpenXrInterface, "get_hand_joint_flags", 720567706)
  var `?param` = [getPtr hand, getPtr joint]
  var ret: encoded set[OpenXrInterface_HandJointFlags]
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(set[OpenXrInterface_HandJointFlags])

proc getHandJointRotation*(self: OpenXrInterface; hand: OpenXrInterface_Hand; joint: OpenXrInterface_HandJoints): Quaternion =
  expandMethodBind(className OpenXrInterface, "get_hand_joint_rotation", 1974618321)
  var `?param` = [getPtr hand, getPtr joint]
  var ret: encoded Quaternion
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Quaternion)

proc getHandJointPosition*(self: OpenXrInterface; hand: OpenXrInterface_Hand; joint: OpenXrInterface_HandJoints): Vector3 =
  expandMethodBind(className OpenXrInterface, "get_hand_joint_position", 3529194242)
  var `?param` = [getPtr hand, getPtr joint]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc getHandJointRadius*(self: OpenXrInterface; hand: OpenXrInterface_Hand; joint: OpenXrInterface_HandJoints): Float =
  expandMethodBind(className OpenXrInterface, "get_hand_joint_radius", 901522724)
  var `?param` = [getPtr hand, getPtr joint]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc getHandJointLinearVelocity*(self: OpenXrInterface; hand: OpenXrInterface_Hand; joint: OpenXrInterface_HandJoints): Vector3 =
  expandMethodBind(className OpenXrInterface, "get_hand_joint_linear_velocity", 3529194242)
  var `?param` = [getPtr hand, getPtr joint]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc getHandJointAngularVelocity*(self: OpenXrInterface; hand: OpenXrInterface_Hand; joint: OpenXrInterface_HandJoints): Vector3 =
  expandMethodBind(className OpenXrInterface, "get_hand_joint_angular_velocity", 3529194242)
  var `?param` = [getPtr hand, getPtr joint]
  var ret: encoded Vector3
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3)

proc isHandTrackingSupported*(self: OpenXrInterface): bool =
  expandMethodBind(className OpenXrInterface, "is_hand_tracking_supported", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc isHandInteractionSupported*(self: OpenXrInterface): bool =
  expandMethodBind(className OpenXrInterface, "is_hand_interaction_supported", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc isEyeGazeInteractionSupported*(self: OpenXrInterface): bool =
  expandMethodBind(className OpenXrInterface, "is_eye_gaze_interaction_supported", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getVrsMinRadius*(self: OpenXrInterface): Float =
  expandMethodBind(className OpenXrInterface, "get_vrs_min_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setVrsMinRadius*(self: OpenXrInterface; radius: Float): void =
  expandMethodBind(className OpenXrInterface, "set_vrs_min_radius", 373806689)
  var `?param` = [getPtr radius]
  methodbind.ptrcall(self, addr `?param`[0])

proc getVrsStrength*(self: OpenXrInterface): Float =
  expandMethodBind(className OpenXrInterface, "get_vrs_strength", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setVrsStrength*(self: OpenXrInterface; strength: Float): void =
  expandMethodBind(className OpenXrInterface, "set_vrs_strength", 373806689)
  var `?param` = [getPtr strength]
  methodbind.ptrcall(self, addr `?param`[0])

template displayRefreshRate*(self: OpenXrInterface): untyped = self.getDisplayRefreshRate()
template `displayRefreshRate=`*(self: OpenXrInterface; value) = self.setDisplayRefreshRate(value)

template renderTargetSizeMultiplier*(self: OpenXrInterface): untyped = self.getRenderTargetSizeMultiplier()
template `renderTargetSizeMultiplier=`*(self: OpenXrInterface; value) = self.setRenderTargetSizeMultiplier(value)

template foveationLevel*(self: OpenXrInterface): untyped = self.getFoveationLevel()
template `foveationLevel=`*(self: OpenXrInterface; value) = self.setFoveationLevel(value)

template foveationDynamic*(self: OpenXrInterface): untyped = self.getFoveationDynamic()
template `foveationDynamic=`*(self: OpenXrInterface; value) = self.setFoveationDynamic(value)

template vrsMinRadius*(self: OpenXrInterface): untyped = self.getVrsMinRadius()
template `vrsMinRadius=`*(self: OpenXrInterface; value) = self.setVrsMinRadius(value)

template vrsStrength*(self: OpenXrInterface): untyped = self.getVrsStrength()
template `vrsStrength=`*(self: OpenXrInterface; value) = self.setVrsStrength(value)

const OpenXrInterface_vmap =
  XrInterface.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[OpenXrInterface]): Table[string, string] = OpenXrInterface_vmap

proc sessionBegun*(self: OpenXrInterface): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("session_begun")
  self.emitSignal(signalname)

proc sessionStopping*(self: OpenXrInterface): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("session_stopping")
  self.emitSignal(signalname)

proc sessionFocussed*(self: OpenXrInterface): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("session_focussed")
  self.emitSignal(signalname)

proc sessionVisible*(self: OpenXrInterface): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("session_visible")
  self.emitSignal(signalname)

proc sessionLossPending*(self: OpenXrInterface): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("session_loss_pending")
  self.emitSignal(signalname)

proc instanceExiting*(self: OpenXrInterface): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("instance_exiting")
  self.emitSignal(signalname)

proc poseRecentered*(self: OpenXrInterface): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("pose_recentered")
  self.emitSignal(signalname)

proc refreshRateChanged*(self: OpenXrInterface; refreshRate: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("refresh_rate_changed")
  let args = [refreshRate]
  self.emitSignal(signalname, args)