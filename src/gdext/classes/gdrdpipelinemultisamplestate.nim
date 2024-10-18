{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc setSampleCount*(self: RdPipelineMultisampleState; pMember: RenderingDevice_TextureSamples): void =
  expandMethodBind(className RdPipelineMultisampleState, "set_sample_count", 3774171498)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSampleCount*(self: RdPipelineMultisampleState): RenderingDevice_TextureSamples =
  expandMethodBind(className RdPipelineMultisampleState, "get_sample_count", 407791724)
  var ret: encoded RenderingDevice_TextureSamples
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_TextureSamples)

proc setEnableSampleShading*(self: RdPipelineMultisampleState; pMember: bool): void =
  expandMethodBind(className RdPipelineMultisampleState, "set_enable_sample_shading", 2586408642)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEnableSampleShading*(self: RdPipelineMultisampleState): bool =
  expandMethodBind(className RdPipelineMultisampleState, "get_enable_sample_shading", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setMinSampleShading*(self: RdPipelineMultisampleState; pMember: Float): void =
  expandMethodBind(className RdPipelineMultisampleState, "set_min_sample_shading", 373806689)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMinSampleShading*(self: RdPipelineMultisampleState): Float =
  expandMethodBind(className RdPipelineMultisampleState, "get_min_sample_shading", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setEnableAlphaToCoverage*(self: RdPipelineMultisampleState; pMember: bool): void =
  expandMethodBind(className RdPipelineMultisampleState, "set_enable_alpha_to_coverage", 2586408642)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEnableAlphaToCoverage*(self: RdPipelineMultisampleState): bool =
  expandMethodBind(className RdPipelineMultisampleState, "get_enable_alpha_to_coverage", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setEnableAlphaToOne*(self: RdPipelineMultisampleState; pMember: bool): void =
  expandMethodBind(className RdPipelineMultisampleState, "set_enable_alpha_to_one", 2586408642)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEnableAlphaToOne*(self: RdPipelineMultisampleState): bool =
  expandMethodBind(className RdPipelineMultisampleState, "get_enable_alpha_to_one", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setSampleMasks*(self: RdPipelineMultisampleState; masks: TypedArray[Int]): void =
  expandMethodBind(className RdPipelineMultisampleState, "set_sample_masks", 381264803)
  var `?param` = [getPtr masks]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSampleMasks*(self: RdPipelineMultisampleState): TypedArray[Int] =
  expandMethodBind(className RdPipelineMultisampleState, "get_sample_masks", 3995934104)
  var ret: encoded TypedArray[Int]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[Int])

template sampleCount*(self: RdPipelineMultisampleState): untyped = self.getSampleCount()
template `sampleCount=`*(self: RdPipelineMultisampleState; value) = self.setSampleCount(value)

template enableSampleShading*(self: RdPipelineMultisampleState): untyped = self.getEnableSampleShading()
template `enableSampleShading=`*(self: RdPipelineMultisampleState; value) = self.setEnableSampleShading(value)

template minSampleShading*(self: RdPipelineMultisampleState): untyped = self.getMinSampleShading()
template `minSampleShading=`*(self: RdPipelineMultisampleState; value) = self.setMinSampleShading(value)

template enableAlphaToCoverage*(self: RdPipelineMultisampleState): untyped = self.getEnableAlphaToCoverage()
template `enableAlphaToCoverage=`*(self: RdPipelineMultisampleState; value) = self.setEnableAlphaToCoverage(value)

template enableAlphaToOne*(self: RdPipelineMultisampleState): untyped = self.getEnableAlphaToOne()
template `enableAlphaToOne=`*(self: RdPipelineMultisampleState; value) = self.setEnableAlphaToOne(value)

template sampleMasks*(self: RdPipelineMultisampleState): untyped = self.getSampleMasks()
template `sampleMasks=`*(self: RdPipelineMultisampleState; value) = self.setSampleMasks(value)

const RdPipelineMultisampleState_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RdPipelineMultisampleState]): Table[string, string] = RdPipelineMultisampleState_vmap