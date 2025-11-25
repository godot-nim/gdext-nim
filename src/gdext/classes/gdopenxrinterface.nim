{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdxrinterface; export gdxrinterface

expandOnClassImported(OpenXRInterface, XRInterface)

proc getSessionState*(self: OpenXRInterface): OpenXRInterface_SessionState =
  expandMethodBind(className OpenXRInterface, "get_session_state", 896364779)
  var ret: encoded OpenXRInterface_SessionState
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(OpenXRInterface_SessionState)

proc getDisplayRefreshRate*(self: OpenXRInterface): Float =
  expandMethodBind(className OpenXRInterface, "get_display_refresh_rate", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setDisplayRefreshRate*(self: OpenXRInterface; refreshRate: Float): void =
  expandMethodBind(className OpenXRInterface, "set_display_refresh_rate", 373806689)
  methodbind.ptrcall(self, [getPtr refreshRate])

proc getRenderTargetSizeMultiplier*(self: OpenXRInterface): float64 =
  expandMethodBind(className OpenXRInterface, "get_render_target_size_multiplier", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(float64)

proc setRenderTargetSizeMultiplier*(self: OpenXRInterface; multiplier: float64): void =
  expandMethodBind(className OpenXRInterface, "set_render_target_size_multiplier", 373806689)
  methodbind.ptrcall(self, [getPtr multiplier])

proc isFoveationSupported*(self: OpenXRInterface): bool =
  expandMethodBind(className OpenXRInterface, "is_foveation_supported", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getFoveationLevel*(self: OpenXRInterface): int32 =
  expandMethodBind(className OpenXRInterface, "get_foveation_level", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setFoveationLevel*(self: OpenXRInterface; foveationLevel: int32): void =
  expandMethodBind(className OpenXRInterface, "set_foveation_level", 1286410249)
  methodbind.ptrcall(self, [getPtr foveationLevel])

proc getFoveationDynamic*(self: OpenXRInterface): bool =
  expandMethodBind(className OpenXRInterface, "get_foveation_dynamic", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setFoveationDynamic*(self: OpenXRInterface; foveationDynamic: bool): void =
  expandMethodBind(className OpenXRInterface, "set_foveation_dynamic", 2586408642)
  methodbind.ptrcall(self, [getPtr foveationDynamic])

proc isActionSetActive*(self: OpenXRInterface; name: String): bool =
  expandMethodBind(className OpenXRInterface, "is_action_set_active", 3927539163)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(bool)

proc setActionSetActive*(self: OpenXRInterface; name: String; active: bool): void =
  expandMethodBind(className OpenXRInterface, "set_action_set_active", 2678287736)
  methodbind.ptrcall(self, [getPtr name, getPtr active])

proc getActionSets*(self: OpenXRInterface): Array[Variant] =
  expandMethodBind(className OpenXRInterface, "get_action_sets", 3995934104)
  var ret: encoded Array[Variant]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Array[Variant])

proc getAvailableDisplayRefreshRates*(self: OpenXRInterface): Array[Variant] =
  expandMethodBind(className OpenXRInterface, "get_available_display_refresh_rates", 3995934104)
  var ret: encoded Array[Variant]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Array[Variant])

proc setMotionRange*(self: OpenXRInterface; hand: OpenXRInterface_Hand; motionRange: OpenXRInterface_HandMotionRange): void =
  expandMethodBind(className OpenXRInterface, "set_motion_range", 855158159)
  methodbind.ptrcall(self, [getPtr hand, getPtr motionRange])

proc getMotionRange*(self: OpenXRInterface; hand: OpenXRInterface_Hand): OpenXRInterface_HandMotionRange =
  expandMethodBind(className OpenXRInterface, "get_motion_range", 3955838114)
  var ret: encoded OpenXRInterface_HandMotionRange
  methodbind.ptrcall(self, [getPtr hand], addr ret)
  (addr ret).decode_result(OpenXRInterface_HandMotionRange)

proc getHandTrackingSource*(self: OpenXRInterface; hand: OpenXRInterface_Hand): OpenXRInterface_HandTrackedSource =
  expandMethodBind(className OpenXRInterface, "get_hand_tracking_source", 4092421202)
  var ret: encoded OpenXRInterface_HandTrackedSource
  methodbind.ptrcall(self, [getPtr hand], addr ret)
  (addr ret).decode_result(OpenXRInterface_HandTrackedSource)

proc getHandJointFlags*(self: OpenXRInterface; hand: OpenXRInterface_Hand; joint: OpenXRInterface_HandJoints): set[OpenXRInterface_HandJointFlags] =
  expandMethodBind(className OpenXRInterface, "get_hand_joint_flags", 720567706)
  var ret: encoded set[OpenXRInterface_HandJointFlags]
  methodbind.ptrcall(self, [getPtr hand, getPtr joint], addr ret)
  (addr ret).decode_result(set[OpenXRInterface_HandJointFlags])

proc getHandJointRotation*(self: OpenXRInterface; hand: OpenXRInterface_Hand; joint: OpenXRInterface_HandJoints): Quaternion =
  expandMethodBind(className OpenXRInterface, "get_hand_joint_rotation", 1974618321)
  var ret: encoded Quaternion
  methodbind.ptrcall(self, [getPtr hand, getPtr joint], addr ret)
  (addr ret).decode_result(Quaternion)

proc getHandJointPosition*(self: OpenXRInterface; hand: OpenXRInterface_Hand; joint: OpenXRInterface_HandJoints): Vector3 =
  expandMethodBind(className OpenXRInterface, "get_hand_joint_position", 3529194242)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [getPtr hand, getPtr joint], addr ret)
  (addr ret).decode_result(Vector3)

proc getHandJointRadius*(self: OpenXRInterface; hand: OpenXRInterface_Hand; joint: OpenXRInterface_HandJoints): Float =
  expandMethodBind(className OpenXRInterface, "get_hand_joint_radius", 901522724)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr hand, getPtr joint], addr ret)
  (addr ret).decode_result(Float)

proc getHandJointLinearVelocity*(self: OpenXRInterface; hand: OpenXRInterface_Hand; joint: OpenXRInterface_HandJoints): Vector3 =
  expandMethodBind(className OpenXRInterface, "get_hand_joint_linear_velocity", 3529194242)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [getPtr hand, getPtr joint], addr ret)
  (addr ret).decode_result(Vector3)

proc getHandJointAngularVelocity*(self: OpenXRInterface; hand: OpenXRInterface_Hand; joint: OpenXRInterface_HandJoints): Vector3 =
  expandMethodBind(className OpenXRInterface, "get_hand_joint_angular_velocity", 3529194242)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [getPtr hand, getPtr joint], addr ret)
  (addr ret).decode_result(Vector3)

proc isHandTrackingSupported*(self: OpenXRInterface): bool =
  expandMethodBind(className OpenXRInterface, "is_hand_tracking_supported", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc isHandInteractionSupported*(self: OpenXRInterface): bool =
  expandMethodBind(className OpenXRInterface, "is_hand_interaction_supported", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc isEyeGazeInteractionSupported*(self: OpenXRInterface): bool =
  expandMethodBind(className OpenXRInterface, "is_eye_gaze_interaction_supported", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getVrsMinRadius*(self: OpenXRInterface): Float =
  expandMethodBind(className OpenXRInterface, "get_vrs_min_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setVrsMinRadius*(self: OpenXRInterface; radius: Float): void =
  expandMethodBind(className OpenXRInterface, "set_vrs_min_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius])

proc getVrsStrength*(self: OpenXRInterface): Float =
  expandMethodBind(className OpenXRInterface, "get_vrs_strength", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setVrsStrength*(self: OpenXRInterface; strength: Float): void =
  expandMethodBind(className OpenXRInterface, "set_vrs_strength", 373806689)
  methodbind.ptrcall(self, [getPtr strength])

proc setCpuLevel*(self: OpenXRInterface; level: OpenXRInterface_PerfSettingsLevel): void =
  expandMethodBind(className OpenXRInterface, "set_cpu_level", 2940842095)
  methodbind.ptrcall(self, [getPtr level])

proc setGpuLevel*(self: OpenXRInterface; level: OpenXRInterface_PerfSettingsLevel): void =
  expandMethodBind(className OpenXRInterface, "set_gpu_level", 2940842095)
  methodbind.ptrcall(self, [getPtr level])

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
