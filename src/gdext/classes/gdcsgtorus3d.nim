{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcsgprimitive3d; export gdcsgprimitive3d

proc setInnerRadius*(self: CsgTorus3D; radius: Float): void =
  expandMethodBind(className CsgTorus3D, "set_inner_radius", 373806689)
  var `?param` = [getPtr radius]
  methodbind.ptrcall(self, addr `?param`[0])

proc getInnerRadius*(self: CsgTorus3D): Float =
  expandMethodBind(className CsgTorus3D, "get_inner_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setOuterRadius*(self: CsgTorus3D; radius: Float): void =
  expandMethodBind(className CsgTorus3D, "set_outer_radius", 373806689)
  var `?param` = [getPtr radius]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOuterRadius*(self: CsgTorus3D): Float =
  expandMethodBind(className CsgTorus3D, "get_outer_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setSides*(self: CsgTorus3D; sides: int32): void =
  expandMethodBind(className CsgTorus3D, "set_sides", 1286410249)
  var `?param` = [getPtr sides]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSides*(self: CsgTorus3D): int32 =
  expandMethodBind(className CsgTorus3D, "get_sides", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setRingSides*(self: CsgTorus3D; sides: int32): void =
  expandMethodBind(className CsgTorus3D, "set_ring_sides", 1286410249)
  var `?param` = [getPtr sides]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRingSides*(self: CsgTorus3D): int32 =
  expandMethodBind(className CsgTorus3D, "get_ring_sides", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setMaterial*(self: CsgTorus3D; material: gdref Material): void =
  expandMethodBind(className CsgTorus3D, "set_material", 2757459619)
  var `?param` = [getPtr material]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMaterial*(self: CsgTorus3D): gdref Material =
  expandMethodBind(className CsgTorus3D, "get_material", 5934680)
  var ret: encoded gdref Material
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Material)

proc setSmoothFaces*(self: CsgTorus3D; smoothFaces: bool): void =
  expandMethodBind(className CsgTorus3D, "set_smooth_faces", 2586408642)
  var `?param` = [getPtr smoothFaces]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSmoothFaces*(self: CsgTorus3D): bool =
  expandMethodBind(className CsgTorus3D, "get_smooth_faces", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template innerRadius*(self: CsgTorus3D): untyped = self.getInnerRadius()
template `innerRadius=`*(self: CsgTorus3D; value) = self.setInnerRadius(value)

template outerRadius*(self: CsgTorus3D): untyped = self.getOuterRadius()
template `outerRadius=`*(self: CsgTorus3D; value) = self.setOuterRadius(value)

template sides*(self: CsgTorus3D): untyped = self.getSides()
template `sides=`*(self: CsgTorus3D; value) = self.setSides(value)

template ringSides*(self: CsgTorus3D): untyped = self.getRingSides()
template `ringSides=`*(self: CsgTorus3D; value) = self.setRingSides(value)

template smoothFaces*(self: CsgTorus3D): untyped = self.getSmoothFaces()
template `smoothFaces=`*(self: CsgTorus3D; value) = self.setSmoothFaces(value)

template material*(self: CsgTorus3D): untyped = self.getMaterial()
template `material=`*(self: CsgTorus3D; value) = self.setMaterial(value)

const CsgTorus3D_vmap =
  CsgPrimitive3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CsgTorus3D]): Table[string, string] = CsgTorus3D_vmap