{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdaudioeffecteq; export gdaudioeffecteq

const AudioEffectEq21_vmap =
  AudioEffectEq.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioEffectEq21]): Table[string, string] = AudioEffectEq21_vmap