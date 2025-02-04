{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudioeffectinstance; export gdaudioeffectinstance

proc getMagnitudeForFrequencyRange*(self: AudioEffectSpectrumAnalyzerInstance; fromHz: Float; toHz: Float; mode: AudioEffectSpectrumAnalyzerInstance_MagnitudeMode = magnitudeMax): Vector2 =
  expandMethodBind(className AudioEffectSpectrumAnalyzerInstance, "get_magnitude_for_frequency_range", 797993915)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr fromHz, getPtr toHz, getPtr mode], addr ret)
  (addr ret).decode_result(Vector2)

const AudioEffectSpectrumAnalyzerInstance_vmap =
  AudioEffectInstance.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioEffectSpectrumAnalyzerInstance]): Table[string, string] = AudioEffectSpectrumAnalyzerInstance_vmap