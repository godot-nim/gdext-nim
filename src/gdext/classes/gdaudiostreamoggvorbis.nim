{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudiostream; export gdaudiostream

expandOnClassImported(AudioStreamOggVorbis, AudioStream)

proc loadFromBuffer*(_: typedesc[AudioStreamOggVorbis]; streamData: PackedByteArray): gdref AudioStreamOggVorbis =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamOggVorbis, "load_from_buffer", 354904730)
  methodbind.ptrcall([getPtr streamData], gdref AudioStreamOggVorbis)

proc loadFromFile*(_: typedesc[AudioStreamOggVorbis]; path: String): gdref AudioStreamOggVorbis =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamOggVorbis, "load_from_file", 797568536)
  methodbind.ptrcall([getPtr path], gdref AudioStreamOggVorbis)

proc setPacketSequence*(self: AudioStreamOggVorbis; packetSequence: gdref OggPacketSequence): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamOggVorbis, "set_packet_sequence", 438882457)
  methodbind.ptrcall(self, [getPtr packetSequence], void)

proc getPacketSequence*(self: AudioStreamOggVorbis): gdref OggPacketSequence =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamOggVorbis, "get_packet_sequence", 2801636033)
  methodbind.ptrcall(self, [], gdref OggPacketSequence)

proc setLoop*(self: AudioStreamOggVorbis; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamOggVorbis, "set_loop", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc hasLoop*(self: AudioStreamOggVorbis): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamOggVorbis, "has_loop", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setLoopOffset*(self: AudioStreamOggVorbis; seconds: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamOggVorbis, "set_loop_offset", 373806689)
  methodbind.ptrcall(self, [getPtr seconds], void)

proc getLoopOffset*(self: AudioStreamOggVorbis): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamOggVorbis, "get_loop_offset", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc setBpm*(self: AudioStreamOggVorbis; bpm: float64): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamOggVorbis, "set_bpm", 373806689)
  methodbind.ptrcall(self, [getPtr bpm], void)

proc getBpm*(self: AudioStreamOggVorbis): float64 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamOggVorbis, "get_bpm", 1740695150)
  methodbind.ptrcall(self, [], float64)

proc setBeatCount*(self: AudioStreamOggVorbis; count: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamOggVorbis, "set_beat_count", 1286410249)
  methodbind.ptrcall(self, [getPtr count], void)

proc getBeatCount*(self: AudioStreamOggVorbis): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamOggVorbis, "get_beat_count", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setBarBeats*(self: AudioStreamOggVorbis; count: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamOggVorbis, "set_bar_beats", 1286410249)
  methodbind.ptrcall(self, [getPtr count], void)

proc getBarBeats*(self: AudioStreamOggVorbis): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamOggVorbis, "get_bar_beats", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setTags*(self: AudioStreamOggVorbis; tags: Dictionary): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamOggVorbis, "set_tags", 4155329257)
  methodbind.ptrcall(self, [getPtr tags], void)

proc getTags*(self: AudioStreamOggVorbis): Dictionary =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamOggVorbis, "get_tags", 3102165223)
  methodbind.ptrcall(self, [], Dictionary)

template packetSequence*(self: AudioStreamOggVorbis): untyped = self.getPacketSequence()
template `packetSequence=`*(self: AudioStreamOggVorbis; value) = self.setPacketSequence(value)

template bpm*(self: AudioStreamOggVorbis): untyped = self.getBpm()
template `bpm=`*(self: AudioStreamOggVorbis; value) = self.setBpm(value)

template beatCount*(self: AudioStreamOggVorbis): untyped = self.getBeatCount()
template `beatCount=`*(self: AudioStreamOggVorbis; value) = self.setBeatCount(value)

template barBeats*(self: AudioStreamOggVorbis): untyped = self.getBarBeats()
template `barBeats=`*(self: AudioStreamOggVorbis; value) = self.setBarBeats(value)

template tags*(self: AudioStreamOggVorbis): untyped = self.getTags()
template `tags=`*(self: AudioStreamOggVorbis; value) = self.setTags(value)

template loop*(self: AudioStreamOggVorbis): untyped = self.hasLoop()
template `loop=`*(self: AudioStreamOggVorbis; value) = self.setLoop(value)

template loopOffset*(self: AudioStreamOggVorbis): untyped = self.getLoopOffset()
template `loopOffset=`*(self: AudioStreamOggVorbis; value) = self.setLoopOffset(value)
