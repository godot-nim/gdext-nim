{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodetextureparameter; export gdvisualshadernodetextureparameter

const VisualShaderNodeTexture2DArrayParameter_vmap =
  VisualShaderNodeTextureParameter.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeTexture2DArrayParameter]): Table[string, string] = VisualShaderNodeTexture2DArrayParameter_vmap