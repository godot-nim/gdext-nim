{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

const VisualShaderNodeScreenUvToSdf_vmap =
  VisualShaderNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeScreenUvToSdf]): Table[string, string] = VisualShaderNodeScreenUvToSdf_vmap