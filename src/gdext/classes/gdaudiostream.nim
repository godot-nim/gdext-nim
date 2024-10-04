{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdresource; export gdresource

method instantiatePlayback*(self: AudioStream): gdref AudioStreamPlayback {.base.} = (discard)
proc instantiatePlayback(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[AudioStream](p_instance).instantiatePlayback().encode(r_ret)
template instantiatePlayback_bind*(_: typedesc[AudioStream]): ClassCallVirtual = instantiatePlayback

method getStreamName*(self: AudioStream): String {.base.} = (discard)
proc getStreamName(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[AudioStream](p_instance).getStreamName().encode(r_ret)
template getStreamName_bind*(_: typedesc[AudioStream]): ClassCallVirtual = getStreamName

method getLength*(self: AudioStream): float64 {.base.} = (discard)
proc getLength(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[AudioStream](p_instance).getLength().encode(r_ret)
template getLength_bind*(_: typedesc[AudioStream]): ClassCallVirtual = getLength

method isMonophonic*(self: AudioStream): bool {.base.} = (discard)
proc isMonophonic(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[AudioStream](p_instance).isMonophonic().encode(r_ret)
template isMonophonic_bind*(_: typedesc[AudioStream]): ClassCallVirtual = isMonophonic

method getBpm*(self: AudioStream): float64 {.base.} = (discard)
proc getBpm(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[AudioStream](p_instance).getBpm().encode(r_ret)
template getBpm_bind*(_: typedesc[AudioStream]): ClassCallVirtual = getBpm

method getBeatCount*(self: AudioStream): int32 {.base.} = (discard)
proc getBeatCount(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[AudioStream](p_instance).getBeatCount().encode(r_ret)
template getBeatCount_bind*(_: typedesc[AudioStream]): ClassCallVirtual = getBeatCount

method getParameterList*(self: AudioStream): TypedArray[Dictionary] {.base.} = (discard)
proc getParameterList(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[AudioStream](p_instance).getParameterList().encode(r_ret)
template getParameterList_bind*(_: typedesc[AudioStream]): ClassCallVirtual = getParameterList

proc getLength*(self: AudioStream): float64 =
  expandMethodBind(className AudioStream, "get_length", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc isMonophonic*(self: AudioStream): bool =
  expandMethodBind(className AudioStream, "is_monophonic", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc instantiatePlayback*(self: AudioStream): gdref AudioStreamPlayback =
  expandMethodBind(className AudioStream, "instantiate_playback", 210135309)
  var ret: encoded gdref AudioStreamPlayback
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref AudioStreamPlayback)

proc canBeSampled*(self: AudioStream): bool =
  expandMethodBind(className AudioStream, "can_be_sampled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc generateSample*(self: AudioStream): gdref AudioSample =
  expandMethodBind(className AudioStream, "generate_sample", 2646048999)
  var ret: encoded gdref AudioSample
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref AudioSample)

proc isMetaStream*(self: AudioStream): bool =
  expandMethodBind(className AudioStream, "is_meta_stream", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

const AudioStream_vmap =
  Resource.vmap.concat toTable {
    "instantiateplayback" : "_instantiate_playback",
    "getstreamname" : "_get_stream_name",
    "getlength" : "_get_length",
    "ismonophonic" : "_is_monophonic",
    "getbpm" : "_get_bpm",
    "getbeatcount" : "_get_beat_count",
    "getparameterlist" : "_get_parameter_list",
    }
template vmap*(_: typedesc[AudioStream]): Table[string, string] = AudioStream_vmap

proc parameterListChanged*(self: AudioStream): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("parameter_list_changed")
  self.emitSignal(signalname)