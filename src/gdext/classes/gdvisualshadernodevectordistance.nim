{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodevectorbase; export gdvisualshadernodevectorbase

const VisualShaderNodeVectorDistance_vmap =
  VisualShaderNodeVectorBase.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeVectorDistance]): Table[string, string] = VisualShaderNodeVectorDistance_vmap