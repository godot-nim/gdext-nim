{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudiostream; export gdaudiostream

expandOnClassImported(AudioStreamGenerator, AudioStream)

proc setMixRate*(self: AudioStreamGenerator; hz: Float): void =
  expandMethodBind(className AudioStreamGenerator, "set_mix_rate", 373806689)
  methodbind.ptrcall(self, [getPtr hz])

proc getMixRate*(self: AudioStreamGenerator): Float =
  expandMethodBind(className AudioStreamGenerator, "get_mix_rate", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setMixRateMode*(self: AudioStreamGenerator; mode: AudioStreamGenerator_AudioStreamGeneratorMixRate): void =
  expandMethodBind(className AudioStreamGenerator, "set_mix_rate_mode", 3354885803)
  methodbind.ptrcall(self, [getPtr mode])

proc getMixRateMode*(self: AudioStreamGenerator): AudioStreamGenerator_AudioStreamGeneratorMixRate =
  expandMethodBind(className AudioStreamGenerator, "get_mix_rate_mode", 3537132591)
  var ret: encoded AudioStreamGenerator_AudioStreamGeneratorMixRate
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(AudioStreamGenerator_AudioStreamGeneratorMixRate)

proc setBufferLength*(self: AudioStreamGenerator; seconds: Float): void =
  expandMethodBind(className AudioStreamGenerator, "set_buffer_length", 373806689)
  methodbind.ptrcall(self, [getPtr seconds])

proc getBufferLength*(self: AudioStreamGenerator): Float =
  expandMethodBind(className AudioStreamGenerator, "get_buffer_length", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

template mixRateMode*(self: AudioStreamGenerator): untyped = self.getMixRateMode()
template `mixRateMode=`*(self: AudioStreamGenerator; value) = self.setMixRateMode(value)

template mixRate*(self: AudioStreamGenerator): untyped = self.getMixRate()
template `mixRate=`*(self: AudioStreamGenerator; value) = self.setMixRate(value)

template bufferLength*(self: AudioStreamGenerator): untyped = self.getBufferLength()
template `bufferLength=`*(self: AudioStreamGenerator; value) = self.setBufferLength(value)
