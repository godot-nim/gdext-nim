{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdresource; export gdresource

proc setCompositorEffects*(self: Compositor; compositorEffects: TypedArray[CompositorEffect]): void =
  expandMethodBind(className Compositor, "set_compositor_effects", 381264803)
  var `?param` = [getPtr compositorEffects]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCompositorEffects*(self: Compositor): TypedArray[CompositorEffect] =
  expandMethodBind(className Compositor, "get_compositor_effects", 3995934104)
  var ret: encoded TypedArray[CompositorEffect]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[CompositorEffect])

template compositorEffects*(self: Compositor): untyped = self.getCompositorEffects()
template `compositorEffects=`*(self: Compositor; value) = self.setCompositorEffects(value)

const Compositor_vmap =
  Resource.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[Compositor]): Table[string, string] = Compositor_vmap