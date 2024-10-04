{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdaudioeffect; export gdaudioeffect

proc setBufferLength*(self: AudioEffectSpectrumAnalyzer; seconds: Float): void =
  expandMethodBind(className AudioEffectSpectrumAnalyzer, "set_buffer_length", 373806689)
  var `?param` = [getPtr seconds]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBufferLength*(self: AudioEffectSpectrumAnalyzer): Float =
  expandMethodBind(className AudioEffectSpectrumAnalyzer, "get_buffer_length", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setTapBackPos*(self: AudioEffectSpectrumAnalyzer; seconds: Float): void =
  expandMethodBind(className AudioEffectSpectrumAnalyzer, "set_tap_back_pos", 373806689)
  var `?param` = [getPtr seconds]
  methodbind.ptrcall(self, addr `?param`[0])

proc getTapBackPos*(self: AudioEffectSpectrumAnalyzer): Float =
  expandMethodBind(className AudioEffectSpectrumAnalyzer, "get_tap_back_pos", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setFftSize*(self: AudioEffectSpectrumAnalyzer; size: AudioEffectSpectrumAnalyzer_FftSize): void =
  expandMethodBind(className AudioEffectSpectrumAnalyzer, "set_fft_size", 1202879215)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFftSize*(self: AudioEffectSpectrumAnalyzer): AudioEffectSpectrumAnalyzer_FftSize =
  expandMethodBind(className AudioEffectSpectrumAnalyzer, "get_fft_size", 3925405343)
  var ret: encoded AudioEffectSpectrumAnalyzer_FftSize
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(AudioEffectSpectrumAnalyzer_FftSize)

template bufferLength*(self: AudioEffectSpectrumAnalyzer): untyped = self.getBufferLength()
template `bufferLength=`*(self: AudioEffectSpectrumAnalyzer; value) = self.setBufferLength(value)

template tapBackPos*(self: AudioEffectSpectrumAnalyzer): untyped = self.getTapBackPos()
template `tapBackPos=`*(self: AudioEffectSpectrumAnalyzer; value) = self.setTapBackPos(value)

template fftSize*(self: AudioEffectSpectrumAnalyzer): untyped = self.getFftSize()
template `fftSize=`*(self: AudioEffectSpectrumAnalyzer; value) = self.setFftSize(value)

const AudioEffectSpectrumAnalyzer_vmap =
  AudioEffect.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioEffectSpectrumAnalyzer]): Table[string, string] = AudioEffectSpectrumAnalyzer_vmap