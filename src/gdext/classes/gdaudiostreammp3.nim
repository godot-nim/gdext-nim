{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudiostream; export gdaudiostream

proc setData*(self: AudioStreamMP3; data: PackedByteArray): void =
  expandMethodBind(className AudioStreamMP3, "set_data", 2971499966)
  var `?param` = [getPtr data]
  methodbind.ptrcall(self, addr `?param`[0])

proc getData*(self: AudioStreamMP3): PackedByteArray =
  expandMethodBind(className AudioStreamMP3, "get_data", 2362200018)
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedByteArray)

proc setLoop*(self: AudioStreamMP3; enable: bool): void =
  expandMethodBind(className AudioStreamMP3, "set_loop", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc hasLoop*(self: AudioStreamMP3): bool =
  expandMethodBind(className AudioStreamMP3, "has_loop", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setLoopOffset*(self: AudioStreamMP3; seconds: float64): void =
  expandMethodBind(className AudioStreamMP3, "set_loop_offset", 373806689)
  var `?param` = [getPtr seconds]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLoopOffset*(self: AudioStreamMP3): float64 =
  expandMethodBind(className AudioStreamMP3, "get_loop_offset", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc setBpm*(self: AudioStreamMP3; bpm: float64): void =
  expandMethodBind(className AudioStreamMP3, "set_bpm", 373806689)
  var `?param` = [getPtr bpm]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBpm*(self: AudioStreamMP3): float64 =
  expandMethodBind(className AudioStreamMP3, "get_bpm", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc setBeatCount*(self: AudioStreamMP3; count: int32): void =
  expandMethodBind(className AudioStreamMP3, "set_beat_count", 1286410249)
  var `?param` = [getPtr count]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBeatCount*(self: AudioStreamMP3): int32 =
  expandMethodBind(className AudioStreamMP3, "get_beat_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setBarBeats*(self: AudioStreamMP3; count: int32): void =
  expandMethodBind(className AudioStreamMP3, "set_bar_beats", 1286410249)
  var `?param` = [getPtr count]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBarBeats*(self: AudioStreamMP3): int32 =
  expandMethodBind(className AudioStreamMP3, "get_bar_beats", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

template data*(self: AudioStreamMP3): untyped = self.getData()
template `data=`*(self: AudioStreamMP3; value) = self.setData(value)

template bpm*(self: AudioStreamMP3): untyped = self.getBpm()
template `bpm=`*(self: AudioStreamMP3; value) = self.setBpm(value)

template beatCount*(self: AudioStreamMP3): untyped = self.getBeatCount()
template `beatCount=`*(self: AudioStreamMP3; value) = self.setBeatCount(value)

template barBeats*(self: AudioStreamMP3): untyped = self.getBarBeats()
template `barBeats=`*(self: AudioStreamMP3; value) = self.setBarBeats(value)

template loop*(self: AudioStreamMP3): untyped = self.hasLoop()
template `loop=`*(self: AudioStreamMP3; value) = self.setLoop(value)

template loopOffset*(self: AudioStreamMP3): untyped = self.getLoopOffset()
template `loopOffset=`*(self: AudioStreamMP3; value) = self.setLoopOffset(value)

const AudioStreamMP3_vmap =
  AudioStream.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioStreamMP3]): Table[string, string] = AudioStreamMP3_vmap