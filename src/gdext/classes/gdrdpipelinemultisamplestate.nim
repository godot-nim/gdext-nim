{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(RDPipelineMultisampleState, RefCounted)

proc setSampleCount*(self: RDPipelineMultisampleState; pMember: RenderingDevice_TextureSamples): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDPipelineMultisampleState, "set_sample_count", 3774171498)
  methodbind.ptrcall(self, [getPtr pMember], void)

proc getSampleCount*(self: RDPipelineMultisampleState): RenderingDevice_TextureSamples =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDPipelineMultisampleState, "get_sample_count", 407791724)
  methodbind.ptrcall(self, [], RenderingDevice_TextureSamples)

proc setEnableSampleShading*(self: RDPipelineMultisampleState; pMember: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDPipelineMultisampleState, "set_enable_sample_shading", 2586408642)
  methodbind.ptrcall(self, [getPtr pMember], void)

proc getEnableSampleShading*(self: RDPipelineMultisampleState): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDPipelineMultisampleState, "get_enable_sample_shading", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setMinSampleShading*(self: RDPipelineMultisampleState; pMember: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDPipelineMultisampleState, "set_min_sample_shading", 373806689)
  methodbind.ptrcall(self, [getPtr pMember], void)

proc getMinSampleShading*(self: RDPipelineMultisampleState): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDPipelineMultisampleState, "get_min_sample_shading", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setEnableAlphaToCoverage*(self: RDPipelineMultisampleState; pMember: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDPipelineMultisampleState, "set_enable_alpha_to_coverage", 2586408642)
  methodbind.ptrcall(self, [getPtr pMember], void)

proc getEnableAlphaToCoverage*(self: RDPipelineMultisampleState): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDPipelineMultisampleState, "get_enable_alpha_to_coverage", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setEnableAlphaToOne*(self: RDPipelineMultisampleState; pMember: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDPipelineMultisampleState, "set_enable_alpha_to_one", 2586408642)
  methodbind.ptrcall(self, [getPtr pMember], void)

proc getEnableAlphaToOne*(self: RDPipelineMultisampleState): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDPipelineMultisampleState, "get_enable_alpha_to_one", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setSampleMasks*(self: RDPipelineMultisampleState; masks: TypedArray[Int]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDPipelineMultisampleState, "set_sample_masks", 381264803)
  methodbind.ptrcall(self, [getPtr masks], void)

proc getSampleMasks*(self: RDPipelineMultisampleState): TypedArray[Int] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDPipelineMultisampleState, "get_sample_masks", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[Int])

template sampleCount*(self: RDPipelineMultisampleState): untyped = self.getSampleCount()
template `sampleCount=`*(self: RDPipelineMultisampleState; value) = self.setSampleCount(value)

template enableSampleShading*(self: RDPipelineMultisampleState): untyped = self.getEnableSampleShading()
template `enableSampleShading=`*(self: RDPipelineMultisampleState; value) = self.setEnableSampleShading(value)

template minSampleShading*(self: RDPipelineMultisampleState): untyped = self.getMinSampleShading()
template `minSampleShading=`*(self: RDPipelineMultisampleState; value) = self.setMinSampleShading(value)

template enableAlphaToCoverage*(self: RDPipelineMultisampleState): untyped = self.getEnableAlphaToCoverage()
template `enableAlphaToCoverage=`*(self: RDPipelineMultisampleState; value) = self.setEnableAlphaToCoverage(value)

template enableAlphaToOne*(self: RDPipelineMultisampleState): untyped = self.getEnableAlphaToOne()
template `enableAlphaToOne=`*(self: RDPipelineMultisampleState; value) = self.setEnableAlphaToOne(value)

template sampleMasks*(self: RDPipelineMultisampleState): untyped = self.getSampleMasks()
template `sampleMasks=`*(self: RDPipelineMultisampleState; value) = self.setSampleMasks(value)
