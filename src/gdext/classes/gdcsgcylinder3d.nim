{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdcsgprimitive3d; export gdcsgprimitive3d

proc setRadius*(self: CsgCylinder3D; radius: Float): void =
  expandMethodBind(className CsgCylinder3D, "set_radius", 373806689)
  var `?param` = [getPtr radius]
  methodbind.ptrcall(self, addr `?param`[0])

proc getRadius*(self: CsgCylinder3D): Float =
  expandMethodBind(className CsgCylinder3D, "get_radius", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setHeight*(self: CsgCylinder3D; height: Float): void =
  expandMethodBind(className CsgCylinder3D, "set_height", 373806689)
  var `?param` = [getPtr height]
  methodbind.ptrcall(self, addr `?param`[0])

proc getHeight*(self: CsgCylinder3D): Float =
  expandMethodBind(className CsgCylinder3D, "get_height", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc setSides*(self: CsgCylinder3D; sides: int32): void =
  expandMethodBind(className CsgCylinder3D, "set_sides", 1286410249)
  var `?param` = [getPtr sides]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSides*(self: CsgCylinder3D): int32 =
  expandMethodBind(className CsgCylinder3D, "get_sides", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc setCone*(self: CsgCylinder3D; cone: bool): void =
  expandMethodBind(className CsgCylinder3D, "set_cone", 2586408642)
  var `?param` = [getPtr cone]
  methodbind.ptrcall(self, addr `?param`[0])

proc isCone*(self: CsgCylinder3D): bool =
  expandMethodBind(className CsgCylinder3D, "is_cone", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc setMaterial*(self: CsgCylinder3D; material: gdref Material): void =
  expandMethodBind(className CsgCylinder3D, "set_material", 2757459619)
  var `?param` = [getPtr material]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMaterial*(self: CsgCylinder3D): gdref Material =
  expandMethodBind(className CsgCylinder3D, "get_material", 5934680)
  var ret: encoded gdref Material
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Material)

proc setSmoothFaces*(self: CsgCylinder3D; smoothFaces: bool): void =
  expandMethodBind(className CsgCylinder3D, "set_smooth_faces", 2586408642)
  var `?param` = [getPtr smoothFaces]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSmoothFaces*(self: CsgCylinder3D): bool =
  expandMethodBind(className CsgCylinder3D, "get_smooth_faces", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

template radius*(self: CsgCylinder3D): untyped = self.getRadius()
template `radius=`*(self: CsgCylinder3D; value) = self.setRadius(value)

template height*(self: CsgCylinder3D): untyped = self.getHeight()
template `height=`*(self: CsgCylinder3D; value) = self.setHeight(value)

template sides*(self: CsgCylinder3D): untyped = self.getSides()
template `sides=`*(self: CsgCylinder3D; value) = self.setSides(value)

template cone*(self: CsgCylinder3D): untyped = self.isCone()
template `cone=`*(self: CsgCylinder3D; value) = self.setCone(value)

template smoothFaces*(self: CsgCylinder3D): untyped = self.getSmoothFaces()
template `smoothFaces=`*(self: CsgCylinder3D; value) = self.setSmoothFaces(value)

template material*(self: CsgCylinder3D): untyped = self.getMaterial()
template `material=`*(self: CsgCylinder3D; value) = self.setMaterial(value)

const CsgCylinder3D_vmap =
  CsgPrimitive3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CsgCylinder3D]): Table[string, string] = CsgCylinder3D_vmap