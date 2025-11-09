{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdopenxrcompositionlayer; export gdopenxrcompositionlayer

expandOnClassImported(OpenXRCompositionLayerQuad, OpenXRCompositionLayer)

proc setQuadSize*(self: OpenXRCompositionLayerQuad; size: Vector2): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRCompositionLayerQuad, "set_quad_size", 743155724)
  methodbind.ptrcall(self, [getPtr size], void)

proc getQuadSize*(self: OpenXRCompositionLayerQuad): Vector2 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRCompositionLayerQuad, "get_quad_size", 3341600327)
  methodbind.ptrcall(self, [], Vector2)

template quadSize*(self: OpenXRCompositionLayerQuad): untyped = self.getQuadSize()
template `quadSize=`*(self: OpenXRCompositionLayerQuad; value) = self.setQuadSize(value)
