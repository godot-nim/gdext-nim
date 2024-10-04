{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdvisualshadernodetextureparameter; export gdvisualshadernodetextureparameter

const VisualShaderNodeTextureParameterTriplanar_vmap =
  VisualShaderNodeTextureParameter.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeTextureParameterTriplanar]): Table[string, string] = VisualShaderNodeTextureParameterTriplanar_vmap