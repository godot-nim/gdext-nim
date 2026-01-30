{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdopenxrspatialcomponentdata; export gdopenxrspatialcomponentdata

expandOnClassImported(OpenXRSpatialComponentAnchorList, OpenXRSpatialComponentData)

proc getEntityPose*(self: OpenXRSpatialComponentAnchorList; index: int64): Transform3D =
  expandMethodBind(className OpenXRSpatialComponentAnchorList, "get_entity_pose", 1965739696)
  var ret: encoded Transform3D
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(Transform3D)
