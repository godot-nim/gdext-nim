{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdopenxrspatialentitytracker; export gdopenxrspatialentitytracker

expandOnClassImported(OpenXRMarkerTracker, OpenXRSpatialEntityTracker)

proc setBoundsSize*(self: OpenXRMarkerTracker; boundsSize: Vector2): void =
  expandMethodBind(className OpenXRMarkerTracker, "set_bounds_size", 743155724)
  methodbind.ptrcall(self, [getPtr boundsSize])

proc getBoundsSize*(self: OpenXRMarkerTracker): Vector2 =
  expandMethodBind(className OpenXRMarkerTracker, "get_bounds_size", 3341600327)
  var ret: encoded Vector2
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Vector2)

proc setMarkerType*(self: OpenXRMarkerTracker; markerType: OpenXRSpatialComponentMarkerList_MarkerType): void =
  expandMethodBind(className OpenXRMarkerTracker, "set_marker_type", 2156241362)
  methodbind.ptrcall(self, [getPtr markerType])

proc getMarkerType*(self: OpenXRMarkerTracker): OpenXRSpatialComponentMarkerList_MarkerType =
  expandMethodBind(className OpenXRMarkerTracker, "get_marker_type", 612702862)
  var ret: encoded OpenXRSpatialComponentMarkerList_MarkerType
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(OpenXRSpatialComponentMarkerList_MarkerType)

proc setMarkerId*(self: OpenXRMarkerTracker; markerId: uint32): void =
  expandMethodBind(className OpenXRMarkerTracker, "set_marker_id", 1286410249)
  methodbind.ptrcall(self, [getPtr markerId])

proc getMarkerId*(self: OpenXRMarkerTracker): uint32 =
  expandMethodBind(className OpenXRMarkerTracker, "get_marker_id", 3905245786)
  var ret: encoded uint32
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(uint32)

proc setMarkerData*(self: OpenXRMarkerTracker; markerData: Variant): void =
  expandMethodBind(className OpenXRMarkerTracker, "set_marker_data", 1114965689)
  methodbind.ptrcall(self, [getPtr markerData])

proc getMarkerData*(self: OpenXRMarkerTracker): Variant =
  expandMethodBind(className OpenXRMarkerTracker, "get_marker_data", 1214101251)
  var ret: encoded Variant
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(Variant)

template boundsSize*(self: OpenXRMarkerTracker): untyped = self.getBoundsSize()
template `boundsSize=`*(self: OpenXRMarkerTracker; value) = self.setBoundsSize(value)

template markerType*(self: OpenXRMarkerTracker): untyped = self.getMarkerType()
template `markerType=`*(self: OpenXRMarkerTracker; value) = self.setMarkerType(value)

template markerId*(self: OpenXRMarkerTracker): untyped = self.getMarkerId()
template `markerId=`*(self: OpenXRMarkerTracker; value) = self.setMarkerId(value)
