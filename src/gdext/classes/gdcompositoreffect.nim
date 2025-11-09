{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(CompositorEffect, Resource)

method renderCallback*(self: CompositorEffect; effectCallbackType: int32; renderData: RenderData): void {.base.} = (discard)
proc registerVirtual_renderCallback*[T: CompositorEffect](Self: typedesc[T]) =
  Self.vmethods[newStringName"_render_callback"] = proc (p_instance: ClassInstancePtr; p_args: ptr UncheckedArray[ConstTypePtr]; r_ret: TypePtr) {.gdcall.} =
    errproof: cast[CompositorEffect](p_instance).renderCallback(p_args[0].decode(int32), p_args[1].decode(RenderData))

proc setEnabled*(self: CompositorEffect; enabled: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CompositorEffect, "set_enabled", 2586408642)
  methodbind.ptrcall(self, [getPtr enabled], void)

proc getEnabled*(self: CompositorEffect): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CompositorEffect, "get_enabled", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setEffectCallbackType*(self: CompositorEffect; effectCallbackType: CompositorEffect_EffectCallbackType): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CompositorEffect, "set_effect_callback_type", 1390728419)
  methodbind.ptrcall(self, [getPtr effectCallbackType], void)

proc getEffectCallbackType*(self: CompositorEffect): CompositorEffect_EffectCallbackType =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CompositorEffect, "get_effect_callback_type", 1221912590)
  methodbind.ptrcall(self, [], CompositorEffect_EffectCallbackType)

proc setAccessResolvedColor*(self: CompositorEffect; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CompositorEffect, "set_access_resolved_color", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc getAccessResolvedColor*(self: CompositorEffect): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CompositorEffect, "get_access_resolved_color", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setAccessResolvedDepth*(self: CompositorEffect; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CompositorEffect, "set_access_resolved_depth", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc getAccessResolvedDepth*(self: CompositorEffect): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CompositorEffect, "get_access_resolved_depth", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setNeedsMotionVectors*(self: CompositorEffect; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CompositorEffect, "set_needs_motion_vectors", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc getNeedsMotionVectors*(self: CompositorEffect): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CompositorEffect, "get_needs_motion_vectors", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setNeedsNormalRoughness*(self: CompositorEffect; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CompositorEffect, "set_needs_normal_roughness", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc getNeedsNormalRoughness*(self: CompositorEffect): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CompositorEffect, "get_needs_normal_roughness", 36873697)
  methodbind.ptrcall(self, [], bool)

proc setNeedsSeparateSpecular*(self: CompositorEffect; enable: bool): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CompositorEffect, "set_needs_separate_specular", 2586408642)
  methodbind.ptrcall(self, [getPtr enable], void)

proc getNeedsSeparateSpecular*(self: CompositorEffect): bool =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CompositorEffect, "get_needs_separate_specular", 36873697)
  methodbind.ptrcall(self, [], bool)

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
