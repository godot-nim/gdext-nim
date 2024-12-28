{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudiostream; export gdaudiostream

proc addStream*(self: AudioStreamRandomizer; index: int32; stream: gdref AudioStream; weight: Float = 1.0): void =
  expandMethodBind(className AudioStreamRandomizer, "add_stream", 1892018854)
  methodbind.ptrcall(self, [getPtr index, getPtr stream, getPtr weight])

proc moveStream*(self: AudioStreamRandomizer; indexFrom: int32; indexTo: int32): void =
  expandMethodBind(className AudioStreamRandomizer, "move_stream", 3937882851)
  methodbind.ptrcall(self, [getPtr indexFrom, getPtr indexTo])

proc removeStream*(self: AudioStreamRandomizer; index: int32): void =
  expandMethodBind(className AudioStreamRandomizer, "remove_stream", 1286410249)
  methodbind.ptrcall(self, [getPtr index])

proc setStream*(self: AudioStreamRandomizer; index: int32; stream: gdref AudioStream): void =
  expandMethodBind(className AudioStreamRandomizer, "set_stream", 111075094)
  methodbind.ptrcall(self, [getPtr index, getPtr stream])

proc getStream*(self: AudioStreamRandomizer; index: int32): gdref AudioStream =
  expandMethodBind(className AudioStreamRandomizer, "get_stream", 2739380747)
  var ret: encoded gdref AudioStream
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(gdref AudioStream)

proc setStreamProbabilityWeight*(self: AudioStreamRandomizer; index: int32; weight: Float): void =
  expandMethodBind(className AudioStreamRandomizer, "set_stream_probability_weight", 1602489585)
  methodbind.ptrcall(self, [getPtr index, getPtr weight])

proc getStreamProbabilityWeight*(self: AudioStreamRandomizer; index: int32): Float =
  expandMethodBind(className AudioStreamRandomizer, "get_stream_probability_weight", 2339986948)
  var ret: encoded Float
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(Float)

proc setStreamsCount*(self: AudioStreamRandomizer; count: int32): void =
  expandMethodBind(className AudioStreamRandomizer, "set_streams_count", 1286410249)
  methodbind.ptrcall(self, [getPtr count])

proc getStreamsCount*(self: AudioStreamRandomizer): int32 =
  expandMethodBind(className AudioStreamRandomizer, "get_streams_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setRandomPitch*(self: AudioStreamRandomizer; scale: Float): void =
  expandMethodBind(className AudioStreamRandomizer, "set_random_pitch", 373806689)
  methodbind.ptrcall(self, [getPtr scale])

proc getRandomPitch*(self: AudioStreamRandomizer): Float =
  expandMethodBind(className AudioStreamRandomizer, "get_random_pitch", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setRandomVolumeOffsetDb*(self: AudioStreamRandomizer; dbOffset: Float): void =
  expandMethodBind(className AudioStreamRandomizer, "set_random_volume_offset_db", 373806689)
  methodbind.ptrcall(self, [getPtr dbOffset])

proc getRandomVolumeOffsetDb*(self: AudioStreamRandomizer): Float =
  expandMethodBind(className AudioStreamRandomizer, "get_random_volume_offset_db", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setPlaybackMode*(self: AudioStreamRandomizer; mode: AudioStreamRandomizer_PlaybackMode): void =
  expandMethodBind(className AudioStreamRandomizer, "set_playback_mode", 3950967023)
  methodbind.ptrcall(self, [getPtr mode])

proc getPlaybackMode*(self: AudioStreamRandomizer): AudioStreamRandomizer_PlaybackMode =
  expandMethodBind(className AudioStreamRandomizer, "get_playback_mode", 3943055077)
  var ret: encoded AudioStreamRandomizer_PlaybackMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(AudioStreamRandomizer_PlaybackMode)

template playbackMode*(self: AudioStreamRandomizer): untyped = self.getPlaybackMode()
template `playbackMode=`*(self: AudioStreamRandomizer; value) = self.setPlaybackMode(value)

template randomPitch*(self: AudioStreamRandomizer): untyped = self.getRandomPitch()
template `randomPitch=`*(self: AudioStreamRandomizer; value) = self.setRandomPitch(value)

template randomVolumeOffsetDb*(self: AudioStreamRandomizer): untyped = self.getRandomVolumeOffsetDb()
template `randomVolumeOffsetDb=`*(self: AudioStreamRandomizer; value) = self.setRandomVolumeOffsetDb(value)

template streamsCount*(self: AudioStreamRandomizer): untyped = self.getStreamsCount()
template `streamsCount=`*(self: AudioStreamRandomizer; value) = self.setStreamsCount(value)

const AudioStreamRandomizer_vmap =
  AudioStream.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioStreamRandomizer]): Table[string, string] = AudioStreamRandomizer_vmap