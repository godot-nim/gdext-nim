{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

expandOnClassImported(VisualShaderNodeParticleEmit, VisualShaderNode)

proc setFlags*(self: VisualShaderNodeParticleEmit; flags: VisualShaderNodeParticleEmit_EmitFlags): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeParticleEmit, "set_flags", 3960756792)
  methodbind.ptrcall(self, [getPtr flags], void)

proc getFlags*(self: VisualShaderNodeParticleEmit): VisualShaderNodeParticleEmit_EmitFlags =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeParticleEmit, "get_flags", 171277835)
  methodbind.ptrcall(self, [], VisualShaderNodeParticleEmit_EmitFlags)

template flags*(self: VisualShaderNodeParticleEmit): untyped = self.getFlags()
template `flags=`*(self: VisualShaderNodeParticleEmit; value) = self.setFlags(value)
