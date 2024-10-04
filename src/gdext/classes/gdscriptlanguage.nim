{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdobject; export gdobject

const ScriptLanguage_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ScriptLanguage]): Table[string, string] = ScriptLanguage_vmap