{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudiostream; export gdaudiostream

proc setMixRate*(self: AudioStreamGenerator; hz: Float): void =
  expandMethodBind(className AudioStreamGenerator, "set_mix_rate", 373806689)
  methodbind.ptrcall(self, [getPtr hz])

proc getMixRate*(self: AudioStreamGenerator): Float =
  expandMethodBind(className AudioStreamGenerator, "get_mix_rate", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setBufferLength*(self: AudioStreamGenerator; seconds: Float): void =
  expandMethodBind(className AudioStreamGenerator, "set_buffer_length", 373806689)
  methodbind.ptrcall(self, [getPtr seconds])

proc getBufferLength*(self: AudioStreamGenerator): Float =
  expandMethodBind(className AudioStreamGenerator, "get_buffer_length", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

template mixRate*(self: AudioStreamGenerator): untyped = self.getMixRate()
template `mixRate=`*(self: AudioStreamGenerator; value) = self.setMixRate(value)

template bufferLength*(self: AudioStreamGenerator): untyped = self.getBufferLength()
template `bufferLength=`*(self: AudioStreamGenerator; value) = self.setBufferLength(value)

const AudioStreamGenerator_vmap =
  AudioStream.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioStreamGenerator]): Table[string, string] = AudioStreamGenerator_vmap