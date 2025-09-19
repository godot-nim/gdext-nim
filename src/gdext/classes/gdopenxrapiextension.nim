{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(OpenXRAPIExtension, RefCounted)

proc getInstance*(self: OpenXRAPIExtension): uint64 =
  expandMethodBind(className OpenXRAPIExtension, "get_instance", 2455072627)
  var ret: encoded uint64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint64)

proc getSystemId*(self: OpenXRAPIExtension): uint64 =
  expandMethodBind(className OpenXRAPIExtension, "get_system_id", 2455072627)
  var ret: encoded uint64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint64)

proc getSession*(self: OpenXRAPIExtension): uint64 =
  expandMethodBind(className OpenXRAPIExtension, "get_session", 2455072627)
  var ret: encoded uint64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint64)

proc transformFromPose*(self: OpenXRAPIExtension; pose: pointer): Transform3D =
  expandMethodBind(className OpenXRAPIExtension, "transform_from_pose", 2963875352)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, [getPtr pose], addr ret)
  (addr ret).decode_result(Transform3D)

proc xrResult*(self: OpenXRAPIExtension; retval: uint64; format: String; args: Array): bool =
  expandMethodBind(className OpenXRAPIExtension, "xr_result", 3886436197)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr retval, getPtr format, getPtr args], addr ret)
  (addr ret).decode_result(bool)

proc openxrIsEnabled*(_: typedesc[OpenXRAPIExtension]; checkRunInEditor: bool): bool =
  expandMethodBind(className OpenXRAPIExtension, "openxr_is_enabled", 2703660260)
  var ret: encoded bool
  methodbind.ptrcall([getPtr checkRunInEditor], addr ret)
  (addr ret).decode_result(bool)

proc getInstanceProcAddr*(self: OpenXRAPIExtension; name: String): uint64 =
  expandMethodBind(className OpenXRAPIExtension, "get_instance_proc_addr", 1597066294)
  var ret: encoded uint64
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(uint64)

proc getErrorString*(self: OpenXRAPIExtension; retval: uint64): String =
  expandMethodBind(className OpenXRAPIExtension, "get_error_string", 990163283)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr retval], addr ret)
  (addr ret).decode_result(String)

proc getSwapchainFormatName*(self: OpenXRAPIExtension; swapchainFormat: int64): String =
  expandMethodBind(className OpenXRAPIExtension, "get_swapchain_format_name", 990163283)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr swapchainFormat], addr ret)
  (addr ret).decode_result(String)

proc setObjectName*(self: OpenXRAPIExtension; objectType: int64; objectHandle: uint64; objectName: String): void =
  expandMethodBind(className OpenXRAPIExtension, "set_object_name", 2285447957)
  methodbind.ptrcall(self, [getPtr objectType, getPtr objectHandle, getPtr objectName])

proc beginDebugLabelRegion*(self: OpenXRAPIExtension; labelName: String): void =
  expandMethodBind(className OpenXRAPIExtension, "begin_debug_label_region", 83702148)
  methodbind.ptrcall(self, [getPtr labelName])

proc endDebugLabelRegion*(self: OpenXRAPIExtension): void =
  expandMethodBind(className OpenXRAPIExtension, "end_debug_label_region", 3218959716)
  methodbind.ptrcall(self, [])

proc insertDebugLabel*(self: OpenXRAPIExtension; labelName: String): void =
  expandMethodBind(className OpenXRAPIExtension, "insert_debug_label", 83702148)
  methodbind.ptrcall(self, [getPtr labelName])

proc isInitialized*(self: OpenXRAPIExtension): bool =
  expandMethodBind(className OpenXRAPIExtension, "is_initialized", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc isRunning*(self: OpenXRAPIExtension): bool =
  expandMethodBind(className OpenXRAPIExtension, "is_running", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setCustomPlaySpace*(self: OpenXRAPIExtension; space: pointer): void =
  expandMethodBind(className OpenXRAPIExtension, "set_custom_play_space", 1286410249)
  methodbind.ptrcall(self, [getPtr space])

proc getPlaySpace*(self: OpenXRAPIExtension): uint64 =
  expandMethodBind(className OpenXRAPIExtension, "get_play_space", 2455072627)
  var ret: encoded uint64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint64)

proc getPredictedDisplayTime*(self: OpenXRAPIExtension): int64 =
  expandMethodBind(className OpenXRAPIExtension, "get_predicted_display_time", 2455072627)
  var ret: encoded int64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int64)

proc getNextFrameTime*(self: OpenXRAPIExtension): int64 =
  expandMethodBind(className OpenXRAPIExtension, "get_next_frame_time", 2455072627)
  var ret: encoded int64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int64)

proc canRender*(self: OpenXRAPIExtension): bool =
  expandMethodBind(className OpenXRAPIExtension, "can_render", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc findAction*(self: OpenXRAPIExtension; name: String; actionSet: RID): RID =
  expandMethodBind(className OpenXRAPIExtension, "find_action", 4106179378)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr name, getPtr actionSet], addr ret)
  (addr ret).decode_result(RID)

proc actionGetHandle*(self: OpenXRAPIExtension; action: RID): uint64 =
  expandMethodBind(className OpenXRAPIExtension, "action_get_handle", 3917799429)
  var ret: encoded uint64
  methodbind.ptrcall(self, [getPtr action], addr ret)
  (addr ret).decode_result(uint64)

proc getHandTracker*(self: OpenXRAPIExtension; handIndex: int32): uint64 =
  expandMethodBind(className OpenXRAPIExtension, "get_hand_tracker", 3744713108)
  var ret: encoded uint64
  methodbind.ptrcall(self, [getPtr handIndex], addr ret)
  (addr ret).decode_result(uint64)

proc registerCompositionLayerProvider*(self: OpenXRAPIExtension; extension: OpenXRExtensionWrapper): void =
  expandMethodBind(className OpenXRAPIExtension, "register_composition_layer_provider", 1477360496)
  methodbind.ptrcall(self, [getPtr extension])

proc unregisterCompositionLayerProvider*(self: OpenXRAPIExtension; extension: OpenXRExtensionWrapper): void =
  expandMethodBind(className OpenXRAPIExtension, "unregister_composition_layer_provider", 1477360496)
  methodbind.ptrcall(self, [getPtr extension])

proc registerProjectionViewsExtension*(self: OpenXRAPIExtension; extension: OpenXRExtensionWrapper): void =
  expandMethodBind(className OpenXRAPIExtension, "register_projection_views_extension", 1477360496)
  methodbind.ptrcall(self, [getPtr extension])

proc unregisterProjectionViewsExtension*(self: OpenXRAPIExtension; extension: OpenXRExtensionWrapper): void =
  expandMethodBind(className OpenXRAPIExtension, "unregister_projection_views_extension", 1477360496)
  methodbind.ptrcall(self, [getPtr extension])

proc registerFrameInfoExtension*(self: OpenXRAPIExtension; extension: OpenXRExtensionWrapper): void =
  expandMethodBind(className OpenXRAPIExtension, "register_frame_info_extension", 1477360496)
  methodbind.ptrcall(self, [getPtr extension])

proc unregisterFrameInfoExtension*(self: OpenXRAPIExtension; extension: OpenXRExtensionWrapper): void =
  expandMethodBind(className OpenXRAPIExtension, "unregister_frame_info_extension", 1477360496)
  methodbind.ptrcall(self, [getPtr extension])

proc getRenderStateZNear*(self: OpenXRAPIExtension): float64 =
  expandMethodBind(className OpenXRAPIExtension, "get_render_state_z_near", 191475506)
  var ret: encoded float64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(float64)

proc getRenderStateZFar*(self: OpenXRAPIExtension): float64 =
  expandMethodBind(className OpenXRAPIExtension, "get_render_state_z_far", 191475506)
  var ret: encoded float64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(float64)

proc setVelocityTexture*(self: OpenXRAPIExtension; renderTarget: RID): void =
  expandMethodBind(className OpenXRAPIExtension, "set_velocity_texture", 2722037293)
  methodbind.ptrcall(self, [getPtr renderTarget])

proc setVelocityDepthTexture*(self: OpenXRAPIExtension; renderTarget: RID): void =
  expandMethodBind(className OpenXRAPIExtension, "set_velocity_depth_texture", 2722037293)
  methodbind.ptrcall(self, [getPtr renderTarget])

proc setVelocityTargetSize*(self: OpenXRAPIExtension; targetSize: Vector2i): void =
  expandMethodBind(className OpenXRAPIExtension, "set_velocity_target_size", 1130785943)
  methodbind.ptrcall(self, [getPtr targetSize])

proc getSupportedSwapchainFormats*(self: OpenXRAPIExtension): PackedInt64Array =
  expandMethodBind(className OpenXRAPIExtension, "get_supported_swapchain_formats", 3851388692)
  var ret: encoded PackedInt64Array
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedInt64Array)

proc openxrSwapchainCreate*(self: OpenXRAPIExtension; createFlags: uint64; usageFlags: uint64; swapchainFormat: int64; width: uint32; height: uint32; sampleCount: uint32; arraySize: uint32): uint64 =
  expandMethodBind(className OpenXRAPIExtension, "openxr_swapchain_create", 2162228999)
  var ret: encoded uint64
  methodbind.ptrcall(self, [getPtr createFlags, getPtr usageFlags, getPtr swapchainFormat, getPtr width, getPtr height, getPtr sampleCount, getPtr arraySize], addr ret)
  (addr ret).decode_result(uint64)

proc openxrSwapchainFree*(self: OpenXRAPIExtension; swapchain: uint64): void =
  expandMethodBind(className OpenXRAPIExtension, "openxr_swapchain_free", 1286410249)
  methodbind.ptrcall(self, [getPtr swapchain])

proc openxrSwapchainGetSwapchain*(self: OpenXRAPIExtension; swapchain: uint64): uint64 =
  expandMethodBind(className OpenXRAPIExtension, "openxr_swapchain_get_swapchain", 3744713108)
  var ret: encoded uint64
  methodbind.ptrcall(self, [getPtr swapchain], addr ret)
  (addr ret).decode_result(uint64)

proc openxrSwapchainAcquire*(self: OpenXRAPIExtension; swapchain: uint64): void =
  expandMethodBind(className OpenXRAPIExtension, "openxr_swapchain_acquire", 1286410249)
  methodbind.ptrcall(self, [getPtr swapchain])

proc openxrSwapchainGetImage*(self: OpenXRAPIExtension; swapchain: uint64): RID =
  expandMethodBind(className OpenXRAPIExtension, "openxr_swapchain_get_image", 937000113)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr swapchain], addr ret)
  (addr ret).decode_result(RID)

proc openxrSwapchainRelease*(self: OpenXRAPIExtension; swapchain: uint64): void =
  expandMethodBind(className OpenXRAPIExtension, "openxr_swapchain_release", 1286410249)
  methodbind.ptrcall(self, [getPtr swapchain])

proc getProjectionLayer*(self: OpenXRAPIExtension): uint64 =
  expandMethodBind(className OpenXRAPIExtension, "get_projection_layer", 2455072627)
  var ret: encoded uint64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint64)

proc setRenderRegion*(self: OpenXRAPIExtension; renderRegion: Rect2i): void =
  expandMethodBind(className OpenXRAPIExtension, "set_render_region", 1763793166)
  methodbind.ptrcall(self, [getPtr renderRegion])

proc setEmulateEnvironmentBlendModeAlphaBlend*(self: OpenXRAPIExtension; enabled: bool): void =
  expandMethodBind(className OpenXRAPIExtension, "set_emulate_environment_blend_mode_alpha_blend", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isEnvironmentBlendModeAlphaSupported*(self: OpenXRAPIExtension): OpenXRAPIExtension_OpenXRAlphaBlendModeSupport =
  expandMethodBind(className OpenXRAPIExtension, "is_environment_blend_mode_alpha_supported", 1579290861)
  var ret: encoded OpenXRAPIExtension_OpenXRAlphaBlendModeSupport
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(OpenXRAPIExtension_OpenXRAlphaBlendModeSupport)
