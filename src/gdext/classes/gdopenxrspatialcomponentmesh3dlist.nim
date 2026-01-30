{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdopenxrspatialcomponentdata; export gdopenxrspatialcomponentdata

expandOnClassImported(OpenXRSpatialComponentMesh3DList, OpenXRSpatialComponentData)

proc getTransform*(self: OpenXRSpatialComponentMesh3DList; index: int64): Transform3D =
  expandMethodBind(className OpenXRSpatialComponentMesh3DList, "get_transform", 1965739696)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(Transform3D)

proc getMesh*(self: OpenXRSpatialComponentMesh3DList; index: int64): gdref Mesh =
  expandMethodBind(className OpenXRSpatialComponentMesh3DList, "get_mesh", 1576363275)
  var ret: encoded gdref Mesh
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(gdref Mesh)
