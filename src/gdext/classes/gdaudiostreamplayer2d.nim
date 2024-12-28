{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

proc setStream*(self: AudioStreamPlayer2D; stream: gdref AudioStream): void =
  expandMethodBind(className AudioStreamPlayer2D, "set_stream", 2210767741)
  methodbind.ptrcall(self, [getPtr stream])

proc getStream*(self: AudioStreamPlayer2D): gdref AudioStream =
  expandMethodBind(className AudioStreamPlayer2D, "get_stream", 160907539)
  var ret: encoded gdref AudioStream
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref AudioStream)

proc setVolumeDb*(self: AudioStreamPlayer2D; volumeDb: Float): void =
  expandMethodBind(className AudioStreamPlayer2D, "set_volume_db", 373806689)
  methodbind.ptrcall(self, [getPtr volumeDb])

proc getVolumeDb*(self: AudioStreamPlayer2D): Float =
  expandMethodBind(className AudioStreamPlayer2D, "get_volume_db", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setPitchScale*(self: AudioStreamPlayer2D; pitchScale: Float): void =
  expandMethodBind(className AudioStreamPlayer2D, "set_pitch_scale", 373806689)
  methodbind.ptrcall(self, [getPtr pitchScale])

proc getPitchScale*(self: AudioStreamPlayer2D): Float =
  expandMethodBind(className AudioStreamPlayer2D, "get_pitch_scale", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc play*(self: AudioStreamPlayer2D; fromPosition: Float = 0.0): void =
  expandMethodBind(className AudioStreamPlayer2D, "play", 1958160172)
  methodbind.ptrcall(self, [getPtr fromPosition])

proc seek*(self: AudioStreamPlayer2D; toPosition: Float): void =
  expandMethodBind(className AudioStreamPlayer2D, "seek", 373806689)
  methodbind.ptrcall(self, [getPtr toPosition])

proc stop*(self: AudioStreamPlayer2D): void =
  expandMethodBind(className AudioStreamPlayer2D, "stop", 3218959716)
  methodbind.ptrcall(self, [])

proc isPlaying*(self: AudioStreamPlayer2D): bool =
  expandMethodBind(className AudioStreamPlayer2D, "is_playing", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getPlaybackPosition*(self: AudioStreamPlayer2D): Float =
  expandMethodBind(className AudioStreamPlayer2D, "get_playback_position", 191475506)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setBus*(self: AudioStreamPlayer2D; bus: StringName): void =
  expandMethodBind(className AudioStreamPlayer2D, "set_bus", 3304788590)
  methodbind.ptrcall(self, [getPtr bus])

proc getBus*(self: AudioStreamPlayer2D): StringName =
  expandMethodBind(className AudioStreamPlayer2D, "get_bus", 2002593661)
  var ret: encoded StringName
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(StringName)

proc setAutoplay*(self: AudioStreamPlayer2D; enable: bool): void =
  expandMethodBind(className AudioStreamPlayer2D, "set_autoplay", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc isAutoplayEnabled*(self: AudioStreamPlayer2D): bool =
  expandMethodBind(className AudioStreamPlayer2D, "is_autoplay_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setMaxDistance*(self: AudioStreamPlayer2D; pixels: Float): void =
  expandMethodBind(className AudioStreamPlayer2D, "set_max_distance", 373806689)
  methodbind.ptrcall(self, [getPtr pixels])

proc getMaxDistance*(self: AudioStreamPlayer2D): Float =
  expandMethodBind(className AudioStreamPlayer2D, "get_max_distance", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setAttenuation*(self: AudioStreamPlayer2D; curve: Float): void =
  expandMethodBind(className AudioStreamPlayer2D, "set_attenuation", 373806689)
  methodbind.ptrcall(self, [getPtr curve])

proc getAttenuation*(self: AudioStreamPlayer2D): Float =
  expandMethodBind(className AudioStreamPlayer2D, "get_attenuation", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setAreaMask*(self: AudioStreamPlayer2D; mask: uint32): void =
  expandMethodBind(className AudioStreamPlayer2D, "set_area_mask", 1286410249)
  methodbind.ptrcall(self, [getPtr mask])

proc getAreaMask*(self: AudioStreamPlayer2D): uint32 =
  expandMethodBind(className AudioStreamPlayer2D, "get_area_mask", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint32)

proc setStreamPaused*(self: AudioStreamPlayer2D; pause: bool): void =
  expandMethodBind(className AudioStreamPlayer2D, "set_stream_paused", 2586408642)
  methodbind.ptrcall(self, [getPtr pause])

proc getStreamPaused*(self: AudioStreamPlayer2D): bool =
  expandMethodBind(className AudioStreamPlayer2D, "get_stream_paused", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setMaxPolyphony*(self: AudioStreamPlayer2D; maxPolyphony: int32): void =
  expandMethodBind(className AudioStreamPlayer2D, "set_max_polyphony", 1286410249)
  methodbind.ptrcall(self, [getPtr maxPolyphony])

proc getMaxPolyphony*(self: AudioStreamPlayer2D): int32 =
  expandMethodBind(className AudioStreamPlayer2D, "get_max_polyphony", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setPanningStrength*(self: AudioStreamPlayer2D; panningStrength: Float): void =
  expandMethodBind(className AudioStreamPlayer2D, "set_panning_strength", 373806689)
  methodbind.ptrcall(self, [getPtr panningStrength])

proc getPanningStrength*(self: AudioStreamPlayer2D): Float =
  expandMethodBind(className AudioStreamPlayer2D, "get_panning_strength", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc hasStreamPlayback*(self: AudioStreamPlayer2D): bool =
  expandMethodBind(className AudioStreamPlayer2D, "has_stream_playback", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc getStreamPlayback*(self: AudioStreamPlayer2D): gdref AudioStreamPlayback =
  expandMethodBind(className AudioStreamPlayer2D, "get_stream_playback", 210135309)
  var ret: encoded gdref AudioStreamPlayback
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref AudioStreamPlayback)

proc setPlaybackType*(self: AudioStreamPlayer2D; playbackType: AudioServer_PlaybackType): void =
  expandMethodBind(className AudioStreamPlayer2D, "set_playback_type", 725473817)
  methodbind.ptrcall(self, [getPtr playbackType])

proc getPlaybackType*(self: AudioStreamPlayer2D): AudioServer_PlaybackType =
  expandMethodBind(className AudioStreamPlayer2D, "get_playback_type", 4011264623)
  var ret: encoded AudioServer_PlaybackType
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(AudioServer_PlaybackType)

template stream*(self: AudioStreamPlayer2D): untyped = self.getStream()
template `stream=`*(self: AudioStreamPlayer2D; value) = self.setStream(value)

template volumeDb*(self: AudioStreamPlayer2D): untyped = self.getVolumeDb()
template `volumeDb=`*(self: AudioStreamPlayer2D; value) = self.setVolumeDb(value)

template pitchScale*(self: AudioStreamPlayer2D): untyped = self.getPitchScale()
template `pitchScale=`*(self: AudioStreamPlayer2D; value) = self.setPitchScale(value)

template playing*(self: AudioStreamPlayer2D): untyped = self.isPlaying()
template `playing=`*(self: AudioStreamPlayer2D; value) = self.setPlaying(value)

template autoplay*(self: AudioStreamPlayer2D): untyped = self.isAutoplayEnabled()
template `autoplay=`*(self: AudioStreamPlayer2D; value) = self.setAutoplay(value)

template streamPaused*(self: AudioStreamPlayer2D): untyped = self.getStreamPaused()
template `streamPaused=`*(self: AudioStreamPlayer2D; value) = self.setStreamPaused(value)

template maxDistance*(self: AudioStreamPlayer2D): untyped = self.getMaxDistance()
template `maxDistance=`*(self: AudioStreamPlayer2D; value) = self.setMaxDistance(value)

template attenuation*(self: AudioStreamPlayer2D): untyped = self.getAttenuation()
template `attenuation=`*(self: AudioStreamPlayer2D; value) = self.setAttenuation(value)

template maxPolyphony*(self: AudioStreamPlayer2D): untyped = self.getMaxPolyphony()
template `maxPolyphony=`*(self: AudioStreamPlayer2D; value) = self.setMaxPolyphony(value)

template panningStrength*(self: AudioStreamPlayer2D): untyped = self.getPanningStrength()
template `panningStrength=`*(self: AudioStreamPlayer2D; value) = self.setPanningStrength(value)

template bus*(self: AudioStreamPlayer2D): untyped = self.getBus()
template `bus=`*(self: AudioStreamPlayer2D; value) = self.setBus(value)

template areaMask*(self: AudioStreamPlayer2D): untyped = self.getAreaMask()
template `areaMask=`*(self: AudioStreamPlayer2D; value) = self.setAreaMask(value)

template playbackType*(self: AudioStreamPlayer2D): untyped = self.getPlaybackType()
template `playbackType=`*(self: AudioStreamPlayer2D; value) = self.setPlaybackType(value)

const AudioStreamPlayer2D_vmap =
  Node2D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioStreamPlayer2D]): Table[string, string] = AudioStreamPlayer2D_vmap

proc finished*(self: AudioStreamPlayer2D): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("finished")
  self.emitSignal(signalname)