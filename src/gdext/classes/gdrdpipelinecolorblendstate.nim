{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc setEnableLogicOp*(self: RdPipelineColorBlendState; pMember: bool): void =
  expandMethodBind(className RdPipelineColorBlendState, "set_enable_logic_op", 2586408642)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEnableLogicOp*(self: RdPipelineColorBlendState): bool =
  expandMethodBind(className RdPipelineColorBlendState, "get_enable_logic_op", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setLogicOp*(self: RdPipelineColorBlendState; pMember: RenderingDevice_LogicOperation): void =
  expandMethodBind(className RdPipelineColorBlendState, "set_logic_op", 3610841058)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLogicOp*(self: RdPipelineColorBlendState): RenderingDevice_LogicOperation =
  expandMethodBind(className RdPipelineColorBlendState, "get_logic_op", 988254690)
  var ret: encoded RenderingDevice_LogicOperation
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_LogicOperation)

proc setBlendConstant*(self: RdPipelineColorBlendState; pMember: Color): void =
  expandMethodBind(className RdPipelineColorBlendState, "set_blend_constant", 2920490490)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getBlendConstant*(self: RdPipelineColorBlendState): Color =
  expandMethodBind(className RdPipelineColorBlendState, "get_blend_constant", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Color)

proc setAttachments*(self: RdPipelineColorBlendState; attachments: TypedArray[RdPipelineColorBlendStateAttachment]): void =
  expandMethodBind(className RdPipelineColorBlendState, "set_attachments", 381264803)
  var `?param` = [getPtr attachments]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAttachments*(self: RdPipelineColorBlendState): TypedArray[RdPipelineColorBlendStateAttachment] =
  expandMethodBind(className RdPipelineColorBlendState, "get_attachments", 3995934104)
  var ret: encoded TypedArray[RdPipelineColorBlendStateAttachment]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[RdPipelineColorBlendStateAttachment])

template enableLogicOp*(self: RdPipelineColorBlendState): untyped = self.getEnableLogicOp()
template `enableLogicOp=`*(self: RdPipelineColorBlendState; value) = self.setEnableLogicOp(value)

template logicOp*(self: RdPipelineColorBlendState): untyped = self.getLogicOp()
template `logicOp=`*(self: RdPipelineColorBlendState; value) = self.setLogicOp(value)

template blendConstant*(self: RdPipelineColorBlendState): untyped = self.getBlendConstant()
template `blendConstant=`*(self: RdPipelineColorBlendState; value) = self.setBlendConstant(value)

template attachments*(self: RdPipelineColorBlendState): untyped = self.getAttachments()
template `attachments=`*(self: RdPipelineColorBlendState; value) = self.setAttachments(value)

const RdPipelineColorBlendState_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RdPipelineColorBlendState]): Table[string, string] = RdPipelineColorBlendState_vmap