{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

expandOnClassImported(VisualShaderNodeParticleEmitter, VisualShaderNode)

proc setMode2D*(self: VisualShaderNodeParticleEmitter; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeParticleEmitter, "set_mode_2d", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc isMode2D*(self: VisualShaderNodeParticleEmitter): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeParticleEmitter, "is_mode_2d", 36873697)
  methodbind.ptrcall(self, [], bool)

template mode2D*(self: VisualShaderNodeParticleEmitter): untyped = self.isMode2D()
template `mode2D=`*(self: VisualShaderNodeParticleEmitter; value) = self.setMode2D(value)
