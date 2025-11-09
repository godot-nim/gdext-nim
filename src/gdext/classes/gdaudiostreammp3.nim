{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudiostream; export gdaudiostream

expandOnClassImported(AudioStreamMP3, AudioStream)

proc loadFromBuffer*(_: typedesc[AudioStreamMP3]; streamData: PackedByteArray): gdref AudioStreamMP3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamMP3, "load_from_buffer", 1674970313)
  methodbind.ptrcall([getPtr streamData], gdref AudioStreamMP3)

proc loadFromFile*(_: typedesc[AudioStreamMP3]; path: String): gdref AudioStreamMP3 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamMP3, "load_from_file", 4238362998)
  methodbind.ptrcall([getPtr path], gdref AudioStreamMP3)

proc setData*(self: AudioStreamMP3; data: PackedByteArray): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamMP3, "set_data", 2971499966)
  methodbind.ptrcall(self, [getPtr data], void)

proc getData*(self: AudioStreamMP3): PackedByteArray =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamMP3, "get_data", 2362200018)
  methodbind.ptrcall(self, [], PackedByteArray)

proc setLoop*(self: AudioStreamMP3; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamMP3, "set_loop", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc hasLoop*(self: AudioStreamMP3): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamMP3, "has_loop", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setLoopOffset*(self: AudioStreamMP3; seconds: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamMP3, "set_loop_offset", 373806689)
  methodbind.ptrcall(self, [getPtr seconds], void)

proc getLoopOffset*(self: AudioStreamMP3): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamMP3, "get_loop_offset", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc setBpm*(self: AudioStreamMP3; bpm: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamMP3, "set_bpm", 373806689)
  methodbind.ptrcall(self, [getPtr bpm], void)

proc getBpm*(self: AudioStreamMP3): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamMP3, "get_bpm", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc setBeatCount*(self: AudioStreamMP3; count: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamMP3, "set_beat_count", 1286410249)
  methodbind.ptrcall(self, [getPtr count], void)

proc getBeatCount*(self: AudioStreamMP3): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamMP3, "get_beat_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setBarBeats*(self: AudioStreamMP3; count: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamMP3, "set_bar_beats", 1286410249)
  methodbind.ptrcall(self, [getPtr count], void)

proc getBarBeats*(self: AudioStreamMP3): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamMP3, "get_bar_beats", 3905245786)
  methodbind.ptrcall(self, [], int32)

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
