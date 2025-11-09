{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdopenxrcompositionlayer; export gdopenxrcompositionlayer

expandOnClassImported(OpenXRCompositionLayerCylinder, OpenXRCompositionLayer)

proc setRadius*(self: OpenXRCompositionLayerCylinder; radius: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRCompositionLayerCylinder, "set_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius], void)

proc getRadius*(self: OpenXRCompositionLayerCylinder): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRCompositionLayerCylinder, "get_radius", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setAspectRatio*(self: OpenXRCompositionLayerCylinder; aspectRatio: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRCompositionLayerCylinder, "set_aspect_ratio", 373806689)
  methodbind.ptrcall(self, [getPtr aspectRatio], void)

proc getAspectRatio*(self: OpenXRCompositionLayerCylinder): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRCompositionLayerCylinder, "get_aspect_ratio", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setCentralAngle*(self: OpenXRCompositionLayerCylinder; angle: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRCompositionLayerCylinder, "set_central_angle", 373806689)
  methodbind.ptrcall(self, [getPtr angle], void)

proc getCentralAngle*(self: OpenXRCompositionLayerCylinder): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRCompositionLayerCylinder, "get_central_angle", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setFallbackSegments*(self: OpenXRCompositionLayerCylinder; segments: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRCompositionLayerCylinder, "set_fallback_segments", 1286410249)
  methodbind.ptrcall(self, [getPtr segments], void)

proc getFallbackSegments*(self: OpenXRCompositionLayerCylinder): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRCompositionLayerCylinder, "get_fallback_segments", 3905245786)
  methodbind.ptrcall(self, [], uint32)

template radius*(self: OpenXRCompositionLayerCylinder): untyped = self.getRadius()
template `radius=`*(self: OpenXRCompositionLayerCylinder; value) = self.setRadius(value)

template aspectRatio*(self: OpenXRCompositionLayerCylinder): untyped = self.getAspectRatio()
template `aspectRatio=`*(self: OpenXRCompositionLayerCylinder; value) = self.setAspectRatio(value)

template centralAngle*(self: OpenXRCompositionLayerCylinder): untyped = self.getCentralAngle()
template `centralAngle=`*(self: OpenXRCompositionLayerCylinder; value) = self.setCentralAngle(value)

template fallbackSegments*(self: OpenXRCompositionLayerCylinder): untyped = self.getFallbackSegments()
template `fallbackSegments=`*(self: OpenXRCompositionLayerCylinder; value) = self.setFallbackSegments(value)
