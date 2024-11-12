{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudiostream; export gdaudiostream

proc loadFromBuffer*(_: typedesc[AudioStreamOggVorbis]; buffer: PackedByteArray): gdref AudioStreamOggVorbis =
  expandMethodBind(className AudioStreamOggVorbis, "load_from_buffer", 354904730)
  var `?param` = [getPtr buffer]
  var ret: encoded gdref AudioStreamOggVorbis
  methodbind.ptrcall(addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref AudioStreamOggVorbis)

proc loadFromFile*(_: typedesc[AudioStreamOggVorbis]; path: String): gdref AudioStreamOggVorbis =
  expandMethodBind(className AudioStreamOggVorbis, "load_from_file", 797568536)
  var `?param` = [getPtr path]
  var ret: encoded gdref AudioStreamOggVorbis
  methodbind.ptrcall(addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref AudioStreamOggVorbis)

proc setPacketSequence*(self: AudioStreamOggVorbis; packetSequence: gdref OggPacketSequence): void =
  expandMethodBind(className AudioStreamOggVorbis, "set_packet_sequence", 438882457)
  var `?param` = [getPtr packetSequence]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPacketSequence*(self: AudioStreamOggVorbis): gdref OggPacketSequence =
  expandMethodBind(className AudioStreamOggVorbis, "get_packet_sequence", 2801636033)
  var ret: encoded gdref OggPacketSequence
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref OggPacketSequence)

proc setLoop*(self: AudioStreamOggVorbis; enable: bool): void =
  expandMethodBind(className AudioStreamOggVorbis, "set_loop", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc hasLoop*(self: AudioStreamOggVorbis): bool =
  expandMethodBind(className AudioStreamOggVorbis, "has_loop", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setLoopOffset*(self: AudioStreamOggVorbis; seconds: float64): void =
  expandMethodBind(className AudioStreamOggVorbis, "set_loop_offset", 373806689)
  var `?param` = [getPtr seconds]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLoopOffset*(self: AudioStreamOggVorbis): float64 =
  expandMethodBind(className AudioStreamOggVorbis, "get_loop_offset", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc setBpm*(self: AudioStreamOggVorbis; bpm: float64): void =
  expandMethodBind(className AudioStreamOggVorbis, "set_bpm", 373806689)
  var `?param` = [getPtr bpm]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBpm*(self: AudioStreamOggVorbis): float64 =
  expandMethodBind(className AudioStreamOggVorbis, "get_bpm", 1740695150)
  var ret: encoded float64
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(float64)

proc setBeatCount*(self: AudioStreamOggVorbis; count: int32): void =
  expandMethodBind(className AudioStreamOggVorbis, "set_beat_count", 1286410249)
  var `?param` = [getPtr count]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBeatCount*(self: AudioStreamOggVorbis): int32 =
  expandMethodBind(className AudioStreamOggVorbis, "get_beat_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setBarBeats*(self: AudioStreamOggVorbis; count: int32): void =
  expandMethodBind(className AudioStreamOggVorbis, "set_bar_beats", 1286410249)
  var `?param` = [getPtr count]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBarBeats*(self: AudioStreamOggVorbis): int32 =
  expandMethodBind(className AudioStreamOggVorbis, "get_bar_beats", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

template packetSequence*(self: AudioStreamOggVorbis): untyped = self.getPacketSequence()
template `packetSequence=`*(self: AudioStreamOggVorbis; value) = self.setPacketSequence(value)

template bpm*(self: AudioStreamOggVorbis): untyped = self.getBpm()
template `bpm=`*(self: AudioStreamOggVorbis; value) = self.setBpm(value)

template beatCount*(self: AudioStreamOggVorbis): untyped = self.getBeatCount()
template `beatCount=`*(self: AudioStreamOggVorbis; value) = self.setBeatCount(value)

template barBeats*(self: AudioStreamOggVorbis): untyped = self.getBarBeats()
template `barBeats=`*(self: AudioStreamOggVorbis; value) = self.setBarBeats(value)

template loop*(self: AudioStreamOggVorbis): untyped = self.hasLoop()
template `loop=`*(self: AudioStreamOggVorbis; value) = self.setLoop(value)

template loopOffset*(self: AudioStreamOggVorbis): untyped = self.getLoopOffset()
template `loopOffset=`*(self: AudioStreamOggVorbis; value) = self.setLoopOffset(value)

const AudioStreamOggVorbis_vmap =
  AudioStream.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioStreamOggVorbis]): Table[string, string] = AudioStreamOggVorbis_vmap