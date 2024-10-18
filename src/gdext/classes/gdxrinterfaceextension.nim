{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdxrinterface; export gdxrinterface

method getName*(self: XrInterfaceExtension): StringName {.base.} = (discard)
proc getName(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[XrInterfaceExtension](p_instance).getName().encode(r_ret)
template getName_bind*(_: typedesc[XrInterfaceExtension]): ClassCallVirtual = getName

method getCapabilities*(self: XrInterfaceExtension): uint32 {.base.} = (discard)
proc getCapabilities(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[XrInterfaceExtension](p_instance).getCapabilities().encode(r_ret)
template getCapabilities_bind*(_: typedesc[XrInterfaceExtension]): ClassCallVirtual = getCapabilities

method isInitialized*(self: XrInterfaceExtension): bool {.base.} = (discard)
proc isInitialized(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[XrInterfaceExtension](p_instance).isInitialized().encode(r_ret)
template isInitialized_bind*(_: typedesc[XrInterfaceExtension]): ClassCallVirtual = isInitialized

method initialize*(self: XrInterfaceExtension): bool {.base.} = (discard)
proc initialize(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[XrInterfaceExtension](p_instance).initialize().encode(r_ret)
template initialize_bind*(_: typedesc[XrInterfaceExtension]): ClassCallVirtual = initialize

method uninitialize*(self: XrInterfaceExtension): void {.base.} = (discard)
proc uninitialize(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[XrInterfaceExtension](p_instance).uninitialize()
template uninitialize_bind*(_: typedesc[XrInterfaceExtension]): ClassCallVirtual = uninitialize

method getSystemInfo*(self: XrInterfaceExtension): Dictionary {.base.} = (discard)
proc getSystemInfo(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[XrInterfaceExtension](p_instance).getSystemInfo().encode(r_ret)
template getSystemInfo_bind*(_: typedesc[XrInterfaceExtension]): ClassCallVirtual = getSystemInfo

method supportsPlayAreaMode*(self: XrInterfaceExtension; mode: XrInterface_PlayAreaMode): bool {.base.} = (discard)
proc supportsPlayAreaMode(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[XrInterfaceExtension](p_instance).supportsPlayAreaMode(p_args[0].decode(XrInterface_PlayAreaMode)).encode(r_ret)
template supportsPlayAreaMode_bind*(_: typedesc[XrInterfaceExtension]): ClassCallVirtual = supportsPlayAreaMode

method getPlayAreaMode*(self: XrInterfaceExtension): XrInterface_PlayAreaMode {.base.} = (discard)
proc getPlayAreaMode(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[XrInterfaceExtension](p_instance).getPlayAreaMode().encode(r_ret)
template getPlayAreaMode_bind*(_: typedesc[XrInterfaceExtension]): ClassCallVirtual = getPlayAreaMode

method setPlayAreaMode*(self: XrInterfaceExtension; mode: XrInterface_PlayAreaMode): bool {.base.} = (discard)
proc setPlayAreaMode(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[XrInterfaceExtension](p_instance).setPlayAreaMode(p_args[0].decode(XrInterface_PlayAreaMode)).encode(r_ret)
template setPlayAreaMode_bind*(_: typedesc[XrInterfaceExtension]): ClassCallVirtual = setPlayAreaMode

method getPlayArea*(self: XrInterfaceExtension): PackedVector3Array {.base.} = (discard)
proc getPlayArea(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[XrInterfaceExtension](p_instance).getPlayArea().encode(r_ret)
template getPlayArea_bind*(_: typedesc[XrInterfaceExtension]): ClassCallVirtual = getPlayArea

method getRenderTargetSize*(self: XrInterfaceExtension): Vector2 {.base.} = (discard)
proc getRenderTargetSize(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[XrInterfaceExtension](p_instance).getRenderTargetSize().encode(r_ret)
template getRenderTargetSize_bind*(_: typedesc[XrInterfaceExtension]): ClassCallVirtual = getRenderTargetSize

method getViewCount*(self: XrInterfaceExtension): uint32 {.base.} = (discard)
proc getViewCount(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[XrInterfaceExtension](p_instance).getViewCount().encode(r_ret)
template getViewCount_bind*(_: typedesc[XrInterfaceExtension]): ClassCallVirtual = getViewCount

method getCameraTransform*(self: XrInterfaceExtension): Transform3D {.base.} = (discard)
proc getCameraTransform(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[XrInterfaceExtension](p_instance).getCameraTransform().encode(r_ret)
template getCameraTransform_bind*(_: typedesc[XrInterfaceExtension]): ClassCallVirtual = getCameraTransform

method getTransformForView*(self: XrInterfaceExtension; view: uint32; camTransform: Transform3D): Transform3D {.base.} = (discard)
proc getTransformForView(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[XrInterfaceExtension](p_instance).getTransformForView(p_args[0].decode(uint32), p_args[1].decode(Transform3D)).encode(r_ret)
template getTransformForView_bind*(_: typedesc[XrInterfaceExtension]): ClassCallVirtual = getTransformForView

method getProjectionForView*(self: XrInterfaceExtension; view: uint32; aspect: float64; zNear: float64; zFar: float64): PackedFloat64Array {.base.} = (discard)
proc getProjectionForView(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[XrInterfaceExtension](p_instance).getProjectionForView(p_args[0].decode(uint32), p_args[1].decode(float64), p_args[2].decode(float64), p_args[3].decode(float64)).encode(r_ret)
template getProjectionForView_bind*(_: typedesc[XrInterfaceExtension]): ClassCallVirtual = getProjectionForView

method getVrsTexture*(self: XrInterfaceExtension): Rid {.base.} = (discard)
proc getVrsTexture(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[XrInterfaceExtension](p_instance).getVrsTexture().encode(r_ret)
template getVrsTexture_bind*(_: typedesc[XrInterfaceExtension]): ClassCallVirtual = getVrsTexture

method process*(self: XrInterfaceExtension): void {.base.} = (discard)
proc process(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[XrInterfaceExtension](p_instance).process()
template process_bind*(_: typedesc[XrInterfaceExtension]): ClassCallVirtual = process

method preRender*(self: XrInterfaceExtension): void {.base.} = (discard)
proc preRender(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[XrInterfaceExtension](p_instance).preRender()
template preRender_bind*(_: typedesc[XrInterfaceExtension]): ClassCallVirtual = preRender

method preDrawViewport*(self: XrInterfaceExtension; renderTarget: Rid): bool {.base.} = (discard)
proc preDrawViewport(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[XrInterfaceExtension](p_instance).preDrawViewport(p_args[0].decode(Rid)).encode(r_ret)
template preDrawViewport_bind*(_: typedesc[XrInterfaceExtension]): ClassCallVirtual = preDrawViewport

method postDrawViewport*(self: XrInterfaceExtension; renderTarget: Rid; screenRect: Rect2): void {.base.} = (discard)
proc postDrawViewport(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[XrInterfaceExtension](p_instance).postDrawViewport(p_args[0].decode(Rid), p_args[1].decode(Rect2))
template postDrawViewport_bind*(_: typedesc[XrInterfaceExtension]): ClassCallVirtual = postDrawViewport

method endFrame*(self: XrInterfaceExtension): void {.base.} = (discard)
proc endFrame(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[XrInterfaceExtension](p_instance).endFrame()
template endFrame_bind*(_: typedesc[XrInterfaceExtension]): ClassCallVirtual = endFrame

method getSuggestedTrackerNames*(self: XrInterfaceExtension): PackedStringArray {.base.} = (discard)
proc getSuggestedTrackerNames(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[XrInterfaceExtension](p_instance).getSuggestedTrackerNames().encode(r_ret)
template getSuggestedTrackerNames_bind*(_: typedesc[XrInterfaceExtension]): ClassCallVirtual = getSuggestedTrackerNames

method getSuggestedPoseNames*(self: XrInterfaceExtension; trackerName: StringName): PackedStringArray {.base.} = (discard)
proc getSuggestedPoseNames(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[XrInterfaceExtension](p_instance).getSuggestedPoseNames(p_args[0].decode(StringName)).encode(r_ret)
template getSuggestedPoseNames_bind*(_: typedesc[XrInterfaceExtension]): ClassCallVirtual = getSuggestedPoseNames

method getTrackingStatus*(self: XrInterfaceExtension): XrInterface_TrackingStatus {.base.} = (discard)
proc getTrackingStatus(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[XrInterfaceExtension](p_instance).getTrackingStatus().encode(r_ret)
template getTrackingStatus_bind*(_: typedesc[XrInterfaceExtension]): ClassCallVirtual = getTrackingStatus

method triggerHapticPulse*(self: XrInterfaceExtension; actionName: String; trackerName: StringName; frequency: float64; amplitude: float64; durationSec: float64; delaySec: float64): void {.base.} = (discard)
proc triggerHapticPulse(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[XrInterfaceExtension](p_instance).triggerHapticPulse(p_args[0].decode(String), p_args[1].decode(StringName), p_args[2].decode(float64), p_args[3].decode(float64), p_args[4].decode(float64), p_args[5].decode(float64))
template triggerHapticPulse_bind*(_: typedesc[XrInterfaceExtension]): ClassCallVirtual = triggerHapticPulse

method getAnchorDetectionIsEnabled*(self: XrInterfaceExtension): bool {.base.} = (discard)
proc getAnchorDetectionIsEnabled(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[XrInterfaceExtension](p_instance).getAnchorDetectionIsEnabled().encode(r_ret)
template getAnchorDetectionIsEnabled_bind*(_: typedesc[XrInterfaceExtension]): ClassCallVirtual = getAnchorDetectionIsEnabled

method setAnchorDetectionIsEnabled*(self: XrInterfaceExtension; enabled: bool): void {.base.} = (discard)
proc setAnchorDetectionIsEnabled(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[XrInterfaceExtension](p_instance).setAnchorDetectionIsEnabled(p_args[0].decode(bool))
template setAnchorDetectionIsEnabled_bind*(_: typedesc[XrInterfaceExtension]): ClassCallVirtual = setAnchorDetectionIsEnabled

method getCameraFeedId*(self: XrInterfaceExtension): int32 {.base.} = (discard)
proc getCameraFeedId(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[XrInterfaceExtension](p_instance).getCameraFeedId().encode(r_ret)
template getCameraFeedId_bind*(_: typedesc[XrInterfaceExtension]): ClassCallVirtual = getCameraFeedId

method getColorTexture*(self: XrInterfaceExtension): Rid {.base.} = (discard)
proc getColorTexture(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[XrInterfaceExtension](p_instance).getColorTexture().encode(r_ret)
template getColorTexture_bind*(_: typedesc[XrInterfaceExtension]): ClassCallVirtual = getColorTexture

method getDepthTexture*(self: XrInterfaceExtension): Rid {.base.} = (discard)
proc getDepthTexture(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[XrInterfaceExtension](p_instance).getDepthTexture().encode(r_ret)
template getDepthTexture_bind*(_: typedesc[XrInterfaceExtension]): ClassCallVirtual = getDepthTexture

method getVelocityTexture*(self: XrInterfaceExtension): Rid {.base.} = (discard)
proc getVelocityTexture(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[XrInterfaceExtension](p_instance).getVelocityTexture().encode(r_ret)
template getVelocityTexture_bind*(_: typedesc[XrInterfaceExtension]): ClassCallVirtual = getVelocityTexture

proc getColorTexture*(self: XrInterfaceExtension): Rid =
  expandMethodBind(className XrInterfaceExtension, "get_color_texture", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc getDepthTexture*(self: XrInterfaceExtension): Rid =
  expandMethodBind(className XrInterfaceExtension, "get_depth_texture", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc getVelocityTexture*(self: XrInterfaceExtension): Rid =
  expandMethodBind(className XrInterfaceExtension, "get_velocity_texture", 529393457)
  var ret: encoded Rid
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rid)

proc addBlit*(self: XrInterfaceExtension; renderTarget: Rid; srcRect: Rect2; dstRect: Rect2i; useLayer: bool; layer: uint32; applyLensDistortion: bool; eyeCenter: Vector2; k1: float64; k2: float64; upscale: float64; aspectRatio: float64): void =
  expandMethodBind(className XrInterfaceExtension, "add_blit", 258596971)
  var `?param` = [getPtr renderTarget, getPtr srcRect, getPtr dstRect, getPtr useLayer, getPtr layer, getPtr applyLensDistortion, getPtr eyeCenter, getPtr k1, getPtr k2, getPtr upscale, getPtr aspectRatio]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRenderTargetTexture*(self: XrInterfaceExtension; renderTarget: Rid): Rid =
  expandMethodBind(className XrInterfaceExtension, "get_render_target_texture", 41030802)
  var `?param` = [getPtr renderTarget]
  var ret: encoded Rid
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rid)

const XrInterfaceExtension_vmap =
  XrInterface.vmap.concat toTable {
    "getname" : "_get_name",
    "getcapabilities" : "_get_capabilities",
    "isinitialized" : "_is_initialized",
    "initialize" : "_initialize",
    "uninitialize" : "_uninitialize",
    "getsysteminfo" : "_get_system_info",
    "supportsplayareamode" : "_supports_play_area_mode",
    "getplayareamode" : "_get_play_area_mode",
    "setplayareamode" : "_set_play_area_mode",
    "getplayarea" : "_get_play_area",
    "getrendertargetsize" : "_get_render_target_size",
    "getviewcount" : "_get_view_count",
    "getcameratransform" : "_get_camera_transform",
    "gettransformforview" : "_get_transform_for_view",
    "getprojectionforview" : "_get_projection_for_view",
    "getvrstexture" : "_get_vrs_texture",
    "process" : "_process",
    "prerender" : "_pre_render",
    "predrawviewport" : "_pre_draw_viewport",
    "postdrawviewport" : "_post_draw_viewport",
    "endframe" : "_end_frame",
    "getsuggestedtrackernames" : "_get_suggested_tracker_names",
    "getsuggestedposenames" : "_get_suggested_pose_names",
    "gettrackingstatus" : "_get_tracking_status",
    "triggerhapticpulse" : "_trigger_haptic_pulse",
    "getanchordetectionisenabled" : "_get_anchor_detection_is_enabled",
    "setanchordetectionisenabled" : "_set_anchor_detection_is_enabled",
    "getcamerafeedid" : "_get_camera_feed_id",
    "getcolortexture" : "_get_color_texture",
    "getdepthtexture" : "_get_depth_texture",
    "getvelocitytexture" : "_get_velocity_texture",
    }
template vmap*(_: typedesc[XrInterfaceExtension]): Table[string, string] = XrInterfaceExtension_vmap