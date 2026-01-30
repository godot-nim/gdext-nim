{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdopenxrspatialcomponentdata; export gdopenxrspatialcomponentdata

expandOnClassImported(OpenXRSpatialComponentMesh2DList, OpenXRSpatialComponentData)

proc getTransform*(self: OpenXRSpatialComponentMesh2DList; index: int64): Transform3D =
  expandMethodBind(className OpenXRSpatialComponentMesh2DList, "get_transform", 1965739696)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(Transform3D)

proc getVertices*(self: OpenXRSpatialComponentMesh2DList; snapshot: RID; index: int64): PackedVector2Array =
  expandMethodBind(className OpenXRSpatialComponentMesh2DList, "get_vertices", 110850971)
  var ret: encoded PackedVector2Array
  methodbind.ptrcall(self, [getPtr snapshot, getPtr index], addr ret)
  (addr ret).decode_result(PackedVector2Array)

proc getIndices*(self: OpenXRSpatialComponentMesh2DList; snapshot: RID; index: int64): PackedInt32Array =
  expandMethodBind(className OpenXRSpatialComponentMesh2DList, "get_indices", 3393655756)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, [getPtr snapshot, getPtr index], addr ret)
  (addr ret).decode_result(PackedInt32Array)
