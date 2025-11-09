{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode; export gdnode

expandOnClassImported(AnimationMixer, Node)

method postProcessKeyValue*(self: AnimationMixer; animation: gdref Animation; track: int32; value: Variant; objectId: uint64; objectSubIdx: int32): Variant {.base.} = (discard)
proc registerVirtual_postProcessKeyValue*[T: AnimationMixer](Self: typedesc[T]) =
  Self.vmethods[newStringName"_post_process_key_value"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[AnimationMixer](p_instance).postProcessKeyValue(p_args[0].decode(gdref Animation), p_args[1].decode(int32), p_args[2].decode(Variant), p_args[3].decode(uint64), p_args[4].decode(int32)).encode(r_ret)

proc addAnimationLibrary*(self: AnimationMixer; name: StringName; library: gdref AnimationLibrary): Error =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationMixer, "add_animation_library", 618909818)
  methodbind.ptrcall(self, [getPtr name, getPtr library], Error)

proc removeAnimationLibrary*(self: AnimationMixer; name: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationMixer, "remove_animation_library", 3304788590)
  methodbind.ptrcall(self, [getPtr name], void)

proc renameAnimationLibrary*(self: AnimationMixer; name: StringName; newname: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationMixer, "rename_animation_library", 3740211285)
  methodbind.ptrcall(self, [getPtr name, getPtr newname], void)

proc hasAnimationLibrary*(self: AnimationMixer; name: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationMixer, "has_animation_library", 2619796661)
  methodbind.ptrcall(self, [getPtr name], bool)

proc getAnimationLibrary*(self: AnimationMixer; name: StringName): gdref AnimationLibrary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationMixer, "get_animation_library", 147342321)
  methodbind.ptrcall(self, [getPtr name], gdref AnimationLibrary)

proc getAnimationLibraryList*(self: AnimationMixer): TypedArray[StringName] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationMixer, "get_animation_library_list", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[StringName])

proc hasAnimation*(self: AnimationMixer; name: StringName): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationMixer, "has_animation", 2619796661)
  methodbind.ptrcall(self, [getPtr name], bool)

proc getAnimation*(self: AnimationMixer; name: StringName): gdref Animation =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationMixer, "get_animation", 2933122410)
  methodbind.ptrcall(self, [getPtr name], gdref Animation)

proc getAnimationList*(self: AnimationMixer): PackedStringArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationMixer, "get_animation_list", 1139954409)
  methodbind.ptrcall(self, [], PackedStringArray)

proc setActive*(self: AnimationMixer; active: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationMixer, "set_active", 2586408642)
  methodbind.ptrcall(self, [getPtr active], void)

proc isActive*(self: AnimationMixer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationMixer, "is_active", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDeterministic*(self: AnimationMixer; deterministic: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationMixer, "set_deterministic", 2586408642)
  methodbind.ptrcall(self, [getPtr deterministic], void)

proc isDeterministic*(self: AnimationMixer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationMixer, "is_deterministic", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setRootNode*(self: AnimationMixer; path: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationMixer, "set_root_node", 1348162250)
  methodbind.ptrcall(self, [getPtr path], void)

proc getRootNode*(self: AnimationMixer): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationMixer, "get_root_node", 4075236667)
  methodbind.ptrcall(self, [], NodePath)

proc setCallbackModeProcess*(self: AnimationMixer; mode: AnimationMixer_AnimationCallbackModeProcess): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationMixer, "set_callback_mode_process", 2153733086)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getCallbackModeProcess*(self: AnimationMixer): AnimationMixer_AnimationCallbackModeProcess =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationMixer, "get_callback_mode_process", 1394468472)
  methodbind.ptrcall(self, [], AnimationMixer_AnimationCallbackModeProcess)

proc setCallbackModeMethod*(self: AnimationMixer; mode: AnimationMixer_AnimationCallbackModeMethod): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationMixer, "set_callback_mode_method", 742218271)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getCallbackModeMethod*(self: AnimationMixer): AnimationMixer_AnimationCallbackModeMethod =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationMixer, "get_callback_mode_method", 489449656)
  methodbind.ptrcall(self, [], AnimationMixer_AnimationCallbackModeMethod)

proc setCallbackModeDiscrete*(self: AnimationMixer; mode: AnimationMixer_AnimationCallbackModeDiscrete): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationMixer, "set_callback_mode_discrete", 1998944670)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getCallbackModeDiscrete*(self: AnimationMixer): AnimationMixer_AnimationCallbackModeDiscrete =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationMixer, "get_callback_mode_discrete", 3493168860)
  methodbind.ptrcall(self, [], AnimationMixer_AnimationCallbackModeDiscrete)

proc setAudioMaxPolyphony*(self: AnimationMixer; maxPolyphony: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationMixer, "set_audio_max_polyphony", 1286410249)
  methodbind.ptrcall(self, [getPtr maxPolyphony], void)

proc getAudioMaxPolyphony*(self: AnimationMixer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationMixer, "get_audio_max_polyphony", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setRootMotionTrack*(self: AnimationMixer; path: NodePath): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationMixer, "set_root_motion_track", 1348162250)
  methodbind.ptrcall(self, [getPtr path], void)

proc getRootMotionTrack*(self: AnimationMixer): NodePath =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationMixer, "get_root_motion_track", 4075236667)
  methodbind.ptrcall(self, [], NodePath)

proc setRootMotionLocal*(self: AnimationMixer; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationMixer, "set_root_motion_local", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isRootMotionLocal*(self: AnimationMixer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationMixer, "is_root_motion_local", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getRootMotionPosition*(self: AnimationMixer): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationMixer, "get_root_motion_position", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc getRootMotionRotation*(self: AnimationMixer): Quaternion =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationMixer, "get_root_motion_rotation", 1222331677)
  methodbind.ptrcall(self, [], Quaternion)

proc getRootMotionScale*(self: AnimationMixer): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationMixer, "get_root_motion_scale", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc getRootMotionPositionAccumulator*(self: AnimationMixer): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationMixer, "get_root_motion_position_accumulator", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc getRootMotionRotationAccumulator*(self: AnimationMixer): Quaternion =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationMixer, "get_root_motion_rotation_accumulator", 1222331677)
  methodbind.ptrcall(self, [], Quaternion)

proc getRootMotionScaleAccumulator*(self: AnimationMixer): Vector3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationMixer, "get_root_motion_scale_accumulator", 3360562783)
  methodbind.ptrcall(self, [], Vector3)

proc clearCaches*(self: AnimationMixer): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationMixer, "clear_caches", 3218959716)
  methodbind.ptrcall(self, [], void)

proc advance*(self: AnimationMixer; delta: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationMixer, "advance", 373806689)
  methodbind.ptrcall(self, [getPtr delta], void)

proc capture*(self: AnimationMixer; name: StringName; duration: float64; transType: Tween_TransitionType = transLinear; easeType: Tween_EaseType = easeIn): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationMixer, "capture", 1333632127)
  methodbind.ptrcall(self, [getPtr name, getPtr duration, getPtr transType, getPtr easeType], void)

proc setResetOnSaveEnabled*(self: AnimationMixer; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationMixer, "set_reset_on_save_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isResetOnSaveEnabled*(self: AnimationMixer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationMixer, "is_reset_on_save_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc findAnimation*(self: AnimationMixer; animation: gdref Animation): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationMixer, "find_animation", 1559484580)
  methodbind.ptrcall(self, [getPtr animation], StringName)

proc findAnimationLibrary*(self: AnimationMixer; animation: gdref Animation): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AnimationMixer, "find_animation_library", 1559484580)
  methodbind.ptrcall(self, [getPtr animation], StringName)

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

template rootMotionLocal*(self: AnimationMixer): untyped = self.isRootMotionLocal()
template `rootMotionLocal=`*(self: AnimationMixer; value) = self.setRootMotionLocal(value)

template audioMaxPolyphony*(self: AnimationMixer): untyped = self.getAudioMaxPolyphony()
template `audioMaxPolyphony=`*(self: AnimationMixer; value) = self.setAudioMaxPolyphony(value)

template callbackModeProcess*(self: AnimationMixer): untyped = self.getCallbackModeProcess()
template `callbackModeProcess=`*(self: AnimationMixer; value) = self.setCallbackModeProcess(value)

template callbackModeMethod*(self: AnimationMixer): untyped = self.getCallbackModeMethod()
template `callbackModeMethod=`*(self: AnimationMixer; value) = self.setCallbackModeMethod(value)

template callbackModeDiscrete*(self: AnimationMixer): untyped = self.getCallbackModeDiscrete()
template `callbackModeDiscrete=`*(self: AnimationMixer; value) = self.setCallbackModeDiscrete(value)
