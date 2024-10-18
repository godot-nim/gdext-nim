{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode; export gdnode

proc setStream*(self: AudioStreamPlayer; stream: gdref AudioStream): void =
  expandMethodBind(className AudioStreamPlayer, "set_stream", 2210767741)
  var `?param` = [getPtr stream]
  methodbind.ptrcall(self, addr `?param`[0])

proc getStream*(self: AudioStreamPlayer): gdref AudioStream =
  expandMethodBind(className AudioStreamPlayer, "get_stream", 160907539)
  var ret: encoded gdref AudioStream
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref AudioStream)

proc setVolumeDb*(self: AudioStreamPlayer; volumeDb: Float): void =
  expandMethodBind(className AudioStreamPlayer, "set_volume_db", 373806689)
  var `?param` = [getPtr volumeDb]
  methodbind.ptrcall(self, addr `?param`[0])

proc getVolumeDb*(self: AudioStreamPlayer): Float =
  expandMethodBind(className AudioStreamPlayer, "get_volume_db", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setPitchScale*(self: AudioStreamPlayer; pitchScale: Float): void =
  expandMethodBind(className AudioStreamPlayer, "set_pitch_scale", 373806689)
  var `?param` = [getPtr pitchScale]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPitchScale*(self: AudioStreamPlayer): Float =
  expandMethodBind(className AudioStreamPlayer, "get_pitch_scale", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc play*(self: AudioStreamPlayer; fromPosition: Float = 0.0): void =
  expandMethodBind(className AudioStreamPlayer, "play", 1958160172)
  var `?param` = [getPtr fromPosition]
  methodbind.ptrcall(self, addr `?param`[0])

proc seek*(self: AudioStreamPlayer; toPosition: Float): void =
  expandMethodBind(className AudioStreamPlayer, "seek", 373806689)
  var `?param` = [getPtr toPosition]
  methodbind.ptrcall(self, addr `?param`[0])

proc stop*(self: AudioStreamPlayer): void =
  expandMethodBind(className AudioStreamPlayer, "stop", 3218959716)
  methodbind.ptrcall(self, nil)

proc isPlaying*(self: AudioStreamPlayer): bool =
  expandMethodBind(className AudioStreamPlayer, "is_playing", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getPlaybackPosition*(self: AudioStreamPlayer): Float =
  expandMethodBind(className AudioStreamPlayer, "get_playback_position", 191475506)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setBus*(self: AudioStreamPlayer; bus: StringName): void =
  expandMethodBind(className AudioStreamPlayer, "set_bus", 3304788590)
  var `?param` = [getPtr bus]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBus*(self: AudioStreamPlayer): StringName =
  expandMethodBind(className AudioStreamPlayer, "get_bus", 2002593661)
  var ret: encoded StringName
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(StringName)

proc setAutoplay*(self: AudioStreamPlayer; enable: bool): void =
  expandMethodBind(className AudioStreamPlayer, "set_autoplay", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isAutoplayEnabled*(self: AudioStreamPlayer): bool =
  expandMethodBind(className AudioStreamPlayer, "is_autoplay_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setMixTarget*(self: AudioStreamPlayer; mixTarget: AudioStreamPlayer_MixTarget): void =
  expandMethodBind(className AudioStreamPlayer, "set_mix_target", 2300306138)
  var `?param` = [getPtr mixTarget]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMixTarget*(self: AudioStreamPlayer): AudioStreamPlayer_MixTarget =
  expandMethodBind(className AudioStreamPlayer, "get_mix_target", 172807476)
  var ret: encoded AudioStreamPlayer_MixTarget
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(AudioStreamPlayer_MixTarget)

proc setStreamPaused*(self: AudioStreamPlayer; pause: bool): void =
  expandMethodBind(className AudioStreamPlayer, "set_stream_paused", 2586408642)
  var `?param` = [getPtr pause]
  methodbind.ptrcall(self, addr `?param`[0])

proc getStreamPaused*(self: AudioStreamPlayer): bool =
  expandMethodBind(className AudioStreamPlayer, "get_stream_paused", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setMaxPolyphony*(self: AudioStreamPlayer; maxPolyphony: int32): void =
  expandMethodBind(className AudioStreamPlayer, "set_max_polyphony", 1286410249)
  var `?param` = [getPtr maxPolyphony]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMaxPolyphony*(self: AudioStreamPlayer): int32 =
  expandMethodBind(className AudioStreamPlayer, "get_max_polyphony", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc hasStreamPlayback*(self: AudioStreamPlayer): bool =
  expandMethodBind(className AudioStreamPlayer, "has_stream_playback", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getStreamPlayback*(self: AudioStreamPlayer): gdref AudioStreamPlayback =
  expandMethodBind(className AudioStreamPlayer, "get_stream_playback", 210135309)
  var ret: encoded gdref AudioStreamPlayback
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref AudioStreamPlayback)

proc setPlaybackType*(self: AudioStreamPlayer; playbackType: AudioServer_PlaybackType): void =
  expandMethodBind(className AudioStreamPlayer, "set_playback_type", 725473817)
  var `?param` = [getPtr playbackType]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPlaybackType*(self: AudioStreamPlayer): AudioServer_PlaybackType =
  expandMethodBind(className AudioStreamPlayer, "get_playback_type", 4011264623)
  var ret: encoded AudioServer_PlaybackType
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(AudioServer_PlaybackType)

template stream*(self: AudioStreamPlayer): untyped = self.getStream()
template `stream=`*(self: AudioStreamPlayer; value) = self.setStream(value)

template volumeDb*(self: AudioStreamPlayer): untyped = self.getVolumeDb()
template `volumeDb=`*(self: AudioStreamPlayer; value) = self.setVolumeDb(value)

template pitchScale*(self: AudioStreamPlayer): untyped = self.getPitchScale()
template `pitchScale=`*(self: AudioStreamPlayer; value) = self.setPitchScale(value)

template playing*(self: AudioStreamPlayer): untyped = self.isPlaying()
template `playing=`*(self: AudioStreamPlayer; value) = self.setPlaying(value)

template autoplay*(self: AudioStreamPlayer): untyped = self.isAutoplayEnabled()
template `autoplay=`*(self: AudioStreamPlayer; value) = self.setAutoplay(value)

template streamPaused*(self: AudioStreamPlayer): untyped = self.getStreamPaused()
template `streamPaused=`*(self: AudioStreamPlayer; value) = self.setStreamPaused(value)

template mixTarget*(self: AudioStreamPlayer): untyped = self.getMixTarget()
template `mixTarget=`*(self: AudioStreamPlayer; value) = self.setMixTarget(value)

template maxPolyphony*(self: AudioStreamPlayer): untyped = self.getMaxPolyphony()
template `maxPolyphony=`*(self: AudioStreamPlayer; value) = self.setMaxPolyphony(value)

template bus*(self: AudioStreamPlayer): untyped = self.getBus()
template `bus=`*(self: AudioStreamPlayer; value) = self.setBus(value)

template playbackType*(self: AudioStreamPlayer): untyped = self.getPlaybackType()
template `playbackType=`*(self: AudioStreamPlayer; value) = self.setPlaybackType(value)

const AudioStreamPlayer_vmap =
  Node.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioStreamPlayer]): Table[string, string] = AudioStreamPlayer_vmap

proc finished*(self: AudioStreamPlayer): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("finished")
  self.emitSignal(signalname)