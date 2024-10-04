{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdvisualshadernodevarying; export gdvisualshadernodevarying

const VisualShaderNodeVaryingGetter_vmap =
  VisualShaderNodeVarying.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeVaryingGetter]): Table[string, string] = VisualShaderNodeVaryingGetter_vmap