{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudioeffecteq; export gdaudioeffecteq

const AudioEffectEq6_vmap =
  AudioEffectEq.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioEffectEq6]): Table[string, string] = AudioEffectEq6_vmap