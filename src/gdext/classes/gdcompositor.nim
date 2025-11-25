{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

expandOnClassImported(Compositor, Resource)

proc setCompositorEffects*(self: Compositor; compositorEffects: Array[gdref CompositorEffect]): void =
  expandMethodBind(className Compositor, "set_compositor_effects", 381264803)
  nilCheck compositorEffects
  methodbind.ptrcall(self, [getPtr compositorEffects])

proc getCompositorEffects*(self: Compositor): Array[gdref CompositorEffect] =
  expandMethodBind(className Compositor, "get_compositor_effects", 3995934104)
  var ret: encoded Array[gdref CompositorEffect]
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Array[gdref CompositorEffect])

template compositorEffects*(self: Compositor): untyped = self.getCompositorEffects()
template `compositorEffects=`*(self: Compositor; value) = self.setCompositorEffects(value)
