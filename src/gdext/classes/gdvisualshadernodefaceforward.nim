{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodevectorbase; export gdvisualshadernodevectorbase

const VisualShaderNodeFaceForward_vmap =
  VisualShaderNodeVectorBase.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeFaceForward]): Table[string, string] = VisualShaderNodeFaceForward_vmap