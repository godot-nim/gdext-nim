{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontrol; export gdcontrol

expandOnClassImported(VideoStreamPlayer, Control)

proc setStream*(self: VideoStreamPlayer; stream: gdref VideoStream): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VideoStreamPlayer, "set_stream", 2317102564)
  methodbind.ptrcall(self, [getPtr stream], void)

proc getStream*(self: VideoStreamPlayer): gdref VideoStream =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VideoStreamPlayer, "get_stream", 438621487)
  methodbind.ptrcall(self, [], gdref VideoStream)

proc play*(self: VideoStreamPlayer): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VideoStreamPlayer, "play", 3218959716)
  methodbind.ptrcall(self, [], void)

proc stop*(self: VideoStreamPlayer): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VideoStreamPlayer, "stop", 3218959716)
  methodbind.ptrcall(self, [], void)

proc isPlaying*(self: VideoStreamPlayer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VideoStreamPlayer, "is_playing", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setPaused*(self: VideoStreamPlayer; paused: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VideoStreamPlayer, "set_paused", 2586408642)
  methodbind.ptrcall(self, [getPtr paused], void)

proc isPaused*(self: VideoStreamPlayer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VideoStreamPlayer, "is_paused", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setLoop*(self: VideoStreamPlayer; loop: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VideoStreamPlayer, "set_loop", 2586408642)
  methodbind.ptrcall(self, [getPtr loop], void)

proc hasLoop*(self: VideoStreamPlayer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VideoStreamPlayer, "has_loop", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setVolume*(self: VideoStreamPlayer; volume: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VideoStreamPlayer, "set_volume", 373806689)
  methodbind.ptrcall(self, [getPtr volume], void)

proc getVolume*(self: VideoStreamPlayer): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VideoStreamPlayer, "get_volume", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setVolumeDb*(self: VideoStreamPlayer; db: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VideoStreamPlayer, "set_volume_db", 373806689)
  methodbind.ptrcall(self, [getPtr db], void)

proc getVolumeDb*(self: VideoStreamPlayer): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VideoStreamPlayer, "get_volume_db", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setSpeedScale*(self: VideoStreamPlayer; speedScale: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VideoStreamPlayer, "set_speed_scale", 373806689)
  methodbind.ptrcall(self, [getPtr speedScale], void)

proc getSpeedScale*(self: VideoStreamPlayer): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VideoStreamPlayer, "get_speed_scale", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setAudioTrack*(self: VideoStreamPlayer; track: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VideoStreamPlayer, "set_audio_track", 1286410249)
  methodbind.ptrcall(self, [getPtr track], void)

proc getAudioTrack*(self: VideoStreamPlayer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VideoStreamPlayer, "get_audio_track", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc getStreamName*(self: VideoStreamPlayer): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VideoStreamPlayer, "get_stream_name", 201670096)
  methodbind.ptrcall(self, [], String)

proc getStreamLength*(self: VideoStreamPlayer): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VideoStreamPlayer, "get_stream_length", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc setStreamPosition*(self: VideoStreamPlayer; position: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VideoStreamPlayer, "set_stream_position", 373806689)
  methodbind.ptrcall(self, [getPtr position], void)

proc getStreamPosition*(self: VideoStreamPlayer): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VideoStreamPlayer, "get_stream_position", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc setAutoplay*(self: VideoStreamPlayer; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VideoStreamPlayer, "set_autoplay", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc hasAutoplay*(self: VideoStreamPlayer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VideoStreamPlayer, "has_autoplay", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setExpand*(self: VideoStreamPlayer; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VideoStreamPlayer, "set_expand", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc hasExpand*(self: VideoStreamPlayer): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VideoStreamPlayer, "has_expand", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setBufferingMsec*(self: VideoStreamPlayer; msec: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VideoStreamPlayer, "set_buffering_msec", 1286410249)
  methodbind.ptrcall(self, [getPtr msec], void)

proc getBufferingMsec*(self: VideoStreamPlayer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VideoStreamPlayer, "get_buffering_msec", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setBus*(self: VideoStreamPlayer; bus: StringName): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VideoStreamPlayer, "set_bus", 3304788590)
  methodbind.ptrcall(self, [getPtr bus], void)

proc getBus*(self: VideoStreamPlayer): StringName =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VideoStreamPlayer, "get_bus", 2002593661)
  methodbind.ptrcall(self, [], StringName)

proc getVideoTexture*(self: VideoStreamPlayer): gdref Texture2D =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VideoStreamPlayer, "get_video_texture", 3635182373)
  methodbind.ptrcall(self, [], gdref Texture2D)

template audioTrack*(self: VideoStreamPlayer): untyped = self.getAudioTrack()
template `audioTrack=`*(self: VideoStreamPlayer; value) = self.setAudioTrack(value)

template stream*(self: VideoStreamPlayer): untyped = self.getStream()
template `stream=`*(self: VideoStreamPlayer; value) = self.setStream(value)

template volumeDb*(self: VideoStreamPlayer): untyped = self.getVolumeDb()
template `volumeDb=`*(self: VideoStreamPlayer; value) = self.setVolumeDb(value)

template volume*(self: VideoStreamPlayer): untyped = self.getVolume()
template `volume=`*(self: VideoStreamPlayer; value) = self.setVolume(value)

template speedScale*(self: VideoStreamPlayer): untyped = self.getSpeedScale()
template `speedScale=`*(self: VideoStreamPlayer; value) = self.setSpeedScale(value)

template autoplay*(self: VideoStreamPlayer): untyped = self.hasAutoplay()
template `autoplay=`*(self: VideoStreamPlayer; value) = self.setAutoplay(value)

template paused*(self: VideoStreamPlayer): untyped = self.isPaused()
template `paused=`*(self: VideoStreamPlayer; value) = self.setPaused(value)

template expand*(self: VideoStreamPlayer): untyped = self.hasExpand()
template `expand=`*(self: VideoStreamPlayer; value) = self.setExpand(value)

template loop*(self: VideoStreamPlayer): untyped = self.hasLoop()
template `loop=`*(self: VideoStreamPlayer; value) = self.setLoop(value)

template bufferingMsec*(self: VideoStreamPlayer): untyped = self.getBufferingMsec()
template `bufferingMsec=`*(self: VideoStreamPlayer; value) = self.setBufferingMsec(value)

template streamPosition*(self: VideoStreamPlayer): untyped = self.getStreamPosition()
template `streamPosition=`*(self: VideoStreamPlayer; value) = self.setStreamPosition(value)

template bus*(self: VideoStreamPlayer): untyped = self.getBus()
template `bus=`*(self: VideoStreamPlayer; value) = self.setBus(value)
