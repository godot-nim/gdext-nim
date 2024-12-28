{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

proc getEntropy*(self: OS; size: int32): PackedByteArray =
  expandMethodBind(className OS, "get_entropy", 47165747)
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, [getPtr size], addr ret)
  (addr ret).decode_result(PackedByteArray)

proc getSystemCaCertificates*(self: OS): String =
  expandMethodBind(className OS, "get_system_ca_certificates", 2841200299)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getConnectedMidiInputs*(self: OS): PackedStringArray =
  expandMethodBind(className OS, "get_connected_midi_inputs", 2981934095)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc openMidiInputs*(self: OS): void =
  expandMethodBind(className OS, "open_midi_inputs", 3218959716)
  methodbind.ptrcall(self, [])

proc closeMidiInputs*(self: OS): void =
  expandMethodBind(className OS, "close_midi_inputs", 3218959716)
  methodbind.ptrcall(self, [])

proc alert*(self: OS; text: String; title: String = gdstring"Alert!"): void =
  expandMethodBind(className OS, "alert", 1783970740)
  methodbind.ptrcall(self, [getPtr text, getPtr title])

proc crash*(self: OS; message: String): void =
  expandMethodBind(className OS, "crash", 83702148)
  methodbind.ptrcall(self, [getPtr message])

proc setLowProcessorUsageMode*(self: OS; enable: bool): void =
  expandMethodBind(className OS, "set_low_processor_usage_mode", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isInLowProcessorUsageMode*(self: OS): bool =
  expandMethodBind(className OS, "is_in_low_processor_usage_mode", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setLowProcessorUsageModeSleepUsec*(self: OS; usec: int32): void =
  expandMethodBind(className OS, "set_low_processor_usage_mode_sleep_usec", 1286410249)
  methodbind.ptrcall(self, [getPtr usec])

proc getLowProcessorUsageModeSleepUsec*(self: OS): int32 =
  expandMethodBind(className OS, "get_low_processor_usage_mode_sleep_usec", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setDeltaSmoothing*(self: OS; deltaSmoothingEnabled: bool): void =
  expandMethodBind(className OS, "set_delta_smoothing", 2586408642)
  methodbind.ptrcall(self, [getPtr deltaSmoothingEnabled])

proc isDeltaSmoothingEnabled*(self: OS): bool =
  expandMethodBind(className OS, "is_delta_smoothing_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getProcessorCount*(self: OS): int32 =
  expandMethodBind(className OS, "get_processor_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getProcessorName*(self: OS): String =
  expandMethodBind(className OS, "get_processor_name", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getSystemFonts*(self: OS): PackedStringArray =
  expandMethodBind(className OS, "get_system_fonts", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc getSystemFontPath*(self: OS; fontName: String; weight: int32 = 400; stretch: int32 = 100; italic: bool = false): String =
  expandMethodBind(className OS, "get_system_font_path", 626580860)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr fontName, getPtr weight, getPtr stretch, getPtr italic], addr ret)
  (addr ret).decode_result(String)

proc getSystemFontPathForText*(self: OS; fontName: String; text: String; locale: String = gdstring""; script: String = gdstring""; weight: int32 = 400; stretch: int32 = 100; italic: bool = false): PackedStringArray =
  expandMethodBind(className OS, "get_system_font_path_for_text", 197317981)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [getPtr fontName, getPtr text, getPtr locale, getPtr script, getPtr weight, getPtr stretch, getPtr italic], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc getExecutablePath*(self: OS): String =
  expandMethodBind(className OS, "get_executable_path", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc readStringFromStdin*(self: OS): String =
  expandMethodBind(className OS, "read_string_from_stdin", 2841200299)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc execute*(self: OS; path: String; arguments: PackedStringArray; output: Array = gdarray(); readStderr: bool = false; openConsole: bool = false): int32 =
  expandMethodBind(className OS, "execute", 1488299882)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr path, getPtr arguments, getPtr output, getPtr readStderr, getPtr openConsole], addr ret)
  (addr ret).decode_result(int32)

proc executeWithPipe*(self: OS; path: String; arguments: PackedStringArray): Dictionary =
  expandMethodBind(className OS, "execute_with_pipe", 3845631403)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, [getPtr path, getPtr arguments], addr ret)
  (addr ret).decode_result(Dictionary)

proc createProcess*(self: OS; path: String; arguments: PackedStringArray; openConsole: bool = false): int32 =
  expandMethodBind(className OS, "create_process", 2903767230)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr path, getPtr arguments, getPtr openConsole], addr ret)
  (addr ret).decode_result(int32)

proc createInstance*(self: OS; arguments: PackedStringArray): int32 =
  expandMethodBind(className OS, "create_instance", 1080601263)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr arguments], addr ret)
  (addr ret).decode_result(int32)

proc kill*(self: OS; pid: int32): Error =
  expandMethodBind(className OS, "kill", 844576869)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr pid], addr ret)
  (addr ret).decode_result(Error)

proc shellOpen*(self: OS; uri: String): Error =
  expandMethodBind(className OS, "shell_open", 166001499)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr uri], addr ret)
  (addr ret).decode_result(Error)

proc shellShowInFileManager*(self: OS; fileOrDirPath: String; openFolder: bool = true): Error =
  expandMethodBind(className OS, "shell_show_in_file_manager", 3565188097)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr fileOrDirPath, getPtr openFolder], addr ret)
  (addr ret).decode_result(Error)

proc isProcessRunning*(self: OS; pid: int32): bool =
  expandMethodBind(className OS, "is_process_running", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr pid], addr ret)
  (addr ret).decode_result(bool)

proc getProcessExitCode*(self: OS; pid: int32): int32 =
  expandMethodBind(className OS, "get_process_exit_code", 923996154)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr pid], addr ret)
  (addr ret).decode_result(int32)

proc getProcessId*(self: OS): int32 =
  expandMethodBind(className OS, "get_process_id", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc hasEnvironment*(self: OS; variable: String): bool =
  expandMethodBind(className OS, "has_environment", 3927539163)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr variable], addr ret)
  (addr ret).decode_result(bool)

proc getEnvironment*(self: OS; variable: String): String =
  expandMethodBind(className OS, "get_environment", 3135753539)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr variable], addr ret)
  (addr ret).decode_result(String)

proc setEnvironment*(self: OS; variable: String; value: String): void =
  expandMethodBind(className OS, "set_environment", 3605043004)
  methodbind.ptrcall(self, [getPtr variable, getPtr value])

proc unsetEnvironment*(self: OS; variable: String): void =
  expandMethodBind(className OS, "unset_environment", 3089850668)
  methodbind.ptrcall(self, [getPtr variable])

proc getName*(self: OS): String =
  expandMethodBind(className OS, "get_name", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getDistributionName*(self: OS): String =
  expandMethodBind(className OS, "get_distribution_name", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getVersion*(self: OS): String =
  expandMethodBind(className OS, "get_version", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getCmdlineArgs*(self: OS): PackedStringArray =
  expandMethodBind(className OS, "get_cmdline_args", 2981934095)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc getCmdlineUserArgs*(self: OS): PackedStringArray =
  expandMethodBind(className OS, "get_cmdline_user_args", 2981934095)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc getVideoAdapterDriverInfo*(self: OS): PackedStringArray =
  expandMethodBind(className OS, "get_video_adapter_driver_info", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc setRestartOnExit*(self: OS; restart: bool; arguments: PackedStringArray = PackedStringArray()): void =
  expandMethodBind(className OS, "set_restart_on_exit", 3331453935)
  methodbind.ptrcall(self, [getPtr restart, getPtr arguments])

proc isRestartOnExitSet*(self: OS): bool =
  expandMethodBind(className OS, "is_restart_on_exit_set", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getRestartOnExitArguments*(self: OS): PackedStringArray =
  expandMethodBind(className OS, "get_restart_on_exit_arguments", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc delayUsec*(self: OS; usec: int32): void =
  expandMethodBind(className OS, "delay_usec", 998575451)
  methodbind.ptrcall(self, [getPtr usec])

proc delayMsec*(self: OS; msec: int32): void =
  expandMethodBind(className OS, "delay_msec", 998575451)
  methodbind.ptrcall(self, [getPtr msec])

proc getLocale*(self: OS): String =
  expandMethodBind(className OS, "get_locale", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getLocaleLanguage*(self: OS): String =
  expandMethodBind(className OS, "get_locale_language", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getModelName*(self: OS): String =
  expandMethodBind(className OS, "get_model_name", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc isUserfsPersistent*(self: OS): bool =
  expandMethodBind(className OS, "is_userfs_persistent", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc isStdoutVerbose*(self: OS): bool =
  expandMethodBind(className OS, "is_stdout_verbose", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc isDebugBuild*(self: OS): bool =
  expandMethodBind(className OS, "is_debug_build", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getStaticMemoryUsage*(self: OS): uint64 =
  expandMethodBind(className OS, "get_static_memory_usage", 3905245786)
  var ret: encoded uint64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint64)

proc getStaticMemoryPeakUsage*(self: OS): uint64 =
  expandMethodBind(className OS, "get_static_memory_peak_usage", 3905245786)
  var ret: encoded uint64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint64)

proc getMemoryInfo*(self: OS): Dictionary =
  expandMethodBind(className OS, "get_memory_info", 3102165223)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Dictionary)

proc moveToTrash*(self: OS; path: String): Error =
  expandMethodBind(className OS, "move_to_trash", 2113323047)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr path], addr ret)
  (addr ret).decode_result(Error)

proc getUserDataDir*(self: OS): String =
  expandMethodBind(className OS, "get_user_data_dir", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getSystemDir*(self: OS; dir: OS_SystemDir; sharedStorage: bool = true): String =
  expandMethodBind(className OS, "get_system_dir", 3073895123)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr dir, getPtr sharedStorage], addr ret)
  (addr ret).decode_result(String)

proc getConfigDir*(self: OS): String =
  expandMethodBind(className OS, "get_config_dir", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getDataDir*(self: OS): String =
  expandMethodBind(className OS, "get_data_dir", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getCacheDir*(self: OS): String =
  expandMethodBind(className OS, "get_cache_dir", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getUniqueId*(self: OS): String =
  expandMethodBind(className OS, "get_unique_id", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getKeycodeString*(self: OS; code: Key): String =
  expandMethodBind(className OS, "get_keycode_string", 2261993717)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr code], addr ret)
  (addr ret).decode_result(String)

proc isKeycodeUnicode*(self: OS; code: Int): bool =
  expandMethodBind(className OS, "is_keycode_unicode", 1116898809)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr code], addr ret)
  (addr ret).decode_result(bool)

proc findKeycodeFromString*(self: OS; string: String): Key =
  expandMethodBind(className OS, "find_keycode_from_string", 1084858572)
  var ret: encoded Key
  methodbind.ptrcall(self, [getPtr string], addr ret)
  (addr ret).decode_result(Key)

proc setUseFileAccessSaveAndSwap*(self: OS; enabled: bool): void =
  expandMethodBind(className OS, "set_use_file_access_save_and_swap", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc setThreadName*(self: OS; name: String): Error =
  expandMethodBind(className OS, "set_thread_name", 166001499)
  var ret: encoded Error
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(Error)

proc getThreadCallerId*(self: OS): uint64 =
  expandMethodBind(className OS, "get_thread_caller_id", 3905245786)
  var ret: encoded uint64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint64)

proc getMainThreadId*(self: OS): uint64 =
  expandMethodBind(className OS, "get_main_thread_id", 3905245786)
  var ret: encoded uint64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint64)

proc hasFeature*(self: OS; tagName: String): bool =
  expandMethodBind(className OS, "has_feature", 3927539163)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr tagName], addr ret)
  (addr ret).decode_result(bool)

proc isSandboxed*(self: OS): bool =
  expandMethodBind(className OS, "is_sandboxed", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc requestPermission*(self: OS; name: String): bool =
  expandMethodBind(className OS, "request_permission", 2323990056)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(bool)

proc requestPermissions*(self: OS): bool =
  expandMethodBind(className OS, "request_permissions", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getGrantedPermissions*(self: OS): PackedStringArray =
  expandMethodBind(className OS, "get_granted_permissions", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc revokeGrantedPermissions*(self: OS): void =
  expandMethodBind(className OS, "revoke_granted_permissions", 3218959716)
  methodbind.ptrcall(self, [])

template lowProcessorUsageMode*(self: OS): untyped = self.isInLowProcessorUsageMode()
template `lowProcessorUsageMode=`*(self: OS; value) = self.setLowProcessorUsageMode(value)

template lowProcessorUsageModeSleepUsec*(self: OS): untyped = self.getLowProcessorUsageModeSleepUsec()
template `lowProcessorUsageModeSleepUsec=`*(self: OS; value) = self.setLowProcessorUsageModeSleepUsec(value)

template deltaSmoothing*(self: OS): untyped = self.isDeltaSmoothingEnabled()
template `deltaSmoothing=`*(self: OS; value) = self.setDeltaSmoothing(value)

const OS_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[OS]): Table[string, string] = OS_vmap