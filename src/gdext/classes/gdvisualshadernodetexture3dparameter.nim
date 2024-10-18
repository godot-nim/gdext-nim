{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodetextureparameter; export gdvisualshadernodetextureparameter

const VisualShaderNodeTexture3DParameter_vmap =
  VisualShaderNodeTextureParameter.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeTexture3DParameter]): Table[string, string] = VisualShaderNodeTexture3DParameter_vmap