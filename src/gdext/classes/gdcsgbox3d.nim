{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcsgprimitive3d; export gdcsgprimitive3d

proc setSize*(self: CSGBox3D; size: Vector3): void =
  expandMethodBind(className CSGBox3D, "set_size", 3460891852)
  var `?param` = [getPtr size]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSize*(self: CSGBox3D): Vector3 =
  expandMethodBind(className CSGBox3D, "get_size", 3360562783)
  var ret: encoded Vector3
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector3)

proc setMaterial*(self: CSGBox3D; material: gdref Material): void =
  expandMethodBind(className CSGBox3D, "set_material", 2757459619)
  var `?param` = [getPtr material]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMaterial*(self: CSGBox3D): gdref Material =
  expandMethodBind(className CSGBox3D, "get_material", 5934680)
  var ret: encoded gdref Material
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Material)

template size*(self: CSGBox3D): untyped = self.getSize()
template `size=`*(self: CSGBox3D; value) = self.setSize(value)

template material*(self: CSGBox3D): untyped = self.getMaterial()
template `material=`*(self: CSGBox3D; value) = self.setMaterial(value)

const CSGBox3D_vmap =
  CSGPrimitive3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CSGBox3D]): Table[string, string] = CSGBox3D_vmap