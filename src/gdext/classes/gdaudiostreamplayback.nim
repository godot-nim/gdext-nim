{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

method start*(self: AudioStreamPlayback; fromPos: float64): void {.base.} = (discard)
proc start(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[AudioStreamPlayback](p_instance).start(p_args[0].decode(float64))
template start_bind*(_: typedesc[AudioStreamPlayback]): ClassCallVirtual = start

method stop*(self: AudioStreamPlayback): void {.base.} = (discard)
proc stop(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[AudioStreamPlayback](p_instance).stop()
template stop_bind*(_: typedesc[AudioStreamPlayback]): ClassCallVirtual = stop

method isPlaying*(self: AudioStreamPlayback): bool {.base.} = (discard)
proc isPlaying(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[AudioStreamPlayback](p_instance).isPlaying().encode(r_ret)
template isPlaying_bind*(_: typedesc[AudioStreamPlayback]): ClassCallVirtual = isPlaying

method getLoopCount*(self: AudioStreamPlayback): int32 {.base.} = (discard)
proc getLoopCount(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[AudioStreamPlayback](p_instance).getLoopCount().encode(r_ret)
template getLoopCount_bind*(_: typedesc[AudioStreamPlayback]): ClassCallVirtual = getLoopCount

method getPlaybackPosition*(self: AudioStreamPlayback): float64 {.base.} = (discard)
proc getPlaybackPosition(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[AudioStreamPlayback](p_instance).getPlaybackPosition().encode(r_ret)
template getPlaybackPosition_bind*(_: typedesc[AudioStreamPlayback]): ClassCallVirtual = getPlaybackPosition

method seek*(self: AudioStreamPlayback; position: float64): void {.base.} = (discard)
proc seek(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[AudioStreamPlayback](p_instance).seek(p_args[0].decode(float64))
template seek_bind*(_: typedesc[AudioStreamPlayback]): ClassCallVirtual = seek

method mix*(self: AudioStreamPlayback; buffer: ptr AudioFrame; rateScale: Float; frames: int32): int32 {.base.} = (discard)
proc mix(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[AudioStreamPlayback](p_instance).mix(p_args[0].decode(ptr AudioFrame), p_args[1].decode(Float), p_args[2].decode(int32)).encode(r_ret)
template mix_bind*(_: typedesc[AudioStreamPlayback]): ClassCallVirtual = mix

method tagUsedStreams*(self: AudioStreamPlayback): void {.base.} = (discard)
proc tagUsedStreams(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[AudioStreamPlayback](p_instance).tagUsedStreams()
template tagUsedStreams_bind*(_: typedesc[AudioStreamPlayback]): ClassCallVirtual = tagUsedStreams

method setParameter*(self: AudioStreamPlayback; name: StringName; value: Variant): void {.base.} = (discard)
proc setParameter(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[AudioStreamPlayback](p_instance).setParameter(p_args[0].decode(StringName), p_args[1].decode(Variant))
template setParameter_bind*(_: typedesc[AudioStreamPlayback]): ClassCallVirtual = setParameter

method getParameter*(self: AudioStreamPlayback; name: StringName): Variant {.base.} = (discard)
proc getParameter(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[AudioStreamPlayback](p_instance).getParameter(p_args[0].decode(StringName)).encode(r_ret)
template getParameter_bind*(_: typedesc[AudioStreamPlayback]): ClassCallVirtual = getParameter

proc setSamplePlayback*(self: AudioStreamPlayback; playbackSample: gdref AudioSamplePlayback): void =
  expandMethodBind(className AudioStreamPlayback, "set_sample_playback", 3195455091)
  var `?param` = [getPtr playbackSample]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSamplePlayback*(self: AudioStreamPlayback): gdref AudioSamplePlayback =
  expandMethodBind(className AudioStreamPlayback, "get_sample_playback", 3482738536)
  var ret: encoded gdref AudioSamplePlayback
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref AudioSamplePlayback)

const AudioStreamPlayback_vmap =
  RefCounted.vmap.concat toTable {
    "start" : "_start",
    "stop" : "_stop",
    "isplaying" : "_is_playing",
    "getloopcount" : "_get_loop_count",
    "getplaybackposition" : "_get_playback_position",
    "seek" : "_seek",
    "mix" : "_mix",
    "tagusedstreams" : "_tag_used_streams",
    "setparameter" : "_set_parameter",
    "getparameter" : "_get_parameter",
    }
template vmap*(_: typedesc[AudioStreamPlayback]): Table[string, string] = AudioStreamPlayback_vmap