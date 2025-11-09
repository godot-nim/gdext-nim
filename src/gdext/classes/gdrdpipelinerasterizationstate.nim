{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdrefcounted; export gdrefcounted

expandOnClassImported(RDPipelineRasterizationState, RefCounted)

proc setEnableDepthClamp*(self: RDPipelineRasterizationState; pMember: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDPipelineRasterizationState, "set_enable_depth_clamp", 2586408642)
  methodbind.ptrcall(self, [getPtr pMember], void)

proc getEnableDepthClamp*(self: RDPipelineRasterizationState): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDPipelineRasterizationState, "get_enable_depth_clamp", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDiscardPrimitives*(self: RDPipelineRasterizationState; pMember: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDPipelineRasterizationState, "set_discard_primitives", 2586408642)
  methodbind.ptrcall(self, [getPtr pMember], void)

proc getDiscardPrimitives*(self: RDPipelineRasterizationState): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDPipelineRasterizationState, "get_discard_primitives", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setWireframe*(self: RDPipelineRasterizationState; pMember: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDPipelineRasterizationState, "set_wireframe", 2586408642)
  methodbind.ptrcall(self, [getPtr pMember], void)

proc getWireframe*(self: RDPipelineRasterizationState): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDPipelineRasterizationState, "get_wireframe", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setCullMode*(self: RDPipelineRasterizationState; pMember: RenderingDevice_PolygonCullMode): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDPipelineRasterizationState, "set_cull_mode", 2662586502)
  methodbind.ptrcall(self, [getPtr pMember], void)

proc getCullMode*(self: RDPipelineRasterizationState): RenderingDevice_PolygonCullMode =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDPipelineRasterizationState, "get_cull_mode", 2192484313)
  methodbind.ptrcall(self, [], RenderingDevice_PolygonCullMode)

proc setFrontFace*(self: RDPipelineRasterizationState; pMember: RenderingDevice_PolygonFrontFace): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDPipelineRasterizationState, "set_front_face", 2637251213)
  methodbind.ptrcall(self, [getPtr pMember], void)

proc getFrontFace*(self: RDPipelineRasterizationState): RenderingDevice_PolygonFrontFace =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDPipelineRasterizationState, "get_front_face", 708793786)
  methodbind.ptrcall(self, [], RenderingDevice_PolygonFrontFace)

proc setDepthBiasEnabled*(self: RDPipelineRasterizationState; pMember: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDPipelineRasterizationState, "set_depth_bias_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr pMember], void)

proc getDepthBiasEnabled*(self: RDPipelineRasterizationState): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDPipelineRasterizationState, "get_depth_bias_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setDepthBiasConstantFactor*(self: RDPipelineRasterizationState; pMember: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDPipelineRasterizationState, "set_depth_bias_constant_factor", 373806689)
  methodbind.ptrcall(self, [getPtr pMember], void)

proc getDepthBiasConstantFactor*(self: RDPipelineRasterizationState): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDPipelineRasterizationState, "get_depth_bias_constant_factor", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setDepthBiasClamp*(self: RDPipelineRasterizationState; pMember: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDPipelineRasterizationState, "set_depth_bias_clamp", 373806689)
  methodbind.ptrcall(self, [getPtr pMember], void)

proc getDepthBiasClamp*(self: RDPipelineRasterizationState): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDPipelineRasterizationState, "get_depth_bias_clamp", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setDepthBiasSlopeFactor*(self: RDPipelineRasterizationState; pMember: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDPipelineRasterizationState, "set_depth_bias_slope_factor", 373806689)
  methodbind.ptrcall(self, [getPtr pMember], void)

proc getDepthBiasSlopeFactor*(self: RDPipelineRasterizationState): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDPipelineRasterizationState, "get_depth_bias_slope_factor", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setLineWidth*(self: RDPipelineRasterizationState; pMember: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDPipelineRasterizationState, "set_line_width", 373806689)
  methodbind.ptrcall(self, [getPtr pMember], void)

proc getLineWidth*(self: RDPipelineRasterizationState): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDPipelineRasterizationState, "get_line_width", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setPatchControlPoints*(self: RDPipelineRasterizationState; pMember: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDPipelineRasterizationState, "set_patch_control_points", 1286410249)
  methodbind.ptrcall(self, [getPtr pMember], void)

proc getPatchControlPoints*(self: RDPipelineRasterizationState): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className RDPipelineRasterizationState, "get_patch_control_points", 3905245786)
  methodbind.ptrcall(self, [], uint32)

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
