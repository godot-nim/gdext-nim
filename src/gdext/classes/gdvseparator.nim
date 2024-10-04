{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdseparator; export gdseparator

const VSeparator_vmap =
  Separator.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VSeparator]): Table[string, string] = VSeparator_vmap