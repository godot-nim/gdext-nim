{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc setAsMix*(self: RdPipelineColorBlendStateAttachment): void =
  expandMethodBind(className RdPipelineColorBlendStateAttachment, "set_as_mix", 3218959716)
  methodbind.ptrcall(self, nil)

proc setEnableBlend*(self: RdPipelineColorBlendStateAttachment; pMember: bool): void =
  expandMethodBind(className RdPipelineColorBlendStateAttachment, "set_enable_blend", 2586408642)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEnableBlend*(self: RdPipelineColorBlendStateAttachment): bool =
  expandMethodBind(className RdPipelineColorBlendStateAttachment, "get_enable_blend", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setSrcColorBlendFactor*(self: RdPipelineColorBlendStateAttachment; pMember: RenderingDevice_BlendFactor): void =
  expandMethodBind(className RdPipelineColorBlendStateAttachment, "set_src_color_blend_factor", 2251019273)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSrcColorBlendFactor*(self: RdPipelineColorBlendStateAttachment): RenderingDevice_BlendFactor =
  expandMethodBind(className RdPipelineColorBlendStateAttachment, "get_src_color_blend_factor", 3691288359)
  var ret: encoded RenderingDevice_BlendFactor
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_BlendFactor)

proc setDstColorBlendFactor*(self: RdPipelineColorBlendStateAttachment; pMember: RenderingDevice_BlendFactor): void =
  expandMethodBind(className RdPipelineColorBlendStateAttachment, "set_dst_color_blend_factor", 2251019273)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDstColorBlendFactor*(self: RdPipelineColorBlendStateAttachment): RenderingDevice_BlendFactor =
  expandMethodBind(className RdPipelineColorBlendStateAttachment, "get_dst_color_blend_factor", 3691288359)
  var ret: encoded RenderingDevice_BlendFactor
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_BlendFactor)

proc setColorBlendOp*(self: RdPipelineColorBlendStateAttachment; pMember: RenderingDevice_BlendOperation): void =
  expandMethodBind(className RdPipelineColorBlendStateAttachment, "set_color_blend_op", 3073022720)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getColorBlendOp*(self: RdPipelineColorBlendStateAttachment): RenderingDevice_BlendOperation =
  expandMethodBind(className RdPipelineColorBlendStateAttachment, "get_color_blend_op", 1385093561)
  var ret: encoded RenderingDevice_BlendOperation
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_BlendOperation)

proc setSrcAlphaBlendFactor*(self: RdPipelineColorBlendStateAttachment; pMember: RenderingDevice_BlendFactor): void =
  expandMethodBind(className RdPipelineColorBlendStateAttachment, "set_src_alpha_blend_factor", 2251019273)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSrcAlphaBlendFactor*(self: RdPipelineColorBlendStateAttachment): RenderingDevice_BlendFactor =
  expandMethodBind(className RdPipelineColorBlendStateAttachment, "get_src_alpha_blend_factor", 3691288359)
  var ret: encoded RenderingDevice_BlendFactor
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_BlendFactor)

proc setDstAlphaBlendFactor*(self: RdPipelineColorBlendStateAttachment; pMember: RenderingDevice_BlendFactor): void =
  expandMethodBind(className RdPipelineColorBlendStateAttachment, "set_dst_alpha_blend_factor", 2251019273)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDstAlphaBlendFactor*(self: RdPipelineColorBlendStateAttachment): RenderingDevice_BlendFactor =
  expandMethodBind(className RdPipelineColorBlendStateAttachment, "get_dst_alpha_blend_factor", 3691288359)
  var ret: encoded RenderingDevice_BlendFactor
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_BlendFactor)

proc setAlphaBlendOp*(self: RdPipelineColorBlendStateAttachment; pMember: RenderingDevice_BlendOperation): void =
  expandMethodBind(className RdPipelineColorBlendStateAttachment, "set_alpha_blend_op", 3073022720)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAlphaBlendOp*(self: RdPipelineColorBlendStateAttachment): RenderingDevice_BlendOperation =
  expandMethodBind(className RdPipelineColorBlendStateAttachment, "get_alpha_blend_op", 1385093561)
  var ret: encoded RenderingDevice_BlendOperation
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_BlendOperation)

proc setWriteR*(self: RdPipelineColorBlendStateAttachment; pMember: bool): void =
  expandMethodBind(className RdPipelineColorBlendStateAttachment, "set_write_r", 2586408642)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getWriteR*(self: RdPipelineColorBlendStateAttachment): bool =
  expandMethodBind(className RdPipelineColorBlendStateAttachment, "get_write_r", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setWriteG*(self: RdPipelineColorBlendStateAttachment; pMember: bool): void =
  expandMethodBind(className RdPipelineColorBlendStateAttachment, "set_write_g", 2586408642)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getWriteG*(self: RdPipelineColorBlendStateAttachment): bool =
  expandMethodBind(className RdPipelineColorBlendStateAttachment, "get_write_g", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setWriteB*(self: RdPipelineColorBlendStateAttachment; pMember: bool): void =
  expandMethodBind(className RdPipelineColorBlendStateAttachment, "set_write_b", 2586408642)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getWriteB*(self: RdPipelineColorBlendStateAttachment): bool =
  expandMethodBind(className RdPipelineColorBlendStateAttachment, "get_write_b", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setWriteA*(self: RdPipelineColorBlendStateAttachment; pMember: bool): void =
  expandMethodBind(className RdPipelineColorBlendStateAttachment, "set_write_a", 2586408642)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getWriteA*(self: RdPipelineColorBlendStateAttachment): bool =
  expandMethodBind(className RdPipelineColorBlendStateAttachment, "get_write_a", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template enableBlend*(self: RdPipelineColorBlendStateAttachment): untyped = self.getEnableBlend()
template `enableBlend=`*(self: RdPipelineColorBlendStateAttachment; value) = self.setEnableBlend(value)

template srcColorBlendFactor*(self: RdPipelineColorBlendStateAttachment): untyped = self.getSrcColorBlendFactor()
template `srcColorBlendFactor=`*(self: RdPipelineColorBlendStateAttachment; value) = self.setSrcColorBlendFactor(value)

template dstColorBlendFactor*(self: RdPipelineColorBlendStateAttachment): untyped = self.getDstColorBlendFactor()
template `dstColorBlendFactor=`*(self: RdPipelineColorBlendStateAttachment; value) = self.setDstColorBlendFactor(value)

template colorBlendOp*(self: RdPipelineColorBlendStateAttachment): untyped = self.getColorBlendOp()
template `colorBlendOp=`*(self: RdPipelineColorBlendStateAttachment; value) = self.setColorBlendOp(value)

template srcAlphaBlendFactor*(self: RdPipelineColorBlendStateAttachment): untyped = self.getSrcAlphaBlendFactor()
template `srcAlphaBlendFactor=`*(self: RdPipelineColorBlendStateAttachment; value) = self.setSrcAlphaBlendFactor(value)

template dstAlphaBlendFactor*(self: RdPipelineColorBlendStateAttachment): untyped = self.getDstAlphaBlendFactor()
template `dstAlphaBlendFactor=`*(self: RdPipelineColorBlendStateAttachment; value) = self.setDstAlphaBlendFactor(value)

template alphaBlendOp*(self: RdPipelineColorBlendStateAttachment): untyped = self.getAlphaBlendOp()
template `alphaBlendOp=`*(self: RdPipelineColorBlendStateAttachment; value) = self.setAlphaBlendOp(value)

template writeR*(self: RdPipelineColorBlendStateAttachment): untyped = self.getWriteR()
template `writeR=`*(self: RdPipelineColorBlendStateAttachment; value) = self.setWriteR(value)

template writeG*(self: RdPipelineColorBlendStateAttachment): untyped = self.getWriteG()
template `writeG=`*(self: RdPipelineColorBlendStateAttachment; value) = self.setWriteG(value)

template writeB*(self: RdPipelineColorBlendStateAttachment): untyped = self.getWriteB()
template `writeB=`*(self: RdPipelineColorBlendStateAttachment; value) = self.setWriteB(value)

template writeA*(self: RdPipelineColorBlendStateAttachment): untyped = self.getWriteA()
template `writeA=`*(self: RdPipelineColorBlendStateAttachment; value) = self.setWriteA(value)

const RdPipelineColorBlendStateAttachment_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RdPipelineColorBlendStateAttachment]): Table[string, string] = RdPipelineColorBlendStateAttachment_vmap