{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdxrinterface; export gdxrinterface

expandOnClassImported(XRInterfaceExtension, XRInterface)

method getName*(self: XRInterfaceExtension): StringName {.base.} = (discard)
proc registerVirtual_getName*[T: XRInterfaceExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_name"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[XRInterfaceExtension](p_instance).getName().encode(r_ret)

method getCapabilities*(self: XRInterfaceExtension): uint32 {.base.} = (discard)
proc registerVirtual_getCapabilities*[T: XRInterfaceExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_capabilities"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[XRInterfaceExtension](p_instance).getCapabilities().encode(r_ret)

method isInitialized*(self: XRInterfaceExtension): bool {.base.} = (discard)
proc registerVirtual_isInitialized*[T: XRInterfaceExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_is_initialized"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[XRInterfaceExtension](p_instance).isInitialized().encode(r_ret)

method initialize*(self: XRInterfaceExtension): bool {.base.} = (discard)
proc registerVirtual_initialize*[T: XRInterfaceExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_initialize"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[XRInterfaceExtension](p_instance).initialize().encode(r_ret)

method uninitialize*(self: XRInterfaceExtension): void {.base.} = (discard)
proc registerVirtual_uninitialize*[T: XRInterfaceExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_uninitialize"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[XRInterfaceExtension](p_instance).uninitialize()

method getSystemInfo*(self: XRInterfaceExtension): Dictionary {.base.} = (discard)
proc registerVirtual_getSystemInfo*[T: XRInterfaceExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_system_info"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[XRInterfaceExtension](p_instance).getSystemInfo().encode(r_ret)

method supportsPlayAreaMode*(self: XRInterfaceExtension; mode: XRInterface_PlayAreaMode): bool {.base.} = (discard)
proc registerVirtual_supportsPlayAreaMode*[T: XRInterfaceExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_supports_play_area_mode"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[XRInterfaceExtension](p_instance).supportsPlayAreaMode(p_args[0].decode(XRInterface_PlayAreaMode)).encode(r_ret)

method getPlayAreaMode*(self: XRInterfaceExtension): XRInterface_PlayAreaMode {.base.} = (discard)
proc registerVirtual_getPlayAreaMode*[T: XRInterfaceExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_play_area_mode"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[XRInterfaceExtension](p_instance).getPlayAreaMode().encode(r_ret)

method setPlayAreaMode*(self: XRInterfaceExtension; mode: XRInterface_PlayAreaMode): bool {.base.} = (discard)
proc registerVirtual_setPlayAreaMode*[T: XRInterfaceExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_set_play_area_mode"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[XRInterfaceExtension](p_instance).setPlayAreaMode(p_args[0].decode(XRInterface_PlayAreaMode)).encode(r_ret)

method getPlayArea*(self: XRInterfaceExtension): PackedVector3Array {.base.} = (discard)
proc registerVirtual_getPlayArea*[T: XRInterfaceExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_play_area"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[XRInterfaceExtension](p_instance).getPlayArea().encode(r_ret)

method getRenderTargetSize*(self: XRInterfaceExtension): Vector2 {.base.} = (discard)
proc registerVirtual_getRenderTargetSize*[T: XRInterfaceExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_render_target_size"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[XRInterfaceExtension](p_instance).getRenderTargetSize().encode(r_ret)

method getViewCount*(self: XRInterfaceExtension): uint32 {.base.} = (discard)
proc registerVirtual_getViewCount*[T: XRInterfaceExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_view_count"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[XRInterfaceExtension](p_instance).getViewCount().encode(r_ret)

method getCameraTransform*(self: XRInterfaceExtension): Transform3D {.base.} = (discard)
proc registerVirtual_getCameraTransform*[T: XRInterfaceExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_camera_transform"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[XRInterfaceExtension](p_instance).getCameraTransform().encode(r_ret)

method getTransformForView*(self: XRInterfaceExtension; view: uint32; camTransform: Transform3D): Transform3D {.base.} = (discard)
proc registerVirtual_getTransformForView*[T: XRInterfaceExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_transform_for_view"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[XRInterfaceExtension](p_instance).getTransformForView(p_args[0].decode(uint32), p_args[1].decode(Transform3D)).encode(r_ret)

method getProjectionForView*(self: XRInterfaceExtension; view: uint32; aspect: float64; zNear: float64; zFar: float64): PackedFloat64Array {.base.} = (discard)
proc registerVirtual_getProjectionForView*[T: XRInterfaceExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_projection_for_view"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[XRInterfaceExtension](p_instance).getProjectionForView(p_args[0].decode(uint32), p_args[1].decode(float64), p_args[2].decode(float64), p_args[3].decode(float64)).encode(r_ret)

method getVrsTexture*(self: XRInterfaceExtension): RID {.base.} = (discard)
proc registerVirtual_getVrsTexture*[T: XRInterfaceExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_vrs_texture"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[XRInterfaceExtension](p_instance).getVrsTexture().encode(r_ret)

method process*(self: XRInterfaceExtension): void {.base.} = (discard)
proc registerVirtual_process*[T: XRInterfaceExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_process"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[XRInterfaceExtension](p_instance).process()

method preRender*(self: XRInterfaceExtension): void {.base.} = (discard)
proc registerVirtual_preRender*[T: XRInterfaceExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_pre_render"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[XRInterfaceExtension](p_instance).preRender()

method preDrawViewport*(self: XRInterfaceExtension; renderTarget: RID): bool {.base.} = (discard)
proc registerVirtual_preDrawViewport*[T: XRInterfaceExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_pre_draw_viewport"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[XRInterfaceExtension](p_instance).preDrawViewport(p_args[0].decode(RID)).encode(r_ret)

method postDrawViewport*(self: XRInterfaceExtension; renderTarget: RID; screenRect: Rect2): void {.base.} = (discard)
proc registerVirtual_postDrawViewport*[T: XRInterfaceExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_post_draw_viewport"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[XRInterfaceExtension](p_instance).postDrawViewport(p_args[0].decode(RID), p_args[1].decode(Rect2))

method endFrame*(self: XRInterfaceExtension): void {.base.} = (discard)
proc registerVirtual_endFrame*[T: XRInterfaceExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_end_frame"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[XRInterfaceExtension](p_instance).endFrame()

method getSuggestedTrackerNames*(self: XRInterfaceExtension): PackedStringArray {.base.} = (discard)
proc registerVirtual_getSuggestedTrackerNames*[T: XRInterfaceExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_suggested_tracker_names"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[XRInterfaceExtension](p_instance).getSuggestedTrackerNames().encode(r_ret)

method getSuggestedPoseNames*(self: XRInterfaceExtension; trackerName: StringName): PackedStringArray {.base.} = (discard)
proc registerVirtual_getSuggestedPoseNames*[T: XRInterfaceExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_suggested_pose_names"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[XRInterfaceExtension](p_instance).getSuggestedPoseNames(p_args[0].decode(StringName)).encode(r_ret)

method getTrackingStatus*(self: XRInterfaceExtension): XRInterface_TrackingStatus {.base.} = (discard)
proc registerVirtual_getTrackingStatus*[T: XRInterfaceExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_tracking_status"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[XRInterfaceExtension](p_instance).getTrackingStatus().encode(r_ret)

method triggerHapticPulse*(self: XRInterfaceExtension; actionName: String; trackerName: StringName; frequency: float64; amplitude: float64; durationSec: float64; delaySec: float64): void {.base.} = (discard)
proc registerVirtual_triggerHapticPulse*[T: XRInterfaceExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_trigger_haptic_pulse"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[XRInterfaceExtension](p_instance).triggerHapticPulse(p_args[0].decode(String), p_args[1].decode(StringName), p_args[2].decode(float64), p_args[3].decode(float64), p_args[4].decode(float64), p_args[5].decode(float64))

method getAnchorDetectionIsEnabled*(self: XRInterfaceExtension): bool {.base.} = (discard)
proc registerVirtual_getAnchorDetectionIsEnabled*[T: XRInterfaceExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_anchor_detection_is_enabled"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[XRInterfaceExtension](p_instance).getAnchorDetectionIsEnabled().encode(r_ret)

method setAnchorDetectionIsEnabled*(self: XRInterfaceExtension; enabled: bool): void {.base.} = (discard)
proc registerVirtual_setAnchorDetectionIsEnabled*[T: XRInterfaceExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_set_anchor_detection_is_enabled"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[XRInterfaceExtension](p_instance).setAnchorDetectionIsEnabled(p_args[0].decode(bool))

method getCameraFeedId*(self: XRInterfaceExtension): int32 {.base.} = (discard)
proc registerVirtual_getCameraFeedId*[T: XRInterfaceExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_camera_feed_id"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[XRInterfaceExtension](p_instance).getCameraFeedId().encode(r_ret)

method getColorTexture*(self: XRInterfaceExtension): RID {.base.} = (discard)
proc registerVirtual_getColorTexture*[T: XRInterfaceExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_color_texture"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[XRInterfaceExtension](p_instance).getColorTexture().encode(r_ret)

method getDepthTexture*(self: XRInterfaceExtension): RID {.base.} = (discard)
proc registerVirtual_getDepthTexture*[T: XRInterfaceExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_depth_texture"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[XRInterfaceExtension](p_instance).getDepthTexture().encode(r_ret)

method getVelocityTexture*(self: XRInterfaceExtension): RID {.base.} = (discard)
proc registerVirtual_getVelocityTexture*[T: XRInterfaceExtension](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_velocity_texture"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[XRInterfaceExtension](p_instance).getVelocityTexture().encode(r_ret)

proc getColorTexture*(self: XRInterfaceExtension): RID =
  expandMethodBind(className XRInterfaceExtension, "get_color_texture", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc getDepthTexture*(self: XRInterfaceExtension): RID =
  expandMethodBind(className XRInterfaceExtension, "get_depth_texture", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc getVelocityTexture*(self: XRInterfaceExtension): RID =
  expandMethodBind(className XRInterfaceExtension, "get_velocity_texture", 529393457)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc addBlit*(self: XRInterfaceExtension; renderTarget: RID; srcRect: Rect2; dstRect: Rect2i; useLayer: bool; layer: uint32; applyLensDistortion: bool; eyeCenter: Vector2; k1: float64; k2: float64; upscale: float64; aspectRatio: float64): void =
  expandMethodBind(className XRInterfaceExtension, "add_blit", 258596971)
  methodbind.ptrcall(self, [getPtr renderTarget, getPtr srcRect, getPtr dstRect, getPtr useLayer, getPtr layer, getPtr applyLensDistortion, getPtr eyeCenter, getPtr k1, getPtr k2, getPtr upscale, getPtr aspectRatio])

proc getRenderTargetTexture*(self: XRInterfaceExtension; renderTarget: RID): RID =
  expandMethodBind(className XRInterfaceExtension, "get_render_target_texture", 41030802)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr renderTarget], addr ret)
  (addr ret).decode_result(RID)
