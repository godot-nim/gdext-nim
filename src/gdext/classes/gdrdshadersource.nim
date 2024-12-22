{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc setStageSource*(self: RDShaderSource; stage: RenderingDevice_ShaderStage; source: String): void =
  expandMethodBind(className RDShaderSource, "set_stage_source", 620821314)
  var `?param` = [getPtr stage, getPtr source]
  methodbind.ptrcall(self, addr `?param`[0])

proc getStageSource*(self: RDShaderSource; stage: RenderingDevice_ShaderStage): String =
  expandMethodBind(className RDShaderSource, "get_stage_source", 3354920045)
  var `?param` = [getPtr stage]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc setLanguage*(self: RDShaderSource; language: RenderingDevice_ShaderLanguage): void =
  expandMethodBind(className RDShaderSource, "set_language", 3422186742)
  var `?param` = [getPtr language]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLanguage*(self: RDShaderSource): RenderingDevice_ShaderLanguage =
  expandMethodBind(className RDShaderSource, "get_language", 1063538261)
  var ret: encoded RenderingDevice_ShaderLanguage
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_ShaderLanguage)

template sourceVertex*(self: RDShaderSource): untyped = self.getStageSource(RenderingDevice_ShaderStage(0))
template `sourceVertex=`*(self: RDShaderSource; value) = self.setStageSource(RenderingDevice_ShaderStage(0), value)

template sourceFragment*(self: RDShaderSource): untyped = self.getStageSource(RenderingDevice_ShaderStage(1))
template `sourceFragment=`*(self: RDShaderSource; value) = self.setStageSource(RenderingDevice_ShaderStage(1), value)

template sourceTesselationControl*(self: RDShaderSource): untyped = self.getStageSource(RenderingDevice_ShaderStage(2))
template `sourceTesselationControl=`*(self: RDShaderSource; value) = self.setStageSource(RenderingDevice_ShaderStage(2), value)

template sourceTesselationEvaluation*(self: RDShaderSource): untyped = self.getStageSource(RenderingDevice_ShaderStage(3))
template `sourceTesselationEvaluation=`*(self: RDShaderSource; value) = self.setStageSource(RenderingDevice_ShaderStage(3), value)

template sourceCompute*(self: RDShaderSource): untyped = self.getStageSource(RenderingDevice_ShaderStage(4))
template `sourceCompute=`*(self: RDShaderSource; value) = self.setStageSource(RenderingDevice_ShaderStage(4), value)

template language*(self: RDShaderSource): untyped = self.getLanguage()
template `language=`*(self: RDShaderSource; value) = self.setLanguage(value)

const RDShaderSource_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RDShaderSource]): Table[string, string] = RDShaderSource_vmap