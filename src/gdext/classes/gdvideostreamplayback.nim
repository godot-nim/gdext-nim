{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

method stop*(self: VideoStreamPlayback): void {.base.} = (discard)
proc stop(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[VideoStreamPlayback](p_instance).stop()
template stop_bind*(_: typedesc[VideoStreamPlayback]): ClassCallVirtual = stop

method play*(self: VideoStreamPlayback): void {.base.} = (discard)
proc play(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[VideoStreamPlayback](p_instance).play()
template play_bind*(_: typedesc[VideoStreamPlayback]): ClassCallVirtual = play

method isPlaying*(self: VideoStreamPlayback): bool {.base.} = (discard)
proc isPlaying(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[VideoStreamPlayback](p_instance).isPlaying().encode(r_ret)
template isPlaying_bind*(_: typedesc[VideoStreamPlayback]): ClassCallVirtual = isPlaying

method setPaused*(self: VideoStreamPlayback; paused: bool): void {.base.} = (discard)
proc setPaused(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[VideoStreamPlayback](p_instance).setPaused(p_args[0].decode(bool))
template setPaused_bind*(_: typedesc[VideoStreamPlayback]): ClassCallVirtual = setPaused

method isPaused*(self: VideoStreamPlayback): bool {.base.} = (discard)
proc isPaused(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[VideoStreamPlayback](p_instance).isPaused().encode(r_ret)
template isPaused_bind*(_: typedesc[VideoStreamPlayback]): ClassCallVirtual = isPaused

method getLength*(self: VideoStreamPlayback): float64 {.base.} = (discard)
proc getLength(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[VideoStreamPlayback](p_instance).getLength().encode(r_ret)
template getLength_bind*(_: typedesc[VideoStreamPlayback]): ClassCallVirtual = getLength

method getPlaybackPosition*(self: VideoStreamPlayback): float64 {.base.} = (discard)
proc getPlaybackPosition(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[VideoStreamPlayback](p_instance).getPlaybackPosition().encode(r_ret)
template getPlaybackPosition_bind*(_: typedesc[VideoStreamPlayback]): ClassCallVirtual = getPlaybackPosition

method seek*(self: VideoStreamPlayback; time: float64): void {.base.} = (discard)
proc seek(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[VideoStreamPlayback](p_instance).seek(p_args[0].decode(float64))
template seek_bind*(_: typedesc[VideoStreamPlayback]): ClassCallVirtual = seek

method setAudioTrack*(self: VideoStreamPlayback; idx: int32): void {.base.} = (discard)
proc setAudioTrack(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[VideoStreamPlayback](p_instance).setAudioTrack(p_args[0].decode(int32))
template setAudioTrack_bind*(_: typedesc[VideoStreamPlayback]): ClassCallVirtual = setAudioTrack

method getTexture*(self: VideoStreamPlayback): gdref Texture2D {.base.} = (discard)
proc getTexture(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[VideoStreamPlayback](p_instance).getTexture().encode(r_ret)
template getTexture_bind*(_: typedesc[VideoStreamPlayback]): ClassCallVirtual = getTexture

method update*(self: VideoStreamPlayback; delta: float64): void {.base.} = (discard)
proc update(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[VideoStreamPlayback](p_instance).update(p_args[0].decode(float64))
template update_bind*(_: typedesc[VideoStreamPlayback]): ClassCallVirtual = update

method getChannels*(self: VideoStreamPlayback): int32 {.base.} = (discard)
proc getChannels(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[VideoStreamPlayback](p_instance).getChannels().encode(r_ret)
template getChannels_bind*(_: typedesc[VideoStreamPlayback]): ClassCallVirtual = getChannels

method getMixRate*(self: VideoStreamPlayback): int32 {.base.} = (discard)
proc getMixRate(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[VideoStreamPlayback](p_instance).getMixRate().encode(r_ret)
template getMixRate_bind*(_: typedesc[VideoStreamPlayback]): ClassCallVirtual = getMixRate

proc mixAudio*(self: VideoStreamPlayback; numFrames: int32; buffer: PackedFloat32Array = PackedFloat32Array(); offset: int32 = 0): int32 =
  expandMethodBind(className VideoStreamPlayback, "mix_audio", 93876830)
  var `?param` = [getPtr numFrames, getPtr buffer, getPtr offset]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

const VideoStreamPlayback_vmap =
  Resource.vmap.concat toTable {
    "stop" : "_stop",
    "play" : "_play",
    "isplaying" : "_is_playing",
    "setpaused" : "_set_paused",
    "ispaused" : "_is_paused",
    "getlength" : "_get_length",
    "getplaybackposition" : "_get_playback_position",
    "seek" : "_seek",
    "setaudiotrack" : "_set_audio_track",
    "gettexture" : "_get_texture",
    "update" : "_update",
    "getchannels" : "_get_channels",
    "getmixrate" : "_get_mix_rate",
    }
template vmap*(_: typedesc[VideoStreamPlayback]): Table[string, string] = VideoStreamPlayback_vmap