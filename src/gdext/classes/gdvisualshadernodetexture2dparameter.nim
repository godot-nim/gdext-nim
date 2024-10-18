{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodetextureparameter; export gdvisualshadernodetextureparameter

const VisualShaderNodeTexture2DParameter_vmap =
  VisualShaderNodeTextureParameter.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeTexture2DParameter]): Table[string, string] = VisualShaderNodeTexture2DParameter_vmap