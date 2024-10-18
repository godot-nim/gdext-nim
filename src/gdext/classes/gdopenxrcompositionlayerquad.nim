{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdopenxrcompositionlayer; export gdopenxrcompositionlayer

proc setQuadSize*(self: OpenXrCompositionLayerQuad; size: Vector2): void =
  expandMethodBind(className OpenXrCompositionLayerQuad, "set_quad_size", 743155724)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc getQuadSize*(self: OpenXrCompositionLayerQuad): Vector2 =
  expandMethodBind(className OpenXrCompositionLayerQuad, "get_quad_size", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2)

template quadSize*(self: OpenXrCompositionLayerQuad): untyped = self.getQuadSize()
template `quadSize=`*(self: OpenXrCompositionLayerQuad; value) = self.setQuadSize(value)

const OpenXrCompositionLayerQuad_vmap =
  OpenXrCompositionLayer.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[OpenXrCompositionLayerQuad]): Table[string, string] = OpenXrCompositionLayerQuad_vmap