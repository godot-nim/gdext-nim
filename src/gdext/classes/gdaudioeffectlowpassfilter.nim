{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudioeffectfilter; export gdaudioeffectfilter

const AudioEffectLowPassFilter_vmap =
  AudioEffectFilter.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioEffectLowPassFilter]): Table[string, string] = AudioEffectLowPassFilter_vmap