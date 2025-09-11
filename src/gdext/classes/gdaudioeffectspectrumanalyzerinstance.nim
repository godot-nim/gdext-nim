{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudioeffectinstance; export gdaudioeffectinstance

expandOnClassImported(AudioEffectSpectrumAnalyzerInstance, AudioEffectInstance)

proc getMagnitudeForFrequencyRange*(self: AudioEffectSpectrumAnalyzerInstance; fromHz: Float; toHz: Float; mode: AudioEffectSpectrumAnalyzerInstance_MagnitudeMode = magnitudeMax): Vector2 =
  expandMethodBind(className AudioEffectSpectrumAnalyzerInstance, "get_magnitude_for_frequency_range", 797993915)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr fromHz, getPtr toHz, getPtr mode], addr ret)
  (addr ret).decode_result(Vector2)
