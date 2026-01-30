{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdopenxrspatialcomponentdata; export gdopenxrspatialcomponentdata

expandOnClassImported(OpenXRSpatialComponentBounded3DList, OpenXRSpatialComponentData)

proc getCenterPose*(self: OpenXRSpatialComponentBounded3DList; index: int64): Transform3D =
  expandMethodBind(className OpenXRSpatialComponentBounded3DList, "get_center_pose", 1965739696)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(Transform3D)

proc getSize*(self: OpenXRSpatialComponentBounded3DList; index: int64): Vector3 =
  expandMethodBind(className OpenXRSpatialComponentBounded3DList, "get_size", 711720468)
  var ret: encoded Vector3
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(Vector3)
