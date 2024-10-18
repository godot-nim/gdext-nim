{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

const VisualShaderNodeSdfRaymarch_vmap =
  VisualShaderNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeSdfRaymarch]): Table[string, string] = VisualShaderNodeSdfRaymarch_vmap