{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc setStageSource*(self: RdShaderSource; stage: RenderingDevice_ShaderStage; source: String): void =
  expandMethodBind(className RdShaderSource, "set_stage_source", 620821314)
  var `?param` = [getPtr stage, getPtr source]
  methodbind.ptrcall(self, addr `?param`[0])

proc getStageSource*(self: RdShaderSource; stage: RenderingDevice_ShaderStage): String =
  expandMethodBind(className RdShaderSource, "get_stage_source", 3354920045)
  var `?param` = [getPtr stage]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc setLanguage*(self: RdShaderSource; language: RenderingDevice_ShaderLanguage): void =
  expandMethodBind(className RdShaderSource, "set_language", 3422186742)
  var `?param` = [getPtr language]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLanguage*(self: RdShaderSource): RenderingDevice_ShaderLanguage =
  expandMethodBind(className RdShaderSource, "get_language", 1063538261)
  var ret: encoded RenderingDevice_ShaderLanguage
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_ShaderLanguage)

template sourceVertex*(self: RdShaderSource): untyped = self.getStageSource(RenderingDevice_ShaderStage(0))
template `sourceVertex=`*(self: RdShaderSource; value) = self.setStageSource(RenderingDevice_ShaderStage(0), value)

template sourceFragment*(self: RdShaderSource): untyped = self.getStageSource(RenderingDevice_ShaderStage(1))
template `sourceFragment=`*(self: RdShaderSource; value) = self.setStageSource(RenderingDevice_ShaderStage(1), value)

template sourceTesselationControl*(self: RdShaderSource): untyped = self.getStageSource(RenderingDevice_ShaderStage(2))
template `sourceTesselationControl=`*(self: RdShaderSource; value) = self.setStageSource(RenderingDevice_ShaderStage(2), value)

template sourceTesselationEvaluation*(self: RdShaderSource): untyped = self.getStageSource(RenderingDevice_ShaderStage(3))
template `sourceTesselationEvaluation=`*(self: RdShaderSource; value) = self.setStageSource(RenderingDevice_ShaderStage(3), value)

template sourceCompute*(self: RdShaderSource): untyped = self.getStageSource(RenderingDevice_ShaderStage(4))
template `sourceCompute=`*(self: RdShaderSource; value) = self.setStageSource(RenderingDevice_ShaderStage(4), value)

template language*(self: RdShaderSource): untyped = self.getLanguage()
template `language=`*(self: RdShaderSource; value) = self.setLanguage(value)

const RdShaderSource_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RdShaderSource]): Table[string, string] = RdShaderSource_vmap