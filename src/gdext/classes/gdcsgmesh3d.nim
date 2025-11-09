{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdcsgprimitive3d; export gdcsgprimitive3d

expandOnClassImported(CSGMesh3D, CSGPrimitive3D)

proc setMesh*(self: CSGMesh3D; mesh: gdref Mesh): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGMesh3D, "set_mesh", 194775623)
  methodbind.ptrcall(self, [getPtr mesh], void)

proc getMesh*(self: CSGMesh3D): gdref Mesh =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGMesh3D, "get_mesh", 4081188045)
  methodbind.ptrcall(self, [], gdref Mesh)

proc setMaterial*(self: CSGMesh3D; material: gdref Material): void =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGMesh3D, "set_material", 2757459619)
  methodbind.ptrcall(self, [getPtr material], void)

proc getMaterial*(self: CSGMesh3D): gdref Material =
  var methodbind {.global.}: MethodBindPtr
  if unlikely(methodbind.isNil):
    methodbind = ClassDB.getMethodBind(className CSGMesh3D, "get_material", 5934680)
  methodbind.ptrcall(self, [], gdref Material)

template mesh*(self: CSGMesh3D): untyped = self.getMesh()
template `mesh=`*(self: CSGMesh3D; value) = self.setMesh(value)

template material*(self: CSGMesh3D): untyped = self.getMaterial()
template `material=`*(self: CSGMesh3D; value) = self.setMaterial(value)
