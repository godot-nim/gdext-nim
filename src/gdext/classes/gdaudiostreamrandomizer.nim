{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudiostream; export gdaudiostream

expandOnClassImported(AudioStreamRandomizer, AudioStream)

proc addStream*(self: AudioStreamRandomizer; index: int32; stream: gdref AudioStream; weight: Float = 1.0): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamRandomizer, "add_stream", 1892018854)
  methodbind.ptrcall(self, [getPtr index, getPtr stream, getPtr weight], void)

proc moveStream*(self: AudioStreamRandomizer; indexFrom: int32; indexTo: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamRandomizer, "move_stream", 3937882851)
  methodbind.ptrcall(self, [getPtr indexFrom, getPtr indexTo], void)

proc removeStream*(self: AudioStreamRandomizer; index: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamRandomizer, "remove_stream", 1286410249)
  methodbind.ptrcall(self, [getPtr index], void)

proc setStream*(self: AudioStreamRandomizer; index: int32; stream: gdref AudioStream): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamRandomizer, "set_stream", 111075094)
  methodbind.ptrcall(self, [getPtr index, getPtr stream], void)

proc getStream*(self: AudioStreamRandomizer; index: int32): gdref AudioStream =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamRandomizer, "get_stream", 2739380747)
  methodbind.ptrcall(self, [getPtr index], gdref AudioStream)

proc setStreamProbabilityWeight*(self: AudioStreamRandomizer; index: int32; weight: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamRandomizer, "set_stream_probability_weight", 1602489585)
  methodbind.ptrcall(self, [getPtr index, getPtr weight], void)

proc getStreamProbabilityWeight*(self: AudioStreamRandomizer; index: int32): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamRandomizer, "get_stream_probability_weight", 2339986948)
  methodbind.ptrcall(self, [getPtr index], Float)

proc setStreamsCount*(self: AudioStreamRandomizer; count: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamRandomizer, "set_streams_count", 1286410249)
  methodbind.ptrcall(self, [getPtr count], void)

proc getStreamsCount*(self: AudioStreamRandomizer): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamRandomizer, "get_streams_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setRandomPitch*(self: AudioStreamRandomizer; scale: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamRandomizer, "set_random_pitch", 373806689)
  methodbind.ptrcall(self, [getPtr scale], void)

proc getRandomPitch*(self: AudioStreamRandomizer): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamRandomizer, "get_random_pitch", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setRandomVolumeOffsetDb*(self: AudioStreamRandomizer; dbOffset: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamRandomizer, "set_random_volume_offset_db", 373806689)
  methodbind.ptrcall(self, [getPtr dbOffset], void)

proc getRandomVolumeOffsetDb*(self: AudioStreamRandomizer): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamRandomizer, "get_random_volume_offset_db", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setPlaybackMode*(self: AudioStreamRandomizer; mode: AudioStreamRandomizer_PlaybackMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamRandomizer, "set_playback_mode", 3950967023)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getPlaybackMode*(self: AudioStreamRandomizer): AudioStreamRandomizer_PlaybackMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamRandomizer, "get_playback_mode", 3943055077)
  methodbind.ptrcall(self, [], AudioStreamRandomizer_PlaybackMode)

template playbackMode*(self: AudioStreamRandomizer): untyped = self.getPlaybackMode()
template `playbackMode=`*(self: AudioStreamRandomizer; value) = self.setPlaybackMode(value)

template randomPitch*(self: AudioStreamRandomizer): untyped = self.getRandomPitch()
template `randomPitch=`*(self: AudioStreamRandomizer; value) = self.setRandomPitch(value)

template randomVolumeOffsetDb*(self: AudioStreamRandomizer): untyped = self.getRandomVolumeOffsetDb()
template `randomVolumeOffsetDb=`*(self: AudioStreamRandomizer; value) = self.setRandomVolumeOffsetDb(value)

template streamsCount*(self: AudioStreamRandomizer): untyped = self.getStreamsCount()
template `streamsCount=`*(self: AudioStreamRandomizer; value) = self.setStreamsCount(value)
