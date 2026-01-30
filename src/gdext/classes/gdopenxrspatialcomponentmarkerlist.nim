{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdopenxrspatialcomponentdata; export gdopenxrspatialcomponentdata

expandOnClassImported(OpenXRSpatialComponentMarkerList, OpenXRSpatialComponentData)

proc getMarkerType*(self: OpenXRSpatialComponentMarkerList; index: int64): OpenXRSpatialComponentMarkerList_MarkerType =
  expandMethodBind(className OpenXRSpatialComponentMarkerList, "get_marker_type", 2627847866)
  var ret: encoded OpenXRSpatialComponentMarkerList_MarkerType
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(OpenXRSpatialComponentMarkerList_MarkerType)

proc getMarkerId*(self: OpenXRSpatialComponentMarkerList; index: int64): uint32 =
  expandMethodBind(className OpenXRSpatialComponentMarkerList, "get_marker_id", 923996154)
  var ret: encoded uint32
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(uint32)

proc getMarkerData*(self: OpenXRSpatialComponentMarkerList; snapshot: RID; index: int64): Variant =
  expandMethodBind(className OpenXRSpatialComponentMarkerList, "get_marker_data", 4069510997)
  var ret: encoded Variant
  methodbind.ptrcall(self, [getPtr snapshot, getPtr index], addr ret)
  (addr ret).decode_result(Variant)
