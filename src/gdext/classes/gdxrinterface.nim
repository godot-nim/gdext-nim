{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc getName*(self: XrInterface): StringName =
  expandMethodBind(className XrInterface, "get_name", 2002593661)
  var ret: encoded StringName
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(StringName)

proc getCapabilities*(self: XrInterface): uint32 =
  expandMethodBind(className XrInterface, "get_capabilities", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc isPrimary*(self: XrInterface): bool =
  expandMethodBind(className XrInterface, "is_primary", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setPrimary*(self: XrInterface; primary: bool): void =
  expandMethodBind(className XrInterface, "set_primary", 2586408642)
  var `?param` = [getPtr primary]
  methodbind.ptrcall(self, addr `?param`[0])

proc isInitialized*(self: XrInterface): bool =
  expandMethodBind(className XrInterface, "is_initialized", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc initialize*(self: XrInterface): bool =
  expandMethodBind(className XrInterface, "initialize", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc uninitialize*(self: XrInterface): void =
  expandMethodBind(className XrInterface, "uninitialize", 3218959716)
  methodbind.ptrcall(self, nil)

proc getSystemInfo*(self: XrInterface): Dictionary =
  expandMethodBind(className XrInterface, "get_system_info", 2382534195)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Dictionary)

proc getTrackingStatus*(self: XrInterface): XrInterface_TrackingStatus =
  expandMethodBind(className XrInterface, "get_tracking_status", 167423259)
  var ret: encoded XrInterface_TrackingStatus
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(XrInterface_TrackingStatus)

proc getRenderTargetSize*(self: XrInterface): Vector2 =
  expandMethodBind(className XrInterface, "get_render_target_size", 1497962370)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

proc getViewCount*(self: XrInterface): uint32 =
  expandMethodBind(className XrInterface, "get_view_count", 2455072627)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc triggerHapticPulse*(self: XrInterface; actionName: String; trackerName: StringName; frequency: float64; amplitude: float64; durationSec: float64; delaySec: float64): void =
  expandMethodBind(className XrInterface, "trigger_haptic_pulse", 3752640163)
  var `?param` = [getPtr actionName, getPtr trackerName, getPtr frequency, getPtr amplitude, getPtr durationSec, getPtr delaySec]
  methodbind.ptrcall(self, addr `?param`[0])

proc supportsPlayAreaMode*(self: XrInterface; mode: XrInterface_PlayAreaMode): bool =
  expandMethodBind(className XrInterface, "supports_play_area_mode", 3429955281)
  var `?param` = [getPtr mode]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getPlayAreaMode*(self: XrInterface): XrInterface_PlayAreaMode =
  expandMethodBind(className XrInterface, "get_play_area_mode", 1615132885)
  var ret: encoded XrInterface_PlayAreaMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(XrInterface_PlayAreaMode)

proc setPlayAreaMode*(self: XrInterface; mode: XrInterface_PlayAreaMode): bool =
  expandMethodBind(className XrInterface, "set_play_area_mode", 3429955281)
  var `?param` = [getPtr mode]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getPlayArea*(self: XrInterface): PackedVector3Array =
  expandMethodBind(className XrInterface, "get_play_area", 497664490)
  var ret: encoded PackedVector3Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedVector3Array)

proc getAnchorDetectionIsEnabled*(self: XrInterface): bool =
  expandMethodBind(className XrInterface, "get_anchor_detection_is_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setAnchorDetectionIsEnabled*(self: XrInterface; enable: bool): void =
  expandMethodBind(className XrInterface, "set_anchor_detection_is_enabled", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCameraFeedId*(self: XrInterface): int32 =
  expandMethodBind(className XrInterface, "get_camera_feed_id", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc isPassthroughSupported*(self: XrInterface): bool =
  expandMethodBind(className XrInterface, "is_passthrough_supported", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc isPassthroughEnabled*(self: XrInterface): bool =
  expandMethodBind(className XrInterface, "is_passthrough_enabled", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc startPassthrough*(self: XrInterface): bool =
  expandMethodBind(className XrInterface, "start_passthrough", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc stopPassthrough*(self: XrInterface): void =
  expandMethodBind(className XrInterface, "stop_passthrough", 3218959716)
  methodbind.ptrcall(self, nil)

proc getTransformForView*(self: XrInterface; view: uint32; camTransform: Transform3D): Transform3D =
  expandMethodBind(className XrInterface, "get_transform_for_view", 518934792)
  var `?param` = [getPtr view, getPtr camTransform]
  var ret: encoded Transform3D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Transform3D)

proc getProjectionForView*(self: XrInterface; view: uint32; aspect: float64; near: float64; far: float64): Projection =
  expandMethodBind(className XrInterface, "get_projection_for_view", 3766090294)
  var `?param` = [getPtr view, getPtr aspect, getPtr near, getPtr far]
  var ret: encoded Projection
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Projection)

proc getSupportedEnvironmentBlendModes*(self: XrInterface): Array =
  expandMethodBind(className XrInterface, "get_supported_environment_blend_modes", 2915620761)
  var ret: encoded Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Array)

proc setEnvironmentBlendMode*(self: XrInterface; mode: XrInterface_EnvironmentBlendMode): bool =
  expandMethodBind(className XrInterface, "set_environment_blend_mode", 551152418)
  var `?param` = [getPtr mode]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getEnvironmentBlendMode*(self: XrInterface): XrInterface_EnvironmentBlendMode =
  expandMethodBind(className XrInterface, "get_environment_blend_mode", 1984334071)
  var ret: encoded XrInterface_EnvironmentBlendMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(XrInterface_EnvironmentBlendMode)

template interfaceIsPrimary*(self: XrInterface): untyped = self.isPrimary()
template `interfaceIsPrimary=`*(self: XrInterface; value) = self.setPrimary(value)

template xrPlayAreaMode*(self: XrInterface): untyped = self.getPlayAreaMode()
template `xrPlayAreaMode=`*(self: XrInterface; value) = self.setPlayAreaMode(value)

template environmentBlendMode*(self: XrInterface): untyped = self.getEnvironmentBlendMode()
template `environmentBlendMode=`*(self: XrInterface; value) = self.setEnvironmentBlendMode(value)

template arIsAnchorDetectionEnabled*(self: XrInterface): untyped = self.getAnchorDetectionIsEnabled()
template `arIsAnchorDetectionEnabled=`*(self: XrInterface; value) = self.setAnchorDetectionIsEnabled(value)

const XrInterface_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[XrInterface]): Table[string, string] = XrInterface_vmap

proc playAreaChanged*(self: XrInterface; mode: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("play_area_changed")
  let args = [mode]
  self.emitSignal(signalname, args)