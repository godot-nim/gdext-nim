{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdopenxrcompositionlayer; export gdopenxrcompositionlayer

proc setRadius*(self: OpenXrCompositionLayerEquirect; radius: Float): void =
  expandMethodBind(className OpenXrCompositionLayerEquirect, "set_radius", 373806689)
  var `?param` = [getPtr radius]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRadius*(self: OpenXrCompositionLayerEquirect): Float =
  expandMethodBind(className OpenXrCompositionLayerEquirect, "get_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setCentralHorizontalAngle*(self: OpenXrCompositionLayerEquirect; angle: Float): void =
  expandMethodBind(className OpenXrCompositionLayerEquirect, "set_central_horizontal_angle", 373806689)
  var `?param` = [getPtr angle]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCentralHorizontalAngle*(self: OpenXrCompositionLayerEquirect): Float =
  expandMethodBind(className OpenXrCompositionLayerEquirect, "get_central_horizontal_angle", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setUpperVerticalAngle*(self: OpenXrCompositionLayerEquirect; angle: Float): void =
  expandMethodBind(className OpenXrCompositionLayerEquirect, "set_upper_vertical_angle", 373806689)
  var `?param` = [getPtr angle]
  methodbind.ptrcall(self, addr `?param`[0])

proc getUpperVerticalAngle*(self: OpenXrCompositionLayerEquirect): Float =
  expandMethodBind(className OpenXrCompositionLayerEquirect, "get_upper_vertical_angle", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setLowerVerticalAngle*(self: OpenXrCompositionLayerEquirect; angle: Float): void =
  expandMethodBind(className OpenXrCompositionLayerEquirect, "set_lower_vertical_angle", 373806689)
  var `?param` = [getPtr angle]
  methodbind.ptrcall(self, addr `?param`[0])

proc getLowerVerticalAngle*(self: OpenXrCompositionLayerEquirect): Float =
  expandMethodBind(className OpenXrCompositionLayerEquirect, "get_lower_vertical_angle", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setFallbackSegments*(self: OpenXrCompositionLayerEquirect; segments: uint32): void =
  expandMethodBind(className OpenXrCompositionLayerEquirect, "set_fallback_segments", 1286410249)
  var `?param` = [getPtr segments]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFallbackSegments*(self: OpenXrCompositionLayerEquirect): uint32 =
  expandMethodBind(className OpenXrCompositionLayerEquirect, "get_fallback_segments", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

template radius*(self: OpenXrCompositionLayerEquirect): untyped = self.getRadius()
template `radius=`*(self: OpenXrCompositionLayerEquirect; value) = self.setRadius(value)

template centralHorizontalAngle*(self: OpenXrCompositionLayerEquirect): untyped = self.getCentralHorizontalAngle()
template `centralHorizontalAngle=`*(self: OpenXrCompositionLayerEquirect; value) = self.setCentralHorizontalAngle(value)

template upperVerticalAngle*(self: OpenXrCompositionLayerEquirect): untyped = self.getUpperVerticalAngle()
template `upperVerticalAngle=`*(self: OpenXrCompositionLayerEquirect; value) = self.setUpperVerticalAngle(value)

template lowerVerticalAngle*(self: OpenXrCompositionLayerEquirect): untyped = self.getLowerVerticalAngle()
template `lowerVerticalAngle=`*(self: OpenXrCompositionLayerEquirect; value) = self.setLowerVerticalAngle(value)

template fallbackSegments*(self: OpenXrCompositionLayerEquirect): untyped = self.getFallbackSegments()
template `fallbackSegments=`*(self: OpenXrCompositionLayerEquirect; value) = self.setFallbackSegments(value)

const OpenXrCompositionLayerEquirect_vmap =
  OpenXrCompositionLayer.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[OpenXrCompositionLayerEquirect]): Table[string, string] = OpenXrCompositionLayerEquirect_vmap