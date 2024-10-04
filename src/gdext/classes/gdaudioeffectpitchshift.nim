{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdaudioeffect; export gdaudioeffect

proc setPitchScale*(self: AudioEffectPitchShift; rate: Float): void =
  expandMethodBind(className AudioEffectPitchShift, "set_pitch_scale", 373806689)
  var `?param` = [getPtr rate]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPitchScale*(self: AudioEffectPitchShift): Float =
  expandMethodBind(className AudioEffectPitchShift, "get_pitch_scale", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setOversampling*(self: AudioEffectPitchShift; amount: int32): void =
  expandMethodBind(className AudioEffectPitchShift, "set_oversampling", 1286410249)
  var `?param` = [getPtr amount]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOversampling*(self: AudioEffectPitchShift): int32 =
  expandMethodBind(className AudioEffectPitchShift, "get_oversampling", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setFftSize*(self: AudioEffectPitchShift; size: AudioEffectPitchShift_FftSize): void =
  expandMethodBind(className AudioEffectPitchShift, "set_fft_size", 2323518741)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFftSize*(self: AudioEffectPitchShift): AudioEffectPitchShift_FftSize =
  expandMethodBind(className AudioEffectPitchShift, "get_fft_size", 2361246789)
  var ret: encoded AudioEffectPitchShift_FftSize
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(AudioEffectPitchShift_FftSize)

template pitchScale*(self: AudioEffectPitchShift): untyped = self.getPitchScale()
template `pitchScale=`*(self: AudioEffectPitchShift; value) = self.setPitchScale(value)

template oversampling*(self: AudioEffectPitchShift): untyped = self.getOversampling()
template `oversampling=`*(self: AudioEffectPitchShift; value) = self.setOversampling(value)

template fftSize*(self: AudioEffectPitchShift): untyped = self.getFftSize()
template `fftSize=`*(self: AudioEffectPitchShift; value) = self.setFftSize(value)

const AudioEffectPitchShift_vmap =
  AudioEffect.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioEffectPitchShift]): Table[string, string] = AudioEffectPitchShift_vmap