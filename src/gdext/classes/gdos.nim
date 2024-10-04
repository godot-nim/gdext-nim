{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdobject; export gdobject

proc getEntropy*(self: Os; size: int32): PackedByteArray =
  expandMethodBind(className Os, "get_entropy", 47165747)
  var `?param` = [getPtr size]
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedByteArray)

proc getSystemCaCertificates*(self: Os): String =
  expandMethodBind(className Os, "get_system_ca_certificates", 2841200299)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getConnectedMidiInputs*(self: Os): PackedStringArray =
  expandMethodBind(className Os, "get_connected_midi_inputs", 2981934095)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedStringArray)

proc openMidiInputs*(self: Os): void =
  expandMethodBind(className Os, "open_midi_inputs", 3218959716)
  methodbind.ptrcall(self, nil)

proc closeMidiInputs*(self: Os): void =
  expandMethodBind(className Os, "close_midi_inputs", 3218959716)
  methodbind.ptrcall(self, nil)

proc alert*(self: Os; text: String; title: String = gdstring"Alert!"): void =
  expandMethodBind(className Os, "alert", 1783970740)
  var `?param` = [getPtr text, getPtr title]
  methodbind.ptrcall(self, addr `?param`[0])

proc crash*(self: Os; message: String): void =
  expandMethodBind(className Os, "crash", 83702148)
  var `?param` = [getPtr message]
  methodbind.ptrcall(self, addr `?param`[0])

proc setLowProcessorUsageMode*(self: Os; enable: bool): void =
  expandMethodBind(className Os, "set_low_processor_usage_mode", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isInLowProcessorUsageMode*(self: Os): bool =
  expandMethodBind(className Os, "is_in_low_processor_usage_mode", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setLowProcessorUsageModeSleepUsec*(self: Os; usec: int32): void =
  expandMethodBind(className Os, "set_low_processor_usage_mode_sleep_usec", 1286410249)
  var `?param` = [getPtr usec]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLowProcessorUsageModeSleepUsec*(self: Os): int32 =
  expandMethodBind(className Os, "get_low_processor_usage_mode_sleep_usec", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setDeltaSmoothing*(self: Os; deltaSmoothingEnabled: bool): void =
  expandMethodBind(className Os, "set_delta_smoothing", 2586408642)
  var `?param` = [getPtr deltaSmoothingEnabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isDeltaSmoothingEnabled*(self: Os): bool =
  expandMethodBind(className Os, "is_delta_smoothing_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getProcessorCount*(self: Os): int32 =
  expandMethodBind(className Os, "get_processor_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getProcessorName*(self: Os): String =
  expandMethodBind(className Os, "get_processor_name", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getSystemFonts*(self: Os): PackedStringArray =
  expandMethodBind(className Os, "get_system_fonts", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedStringArray)

proc getSystemFontPath*(self: Os; fontName: String; weight: int32 = 400; stretch: int32 = 100; italic: bool = false): String =
  expandMethodBind(className Os, "get_system_font_path", 626580860)
  var `?param` = [getPtr fontName, getPtr weight, getPtr stretch, getPtr italic]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc getSystemFontPathForText*(self: Os; fontName: String; text: String; locale: String = gdstring""; script: String = gdstring""; weight: int32 = 400; stretch: int32 = 100; italic: bool = false): PackedStringArray =
  expandMethodBind(className Os, "get_system_font_path_for_text", 197317981)
  var `?param` = [getPtr fontName, getPtr text, getPtr locale, getPtr script, getPtr weight, getPtr stretch, getPtr italic]
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc getExecutablePath*(self: Os): String =
  expandMethodBind(className Os, "get_executable_path", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc readStringFromStdin*(self: Os): String =
  expandMethodBind(className Os, "read_string_from_stdin", 2841200299)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc execute*(self: Os; path: String; arguments: PackedStringArray; output: Array = gdarray(); readStderr: bool = false; openConsole: bool = false): int32 =
  expandMethodBind(className Os, "execute", 1488299882)
  var `?param` = [getPtr path, getPtr arguments, getPtr output, getPtr readStderr, getPtr openConsole]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc executeWithPipe*(self: Os; path: String; arguments: PackedStringArray): Dictionary =
  expandMethodBind(className Os, "execute_with_pipe", 3845631403)
  var `?param` = [getPtr path, getPtr arguments]
  var ret: encoded Dictionary
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Dictionary)

proc createProcess*(self: Os; path: String; arguments: PackedStringArray; openConsole: bool = false): int32 =
  expandMethodBind(className Os, "create_process", 2903767230)
  var `?param` = [getPtr path, getPtr arguments, getPtr openConsole]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc createInstance*(self: Os; arguments: PackedStringArray): int32 =
  expandMethodBind(className Os, "create_instance", 1080601263)
  var `?param` = [getPtr arguments]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc kill*(self: Os; pid: int32): Error =
  expandMethodBind(className Os, "kill", 844576869)
  var `?param` = [getPtr pid]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc shellOpen*(self: Os; uri: String): Error =
  expandMethodBind(className Os, "shell_open", 166001499)
  var `?param` = [getPtr uri]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc shellShowInFileManager*(self: Os; fileOrDirPath: String; openFolder: bool = true): Error =
  expandMethodBind(className Os, "shell_show_in_file_manager", 3565188097)
  var `?param` = [getPtr fileOrDirPath, getPtr openFolder]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc isProcessRunning*(self: Os; pid: int32): bool =
  expandMethodBind(className Os, "is_process_running", 1116898809)
  var `?param` = [getPtr pid]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getProcessExitCode*(self: Os; pid: int32): int32 =
  expandMethodBind(className Os, "get_process_exit_code", 923996154)
  var `?param` = [getPtr pid]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc getProcessId*(self: Os): int32 =
  expandMethodBind(className Os, "get_process_id", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc hasEnvironment*(self: Os; variable: String): bool =
  expandMethodBind(className Os, "has_environment", 3927539163)
  var `?param` = [getPtr variable]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getEnvironment*(self: Os; variable: String): String =
  expandMethodBind(className Os, "get_environment", 3135753539)
  var `?param` = [getPtr variable]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc setEnvironment*(self: Os; variable: String; value: String): void =
  expandMethodBind(className Os, "set_environment", 3605043004)
  var `?param` = [getPtr variable, getPtr value]
  methodbind.ptrcall(self, addr `?param`[0])

proc unsetEnvironment*(self: Os; variable: String): void =
  expandMethodBind(className Os, "unset_environment", 3089850668)
  var `?param` = [getPtr variable]
  methodbind.ptrcall(self, addr `?param`[0])

proc getName*(self: Os): String =
  expandMethodBind(className Os, "get_name", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getDistributionName*(self: Os): String =
  expandMethodBind(className Os, "get_distribution_name", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getVersion*(self: Os): String =
  expandMethodBind(className Os, "get_version", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getCmdlineArgs*(self: Os): PackedStringArray =
  expandMethodBind(className Os, "get_cmdline_args", 2981934095)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedStringArray)

proc getCmdlineUserArgs*(self: Os): PackedStringArray =
  expandMethodBind(className Os, "get_cmdline_user_args", 2981934095)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedStringArray)

proc getVideoAdapterDriverInfo*(self: Os): PackedStringArray =
  expandMethodBind(className Os, "get_video_adapter_driver_info", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedStringArray)

proc setRestartOnExit*(self: Os; restart: bool; arguments: PackedStringArray = PackedStringArray()): void =
  expandMethodBind(className Os, "set_restart_on_exit", 3331453935)
  var `?param` = [getPtr restart, getPtr arguments]
  methodbind.ptrcall(self, addr `?param`[0])

proc isRestartOnExitSet*(self: Os): bool =
  expandMethodBind(className Os, "is_restart_on_exit_set", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getRestartOnExitArguments*(self: Os): PackedStringArray =
  expandMethodBind(className Os, "get_restart_on_exit_arguments", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedStringArray)

proc delayUsec*(self: Os; usec: int32): void =
  expandMethodBind(className Os, "delay_usec", 998575451)
  var `?param` = [getPtr usec]
  methodbind.ptrcall(self, addr `?param`[0])

proc delayMsec*(self: Os; msec: int32): void =
  expandMethodBind(className Os, "delay_msec", 998575451)
  var `?param` = [getPtr msec]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLocale*(self: Os): String =
  expandMethodBind(className Os, "get_locale", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getLocaleLanguage*(self: Os): String =
  expandMethodBind(className Os, "get_locale_language", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getModelName*(self: Os): String =
  expandMethodBind(className Os, "get_model_name", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc isUserfsPersistent*(self: Os): bool =
  expandMethodBind(className Os, "is_userfs_persistent", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc isStdoutVerbose*(self: Os): bool =
  expandMethodBind(className Os, "is_stdout_verbose", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc isDebugBuild*(self: Os): bool =
  expandMethodBind(className Os, "is_debug_build", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getStaticMemoryUsage*(self: Os): uint64 =
  expandMethodBind(className Os, "get_static_memory_usage", 3905245786)
  var ret: encoded uint64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint64)

proc getStaticMemoryPeakUsage*(self: Os): uint64 =
  expandMethodBind(className Os, "get_static_memory_peak_usage", 3905245786)
  var ret: encoded uint64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint64)

proc getMemoryInfo*(self: Os): Dictionary =
  expandMethodBind(className Os, "get_memory_info", 3102165223)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Dictionary)

proc moveToTrash*(self: Os; path: String): Error =
  expandMethodBind(className Os, "move_to_trash", 2113323047)
  var `?param` = [getPtr path]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc getUserDataDir*(self: Os): String =
  expandMethodBind(className Os, "get_user_data_dir", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getSystemDir*(self: Os; dir: Os_SystemDir; sharedStorage: bool = true): String =
  expandMethodBind(className Os, "get_system_dir", 3073895123)
  var `?param` = [getPtr dir, getPtr sharedStorage]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc getConfigDir*(self: Os): String =
  expandMethodBind(className Os, "get_config_dir", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getDataDir*(self: Os): String =
  expandMethodBind(className Os, "get_data_dir", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getCacheDir*(self: Os): String =
  expandMethodBind(className Os, "get_cache_dir", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getUniqueId*(self: Os): String =
  expandMethodBind(className Os, "get_unique_id", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getKeycodeString*(self: Os; code: Key): String =
  expandMethodBind(className Os, "get_keycode_string", 2261993717)
  var `?param` = [getPtr code]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc isKeycodeUnicode*(self: Os; code: Int): bool =
  expandMethodBind(className Os, "is_keycode_unicode", 1116898809)
  var `?param` = [getPtr code]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc findKeycodeFromString*(self: Os; string: String): Key =
  expandMethodBind(className Os, "find_keycode_from_string", 1084858572)
  var `?param` = [getPtr string]
  var ret: encoded Key
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Key)

proc setUseFileAccessSaveAndSwap*(self: Os; enabled: bool): void =
  expandMethodBind(className Os, "set_use_file_access_save_and_swap", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc setThreadName*(self: Os; name: String): Error =
  expandMethodBind(className Os, "set_thread_name", 166001499)
  var `?param` = [getPtr name]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc getThreadCallerId*(self: Os): uint64 =
  expandMethodBind(className Os, "get_thread_caller_id", 3905245786)
  var ret: encoded uint64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint64)

proc getMainThreadId*(self: Os): uint64 =
  expandMethodBind(className Os, "get_main_thread_id", 3905245786)
  var ret: encoded uint64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint64)

proc hasFeature*(self: Os; tagName: String): bool =
  expandMethodBind(className Os, "has_feature", 3927539163)
  var `?param` = [getPtr tagName]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc isSandboxed*(self: Os): bool =
  expandMethodBind(className Os, "is_sandboxed", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc requestPermission*(self: Os; name: String): bool =
  expandMethodBind(className Os, "request_permission", 2323990056)
  var `?param` = [getPtr name]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc requestPermissions*(self: Os): bool =
  expandMethodBind(className Os, "request_permissions", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getGrantedPermissions*(self: Os): PackedStringArray =
  expandMethodBind(className Os, "get_granted_permissions", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedStringArray)

proc revokeGrantedPermissions*(self: Os): void =
  expandMethodBind(className Os, "revoke_granted_permissions", 3218959716)
  methodbind.ptrcall(self, nil)

template lowProcessorUsageMode*(self: Os): untyped = self.isInLowProcessorUsageMode()
template `lowProcessorUsageMode=`*(self: Os; value) = self.setLowProcessorUsageMode(value)

template lowProcessorUsageModeSleepUsec*(self: Os): untyped = self.getLowProcessorUsageModeSleepUsec()
template `lowProcessorUsageModeSleepUsec=`*(self: Os; value) = self.setLowProcessorUsageModeSleepUsec(value)

template deltaSmoothing*(self: Os): untyped = self.isDeltaSmoothingEnabled()
template `deltaSmoothing=`*(self: Os; value) = self.setDeltaSmoothing(value)

const Os_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Os]): Table[string, string] = Os_vmap