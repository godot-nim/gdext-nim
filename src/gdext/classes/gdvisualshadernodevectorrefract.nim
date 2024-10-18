{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodevectorbase; export gdvisualshadernodevectorbase

const VisualShaderNodeVectorRefract_vmap =
  VisualShaderNodeVectorBase.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeVectorRefract]): Table[string, string] = VisualShaderNodeVectorRefract_vmap