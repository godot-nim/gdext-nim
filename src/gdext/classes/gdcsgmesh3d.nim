{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcsgprimitive3d; export gdcsgprimitive3d

proc setMesh*(self: CSGMesh3D; mesh: gdref Mesh): void =
  expandMethodBind(className CSGMesh3D, "set_mesh", 194775623)
  var `?param` = [getPtr mesh]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMesh*(self: CSGMesh3D): gdref Mesh =
  expandMethodBind(className CSGMesh3D, "get_mesh", 4081188045)
  var ret: encoded gdref Mesh
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Mesh)

proc setMaterial*(self: CSGMesh3D; material: gdref Material): void =
  expandMethodBind(className CSGMesh3D, "set_material", 2757459619)
  var `?param` = [getPtr material]
  methodbind.ptrcall(self, addr `?param`[0])

proc getMaterial*(self: CSGMesh3D): gdref Material =
  expandMethodBind(className CSGMesh3D, "get_material", 5934680)
  var ret: encoded gdref Material
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Material)

template mesh*(self: CSGMesh3D): untyped = self.getMesh()
template `mesh=`*(self: CSGMesh3D; value) = self.setMesh(value)

template material*(self: CSGMesh3D): untyped = self.getMaterial()
template `material=`*(self: CSGMesh3D; value) = self.setMaterial(value)

const CSGMesh3D_vmap =
  CSGPrimitive3D.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[CSGMesh3D]): Table[string, string] = CSGMesh3D_vmap