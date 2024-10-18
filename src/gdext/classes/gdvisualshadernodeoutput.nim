{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

const VisualShaderNodeOutput_vmap =
  VisualShaderNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeOutput]): Table[string, string] = VisualShaderNodeOutput_vmap