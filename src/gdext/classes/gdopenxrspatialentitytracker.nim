{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdxrpositionaltracker; export gdxrpositionaltracker

expandOnClassImported(OpenXRSpatialEntityTracker, XRPositionalTracker)

proc setEntity*(self: OpenXRSpatialEntityTracker; entity: RID): void =
  expandMethodBind(className OpenXRSpatialEntityTracker, "set_entity", 2722037293)
  methodbind.ptrcall(self, [getPtr entity])

proc getEntity*(self: OpenXRSpatialEntityTracker): RID =
  expandMethodBind(className OpenXRSpatialEntityTracker, "get_entity", 2944877500)
  var ret: encoded RID
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(RID)

proc setSpatialTrackingState*(self: OpenXRSpatialEntityTracker; spatialTrackingState: OpenXRSpatialEntityTracker_EntityTrackingState): void =
  expandMethodBind(className OpenXRSpatialEntityTracker, "set_spatial_tracking_state", 2170234447)
  methodbind.ptrcall(self, [getPtr spatialTrackingState])

proc getSpatialTrackingState*(self: OpenXRSpatialEntityTracker): OpenXRSpatialEntityTracker_EntityTrackingState =
  expandMethodBind(className OpenXRSpatialEntityTracker, "get_spatial_tracking_state", 3351876560)
  var ret: encoded OpenXRSpatialEntityTracker_EntityTrackingState
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(OpenXRSpatialEntityTracker_EntityTrackingState)

template entity*(self: OpenXRSpatialEntityTracker): untyped = self.getEntity()
template `entity=`*(self: OpenXRSpatialEntityTracker; value) = self.setEntity(value)

template spatialTrackingState*(self: OpenXRSpatialEntityTracker): untyped = self.getSpatialTrackingState()
template `spatialTrackingState=`*(self: OpenXRSpatialEntityTracker; value) = self.setSpatialTrackingState(value)
