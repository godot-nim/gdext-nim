{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdopenxrcompositionlayer; export gdopenxrcompositionlayer

proc setRadius*(self: OpenXrCompositionLayerCylinder; radius: Float): void =
  expandMethodBind(className OpenXrCompositionLayerCylinder, "set_radius", 373806689)
  var `?param` = [getPtr radius]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRadius*(self: OpenXrCompositionLayerCylinder): Float =
  expandMethodBind(className OpenXrCompositionLayerCylinder, "get_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setAspectRatio*(self: OpenXrCompositionLayerCylinder; aspectRatio: Float): void =
  expandMethodBind(className OpenXrCompositionLayerCylinder, "set_aspect_ratio", 373806689)
  var `?param` = [getPtr aspectRatio]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAspectRatio*(self: OpenXrCompositionLayerCylinder): Float =
  expandMethodBind(className OpenXrCompositionLayerCylinder, "get_aspect_ratio", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setCentralAngle*(self: OpenXrCompositionLayerCylinder; angle: Float): void =
  expandMethodBind(className OpenXrCompositionLayerCylinder, "set_central_angle", 373806689)
  var `?param` = [getPtr angle]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCentralAngle*(self: OpenXrCompositionLayerCylinder): Float =
  expandMethodBind(className OpenXrCompositionLayerCylinder, "get_central_angle", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setFallbackSegments*(self: OpenXrCompositionLayerCylinder; segments: uint32): void =
  expandMethodBind(className OpenXrCompositionLayerCylinder, "set_fallback_segments", 1286410249)
  var `?param` = [getPtr segments]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFallbackSegments*(self: OpenXrCompositionLayerCylinder): uint32 =
  expandMethodBind(className OpenXrCompositionLayerCylinder, "get_fallback_segments", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

template radius*(self: OpenXrCompositionLayerCylinder): untyped = self.getRadius()
template `radius=`*(self: OpenXrCompositionLayerCylinder; value) = self.setRadius(value)

template aspectRatio*(self: OpenXrCompositionLayerCylinder): untyped = self.getAspectRatio()
template `aspectRatio=`*(self: OpenXrCompositionLayerCylinder; value) = self.setAspectRatio(value)

template centralAngle*(self: OpenXrCompositionLayerCylinder): untyped = self.getCentralAngle()
template `centralAngle=`*(self: OpenXrCompositionLayerCylinder; value) = self.setCentralAngle(value)

template fallbackSegments*(self: OpenXrCompositionLayerCylinder): untyped = self.getFallbackSegments()
template `fallbackSegments=`*(self: OpenXrCompositionLayerCylinder; value) = self.setFallbackSegments(value)

const OpenXrCompositionLayerCylinder_vmap =
  OpenXrCompositionLayer.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[OpenXrCompositionLayerCylinder]): Table[string, string] = OpenXrCompositionLayerCylinder_vmap