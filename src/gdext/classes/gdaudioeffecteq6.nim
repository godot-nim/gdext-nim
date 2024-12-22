{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudioeffecteq; export gdaudioeffecteq

const AudioEffectEQ6_vmap =
  AudioEffectEQ.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioEffectEQ6]): Table[string, string] = AudioEffectEQ6_vmap