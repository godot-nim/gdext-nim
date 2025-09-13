{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(VideoStreamPlayback, Resource)

method stop*(self: VideoStreamPlayback): void {.base.} = (discard)
proc registerVirtual_stop*[T: VideoStreamPlayback](Self: typedesc[T]) =
  Self.vmethods[newStringName"_stop"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[VideoStreamPlayback](p_instance).stop()

method play*(self: VideoStreamPlayback): void {.base.} = (discard)
proc registerVirtual_play*[T: VideoStreamPlayback](Self: typedesc[T]) =
  Self.vmethods[newStringName"_play"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[VideoStreamPlayback](p_instance).play()

method isPlaying*(self: VideoStreamPlayback): bool {.base.} = (discard)
proc registerVirtual_isPlaying*[T: VideoStreamPlayback](Self: typedesc[T]) =
  Self.vmethods[newStringName"_is_playing"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[VideoStreamPlayback](p_instance).isPlaying().encode(r_ret)

method setPaused*(self: VideoStreamPlayback; paused: bool): void {.base.} = (discard)
proc registerVirtual_setPaused*[T: VideoStreamPlayback](Self: typedesc[T]) =
  Self.vmethods[newStringName"_set_paused"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[VideoStreamPlayback](p_instance).setPaused(p_args[0].decode(bool))

method isPaused*(self: VideoStreamPlayback): bool {.base.} = (discard)
proc registerVirtual_isPaused*[T: VideoStreamPlayback](Self: typedesc[T]) =
  Self.vmethods[newStringName"_is_paused"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[VideoStreamPlayback](p_instance).isPaused().encode(r_ret)

method getLength*(self: VideoStreamPlayback): float64 {.base.} = (discard)
proc registerVirtual_getLength*[T: VideoStreamPlayback](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_length"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[VideoStreamPlayback](p_instance).getLength().encode(r_ret)

method getPlaybackPosition*(self: VideoStreamPlayback): float64 {.base.} = (discard)
proc registerVirtual_getPlaybackPosition*[T: VideoStreamPlayback](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_playback_position"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[VideoStreamPlayback](p_instance).getPlaybackPosition().encode(r_ret)

method seek*(self: VideoStreamPlayback; time: float64): void {.base.} = (discard)
proc registerVirtual_seek*[T: VideoStreamPlayback](Self: typedesc[T]) =
  Self.vmethods[newStringName"_seek"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[VideoStreamPlayback](p_instance).seek(p_args[0].decode(float64))

method setAudioTrack*(self: VideoStreamPlayback; idx: int32): void {.base.} = (discard)
proc registerVirtual_setAudioTrack*[T: VideoStreamPlayback](Self: typedesc[T]) =
  Self.vmethods[newStringName"_set_audio_track"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[VideoStreamPlayback](p_instance).setAudioTrack(p_args[0].decode(int32))

method getTexture*(self: VideoStreamPlayback): gdref Texture2D {.base.} = (discard)
proc registerVirtual_getTexture*[T: VideoStreamPlayback](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_texture"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[VideoStreamPlayback](p_instance).getTexture().encode(r_ret)

method update*(self: VideoStreamPlayback; delta: float64): void {.base.} = (discard)
proc registerVirtual_update*[T: VideoStreamPlayback](Self: typedesc[T]) =
  Self.vmethods[newStringName"_update"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[VideoStreamPlayback](p_instance).update(p_args[0].decode(float64))

method getChannels*(self: VideoStreamPlayback): int32 {.base.} = (discard)
proc registerVirtual_getChannels*[T: VideoStreamPlayback](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_channels"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[VideoStreamPlayback](p_instance).getChannels().encode(r_ret)

method getMixRate*(self: VideoStreamPlayback): int32 {.base.} = (discard)
proc registerVirtual_getMixRate*[T: VideoStreamPlayback](Self: typedesc[T]) =
  Self.vmethods[newStringName"_get_mix_rate"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[VideoStreamPlayback](p_instance).getMixRate().encode(r_ret)

proc mixAudio*(self: VideoStreamPlayback; numFrames: int32; buffer: PackedFloat32Array = PackedFloat32Array(); offset: int32 = 0): int32 =
  expandMethodBind(className VideoStreamPlayback, "mix_audio", 93876830)
  var ret: encoded int32
  methodbind.ptrcall(self, [getPtr numFrames, getPtr buffer, getPtr offset], addr ret)
  (addr ret).decode_result(int32)
