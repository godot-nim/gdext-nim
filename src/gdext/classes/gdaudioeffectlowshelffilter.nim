{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudioeffectfilter; export gdaudioeffectfilter

const AudioEffectLowShelfFilter_vmap =
  AudioEffectFilter.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioEffectLowShelfFilter]): Table[string, string] = AudioEffectLowShelfFilter_vmap