{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudioeffecteq; export gdaudioeffecteq

const AudioEffectEQ10_vmap =
  AudioEffectEQ.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioEffectEQ10]): Table[string, string] = AudioEffectEQ10_vmap