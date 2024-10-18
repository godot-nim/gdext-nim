{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudioeffecteq; export gdaudioeffecteq

const AudioEffectEq21_vmap =
  AudioEffectEq.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioEffectEq21]): Table[string, string] = AudioEffectEq21_vmap