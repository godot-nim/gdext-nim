{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

const VisualShaderNodeSdfToScreenUv_vmap =
  VisualShaderNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeSdfToScreenUv]): Table[string, string] = VisualShaderNodeSdfToScreenUv_vmap