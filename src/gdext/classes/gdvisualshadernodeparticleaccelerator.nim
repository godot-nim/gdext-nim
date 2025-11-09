{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

expandOnClassImported(VisualShaderNodeParticleAccelerator, VisualShaderNode)

proc setMode*(self: VisualShaderNodeParticleAccelerator; mode: VisualShaderNodeParticleAccelerator_Mode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeParticleAccelerator, "set_mode", 3457585749)
  methodbind.ptrcall(self, [getPtr mode], void)

proc getMode*(self: VisualShaderNodeParticleAccelerator): VisualShaderNodeParticleAccelerator_Mode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeParticleAccelerator, "get_mode", 2660365633)
  methodbind.ptrcall(self, [], VisualShaderNodeParticleAccelerator_Mode)

template mode*(self: VisualShaderNodeParticleAccelerator): untyped = self.getMode()
template `mode=`*(self: VisualShaderNodeParticleAccelerator; value) = self.setMode(value)
