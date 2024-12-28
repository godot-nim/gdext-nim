{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

proc setFlags*(self: VisualShaderNodeParticleEmit; flags: VisualShaderNodeParticleEmit_EmitFlags): void =
  expandMethodBind(className VisualShaderNodeParticleEmit, "set_flags", 3960756792)
  methodbind.ptrcall(self, [getPtr flags])

proc getFlags*(self: VisualShaderNodeParticleEmit): VisualShaderNodeParticleEmit_EmitFlags =
  expandMethodBind(className VisualShaderNodeParticleEmit, "get_flags", 171277835)
  var ret: encoded VisualShaderNodeParticleEmit_EmitFlags
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(VisualShaderNodeParticleEmit_EmitFlags)

template flags*(self: VisualShaderNodeParticleEmit): untyped = self.getFlags()
template `flags=`*(self: VisualShaderNodeParticleEmit; value) = self.setFlags(value)

const VisualShaderNodeParticleEmit_vmap =
  VisualShaderNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeParticleEmit]): Table[string, string] = VisualShaderNodeParticleEmit_vmap