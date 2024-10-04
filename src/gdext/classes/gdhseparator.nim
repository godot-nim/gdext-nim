{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdseparator; export gdseparator

const HSeparator_vmap =
  Separator.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[HSeparator]): Table[string, string] = HSeparator_vmap