{.warning[UnusedImport]:off.}

import gdext/coronation/header/classes

import gdxrtracker; export gdxrtracker
export XRPositionalTracker

proc getTrackerProfile*(self: XRPositionalTracker): String =
  expandMethodBind(className XRPositionalTracker, "get_tracker_profile", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(String)

proc setTrackerProfile*(self: XRPositionalTracker; profile: String): void =
  expandMethodBind(className XRPositionalTracker, "set_tracker_profile", 83702148)
  methodbind.ptrcall(self, [getPtr profile])

proc getTrackerHand*(self: XRPositionalTracker): XRPositionalTracker_TrackerHand =
  expandMethodBind(className XRPositionalTracker, "get_tracker_hand", 4181770860)
  var ret: encoded XRPositionalTracker_TrackerHand
  methodbind.ptrcall(self, [], addr ret)
  (addr ret).decode_result(XRPositionalTracker_TrackerHand)

proc setTrackerHand*(self: XRPositionalTracker; hand: XRPositionalTracker_TrackerHand): void =
  expandMethodBind(className XRPositionalTracker, "set_tracker_hand", 3904108980)
  methodbind.ptrcall(self, [getPtr hand])

proc hasPose*(self: XRPositionalTracker; name: StringName): bool =
  expandMethodBind(className XRPositionalTracker, "has_pose", 2619796661)
  var ret: encoded bool
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(bool)

proc getPose*(self: XRPositionalTracker; name: StringName): gdref XRPose =
  expandMethodBind(className XRPositionalTracker, "get_pose", 4099720006)
  var ret: encoded gdref XRPose
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(gdref XRPose)

proc invalidatePose*(self: XRPositionalTracker; name: StringName): void =
  expandMethodBind(className XRPositionalTracker, "invalidate_pose", 3304788590)
  methodbind.ptrcall(self, [getPtr name])

proc setPose*(self: XRPositionalTracker; name: StringName; transform: Transform3D; linearVelocity: Vector3; angularVelocity: Vector3; trackingConfidence: XRPose_TrackingConfidence): void =
  expandMethodBind(className XRPositionalTracker, "set_pose", 3451230163)
  methodbind.ptrcall(self, [getPtr name, getPtr transform, getPtr linearVelocity, getPtr angularVelocity, getPtr trackingConfidence])

proc getInput*(self: XRPositionalTracker; name: StringName): Variant =
  expandMethodBind(className XRPositionalTracker, "get_input", 2760726917)
  var ret: encoded Variant
  methodbind.ptrcall(self, [getPtr name], addr ret)
  (addr ret).decode_result(Variant)

proc setInput*(self: XRPositionalTracker; name: StringName; value: Variant): void =
  expandMethodBind(className XRPositionalTracker, "set_input", 3776071444)
  methodbind.ptrcall(self, [getPtr name, getPtr value])

template profile*(self: XRPositionalTracker): untyped = self.getTrackerProfile()
template `profile=`*(self: XRPositionalTracker; value) = self.setTrackerProfile(value)

template hand*(self: XRPositionalTracker): untyped = self.getTrackerHand()
template `hand=`*(self: XRPositionalTracker; value) = self.setTrackerHand(value)
