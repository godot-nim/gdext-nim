{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudioeffect; export gdaudioeffect

expandOnClassImported(AudioEffectSpectrumAnalyzer, AudioEffect)

proc setBufferLength*(self: AudioEffectSpectrumAnalyzer; seconds: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectSpectrumAnalyzer, "set_buffer_length", 373806689)
  methodbind.ptrcall(self, [getPtr seconds], void)

proc getBufferLength*(self: AudioEffectSpectrumAnalyzer): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectSpectrumAnalyzer, "get_buffer_length", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setTapBackPos*(self: AudioEffectSpectrumAnalyzer; seconds: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectSpectrumAnalyzer, "set_tap_back_pos", 373806689)
  methodbind.ptrcall(self, [getPtr seconds], void)

proc getTapBackPos*(self: AudioEffectSpectrumAnalyzer): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectSpectrumAnalyzer, "get_tap_back_pos", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setFftSize*(self: AudioEffectSpectrumAnalyzer; size: AudioEffectSpectrumAnalyzer_FFTSize): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectSpectrumAnalyzer, "set_fft_size", 1202879215)
  methodbind.ptrcall(self, [getPtr size], void)

proc getFftSize*(self: AudioEffectSpectrumAnalyzer): AudioEffectSpectrumAnalyzer_FFTSize =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectSpectrumAnalyzer, "get_fft_size", 3925405343)
  methodbind.ptrcall(self, [], AudioEffectSpectrumAnalyzer_FFTSize)

template bufferLength*(self: AudioEffectSpectrumAnalyzer): untyped = self.getBufferLength()
template `bufferLength=`*(self: AudioEffectSpectrumAnalyzer; value) = self.setBufferLength(value)

template tapBackPos*(self: AudioEffectSpectrumAnalyzer): untyped = self.getTapBackPos()
template `tapBackPos=`*(self: AudioEffectSpectrumAnalyzer; value) = self.setTapBackPos(value)

template fftSize*(self: AudioEffectSpectrumAnalyzer): untyped = self.getFftSize()
template `fftSize=`*(self: AudioEffectSpectrumAnalyzer; value) = self.setFftSize(value)
