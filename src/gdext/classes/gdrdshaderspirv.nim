{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc setStageBytecode*(self: RDShaderSPIRV; stage: RenderingDevice_ShaderStage; bytecode: PackedByteArray): void =
  expandMethodBind(className RDShaderSPIRV, "set_stage_bytecode", 3514097977)
  methodbind.ptrcall(self, [getPtr stage, getPtr bytecode])

proc getStageBytecode*(self: RDShaderSPIRV; stage: RenderingDevice_ShaderStage): PackedByteArray =
  expandMethodBind(className RDShaderSPIRV, "get_stage_bytecode", 3816765404)
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, [getPtr stage], addr ret)
  (addr ret).decode_result(PackedByteArray)

proc setStageCompileError*(self: RDShaderSPIRV; stage: RenderingDevice_ShaderStage; compileError: String): void =
  expandMethodBind(className RDShaderSPIRV, "set_stage_compile_error", 620821314)
  methodbind.ptrcall(self, [getPtr stage, getPtr compileError])

proc getStageCompileError*(self: RDShaderSPIRV; stage: RenderingDevice_ShaderStage): String =
  expandMethodBind(className RDShaderSPIRV, "get_stage_compile_error", 3354920045)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr stage], addr ret)
  (addr ret).decode_result(String)

template bytecodeVertex*(self: RDShaderSPIRV): untyped = self.getStageBytecode(RenderingDevice_ShaderStage(0))
template `bytecodeVertex=`*(self: RDShaderSPIRV; value) = self.setStageBytecode(RenderingDevice_ShaderStage(0), value)

template bytecodeFragment*(self: RDShaderSPIRV): untyped = self.getStageBytecode(RenderingDevice_ShaderStage(1))
template `bytecodeFragment=`*(self: RDShaderSPIRV; value) = self.setStageBytecode(RenderingDevice_ShaderStage(1), value)

template bytecodeTesselationControl*(self: RDShaderSPIRV): untyped = self.getStageBytecode(RenderingDevice_ShaderStage(2))
template `bytecodeTesselationControl=`*(self: RDShaderSPIRV; value) = self.setStageBytecode(RenderingDevice_ShaderStage(2), value)

template bytecodeTesselationEvaluation*(self: RDShaderSPIRV): untyped = self.getStageBytecode(RenderingDevice_ShaderStage(3))
template `bytecodeTesselationEvaluation=`*(self: RDShaderSPIRV; value) = self.setStageBytecode(RenderingDevice_ShaderStage(3), value)

template bytecodeCompute*(self: RDShaderSPIRV): untyped = self.getStageBytecode(RenderingDevice_ShaderStage(4))
template `bytecodeCompute=`*(self: RDShaderSPIRV; value) = self.setStageBytecode(RenderingDevice_ShaderStage(4), value)

template compileErrorVertex*(self: RDShaderSPIRV): untyped = self.getStageCompileError(RenderingDevice_ShaderStage(0))
template `compileErrorVertex=`*(self: RDShaderSPIRV; value) = self.setStageCompileError(RenderingDevice_ShaderStage(0), value)

template compileErrorFragment*(self: RDShaderSPIRV): untyped = self.getStageCompileError(RenderingDevice_ShaderStage(1))
template `compileErrorFragment=`*(self: RDShaderSPIRV; value) = self.setStageCompileError(RenderingDevice_ShaderStage(1), value)

template compileErrorTesselationControl*(self: RDShaderSPIRV): untyped = self.getStageCompileError(RenderingDevice_ShaderStage(2))
template `compileErrorTesselationControl=`*(self: RDShaderSPIRV; value) = self.setStageCompileError(RenderingDevice_ShaderStage(2), value)

template compileErrorTesselationEvaluation*(self: RDShaderSPIRV): untyped = self.getStageCompileError(RenderingDevice_ShaderStage(3))
template `compileErrorTesselationEvaluation=`*(self: RDShaderSPIRV; value) = self.setStageCompileError(RenderingDevice_ShaderStage(3), value)

template compileErrorCompute*(self: RDShaderSPIRV): untyped = self.getStageCompileError(RenderingDevice_ShaderStage(4))
template `compileErrorCompute=`*(self: RDShaderSPIRV; value) = self.setStageCompileError(RenderingDevice_ShaderStage(4), value)

const RDShaderSPIRV_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RDShaderSPIRV]): Table[string, string] = RDShaderSPIRV_vmap