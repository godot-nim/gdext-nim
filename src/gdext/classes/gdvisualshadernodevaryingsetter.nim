{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdvisualshadernodevarying; export gdvisualshadernodevarying

const VisualShaderNodeVaryingSetter_vmap =
  VisualShaderNodeVarying.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeVaryingSetter]): Table[string, string] = VisualShaderNodeVaryingSetter_vmap