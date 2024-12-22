{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdaudioeffecteq; export gdaudioeffecteq

const AudioEffectEQ21_vmap =
  AudioEffectEQ.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioEffectEQ21]): Table[string, string] = AudioEffectEQ21_vmap