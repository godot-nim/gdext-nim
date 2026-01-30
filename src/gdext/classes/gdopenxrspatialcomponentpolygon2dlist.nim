{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdopenxrspatialcomponentdata; export gdopenxrspatialcomponentdata

expandOnClassImported(OpenXRSpatialComponentPolygon2DList, OpenXRSpatialComponentData)

proc getTransform*(self: OpenXRSpatialComponentPolygon2DList; index: int64): Transform3D =
  expandMethodBind(className OpenXRSpatialComponentPolygon2DList, "get_transform", 1965739696)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(Transform3D)

proc getVertices*(self: OpenXRSpatialComponentPolygon2DList; snapshot: RID; index: int64): PackedVector2Array =
  expandMethodBind(className OpenXRSpatialComponentPolygon2DList, "get_vertices", 110850971)
  var ret: encoded PackedVector2Array
  methodbind.ptrcall(self, [getPtr snapshot, getPtr index], addr ret)
  (addr ret).decode_result(PackedVector2Array)
