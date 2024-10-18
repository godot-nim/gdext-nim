{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudioeffectfilter; export gdaudioeffectfilter

const AudioEffectHighShelfFilter_vmap =
  AudioEffectFilter.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioEffectHighShelfFilter]): Table[string, string] = AudioEffectHighShelfFilter_vmap