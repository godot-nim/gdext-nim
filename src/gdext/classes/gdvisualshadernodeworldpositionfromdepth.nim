{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

const VisualShaderNodeWorldPositionFromDepth_vmap =
  VisualShaderNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeWorldPositionFromDepth]): Table[string, string] = VisualShaderNodeWorldPositionFromDepth_vmap