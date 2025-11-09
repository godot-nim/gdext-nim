{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudiostream; export gdaudiostream

expandOnClassImported(AudioStreamGenerator, AudioStream)

proc setMixRate*(self: AudioStreamGenerator; hz: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamGenerator, "set_mix_rate", 373806689)
  methodbind.ptrcall(self, [getPtr hz], void)

proc getMixRate*(self: AudioStreamGenerator): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamGenerator, "get_mix_rate", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setMixRateMode*(self: AudioStreamGenerator; mode: AudioStreamGenerator_AudioStreamGeneratorMixRate): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamGenerator, "set_mix_rate_mode", 3354885803)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getMixRateMode*(self: AudioStreamGenerator): AudioStreamGenerator_AudioStreamGeneratorMixRate =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamGenerator, "get_mix_rate_mode", 3537132591)
  methodbind.ptrcall(self, [], AudioStreamGenerator_AudioStreamGeneratorMixRate)

proc setBufferLength*(self: AudioStreamGenerator; seconds: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamGenerator, "set_buffer_length", 373806689)
  methodbind.ptrcall(self, [getPtr seconds], void)

proc getBufferLength*(self: AudioStreamGenerator): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioStreamGenerator, "get_buffer_length", 1740695150)
  methodbind.ptrcall(self, [], Float)

template mixRateMode*(self: AudioStreamGenerator): untyped = self.getMixRateMode()
template `mixRateMode=`*(self: AudioStreamGenerator; value) = self.setMixRateMode(value)

template mixRate*(self: AudioStreamGenerator): untyped = self.getMixRate()
template `mixRate=`*(self: AudioStreamGenerator; value) = self.setMixRate(value)

template bufferLength*(self: AudioStreamGenerator): untyped = self.getBufferLength()
template `bufferLength=`*(self: AudioStreamGenerator; value) = self.setBufferLength(value)
