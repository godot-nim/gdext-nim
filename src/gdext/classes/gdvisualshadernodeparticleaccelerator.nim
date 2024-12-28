{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

proc setMode*(self: VisualShaderNodeParticleAccelerator; mode: VisualShaderNodeParticleAccelerator_Mode): void =
  expandMethodBind(className VisualShaderNodeParticleAccelerator, "set_mode", 3457585749)
  methodbind.ptrcall(self, [getPtr mode])

proc getMode*(self: VisualShaderNodeParticleAccelerator): VisualShaderNodeParticleAccelerator_Mode =
  expandMethodBind(className VisualShaderNodeParticleAccelerator, "get_mode", 2660365633)
  var ret: encoded VisualShaderNodeParticleAccelerator_Mode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(VisualShaderNodeParticleAccelerator_Mode)

template mode*(self: VisualShaderNodeParticleAccelerator): untyped = self.getMode()
template `mode=`*(self: VisualShaderNodeParticleAccelerator; value) = self.setMode(value)

const VisualShaderNodeParticleAccelerator_vmap =
  VisualShaderNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeParticleAccelerator]): Table[string, string] = VisualShaderNodeParticleAccelerator_vmap