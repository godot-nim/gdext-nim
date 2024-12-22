{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc setEnableLogicOp*(self: RDPipelineColorBlendState; pMember: bool): void =
  expandMethodBind(className RDPipelineColorBlendState, "set_enable_logic_op", 2586408642)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEnableLogicOp*(self: RDPipelineColorBlendState): bool =
  expandMethodBind(className RDPipelineColorBlendState, "get_enable_logic_op", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setLogicOp*(self: RDPipelineColorBlendState; pMember: RenderingDevice_LogicOperation): void =
  expandMethodBind(className RDPipelineColorBlendState, "set_logic_op", 3610841058)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLogicOp*(self: RDPipelineColorBlendState): RenderingDevice_LogicOperation =
  expandMethodBind(className RDPipelineColorBlendState, "get_logic_op", 988254690)
  var ret: encoded RenderingDevice_LogicOperation
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_LogicOperation)

proc setBlendConstant*(self: RDPipelineColorBlendState; pMember: Color): void =
  expandMethodBind(className RDPipelineColorBlendState, "set_blend_constant", 2920490490)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBlendConstant*(self: RDPipelineColorBlendState): Color =
  expandMethodBind(className RDPipelineColorBlendState, "get_blend_constant", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Color)

proc setAttachments*(self: RDPipelineColorBlendState; attachments: TypedArray[RDPipelineColorBlendStateAttachment]): void =
  expandMethodBind(className RDPipelineColorBlendState, "set_attachments", 381264803)
  var `?param` = [getPtr attachments]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAttachments*(self: RDPipelineColorBlendState): TypedArray[RDPipelineColorBlendStateAttachment] =
  expandMethodBind(className RDPipelineColorBlendState, "get_attachments", 3995934104)
  var ret: encoded TypedArray[RDPipelineColorBlendStateAttachment]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[RDPipelineColorBlendStateAttachment])

template enableLogicOp*(self: RDPipelineColorBlendState): untyped = self.getEnableLogicOp()
template `enableLogicOp=`*(self: RDPipelineColorBlendState; value) = self.setEnableLogicOp(value)

template logicOp*(self: RDPipelineColorBlendState): untyped = self.getLogicOp()
template `logicOp=`*(self: RDPipelineColorBlendState; value) = self.setLogicOp(value)

template blendConstant*(self: RDPipelineColorBlendState): untyped = self.getBlendConstant()
template `blendConstant=`*(self: RDPipelineColorBlendState; value) = self.setBlendConstant(value)

template attachments*(self: RDPipelineColorBlendState): untyped = self.getAttachments()
template `attachments=`*(self: RDPipelineColorBlendState; value) = self.setAttachments(value)

const RDPipelineColorBlendState_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RDPipelineColorBlendState]): Table[string, string] = RDPipelineColorBlendState_vmap