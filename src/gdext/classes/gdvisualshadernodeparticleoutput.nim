{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdvisualshadernodeoutput; export gdvisualshadernodeoutput

const VisualShaderNodeParticleOutput_vmap =
  VisualShaderNodeOutput.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeParticleOutput]): Table[string, string] = VisualShaderNodeParticleOutput_vmap