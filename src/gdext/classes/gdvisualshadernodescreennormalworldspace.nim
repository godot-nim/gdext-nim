{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

const VisualShaderNodeScreenNormalWorldSpace_vmap =
  VisualShaderNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeScreenNormalWorldSpace]): Table[string, string] = VisualShaderNodeScreenNormalWorldSpace_vmap