{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

method start*(self: AudioStreamPlayback; fromPos: float64): void {.base.} = (discard)
proc registerVirtual_start*[T: AudioStreamPlayback](Self: typedesc[T]) =
  Self.vmethods[newStringName"_start"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[AudioStreamPlayback](p_instance).start(p_args[0].decode(float64))

method stop*(self: AudioStreamPlayback): void {.base.} = (discard)
proc registerVirtual_stop*[T: AudioStreamPlayback](Self: typedesc[T]) =
  Self.vmethods[newStringName"_stop"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[AudioStreamPlayback](p_instance).stop()

method isPlaying*(self: AudioStreamPlayback): bool {.base.} = (discard)
proc registerVirtual_isPlaying*[T: AudioStreamPlayback](Self: typedesc[T]) =
  Self.vmethods[newStringName"_is_playing"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[AudioStreamPlayback](p_instance).isPlaying().encode(r_ret)

method getLoopCount*(self: AudioStreamPlayback): int32 {.base.} = (discard)
proc registerVirtual_getLoopCount*[T: AudioStreamPlayback](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_loop_count"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[AudioStreamPlayback](p_instance).getLoopCount().encode(r_ret)

method getPlaybackPosition*(self: AudioStreamPlayback): float64 {.base.} = (discard)
proc registerVirtual_getPlaybackPosition*[T: AudioStreamPlayback](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_playback_position"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[AudioStreamPlayback](p_instance).getPlaybackPosition().encode(r_ret)

method seek*(self: AudioStreamPlayback; position: float64): void {.base.} = (discard)
proc registerVirtual_seek*[T: AudioStreamPlayback](Self: typedesc[T]) =
  Self.vmethods[newStringName"_seek"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[AudioStreamPlayback](p_instance).seek(p_args[0].decode(float64))

method mix*(self: AudioStreamPlayback; buffer: ptr AudioFrame; rateScale: Float; frames: int32): int32 {.base.} = (discard)
proc registerVirtual_mix*[T: AudioStreamPlayback](Self: typedesc[T]) =
  Self.vmethods[newStringName"_mix"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[AudioStreamPlayback](p_instance).mix(p_args[0].decode(ptr AudioFrame), p_args[1].decode(Float), p_args[2].decode(int32)).encode(r_ret)

method tagUsedStreams*(self: AudioStreamPlayback): void {.base.} = (discard)
proc registerVirtual_tagUsedStreams*[T: AudioStreamPlayback](Self: typedesc[T]) =
  Self.vmethods[newStringName"_tag_used_streams"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[AudioStreamPlayback](p_instance).tagUsedStreams()

method setParameter*(self: AudioStreamPlayback; name: StringName; value: Variant): void {.base.} = (discard)
proc registerVirtual_setParameter*[T: AudioStreamPlayback](Self: typedesc[T]) =
  Self.vmethods[newStringName"_set_parameter"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[AudioStreamPlayback](p_instance).setParameter(p_args[0].decode(StringName), p_args[1].decode(Variant))

method getParameter*(self: AudioStreamPlayback; name: StringName): Variant {.base.} = (discard)
proc registerVirtual_getParameter*[T: AudioStreamPlayback](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_parameter"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[AudioStreamPlayback](p_instance).getParameter(p_args[0].decode(StringName)).encode(r_ret)

proc setSamplePlayback*(self: AudioStreamPlayback; playbackSample: gdref AudioSamplePlayback): void =
  expandMethodBind(className AudioStreamPlayback, "set_sample_playback", 3195455091)
  methodbind.ptrcall(self, [getPtr playbackSample])

proc getSamplePlayback*(self: AudioStreamPlayback): gdref AudioSamplePlayback =
  expandMethodBind(className AudioStreamPlayback, "get_sample_playback", 3482738536)
  var ret: encoded gdref AudioSamplePlayback
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref AudioSamplePlayback)

proc mixAudio*(self: AudioStreamPlayback; rateScale: Float; frames: int32): PackedVector2Array =
  expandMethodBind(className AudioStreamPlayback, "mix_audio", 3341291446)
  var ret: encoded PackedVector2Array
  methodbind.ptrcall(self, [getPtr rateScale, getPtr frames], addr ret)
  (addr ret).decode_result(PackedVector2Array)

proc start*(self: AudioStreamPlayback; fromPos: float64 = 0.0): void =
  expandMethodBind(className AudioStreamPlayback, "start", 1958160172)
  methodbind.ptrcall(self, [getPtr fromPos])

proc seek*(self: AudioStreamPlayback; time: float64 = 0.0): void =
  expandMethodBind(className AudioStreamPlayback, "seek", 1958160172)
  methodbind.ptrcall(self, [getPtr time])

proc stop*(self: AudioStreamPlayback): void =
  expandMethodBind(className AudioStreamPlayback, "stop", 3218959716)
  methodbind.ptrcall(self, [])

proc getLoopCount*(self: AudioStreamPlayback): int32 =
  expandMethodBind(className AudioStreamPlayback, "get_loop_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getPlaybackPosition*(self: AudioStreamPlayback): float64 =
  expandMethodBind(className AudioStreamPlayback, "get_playback_position", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(float64)

proc isPlaying*(self: AudioStreamPlayback): bool =
  expandMethodBind(className AudioStreamPlayback, "is_playing", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)
