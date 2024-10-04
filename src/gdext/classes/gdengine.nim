{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdobject; export gdobject

proc setPhysicsTicksPerSecond*(self: Engine; physicsTicksPerSecond: int32): void =
  expandMethodBind(className Engine, "set_physics_ticks_per_second", 1286410249)
  var `?param` = [getPtr physicsTicksPerSecond]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPhysicsTicksPerSecond*(self: Engine): int32 =
  expandMethodBind(className Engine, "get_physics_ticks_per_second", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setMaxPhysicsStepsPerFrame*(self: Engine; maxPhysicsSteps: int32): void =
  expandMethodBind(className Engine, "set_max_physics_steps_per_frame", 1286410249)
  var `?param` = [getPtr maxPhysicsSteps]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMaxPhysicsStepsPerFrame*(self: Engine): int32 =
  expandMethodBind(className Engine, "get_max_physics_steps_per_frame", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setPhysicsJitterFix*(self: Engine; physicsJitterFix: float64): void =
  expandMethodBind(className Engine, "set_physics_jitter_fix", 373806689)
  var `?param` = [getPtr physicsJitterFix]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPhysicsJitterFix*(self: Engine): float64 =
  expandMethodBind(className Engine, "get_physics_jitter_fix", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc getPhysicsInterpolationFraction*(self: Engine): float64 =
  expandMethodBind(className Engine, "get_physics_interpolation_fraction", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc setMaxFps*(self: Engine; maxFps: int32): void =
  expandMethodBind(className Engine, "set_max_fps", 1286410249)
  var `?param` = [getPtr maxFps]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMaxFps*(self: Engine): int32 =
  expandMethodBind(className Engine, "get_max_fps", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setTimeScale*(self: Engine; timeScale: float64): void =
  expandMethodBind(className Engine, "set_time_scale", 373806689)
  var `?param` = [getPtr timeScale]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTimeScale*(self: Engine): float64 =
  expandMethodBind(className Engine, "get_time_scale", 191475506)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc getFramesDrawn*(self: Engine): int32 =
  expandMethodBind(className Engine, "get_frames_drawn", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getFramesPerSecond*(self: Engine): float64 =
  expandMethodBind(className Engine, "get_frames_per_second", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc getPhysicsFrames*(self: Engine): uint64 =
  expandMethodBind(className Engine, "get_physics_frames", 3905245786)
  var ret: encoded uint64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint64)

proc getProcessFrames*(self: Engine): uint64 =
  expandMethodBind(className Engine, "get_process_frames", 3905245786)
  var ret: encoded uint64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint64)

proc getMainLoop*(self: Engine): MainLoop =
  expandMethodBind(className Engine, "get_main_loop", 1016888095)
  var ret: encoded MainLoop
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(MainLoop)

proc getVersionInfo*(self: Engine): Dictionary =
  expandMethodBind(className Engine, "get_version_info", 3102165223)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Dictionary)

proc getAuthorInfo*(self: Engine): Dictionary =
  expandMethodBind(className Engine, "get_author_info", 3102165223)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Dictionary)

proc getCopyrightInfo*(self: Engine): TypedArray[Dictionary] =
  expandMethodBind(className Engine, "get_copyright_info", 3995934104)
  var ret: encoded TypedArray[Dictionary]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[Dictionary])

proc getDonorInfo*(self: Engine): Dictionary =
  expandMethodBind(className Engine, "get_donor_info", 3102165223)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Dictionary)

proc getLicenseInfo*(self: Engine): Dictionary =
  expandMethodBind(className Engine, "get_license_info", 3102165223)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Dictionary)

proc getLicenseText*(self: Engine): String =
  expandMethodBind(className Engine, "get_license_text", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getArchitectureName*(self: Engine): String =
  expandMethodBind(className Engine, "get_architecture_name", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc isInPhysicsFrame*(self: Engine): bool =
  expandMethodBind(className Engine, "is_in_physics_frame", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc hasSingleton*(self: Engine; name: StringName): bool =
  expandMethodBind(className Engine, "has_singleton", 2619796661)
  var `?param` = [getPtr name]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getSingleton*(self: Engine; name: StringName): Object =
  expandMethodBind(className Engine, "get_singleton", 1371597918)
  var `?param` = [getPtr name]
  var ret: encoded Object
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Object)

proc registerSingleton*(self: Engine; name: StringName; instance: Object): void =
  expandMethodBind(className Engine, "register_singleton", 965313290)
  var `?param` = [getPtr name, getPtr instance]
  methodbind.ptrcall(self, addr `?param`[0])

proc unregisterSingleton*(self: Engine; name: StringName): void =
  expandMethodBind(className Engine, "unregister_singleton", 3304788590)
  var `?param` = [getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSingletonList*(self: Engine): PackedStringArray =
  expandMethodBind(className Engine, "get_singleton_list", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedStringArray)

proc registerScriptLanguage*(self: Engine; language: ScriptLanguage): Error =
  expandMethodBind(className Engine, "register_script_language", 1850254898)
  var `?param` = [getPtr language]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc unregisterScriptLanguage*(self: Engine; language: ScriptLanguage): Error =
  expandMethodBind(className Engine, "unregister_script_language", 1850254898)
  var `?param` = [getPtr language]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc getScriptLanguageCount*(self: Engine): int32 =
  expandMethodBind(className Engine, "get_script_language_count", 2455072627)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getScriptLanguage*(self: Engine; index: int32): ScriptLanguage =
  expandMethodBind(className Engine, "get_script_language", 2151255799)
  var `?param` = [getPtr index]
  var ret: encoded ScriptLanguage
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(ScriptLanguage)

proc isEditorHint*(self: Engine): bool =
  expandMethodBind(className Engine, "is_editor_hint", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getWriteMoviePath*(self: Engine): String =
  expandMethodBind(className Engine, "get_write_movie_path", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc setPrintErrorMessages*(self: Engine; enabled: bool): void =
  expandMethodBind(className Engine, "set_print_error_messages", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isPrintingErrorMessages*(self: Engine): bool =
  expandMethodBind(className Engine, "is_printing_error_messages", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template printErrorMessages*(self: Engine): untyped = self.isPrintingErrorMessages()
template `printErrorMessages=`*(self: Engine; value) = self.setPrintErrorMessages(value)

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

const Engine_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Engine]): Table[string, string] = Engine_vmap