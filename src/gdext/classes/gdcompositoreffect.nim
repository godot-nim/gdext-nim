{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

method renderCallback*(self: CompositorEffect; effectCallbackType: int32; renderData: RenderData): void {.base.} = (discard)
proc renderCallback(p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
  errproof: cast[CompositorEffect](p_instance).renderCallback(p_args[0].decode(int32), p_args[1].decode(RenderData))
template renderCallback_bind*(_: typedesc[CompositorEffect]): ClassCallVirtual = renderCallback

proc setEnabled*(self: CompositorEffect; enabled: bool): void =
  expandMethodBind(className CompositorEffect, "set_enabled", 2586408642)
  var `?param` = [getPtr enabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEnabled*(self: CompositorEffect): bool =
  expandMethodBind(className CompositorEffect, "get_enabled", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setEffectCallbackType*(self: CompositorEffect; effectCallbackType: CompositorEffect_EffectCallbackType): void =
  expandMethodBind(className CompositorEffect, "set_effect_callback_type", 1390728419)
  var `?param` = [getPtr effectCallbackType]
  methodbind.ptrcall(self, addr `?param`[0])

proc getEffectCallbackType*(self: CompositorEffect): CompositorEffect_EffectCallbackType =
  expandMethodBind(className CompositorEffect, "get_effect_callback_type", 1221912590)
  var ret: encoded CompositorEffect_EffectCallbackType
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(CompositorEffect_EffectCallbackType)

proc setAccessResolvedColor*(self: CompositorEffect; enable: bool): void =
  expandMethodBind(className CompositorEffect, "set_access_resolved_color", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAccessResolvedColor*(self: CompositorEffect): bool =
  expandMethodBind(className CompositorEffect, "get_access_resolved_color", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setAccessResolvedDepth*(self: CompositorEffect; enable: bool): void =
  expandMethodBind(className CompositorEffect, "set_access_resolved_depth", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAccessResolvedDepth*(self: CompositorEffect): bool =
  expandMethodBind(className CompositorEffect, "get_access_resolved_depth", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setNeedsMotionVectors*(self: CompositorEffect; enable: bool): void =
  expandMethodBind(className CompositorEffect, "set_needs_motion_vectors", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc getNeedsMotionVectors*(self: CompositorEffect): bool =
  expandMethodBind(className CompositorEffect, "get_needs_motion_vectors", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setNeedsNormalRoughness*(self: CompositorEffect; enable: bool): void =
  expandMethodBind(className CompositorEffect, "set_needs_normal_roughness", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc getNeedsNormalRoughness*(self: CompositorEffect): bool =
  expandMethodBind(className CompositorEffect, "get_needs_normal_roughness", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setNeedsSeparateSpecular*(self: CompositorEffect; enable: bool): void =
  expandMethodBind(className CompositorEffect, "set_needs_separate_specular", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc getNeedsSeparateSpecular*(self: CompositorEffect): bool =
  expandMethodBind(className CompositorEffect, "get_needs_separate_specular", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template enabled*(self: CompositorEffect): untyped = self.getEnabled()
template `enabled=`*(self: CompositorEffect; value) = self.setEnabled(value)

template effectCallbackType*(self: CompositorEffect): untyped = self.getEffectCallbackType()
template `effectCallbackType=`*(self: CompositorEffect; value) = self.setEffectCallbackType(value)

template accessResolvedColor*(self: CompositorEffect): untyped = self.getAccessResolvedColor()
template `accessResolvedColor=`*(self: CompositorEffect; value) = self.setAccessResolvedColor(value)

template accessResolvedDepth*(self: CompositorEffect): untyped = self.getAccessResolvedDepth()
template `accessResolvedDepth=`*(self: CompositorEffect; value) = self.setAccessResolvedDepth(value)

template needsMotionVectors*(self: CompositorEffect): untyped = self.getNeedsMotionVectors()
template `needsMotionVectors=`*(self: CompositorEffect; value) = self.setNeedsMotionVectors(value)

template needsNormalRoughness*(self: CompositorEffect): untyped = self.getNeedsNormalRoughness()
template `needsNormalRoughness=`*(self: CompositorEffect; value) = self.setNeedsNormalRoughness(value)

template needsSeparateSpecular*(self: CompositorEffect): untyped = self.getNeedsSeparateSpecular()
template `needsSeparateSpecular=`*(self: CompositorEffect; value) = self.setNeedsSeparateSpecular(value)

const CompositorEffect_vmap =
  Resource.vmap.concat toTable {
    "rendercallback" : "_render_callback",
    }
template vmap*(_: typedesc[CompositorEffect]): Table[string, string] = CompositorEffect_vmap