{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdopenxrspatialcomponentdata; export gdopenxrspatialcomponentdata

expandOnClassImported(OpenXRSpatialComponentPlaneAlignmentList, OpenXRSpatialComponentData)

proc getPlaneAlignment*(self: OpenXRSpatialComponentPlaneAlignmentList; index: int64): OpenXRSpatialComponentPlaneAlignmentList_PlaneAlignment =
  expandMethodBind(className OpenXRSpatialComponentPlaneAlignmentList, "get_plane_alignment", 3340200270)
  var ret: encoded OpenXRSpatialComponentPlaneAlignmentList_PlaneAlignment
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(OpenXRSpatialComponentPlaneAlignmentList_PlaneAlignment)
