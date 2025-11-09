{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode2d; export gdnode2d

expandOnClassImported(AudioStreamPlayer2D, Node2D)

proc setStream*(self: AudioStreamPlayer2D; stream: gdref AudioStream): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer2D, "set_stream", 2210767741)
  methodbind.ptrcall(self, [getPtr stream], void)

proc getStream*(self: AudioStreamPlayer2D): gdref AudioStream =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer2D, "get_stream", 160907539)
  methodbind.ptrcall(self, [], gdref AudioStream)

proc setVolumeDb*(self: AudioStreamPlayer2D; volumeDb: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer2D, "set_volume_db", 373806689)
  methodbind.ptrcall(self, [getPtr volumeDb], void)

proc getVolumeDb*(self: AudioStreamPlayer2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer2D, "get_volume_db", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setVolumeLinear*(self: AudioStreamPlayer2D; volumeLinear: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer2D, "set_volume_linear", 373806689)
  methodbind.ptrcall(self, [getPtr volumeLinear], void)

proc getVolumeLinear*(self: AudioStreamPlayer2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer2D, "get_volume_linear", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setPitchScale*(self: AudioStreamPlayer2D; pitchScale: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer2D, "set_pitch_scale", 373806689)
  methodbind.ptrcall(self, [getPtr pitchScale], void)

proc getPitchScale*(self: AudioStreamPlayer2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer2D, "get_pitch_scale", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc play*(self: AudioStreamPlayer2D; fromPosition: Float = 0.0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer2D, "play", 1958160172)
  methodbind.ptrcall(self, [getPtr fromPosition], void)

proc seek*(self: AudioStreamPlayer2D; toPosition: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer2D, "seek", 373806689)
  methodbind.ptrcall(self, [getPtr toPosition], void)

proc stop*(self: AudioStreamPlayer2D): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer2D, "stop", 3218959716)
  methodbind.ptrcall(self, [], void)

proc isPlaying*(self: AudioStreamPlayer2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer2D, "is_playing", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getPlaybackPosition*(self: AudioStreamPlayer2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer2D, "get_playback_position", 191475506)
  methodbind.ptrcall(self, [], Float)

proc setBus*(self: AudioStreamPlayer2D; bus: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer2D, "set_bus", 3304788590)
  methodbind.ptrcall(self, [getPtr bus], void)

proc getBus*(self: AudioStreamPlayer2D): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer2D, "get_bus", 2002593661)
  methodbind.ptrcall(self, [], StringName)

proc setAutoplay*(self: AudioStreamPlayer2D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer2D, "set_autoplay", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isAutoplayEnabled*(self: AudioStreamPlayer2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer2D, "is_autoplay_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setPlaying*(self: AudioStreamPlayer2D; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer2D, "set_playing", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc setMaxDistance*(self: AudioStreamPlayer2D; pixels: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer2D, "set_max_distance", 373806689)
  methodbind.ptrcall(self, [getPtr pixels], void)

proc getMaxDistance*(self: AudioStreamPlayer2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer2D, "get_max_distance", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setAttenuation*(self: AudioStreamPlayer2D; curve: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer2D, "set_attenuation", 373806689)
  methodbind.ptrcall(self, [getPtr curve], void)

proc getAttenuation*(self: AudioStreamPlayer2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer2D, "get_attenuation", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setAreaMask*(self: AudioStreamPlayer2D; mask: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer2D, "set_area_mask", 1286410249)
  methodbind.ptrcall(self, [getPtr mask], void)

proc getAreaMask*(self: AudioStreamPlayer2D): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer2D, "get_area_mask", 3905245786)
  methodbind.ptrcall(self, [], uint32)

proc setStreamPaused*(self: AudioStreamPlayer2D; pause: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer2D, "set_stream_paused", 2586408642)
  methodbind.ptrcall(self, [getPtr pause], void)

proc getStreamPaused*(self: AudioStreamPlayer2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer2D, "get_stream_paused", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setMaxPolyphony*(self: AudioStreamPlayer2D; maxPolyphony: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer2D, "set_max_polyphony", 1286410249)
  methodbind.ptrcall(self, [getPtr maxPolyphony], void)

proc getMaxPolyphony*(self: AudioStreamPlayer2D): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer2D, "get_max_polyphony", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setPanningStrength*(self: AudioStreamPlayer2D; panningStrength: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer2D, "set_panning_strength", 373806689)
  methodbind.ptrcall(self, [getPtr panningStrength], void)

proc getPanningStrength*(self: AudioStreamPlayer2D): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer2D, "get_panning_strength", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc hasStreamPlayback*(self: AudioStreamPlayer2D): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer2D, "has_stream_playback", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc getStreamPlayback*(self: AudioStreamPlayer2D): gdref AudioStreamPlayback =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer2D, "get_stream_playback", 210135309)
  methodbind.ptrcall(self, [], gdref AudioStreamPlayback)

proc setPlaybackType*(self: AudioStreamPlayer2D; playbackType: AudioServer_PlaybackType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer2D, "set_playback_type", 725473817)
  methodbind.ptrcall(self, [getPtr playbackType], void)

proc getPlaybackType*(self: AudioStreamPlayer2D): AudioServer_PlaybackType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer2D, "get_playback_type", 4011264623)
  methodbind.ptrcall(self, [], AudioServer_PlaybackType)

template stream*(self: AudioStreamPlayer2D): untyped = self.getStream()
template `stream=`*(self: AudioStreamPlayer2D; value) = self.setStream(value)

template volumeDb*(self: AudioStreamPlayer2D): untyped = self.getVolumeDb()
template `volumeDb=`*(self: AudioStreamPlayer2D; value) = self.setVolumeDb(value)

template volumeLinear*(self: AudioStreamPlayer2D): untyped = self.getVolumeLinear()
template `volumeLinear=`*(self: AudioStreamPlayer2D; value) = self.setVolumeLinear(value)

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
