{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdopenxrcompositionlayer; export gdopenxrcompositionlayer

proc setRadius*(self: OpenXRCompositionLayerCylinder; radius: Float): void =
  expandMethodBind(className OpenXRCompositionLayerCylinder, "set_radius", 373806689)
  var `?param` = [getPtr radius]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRadius*(self: OpenXRCompositionLayerCylinder): Float =
  expandMethodBind(className OpenXRCompositionLayerCylinder, "get_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setAspectRatio*(self: OpenXRCompositionLayerCylinder; aspectRatio: Float): void =
  expandMethodBind(className OpenXRCompositionLayerCylinder, "set_aspect_ratio", 373806689)
  var `?param` = [getPtr aspectRatio]
  methodbind.ptrcall(self, addr `?param`[0])

proc getAspectRatio*(self: OpenXRCompositionLayerCylinder): Float =
  expandMethodBind(className OpenXRCompositionLayerCylinder, "get_aspect_ratio", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setCentralAngle*(self: OpenXRCompositionLayerCylinder; angle: Float): void =
  expandMethodBind(className OpenXRCompositionLayerCylinder, "set_central_angle", 373806689)
  var `?param` = [getPtr angle]
  methodbind.ptrcall(self, addr `?param`[0])

proc getCentralAngle*(self: OpenXRCompositionLayerCylinder): Float =
  expandMethodBind(className OpenXRCompositionLayerCylinder, "get_central_angle", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setFallbackSegments*(self: OpenXRCompositionLayerCylinder; segments: uint32): void =
  expandMethodBind(className OpenXRCompositionLayerCylinder, "set_fallback_segments", 1286410249)
  var `?param` = [getPtr segments]
  methodbind.ptrcall(self, addr `?param`[0])

proc getFallbackSegments*(self: OpenXRCompositionLayerCylinder): uint32 =
  expandMethodBind(className OpenXRCompositionLayerCylinder, "get_fallback_segments", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(uint32)

template radius*(self: OpenXRCompositionLayerCylinder): untyped = self.getRadius()
template `radius=`*(self: OpenXRCompositionLayerCylinder; value) = self.setRadius(value)

template aspectRatio*(self: OpenXRCompositionLayerCylinder): untyped = self.getAspectRatio()
template `aspectRatio=`*(self: OpenXRCompositionLayerCylinder; value) = self.setAspectRatio(value)

template centralAngle*(self: OpenXRCompositionLayerCylinder): untyped = self.getCentralAngle()
template `centralAngle=`*(self: OpenXRCompositionLayerCylinder; value) = self.setCentralAngle(value)

template fallbackSegments*(self: OpenXRCompositionLayerCylinder): untyped = self.getFallbackSegments()
template `fallbackSegments=`*(self: OpenXRCompositionLayerCylinder; value) = self.setFallbackSegments(value)

const OpenXRCompositionLayerCylinder_vmap =
  OpenXRCompositionLayer.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[OpenXRCompositionLayerCylinder]): Table[string, string] = OpenXRCompositionLayerCylinder_vmap