{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernodeoutput; export gdvisualshadernodeoutput

const VisualShaderNodeParticleOutput_vmap =
  VisualShaderNodeOutput.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeParticleOutput]): Table[string, string] = VisualShaderNodeParticleOutput_vmap