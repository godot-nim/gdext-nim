{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdopenxrcompositionlayer; export gdopenxrcompositionlayer

expandOnClassImported(OpenXRCompositionLayerEquirect, OpenXRCompositionLayer)

proc setRadius*(self: OpenXRCompositionLayerEquirect; radius: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRCompositionLayerEquirect, "set_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius], void)

proc getRadius*(self: OpenXRCompositionLayerEquirect): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRCompositionLayerEquirect, "get_radius", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setCentralHorizontalAngle*(self: OpenXRCompositionLayerEquirect; angle: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRCompositionLayerEquirect, "set_central_horizontal_angle", 373806689)
  methodbind.ptrcall(self, [getPtr angle], void)

proc getCentralHorizontalAngle*(self: OpenXRCompositionLayerEquirect): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRCompositionLayerEquirect, "get_central_horizontal_angle", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setUpperVerticalAngle*(self: OpenXRCompositionLayerEquirect; angle: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRCompositionLayerEquirect, "set_upper_vertical_angle", 373806689)
  methodbind.ptrcall(self, [getPtr angle], void)

proc getUpperVerticalAngle*(self: OpenXRCompositionLayerEquirect): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRCompositionLayerEquirect, "get_upper_vertical_angle", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setLowerVerticalAngle*(self: OpenXRCompositionLayerEquirect; angle: Float): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRCompositionLayerEquirect, "set_lower_vertical_angle", 373806689)
  methodbind.ptrcall(self, [getPtr angle], void)

proc getLowerVerticalAngle*(self: OpenXRCompositionLayerEquirect): Float =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRCompositionLayerEquirect, "get_lower_vertical_angle", 1740695150)
  methodbind.ptrcall(self, [], Float)

proc setFallbackSegments*(self: OpenXRCompositionLayerEquirect; segments: uint32): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRCompositionLayerEquirect, "set_fallback_segments", 1286410249)
  methodbind.ptrcall(self, [getPtr segments], void)

proc getFallbackSegments*(self: OpenXRCompositionLayerEquirect): uint32 =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className OpenXRCompositionLayerEquirect, "get_fallback_segments", 3905245786)
  methodbind.ptrcall(self, [], uint32)

template radius*(self: OpenXRCompositionLayerEquirect): untyped = self.getRadius()
template `radius=`*(self: OpenXRCompositionLayerEquirect; value) = self.setRadius(value)

template centralHorizontalAngle*(self: OpenXRCompositionLayerEquirect): untyped = self.getCentralHorizontalAngle()
template `centralHorizontalAngle=`*(self: OpenXRCompositionLayerEquirect; value) = self.setCentralHorizontalAngle(value)

template upperVerticalAngle*(self: OpenXRCompositionLayerEquirect): untyped = self.getUpperVerticalAngle()
template `upperVerticalAngle=`*(self: OpenXRCompositionLayerEquirect; value) = self.setUpperVerticalAngle(value)

template lowerVerticalAngle*(self: OpenXRCompositionLayerEquirect): untyped = self.getLowerVerticalAngle()
template `lowerVerticalAngle=`*(self: OpenXRCompositionLayerEquirect; value) = self.setLowerVerticalAngle(value)

template fallbackSegments*(self: OpenXRCompositionLayerEquirect): untyped = self.getFallbackSegments()
template `fallbackSegments=`*(self: OpenXRCompositionLayerEquirect; value) = self.setFallbackSegments(value)
