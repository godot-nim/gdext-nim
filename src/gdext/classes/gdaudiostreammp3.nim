{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdaudiostream; export gdaudiostream

proc setData*(self: AudioStreamMp3; data: PackedByteArray): void =
  expandMethodBind(className AudioStreamMp3, "set_data", 2971499966)
  var `?param` = [getPtr data]
  methodbind.ptrcall(self, addr `?param`[0])

proc getData*(self: AudioStreamMp3): PackedByteArray =
  expandMethodBind(className AudioStreamMp3, "get_data", 2362200018)
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedByteArray)

proc setLoop*(self: AudioStreamMp3; enable: bool): void =
  expandMethodBind(className AudioStreamMp3, "set_loop", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc hasLoop*(self: AudioStreamMp3): bool =
  expandMethodBind(className AudioStreamMp3, "has_loop", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setLoopOffset*(self: AudioStreamMp3; seconds: float64): void =
  expandMethodBind(className AudioStreamMp3, "set_loop_offset", 373806689)
  var `?param` = [getPtr seconds]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLoopOffset*(self: AudioStreamMp3): float64 =
  expandMethodBind(className AudioStreamMp3, "get_loop_offset", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc setBpm*(self: AudioStreamMp3; bpm: float64): void =
  expandMethodBind(className AudioStreamMp3, "set_bpm", 373806689)
  var `?param` = [getPtr bpm]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBpm*(self: AudioStreamMp3): float64 =
  expandMethodBind(className AudioStreamMp3, "get_bpm", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc setBeatCount*(self: AudioStreamMp3; count: int32): void =
  expandMethodBind(className AudioStreamMp3, "set_beat_count", 1286410249)
  var `?param` = [getPtr count]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBeatCount*(self: AudioStreamMp3): int32 =
  expandMethodBind(className AudioStreamMp3, "get_beat_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setBarBeats*(self: AudioStreamMp3; count: int32): void =
  expandMethodBind(className AudioStreamMp3, "set_bar_beats", 1286410249)
  var `?param` = [getPtr count]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBarBeats*(self: AudioStreamMp3): int32 =
  expandMethodBind(className AudioStreamMp3, "get_bar_beats", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

template data*(self: AudioStreamMp3): untyped = self.getData()
template `data=`*(self: AudioStreamMp3; value) = self.setData(value)

template bpm*(self: AudioStreamMp3): untyped = self.getBpm()
template `bpm=`*(self: AudioStreamMp3; value) = self.setBpm(value)

template beatCount*(self: AudioStreamMp3): untyped = self.getBeatCount()
template `beatCount=`*(self: AudioStreamMp3; value) = self.setBeatCount(value)

template barBeats*(self: AudioStreamMp3): untyped = self.getBarBeats()
template `barBeats=`*(self: AudioStreamMp3; value) = self.setBarBeats(value)

template loop*(self: AudioStreamMp3): untyped = self.hasLoop()
template `loop=`*(self: AudioStreamMp3; value) = self.setLoop(value)

template loopOffset*(self: AudioStreamMp3): untyped = self.getLoopOffset()
template `loopOffset=`*(self: AudioStreamMp3; value) = self.setLoopOffset(value)

const AudioStreamMp3_vmap =
  AudioStream.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioStreamMp3]): Table[string, string] = AudioStreamMp3_vmap