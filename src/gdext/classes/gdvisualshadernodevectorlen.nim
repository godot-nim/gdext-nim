{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodevectorbase; export gdvisualshadernodevectorbase

const VisualShaderNodeVectorLen_vmap =
  VisualShaderNodeVectorBase.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeVectorLen]): Table[string, string] = VisualShaderNodeVectorLen_vmap