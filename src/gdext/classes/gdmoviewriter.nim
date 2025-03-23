{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

method getAudioMixRate*(self: MovieWriter): uint32 {.base.} = (discard)
proc registerVirtual_getAudioMixRate*[T: MovieWriter](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_audio_mix_rate"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[MovieWriter](p_instance).getAudioMixRate().encode(r_ret)

method getAudioSpeakerMode*(self: MovieWriter): AudioServer_SpeakerMode {.base.} = (discard)
proc registerVirtual_getAudioSpeakerMode*[T: MovieWriter](Self: typedesc[T]) =
  Self.vmethods[stringName"_get_audio_speaker_mode"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[MovieWriter](p_instance).getAudioSpeakerMode().encode(r_ret)

method handlesFile*(self: MovieWriter; path: String): bool {.base.} = (discard)
proc registerVirtual_handlesFile*[T: MovieWriter](Self: typedesc[T]) =
  Self.vmethods[stringName"_handles_file"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[MovieWriter](p_instance).handlesFile(p_args[0].decode(String)).encode(r_ret)

method writeBegin*(self: MovieWriter; movieSize: Vector2i; fps: uint32; basePath: String): Error {.base.} = (discard)
proc registerVirtual_writeBegin*[T: MovieWriter](Self: typedesc[T]) =
  Self.vmethods[stringName"_write_begin"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[MovieWriter](p_instance).writeBegin(p_args[0].decode(Vector2i), p_args[1].decode(uint32), p_args[2].decode(String)).encode(r_ret)

method writeFrame*(self: MovieWriter; frameImage: gdref Image; audioFrameBlock: pointer): Error {.base.} = (discard)
proc registerVirtual_writeFrame*[T: MovieWriter](Self: typedesc[T]) =
  Self.vmethods[stringName"_write_frame"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[MovieWriter](p_instance).writeFrame(p_args[0].decode(gdref Image), p_args[1].decode(pointer)).encode(r_ret)

method writeEnd*(self: MovieWriter): void {.base.} = (discard)
proc registerVirtual_writeEnd*[T: MovieWriter](Self: typedesc[T]) =
  Self.vmethods[stringName"_write_end"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[MovieWriter](p_instance).writeEnd()

proc addWriter*(_: typedesc[MovieWriter]; writer: MovieWriter): void =
  expandMethodBind(className MovieWriter, "add_writer", 4023702871)
  methodbind.ptrcall([getPtr writer])