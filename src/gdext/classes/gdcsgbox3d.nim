{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdcsgprimitive3d; export gdcsgprimitive3d

proc setSize*(self: CsgBox3D; size: Vector3): void =
  expandMethodBind(className CsgBox3D, "set_size", 3460891852)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSize*(self: CsgBox3D): Vector3 =
  expandMethodBind(className CsgBox3D, "get_size", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setMaterial*(self: CsgBox3D; material: gdref Material): void =
  expandMethodBind(className CsgBox3D, "set_material", 2757459619)
  var `?param` = [getPtr material]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMaterial*(self: CsgBox3D): gdref Material =
  expandMethodBind(className CsgBox3D, "get_material", 5934680)
  var ret: encoded gdref Material
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Material)

template size*(self: CsgBox3D): untyped = self.getSize()
template `size=`*(self: CsgBox3D; value) = self.setSize(value)

template material*(self: CsgBox3D): untyped = self.getMaterial()
template `material=`*(self: CsgBox3D; value) = self.setMaterial(value)

const CsgBox3D_vmap =
  CsgPrimitive3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CsgBox3D]): Table[string, string] = CsgBox3D_vmap