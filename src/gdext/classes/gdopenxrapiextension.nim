{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc getInstance*(self: OpenXrapiExtension): uint64 =
  expandMethodBind(className OpenXrapiExtension, "get_instance", 2455072627)
  var ret: encoded uint64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint64)

proc getSystemId*(self: OpenXrapiExtension): uint64 =
  expandMethodBind(className OpenXrapiExtension, "get_system_id", 2455072627)
  var ret: encoded uint64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint64)

proc getSession*(self: OpenXrapiExtension): uint64 =
  expandMethodBind(className OpenXrapiExtension, "get_session", 2455072627)
  var ret: encoded uint64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint64)

proc transformFromPose*(self: OpenXrapiExtension; pose: pointer): Transform3D =
  expandMethodBind(className OpenXrapiExtension, "transform_from_pose", 3255299855)
  var `?param` = [getPtr pose]
  var ret: encoded Transform3D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Transform3D)

proc xrResult*(self: OpenXrapiExtension; retval: uint64; format: String; args: Array): bool =
  expandMethodBind(className OpenXrapiExtension, "xr_result", 3886436197)
  var `?param` = [getPtr retval, getPtr format, getPtr args]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc openxrIsEnabled*(_: OpenXrapiExtension; checkRunInEditor: bool): bool =
  expandMethodBind(className OpenXrapiExtension, "openxr_is_enabled", 2703660260)
  var `?param` = [getPtr checkRunInEditor]
  var ret: encoded bool
  methodbind.ptrcall(addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getInstanceProcAddr*(self: OpenXrapiExtension; name: String): uint64 =
  expandMethodBind(className OpenXrapiExtension, "get_instance_proc_addr", 1597066294)
  var `?param` = [getPtr name]
  var ret: encoded uint64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(uint64)

proc getErrorString*(self: OpenXrapiExtension; retval: uint64): String =
  expandMethodBind(className OpenXrapiExtension, "get_error_string", 990163283)
  var `?param` = [getPtr retval]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc getSwapchainFormatName*(self: OpenXrapiExtension; swapchainFormat: int64): String =
  expandMethodBind(className OpenXrapiExtension, "get_swapchain_format_name", 990163283)
  var `?param` = [getPtr swapchainFormat]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc isInitialized*(self: OpenXrapiExtension): bool =
  expandMethodBind(className OpenXrapiExtension, "is_initialized", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc isRunning*(self: OpenXrapiExtension): bool =
  expandMethodBind(className OpenXrapiExtension, "is_running", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getPlaySpace*(self: OpenXrapiExtension): uint64 =
  expandMethodBind(className OpenXrapiExtension, "get_play_space", 2455072627)
  var ret: encoded uint64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint64)

proc getPredictedDisplayTime*(self: OpenXrapiExtension): int64 =
  expandMethodBind(className OpenXrapiExtension, "get_predicted_display_time", 2455072627)
  var ret: encoded int64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int64)

proc getNextFrameTime*(self: OpenXrapiExtension): int64 =
  expandMethodBind(className OpenXrapiExtension, "get_next_frame_time", 2455072627)
  var ret: encoded int64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int64)

proc canRender*(self: OpenXrapiExtension): bool =
  expandMethodBind(className OpenXrapiExtension, "can_render", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getHandTracker*(self: OpenXrapiExtension; handIndex: int32): uint64 =
  expandMethodBind(className OpenXrapiExtension, "get_hand_tracker", 3744713108)
  var `?param` = [getPtr handIndex]
  var ret: encoded uint64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(uint64)

proc registerCompositionLayerProvider*(self: OpenXrapiExtension; extension: OpenXrExtensionWrapperExtension): void =
  expandMethodBind(className OpenXrapiExtension, "register_composition_layer_provider", 1997997368)
  var `?param` = [getPtr extension]
  methodbind.ptrcall(self, addr `?param`[0])

proc unregisterCompositionLayerProvider*(self: OpenXrapiExtension; extension: OpenXrExtensionWrapperExtension): void =
  expandMethodBind(className OpenXrapiExtension, "unregister_composition_layer_provider", 1997997368)
  var `?param` = [getPtr extension]
  methodbind.ptrcall(self, addr `?param`[0])

proc setEmulateEnvironmentBlendModeAlphaBlend*(self: OpenXrapiExtension; enabled: bool): void =
  expandMethodBind(className OpenXrapiExtension, "set_emulate_environment_blend_mode_alpha_blend", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isEnvironmentBlendModeAlphaSupported*(self: OpenXrapiExtension): OpenXrapiExtension_OpenXrAlphaBlendModeSupport =
  expandMethodBind(className OpenXrapiExtension, "is_environment_blend_mode_alpha_supported", 1579290861)
  var ret: encoded OpenXrapiExtension_OpenXrAlphaBlendModeSupport
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(OpenXrapiExtension_OpenXrAlphaBlendModeSupport)

const OpenXrapiExtension_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[OpenXrapiExtension]): Table[string, string] = OpenXrapiExtension_vmap