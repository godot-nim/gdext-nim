{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc setEnableDepthClamp*(self: RDPipelineRasterizationState; pMember: bool): void =
  expandMethodBind(className RDPipelineRasterizationState, "set_enable_depth_clamp", 2586408642)
  methodbind.ptrcall(self, [getPtr pMember])

proc getEnableDepthClamp*(self: RDPipelineRasterizationState): bool =
  expandMethodBind(className RDPipelineRasterizationState, "get_enable_depth_clamp", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setDiscardPrimitives*(self: RDPipelineRasterizationState; pMember: bool): void =
  expandMethodBind(className RDPipelineRasterizationState, "set_discard_primitives", 2586408642)
  methodbind.ptrcall(self, [getPtr pMember])

proc getDiscardPrimitives*(self: RDPipelineRasterizationState): bool =
  expandMethodBind(className RDPipelineRasterizationState, "get_discard_primitives", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setWireframe*(self: RDPipelineRasterizationState; pMember: bool): void =
  expandMethodBind(className RDPipelineRasterizationState, "set_wireframe", 2586408642)
  methodbind.ptrcall(self, [getPtr pMember])

proc getWireframe*(self: RDPipelineRasterizationState): bool =
  expandMethodBind(className RDPipelineRasterizationState, "get_wireframe", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setCullMode*(self: RDPipelineRasterizationState; pMember: RenderingDevice_PolygonCullMode): void =
  expandMethodBind(className RDPipelineRasterizationState, "set_cull_mode", 2662586502)
  methodbind.ptrcall(self, [getPtr pMember])

proc getCullMode*(self: RDPipelineRasterizationState): RenderingDevice_PolygonCullMode =
  expandMethodBind(className RDPipelineRasterizationState, "get_cull_mode", 2192484313)
  var ret: encoded RenderingDevice_PolygonCullMode
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RenderingDevice_PolygonCullMode)

proc setFrontFace*(self: RDPipelineRasterizationState; pMember: RenderingDevice_PolygonFrontFace): void =
  expandMethodBind(className RDPipelineRasterizationState, "set_front_face", 2637251213)
  methodbind.ptrcall(self, [getPtr pMember])

proc getFrontFace*(self: RDPipelineRasterizationState): RenderingDevice_PolygonFrontFace =
  expandMethodBind(className RDPipelineRasterizationState, "get_front_face", 708793786)
  var ret: encoded RenderingDevice_PolygonFrontFace
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RenderingDevice_PolygonFrontFace)

proc setDepthBiasEnabled*(self: RDPipelineRasterizationState; pMember: bool): void =
  expandMethodBind(className RDPipelineRasterizationState, "set_depth_bias_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr pMember])

proc getDepthBiasEnabled*(self: RDPipelineRasterizationState): bool =
  expandMethodBind(className RDPipelineRasterizationState, "get_depth_bias_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setDepthBiasConstantFactor*(self: RDPipelineRasterizationState; pMember: Float): void =
  expandMethodBind(className RDPipelineRasterizationState, "set_depth_bias_constant_factor", 373806689)
  methodbind.ptrcall(self, [getPtr pMember])

proc getDepthBiasConstantFactor*(self: RDPipelineRasterizationState): Float =
  expandMethodBind(className RDPipelineRasterizationState, "get_depth_bias_constant_factor", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setDepthBiasClamp*(self: RDPipelineRasterizationState; pMember: Float): void =
  expandMethodBind(className RDPipelineRasterizationState, "set_depth_bias_clamp", 373806689)
  methodbind.ptrcall(self, [getPtr pMember])

proc getDepthBiasClamp*(self: RDPipelineRasterizationState): Float =
  expandMethodBind(className RDPipelineRasterizationState, "get_depth_bias_clamp", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setDepthBiasSlopeFactor*(self: RDPipelineRasterizationState; pMember: Float): void =
  expandMethodBind(className RDPipelineRasterizationState, "set_depth_bias_slope_factor", 373806689)
  methodbind.ptrcall(self, [getPtr pMember])

proc getDepthBiasSlopeFactor*(self: RDPipelineRasterizationState): Float =
  expandMethodBind(className RDPipelineRasterizationState, "get_depth_bias_slope_factor", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setLineWidth*(self: RDPipelineRasterizationState; pMember: Float): void =
  expandMethodBind(className RDPipelineRasterizationState, "set_line_width", 373806689)
  methodbind.ptrcall(self, [getPtr pMember])

proc getLineWidth*(self: RDPipelineRasterizationState): Float =
  expandMethodBind(className RDPipelineRasterizationState, "get_line_width", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setPatchControlPoints*(self: RDPipelineRasterizationState; pMember: uint32): void =
  expandMethodBind(className RDPipelineRasterizationState, "set_patch_control_points", 1286410249)
  methodbind.ptrcall(self, [getPtr pMember])

proc getPatchControlPoints*(self: RDPipelineRasterizationState): uint32 =
  expandMethodBind(className RDPipelineRasterizationState, "get_patch_control_points", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint32)

template enableDepthClamp*(self: RDPipelineRasterizationState): untyped = self.getEnableDepthClamp()
template `enableDepthClamp=`*(self: RDPipelineRasterizationState; value) = self.setEnableDepthClamp(value)

template discardPrimitives*(self: RDPipelineRasterizationState): untyped = self.getDiscardPrimitives()
template `discardPrimitives=`*(self: RDPipelineRasterizationState; value) = self.setDiscardPrimitives(value)

template wireframe*(self: RDPipelineRasterizationState): untyped = self.getWireframe()
template `wireframe=`*(self: RDPipelineRasterizationState; value) = self.setWireframe(value)

template cullMode*(self: RDPipelineRasterizationState): untyped = self.getCullMode()
template `cullMode=`*(self: RDPipelineRasterizationState; value) = self.setCullMode(value)

template frontFace*(self: RDPipelineRasterizationState): untyped = self.getFrontFace()
template `frontFace=`*(self: RDPipelineRasterizationState; value) = self.setFrontFace(value)

template depthBiasEnabled*(self: RDPipelineRasterizationState): untyped = self.getDepthBiasEnabled()
template `depthBiasEnabled=`*(self: RDPipelineRasterizationState; value) = self.setDepthBiasEnabled(value)

template depthBiasConstantFactor*(self: RDPipelineRasterizationState): untyped = self.getDepthBiasConstantFactor()
template `depthBiasConstantFactor=`*(self: RDPipelineRasterizationState; value) = self.setDepthBiasConstantFactor(value)

template depthBiasClamp*(self: RDPipelineRasterizationState): untyped = self.getDepthBiasClamp()
template `depthBiasClamp=`*(self: RDPipelineRasterizationState; value) = self.setDepthBiasClamp(value)

template depthBiasSlopeFactor*(self: RDPipelineRasterizationState): untyped = self.getDepthBiasSlopeFactor()
template `depthBiasSlopeFactor=`*(self: RDPipelineRasterizationState; value) = self.setDepthBiasSlopeFactor(value)

template lineWidth*(self: RDPipelineRasterizationState): untyped = self.getLineWidth()
template `lineWidth=`*(self: RDPipelineRasterizationState; value) = self.setLineWidth(value)

template patchControlPoints*(self: RDPipelineRasterizationState): untyped = self.getPatchControlPoints()
template `patchControlPoints=`*(self: RDPipelineRasterizationState; value) = self.setPatchControlPoints(value)

const RDPipelineRasterizationState_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RDPipelineRasterizationState]): Table[string, string] = RDPipelineRasterizationState_vmap