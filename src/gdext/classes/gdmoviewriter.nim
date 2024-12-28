{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

method getAudioMixRate*(self: MovieWriter): uint32 {.base.} = (discard)
proc getAudioMixRate(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[MovieWriter](p_instance).getAudioMixRate().encode(r_ret)
template getAudioMixRate_bind*(_: typedesc[MovieWriter]): ClassCallVirtual = getAudioMixRate

method getAudioSpeakerMode*(self: MovieWriter): AudioServer_SpeakerMode {.base.} = (discard)
proc getAudioSpeakerMode(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[MovieWriter](p_instance).getAudioSpeakerMode().encode(r_ret)
template getAudioSpeakerMode_bind*(_: typedesc[MovieWriter]): ClassCallVirtual = getAudioSpeakerMode

method handlesFile*(self: MovieWriter; path: String): bool {.base.} = (discard)
proc handlesFile(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[MovieWriter](p_instance).handlesFile(p_args[0].decode(String)).encode(r_ret)
template handlesFile_bind*(_: typedesc[MovieWriter]): ClassCallVirtual = handlesFile

method writeBegin*(self: MovieWriter; movieSize: Vector2i; fps: uint32; basePath: String): Error {.base.} = (discard)
proc writeBegin(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[MovieWriter](p_instance).writeBegin(p_args[0].decode(Vector2i), p_args[1].decode(uint32), p_args[2].decode(String)).encode(r_ret)
template writeBegin_bind*(_: typedesc[MovieWriter]): ClassCallVirtual = writeBegin

method writeFrame*(self: MovieWriter; frameImage: gdref Image; audioFrameBlock: pointer): Error {.base.} = (discard)
proc writeFrame(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[MovieWriter](p_instance).writeFrame(p_args[0].decode(gdref Image), p_args[1].decode(pointer)).encode(r_ret)
template writeFrame_bind*(_: typedesc[MovieWriter]): ClassCallVirtual = writeFrame

method writeEnd*(self: MovieWriter): void {.base.} = (discard)
proc writeEnd(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[MovieWriter](p_instance).writeEnd()
template writeEnd_bind*(_: typedesc[MovieWriter]): ClassCallVirtual = writeEnd

proc addWriter*(_: typedesc[MovieWriter]; writer: MovieWriter): void =
  expandMethodBind(className MovieWriter, "add_writer", 4023702871)
  methodbind.ptrcall([getPtr writer])

const MovieWriter_vmap =
  Object.vmap.concat toTable {
    "getaudiomixrate" : "_get_audio_mix_rate",
    "getaudiospeakermode" : "_get_audio_speaker_mode",
    "handlesfile" : "_handles_file",
    "writebegin" : "_write_begin",
    "writeframe" : "_write_frame",
    "writeend" : "_write_end",
    }
template vmap*(_: typedesc[MovieWriter]): Table[string, string] = MovieWriter_vmap