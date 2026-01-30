{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdopenxrspatialcomponentdata; export gdopenxrspatialcomponentdata

expandOnClassImported(OpenXRSpatialComponentPlaneSemanticLabelList, OpenXRSpatialComponentData)

proc getPlaneSemanticLabel*(self: OpenXRSpatialComponentPlaneSemanticLabelList; index: int64): OpenXRSpatialComponentPlaneSemanticLabelList_PlaneSemanticLabel =
  expandMethodBind(className OpenXRSpatialComponentPlaneSemanticLabelList, "get_plane_semantic_label", 1889332427)
  var ret: encoded OpenXRSpatialComponentPlaneSemanticLabelList_PlaneSemanticLabel
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(OpenXRSpatialComponentPlaneSemanticLabelList_PlaneSemanticLabel)
