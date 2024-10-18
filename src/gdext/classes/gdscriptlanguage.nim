{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdobject; export gdobject

const ScriptLanguage_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[ScriptLanguage]): Table[string, string] = ScriptLanguage_vmap