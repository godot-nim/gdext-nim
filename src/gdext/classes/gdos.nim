{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(OS, Object)

proc getEntropy*(self: OS; size: int32): PackedByteArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "get_entropy", 47165747)
  methodbind.ptrcall(self, [getPtr size], PackedByteArray)

proc getSystemCaCertificates*(self: OS): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "get_system_ca_certificates", 2841200299)
  methodbind.ptrcall(self, [], String)

proc getConnectedMidiInputs*(self: OS): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "get_connected_midi_inputs", 2981934095)
  methodbind.ptrcall(self, [], PackedStringArray)

proc openMidiInputs*(self: OS): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "open_midi_inputs", 3218959716)
  methodbind.ptrcall(self, [], void)

proc closeMidiInputs*(self: OS): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "close_midi_inputs", 3218959716)
  methodbind.ptrcall(self, [], void)

proc alert*(self: OS; text: String; title: String = newGdString("Alert!")): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "alert", 1783970740)
  methodbind.ptrcall(self, [getPtr text, getPtr title], void)

proc crash*(self: OS; message: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "crash", 83702148)
  methodbind.ptrcall(self, [getPtr message], void)

proc setLowProcessorUsageMode*(self: OS; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "set_low_processor_usage_mode", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isInLowProcessorUsageMode*(self: OS): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "is_in_low_processor_usage_mode", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setLowProcessorUsageModeSleepUsec*(self: OS; usec: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "set_low_processor_usage_mode_sleep_usec", 1286410249)
  methodbind.ptrcall(self, [getPtr usec], void)

proc getLowProcessorUsageModeSleepUsec*(self: OS): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "get_low_processor_usage_mode_sleep_usec", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setDeltaSmoothing*(self: OS; deltaSmoothingEnabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "set_delta_smoothing", 2586408642)
  methodbind.ptrcall(self, [getPtr deltaSmoothingEnabled], void)

proc isDeltaSmoothingEnabled*(self: OS): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "is_delta_smoothing_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getProcessorCount*(self: OS): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "get_processor_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getProcessorName*(self: OS): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "get_processor_name", 201670096)
  methodbind.ptrcall(self, [], String)

proc getSystemFonts*(self: OS): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "get_system_fonts", 1139954409)
  methodbind.ptrcall(self, [], PackedStringArray)

proc getSystemFontPath*(self: OS; fontName: String; weight: int32 = 400; stretch: int32 = 100; italic: bool = false): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "get_system_font_path", 626580860)
  methodbind.ptrcall(self, [getPtr fontName, getPtr weight, getPtr stretch, getPtr italic], String)

proc getSystemFontPathForText*(self: OS; fontName: String; text: String; locale: String = newGdString(); script: String = newGdString(); weight: int32 = 400; stretch: int32 = 100; italic: bool = false): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "get_system_font_path_for_text", 197317981)
  methodbind.ptrcall(self, [getPtr fontName, getPtr text, getPtr locale, getPtr script, getPtr weight, getPtr stretch, getPtr italic], PackedStringArray)

proc getExecutablePath*(self: OS): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "get_executable_path", 201670096)
  methodbind.ptrcall(self, [], String)

proc readStringFromStdin*(self: OS; bufferSize: int64 = 1024): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "read_string_from_stdin", 723587915)
  methodbind.ptrcall(self, [getPtr bufferSize], String)

proc readBufferFromStdin*(self: OS; bufferSize: int64 = 1024): PackedByteArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "read_buffer_from_stdin", 3249455752)
  methodbind.ptrcall(self, [getPtr bufferSize], PackedByteArray)

proc getStdinType*(self: OS): OS_StdHandleType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "get_stdin_type", 1704816237)
  methodbind.ptrcall(self, [], OS_StdHandleType)

proc getStdoutType*(self: OS): OS_StdHandleType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "get_stdout_type", 1704816237)
  methodbind.ptrcall(self, [], OS_StdHandleType)

proc getStderrType*(self: OS): OS_StdHandleType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "get_stderr_type", 1704816237)
  methodbind.ptrcall(self, [], OS_StdHandleType)

proc execute*(self: OS; path: String; arguments: PackedStringArray; output: Array = newArray(); readStderr: bool = false; openConsole: bool = false): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "execute", 1488299882)
  methodbind.ptrcall(self, [getPtr path, getPtr arguments, getPtr output, getPtr readStderr, getPtr openConsole], int32)

proc executeWithPipe*(self: OS; path: String; arguments: PackedStringArray; blocking: bool = true): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "execute_with_pipe", 2851312030)
  methodbind.ptrcall(self, [getPtr path, getPtr arguments, getPtr blocking], Dictionary)

proc createProcess*(self: OS; path: String; arguments: PackedStringArray; openConsole: bool = false): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "create_process", 2903767230)
  methodbind.ptrcall(self, [getPtr path, getPtr arguments, getPtr openConsole], int32)

proc createInstance*(self: OS; arguments: PackedStringArray): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "create_instance", 1080601263)
  methodbind.ptrcall(self, [getPtr arguments], int32)

proc openWithProgram*(self: OS; programPath: String; paths: PackedStringArray): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "open_with_program", 2848259907)
  methodbind.ptrcall(self, [getPtr programPath, getPtr paths], Error)

proc kill*(self: OS; pid: int32): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "kill", 844576869)
  methodbind.ptrcall(self, [getPtr pid], Error)

proc shellOpen*(self: OS; uri: String): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "shell_open", 166001499)
  methodbind.ptrcall(self, [getPtr uri], Error)

proc shellShowInFileManager*(self: OS; fileOrDirPath: String; openFolder: bool = true): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "shell_show_in_file_manager", 3565188097)
  methodbind.ptrcall(self, [getPtr fileOrDirPath, getPtr openFolder], Error)

proc isProcessRunning*(self: OS; pid: int32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "is_process_running", 1116898809)
  methodbind.ptrcall(self, [getPtr pid], bool)

proc getProcessExitCode*(self: OS; pid: int32): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "get_process_exit_code", 923996154)
  methodbind.ptrcall(self, [getPtr pid], int32)

proc getProcessId*(self: OS): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "get_process_id", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc hasEnvironment*(self: OS; variable: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "has_environment", 3927539163)
  methodbind.ptrcall(self, [getPtr variable], bool)

proc getEnvironment*(self: OS; variable: String): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "get_environment", 3135753539)
  methodbind.ptrcall(self, [getPtr variable], String)

proc setEnvironment*(self: OS; variable: String; value: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "set_environment", 3605043004)
  methodbind.ptrcall(self, [getPtr variable, getPtr value], void)

proc unsetEnvironment*(self: OS; variable: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "unset_environment", 3089850668)
  methodbind.ptrcall(self, [getPtr variable], void)

proc getName*(self: OS): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "get_name", 201670096)
  methodbind.ptrcall(self, [], String)

proc getDistributionName*(self: OS): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "get_distribution_name", 201670096)
  methodbind.ptrcall(self, [], String)

proc getVersion*(self: OS): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "get_version", 201670096)
  methodbind.ptrcall(self, [], String)

proc getVersionAlias*(self: OS): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "get_version_alias", 201670096)
  methodbind.ptrcall(self, [], String)

proc getCmdlineArgs*(self: OS): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "get_cmdline_args", 2981934095)
  methodbind.ptrcall(self, [], PackedStringArray)

proc getCmdlineUserArgs*(self: OS): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "get_cmdline_user_args", 2981934095)
  methodbind.ptrcall(self, [], PackedStringArray)

proc getVideoAdapterDriverInfo*(self: OS): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "get_video_adapter_driver_info", 1139954409)
  methodbind.ptrcall(self, [], PackedStringArray)

proc setRestartOnExit*(self: OS; restart: bool; arguments: PackedStringArray = PackedStringArray()): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "set_restart_on_exit", 3331453935)
  methodbind.ptrcall(self, [getPtr restart, getPtr arguments], void)

proc isRestartOnExitSet*(self: OS): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "is_restart_on_exit_set", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getRestartOnExitArguments*(self: OS): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "get_restart_on_exit_arguments", 1139954409)
  methodbind.ptrcall(self, [], PackedStringArray)

proc delayUsec*(self: OS; usec: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "delay_usec", 998575451)
  methodbind.ptrcall(self, [getPtr usec], void)

proc delayMsec*(self: OS; msec: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "delay_msec", 998575451)
  methodbind.ptrcall(self, [getPtr msec], void)

proc getLocale*(self: OS): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "get_locale", 201670096)
  methodbind.ptrcall(self, [], String)

proc getLocaleLanguage*(self: OS): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "get_locale_language", 201670096)
  methodbind.ptrcall(self, [], String)

proc getModelName*(self: OS): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "get_model_name", 201670096)
  methodbind.ptrcall(self, [], String)

proc isUserfsPersistent*(self: OS): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "is_userfs_persistent", 36873697)
  methodbind.ptrcall(self, [], bool)

proc isStdoutVerbose*(self: OS): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "is_stdout_verbose", 36873697)
  methodbind.ptrcall(self, [], bool)

proc isDebugBuild*(self: OS): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "is_debug_build", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getStaticMemoryUsage*(self: OS): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "get_static_memory_usage", 3905245786)
  methodbind.ptrcall(self, [], uint64)

proc getStaticMemoryPeakUsage*(self: OS): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "get_static_memory_peak_usage", 3905245786)
  methodbind.ptrcall(self, [], uint64)

proc getMemoryInfo*(self: OS): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "get_memory_info", 3102165223)
  methodbind.ptrcall(self, [], Dictionary)

proc moveToTrash*(self: OS; path: String): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "move_to_trash", 2113323047)
  methodbind.ptrcall(self, [getPtr path], Error)

proc getUserDataDir*(self: OS): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "get_user_data_dir", 201670096)
  methodbind.ptrcall(self, [], String)

proc getSystemDir*(self: OS; dir: OS_SystemDir; sharedStorage: bool = true): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "get_system_dir", 3073895123)
  methodbind.ptrcall(self, [getPtr dir, getPtr sharedStorage], String)

proc getConfigDir*(self: OS): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "get_config_dir", 201670096)
  methodbind.ptrcall(self, [], String)

proc getDataDir*(self: OS): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "get_data_dir", 201670096)
  methodbind.ptrcall(self, [], String)

proc getCacheDir*(self: OS): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "get_cache_dir", 201670096)
  methodbind.ptrcall(self, [], String)

proc getTempDir*(self: OS): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "get_temp_dir", 201670096)
  methodbind.ptrcall(self, [], String)

proc getUniqueId*(self: OS): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "get_unique_id", 201670096)
  methodbind.ptrcall(self, [], String)

proc getKeycodeString*(self: OS; code: Key): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "get_keycode_string", 2261993717)
  methodbind.ptrcall(self, [getPtr code], String)

proc isKeycodeUnicode*(self: OS; code: char32): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "is_keycode_unicode", 1116898809)
  methodbind.ptrcall(self, [getPtr code], bool)

proc findKeycodeFromString*(self: OS; string: String): Key =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "find_keycode_from_string", 1084858572)
  methodbind.ptrcall(self, [getPtr string], Key)

proc setUseFileAccessSaveAndSwap*(self: OS; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "set_use_file_access_save_and_swap", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc setThreadName*(self: OS; name: String): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "set_thread_name", 166001499)
  methodbind.ptrcall(self, [getPtr name], Error)

proc getThreadCallerId*(self: OS): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "get_thread_caller_id", 3905245786)
  methodbind.ptrcall(self, [], uint64)

proc getMainThreadId*(self: OS): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "get_main_thread_id", 3905245786)
  methodbind.ptrcall(self, [], uint64)

proc hasFeature*(self: OS; tagName: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "has_feature", 3927539163)
  methodbind.ptrcall(self, [getPtr tagName], bool)

proc isSandboxed*(self: OS): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "is_sandboxed", 36873697)
  methodbind.ptrcall(self, [], bool)

proc requestPermission*(self: OS; name: String): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "request_permission", 2323990056)
  methodbind.ptrcall(self, [getPtr name], bool)

proc requestPermissions*(self: OS): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "request_permissions", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc getGrantedPermissions*(self: OS): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "get_granted_permissions", 1139954409)
  methodbind.ptrcall(self, [], PackedStringArray)

proc revokeGrantedPermissions*(self: OS): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "revoke_granted_permissions", 3218959716)
  methodbind.ptrcall(self, [], void)

proc addLogger*(self: OS; logger: gdref Logger): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "add_logger", 4261188958)
  methodbind.ptrcall(self, [getPtr logger], void)

proc removeLogger*(self: OS; logger: gdref Logger): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OS, "remove_logger", 4261188958)
  methodbind.ptrcall(self, [getPtr logger], void)

template lowProcessorUsageMode*(self: OS): untyped = self.isInLowProcessorUsageMode()
template `lowProcessorUsageMode=`*(self: OS; value) = self.setLowProcessorUsageMode(value)

template lowProcessorUsageModeSleepUsec*(self: OS): untyped = self.getLowProcessorUsageModeSleepUsec()
template `lowProcessorUsageModeSleepUsec=`*(self: OS; value) = self.setLowProcessorUsageModeSleepUsec(value)

template deltaSmoothing*(self: OS): untyped = self.isDeltaSmoothingEnabled()
template `deltaSmoothing=`*(self: OS; value) = self.setDeltaSmoothing(value)
