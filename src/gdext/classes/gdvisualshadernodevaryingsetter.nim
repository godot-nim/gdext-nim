{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodevarying; export gdvisualshadernodevarying

const VisualShaderNodeVaryingSetter_vmap =
  VisualShaderNodeVarying.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeVaryingSetter]): Table[string, string] = VisualShaderNodeVaryingSetter_vmap