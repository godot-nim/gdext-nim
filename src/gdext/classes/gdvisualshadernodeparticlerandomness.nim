{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdvisualshadernode; export gdvisualshadernode

proc setOpType*(self: VisualShaderNodeParticleRandomness; `type`: VisualShaderNodeParticleRandomness_OpType): void =
  expandMethodBind(className VisualShaderNodeParticleRandomness, "set_op_type", 2060089061)
  var `?param` = [getPtr `type`]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOpType*(self: VisualShaderNodeParticleRandomness): VisualShaderNodeParticleRandomness_OpType =
  expandMethodBind(className VisualShaderNodeParticleRandomness, "get_op_type", 3597061078)
  var ret: encoded VisualShaderNodeParticleRandomness_OpType
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(VisualShaderNodeParticleRandomness_OpType)

template opType*(self: VisualShaderNodeParticleRandomness): untyped = self.getOpType()
template `opType=`*(self: VisualShaderNodeParticleRandomness; value) = self.setOpType(value)

const VisualShaderNodeParticleRandomness_vmap =
  VisualShaderNode.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[VisualShaderNodeParticleRandomness]): Table[string, string] = VisualShaderNodeParticleRandomness_vmap