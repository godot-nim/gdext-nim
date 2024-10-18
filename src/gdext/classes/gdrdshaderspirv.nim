{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc setStageBytecode*(self: RdShaderSpirv; stage: RenderingDevice_ShaderStage; bytecode: PackedByteArray): void =
  expandMethodBind(className RdShaderSpirv, "set_stage_bytecode", 3514097977)
  var `?param` = [getPtr stage, getPtr bytecode]
  methodbind.ptrcall(self, addr `?param`[0])

proc getStageBytecode*(self: RdShaderSpirv; stage: RenderingDevice_ShaderStage): PackedByteArray =
  expandMethodBind(className RdShaderSpirv, "get_stage_bytecode", 3816765404)
  var `?param` = [getPtr stage]
  var ret: encoded PackedByteArray
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedByteArray)

proc setStageCompileError*(self: RdShaderSpirv; stage: RenderingDevice_ShaderStage; compileError: String): void =
  expandMethodBind(className RdShaderSpirv, "set_stage_compile_error", 620821314)
  var `?param` = [getPtr stage, getPtr compileError]
  methodbind.ptrcall(self, addr `?param`[0])

proc getStageCompileError*(self: RdShaderSpirv; stage: RenderingDevice_ShaderStage): String =
  expandMethodBind(className RdShaderSpirv, "get_stage_compile_error", 3354920045)
  var `?param` = [getPtr stage]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

template bytecodeVertex*(self: RdShaderSpirv): untyped = self.getStageBytecode(0)
template `bytecodeVertex=`*(self: RdShaderSpirv; value) = self.setStageBytecode(0, value)

template bytecodeFragment*(self: RdShaderSpirv): untyped = self.getStageBytecode(1)
template `bytecodeFragment=`*(self: RdShaderSpirv; value) = self.setStageBytecode(1, value)

template bytecodeTesselationControl*(self: RdShaderSpirv): untyped = self.getStageBytecode(2)
template `bytecodeTesselationControl=`*(self: RdShaderSpirv; value) = self.setStageBytecode(2, value)

template bytecodeTesselationEvaluation*(self: RdShaderSpirv): untyped = self.getStageBytecode(3)
template `bytecodeTesselationEvaluation=`*(self: RdShaderSpirv; value) = self.setStageBytecode(3, value)

template bytecodeCompute*(self: RdShaderSpirv): untyped = self.getStageBytecode(4)
template `bytecodeCompute=`*(self: RdShaderSpirv; value) = self.setStageBytecode(4, value)

template compileErrorVertex*(self: RdShaderSpirv): untyped = self.getStageCompileError(0)
template `compileErrorVertex=`*(self: RdShaderSpirv; value) = self.setStageCompileError(0, value)

template compileErrorFragment*(self: RdShaderSpirv): untyped = self.getStageCompileError(1)
template `compileErrorFragment=`*(self: RdShaderSpirv; value) = self.setStageCompileError(1, value)

template compileErrorTesselationControl*(self: RdShaderSpirv): untyped = self.getStageCompileError(2)
template `compileErrorTesselationControl=`*(self: RdShaderSpirv; value) = self.setStageCompileError(2, value)

template compileErrorTesselationEvaluation*(self: RdShaderSpirv): untyped = self.getStageCompileError(3)
template `compileErrorTesselationEvaluation=`*(self: RdShaderSpirv; value) = self.setStageCompileError(3, value)

template compileErrorCompute*(self: RdShaderSpirv): untyped = self.getStageCompileError(4)
template `compileErrorCompute=`*(self: RdShaderSpirv; value) = self.setStageCompileError(4, value)

const RdShaderSpirv_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RdShaderSpirv]): Table[string, string] = RdShaderSpirv_vmap