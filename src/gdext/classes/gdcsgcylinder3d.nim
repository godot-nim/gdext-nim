{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcsgprimitive3d; export gdcsgprimitive3d

proc setRadius*(self: CSGCylinder3D; radius: Float): void =
  expandMethodBind(className CSGCylinder3D, "set_radius", 373806689)
  methodbind.ptrcall(self, [getPtr radius])

proc getRadius*(self: CSGCylinder3D): Float =
  expandMethodBind(className CSGCylinder3D, "get_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setHeight*(self: CSGCylinder3D; height: Float): void =
  expandMethodBind(className CSGCylinder3D, "set_height", 373806689)
  methodbind.ptrcall(self, [getPtr height])

proc getHeight*(self: CSGCylinder3D): Float =
  expandMethodBind(className CSGCylinder3D, "get_height", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Float)

proc setSides*(self: CSGCylinder3D; sides: int32): void =
  expandMethodBind(className CSGCylinder3D, "set_sides", 1286410249)
  methodbind.ptrcall(self, [getPtr sides])

proc getSides*(self: CSGCylinder3D): int32 =
  expandMethodBind(className CSGCylinder3D, "get_sides", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int32)

proc setCone*(self: CSGCylinder3D; cone: bool): void =
  expandMethodBind(className CSGCylinder3D, "set_cone", 2586408642)
  methodbind.ptrcall(self, [getPtr cone])

proc isCone*(self: CSGCylinder3D): bool =
  expandMethodBind(className CSGCylinder3D, "is_cone", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setMaterial*(self: CSGCylinder3D; material: gdref Material): void =
  expandMethodBind(className CSGCylinder3D, "set_material", 2757459619)
  methodbind.ptrcall(self, [getPtr material])

proc getMaterial*(self: CSGCylinder3D): gdref Material =
  expandMethodBind(className CSGCylinder3D, "get_material", 5934680)
  var ret: encoded gdref Material
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(gdref Material)

proc setSmoothFaces*(self: CSGCylinder3D; smoothFaces: bool): void =
  expandMethodBind(className CSGCylinder3D, "set_smooth_faces", 2586408642)
  methodbind.ptrcall(self, [getPtr smoothFaces])

proc getSmoothFaces*(self: CSGCylinder3D): bool =
  expandMethodBind(className CSGCylinder3D, "get_smooth_faces", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

template radius*(self: CSGCylinder3D): untyped = self.getRadius()
template `radius=`*(self: CSGCylinder3D; value) = self.setRadius(value)

template height*(self: CSGCylinder3D): untyped = self.getHeight()
template `height=`*(self: CSGCylinder3D; value) = self.setHeight(value)

template sides*(self: CSGCylinder3D): untyped = self.getSides()
template `sides=`*(self: CSGCylinder3D; value) = self.setSides(value)

template cone*(self: CSGCylinder3D): untyped = self.isCone()
template `cone=`*(self: CSGCylinder3D; value) = self.setCone(value)

template smoothFaces*(self: CSGCylinder3D): untyped = self.getSmoothFaces()
template `smoothFaces=`*(self: CSGCylinder3D; value) = self.setSmoothFaces(value)

template material*(self: CSGCylinder3D): untyped = self.getMaterial()
template `material=`*(self: CSGCylinder3D; value) = self.setMaterial(value)

const CSGCylinder3D_vmap =
  CSGPrimitive3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CSGCylinder3D]): Table[string, string] = CSGCylinder3D_vmap