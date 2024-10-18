{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

const VisualShaderNodeDeterminant_vmap =
  VisualShaderNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeDeterminant]): Table[string, string] = VisualShaderNodeDeterminant_vmap