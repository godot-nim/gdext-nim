{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

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
  expandMethodBind(className OpenXRAPIExtension, "transform_from_pose", 3255299855)
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

proc getHandTracker*(self: OpenXRAPIExtension; handIndex: int32): uint64 =
  expandMethodBind(className OpenXRAPIExtension, "get_hand_tracker", 3744713108)
  var ret: encoded uint64
  methodbind.ptrcall(self, [getPtr handIndex], addr ret)
  (addr ret).decode_result(uint64)

proc registerCompositionLayerProvider*(self: OpenXRAPIExtension; extension: OpenXRExtensionWrapperExtension): void =
  expandMethodBind(className OpenXRAPIExtension, "register_composition_layer_provider", 1997997368)
  methodbind.ptrcall(self, [getPtr extension])

proc unregisterCompositionLayerProvider*(self: OpenXRAPIExtension; extension: OpenXRExtensionWrapperExtension): void =
  expandMethodBind(className OpenXRAPIExtension, "unregister_composition_layer_provider", 1997997368)
  methodbind.ptrcall(self, [getPtr extension])

proc setEmulateEnvironmentBlendModeAlphaBlend*(self: OpenXRAPIExtension; enabled: bool): void =
  expandMethodBind(className OpenXRAPIExtension, "set_emulate_environment_blend_mode_alpha_blend", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isEnvironmentBlendModeAlphaSupported*(self: OpenXRAPIExtension): OpenXRAPIExtension_OpenXRAlphaBlendModeSupport =
  expandMethodBind(className OpenXRAPIExtension, "is_environment_blend_mode_alpha_supported", 1579290861)
  var ret: encoded OpenXRAPIExtension_OpenXRAlphaBlendModeSupport
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(OpenXRAPIExtension_OpenXRAlphaBlendModeSupport)

const OpenXRAPIExtension_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[OpenXRAPIExtension]): Table[string, string] = OpenXRAPIExtension_vmap