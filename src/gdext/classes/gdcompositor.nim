{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(Compositor, Resource)

proc setCompositorEffects*(self: Compositor; compositorEffects: TypedArray[gdref CompositorEffect]): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Compositor, "set_compositor_effects", 381264803)
  methodbind.ptrcall(self, [getPtr compositorEffects], void)

proc getCompositorEffects*(self: Compositor): TypedArray[gdref CompositorEffect] =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className Compositor, "get_compositor_effects", 3995934104)
  methodbind.ptrcall(self, [], TypedArray[gdref CompositorEffect])

template compositorEffects*(self: Compositor): untyped = self.getCompositorEffects()
template `compositorEffects=`*(self: Compositor; value) = self.setCompositorEffects(value)
