{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdvisualshadernodetextureparameter; export gdvisualshadernodetextureparameter

const VisualShaderNodeTexture3DParameter_vmap =
  VisualShaderNodeTextureParameter.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeTexture3DParameter]): Table[string, string] = VisualShaderNodeTexture3DParameter_vmap