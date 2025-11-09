{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

expandOnClassImported(Engine, Object)

proc setPhysicsTicksPerSecond*(self: Engine; physicsTicksPerSecond: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Engine, "set_physics_ticks_per_second", 1286410249)
  methodbind.ptrcall(self, [getPtr physicsTicksPerSecond], void)

proc getPhysicsTicksPerSecond*(self: Engine): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Engine, "get_physics_ticks_per_second", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setMaxPhysicsStepsPerFrame*(self: Engine; maxPhysicsSteps: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Engine, "set_max_physics_steps_per_frame", 1286410249)
  methodbind.ptrcall(self, [getPtr maxPhysicsSteps], void)

proc getMaxPhysicsStepsPerFrame*(self: Engine): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Engine, "get_max_physics_steps_per_frame", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setPhysicsJitterFix*(self: Engine; physicsJitterFix: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Engine, "set_physics_jitter_fix", 373806689)
  methodbind.ptrcall(self, [getPtr physicsJitterFix], void)

proc getPhysicsJitterFix*(self: Engine): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Engine, "get_physics_jitter_fix", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc getPhysicsInterpolationFraction*(self: Engine): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Engine, "get_physics_interpolation_fraction", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc setMaxFps*(self: Engine; maxFps: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Engine, "set_max_fps", 1286410249)
  methodbind.ptrcall(self, [getPtr maxFps], void)

proc getMaxFps*(self: Engine): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Engine, "get_max_fps", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setTimeScale*(self: Engine; timeScale: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Engine, "set_time_scale", 373806689)
  methodbind.ptrcall(self, [getPtr timeScale], void)

proc getTimeScale*(self: Engine): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Engine, "get_time_scale", 191475506)
  methodbind.ptrcall(self, [], float64)

proc getFramesDrawn*(self: Engine): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Engine, "get_frames_drawn", 2455072627)
  methodbind.ptrcall(self, [], int32)

proc getFramesPerSecond*(self: Engine): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Engine, "get_frames_per_second", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc getPhysicsFrames*(self: Engine): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Engine, "get_physics_frames", 3905245786)
  methodbind.ptrcall(self, [], uint64)

proc getProcessFrames*(self: Engine): uint64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Engine, "get_process_frames", 3905245786)
  methodbind.ptrcall(self, [], uint64)

proc getMainLoop*(self: Engine): MainLoop =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Engine, "get_main_loop", 1016888095)
  methodbind.ptrcall(self, [], MainLoop)

proc getVersionInfo*(self: Engine): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Engine, "get_version_info", 3102165223)
  methodbind.ptrcall(self, [], Dictionary)

proc getAuthorInfo*(self: Engine): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Engine, "get_author_info", 3102165223)
  methodbind.ptrcall(self, [], Dictionary)

proc getCopyrightInfo*(self: Engine): TypedArray[Dictionary] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Engine, "get_copyright_info", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[Dictionary])

proc getDonorInfo*(self: Engine): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Engine, "get_donor_info", 3102165223)
  methodbind.ptrcall(self, [], Dictionary)

proc getLicenseInfo*(self: Engine): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Engine, "get_license_info", 3102165223)
  methodbind.ptrcall(self, [], Dictionary)

proc getLicenseText*(self: Engine): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Engine, "get_license_text", 201670096)
  methodbind.ptrcall(self, [], String)

proc getArchitectureName*(self: Engine): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Engine, "get_architecture_name", 201670096)
  methodbind.ptrcall(self, [], String)

proc isInPhysicsFrame*(self: Engine): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Engine, "is_in_physics_frame", 36873697)
  methodbind.ptrcall(self, [], bool)

proc hasSingleton*(self: Engine; name: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Engine, "has_singleton", 2619796661)
  methodbind.ptrcall(self, [getPtr name], bool)

proc getSingleton*(self: Engine; name: StringName): Object =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Engine, "get_singleton", 1371597918)
  methodbind.ptrcall(self, [getPtr name], Object)

proc registerSingleton*(self: Engine; name: StringName; instance: Object): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Engine, "register_singleton", 965313290)
  methodbind.ptrcall(self, [getPtr name, getPtr instance], void)

proc unregisterSingleton*(self: Engine; name: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Engine, "unregister_singleton", 3304788590)
  methodbind.ptrcall(self, [getPtr name], void)

proc getSingletonList*(self: Engine): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Engine, "get_singleton_list", 1139954409)
  methodbind.ptrcall(self, [], PackedStringArray)

proc registerScriptLanguage*(self: Engine; language: ScriptLanguage): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Engine, "register_script_language", 1850254898)
  methodbind.ptrcall(self, [getPtr language], Error)

proc unregisterScriptLanguage*(self: Engine; language: ScriptLanguage): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Engine, "unregister_script_language", 1850254898)
  methodbind.ptrcall(self, [getPtr language], Error)

proc getScriptLanguageCount*(self: Engine): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Engine, "get_script_language_count", 2455072627)
  methodbind.ptrcall(self, [], int32)

proc getScriptLanguage*(self: Engine; index: int32): ScriptLanguage =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Engine, "get_script_language", 2151255799)
  methodbind.ptrcall(self, [getPtr index], ScriptLanguage)

proc captureScriptBacktraces*(self: Engine; includeVariables: bool = false): TypedArray[gdref ScriptBacktrace] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Engine, "capture_script_backtraces", 873284517)
  methodbind.ptrcall(self, [getPtr includeVariables], TypedArray[gdref ScriptBacktrace])

proc isEditorHint*(self: Engine): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Engine, "is_editor_hint", 36873697)
  methodbind.ptrcall(self, [], bool)

proc isEmbeddedInEditor*(self: Engine): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Engine, "is_embedded_in_editor", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getWriteMoviePath*(self: Engine): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Engine, "get_write_movie_path", 201670096)
  methodbind.ptrcall(self, [], String)

proc setPrintToStdout*(self: Engine; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Engine, "set_print_to_stdout", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isPrintingToStdout*(self: Engine): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Engine, "is_printing_to_stdout", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setPrintErrorMessages*(self: Engine; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Engine, "set_print_error_messages", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isPrintingErrorMessages*(self: Engine): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Engine, "is_printing_error_messages", 36873697)
  methodbind.ptrcall(self, [], bool)

template printErrorMessages*(self: Engine): untyped = self.isPrintingErrorMessages()
template `printErrorMessages=`*(self: Engine; value) = self.setPrintErrorMessages(value)

template printToStdout*(self: Engine): untyped = self.isPrintingToStdout()
template `printToStdout=`*(self: Engine; value) = self.setPrintToStdout(value)

template physicsTicksPerSecond*(self: Engine): untyped = self.getPhysicsTicksPerSecond()
template `physicsTicksPerSecond=`*(self: Engine; value) = self.setPhysicsTicksPerSecond(value)

template maxPhysicsStepsPerFrame*(self: Engine): untyped = self.getMaxPhysicsStepsPerFrame()
template `maxPhysicsStepsPerFrame=`*(self: Engine; value) = self.setMaxPhysicsStepsPerFrame(value)

template maxFps*(self: Engine): untyped = self.getMaxFps()
template `maxFps=`*(self: Engine; value) = self.setMaxFps(value)

template timeScale*(self: Engine): untyped = self.getTimeScale()
template `timeScale=`*(self: Engine; value) = self.setTimeScale(value)

template physicsJitterFix*(self: Engine): untyped = self.getPhysicsJitterFix()
template `physicsJitterFix=`*(self: Engine; value) = self.setPhysicsJitterFix(value)
