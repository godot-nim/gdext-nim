{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(RDShaderSource, RefCounted)

proc setStageSource*(self: RDShaderSource; stage: RenderingDevice_ShaderStage; source: String): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDShaderSource, "set_stage_source", 620821314)
  methodbind.ptrcall(self, [getPtr stage, getPtr source], void)

proc getStageSource*(self: RDShaderSource; stage: RenderingDevice_ShaderStage): String =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDShaderSource, "get_stage_source", 3354920045)
  methodbind.ptrcall(self, [getPtr stage], String)

proc setLanguage*(self: RDShaderSource; language: RenderingDevice_ShaderLanguage): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDShaderSource, "set_language", 3422186742)
  methodbind.ptrcall(self, [getPtr language], void)

proc getLanguage*(self: RDShaderSource): RenderingDevice_ShaderLanguage =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDShaderSource, "get_language", 1063538261)
  methodbind.ptrcall(self, [], RenderingDevice_ShaderLanguage)

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
