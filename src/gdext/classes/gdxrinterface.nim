{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc getName*(self: XRInterface): StringName =
  expandMethodBind(className XRInterface, "get_name", 2002593661)
  var ret: encoded StringName
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(StringName)

proc getCapabilities*(self: XRInterface): uint32 =
  expandMethodBind(className XRInterface, "get_capabilities", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint32)

proc isPrimary*(self: XRInterface): bool =
  expandMethodBind(className XRInterface, "is_primary", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setPrimary*(self: XRInterface; primary: bool): void =
  expandMethodBind(className XRInterface, "set_primary", 2586408642)
  methodbind.ptrcall(self, [getPtr primary])

proc isInitialized*(self: XRInterface): bool =
  expandMethodBind(className XRInterface, "is_initialized", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc initialize*(self: XRInterface): bool =
  expandMethodBind(className XRInterface, "initialize", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc uninitialize*(self: XRInterface): void =
  expandMethodBind(className XRInterface, "uninitialize", 3218959716)
  methodbind.ptrcall(self, [])

proc getSystemInfo*(self: XRInterface): Dictionary =
  expandMethodBind(className XRInterface, "get_system_info", 2382534195)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Dictionary)

proc getTrackingStatus*(self: XRInterface): XRInterface_TrackingStatus =
  expandMethodBind(className XRInterface, "get_tracking_status", 167423259)
  var ret: encoded XRInterface_TrackingStatus
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(XRInterface_TrackingStatus)

proc getRenderTargetSize*(self: XRInterface): Vector2 =
  expandMethodBind(className XRInterface, "get_render_target_size", 1497962370)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc getViewCount*(self: XRInterface): uint32 =
  expandMethodBind(className XRInterface, "get_view_count", 2455072627)
  var ret: encoded uint32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint32)

proc triggerHapticPulse*(self: XRInterface; actionName: String; trackerName: StringName; frequency: float64; amplitude: float64; durationSec: float64; delaySec: float64): void =
  expandMethodBind(className XRInterface, "trigger_haptic_pulse", 3752640163)
  methodbind.ptrcall(self, [getPtr actionName, getPtr trackerName, getPtr frequency, getPtr amplitude, getPtr durationSec, getPtr delaySec])

proc supportsPlayAreaMode*(self: XRInterface; mode: XRInterface_PlayAreaMode): bool =
  expandMethodBind(className XRInterface, "supports_play_area_mode", 3429955281)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr mode], addr ret)
  (addr ret).decode_result(bool)

proc getPlayAreaMode*(self: XRInterface): XRInterface_PlayAreaMode =
  expandMethodBind(className XRInterface, "get_play_area_mode", 1615132885)
  var ret: encoded XRInterface_PlayAreaMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(XRInterface_PlayAreaMode)

proc setPlayAreaMode*(self: XRInterface; mode: XRInterface_PlayAreaMode): bool =
  expandMethodBind(className XRInterface, "set_play_area_mode", 3429955281)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr mode], addr ret)
  (addr ret).decode_result(bool)

proc getPlayArea*(self: XRInterface): PackedVector3Array =
  expandMethodBind(className XRInterface, "get_play_area", 497664490)
  var ret: encoded PackedVector3Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedVector3Array)

proc getAnchorDetectionIsEnabled*(self: XRInterface): bool =
  expandMethodBind(className XRInterface, "get_anchor_detection_is_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setAnchorDetectionIsEnabled*(self: XRInterface; enable: bool): void =
  expandMethodBind(className XRInterface, "set_anchor_detection_is_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc getCameraFeedId*(self: XRInterface): int32 =
  expandMethodBind(className XRInterface, "get_camera_feed_id", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc isPassthroughSupported*(self: XRInterface): bool =
  expandMethodBind(className XRInterface, "is_passthrough_supported", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc isPassthroughEnabled*(self: XRInterface): bool =
  expandMethodBind(className XRInterface, "is_passthrough_enabled", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc startPassthrough*(self: XRInterface): bool =
  expandMethodBind(className XRInterface, "start_passthrough", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc stopPassthrough*(self: XRInterface): void =
  expandMethodBind(className XRInterface, "stop_passthrough", 3218959716)
  methodbind.ptrcall(self, [])

proc getTransformForView*(self: XRInterface; view: uint32; camTransform: Transform3D): Transform3D =
  expandMethodBind(className XRInterface, "get_transform_for_view", 518934792)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, [getPtr view, getPtr camTransform], addr ret)
  (addr ret).decode_result(Transform3D)

proc getProjectionForView*(self: XRInterface; view: uint32; aspect: float64; near: float64; far: float64): Projection =
  expandMethodBind(className XRInterface, "get_projection_for_view", 3766090294)
  var ret: encoded Projection
  methodbind.ptrcall(self, [getPtr view, getPtr aspect, getPtr near, getPtr far], addr ret)
  (addr ret).decode_result(Projection)

proc getSupportedEnvironmentBlendModes*(self: XRInterface): Array =
  expandMethodBind(className XRInterface, "get_supported_environment_blend_modes", 2915620761)
  var ret: encoded Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Array)

proc setEnvironmentBlendMode*(self: XRInterface; mode: XRInterface_EnvironmentBlendMode): bool =
  expandMethodBind(className XRInterface, "set_environment_blend_mode", 551152418)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr mode], addr ret)
  (addr ret).decode_result(bool)

proc getEnvironmentBlendMode*(self: XRInterface): XRInterface_EnvironmentBlendMode =
  expandMethodBind(className XRInterface, "get_environment_blend_mode", 1984334071)
  var ret: encoded XRInterface_EnvironmentBlendMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(XRInterface_EnvironmentBlendMode)

template interfaceIsPrimary*(self: XRInterface): untyped = self.isPrimary()
template `interfaceIsPrimary=`*(self: XRInterface; value) = self.setPrimary(value)

template xrPlayAreaMode*(self: XRInterface): untyped = self.getPlayAreaMode()
template `xrPlayAreaMode=`*(self: XRInterface; value) = self.setPlayAreaMode(value)

template environmentBlendMode*(self: XRInterface): untyped = self.getEnvironmentBlendMode()
template `environmentBlendMode=`*(self: XRInterface; value) = self.setEnvironmentBlendMode(value)

template arIsAnchorDetectionEnabled*(self: XRInterface): untyped = self.getAnchorDetectionIsEnabled()
template `arIsAnchorDetectionEnabled=`*(self: XRInterface; value) = self.setAnchorDetectionIsEnabled(value)

const XRInterface_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[XRInterface]): Table[string, string] = XRInterface_vmap

proc playAreaChanged*(self: XRInterface; mode: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("play_area_changed")
  let args = [mode]
  self.emitSignal(signalname, args)