{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdaudioeffecteq; export gdaudioeffecteq

const AudioEffectEq10_vmap =
  AudioEffectEq.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioEffectEq10]): Table[string, string] = AudioEffectEq10_vmap