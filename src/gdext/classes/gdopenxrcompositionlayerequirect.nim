{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdopenxrcompositionlayer; export gdopenxrcompositionlayer

proc setRadius*(self: OpenXRCompositionLayerEquirect; radius: Float): void =
  expandMethodBind(className OpenXRCompositionLayerEquirect, "set_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius])

proc getRadius*(self: OpenXRCompositionLayerEquirect): Float =
  expandMethodBind(className OpenXRCompositionLayerEquirect, "get_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setCentralHorizontalAngle*(self: OpenXRCompositionLayerEquirect; angle: Float): void =
  expandMethodBind(className OpenXRCompositionLayerEquirect, "set_central_horizontal_angle", 373806689)
  methodbind.ptrcall(self, [getPtr angle])

proc getCentralHorizontalAngle*(self: OpenXRCompositionLayerEquirect): Float =
  expandMethodBind(className OpenXRCompositionLayerEquirect, "get_central_horizontal_angle", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setUpperVerticalAngle*(self: OpenXRCompositionLayerEquirect; angle: Float): void =
  expandMethodBind(className OpenXRCompositionLayerEquirect, "set_upper_vertical_angle", 373806689)
  methodbind.ptrcall(self, [getPtr angle])

proc getUpperVerticalAngle*(self: OpenXRCompositionLayerEquirect): Float =
  expandMethodBind(className OpenXRCompositionLayerEquirect, "get_upper_vertical_angle", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setLowerVerticalAngle*(self: OpenXRCompositionLayerEquirect; angle: Float): void =
  expandMethodBind(className OpenXRCompositionLayerEquirect, "set_lower_vertical_angle", 373806689)
  methodbind.ptrcall(self, [getPtr angle])

proc getLowerVerticalAngle*(self: OpenXRCompositionLayerEquirect): Float =
  expandMethodBind(className OpenXRCompositionLayerEquirect, "get_lower_vertical_angle", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setFallbackSegments*(self: OpenXRCompositionLayerEquirect; segments: uint32): void =
  expandMethodBind(className OpenXRCompositionLayerEquirect, "set_fallback_segments", 1286410249)
  methodbind.ptrcall(self, [getPtr segments])

proc getFallbackSegments*(self: OpenXRCompositionLayerEquirect): uint32 =
  expandMethodBind(className OpenXRCompositionLayerEquirect, "get_fallback_segments", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint32)

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

const OpenXRCompositionLayerEquirect_vmap =
  OpenXRCompositionLayer.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[OpenXRCompositionLayerEquirect]): Table[string, string] = OpenXRCompositionLayerEquirect_vmap