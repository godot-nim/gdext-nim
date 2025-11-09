{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdxrinterface; export gdxrinterface

expandOnClassImported(OpenXRInterface, XRInterface)

proc getSessionState*(self: OpenXRInterface): OpenXRInterface_SessionState =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRInterface, "get_session_state", 896364779)
  methodbind.ptrcall(self, [], OpenXRInterface_SessionState)

proc getDisplayRefreshRate*(self: OpenXRInterface): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRInterface, "get_display_refresh_rate", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setDisplayRefreshRate*(self: OpenXRInterface; refreshRate: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRInterface, "set_display_refresh_rate", 373806689)
  methodbind.ptrcall(self, [getPtr refreshRate], void)

proc getRenderTargetSizeMultiplier*(self: OpenXRInterface): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRInterface, "get_render_target_size_multiplier", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc setRenderTargetSizeMultiplier*(self: OpenXRInterface; multiplier: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRInterface, "set_render_target_size_multiplier", 373806689)
  methodbind.ptrcall(self, [getPtr multiplier], void)

proc isFoveationSupported*(self: OpenXRInterface): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRInterface, "is_foveation_supported", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getFoveationLevel*(self: OpenXRInterface): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRInterface, "get_foveation_level", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setFoveationLevel*(self: OpenXRInterface; foveationLevel: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRInterface, "set_foveation_level", 1286410249)
  methodbind.ptrcall(self, [getPtr foveationLevel], void)

proc getFoveationDynamic*(self: OpenXRInterface): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRInterface, "get_foveation_dynamic", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setFoveationDynamic*(self: OpenXRInterface; foveationDynamic: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRInterface, "set_foveation_dynamic", 2586408642)
  methodbind.ptrcall(self, [getPtr foveationDynamic], void)

proc isActionSetActive*(self: OpenXRInterface; name: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRInterface, "is_action_set_active", 3927539163)
  methodbind.ptrcall(self, [getPtr name], bool)

proc setActionSetActive*(self: OpenXRInterface; name: String; active: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRInterface, "set_action_set_active", 2678287736)
  methodbind.ptrcall(self, [getPtr name, getPtr active], void)

proc getActionSets*(self: OpenXRInterface): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRInterface, "get_action_sets", 3995934104)
  methodbind.ptrcall(self, [], Array)

proc getAvailableDisplayRefreshRates*(self: OpenXRInterface): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRInterface, "get_available_display_refresh_rates", 3995934104)
  methodbind.ptrcall(self, [], Array)

proc setMotionRange*(self: OpenXRInterface; hand: OpenXRInterface_Hand; motionRange: OpenXRInterface_HandMotionRange): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRInterface, "set_motion_range", 855158159)
  methodbind.ptrcall(self, [getPtr hand, getPtr motionRange], void)

proc getMotionRange*(self: OpenXRInterface; hand: OpenXRInterface_Hand): OpenXRInterface_HandMotionRange =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRInterface, "get_motion_range", 3955838114)
  methodbind.ptrcall(self, [getPtr hand], OpenXRInterface_HandMotionRange)

proc getHandTrackingSource*(self: OpenXRInterface; hand: OpenXRInterface_Hand): OpenXRInterface_HandTrackedSource =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRInterface, "get_hand_tracking_source", 4092421202)
  methodbind.ptrcall(self, [getPtr hand], OpenXRInterface_HandTrackedSource)

proc getHandJointFlags*(self: OpenXRInterface; hand: OpenXRInterface_Hand; joint: OpenXRInterface_HandJoints): set[OpenXRInterface_HandJointFlags] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRInterface, "get_hand_joint_flags", 720567706)
  methodbind.ptrcall(self, [getPtr hand, getPtr joint], set[OpenXRInterface_HandJointFlags])

proc getHandJointRotation*(self: OpenXRInterface; hand: OpenXRInterface_Hand; joint: OpenXRInterface_HandJoints): Quaternion =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRInterface, "get_hand_joint_rotation", 1974618321)
  methodbind.ptrcall(self, [getPtr hand, getPtr joint], Quaternion)

proc getHandJointPosition*(self: OpenXRInterface; hand: OpenXRInterface_Hand; joint: OpenXRInterface_HandJoints): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRInterface, "get_hand_joint_position", 3529194242)
  methodbind.ptrcall(self, [getPtr hand, getPtr joint], Vector3)

proc getHandJointRadius*(self: OpenXRInterface; hand: OpenXRInterface_Hand; joint: OpenXRInterface_HandJoints): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRInterface, "get_hand_joint_radius", 901522724)
  methodbind.ptrcall(self, [getPtr hand, getPtr joint], Float)

proc getHandJointLinearVelocity*(self: OpenXRInterface; hand: OpenXRInterface_Hand; joint: OpenXRInterface_HandJoints): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRInterface, "get_hand_joint_linear_velocity", 3529194242)
  methodbind.ptrcall(self, [getPtr hand, getPtr joint], Vector3)

proc getHandJointAngularVelocity*(self: OpenXRInterface; hand: OpenXRInterface_Hand; joint: OpenXRInterface_HandJoints): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRInterface, "get_hand_joint_angular_velocity", 3529194242)
  methodbind.ptrcall(self, [getPtr hand, getPtr joint], Vector3)

proc isHandTrackingSupported*(self: OpenXRInterface): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRInterface, "is_hand_tracking_supported", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc isHandInteractionSupported*(self: OpenXRInterface): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRInterface, "is_hand_interaction_supported", 36873697)
  methodbind.ptrcall(self, [], bool)

proc isEyeGazeInteractionSupported*(self: OpenXRInterface): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRInterface, "is_eye_gaze_interaction_supported", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc getVrsMinRadius*(self: OpenXRInterface): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRInterface, "get_vrs_min_radius", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setVrsMinRadius*(self: OpenXRInterface; radius: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRInterface, "set_vrs_min_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius], void)

proc getVrsStrength*(self: OpenXRInterface): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRInterface, "get_vrs_strength", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setVrsStrength*(self: OpenXRInterface; strength: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRInterface, "set_vrs_strength", 373806689)
  methodbind.ptrcall(self, [getPtr strength], void)

proc setCpuLevel*(self: OpenXRInterface; level: OpenXRInterface_PerfSettingsLevel): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRInterface, "set_cpu_level", 2940842095)
  methodbind.ptrcall(self, [getPtr level], void)

proc setGpuLevel*(self: OpenXRInterface; level: OpenXRInterface_PerfSettingsLevel): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRInterface, "set_gpu_level", 2940842095)
  methodbind.ptrcall(self, [getPtr level], void)

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
