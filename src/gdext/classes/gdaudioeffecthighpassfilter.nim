{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudioeffectfilter; export gdaudioeffectfilter

const AudioEffectHighPassFilter_vmap =
  AudioEffectFilter.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioEffectHighPassFilter]): Table[string, string] = AudioEffectHighPassFilter_vmap