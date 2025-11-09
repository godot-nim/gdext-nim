{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudioeffect; export gdaudioeffect

expandOnClassImported(AudioEffectPitchShift, AudioEffect)

proc setPitchScale*(self: AudioEffectPitchShift; rate: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectPitchShift, "set_pitch_scale", 373806689)
  methodbind.ptrcall(self, [getPtr rate], void)

proc getPitchScale*(self: AudioEffectPitchShift): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectPitchShift, "get_pitch_scale", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setOversampling*(self: AudioEffectPitchShift; amount: int32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectPitchShift, "set_oversampling", 1286410249)
  methodbind.ptrcall(self, [getPtr amount], void)

proc getOversampling*(self: AudioEffectPitchShift): int32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectPitchShift, "get_oversampling", 3905245786)
  methodbind.ptrcall(self, [], int32)

proc setFftSize*(self: AudioEffectPitchShift; size: AudioEffectPitchShift_FFTSize): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectPitchShift, "set_fft_size", 2323518741)
  methodbind.ptrcall(self, [getPtr size], void)

proc getFftSize*(self: AudioEffectPitchShift): AudioEffectPitchShift_FFTSize =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className AudioEffectPitchShift, "get_fft_size", 2361246789)
  methodbind.ptrcall(self, [], AudioEffectPitchShift_FFTSize)

template pitchScale*(self: AudioEffectPitchShift): untyped = self.getPitchScale()
template `pitchScale=`*(self: AudioEffectPitchShift; value) = self.setPitchScale(value)

template oversampling*(self: AudioEffectPitchShift): untyped = self.getOversampling()
template `oversampling=`*(self: AudioEffectPitchShift; value) = self.setOversampling(value)

template fftSize*(self: AudioEffectPitchShift): untyped = self.getFftSize()
template `fftSize=`*(self: AudioEffectPitchShift; value) = self.setFftSize(value)
