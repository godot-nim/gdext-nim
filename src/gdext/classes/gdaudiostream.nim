{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

method instantiatePlayback*(self: AudioStream): gdref AudioStreamPlayback {.base.} = (discard)
proc registerVirtual_instantiatePlayback*[T: AudioStream](Self: typedesc[T]) =
  Self.vmethods[stringName"_instantiate_playback"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[AudioStream](p_instance).instantiatePlayback().encode(r_ret)

method getStreamName*(self: AudioStream): String {.base.} = (discard)
proc registerVirtual_getStreamName*[T: AudioStream](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_stream_name"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[AudioStream](p_instance).getStreamName().encode(r_ret)

method getLength*(self: AudioStream): float64 {.base.} = (discard)
proc registerVirtual_getLength*[T: AudioStream](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_length"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[AudioStream](p_instance).getLength().encode(r_ret)

method isMonophonic*(self: AudioStream): bool {.base.} = (discard)
proc registerVirtual_isMonophonic*[T: AudioStream](Self: typedesc[T]) =
  Self.vmethods[stringName"_is_monophonic"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[AudioStream](p_instance).isMonophonic().encode(r_ret)

method getBpm*(self: AudioStream): float64 {.base.} = (discard)
proc registerVirtual_getBpm*[T: AudioStream](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_bpm"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[AudioStream](p_instance).getBpm().encode(r_ret)

method getBeatCount*(self: AudioStream): int32 {.base.} = (discard)
proc registerVirtual_getBeatCount*[T: AudioStream](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_beat_count"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[AudioStream](p_instance).getBeatCount().encode(r_ret)

method getParameterList*(self: AudioStream): TypedArray[Dictionary] {.base.} = (discard)
proc registerVirtual_getParameterList*[T: AudioStream](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_parameter_list"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[AudioStream](p_instance).getParameterList().encode(r_ret)

method hasLoop*(self: AudioStream): bool {.base.} = (discard)
proc registerVirtual_hasLoop*[T: AudioStream](Self: typedesc[T]) =
  Self.vmethods[stringName"_has_loop"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[AudioStream](p_instance).hasLoop().encode(r_ret)

method getBarBeats*(self: AudioStream): int32 {.base.} = (discard)
proc registerVirtual_getBarBeats*[T: AudioStream](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_bar_beats"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[AudioStream](p_instance).getBarBeats().encode(r_ret)

proc getLength*(self: AudioStream): float64 =
  expandMethodBind(className AudioStream, "get_length", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(float64)

proc isMonophonic*(self: AudioStream): bool =
  expandMethodBind(className AudioStream, "is_monophonic", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc instantiatePlayback*(self: AudioStream): gdref AudioStreamPlayback =
  expandMethodBind(className AudioStream, "instantiate_playback", 210135309)
  var ret: encoded gdref AudioStreamPlayback
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref AudioStreamPlayback)

proc canBeSampled*(self: AudioStream): bool =
  expandMethodBind(className AudioStream, "can_be_sampled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc generateSample*(self: AudioStream): gdref AudioSample =
  expandMethodBind(className AudioStream, "generate_sample", 2646048999)
  var ret: encoded gdref AudioSample
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref AudioSample)

proc isMetaStream*(self: AudioStream): bool =
  expandMethodBind(className AudioStream, "is_meta_stream", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc call_parameterListChanged*(self: AudioStream): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("parameter_list_changed")
  self.emitSignal(signalname)