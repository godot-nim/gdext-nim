{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcsgprimitive3d; export gdcsgprimitive3d

proc setRadius*(self: CSGSphere3D; radius: Float): void =
  expandMethodBind(className CSGSphere3D, "set_radius", 373806689)
  var `?param` = [getPtr radius]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRadius*(self: CSGSphere3D): Float =
  expandMethodBind(className CSGSphere3D, "get_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setRadialSegments*(self: CSGSphere3D; radialSegments: int32): void =
  expandMethodBind(className CSGSphere3D, "set_radial_segments", 1286410249)
  var `?param` = [getPtr radialSegments]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRadialSegments*(self: CSGSphere3D): int32 =
  expandMethodBind(className CSGSphere3D, "get_radial_segments", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setRings*(self: CSGSphere3D; rings: int32): void =
  expandMethodBind(className CSGSphere3D, "set_rings", 1286410249)
  var `?param` = [getPtr rings]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRings*(self: CSGSphere3D): int32 =
  expandMethodBind(className CSGSphere3D, "get_rings", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setSmoothFaces*(self: CSGSphere3D; smoothFaces: bool): void =
  expandMethodBind(className CSGSphere3D, "set_smooth_faces", 2586408642)
  var `?param` = [getPtr smoothFaces]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSmoothFaces*(self: CSGSphere3D): bool =
  expandMethodBind(className CSGSphere3D, "get_smooth_faces", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setMaterial*(self: CSGSphere3D; material: gdref Material): void =
  expandMethodBind(className CSGSphere3D, "set_material", 2757459619)
  var `?param` = [getPtr material]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMaterial*(self: CSGSphere3D): gdref Material =
  expandMethodBind(className CSGSphere3D, "get_material", 5934680)
  var ret: encoded gdref Material
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Material)

template radius*(self: CSGSphere3D): untyped = self.getRadius()
template `radius=`*(self: CSGSphere3D; value) = self.setRadius(value)

template radialSegments*(self: CSGSphere3D): untyped = self.getRadialSegments()
template `radialSegments=`*(self: CSGSphere3D; value) = self.setRadialSegments(value)

template rings*(self: CSGSphere3D): untyped = self.getRings()
template `rings=`*(self: CSGSphere3D; value) = self.setRings(value)

template smoothFaces*(self: CSGSphere3D): untyped = self.getSmoothFaces()
template `smoothFaces=`*(self: CSGSphere3D; value) = self.setSmoothFaces(value)

template material*(self: CSGSphere3D): untyped = self.getMaterial()
template `material=`*(self: CSGSphere3D; value) = self.setMaterial(value)

const CSGSphere3D_vmap =
  CSGPrimitive3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CSGSphere3D]): Table[string, string] = CSGSphere3D_vmap