{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdvisualshadernodeparticleemitter; export gdvisualshadernodeparticleemitter

const VisualShaderNodeParticleRingEmitter_vmap =
  VisualShaderNodeParticleEmitter.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeParticleRingEmitter]): Table[string, string] = VisualShaderNodeParticleRingEmitter_vmap