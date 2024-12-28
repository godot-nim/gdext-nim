{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdopenxrcompositionlayer; export gdopenxrcompositionlayer

proc setQuadSize*(self: OpenXRCompositionLayerQuad; size: Vector2): void =
  expandMethodBind(className OpenXRCompositionLayerQuad, "set_quad_size", 743155724)
  methodbind.ptrcall(self, [getPtr size])

proc getQuadSize*(self: OpenXRCompositionLayerQuad): Vector2 =
  expandMethodBind(className OpenXRCompositionLayerQuad, "get_quad_size", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

template quadSize*(self: OpenXRCompositionLayerQuad): untyped = self.getQuadSize()
template `quadSize=`*(self: OpenXRCompositionLayerQuad; value) = self.setQuadSize(value)

const OpenXRCompositionLayerQuad_vmap =
  OpenXRCompositionLayer.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[OpenXRCompositionLayerQuad]): Table[string, string] = OpenXRCompositionLayerQuad_vmap