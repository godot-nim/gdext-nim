{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode; export gdnode

method postProcessKeyValue*(self: AnimationMixer; animation: gdref Animation; track: int32; value: Variant; objectId: uint64; objectSubIdx: int32): Variant {.base.} = (discard)
proc postProcessKeyValue(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[AnimationMixer](p_instance).postProcessKeyValue(p_args[0].decode(gdref Animation), p_args[1].decode(int32), p_args[2].decode(Variant), p_args[3].decode(uint64), p_args[4].decode(int32)).encode(r_ret)
template postProcessKeyValue_bind*(_: typedesc[AnimationMixer]): ClassCallVirtual = postProcessKeyValue

proc addAnimationLibrary*(self: AnimationMixer; name: StringName; library: gdref AnimationLibrary): Error =
  expandMethodBind(className AnimationMixer, "add_animation_library", 618909818)
  var `?param` = [getPtr name, getPtr library]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc removeAnimationLibrary*(self: AnimationMixer; name: StringName): void =
  expandMethodBind(className AnimationMixer, "remove_animation_library", 3304788590)
  var `?param` = [getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc renameAnimationLibrary*(self: AnimationMixer; name: StringName; newname: StringName): void =
  expandMethodBind(className AnimationMixer, "rename_animation_library", 3740211285)
  var `?param` = [getPtr name, getPtr newname]
  methodbind.ptrcall(self, addr `?param`[0])

proc hasAnimationLibrary*(self: AnimationMixer; name: StringName): bool =
  expandMethodBind(className AnimationMixer, "has_animation_library", 2619796661)
  var `?param` = [getPtr name]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getAnimationLibrary*(self: AnimationMixer; name: StringName): gdref AnimationLibrary =
  expandMethodBind(className AnimationMixer, "get_animation_library", 147342321)
  var `?param` = [getPtr name]
  var ret: encoded gdref AnimationLibrary
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref AnimationLibrary)

proc getAnimationLibraryList*(self: AnimationMixer): TypedArray[StringName] =
  expandMethodBind(className AnimationMixer, "get_animation_library_list", 3995934104)
  var ret: encoded TypedArray[StringName]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[StringName])

proc hasAnimation*(self: AnimationMixer; name: StringName): bool =
  expandMethodBind(className AnimationMixer, "has_animation", 2619796661)
  var `?param` = [getPtr name]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getAnimation*(self: AnimationMixer; name: StringName): gdref Animation =
  expandMethodBind(className AnimationMixer, "get_animation", 2933122410)
  var `?param` = [getPtr name]
  var ret: encoded gdref Animation
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref Animation)

proc getAnimationList*(self: AnimationMixer): PackedStringArray =
  expandMethodBind(className AnimationMixer, "get_animation_list", 1139954409)
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedStringArray)

proc setActive*(self: AnimationMixer; active: bool): void =
  expandMethodBind(className AnimationMixer, "set_active", 2586408642)
  var `?param` = [getPtr active]
  methodbind.ptrcall(self, addr `?param`[0])

proc isActive*(self: AnimationMixer): bool =
  expandMethodBind(className AnimationMixer, "is_active", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setDeterministic*(self: AnimationMixer; deterministic: bool): void =
  expandMethodBind(className AnimationMixer, "set_deterministic", 2586408642)
  var `?param` = [getPtr deterministic]
  methodbind.ptrcall(self, addr `?param`[0])

proc isDeterministic*(self: AnimationMixer): bool =
  expandMethodBind(className AnimationMixer, "is_deterministic", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setRootNode*(self: AnimationMixer; path: NodePath): void =
  expandMethodBind(className AnimationMixer, "set_root_node", 1348162250)
  var `?param` = [getPtr path]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRootNode*(self: AnimationMixer): NodePath =
  expandMethodBind(className AnimationMixer, "get_root_node", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(NodePath)

proc setCallbackModeProcess*(self: AnimationMixer; mode: AnimationMixer_AnimationCallbackModeProcess): void =
  expandMethodBind(className AnimationMixer, "set_callback_mode_process", 2153733086)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCallbackModeProcess*(self: AnimationMixer): AnimationMixer_AnimationCallbackModeProcess =
  expandMethodBind(className AnimationMixer, "get_callback_mode_process", 1394468472)
  var ret: encoded AnimationMixer_AnimationCallbackModeProcess
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(AnimationMixer_AnimationCallbackModeProcess)

proc setCallbackModeMethod*(self: AnimationMixer; mode: AnimationMixer_AnimationCallbackModeMethod): void =
  expandMethodBind(className AnimationMixer, "set_callback_mode_method", 742218271)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCallbackModeMethod*(self: AnimationMixer): AnimationMixer_AnimationCallbackModeMethod =
  expandMethodBind(className AnimationMixer, "get_callback_mode_method", 489449656)
  var ret: encoded AnimationMixer_AnimationCallbackModeMethod
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(AnimationMixer_AnimationCallbackModeMethod)

proc setCallbackModeDiscrete*(self: AnimationMixer; mode: AnimationMixer_AnimationCallbackModeDiscrete): void =
  expandMethodBind(className AnimationMixer, "set_callback_mode_discrete", 1998944670)
  var `?param` = [getPtr mode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCallbackModeDiscrete*(self: AnimationMixer): AnimationMixer_AnimationCallbackModeDiscrete =
  expandMethodBind(className AnimationMixer, "get_callback_mode_discrete", 3493168860)
  var ret: encoded AnimationMixer_AnimationCallbackModeDiscrete
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(AnimationMixer_AnimationCallbackModeDiscrete)

proc setAudioMaxPolyphony*(self: AnimationMixer; maxPolyphony: int32): void =
  expandMethodBind(className AnimationMixer, "set_audio_max_polyphony", 1286410249)
  var `?param` = [getPtr maxPolyphony]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAudioMaxPolyphony*(self: AnimationMixer): int32 =
  expandMethodBind(className AnimationMixer, "get_audio_max_polyphony", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setRootMotionTrack*(self: AnimationMixer; path: NodePath): void =
  expandMethodBind(className AnimationMixer, "set_root_motion_track", 1348162250)
  var `?param` = [getPtr path]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRootMotionTrack*(self: AnimationMixer): NodePath =
  expandMethodBind(className AnimationMixer, "get_root_motion_track", 4075236667)
  var ret: encoded NodePath
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(NodePath)

proc getRootMotionPosition*(self: AnimationMixer): Vector3 =
  expandMethodBind(className AnimationMixer, "get_root_motion_position", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc getRootMotionRotation*(self: AnimationMixer): Quaternion =
  expandMethodBind(className AnimationMixer, "get_root_motion_rotation", 1222331677)
  var ret: encoded Quaternion
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Quaternion)

proc getRootMotionScale*(self: AnimationMixer): Vector3 =
  expandMethodBind(className AnimationMixer, "get_root_motion_scale", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc getRootMotionPositionAccumulator*(self: AnimationMixer): Vector3 =
  expandMethodBind(className AnimationMixer, "get_root_motion_position_accumulator", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc getRootMotionRotationAccumulator*(self: AnimationMixer): Quaternion =
  expandMethodBind(className AnimationMixer, "get_root_motion_rotation_accumulator", 1222331677)
  var ret: encoded Quaternion
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Quaternion)

proc getRootMotionScaleAccumulator*(self: AnimationMixer): Vector3 =
  expandMethodBind(className AnimationMixer, "get_root_motion_scale_accumulator", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc clearCaches*(self: AnimationMixer): void =
  expandMethodBind(className AnimationMixer, "clear_caches", 3218959716)
  methodbind.ptrcall(self, nil)

proc advance*(self: AnimationMixer; delta: float64): void =
  expandMethodBind(className AnimationMixer, "advance", 373806689)
  var `?param` = [getPtr delta]
  methodbind.ptrcall(self, addr `?param`[0])

proc capture*(self: AnimationMixer; name: StringName; duration: float64; transType: Tween_TransitionType = transLinear; easeType: Tween_EaseType = easeIn): void =
  expandMethodBind(className AnimationMixer, "capture", 1333632127)
  var `?param` = [getPtr name, getPtr duration, getPtr transType, getPtr easeType]
  methodbind.ptrcall(self, addr `?param`[0])

proc setResetOnSaveEnabled*(self: AnimationMixer; enabled: bool): void =
  expandMethodBind(className AnimationMixer, "set_reset_on_save_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc isResetOnSaveEnabled*(self: AnimationMixer): bool =
  expandMethodBind(className AnimationMixer, "is_reset_on_save_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc findAnimation*(self: AnimationMixer; animation: gdref Animation): StringName =
  expandMethodBind(className AnimationMixer, "find_animation", 1559484580)
  var `?param` = [getPtr animation]
  var ret: encoded StringName
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(StringName)

proc findAnimationLibrary*(self: AnimationMixer; animation: gdref Animation): StringName =
  expandMethodBind(className AnimationMixer, "find_animation_library", 1559484580)
  var `?param` = [getPtr animation]
  var ret: encoded StringName
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(StringName)

template active*(self: AnimationMixer): untyped = self.isActive()
template `active=`*(self: AnimationMixer; value) = self.setActive(value)

template deterministic*(self: AnimationMixer): untyped = self.isDeterministic()
template `deterministic=`*(self: AnimationMixer; value) = self.setDeterministic(value)

template resetOnSave*(self: AnimationMixer): untyped = self.isResetOnSaveEnabled()
template `resetOnSave=`*(self: AnimationMixer; value) = self.setResetOnSaveEnabled(value)

template rootNode*(self: AnimationMixer): untyped = self.getRootNode()
template `rootNode=`*(self: AnimationMixer; value) = self.setRootNode(value)

template rootMotionTrack*(self: AnimationMixer): untyped = self.getRootMotionTrack()
template `rootMotionTrack=`*(self: AnimationMixer; value) = self.setRootMotionTrack(value)

template audioMaxPolyphony*(self: AnimationMixer): untyped = self.getAudioMaxPolyphony()
template `audioMaxPolyphony=`*(self: AnimationMixer; value) = self.setAudioMaxPolyphony(value)

template callbackModeProcess*(self: AnimationMixer): untyped = self.getCallbackModeProcess()
template `callbackModeProcess=`*(self: AnimationMixer; value) = self.setCallbackModeProcess(value)

template callbackModeMethod*(self: AnimationMixer): untyped = self.getCallbackModeMethod()
template `callbackModeMethod=`*(self: AnimationMixer; value) = self.setCallbackModeMethod(value)

template callbackModeDiscrete*(self: AnimationMixer): untyped = self.getCallbackModeDiscrete()
template `callbackModeDiscrete=`*(self: AnimationMixer; value) = self.setCallbackModeDiscrete(value)

const AnimationMixer_vmap =
  Node.vmap.concat toTable {
    "postprocesskeyvalue" : "_post_process_key_value",
    }
template vmap*(_: typedesc[AnimationMixer]): Table[string, string] = AnimationMixer_vmap

proc animationListChanged*(self: AnimationMixer): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("animation_list_changed")
  self.emitSignal(signalname)

proc animationLibrariesUpdated*(self: AnimationMixer): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("animation_libraries_updated")
  self.emitSignal(signalname)

proc animationFinished*(self: AnimationMixer; animName: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("animation_finished")
  let args = [animName]
  self.emitSignal(signalname, args)

proc animationStarted*(self: AnimationMixer; animName: Variant): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("animation_started")
  let args = [animName]
  self.emitSignal(signalname, args)

proc cachesCleared*(self: AnimationMixer): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("caches_cleared")
  self.emitSignal(signalname)

proc mixerApplied*(self: AnimationMixer): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("mixer_applied")
  self.emitSignal(signalname)

proc mixerUpdated*(self: AnimationMixer): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("mixer_updated")
  self.emitSignal(signalname)