{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdvisualshadernodeparticleemitter; export gdvisualshadernodeparticleemitter

const VisualShaderNodeParticleBoxEmitter_vmap =
  VisualShaderNodeParticleEmitter.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeParticleBoxEmitter]): Table[string, string] = VisualShaderNodeParticleBoxEmitter_vmap