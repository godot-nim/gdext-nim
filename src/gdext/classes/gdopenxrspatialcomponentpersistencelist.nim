{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdopenxrspatialcomponentdata; export gdopenxrspatialcomponentdata

expandOnClassImported(OpenXRSpatialComponentPersistenceList, OpenXRSpatialComponentData)

proc getPersistentUuid*(self: OpenXRSpatialComponentPersistenceList; index: int64): String =
  expandMethodBind(className OpenXRSpatialComponentPersistenceList, "get_persistent_uuid", 844755477)
  var ret: encoded String
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(String)

proc getPersistentState*(self: OpenXRSpatialComponentPersistenceList; index: int64): uint64 =
  expandMethodBind(className OpenXRSpatialComponentPersistenceList, "get_persistent_state", 923996154)
  var ret: encoded uint64
  methodbind.ptrcall(self, [getPtr index], addr ret)
  (addr ret).decode_result(uint64)
