{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdopenxrspatialcomponentdata; export gdopenxrspatialcomponentdata

expandOnClassImported(OpenXRSpatialComponentParentList, OpenXRSpatialComponentData)

proc getParent*(self: OpenXRSpatialComponentParentList; index: int64): RID =
  expandMethodBind(className OpenXRSpatialComponentParentList, "get_parent", 495598643)
  var ret: encoded RID
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(RID)
