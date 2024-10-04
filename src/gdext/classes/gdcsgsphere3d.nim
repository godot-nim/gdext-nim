{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdcsgprimitive3d; export gdcsgprimitive3d

proc setRadius*(self: CsgSphere3D; radius: Float): void =
  expandMethodBind(className CsgSphere3D, "set_radius", 373806689)
  var `?param` = [getPtr radius]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRadius*(self: CsgSphere3D): Float =
  expandMethodBind(className CsgSphere3D, "get_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setRadialSegments*(self: CsgSphere3D; radialSegments: int32): void =
  expandMethodBind(className CsgSphere3D, "set_radial_segments", 1286410249)
  var `?param` = [getPtr radialSegments]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRadialSegments*(self: CsgSphere3D): int32 =
  expandMethodBind(className CsgSphere3D, "get_radial_segments", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setRings*(self: CsgSphere3D; rings: int32): void =
  expandMethodBind(className CsgSphere3D, "set_rings", 1286410249)
  var `?param` = [getPtr rings]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRings*(self: CsgSphere3D): int32 =
  expandMethodBind(className CsgSphere3D, "get_rings", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setSmoothFaces*(self: CsgSphere3D; smoothFaces: bool): void =
  expandMethodBind(className CsgSphere3D, "set_smooth_faces", 2586408642)
  var `?param` = [getPtr smoothFaces]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSmoothFaces*(self: CsgSphere3D): bool =
  expandMethodBind(className CsgSphere3D, "get_smooth_faces", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setMaterial*(self: CsgSphere3D; material: gdref Material): void =
  expandMethodBind(className CsgSphere3D, "set_material", 2757459619)
  var `?param` = [getPtr material]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMaterial*(self: CsgSphere3D): gdref Material =
  expandMethodBind(className CsgSphere3D, "get_material", 5934680)
  var ret: encoded gdref Material
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Material)

template radius*(self: CsgSphere3D): untyped = self.getRadius()
template `radius=`*(self: CsgSphere3D; value) = self.setRadius(value)

template radialSegments*(self: CsgSphere3D): untyped = self.getRadialSegments()
template `radialSegments=`*(self: CsgSphere3D; value) = self.setRadialSegments(value)

template rings*(self: CsgSphere3D): untyped = self.getRings()
template `rings=`*(self: CsgSphere3D; value) = self.setRings(value)

template smoothFaces*(self: CsgSphere3D): untyped = self.getSmoothFaces()
template `smoothFaces=`*(self: CsgSphere3D; value) = self.setSmoothFaces(value)

template material*(self: CsgSphere3D): untyped = self.getMaterial()
template `material=`*(self: CsgSphere3D; value) = self.setMaterial(value)

const CsgSphere3D_vmap =
  CsgPrimitive3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CsgSphere3D]): Table[string, string] = CsgSphere3D_vmap