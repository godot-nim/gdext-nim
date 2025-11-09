{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(XRInterface, RefCounted)

proc getName*(self: XRInterface): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRInterface, "get_name", 2002593661)
  methodbind.ptrcall(self, [], StringName)

proc getCapabilities*(self: XRInterface): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRInterface, "get_capabilities", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc isPrimary*(self: XRInterface): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRInterface, "is_primary", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc setPrimary*(self: XRInterface; primary: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRInterface, "set_primary", 2586408642)
  methodbind.ptrcall(self, [getPtr primary], void)

proc isInitialized*(self: XRInterface): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRInterface, "is_initialized", 36873697)
  methodbind.ptrcall(self, [], bool)

proc initialize*(self: XRInterface): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRInterface, "initialize", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc uninitialize*(self: XRInterface): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRInterface, "uninitialize", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getSystemInfo*(self: XRInterface): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRInterface, "get_system_info", 2382534195)
  methodbind.ptrcall(self, [], Dictionary)

proc getTrackingStatus*(self: XRInterface): XRInterface_TrackingStatus =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRInterface, "get_tracking_status", 167423259)
  methodbind.ptrcall(self, [], XRInterface_TrackingStatus)

proc getRenderTargetSize*(self: XRInterface): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRInterface, "get_render_target_size", 1497962370)
  methodbind.ptrcall(self, [], Vector2)

proc getViewCount*(self: XRInterface): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRInterface, "get_view_count", 2455072627)
  methodbind.ptrcall(self, [], uint32)

proc triggerHapticPulse*(self: XRInterface; actionName: String; trackerName: StringName; frequency: float64; amplitude: float64; durationSec: float64; delaySec: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRInterface, "trigger_haptic_pulse", 3752640163)
  methodbind.ptrcall(self, [getPtr actionName, getPtr trackerName, getPtr frequency, getPtr amplitude, getPtr durationSec, getPtr delaySec], void)

proc supportsPlayAreaMode*(self: XRInterface; mode: XRInterface_PlayAreaMode): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRInterface, "supports_play_area_mode", 3429955281)
  methodbind.ptrcall(self, [getPtr mode], bool)

proc getPlayAreaMode*(self: XRInterface): XRInterface_PlayAreaMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRInterface, "get_play_area_mode", 1615132885)
  methodbind.ptrcall(self, [], XRInterface_PlayAreaMode)

proc setPlayAreaMode*(self: XRInterface; mode: XRInterface_PlayAreaMode): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRInterface, "set_play_area_mode", 3429955281)
  methodbind.ptrcall(self, [getPtr mode], bool)

proc getPlayArea*(self: XRInterface): PackedVector3Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRInterface, "get_play_area", 497664490)
  methodbind.ptrcall(self, [], PackedVector3Array)

proc getAnchorDetectionIsEnabled*(self: XRInterface): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRInterface, "get_anchor_detection_is_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setAnchorDetectionIsEnabled*(self: XRInterface; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRInterface, "set_anchor_detection_is_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc getCameraFeedId*(self: XRInterface): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRInterface, "get_camera_feed_id", 2455072627)
  methodbind.ptrcall(self, [], int32)

proc isPassthroughSupported*(self: XRInterface): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRInterface, "is_passthrough_supported", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc isPassthroughEnabled*(self: XRInterface): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRInterface, "is_passthrough_enabled", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc startPassthrough*(self: XRInterface): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRInterface, "start_passthrough", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc stopPassthrough*(self: XRInterface): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRInterface, "stop_passthrough", 3218959716)
  methodbind.ptrcall(self, [], void)

proc getTransformForView*(self: XRInterface; view: uint32; camTransform: Transform3D): Transform3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRInterface, "get_transform_for_view", 518934792)
  methodbind.ptrcall(self, [getPtr view, getPtr camTransform], Transform3D)

proc getProjectionForView*(self: XRInterface; view: uint32; aspect: float64; near: float64; far: float64): Projection =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRInterface, "get_projection_for_view", 3766090294)
  methodbind.ptrcall(self, [getPtr view, getPtr aspect, getPtr near, getPtr far], Projection)

proc getSupportedEnvironmentBlendModes*(self: XRInterface): Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRInterface, "get_supported_environment_blend_modes", 2915620761)
  methodbind.ptrcall(self, [], Array)

proc setEnvironmentBlendMode*(self: XRInterface; mode: XRInterface_EnvironmentBlendMode): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRInterface, "set_environment_blend_mode", 551152418)
  methodbind.ptrcall(self, [getPtr mode], bool)

proc getEnvironmentBlendMode*(self: XRInterface): XRInterface_EnvironmentBlendMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className XRInterface, "get_environment_blend_mode", 1984334071)
  methodbind.ptrcall(self, [], XRInterface_EnvironmentBlendMode)

template interfaceIsPrimary*(self: XRInterface): untyped = self.isPrimary()
template `interfaceIsPrimary=`*(self: XRInterface; value) = self.setPrimary(value)

template xrPlayAreaMode*(self: XRInterface): untyped = self.getPlayAreaMode()
template `xrPlayAreaMode=`*(self: XRInterface; value) = self.setPlayAreaMode(value)

template environmentBlendMode*(self: XRInterface): untyped = self.getEnvironmentBlendMode()
template `environmentBlendMode=`*(self: XRInterface; value) = self.setEnvironmentBlendMode(value)

template arIsAnchorDetectionEnabled*(self: XRInterface): untyped = self.getAnchorDetectionIsEnabled()
template `arIsAnchorDetectionEnabled=`*(self: XRInterface; value) = self.setAnchorDetectionIsEnabled(value)
