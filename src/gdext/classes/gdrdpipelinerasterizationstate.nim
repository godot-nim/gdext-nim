{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

proc setEnableDepthClamp*(self: RdPipelineRasterizationState; pMember: bool): void =
  expandMethodBind(className RdPipelineRasterizationState, "set_enable_depth_clamp", 2586408642)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEnableDepthClamp*(self: RdPipelineRasterizationState): bool =
  expandMethodBind(className RdPipelineRasterizationState, "get_enable_depth_clamp", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setDiscardPrimitives*(self: RdPipelineRasterizationState; pMember: bool): void =
  expandMethodBind(className RdPipelineRasterizationState, "set_discard_primitives", 2586408642)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDiscardPrimitives*(self: RdPipelineRasterizationState): bool =
  expandMethodBind(className RdPipelineRasterizationState, "get_discard_primitives", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setWireframe*(self: RdPipelineRasterizationState; pMember: bool): void =
  expandMethodBind(className RdPipelineRasterizationState, "set_wireframe", 2586408642)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getWireframe*(self: RdPipelineRasterizationState): bool =
  expandMethodBind(className RdPipelineRasterizationState, "get_wireframe", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setCullMode*(self: RdPipelineRasterizationState; pMember: RenderingDevice_PolygonCullMode): void =
  expandMethodBind(className RdPipelineRasterizationState, "set_cull_mode", 2662586502)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCullMode*(self: RdPipelineRasterizationState): RenderingDevice_PolygonCullMode =
  expandMethodBind(className RdPipelineRasterizationState, "get_cull_mode", 2192484313)
  var ret: encoded RenderingDevice_PolygonCullMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_PolygonCullMode)

proc setFrontFace*(self: RdPipelineRasterizationState; pMember: RenderingDevice_PolygonFrontFace): void =
  expandMethodBind(className RdPipelineRasterizationState, "set_front_face", 2637251213)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFrontFace*(self: RdPipelineRasterizationState): RenderingDevice_PolygonFrontFace =
  expandMethodBind(className RdPipelineRasterizationState, "get_front_face", 708793786)
  var ret: encoded RenderingDevice_PolygonFrontFace
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(RenderingDevice_PolygonFrontFace)

proc setDepthBiasEnabled*(self: RdPipelineRasterizationState; pMember: bool): void =
  expandMethodBind(className RdPipelineRasterizationState, "set_depth_bias_enabled", 2586408642)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDepthBiasEnabled*(self: RdPipelineRasterizationState): bool =
  expandMethodBind(className RdPipelineRasterizationState, "get_depth_bias_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setDepthBiasConstantFactor*(self: RdPipelineRasterizationState; pMember: Float): void =
  expandMethodBind(className RdPipelineRasterizationState, "set_depth_bias_constant_factor", 373806689)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDepthBiasConstantFactor*(self: RdPipelineRasterizationState): Float =
  expandMethodBind(className RdPipelineRasterizationState, "get_depth_bias_constant_factor", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setDepthBiasClamp*(self: RdPipelineRasterizationState; pMember: Float): void =
  expandMethodBind(className RdPipelineRasterizationState, "set_depth_bias_clamp", 373806689)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDepthBiasClamp*(self: RdPipelineRasterizationState): Float =
  expandMethodBind(className RdPipelineRasterizationState, "get_depth_bias_clamp", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setDepthBiasSlopeFactor*(self: RdPipelineRasterizationState; pMember: Float): void =
  expandMethodBind(className RdPipelineRasterizationState, "set_depth_bias_slope_factor", 373806689)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getDepthBiasSlopeFactor*(self: RdPipelineRasterizationState): Float =
  expandMethodBind(className RdPipelineRasterizationState, "get_depth_bias_slope_factor", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setLineWidth*(self: RdPipelineRasterizationState; pMember: Float): void =
  expandMethodBind(className RdPipelineRasterizationState, "set_line_width", 373806689)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLineWidth*(self: RdPipelineRasterizationState): Float =
  expandMethodBind(className RdPipelineRasterizationState, "get_line_width", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setPatchControlPoints*(self: RdPipelineRasterizationState; pMember: uint32): void =
  expandMethodBind(className RdPipelineRasterizationState, "set_patch_control_points", 1286410249)
  var `?param` = [getPtr pMember]
  methodbind.ptrcall(self, addr `?param`[0])

proc getPatchControlPoints*(self: RdPipelineRasterizationState): uint32 =
  expandMethodBind(className RdPipelineRasterizationState, "get_patch_control_points", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

template enableDepthClamp*(self: RdPipelineRasterizationState): untyped = self.getEnableDepthClamp()
template `enableDepthClamp=`*(self: RdPipelineRasterizationState; value) = self.setEnableDepthClamp(value)

template discardPrimitives*(self: RdPipelineRasterizationState): untyped = self.getDiscardPrimitives()
template `discardPrimitives=`*(self: RdPipelineRasterizationState; value) = self.setDiscardPrimitives(value)

template wireframe*(self: RdPipelineRasterizationState): untyped = self.getWireframe()
template `wireframe=`*(self: RdPipelineRasterizationState; value) = self.setWireframe(value)

template cullMode*(self: RdPipelineRasterizationState): untyped = self.getCullMode()
template `cullMode=`*(self: RdPipelineRasterizationState; value) = self.setCullMode(value)

template frontFace*(self: RdPipelineRasterizationState): untyped = self.getFrontFace()
template `frontFace=`*(self: RdPipelineRasterizationState; value) = self.setFrontFace(value)

template depthBiasEnabled*(self: RdPipelineRasterizationState): untyped = self.getDepthBiasEnabled()
template `depthBiasEnabled=`*(self: RdPipelineRasterizationState; value) = self.setDepthBiasEnabled(value)

template depthBiasConstantFactor*(self: RdPipelineRasterizationState): untyped = self.getDepthBiasConstantFactor()
template `depthBiasConstantFactor=`*(self: RdPipelineRasterizationState; value) = self.setDepthBiasConstantFactor(value)

template depthBiasClamp*(self: RdPipelineRasterizationState): untyped = self.getDepthBiasClamp()
template `depthBiasClamp=`*(self: RdPipelineRasterizationState; value) = self.setDepthBiasClamp(value)

template depthBiasSlopeFactor*(self: RdPipelineRasterizationState): untyped = self.getDepthBiasSlopeFactor()
template `depthBiasSlopeFactor=`*(self: RdPipelineRasterizationState; value) = self.setDepthBiasSlopeFactor(value)

template lineWidth*(self: RdPipelineRasterizationState): untyped = self.getLineWidth()
template `lineWidth=`*(self: RdPipelineRasterizationState; value) = self.setLineWidth(value)

template patchControlPoints*(self: RdPipelineRasterizationState): untyped = self.getPatchControlPoints()
template `patchControlPoints=`*(self: RdPipelineRasterizationState; value) = self.setPatchControlPoints(value)

const RdPipelineRasterizationState_vmap =
  RefCounted.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[RdPipelineRasterizationState]): Table[string, string] = RdPipelineRasterizationState_vmap