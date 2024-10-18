{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodeparticleemitter; export gdvisualshadernodeparticleemitter

const VisualShaderNodeParticleSphereEmitter_vmap =
  VisualShaderNodeParticleEmitter.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeParticleSphereEmitter]): Table[string, string] = VisualShaderNodeParticleSphereEmitter_vmap