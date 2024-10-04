{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdaudioeffecteq; export gdaudioeffecteq

const AudioEffectEq6_vmap =
  AudioEffectEq.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[AudioEffectEq6]): Table[string, string] = AudioEffectEq6_vmap