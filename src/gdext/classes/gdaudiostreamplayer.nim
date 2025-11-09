{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdnode; export gdnode

expandOnClassImported(AudioStreamPlayer, Node)

proc setStream*(self: AudioStreamPlayer; stream: gdref AudioStream): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer, "set_stream", 2210767741)
  methodbind.ptrcall(self, [getPtr stream], void)

proc getStream*(self: AudioStreamPlayer): gdref AudioStream =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer, "get_stream", 160907539)
  methodbind.ptrcall(self, [], gdref AudioStream)

proc setVolumeDb*(self: AudioStreamPlayer; volumeDb: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer, "set_volume_db", 373806689)
  methodbind.ptrcall(self, [getPtr volumeDb], void)

proc getVolumeDb*(self: AudioStreamPlayer): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer, "get_volume_db", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setVolumeLinear*(self: AudioStreamPlayer; volumeLinear: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer, "set_volume_linear", 373806689)
  methodbind.ptrcall(self, [getPtr volumeLinear], void)

proc getVolumeLinear*(self: AudioStreamPlayer): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer, "get_volume_linear", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setPitchScale*(self: AudioStreamPlayer; pitchScale: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer, "set_pitch_scale", 373806689)
  methodbind.ptrcall(self, [getPtr pitchScale], void)

proc getPitchScale*(self: AudioStreamPlayer): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer, "get_pitch_scale", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc play*(self: AudioStreamPlayer; fromPosition: Float = 0.0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer, "play", 1958160172)
  methodbind.ptrcall(self, [getPtr fromPosition], void)

proc seek*(self: AudioStreamPlayer; toPosition: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer, "seek", 373806689)
  methodbind.ptrcall(self, [getPtr toPosition], void)

proc stop*(self: AudioStreamPlayer): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer, "stop", 3218959716)
  methodbind.ptrcall(self, [], void)

proc isPlaying*(self: AudioStreamPlayer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer, "is_playing", 36873697)
  methodbind.ptrcall(self, [], bool)

proc getPlaybackPosition*(self: AudioStreamPlayer): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer, "get_playback_position", 191475506)
  methodbind.ptrcall(self, [], Float)

proc setBus*(self: AudioStreamPlayer; bus: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer, "set_bus", 3304788590)
  methodbind.ptrcall(self, [getPtr bus], void)

proc getBus*(self: AudioStreamPlayer): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer, "get_bus", 2002593661)
  methodbind.ptrcall(self, [], StringName)

proc setAutoplay*(self: AudioStreamPlayer; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer, "set_autoplay", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc isAutoplayEnabled*(self: AudioStreamPlayer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer, "is_autoplay_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setMixTarget*(self: AudioStreamPlayer; mixTarget: AudioStreamPlayer_MixTarget): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer, "set_mix_target", 2300306138)
  methodbind.ptrcall(self, [getPtr mixTarget], void)

proc getMixTarget*(self: AudioStreamPlayer): AudioStreamPlayer_MixTarget =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer, "get_mix_target", 172807476)
  methodbind.ptrcall(self, [], AudioStreamPlayer_MixTarget)

proc setPlaying*(self: AudioStreamPlayer; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer, "set_playing", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc setStreamPaused*(self: AudioStreamPlayer; pause: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer, "set_stream_paused", 2586408642)
  methodbind.ptrcall(self, [getPtr pause], void)

proc getStreamPaused*(self: AudioStreamPlayer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer, "get_stream_paused", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setMaxPolyphony*(self: AudioStreamPlayer; maxPolyphony: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer, "set_max_polyphony", 1286410249)
  methodbind.ptrcall(self, [getPtr maxPolyphony], void)

proc getMaxPolyphony*(self: AudioStreamPlayer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer, "get_max_polyphony", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc hasStreamPlayback*(self: AudioStreamPlayer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer, "has_stream_playback", 2240911060)
  methodbind.ptrcall(self, [], bool)

proc getStreamPlayback*(self: AudioStreamPlayer): gdref AudioStreamPlayback =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer, "get_stream_playback", 210135309)
  methodbind.ptrcall(self, [], gdref AudioStreamPlayback)

proc setPlaybackType*(self: AudioStreamPlayer; playbackType: AudioServer_PlaybackType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer, "set_playback_type", 725473817)
  methodbind.ptrcall(self, [getPtr playbackType], void)

proc getPlaybackType*(self: AudioStreamPlayer): AudioServer_PlaybackType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamPlayer, "get_playback_type", 4011264623)
  methodbind.ptrcall(self, [], AudioServer_PlaybackType)

template stream*(self: AudioStreamPlayer): untyped = self.getStream()
template `stream=`*(self: AudioStreamPlayer; value) = self.setStream(value)

template volumeDb*(self: AudioStreamPlayer): untyped = self.getVolumeDb()
template `volumeDb=`*(self: AudioStreamPlayer; value) = self.setVolumeDb(value)

template volumeLinear*(self: AudioStreamPlayer): untyped = self.getVolumeLinear()
template `volumeLinear=`*(self: AudioStreamPlayer; value) = self.setVolumeLinear(value)

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
