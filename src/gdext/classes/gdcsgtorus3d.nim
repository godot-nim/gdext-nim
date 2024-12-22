{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcsgprimitive3d; export gdcsgprimitive3d

proc setInnerRadius*(self: CSGTorus3D; radius: Float): void =
  expandMethodBind(className CSGTorus3D, "set_inner_radius", 373806689)
  var `?param` = [getPtr radius]
  methodbind.ptrcall(self, addr `?param`[0])

proc getInnerRadius*(self: CSGTorus3D): Float =
  expandMethodBind(className CSGTorus3D, "get_inner_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setOuterRadius*(self: CSGTorus3D; radius: Float): void =
  expandMethodBind(className CSGTorus3D, "set_outer_radius", 373806689)
  var `?param` = [getPtr radius]
  methodbind.ptrcall(self, addr `?param`[0])

proc getOuterRadius*(self: CSGTorus3D): Float =
  expandMethodBind(className CSGTorus3D, "get_outer_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setSides*(self: CSGTorus3D; sides: int32): void =
  expandMethodBind(className CSGTorus3D, "set_sides", 1286410249)
  var `?param` = [getPtr sides]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSides*(self: CSGTorus3D): int32 =
  expandMethodBind(className CSGTorus3D, "get_sides", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setRingSides*(self: CSGTorus3D; sides: int32): void =
  expandMethodBind(className CSGTorus3D, "set_ring_sides", 1286410249)
  var `?param` = [getPtr sides]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRingSides*(self: CSGTorus3D): int32 =
  expandMethodBind(className CSGTorus3D, "get_ring_sides", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setMaterial*(self: CSGTorus3D; material: gdref Material): void =
  expandMethodBind(className CSGTorus3D, "set_material", 2757459619)
  var `?param` = [getPtr material]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMaterial*(self: CSGTorus3D): gdref Material =
  expandMethodBind(className CSGTorus3D, "get_material", 5934680)
  var ret: encoded gdref Material
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Material)

proc setSmoothFaces*(self: CSGTorus3D; smoothFaces: bool): void =
  expandMethodBind(className CSGTorus3D, "set_smooth_faces", 2586408642)
  var `?param` = [getPtr smoothFaces]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSmoothFaces*(self: CSGTorus3D): bool =
  expandMethodBind(className CSGTorus3D, "get_smooth_faces", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template innerRadius*(self: CSGTorus3D): untyped = self.getInnerRadius()
template `innerRadius=`*(self: CSGTorus3D; value) = self.setInnerRadius(value)

template outerRadius*(self: CSGTorus3D): untyped = self.getOuterRadius()
template `outerRadius=`*(self: CSGTorus3D; value) = self.setOuterRadius(value)

template sides*(self: CSGTorus3D): untyped = self.getSides()
template `sides=`*(self: CSGTorus3D; value) = self.setSides(value)

template ringSides*(self: CSGTorus3D): untyped = self.getRingSides()
template `ringSides=`*(self: CSGTorus3D; value) = self.setRingSides(value)

template smoothFaces*(self: CSGTorus3D): untyped = self.getSmoothFaces()
template `smoothFaces=`*(self: CSGTorus3D; value) = self.setSmoothFaces(value)

template material*(self: CSGTorus3D): untyped = self.getMaterial()
template `material=`*(self: CSGTorus3D; value) = self.setMaterial(value)

const CSGTorus3D_vmap =
  CSGPrimitive3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CSGTorus3D]): Table[string, string] = CSGTorus3D_vmap