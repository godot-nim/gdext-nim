{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc setEnableDepthTest*(self: RDPipelineDepthStencilState; pMember: bool): void =
  expandMethodBind(className RDPipelineDepthStencilState, "set_enable_depth_test", 2586408642)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEnableDepthTest*(self: RDPipelineDepthStencilState): bool =
  expandMethodBind(className RDPipelineDepthStencilState, "get_enable_depth_test", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setEnableDepthWrite*(self: RDPipelineDepthStencilState; pMember: bool): void =
  expandMethodBind(className RDPipelineDepthStencilState, "set_enable_depth_write", 2586408642)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEnableDepthWrite*(self: RDPipelineDepthStencilState): bool =
  expandMethodBind(className RDPipelineDepthStencilState, "get_enable_depth_write", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setDepthCompareOperator*(self: RDPipelineDepthStencilState; pMember: RenderingDevice_CompareOperator): void =
  expandMethodBind(className RDPipelineDepthStencilState, "set_depth_compare_operator", 2573711505)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDepthCompareOperator*(self: RDPipelineDepthStencilState): RenderingDevice_CompareOperator =
  expandMethodBind(className RDPipelineDepthStencilState, "get_depth_compare_operator", 269730778)
  var ret: encoded RenderingDevice_CompareOperator
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_CompareOperator)

proc setEnableDepthRange*(self: RDPipelineDepthStencilState; pMember: bool): void =
  expandMethodBind(className RDPipelineDepthStencilState, "set_enable_depth_range", 2586408642)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEnableDepthRange*(self: RDPipelineDepthStencilState): bool =
  expandMethodBind(className RDPipelineDepthStencilState, "get_enable_depth_range", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setDepthRangeMin*(self: RDPipelineDepthStencilState; pMember: Float): void =
  expandMethodBind(className RDPipelineDepthStencilState, "set_depth_range_min", 373806689)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDepthRangeMin*(self: RDPipelineDepthStencilState): Float =
  expandMethodBind(className RDPipelineDepthStencilState, "get_depth_range_min", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setDepthRangeMax*(self: RDPipelineDepthStencilState; pMember: Float): void =
  expandMethodBind(className RDPipelineDepthStencilState, "set_depth_range_max", 373806689)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDepthRangeMax*(self: RDPipelineDepthStencilState): Float =
  expandMethodBind(className RDPipelineDepthStencilState, "get_depth_range_max", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setEnableStencil*(self: RDPipelineDepthStencilState; pMember: bool): void =
  expandMethodBind(className RDPipelineDepthStencilState, "set_enable_stencil", 2586408642)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEnableStencil*(self: RDPipelineDepthStencilState): bool =
  expandMethodBind(className RDPipelineDepthStencilState, "get_enable_stencil", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setFrontOpFail*(self: RDPipelineDepthStencilState; pMember: RenderingDevice_StencilOperation): void =
  expandMethodBind(className RDPipelineDepthStencilState, "set_front_op_fail", 2092799566)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFrontOpFail*(self: RDPipelineDepthStencilState): RenderingDevice_StencilOperation =
  expandMethodBind(className RDPipelineDepthStencilState, "get_front_op_fail", 1714732389)
  var ret: encoded RenderingDevice_StencilOperation
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_StencilOperation)

proc setFrontOpPass*(self: RDPipelineDepthStencilState; pMember: RenderingDevice_StencilOperation): void =
  expandMethodBind(className RDPipelineDepthStencilState, "set_front_op_pass", 2092799566)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFrontOpPass*(self: RDPipelineDepthStencilState): RenderingDevice_StencilOperation =
  expandMethodBind(className RDPipelineDepthStencilState, "get_front_op_pass", 1714732389)
  var ret: encoded RenderingDevice_StencilOperation
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_StencilOperation)

proc setFrontOpDepthFail*(self: RDPipelineDepthStencilState; pMember: RenderingDevice_StencilOperation): void =
  expandMethodBind(className RDPipelineDepthStencilState, "set_front_op_depth_fail", 2092799566)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFrontOpDepthFail*(self: RDPipelineDepthStencilState): RenderingDevice_StencilOperation =
  expandMethodBind(className RDPipelineDepthStencilState, "get_front_op_depth_fail", 1714732389)
  var ret: encoded RenderingDevice_StencilOperation
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_StencilOperation)

proc setFrontOpCompare*(self: RDPipelineDepthStencilState; pMember: RenderingDevice_CompareOperator): void =
  expandMethodBind(className RDPipelineDepthStencilState, "set_front_op_compare", 2573711505)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFrontOpCompare*(self: RDPipelineDepthStencilState): RenderingDevice_CompareOperator =
  expandMethodBind(className RDPipelineDepthStencilState, "get_front_op_compare", 269730778)
  var ret: encoded RenderingDevice_CompareOperator
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_CompareOperator)

proc setFrontOpCompareMask*(self: RDPipelineDepthStencilState; pMember: uint32): void =
  expandMethodBind(className RDPipelineDepthStencilState, "set_front_op_compare_mask", 1286410249)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFrontOpCompareMask*(self: RDPipelineDepthStencilState): uint32 =
  expandMethodBind(className RDPipelineDepthStencilState, "get_front_op_compare_mask", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setFrontOpWriteMask*(self: RDPipelineDepthStencilState; pMember: uint32): void =
  expandMethodBind(className RDPipelineDepthStencilState, "set_front_op_write_mask", 1286410249)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFrontOpWriteMask*(self: RDPipelineDepthStencilState): uint32 =
  expandMethodBind(className RDPipelineDepthStencilState, "get_front_op_write_mask", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setFrontOpReference*(self: RDPipelineDepthStencilState; pMember: uint32): void =
  expandMethodBind(className RDPipelineDepthStencilState, "set_front_op_reference", 1286410249)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFrontOpReference*(self: RDPipelineDepthStencilState): uint32 =
  expandMethodBind(className RDPipelineDepthStencilState, "get_front_op_reference", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setBackOpFail*(self: RDPipelineDepthStencilState; pMember: RenderingDevice_StencilOperation): void =
  expandMethodBind(className RDPipelineDepthStencilState, "set_back_op_fail", 2092799566)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBackOpFail*(self: RDPipelineDepthStencilState): RenderingDevice_StencilOperation =
  expandMethodBind(className RDPipelineDepthStencilState, "get_back_op_fail", 1714732389)
  var ret: encoded RenderingDevice_StencilOperation
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_StencilOperation)

proc setBackOpPass*(self: RDPipelineDepthStencilState; pMember: RenderingDevice_StencilOperation): void =
  expandMethodBind(className RDPipelineDepthStencilState, "set_back_op_pass", 2092799566)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBackOpPass*(self: RDPipelineDepthStencilState): RenderingDevice_StencilOperation =
  expandMethodBind(className RDPipelineDepthStencilState, "get_back_op_pass", 1714732389)
  var ret: encoded RenderingDevice_StencilOperation
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_StencilOperation)

proc setBackOpDepthFail*(self: RDPipelineDepthStencilState; pMember: RenderingDevice_StencilOperation): void =
  expandMethodBind(className RDPipelineDepthStencilState, "set_back_op_depth_fail", 2092799566)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBackOpDepthFail*(self: RDPipelineDepthStencilState): RenderingDevice_StencilOperation =
  expandMethodBind(className RDPipelineDepthStencilState, "get_back_op_depth_fail", 1714732389)
  var ret: encoded RenderingDevice_StencilOperation
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_StencilOperation)

proc setBackOpCompare*(self: RDPipelineDepthStencilState; pMember: RenderingDevice_CompareOperator): void =
  expandMethodBind(className RDPipelineDepthStencilState, "set_back_op_compare", 2573711505)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBackOpCompare*(self: RDPipelineDepthStencilState): RenderingDevice_CompareOperator =
  expandMethodBind(className RDPipelineDepthStencilState, "get_back_op_compare", 269730778)
  var ret: encoded RenderingDevice_CompareOperator
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_CompareOperator)

proc setBackOpCompareMask*(self: RDPipelineDepthStencilState; pMember: uint32): void =
  expandMethodBind(className RDPipelineDepthStencilState, "set_back_op_compare_mask", 1286410249)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBackOpCompareMask*(self: RDPipelineDepthStencilState): uint32 =
  expandMethodBind(className RDPipelineDepthStencilState, "get_back_op_compare_mask", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setBackOpWriteMask*(self: RDPipelineDepthStencilState; pMember: uint32): void =
  expandMethodBind(className RDPipelineDepthStencilState, "set_back_op_write_mask", 1286410249)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBackOpWriteMask*(self: RDPipelineDepthStencilState): uint32 =
  expandMethodBind(className RDPipelineDepthStencilState, "get_back_op_write_mask", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

proc setBackOpReference*(self: RDPipelineDepthStencilState; pMember: uint32): void =
  expandMethodBind(className RDPipelineDepthStencilState, "set_back_op_reference", 1286410249)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBackOpReference*(self: RDPipelineDepthStencilState): uint32 =
  expandMethodBind(className RDPipelineDepthStencilState, "get_back_op_reference", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

template enableDepthTest*(self: RDPipelineDepthStencilState): untyped = self.getEnableDepthTest()
template `enableDepthTest=`*(self: RDPipelineDepthStencilState; value) = self.setEnableDepthTest(value)

template enableDepthWrite*(self: RDPipelineDepthStencilState): untyped = self.getEnableDepthWrite()
template `enableDepthWrite=`*(self: RDPipelineDepthStencilState; value) = self.setEnableDepthWrite(value)

template depthCompareOperator*(self: RDPipelineDepthStencilState): untyped = self.getDepthCompareOperator()
template `depthCompareOperator=`*(self: RDPipelineDepthStencilState; value) = self.setDepthCompareOperator(value)

template enableDepthRange*(self: RDPipelineDepthStencilState): untyped = self.getEnableDepthRange()
template `enableDepthRange=`*(self: RDPipelineDepthStencilState; value) = self.setEnableDepthRange(value)

template depthRangeMin*(self: RDPipelineDepthStencilState): untyped = self.getDepthRangeMin()
template `depthRangeMin=`*(self: RDPipelineDepthStencilState; value) = self.setDepthRangeMin(value)

template depthRangeMax*(self: RDPipelineDepthStencilState): untyped = self.getDepthRangeMax()
template `depthRangeMax=`*(self: RDPipelineDepthStencilState; value) = self.setDepthRangeMax(value)

template enableStencil*(self: RDPipelineDepthStencilState): untyped = self.getEnableStencil()
template `enableStencil=`*(self: RDPipelineDepthStencilState; value) = self.setEnableStencil(value)

template frontOpFail*(self: RDPipelineDepthStencilState): untyped = self.getFrontOpFail()
template `frontOpFail=`*(self: RDPipelineDepthStencilState; value) = self.setFrontOpFail(value)

template frontOpPass*(self: RDPipelineDepthStencilState): untyped = self.getFrontOpPass()
template `frontOpPass=`*(self: RDPipelineDepthStencilState; value) = self.setFrontOpPass(value)

template frontOpDepthFail*(self: RDPipelineDepthStencilState): untyped = self.getFrontOpDepthFail()
template `frontOpDepthFail=`*(self: RDPipelineDepthStencilState; value) = self.setFrontOpDepthFail(value)

template frontOpCompare*(self: RDPipelineDepthStencilState): untyped = self.getFrontOpCompare()
template `frontOpCompare=`*(self: RDPipelineDepthStencilState; value) = self.setFrontOpCompare(value)

template frontOpCompareMask*(self: RDPipelineDepthStencilState): untyped = self.getFrontOpCompareMask()
template `frontOpCompareMask=`*(self: RDPipelineDepthStencilState; value) = self.setFrontOpCompareMask(value)

template frontOpWriteMask*(self: RDPipelineDepthStencilState): untyped = self.getFrontOpWriteMask()
template `frontOpWriteMask=`*(self: RDPipelineDepthStencilState; value) = self.setFrontOpWriteMask(value)

template frontOpReference*(self: RDPipelineDepthStencilState): untyped = self.getFrontOpReference()
template `frontOpReference=`*(self: RDPipelineDepthStencilState; value) = self.setFrontOpReference(value)

template backOpFail*(self: RDPipelineDepthStencilState): untyped = self.getBackOpFail()
template `backOpFail=`*(self: RDPipelineDepthStencilState; value) = self.setBackOpFail(value)

template backOpPass*(self: RDPipelineDepthStencilState): untyped = self.getBackOpPass()
template `backOpPass=`*(self: RDPipelineDepthStencilState; value) = self.setBackOpPass(value)

template backOpDepthFail*(self: RDPipelineDepthStencilState): untyped = self.getBackOpDepthFail()
template `backOpDepthFail=`*(self: RDPipelineDepthStencilState; value) = self.setBackOpDepthFail(value)

template backOpCompare*(self: RDPipelineDepthStencilState): untyped = self.getBackOpCompare()
template `backOpCompare=`*(self: RDPipelineDepthStencilState; value) = self.setBackOpCompare(value)

template backOpCompareMask*(self: RDPipelineDepthStencilState): untyped = self.getBackOpCompareMask()
template `backOpCompareMask=`*(self: RDPipelineDepthStencilState; value) = self.setBackOpCompareMask(value)

template backOpWriteMask*(self: RDPipelineDepthStencilState): untyped = self.getBackOpWriteMask()
template `backOpWriteMask=`*(self: RDPipelineDepthStencilState; value) = self.setBackOpWriteMask(value)

template backOpReference*(self: RDPipelineDepthStencilState): untyped = self.getBackOpReference()
template `backOpReference=`*(self: RDPipelineDepthStencilState; value) = self.setBackOpReference(value)

const RDPipelineDepthStencilState_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RDPipelineDepthStencilState]): Table[string, string] = RDPipelineDepthStencilState_vmap