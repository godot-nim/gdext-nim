{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdstylebox; export gdstylebox

const StyleBoxEmpty_vmap =
  StyleBox.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[StyleBoxEmpty]): Table[string, string] = StyleBoxEmpty_vmap