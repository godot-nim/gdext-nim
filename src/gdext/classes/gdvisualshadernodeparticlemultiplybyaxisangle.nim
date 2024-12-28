{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

proc setDegreesMode*(self: VisualShaderNodeParticleMultiplyByAxisAngle; enabled: bool): void =
  expandMethodBind(className VisualShaderNodeParticleMultiplyByAxisAngle, "set_degrees_mode", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled])

proc isDegreesMode*(self: VisualShaderNodeParticleMultiplyByAxisAngle): bool =
  expandMethodBind(className VisualShaderNodeParticleMultiplyByAxisAngle, "is_degrees_mode", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

template degreesMode*(self: VisualShaderNodeParticleMultiplyByAxisAngle): untyped = self.isDegreesMode()
template `degreesMode=`*(self: VisualShaderNodeParticleMultiplyByAxisAngle; value) = self.setDegreesMode(value)

const VisualShaderNodeParticleMultiplyByAxisAngle_vmap =
  VisualShaderNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeParticleMultiplyByAxisAngle]): Table[string, string] = VisualShaderNodeParticleMultiplyByAxisAngle_vmap