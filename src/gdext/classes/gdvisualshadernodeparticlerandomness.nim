{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

expandOnClassImported(VisualShaderNodeParticleRandomness, VisualShaderNode)

proc setOpType*(self: VisualShaderNodeParticleRandomness; `type`: VisualShaderNodeParticleRandomness_OpType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeParticleRandomness, "set_op_type", 2060089061)
  methodbind.ptrcall(self, [getPtr `type`], void)

proc getOpType*(self: VisualShaderNodeParticleRandomness): VisualShaderNodeParticleRandomness_OpType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className VisualShaderNodeParticleRandomness, "get_op_type", 3597061078)
  methodbind.ptrcall(self, [], VisualShaderNodeParticleRandomness_OpType)

template opType*(self: VisualShaderNodeParticleRandomness): untyped = self.getOpType()
template `opType=`*(self: VisualShaderNodeParticleRandomness; value) = self.setOpType(value)
