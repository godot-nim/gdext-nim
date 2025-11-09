{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

expandOnClassImported(VisualShaderNodeParticleMultiplyByAxisAngle, VisualShaderNode)

proc setDegreesMode*(self: VisualShaderNodeParticleMultiplyByAxisAngle; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeParticleMultiplyByAxisAngle, "set_degrees_mode", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isDegreesMode*(self: VisualShaderNodeParticleMultiplyByAxisAngle): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeParticleMultiplyByAxisAngle, "is_degrees_mode", 36873697)
  methodbind.ptrcall(self, [], bool)

template degreesMode*(self: VisualShaderNodeParticleMultiplyByAxisAngle): untyped = self.isDegreesMode()
template `degreesMode=`*(self: VisualShaderNodeParticleMultiplyByAxisAngle; value) = self.setDegreesMode(value)
