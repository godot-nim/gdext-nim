{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdopenxrspatialcomponentdata; export gdopenxrspatialcomponentdata

expandOnClassImported(OpenXRSpatialComponentBounded2DList, OpenXRSpatialComponentData)

proc getCenterPose*(self: OpenXRSpatialComponentBounded2DList; index: int64): Transform3D =
  expandMethodBind(className OpenXRSpatialComponentBounded2DList, "get_center_pose", 1965739696)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(Transform3D)

proc getSize*(self: OpenXRSpatialComponentBounded2DList; index: int64): Vector2 =
  expandMethodBind(className OpenXRSpatialComponentBounded2DList, "get_size", 2299179447)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(Vector2)
