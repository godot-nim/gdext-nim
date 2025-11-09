{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(RDPipelineColorBlendState, RefCounted)

proc setEnableLogicOp*(self: RDPipelineColorBlendState; pMember: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDPipelineColorBlendState, "set_enable_logic_op", 2586408642)
  methodbind.ptrcall(self, [getPtr pMember], void)

proc getEnableLogicOp*(self: RDPipelineColorBlendState): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDPipelineColorBlendState, "get_enable_logic_op", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setLogicOp*(self: RDPipelineColorBlendState; pMember: RenderingDevice_LogicOperation): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDPipelineColorBlendState, "set_logic_op", 3610841058)
  methodbind.ptrcall(self, [getPtr pMember], void)

proc getLogicOp*(self: RDPipelineColorBlendState): RenderingDevice_LogicOperation =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDPipelineColorBlendState, "get_logic_op", 988254690)
  methodbind.ptrcall(self, [], RenderingDevice_LogicOperation)

proc setBlendConstant*(self: RDPipelineColorBlendState; pMember: Color): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDPipelineColorBlendState, "set_blend_constant", 2920490490)
  methodbind.ptrcall(self, [getPtr pMember], void)

proc getBlendConstant*(self: RDPipelineColorBlendState): Color =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDPipelineColorBlendState, "get_blend_constant", 3444240500)
  methodbind.ptrcall(self, [], Color)

proc setAttachments*(self: RDPipelineColorBlendState; attachments: TypedArray[gdref RDPipelineColorBlendStateAttachment]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDPipelineColorBlendState, "set_attachments", 381264803)
  methodbind.ptrcall(self, [getPtr attachments], void)

proc getAttachments*(self: RDPipelineColorBlendState): TypedArray[gdref RDPipelineColorBlendStateAttachment] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDPipelineColorBlendState, "get_attachments", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[gdref RDPipelineColorBlendStateAttachment])

template enableLogicOp*(self: RDPipelineColorBlendState): untyped = self.getEnableLogicOp()
template `enableLogicOp=`*(self: RDPipelineColorBlendState; value) = self.setEnableLogicOp(value)

template logicOp*(self: RDPipelineColorBlendState): untyped = self.getLogicOp()
template `logicOp=`*(self: RDPipelineColorBlendState; value) = self.setLogicOp(value)

template blendConstant*(self: RDPipelineColorBlendState): untyped = self.getBlendConstant()
template `blendConstant=`*(self: RDPipelineColorBlendState; value) = self.setBlendConstant(value)

template attachments*(self: RDPipelineColorBlendState): untyped = self.getAttachments()
template `attachments=`*(self: RDPipelineColorBlendState; value) = self.setAttachments(value)
