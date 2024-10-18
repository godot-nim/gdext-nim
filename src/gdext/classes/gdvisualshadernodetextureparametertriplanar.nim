{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodetextureparameter; export gdvisualshadernodetextureparameter

const VisualShaderNodeTextureParameterTriplanar_vmap =
  VisualShaderNodeTextureParameter.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeTextureParameterTriplanar]): Table[string, string] = VisualShaderNodeTextureParameterTriplanar_vmap