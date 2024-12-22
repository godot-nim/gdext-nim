{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc setSampleCount*(self: RDPipelineMultisampleState; pMember: RenderingDevice_TextureSamples): void =
  expandMethodBind(className RDPipelineMultisampleState, "set_sample_count", 3774171498)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSampleCount*(self: RDPipelineMultisampleState): RenderingDevice_TextureSamples =
  expandMethodBind(className RDPipelineMultisampleState, "get_sample_count", 407791724)
  var ret: encoded RenderingDevice_TextureSamples
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_TextureSamples)

proc setEnableSampleShading*(self: RDPipelineMultisampleState; pMember: bool): void =
  expandMethodBind(className RDPipelineMultisampleState, "set_enable_sample_shading", 2586408642)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEnableSampleShading*(self: RDPipelineMultisampleState): bool =
  expandMethodBind(className RDPipelineMultisampleState, "get_enable_sample_shading", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setMinSampleShading*(self: RDPipelineMultisampleState; pMember: Float): void =
  expandMethodBind(className RDPipelineMultisampleState, "set_min_sample_shading", 373806689)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMinSampleShading*(self: RDPipelineMultisampleState): Float =
  expandMethodBind(className RDPipelineMultisampleState, "get_min_sample_shading", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setEnableAlphaToCoverage*(self: RDPipelineMultisampleState; pMember: bool): void =
  expandMethodBind(className RDPipelineMultisampleState, "set_enable_alpha_to_coverage", 2586408642)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEnableAlphaToCoverage*(self: RDPipelineMultisampleState): bool =
  expandMethodBind(className RDPipelineMultisampleState, "get_enable_alpha_to_coverage", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setEnableAlphaToOne*(self: RDPipelineMultisampleState; pMember: bool): void =
  expandMethodBind(className RDPipelineMultisampleState, "set_enable_alpha_to_one", 2586408642)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEnableAlphaToOne*(self: RDPipelineMultisampleState): bool =
  expandMethodBind(className RDPipelineMultisampleState, "get_enable_alpha_to_one", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setSampleMasks*(self: RDPipelineMultisampleState; masks: TypedArray[Int]): void =
  expandMethodBind(className RDPipelineMultisampleState, "set_sample_masks", 381264803)
  var `?param` = [getPtr masks]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSampleMasks*(self: RDPipelineMultisampleState): TypedArray[Int] =
  expandMethodBind(className RDPipelineMultisampleState, "get_sample_masks", 3995934104)
  var ret: encoded TypedArray[Int]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[Int])

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

const RDPipelineMultisampleState_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RDPipelineMultisampleState]): Table[string, string] = RDPipelineMultisampleState_vmap