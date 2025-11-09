{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(OpenXRAPIExtension, RefCounted)

proc getInstance*(self: OpenXRAPIExtension): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAPIExtension, "get_instance", 2455072627)
  methodbind.ptrcall(self, [], uint64)

proc getSystemId*(self: OpenXRAPIExtension): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAPIExtension, "get_system_id", 2455072627)
  methodbind.ptrcall(self, [], uint64)

proc getSession*(self: OpenXRAPIExtension): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAPIExtension, "get_session", 2455072627)
  methodbind.ptrcall(self, [], uint64)

proc transformFromPose*(self: OpenXRAPIExtension; pose: pointer): Transform3D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAPIExtension, "transform_from_pose", 2963875352)
  methodbind.ptrcall(self, [getPtr pose], Transform3D)

proc xrResult*(self: OpenXRAPIExtension; retval: uint64; format: String; args: Array): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAPIExtension, "xr_result", 3886436197)
  methodbind.ptrcall(self, [getPtr retval, getPtr format, getPtr args], bool)

proc openxrIsEnabled*(_: typedesc[OpenXRAPIExtension]; checkRunInEditor: bool): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAPIExtension, "openxr_is_enabled", 2703660260)
  methodbind.ptrcall([getPtr checkRunInEditor], bool)

proc getInstanceProcAddr*(self: OpenXRAPIExtension; name: String): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAPIExtension, "get_instance_proc_addr", 1597066294)
  methodbind.ptrcall(self, [getPtr name], uint64)

proc getErrorString*(self: OpenXRAPIExtension; retval: uint64): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAPIExtension, "get_error_string", 990163283)
  methodbind.ptrcall(self, [getPtr retval], String)

proc getSwapchainFormatName*(self: OpenXRAPIExtension; swapchainFormat: int64): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAPIExtension, "get_swapchain_format_name", 990163283)
  methodbind.ptrcall(self, [getPtr swapchainFormat], String)

proc setObjectName*(self: OpenXRAPIExtension; objectType: int64; objectHandle: uint64; objectName: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAPIExtension, "set_object_name", 2285447957)
  methodbind.ptrcall(self, [getPtr objectType, getPtr objectHandle, getPtr objectName], void)

proc beginDebugLabelRegion*(self: OpenXRAPIExtension; labelName: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAPIExtension, "begin_debug_label_region", 83702148)
  methodbind.ptrcall(self, [getPtr labelName], void)

proc endDebugLabelRegion*(self: OpenXRAPIExtension): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAPIExtension, "end_debug_label_region", 3218959716)
  methodbind.ptrcall(self, [], void)

proc insertDebugLabel*(self: OpenXRAPIExtension; labelName: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAPIExtension, "insert_debug_label", 83702148)
  methodbind.ptrcall(self, [getPtr labelName], void)

proc isInitialized*(self: OpenXRAPIExtension): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAPIExtension, "is_initialized", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc isRunning*(self: OpenXRAPIExtension): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAPIExtension, "is_running", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc setCustomPlaySpace*(self: OpenXRAPIExtension; space: pointer): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAPIExtension, "set_custom_play_space", 1286410249)
  methodbind.ptrcall(self, [getPtr space], void)

proc getPlaySpace*(self: OpenXRAPIExtension): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAPIExtension, "get_play_space", 2455072627)
  methodbind.ptrcall(self, [], uint64)

proc getPredictedDisplayTime*(self: OpenXRAPIExtension): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAPIExtension, "get_predicted_display_time", 2455072627)
  methodbind.ptrcall(self, [], int64)

proc getNextFrameTime*(self: OpenXRAPIExtension): int64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAPIExtension, "get_next_frame_time", 2455072627)
  methodbind.ptrcall(self, [], int64)

proc canRender*(self: OpenXRAPIExtension): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAPIExtension, "can_render", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc findAction*(self: OpenXRAPIExtension; name: String; actionSet: RID): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAPIExtension, "find_action", 4106179378)
  methodbind.ptrcall(self, [getPtr name, getPtr actionSet], RID)

proc actionGetHandle*(self: OpenXRAPIExtension; action: RID): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAPIExtension, "action_get_handle", 3917799429)
  methodbind.ptrcall(self, [getPtr action], uint64)

proc getHandTracker*(self: OpenXRAPIExtension; handIndex: int32): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAPIExtension, "get_hand_tracker", 3744713108)
  methodbind.ptrcall(self, [getPtr handIndex], uint64)

proc registerCompositionLayerProvider*(self: OpenXRAPIExtension; extension: OpenXRExtensionWrapper): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAPIExtension, "register_composition_layer_provider", 1477360496)
  methodbind.ptrcall(self, [getPtr extension], void)

proc unregisterCompositionLayerProvider*(self: OpenXRAPIExtension; extension: OpenXRExtensionWrapper): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAPIExtension, "unregister_composition_layer_provider", 1477360496)
  methodbind.ptrcall(self, [getPtr extension], void)

proc registerProjectionViewsExtension*(self: OpenXRAPIExtension; extension: OpenXRExtensionWrapper): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAPIExtension, "register_projection_views_extension", 1477360496)
  methodbind.ptrcall(self, [getPtr extension], void)

proc unregisterProjectionViewsExtension*(self: OpenXRAPIExtension; extension: OpenXRExtensionWrapper): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAPIExtension, "unregister_projection_views_extension", 1477360496)
  methodbind.ptrcall(self, [getPtr extension], void)

proc registerFrameInfoExtension*(self: OpenXRAPIExtension; extension: OpenXRExtensionWrapper): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAPIExtension, "register_frame_info_extension", 1477360496)
  methodbind.ptrcall(self, [getPtr extension], void)

proc unregisterFrameInfoExtension*(self: OpenXRAPIExtension; extension: OpenXRExtensionWrapper): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAPIExtension, "unregister_frame_info_extension", 1477360496)
  methodbind.ptrcall(self, [getPtr extension], void)

proc getRenderStateZNear*(self: OpenXRAPIExtension): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAPIExtension, "get_render_state_z_near", 191475506)
  methodbind.ptrcall(self, [], float64)

proc getRenderStateZFar*(self: OpenXRAPIExtension): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAPIExtension, "get_render_state_z_far", 191475506)
  methodbind.ptrcall(self, [], float64)

proc setVelocityTexture*(self: OpenXRAPIExtension; renderTarget: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAPIExtension, "set_velocity_texture", 2722037293)
  methodbind.ptrcall(self, [getPtr renderTarget], void)

proc setVelocityDepthTexture*(self: OpenXRAPIExtension; renderTarget: RID): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAPIExtension, "set_velocity_depth_texture", 2722037293)
  methodbind.ptrcall(self, [getPtr renderTarget], void)

proc setVelocityTargetSize*(self: OpenXRAPIExtension; targetSize: Vector2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAPIExtension, "set_velocity_target_size", 1130785943)
  methodbind.ptrcall(self, [getPtr targetSize], void)

proc getSupportedSwapchainFormats*(self: OpenXRAPIExtension): PackedInt64Array =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAPIExtension, "get_supported_swapchain_formats", 3851388692)
  methodbind.ptrcall(self, [], PackedInt64Array)

proc openxrSwapchainCreate*(self: OpenXRAPIExtension; createFlags: uint64; usageFlags: uint64; swapchainFormat: int64; width: uint32; height: uint32; sampleCount: uint32; arraySize: uint32): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAPIExtension, "openxr_swapchain_create", 2162228999)
  methodbind.ptrcall(self, [getPtr createFlags, getPtr usageFlags, getPtr swapchainFormat, getPtr width, getPtr height, getPtr sampleCount, getPtr arraySize], uint64)

proc openxrSwapchainFree*(self: OpenXRAPIExtension; swapchain: uint64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAPIExtension, "openxr_swapchain_free", 1286410249)
  methodbind.ptrcall(self, [getPtr swapchain], void)

proc openxrSwapchainGetSwapchain*(self: OpenXRAPIExtension; swapchain: uint64): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAPIExtension, "openxr_swapchain_get_swapchain", 3744713108)
  methodbind.ptrcall(self, [getPtr swapchain], uint64)

proc openxrSwapchainAcquire*(self: OpenXRAPIExtension; swapchain: uint64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAPIExtension, "openxr_swapchain_acquire", 1286410249)
  methodbind.ptrcall(self, [getPtr swapchain], void)

proc openxrSwapchainGetImage*(self: OpenXRAPIExtension; swapchain: uint64): RID =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAPIExtension, "openxr_swapchain_get_image", 937000113)
  methodbind.ptrcall(self, [getPtr swapchain], RID)

proc openxrSwapchainRelease*(self: OpenXRAPIExtension; swapchain: uint64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAPIExtension, "openxr_swapchain_release", 1286410249)
  methodbind.ptrcall(self, [getPtr swapchain], void)

proc getProjectionLayer*(self: OpenXRAPIExtension): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAPIExtension, "get_projection_layer", 2455072627)
  methodbind.ptrcall(self, [], uint64)

proc setRenderRegion*(self: OpenXRAPIExtension; renderRegion: Rect2i): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAPIExtension, "set_render_region", 1763793166)
  methodbind.ptrcall(self, [getPtr renderRegion], void)

proc setEmulateEnvironmentBlendModeAlphaBlend*(self: OpenXRAPIExtension; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAPIExtension, "set_emulate_environment_blend_mode_alpha_blend", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isEnvironmentBlendModeAlphaSupported*(self: OpenXRAPIExtension): OpenXRAPIExtension_OpenXRAlphaBlendModeSupport =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRAPIExtension, "is_environment_blend_mode_alpha_supported", 1579290861)
  methodbind.ptrcall(self, [], OpenXRAPIExtension_OpenXRAlphaBlendModeSupport)
