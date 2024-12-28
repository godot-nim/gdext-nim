{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

proc setMode2D*(self: VisualShaderNodeParticleEmitter; enabled: bool): void =
  expandMethodBind(className VisualShaderNodeParticleEmitter, "set_mode_2d", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isMode2D*(self: VisualShaderNodeParticleEmitter): bool =
  expandMethodBind(className VisualShaderNodeParticleEmitter, "is_mode_2d", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

template mode2D*(self: VisualShaderNodeParticleEmitter): untyped = self.isMode2D()
template `mode2D=`*(self: VisualShaderNodeParticleEmitter; value) = self.setMode2D(value)

const VisualShaderNodeParticleEmitter_vmap =
  VisualShaderNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeParticleEmitter]): Table[string, string] = VisualShaderNodeParticleEmitter_vmap