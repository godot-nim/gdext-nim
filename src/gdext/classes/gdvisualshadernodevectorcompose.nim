{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodevectorbase; export gdvisualshadernodevectorbase

const VisualShaderNodeVectorCompose_vmap =
  VisualShaderNodeVectorBase.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeVectorCompose]): Table[string, string] = VisualShaderNodeVectorCompose_vmap