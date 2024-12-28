{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc setAsMix*(self: RDPipelineColorBlendStateAttachment): void =
  expandMethodBind(className RDPipelineColorBlendStateAttachment, "set_as_mix", 3218959716)
  methodbind.ptrcall(self, [])

proc setEnableBlend*(self: RDPipelineColorBlendStateAttachment; pMember: bool): void =
  expandMethodBind(className RDPipelineColorBlendStateAttachment, "set_enable_blend", 2586408642)
  methodbind.ptrcall(self, [getPtr pMember])

proc getEnableBlend*(self: RDPipelineColorBlendStateAttachment): bool =
  expandMethodBind(className RDPipelineColorBlendStateAttachment, "get_enable_blend", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setSrcColorBlendFactor*(self: RDPipelineColorBlendStateAttachment; pMember: RenderingDevice_BlendFactor): void =
  expandMethodBind(className RDPipelineColorBlendStateAttachment, "set_src_color_blend_factor", 2251019273)
  methodbind.ptrcall(self, [getPtr pMember])

proc getSrcColorBlendFactor*(self: RDPipelineColorBlendStateAttachment): RenderingDevice_BlendFactor =
  expandMethodBind(className RDPipelineColorBlendStateAttachment, "get_src_color_blend_factor", 3691288359)
  var ret: encoded RenderingDevice_BlendFactor
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RenderingDevice_BlendFactor)

proc setDstColorBlendFactor*(self: RDPipelineColorBlendStateAttachment; pMember: RenderingDevice_BlendFactor): void =
  expandMethodBind(className RDPipelineColorBlendStateAttachment, "set_dst_color_blend_factor", 2251019273)
  methodbind.ptrcall(self, [getPtr pMember])

proc getDstColorBlendFactor*(self: RDPipelineColorBlendStateAttachment): RenderingDevice_BlendFactor =
  expandMethodBind(className RDPipelineColorBlendStateAttachment, "get_dst_color_blend_factor", 3691288359)
  var ret: encoded RenderingDevice_BlendFactor
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RenderingDevice_BlendFactor)

proc setColorBlendOp*(self: RDPipelineColorBlendStateAttachment; pMember: RenderingDevice_BlendOperation): void =
  expandMethodBind(className RDPipelineColorBlendStateAttachment, "set_color_blend_op", 3073022720)
  methodbind.ptrcall(self, [getPtr pMember])

proc getColorBlendOp*(self: RDPipelineColorBlendStateAttachment): RenderingDevice_BlendOperation =
  expandMethodBind(className RDPipelineColorBlendStateAttachment, "get_color_blend_op", 1385093561)
  var ret: encoded RenderingDevice_BlendOperation
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RenderingDevice_BlendOperation)

proc setSrcAlphaBlendFactor*(self: RDPipelineColorBlendStateAttachment; pMember: RenderingDevice_BlendFactor): void =
  expandMethodBind(className RDPipelineColorBlendStateAttachment, "set_src_alpha_blend_factor", 2251019273)
  methodbind.ptrcall(self, [getPtr pMember])

proc getSrcAlphaBlendFactor*(self: RDPipelineColorBlendStateAttachment): RenderingDevice_BlendFactor =
  expandMethodBind(className RDPipelineColorBlendStateAttachment, "get_src_alpha_blend_factor", 3691288359)
  var ret: encoded RenderingDevice_BlendFactor
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RenderingDevice_BlendFactor)

proc setDstAlphaBlendFactor*(self: RDPipelineColorBlendStateAttachment; pMember: RenderingDevice_BlendFactor): void =
  expandMethodBind(className RDPipelineColorBlendStateAttachment, "set_dst_alpha_blend_factor", 2251019273)
  methodbind.ptrcall(self, [getPtr pMember])

proc getDstAlphaBlendFactor*(self: RDPipelineColorBlendStateAttachment): RenderingDevice_BlendFactor =
  expandMethodBind(className RDPipelineColorBlendStateAttachment, "get_dst_alpha_blend_factor", 3691288359)
  var ret: encoded RenderingDevice_BlendFactor
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RenderingDevice_BlendFactor)

proc setAlphaBlendOp*(self: RDPipelineColorBlendStateAttachment; pMember: RenderingDevice_BlendOperation): void =
  expandMethodBind(className RDPipelineColorBlendStateAttachment, "set_alpha_blend_op", 3073022720)
  methodbind.ptrcall(self, [getPtr pMember])

proc getAlphaBlendOp*(self: RDPipelineColorBlendStateAttachment): RenderingDevice_BlendOperation =
  expandMethodBind(className RDPipelineColorBlendStateAttachment, "get_alpha_blend_op", 1385093561)
  var ret: encoded RenderingDevice_BlendOperation
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RenderingDevice_BlendOperation)

proc setWriteR*(self: RDPipelineColorBlendStateAttachment; pMember: bool): void =
  expandMethodBind(className RDPipelineColorBlendStateAttachment, "set_write_r", 2586408642)
  methodbind.ptrcall(self, [getPtr pMember])

proc getWriteR*(self: RDPipelineColorBlendStateAttachment): bool =
  expandMethodBind(className RDPipelineColorBlendStateAttachment, "get_write_r", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setWriteG*(self: RDPipelineColorBlendStateAttachment; pMember: bool): void =
  expandMethodBind(className RDPipelineColorBlendStateAttachment, "set_write_g", 2586408642)
  methodbind.ptrcall(self, [getPtr pMember])

proc getWriteG*(self: RDPipelineColorBlendStateAttachment): bool =
  expandMethodBind(className RDPipelineColorBlendStateAttachment, "get_write_g", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setWriteB*(self: RDPipelineColorBlendStateAttachment; pMember: bool): void =
  expandMethodBind(className RDPipelineColorBlendStateAttachment, "set_write_b", 2586408642)
  methodbind.ptrcall(self, [getPtr pMember])

proc getWriteB*(self: RDPipelineColorBlendStateAttachment): bool =
  expandMethodBind(className RDPipelineColorBlendStateAttachment, "get_write_b", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setWriteA*(self: RDPipelineColorBlendStateAttachment; pMember: bool): void =
  expandMethodBind(className RDPipelineColorBlendStateAttachment, "set_write_a", 2586408642)
  methodbind.ptrcall(self, [getPtr pMember])

proc getWriteA*(self: RDPipelineColorBlendStateAttachment): bool =
  expandMethodBind(className RDPipelineColorBlendStateAttachment, "get_write_a", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

template enableBlend*(self: RDPipelineColorBlendStateAttachment): untyped = self.getEnableBlend()
template `enableBlend=`*(self: RDPipelineColorBlendStateAttachment; value) = self.setEnableBlend(value)

template srcColorBlendFactor*(self: RDPipelineColorBlendStateAttachment): untyped = self.getSrcColorBlendFactor()
template `srcColorBlendFactor=`*(self: RDPipelineColorBlendStateAttachment; value) = self.setSrcColorBlendFactor(value)

template dstColorBlendFactor*(self: RDPipelineColorBlendStateAttachment): untyped = self.getDstColorBlendFactor()
template `dstColorBlendFactor=`*(self: RDPipelineColorBlendStateAttachment; value) = self.setDstColorBlendFactor(value)

template colorBlendOp*(self: RDPipelineColorBlendStateAttachment): untyped = self.getColorBlendOp()
template `colorBlendOp=`*(self: RDPipelineColorBlendStateAttachment; value) = self.setColorBlendOp(value)

template srcAlphaBlendFactor*(self: RDPipelineColorBlendStateAttachment): untyped = self.getSrcAlphaBlendFactor()
template `srcAlphaBlendFactor=`*(self: RDPipelineColorBlendStateAttachment; value) = self.setSrcAlphaBlendFactor(value)

template dstAlphaBlendFactor*(self: RDPipelineColorBlendStateAttachment): untyped = self.getDstAlphaBlendFactor()
template `dstAlphaBlendFactor=`*(self: RDPipelineColorBlendStateAttachment; value) = self.setDstAlphaBlendFactor(value)

template alphaBlendOp*(self: RDPipelineColorBlendStateAttachment): untyped = self.getAlphaBlendOp()
template `alphaBlendOp=`*(self: RDPipelineColorBlendStateAttachment; value) = self.setAlphaBlendOp(value)

template writeR*(self: RDPipelineColorBlendStateAttachment): untyped = self.getWriteR()
template `writeR=`*(self: RDPipelineColorBlendStateAttachment; value) = self.setWriteR(value)

template writeG*(self: RDPipelineColorBlendStateAttachment): untyped = self.getWriteG()
template `writeG=`*(self: RDPipelineColorBlendStateAttachment; value) = self.setWriteG(value)

template writeB*(self: RDPipelineColorBlendStateAttachment): untyped = self.getWriteB()
template `writeB=`*(self: RDPipelineColorBlendStateAttachment; value) = self.setWriteB(value)

template writeA*(self: RDPipelineColorBlendStateAttachment): untyped = self.getWriteA()
template `writeA=`*(self: RDPipelineColorBlendStateAttachment; value) = self.setWriteA(value)

const RDPipelineColorBlendStateAttachment_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RDPipelineColorBlendStateAttachment]): Table[string, string] = RDPipelineColorBlendStateAttachment_vmap