{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcontrol; export gdcontrol

proc setStream*(self: VideoStreamPlayer; stream: gdref VideoStream): void =
  expandMethodBind(className VideoStreamPlayer, "set_stream", 2317102564)
  methodbind.ptrcall(self, [getPtr stream])

proc getStream*(self: VideoStreamPlayer): gdref VideoStream =
  expandMethodBind(className VideoStreamPlayer, "get_stream", 438621487)
  var ret: encoded gdref VideoStream
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref VideoStream)

proc play*(self: VideoStreamPlayer): void =
  expandMethodBind(className VideoStreamPlayer, "play", 3218959716)
  methodbind.ptrcall(self, [])

proc stop*(self: VideoStreamPlayer): void =
  expandMethodBind(className VideoStreamPlayer, "stop", 3218959716)
  methodbind.ptrcall(self, [])

proc isPlaying*(self: VideoStreamPlayer): bool =
  expandMethodBind(className VideoStreamPlayer, "is_playing", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setPaused*(self: VideoStreamPlayer; paused: bool): void =
  expandMethodBind(className VideoStreamPlayer, "set_paused", 2586408642)
  methodbind.ptrcall(self, [getPtr paused])

proc isPaused*(self: VideoStreamPlayer): bool =
  expandMethodBind(className VideoStreamPlayer, "is_paused", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setLoop*(self: VideoStreamPlayer; loop: bool): void =
  expandMethodBind(className VideoStreamPlayer, "set_loop", 2586408642)
  methodbind.ptrcall(self, [getPtr loop])

proc hasLoop*(self: VideoStreamPlayer): bool =
  expandMethodBind(className VideoStreamPlayer, "has_loop", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setVolume*(self: VideoStreamPlayer; volume: Float): void =
  expandMethodBind(className VideoStreamPlayer, "set_volume", 373806689)
  methodbind.ptrcall(self, [getPtr volume])

proc getVolume*(self: VideoStreamPlayer): Float =
  expandMethodBind(className VideoStreamPlayer, "get_volume", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setVolumeDb*(self: VideoStreamPlayer; db: Float): void =
  expandMethodBind(className VideoStreamPlayer, "set_volume_db", 373806689)
  methodbind.ptrcall(self, [getPtr db])

proc getVolumeDb*(self: VideoStreamPlayer): Float =
  expandMethodBind(className VideoStreamPlayer, "get_volume_db", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setAudioTrack*(self: VideoStreamPlayer; track: int32): void =
  expandMethodBind(className VideoStreamPlayer, "set_audio_track", 1286410249)
  methodbind.ptrcall(self, [getPtr track])

proc getAudioTrack*(self: VideoStreamPlayer): int32 =
  expandMethodBind(className VideoStreamPlayer, "get_audio_track", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc getStreamName*(self: VideoStreamPlayer): String =
  expandMethodBind(className VideoStreamPlayer, "get_stream_name", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc getStreamLength*(self: VideoStreamPlayer): float64 =
  expandMethodBind(className VideoStreamPlayer, "get_stream_length", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(float64)

proc setStreamPosition*(self: VideoStreamPlayer; position: float64): void =
  expandMethodBind(className VideoStreamPlayer, "set_stream_position", 373806689)
  methodbind.ptrcall(self, [getPtr position])

proc getStreamPosition*(self: VideoStreamPlayer): float64 =
  expandMethodBind(className VideoStreamPlayer, "get_stream_position", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(float64)

proc setAutoplay*(self: VideoStreamPlayer; enabled: bool): void =
  expandMethodBind(className VideoStreamPlayer, "set_autoplay", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc hasAutoplay*(self: VideoStreamPlayer): bool =
  expandMethodBind(className VideoStreamPlayer, "has_autoplay", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setExpand*(self: VideoStreamPlayer; enable: bool): void =
  expandMethodBind(className VideoStreamPlayer, "set_expand", 2586408642)
  methodbind.ptrcall(self, [getPtr enable])

proc hasExpand*(self: VideoStreamPlayer): bool =
  expandMethodBind(className VideoStreamPlayer, "has_expand", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setBufferingMsec*(self: VideoStreamPlayer; msec: int32): void =
  expandMethodBind(className VideoStreamPlayer, "set_buffering_msec", 1286410249)
  methodbind.ptrcall(self, [getPtr msec])

proc getBufferingMsec*(self: VideoStreamPlayer): int32 =
  expandMethodBind(className VideoStreamPlayer, "get_buffering_msec", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setBus*(self: VideoStreamPlayer; bus: StringName): void =
  expandMethodBind(className VideoStreamPlayer, "set_bus", 3304788590)
  methodbind.ptrcall(self, [getPtr bus])

proc getBus*(self: VideoStreamPlayer): StringName =
  expandMethodBind(className VideoStreamPlayer, "get_bus", 2002593661)
  var ret: encoded StringName
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(StringName)

proc getVideoTexture*(self: VideoStreamPlayer): gdref Texture2D =
  expandMethodBind(className VideoStreamPlayer, "get_video_texture", 3635182373)
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Texture2D)

template audioTrack*(self: VideoStreamPlayer): untyped = self.getAudioTrack()
template `audioTrack=`*(self: VideoStreamPlayer; value) = self.setAudioTrack(value)

template stream*(self: VideoStreamPlayer): untyped = self.getStream()
template `stream=`*(self: VideoStreamPlayer; value) = self.setStream(value)

template volumeDb*(self: VideoStreamPlayer): untyped = self.getVolumeDb()
template `volumeDb=`*(self: VideoStreamPlayer; value) = self.setVolumeDb(value)

template volume*(self: VideoStreamPlayer): untyped = self.getVolume()
template `volume=`*(self: VideoStreamPlayer; value) = self.setVolume(value)

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

const VideoStreamPlayer_vmap =
  Control.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VideoStreamPlayer]): Table[string, string] = VideoStreamPlayer_vmap

proc finished*(self: VideoStreamPlayer): Error =
  var signalname {.global.} : Variant
  once:
    signalname = variant stringname("finished")
  self.emitSignal(signalname)