{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdopenxrspatialentitytracker; export gdopenxrspatialentitytracker

expandOnClassImported(OpenXRAnchorTracker, OpenXRSpatialEntityTracker)

proc hasUuid*(self: OpenXRAnchorTracker): bool =
  expandMethodBind(className OpenXRAnchorTracker, "has_uuid", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(bool)

proc setUuid*(self: OpenXRAnchorTracker; uuid: String): void =
  expandMethodBind(className OpenXRAnchorTracker, "set_uuid", 83702148)
  methodbind.ptrcall(self, [getPtr uuid])

proc getUuid*(self: OpenXRAnchorTracker): String =
  expandMethodBind(className OpenXRAnchorTracker, "get_uuid", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

template uuid*(self: OpenXRAnchorTracker): untyped = self.getUuid()
template `uuid=`*(self: OpenXRAnchorTracker; value) = self.setUuid(value)
