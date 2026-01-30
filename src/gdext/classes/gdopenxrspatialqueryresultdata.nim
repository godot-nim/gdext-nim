{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdopenxrspatialcomponentdata; export gdopenxrspatialcomponentdata

expandOnClassImported(OpenXRSpatialQueryResultData, OpenXRSpatialComponentData)

proc getCapacity*(self: OpenXRSpatialQueryResultData): int64 =
  expandMethodBind(className OpenXRSpatialQueryResultData, "get_capacity", 3905245786)
  var ret: encoded int64
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(int64)

proc getEntityId*(self: OpenXRSpatialQueryResultData; index: int64): uint64 =
  expandMethodBind(className OpenXRSpatialQueryResultData, "get_entity_id", 923996154)
  var ret: encoded uint64
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(uint64)

proc getEntityState*(self: OpenXRSpatialQueryResultData; index: int64): OpenXRSpatialEntityTracker_EntityTrackingState =
  expandMethodBind(className OpenXRSpatialQueryResultData, "get_entity_state", 1411962015)
  var ret: encoded OpenXRSpatialEntityTracker_EntityTrackingState
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(OpenXRSpatialEntityTracker_EntityTrackingState)
