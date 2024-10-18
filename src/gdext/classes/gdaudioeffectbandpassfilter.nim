{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudioeffectfilter; export gdaudioeffectfilter

const AudioEffectBandPassFilter_vmap =
  AudioEffectFilter.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioEffectBandPassFilter]): Table[string, string] = AudioEffectBandPassFilter_vmap