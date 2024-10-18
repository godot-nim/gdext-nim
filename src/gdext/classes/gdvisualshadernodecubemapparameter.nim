{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodetextureparameter; export gdvisualshadernodetextureparameter

const VisualShaderNodeCubemapParameter_vmap =
  VisualShaderNodeTextureParameter.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeCubemapParameter]): Table[string, string] = VisualShaderNodeCubemapParameter_vmap