{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdprimitivemesh; export gdprimitivemesh

proc setRadius*(self: SphereMesh; radius: Float): void =
  expandMethodBind(className SphereMesh, "set_radius", 373806689)
  var `?param` = [getPtr radius]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRadius*(self: SphereMesh): Float =
  expandMethodBind(className SphereMesh, "get_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setHeight*(self: SphereMesh; height: Float): void =
  expandMethodBind(className SphereMesh, "set_height", 373806689)
  var `?param` = [getPtr height]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHeight*(self: SphereMesh): Float =
  expandMethodBind(className SphereMesh, "get_height", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setRadialSegments*(self: SphereMesh; radialSegments: int32): void =
  expandMethodBind(className SphereMesh, "set_radial_segments", 1286410249)
  var `?param` = [getPtr radialSegments]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRadialSegments*(self: SphereMesh): int32 =
  expandMethodBind(className SphereMesh, "get_radial_segments", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setRings*(self: SphereMesh; rings: int32): void =
  expandMethodBind(className SphereMesh, "set_rings", 1286410249)
  var `?param` = [getPtr rings]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRings*(self: SphereMesh): int32 =
  expandMethodBind(className SphereMesh, "get_rings", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setIsHemisphere*(self: SphereMesh; isHemisphere: bool): void =
  expandMethodBind(className SphereMesh, "set_is_hemisphere", 2586408642)
  var `?param` = [getPtr isHemisphere]
  methodbind.ptrcall(self, addr `?param`[0])

proc getIsHemisphere*(self: SphereMesh): bool =
  expandMethodBind(className SphereMesh, "get_is_hemisphere", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template radius*(self: SphereMesh): untyped = self.getRadius()
template `radius=`*(self: SphereMesh; value) = self.setRadius(value)

template height*(self: SphereMesh): untyped = self.getHeight()
template `height=`*(self: SphereMesh; value) = self.setHeight(value)

template radialSegments*(self: SphereMesh): untyped = self.getRadialSegments()
template `radialSegments=`*(self: SphereMesh; value) = self.setRadialSegments(value)

template rings*(self: SphereMesh): untyped = self.getRings()
template `rings=`*(self: SphereMesh; value) = self.setRings(value)

template isHemisphere*(self: SphereMesh): untyped = self.getIsHemisphere()
template `isHemisphere=`*(self: SphereMesh; value) = self.setIsHemisphere(value)

const SphereMesh_vmap =
  PrimitiveMesh.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[SphereMesh]): Table[string, string] = SphereMesh_vmap